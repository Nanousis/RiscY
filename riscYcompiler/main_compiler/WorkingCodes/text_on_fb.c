#include <stdint.h>
#include "riscYstdio.h"
#include "tinyprintf.h"

#define MAX_WIDTH  800
#define MAX_HEIGHT 480

typedef struct{
    char r, g, b;
}color;

void draw_pixel(uint16_t* pixels, int x, int y, color col) {
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    if(x<0 || x>=MAX_WIDTH || y<0 || y>=MAX_HEIGHT) return;
    pixels[y * MAX_WIDTH + x] = color;
    return;
}
void draw_pixel_double(uint16_t* pixels, int x, int y, color col) {
    uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    if(x<0 || x>=MAX_WIDTH>>1 || y<0 || y>=MAX_HEIGHT) return;
    uint32_t *base_addr = (uint32_t *)pixels;
    base_addr[(y * MAX_WIDTH>>1) + x] = color<<16 | color;
    return;
}
void clear_screen(uint16_t* pixels, color col) {
    for(int j=0; j<MAX_HEIGHT; j++) {
	    for(int i=0; i<MAX_WIDTH>>1; i++) {
			draw_pixel_double(pixels, i, j, col);
		}
	}
}
typedef struct print_move 
{
    short x;
    short y;
}print_move;


void print_text(uint16_t* pixels, int start_x, int start_y, const char* text, char* font_data) {
    int x = start_x;
    int y = start_y;
    while (*text) {
        char character = *text++;
        char *character_data = &font_data[(uint8_t)character * 16];
        for (int row = 0; row < 16; row++) {
            for (int col = 0; col < 8; col++) {
                if (character_data[row] & (1 << (7 - col))) {
                    draw_pixel(pixels, x + col, y + row, (color){255, 255, 255});
                }
            }
        }
        x += 8; // Move to next character position
    }
}

int main() {
    init_printf(NULL, tfp_putc);      // set output sink
    uint16_t *pixels = (uint16_t*)riscy_malloc(MAX_WIDTH * MAX_HEIGHT * 2);
    volatile unsigned int *screenChange = (unsigned int*)0x88002800;
    volatile unsigned int *frame_buffer_addr = (unsigned int*)0x88002804;
    tfp_printf("GAMEBOY TEST\r\n");
    frame_buffer_addr[0] = (uint32_t)pixels;
    frame_buffer_addr[0] = (uint32_t)pixels;
    frame_buffer_addr[0] = (uint32_t)pixels;
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
    tfp_printf("Setup complete\r\n");
    uint16_t font = riscy_fopen("font_dump.bin");
    if (font < 0) {
        tfp_printf("Failed to open font_dump.bin\r\n");
        while (1);
    }
    tfp_printf("Font file handle: %d\r\n", font);
    char *font_data = riscy_malloc(16*128);
    for (int i = 0; i < 16*128; i++) {
        font_data[i] = riscy_fgetc(font);
    } 
    riscy_fclose(font);
    tfp_printf("Font data loaded\r\n");
    char test = 'A';
    int starting_x = 100;
    int starting_y = 100;
    clear_screen(pixels, (color){0, 0, 0}); // Clear screen to white
    while (1) {
        char *character_data = &font_data[(uint8_t)test * 16];
        print_text(pixels, starting_x, starting_y, "Hello, RiscY!", font_data);
        // Clear screen
    }
    
}