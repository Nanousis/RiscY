#include <stdint.h>
#include "riscYstdio.h"
#include "tinyprintf.h"

#define MAGIC0 'B'
#define MAGIC1 'I'
#define MAGIC2 'N'
#define MAGIC3 '1'

#define FB_W 800
#define FB_H 480
#define FB_BYTES (FB_W * FB_H * 2)

// Handshake token (PC waits for this after header)
#define RDY_STR "RDY\r\n"

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

static void uart_find_magic(void) {
    uint8_t m0 = uart_read_u8();
    uint8_t m1 = uart_read_u8();
    uint8_t m2 = uart_read_u8();
    uint8_t m3 = uart_read_u8();

    while (!(m0 == MAGIC0 && m1 == MAGIC1 && m2 == MAGIC2 && m3 == MAGIC3)) {
        m0 = m1;
        m1 = m2;
        m2 = m3;
        m3 = uart_read_u8();
    }
}

static void uart_read_img(uint16_t *dst, uint32_t width, uint32_t height) {
    int scale = 1;
    if(width == 400 && height == 240) scale = 2;
    
    for(int y = 0; y < height; y ++) {
        for(int x = 0; x < width; x ++) {
            int low = uart_read_u8();
            int high = uart_read_u8();
            uint16_t pixel = (high << 8) | low;
            dst[(y*scale)*FB_W + (x*scale)] = pixel;
            if(scale == 2) {
                dst[(y*scale+1)*FB_W + (x*scale)] = pixel;
                dst[(y*scale)*FB_W + (x*scale+1)] = pixel;
                dst[(y*scale+1)*FB_W + (x*scale+1)] = pixel;
            }
        }
    }
}
static void uart_read_exact(uint16_t *dst, uint32_t n) {
    for (uint32_t i = 0; i < n>>1; i++){
        int low = uart_read_u8();
        int high = uart_read_u8();
        dst[i] = (high << 8) | low;
    } 
}

static void uart_drain(uint32_t n) {
    for (uint32_t i = 0; i < n; i++) (void)uart_read_u8();
}

int main() {
    init_printf(NULL, tfp_putc);

    volatile uint16_t *pixels = (volatile uint16_t*)riscy_malloc(FB_BYTES);
    if (!pixels) while (1) {}

    volatile unsigned int *screenChange = (unsigned int*)0x88002800;
    volatile uint16_t **frame_buffer_addr = (volatile uint16_t**)0x88002804;

    frame_buffer_addr[0] = (volatile uint16_t*)pixels;
    *screenChange = 1;

    while (1) {
        tfp_printf("Waiting RAW...\r\n");

        // 1) Find MAGIC
        uart_find_magic();

        // 2) Read SIZE
        uint32_t width = uart_read_u32_le();
        uint32_t height = uart_read_u32_le();

        // Handshake: tell host to start sending payload now
        tfp_printf(RDY_STR);
        tfp_printf("Receiving frame %ux%u...\r\n", width, height);
        long t0 = get_time();

        // 4) Read payload directly into framebuffer
        uart_read_img((uint16_t*)pixels, width, height);

        long t1 = get_time();

        // 5) Flip/update
        *screenChange = 1;

        // 6) Done token for host
        tfp_printf("RAW frame OK\r\n");
        tfp_printf("RAW rx time: %ld ms\r\n", (t1 - t0) / 27000);
    }
}
