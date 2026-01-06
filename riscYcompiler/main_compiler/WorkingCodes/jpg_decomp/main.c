#include <stdint.h>
#include "riscYstdio.h"
#include "tinyprintf.h"

#define MAGIC0 'B'
#define MAGIC1 'I'
#define MAGIC2 'N'
#define MAGIC3 '1'

#include "tjpgd.h"

// -------- TJpgDec memory device ----------
typedef struct {
    const uint8_t *jpg;
    uint32_t size;
    uint32_t pos;
} JpgMem;

static volatile uint16_t *g_fb;
static uint32_t g_fb_w;
static uint32_t g_fb_h;
static uint32_t g_dst_x0;
static uint32_t g_dst_y0;

// Input callback: TJpgDec asks for N bytes; buff==NULL means "skip"
static size_t jpg_in_func(JDEC *jd, uint8_t *buff, size_t nbyte)
{
    JpgMem *m = (JpgMem*)jd->device;
    uint32_t rem = (m->pos < m->size) ? (m->size - m->pos) : 0;
    if (nbyte > rem) nbyte = rem;

    if (buff) {
        memcpy(buff, m->jpg + m->pos, nbyte);
    }
    m->pos += (uint32_t)nbyte;
    return nbyte;
}
static inline void fb_copy_rgb565_row(volatile uint16_t *dst16,
                                      const uint16_t *src16,
                                      uint32_t n_pixels)
{
    // If dst is 16-bit aligned but not 32-bit aligned, fix with one 16-bit store
    if (((uintptr_t)dst16 & 2u) && n_pixels) {
        *dst16++ = *src16++;
        n_pixels--;
    }

    volatile uint32_t *dst32 = (volatile uint32_t*)dst16;
    const uint32_t *src32 = (const uint32_t*)src16;

    uint32_t pairs = n_pixels >> 1;          // 2 pixels per 32-bit
    for (uint32_t i = 0; i < pairs; i++) {
        dst32[i] = src32[i];
    }

    // tail pixel
    if (n_pixels & 1u) {
        dst16 = (volatile uint16_t*)(dst32 + pairs);
        src16 = (const uint16_t*)(src32 + pairs);
        *dst16 = *src16;
    }
}

// Output callback: bitmap is RGB565 when JD_FORMAT==1
static int jpg_out_func(JDEC *jd, void *bitmap, JRECT *rect)
{
    (void)jd;

    const uint16_t *src = (const uint16_t*)bitmap;

    // Destination top-left (for centering/placement)
    uint32_t dst_x = g_dst_x0 + rect->left;
    uint32_t dst_y = g_dst_y0 + rect->top;

    // Clip to framebuffer bounds (important!)
    // rect is within decoded image bounds, but dst offset may push it out.
    for (uint16_t y = rect->top; y <= rect->bottom; y++) {
        uint32_t fy = g_dst_y0 + y;
        if (fy >= g_fb_h) {
            // still need to advance src by this row width
            src += (rect->right - rect->left + 1);
            continue;
        }

        uint32_t fx = dst_x;
        uint32_t w  = (uint32_t)(rect->right - rect->left + 1);

        // Clip horizontally
        uint32_t copy_w = w;
        uint32_t src_off = 0;

        if (fx >= g_fb_w) {
            src += w;
            continue;
        }
        if (fx + copy_w > g_fb_w) {
            copy_w = g_fb_w - fx;
        }

        volatile uint16_t *dst = g_fb + fy * g_fb_w + fx;
        // Copy copy_w pixels
        fb_copy_rgb565_row(dst, src + src_off, copy_w);

        src += w;
    }

    return 1; // continue decode
}

// Decode JPG bytes -> framebuffer.
// workbuf: TJpgDec work area (a few KB).
static int jpeg_to_fb_rgb565(const uint8_t *jpg, uint32_t jpg_size,
                             volatile uint16_t *fb, uint32_t fb_w, uint32_t fb_h,
                             uint32_t dst_x0, uint32_t dst_y0,
                             void *workbuf, uint32_t workbuf_size,
                             uint8_t scale)
{
    JDEC jdec;
    JpgMem mem = { .jpg = jpg, .size = jpg_size, .pos = 0 };

    g_fb = fb; g_fb_w = fb_w; g_fb_h = fb_h;
    g_dst_x0 = dst_x0; g_dst_y0 = dst_y0;
    long time = get_time();
    JRESULT r = jd_prepare(&jdec, jpg_in_func, workbuf, (size_t)workbuf_size, &mem);
    if (r != JDR_OK) return -(int)r;
    tfp_printf("JPEG prepare time: %ld ms\r\n", (get_time() - time)/27000);

#if (JD_USE_SCALE == 0)
    scale = 0;
#endif
    time = get_time();
    r = jd_decomp(&jdec, jpg_out_func, scale);
    if (r != JDR_OK) return -(int)r;
    tfp_printf("JPEG decode time: %ld ms\r\n", (get_time() - time)/27000);
    return 0;
}

static inline uint8_t uart_read_u8(void) {
    return (uint8_t)uart_read_byte();
}

static uint32_t uart_read_u32_le(void) {
    uint32_t b0 = uart_read_u8();
    uint32_t b1 = uart_read_u8();
    uint32_t b2 = uart_read_u8();
    uint32_t b3 = uart_read_u8();
    return (b0) | (b1 << 8) | (b2 << 16) | (b3 << 24);
}

// Reads a file sent as: MAGIC(4) + SIZE(u32 LE) + PAYLOAD(SIZE bytes)
// Returns 0 on success, negative on error.
// On success: *out_buf points to allocated buffer, *out_size is payload length.
int readFileFromUart(uint8_t **out_buf, uint32_t *out_size) {
    if (!out_buf || !out_size) return -10;

    uint8_t m[4];
    m[0] = uart_read_u8();
    m[1] = uart_read_u8();
    m[2] = uart_read_u8();
    m[3] = uart_read_u8();

    while (!(m[0] == MAGIC0 && m[1] == MAGIC1 && m[2] == MAGIC2 && m[3] == MAGIC3)) {
        m[0] = m[1];
        m[1] = m[2];
        m[2] = m[3];
        m[3] = uart_read_u8();
    }

    uint32_t size = uart_read_u32_le();

    if (size == 0) return -2;

    uint8_t *buf = (uint8_t*)riscy_malloc(size);
    if (!buf) return -4;

    for (uint32_t i = 0; i < size; i++) {
        buf[i] = uart_read_u8();
    }

    *out_buf = buf;
    *out_size = size;
    tfp_printf("OK\r\n");
    tfp_printf("Received file of size: %u bytes\r\n", size);

    return 0;
}



int main() {
    volatile uint16_t *pixels = (volatile uint16_t*)riscy_malloc(800 * 480*2);
    init_printf(NULL, tfp_putc);      // set output sink
    // tfp_printf("Framebuffer allocated at %p\r\n", pixels);
    char received_char;
    uint32_t out_size;
    char *buff;

    volatile unsigned int *screenChange = (unsigned int*)0x88002800;
    volatile uint16_t **frame_buffer_addr = (volatile uint16_t**)0x88002804;
    // tfp_printf("PureDOOM RISC-V port TEEEEEEEEEEEEST\r\n");
    asm volatile ("nop");
    asm volatile ("nop");
    frame_buffer_addr[0] = pixels;
    frame_buffer_addr[0] = pixels;
    frame_buffer_addr[0] = pixels;
    frame_buffer_addr[0] = pixels;
    frame_buffer_addr[0] = pixels;
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");
    *screenChange = 1;
    *screenChange = 1;
    *screenChange = 1;
    *screenChange = 1;
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");

    for(int i=0; i<800*480; i++){
        pixels[i]=0xFFFF; // white
    }
    while (1) {
        tfp_printf("Waiting to receive file...\r\n");
        int res = readFileFromUart((uint8_t**)&buff, (uint32_t*)&out_size);
        if (res != 0) {
            tfp_printf("Error receiving file, code: %d\r\n", res);
            continue;
        }
        // Work area for TJpgDec
        static uint8_t *jpg_work = NULL;
        if (!jpg_work) {
            jpg_work = (uint8_t*)riscy_malloc(16384);  // try 8KB first; if JDR_MEM* increase to 16384
            if (!jpg_work) {
                tfp_printf("Failed to alloc jpg workbuf\r\n");
                continue;
            }
        }
        int dec = jpeg_to_fb_rgb565((const uint8_t*)buff, out_size,
                                    pixels, 800, 480,
                                    0, 0,
                                    jpg_work, 16384,
                                    0 /*scale*/);
        if (dec != 0) {
            tfp_printf("JPEG decode failed JDR=%d\r\n", -dec);
            tfp_printf("Tip: if it's progressive, convert to baseline.\r\n");
        } else {
            tfp_printf("JPEG decoded OK\r\n");
            *screenChange = 1;
        }
    }

}