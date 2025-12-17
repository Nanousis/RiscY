#include <stdint.h>
#include "riscYstdio.h"
#include "PureDOOM.h"

#define MAX_WIDTH  800
#define MAX_HEIGHT 480
#define abs(x) ((x) < 0 ? -(x) : (x))


#define WIDTH 320
#define HEIGHT 200
// #define WIDTH 160
// #define HEIGHT 100
#define SCALE 4

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

doom_key_t riscy_keypress(char key){
    switch (key){
        case BUTTON_RIGHT_LEFT:
            return DOOM_KEY_RIGHT_ARROW;
        case BUTTON_LEFT_LEFT:
            return DOOM_KEY_LEFT_ARROW;
        case BUTTON_DOWN_LEFT:
            return DOOM_KEY_DOWN_ARROW;
        case BUTTON_UP_LEFT:
            return DOOM_KEY_UP_ARROW;
        case BUTTON_RIGHT_RIGHT:
            return DOOM_RIGHT_BUTTON;
        case BUTTON_LEFT_RIGHT:
            return DOOM_LEFT_BUTTON;
        case BUTTON_DOWN_RIGHT:
            return DOOM_KEY_ENTER;
        case BUTTON_UP_RIGHT:
            return DOOM_KEY_ESCAPE;
        default:
            return DOOM_KEY_UNKNOWN;
    }
}

int main(void) {
    init_printf(NULL, tfp_putc);      // set output sink
    // Your 800x480 framebuffer
    // uint16_t *pixels = (uint16_t*)riscy_malloc(MAX_WIDTH * MAX_HEIGHT);
    uint16_t *pixels = (uint16_t*)riscy_malloc(MAX_WIDTH * 400*2);
    volatile unsigned int *screenChange = (unsigned int*)0x88002800;
    volatile unsigned int *frame_buffer_addr = (unsigned int*)0x88002804;
    tfp_printf("PureDOOM RISC-V port TEEEEEEEEEEEEST\r\n");
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

    // (Optional) this function is a no-op in this header, defaults to 320x200. :contentReference[oaicite:9]{index=9}
    doom_set_resolution(WIDTH, HEIGHT);
    tfp_printf("Resolution set to 320x200\r\n");
    // Install hooks BEFORE doom_init
    doom_set_file_io(doom_open_impl, doom_close_impl,
        doom_read_impl, doom_write_stub,
        doom_seek_impl, doom_tell_impl, doom_eof_impl);  // API. :contentReference[oaicite:10]{index=10}
        doom_set_getenv(doom_getenv_impl);
    tfp_printf("Environment variables set\r\n");
    
    char* argv[] = { "doom2", "@/doom1.wad", 0 };
    int flags = 0; // or define DOOM_FLAG_MENU_DARKEN_BG=8 and use it
    doom_init(1, argv, flags);  // calls D_DoomMain() internally. :contentReference[oaicite:11]{index=11}
    tfp_printf("INIT\r\n");
    int frameNum=0;
    frame_buffer_addr[0] = (uint32_t)pixels;
    *screenChange = 1;
    int keypress[8]= {0};
    int oldkeypress[8]= {0};
    for (;;) {
        useconds += 200000;
        if( useconds >= 10000000L )
        {
            useconds = 0;
            seconds += 1;
        }
        for(int i=0;i<8;i++){
            oldkeypress[i]=keypress[i];
            keypress[i]=getButton(i);
            if(keypress[i] && !oldkeypress[i]){
                gb.direct.joypad = ~ (riscy_keypress(i));
            }
            else if(!keypress[i] && oldkeypress[i]){
                doom_key_up(riscy_keypress(i));
            }
        }
        // if (test == 0 ) {
        //     doom_key_down(DOOM_KEY_ENTER);
            
        // }
        // else {
        //     doom_key_up(DOOM_KEY_ENTER);
        // }

        doom_update();  // 35 Hz stepper. :contentReference[oaicite:12]{index=12}
        // tfp_printf("framefinished\r\n");
        
        // Grab 8-bit indexed frame and blit to RGB565 @ 800x480
        const unsigned char* fb = doom_get_framebuffer(4); // indexed 320x200. :contentReference[oaicite:13]{index=13}
        // scale 2x (640x400) centered; quick & dirty
        const int sw = WIDTH, sh = HEIGHT;
        const int dw = 800, dh = 480;
        
        // optional: clear to black each frame
        // for (int i=0;i<dw*dh;i++) pixels[i]=0;
        // clear_screen(pixels, (color){0,0,0});
        // if(test++<16){
            // }
            for (int y=0; y<sh; ++y) {
                for (int x=0; x<sw; ++x) {
                    unsigned char *idx = &fb[(y*sw + x)*4];
                    unsigned char r = idx[0];
                    unsigned char g = idx[1];
                    unsigned char b = idx[2]; 
                    draw_pixel_double(pixels, x, y<<1, (color){r, g, b});
                    draw_pixel_double(pixels, x, (y<<1)+1, (color){r, g, b});
                    // draw_pixel_double(pixels, x, (y<<1)+1, (color){r, g, b});

                }
            }
            tfp_printf("frame: %d\r\n", frameNum++);
    }
    // while(1);
}
