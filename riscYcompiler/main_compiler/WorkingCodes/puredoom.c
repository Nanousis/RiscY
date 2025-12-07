#include <stdint.h>
#include "riscYstdio.h"
#include "PureDOOM.h"

#define MAX_WIDTH  800
#define MAX_HEIGHT 480
#define abs(x) ((x) < 0 ? -(x) : (x))


#define WIDTH 320
#define HEIGHT 200
#define SCALE 4


int main(void) {
    // Your 800x480 framebuffer
    uint16_t *pixels = (uint16_t*)riscy_malloc(MAX_WIDTH * MAX_HEIGHT * 2);
    volatile unsigned int *screenChange = (unsigned int*)0x88002800;
    volatile unsigned int *frame_buffer_addr = (unsigned int*)0x88002804;
    uart_printf("PureDOOM RISC-V port\r\n");

    frame_buffer_addr[0] = (uint32_t)pixels;
    *screenChange = 1;
    // (Optional) this function is a no-op in this header, defaults to 320x200. :contentReference[oaicite:9]{index=9}
    doom_set_resolution(320, 200);
    uart_printf("Resolution set to 320x200\r\n");
    // Install hooks BEFORE doom_init
    doom_set_file_io(doom_open_impl, doom_close_impl,
        doom_read_impl, doom_write_stub,
        doom_seek_impl, doom_tell_impl, doom_eof_impl);  // API. :contentReference[oaicite:10]{index=10}
        doom_set_getenv(doom_getenv_impl);
    uart_printf("Environment variables set\r\n");
    
    char* argv[] = { "doom", 0 };
    int flags = 0; // or define DOOM_FLAG_MENU_DARKEN_BG=8 and use it
    doom_init(1, argv, flags);  // calls D_DoomMain() internally. :contentReference[oaicite:11]{index=11}
    uart_printf("INIT\r\n");
    int frameNum=0;
    for (;;) {
        uart_printf("frame: %d\r\n", frameNum++);
        doom_update();  // 35 Hz stepper. :contentReference[oaicite:12]{index=12}
        uart_printf("framefinished\r\n");

        // Grab 8-bit indexed frame and blit to RGB565 @ 800x480
        const unsigned char* fb = doom_get_framebuffer(1); // indexed 320x200. :contentReference[oaicite:13]{index=13}
        extern unsigned char screen_palette[256 * 3];      // 256xRGB.        :contentReference[oaicite:14]{index=14}

        // scale 2x (640x400) centered; quick & dirty
        const int sw = 320, sh = 200, scale = 2;
        const int dw = 800, dh = 480;
        int ox = (dw - sw*scale)/2; // 80
        int oy = (dh - sh*scale)/2; // 40

        // optional: clear to black each frame
        // for (int i=0;i<dw*dh;i++) pixels[i]=0;

        for (int y=0; y<sh; ++y) {
            for (int x=0; x<sw; ++x) {
                unsigned idx = fb[y*sw + x];
                unsigned r = screen_palette[idx*3 + 0];
                unsigned g = screen_palette[idx*3 + 1];
                unsigned b = screen_palette[idx*3 + 2];
                uint16_t rgb565 = ((r>>3)<<11) | ((g>>2)<<5) | (b>>3);

                int dx = ox + x*scale;
                int dy = oy + y*scale;
                // 2x2 block
                pixels[dy*dw + dx] = rgb565;
                pixels[dy*dw + dx+1] = rgb565;
                pixels[(dy+1)*dw + dx] = rgb565;
                pixels[(dy+1)*dw + dx+1] = rgb565;
            }
        }
    }
}