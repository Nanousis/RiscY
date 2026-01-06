#include <stdint.h>
#include "riscYstdio.h"
#include "tinyprintf.h"

#define MAGIC0 'B'
#define MAGIC1 'I'
#define MAGIC2 'N'
#define MAGIC3 '1'

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

    // 1) Sync to MAGIC sequence (robust against starting mid-stream)
    uint8_t m[4];
    m[0] = uart_read_u8();
    m[1] = uart_read_u8();
    m[2] = uart_read_u8();
    m[3] = uart_read_u8();

    while (!(m[0] == MAGIC0 && m[1] == MAGIC1 && m[2] == MAGIC2 && m[3] == MAGIC3)) {
        // slide window by 1 byte
        m[0] = m[1];
        m[1] = m[2];
        m[2] = m[3];
        m[3] = uart_read_u8();
    }

    // 2) Read filesize
    uint32_t size = uart_read_u32_le();

    // 3) Sanity checks (avoid malloc bombs)
    if (size == 0) return -2;

    // If you have a maximum expected size, enforce it:
    // if (size > (64 * 1024)) return -3;

    // 4) Allocate buffer
    uint8_t *buf = (uint8_t*)riscy_malloc(size);
    if (!buf) return -4;

    // 5) Read payload exactly
    for (uint32_t i = 0; i < size; i++) {
        buf[i] = uart_read_u8();
    }

    // 6) Return
    *out_buf = buf;
    *out_size = size;
    tfp_printf("OK\r\n");
    // Optional ACK to sender (Python can wait for it)
    // uart_write_byte('O'); uart_write_byte('K');
    tfp_printf("Received file of size: %u bytes\r\n", size);

    return 0;
}



int main() {
    volatile uint16_t *pixels = (volatile uint16_t*)riscy_malloc(800 * 480*2);
    init_printf(NULL, tfp_putc);      // set output sink
    tfp_printf("Framebuffer allocated at %p\r\n", pixels);
    char received_char;
    uint32_t out_size;
    char *buff;

    volatile unsigned int *screenChange = (unsigned int*)0x88002800;
    volatile uint16_t **frame_buffer_addr = (volatile uint16_t**)0x88002804;
    tfp_printf("PureDOOM RISC-V port TEEEEEEEEEEEEST\r\n");
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

    while(1){
        tfp_printf("Waiting to receive file...\r\n");
        int res = readFileFromUart((uint8_t**)&buff, (uint32_t*)&out_size);
        if (res == 0) {
            tfp_printf("File received successfully, size: %u bytes\r\n", (uint32_t)out_size);
            uint16_t *pixelPtr = (uint16_t*)buff;
            for(int i=0; i<out_size; i++){
                pixels[i]=pixelPtr[i];
            }
            *screenChange = 1;
        } else {
            tfp_printf("Error receiving file, code: %d\r\n", res); 
        }
    }

}