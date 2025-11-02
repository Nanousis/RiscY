#include <stdint.h>
#include "riscYstdio.h"
#define WIDTH  800
#define HEIGHT 480
#define RAM_LOCATION (0x80000000 + WIDTH * HEIGHT * 2)
#define abs(x) ((x) < 0 ? -(x) : (x))


void draw_pixel(uint16_t* pixels, int x, int y, uint8_t r, uint8_t g, uint8_t b) {
    uint16_t r5 = (r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    pixels[y * WIDTH + x] = color;

    return;
}
// Midpoint (Bresenham) Line Drawing Algorithm
void draw_line(uint16_t* pixels, int pitch, int x0, int y0, int x1, int y1,
               uint8_t r, uint8_t g, uint8_t b) {
    int dx = abs(x1 - x0);
    int dy = abs(y1 - y0);

    int sx = (x0 < x1) ? 1 : -1;
    int sy = (y0 < y1) ? 1 : -1;

    int err = dx - dy;

    while (1) {
        draw_pixel(pixels, x0, y0, r, g, b);

        if (x0 == x1 && y0 == y1) break;

        int e2 = 2 * err;

        if (e2 > -dy) {
            err -= dy;
            x0 += sx;
        }

        if (e2 < dx) {
            err += dx;
            y0 += sy;
        }
    }
}

void main() {

  uint16_t *pixels = ( uint16_t *) (RAM_LOCATION - WIDTH*4);
  unsigned int *screenChange= ( unsigned int *) 0x88002800;
  unsigned int *frame_buffer_addr= ( unsigned int *) 0x88002804;
  uart_printf("Starting Frame Buffer Test\r\n");
  frame_buffer_addr[0] = (uint32_t)pixels; // Set frame buffer address
  *screenChange = 0x00000001; // Trigger screen change
  uart_printf("Screen change triggered ON\r\n");

  for(int i=0; i<WIDTH; i++) {
    for(int j=0; j<HEIGHT; j++) {
      draw_pixel(pixels, i, j, 0, 0, 0); // Fill the screen with black
    }
  }
  uart_printf("Screen filled with black\r\n");
  draw_line(pixels, WIDTH, 100, 100, 700, 300, 255, 0, 0); // draw a red line
  draw_line(pixels, WIDTH, 200, 200, 600, 400, 0, 255, 0); // draw a green line
  draw_line(pixels, WIDTH, 300, 300, 500, 100, 0, 0, 255); // draw a blue line
  draw_line(pixels, WIDTH, 400, 400, 400, 50, 255, 255, 0);  // draw a yellow line
  draw_line(pixels, WIDTH, 500, 100, 700, 400, 255, 0, 255); // draw a magenta line
  
  uart_printf("Lines drawn\r\n");
  char received_char;
  while(1){
    received_char = uart_read_byte();
    uart_printf("Received character: %c\r\n", received_char);
  }

}