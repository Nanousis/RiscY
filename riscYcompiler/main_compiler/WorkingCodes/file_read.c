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
    printf("Starting\n");
    uint32_t start_address, end_address;

    int16_t file = riscy_fopen("index.html");
    printf("File opened with handle: %d\n", file);
    if (!file) {
        uart_printf("Failed to open file\r\n");
        goto error;
    }

    char buffer[256];
    int32_t bytesRead = riscy_fread(file, buffer, sizeof(buffer));
    if (bytesRead < 0) {
        uart_printf("Failed to read file\r\n");
        riscy_fclose(file);
        goto error;
    }
    buffer[bytesRead-1] = '\0'; // Null-terminate the string
    printf("File read successfully, bytes read: %d\r\n", bytesRead);
    printf("%s", buffer);
    for(int i = 0; i < 100; i++){
        printf("%c", riscy_fgetc(file));
    }
    while(1);
error:
    uart_printf("Error occured\n");
    printf("Error occured\n");
    while(1);
}