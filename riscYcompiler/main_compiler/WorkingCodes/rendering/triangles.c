#include <stdint.h>
#include "riscYstdio.h"
#include "tinyprintf.h"
#include "geometry.h"

#define RAM_LOCATION (0x80000000 + WIDTH * HEIGHT * 2)
#define abs(x) ((x) < 0 ? -(x) : (x))




int main() {
    init_printf(NULL, tfp_putc);      // set output sink
    uint16_t *pixels = ( uint16_t *) (RAM_LOCATION);
    unsigned int *screenChange= ( unsigned int *) 0x88002800;
    unsigned int *frame_buffer_addr= ( unsigned int *) 0x88002804;

    tfp_printf("Starting Frame Buffer Test\r\n");
    frame_buffer_addr[0] = (uint32_t)pixels; // Set frame buffer address
    *screenChange = 0x00000001; // Trigger screen change
    tfp_printf("Screen change triggered ON\r\n");

    clear_screen(pixels, (color){15,15,25});
    tfp_printf("Screen filled with blue\r\n");
    Vec2i t0[3] = {Vec2i(10, 70),   Vec2i(50, 160),  Vec2i(70, 80)}; 
    Vec2i t1[3] = {Vec2i(180, 50),  Vec2i(150, 1),   Vec2i(70, 180)}; 
    Vec2i t2[3] = {Vec2i(180, 150), Vec2i(120, 160), Vec2i(130, 180)}; 
    triangle(pixels, t0[0], t0[1], t0[2], (color){255, 0, 0});
    triangle(pixels, t1[0], t1[1], t1[2], (color){0, 255, 0});
    triangle(pixels, t2[0], t2[1], t2[2], (color){0, 0, 255});
    triangle_wireframe(pixels, t0[0], t0[1], t0[2], (color){255,255,255});
    triangle_wireframe(pixels, t1[0], t1[1], t1[2], (color){255,255,255});
    triangle_wireframe(pixels, t2[0], t2[1], t2[2], (color){255,255,255});

    tfp_printf("Lines drawn\r\n");
    char received_char;
    while(1){
        received_char = uart_read_byte();
        tfp_printf("Received character: %c\r\n", received_char);
    }
}