#define ENABLE_SOUND 0
#define ENABLE_LCD 1

/* Import emulator library. */
#include "peanut_gb.h"

#include <string.h>
#include "tinyprintf.h"
#include "riscYstdio.h"
#define MAX_WIDTH  800
#define MAX_HEIGHT 480


void exit(int status){
    tfp_printf("EXIT: LOOPING with status %d\n",status);
    while(1);
}
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


struct priv_t
{
	/* Pointer to allocated memory holding GB file. */
	uint8_t *rom;
	/* Pointer to allocated memory holding save file. */
	uint8_t *cart_ram;
    size_t save_size;

	/* Frame buffer */
	uint32_t fb[LCD_HEIGHT][LCD_WIDTH];
};

/**
 * Returns a byte from the ROM file at the given address.
 */
uint8_t gb_rom_read(struct gb_s *gb, const uint_fast32_t addr)
{
	const struct priv_t * const p = gb->direct.priv;
	return p->rom[addr];
}

/**
 * Returns a byte from the cartridge RAM at the given address.
 */
uint8_t gb_cart_ram_read(struct gb_s *gb, const uint_fast32_t addr)
{
	const struct priv_t * const p = gb->direct.priv;
	return p->cart_ram[addr];
}

/**
 * Writes a given byte to the cartridge RAM at the given address.
 */
void gb_cart_ram_write(struct gb_s *gb, const uint_fast32_t addr,
		       const uint8_t val)
{
	const struct priv_t * const p = gb->direct.priv;
	p->cart_ram[addr] = val;
}

/**
 * Returns a pointer to the allocated space containing the ROM. Must be freed.
 */
uint8_t *read_rom_to_ram(const char *file_name)
{
	int16_t rom_file = riscy_fopen(file_name);
	size_t rom_size;
	uint8_t *rom = NULL;

	if(rom_file == 0)
		return NULL;

	riscy_fseek(rom_file, 0, SEEK_END);
	rom_size = riscy_ftell(rom_file);
	riscy_rewind(rom_file);
	rom = riscy_malloc(rom_size);

	// if(fread(rom, sizeof(uint8_t), rom_size, rom_file) != rom_size)
	if(riscy_fread(rom_file, rom, rom_size) != rom_size)
	{
		// free(rom);
		riscy_fclose(rom_file);
		return NULL;
	}

	riscy_fclose(rom_file);
	return rom;
}

/**
 * Ignore all errors.
 */
void gb_error(struct gb_s *gb, const enum gb_error_e gb_err, const uint16_t val)
{
	const char* gb_err_str[GB_INVALID_MAX] = {
		"UNKNOWN",
		"INVALID OPCODE",
		"INVALID READ",
		"INVALID WRITE",
		"HALT FOREVER"
	};
	struct priv_t *priv = gb->direct.priv;

	tfp_printf("Error %d occurred: %s at %04X\n. Exiting.\n",
			gb_err, gb_err_str[gb_err], val);

	/* Free memory and then exit. */
	// free(priv->cart_ram);
	// free(priv->rom);
	exit(EXIT_FAILURE);
}

uint8_t riscy_keypress(char key){
    switch (key){
        case BUTTON_RIGHT_LEFT:
            return JOYPAD_RIGHT;
        case BUTTON_LEFT_LEFT:
            return JOYPAD_LEFT;
        case BUTTON_DOWN_LEFT:
            return JOYPAD_DOWN;
        case BUTTON_UP_LEFT:
            return JOYPAD_UP;
        case BUTTON_RIGHT_RIGHT:
            return JOYPAD_A;
        case BUTTON_LEFT_RIGHT:
            return JOYPAD_SELECT;
        case BUTTON_DOWN_RIGHT:
            return JOYPAD_B;
        case BUTTON_UP_RIGHT:
            return JOYPAD_START;
        default:
            return 0;
    }
}
void read_cart_ram_file(const char *save_file_name, uint8_t **dest,
                        const size_t len)
{
    /* If save file not required. */
    if(len == 0)
    {
        *dest = NULL;
        return;
    }

    /* Allocate enough memory to hold save file. */
    *dest = (uint8_t*)riscy_malloc(len);
    if(*dest == NULL)
    {
        tfp_printf("Failed to allocate cart RAM (%u bytes)\n", (unsigned)len);
        exit(EXIT_FAILURE);
    }

    /* Try open save file. If it doesn't exist, start with blank RAM. */
    int16_t f = riscy_fopen(save_file_name);
    if(f == 0)
    {
        memset(*dest, 0, len);
        return;
    }

    /* Read save file into RAM. */
    size_t n = riscy_fread(f, *dest, len);
    riscy_fclose(f);

    /* If short read, zero the remainder. */
    if(n < len)
        memset(*dest + n, 0, len - n);
}

#if ENABLE_LCD
/**
 * Draws scanline into framebuffer.
 */
void lcd_draw_line(struct gb_s *gb, const uint8_t pixels[160],
		   const uint_fast8_t line)
{
	struct priv_t *priv = gb->direct.priv;
	const uint32_t palette[] = { 0xFFFFFF, 0xA5A5A5, 0x525252, 0x000000 };

	for(unsigned int x = 0; x < LCD_WIDTH; x++)
		priv->fb[line][x] = palette[pixels[x] & 3];
}
#endif
__attribute__((optimize("O2")))
int main(int argc, char **argv)
{
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
	/* Must be freed */
    char *rom_name= "pokered";
    char *rom_file_name = strcpy(riscy_malloc(strlen(rom_name) + 5), rom_name);
    strcat(rom_file_name, ".gb");
	static struct gb_s gb;
	static struct priv_t priv;
	enum gb_init_error_e ret;

	/* Copy input ROM file to allocated memory. */
	if((priv.rom = read_rom_to_ram(rom_file_name)) == NULL)
	{
		tfp_printf("ERROR copying to ram: %d\n", __LINE__);
		exit(EXIT_FAILURE);
	}

	/* Initialise context. */
	ret = gb_init(&gb, &gb_rom_read, &gb_cart_ram_read,
		      &gb_cart_ram_write, &gb_error, &priv);

	if(ret != GB_INIT_NO_ERROR)
	{
		tfp_printf("Error: %d\n", ret);
		exit(EXIT_FAILURE);
	}

	priv.cart_ram = riscy_malloc(gb_get_save_size(&gb));

	gb_init_lcd(&gb, &lcd_draw_line);
    gb.direct.frame_skip = true;
    gb.direct.interlace = false;


	if(gb_get_save_size_s(&gb, &priv.save_size) < 0)
	{
        exit(-1);
    }
    if(priv.save_size > 0)
    {
        char *save_file_name = strcpy(riscy_malloc(strlen(rom_name) + 5), rom_name);
        strcat(save_file_name, ".sav");
		read_cart_ram_file(save_file_name, &priv.cart_ram, priv.save_size);
    }


	// gb.direct.interlace = true;
	// if(!mfb_open("Peanut-minifb", LCD_WIDTH, LCD_HEIGHT))
	// 	return EXIT_FAILURE;
    int frame =0;
    char frame_mod = 0;
    int keypress[8]= {0};
    int oldkeypress[8]= {0};
	while(1)
	{

		int state;
        for(int i=0;i<8;i++){
            oldkeypress[i]=keypress[i];
            keypress[i]=getButton(i);
            if(keypress[i] && !oldkeypress[i]){
                gb.direct.joypad &= ~ (riscy_keypress(i));
            }
            else if(!keypress[i] && oldkeypress[i]){
                gb.direct.joypad |= riscy_keypress(i);
            }
        }
		// /* Execute CPU cycles until the screen has to be redrawn. */
		gb_run_frame(&gb);

		// state = mfb_update(priv.fb);
        if(frame%4==0){
            for(int y=0; y<LCD_HEIGHT; y++) {
                for(int x=0; x<LCD_WIDTH; x++) {
                    uint32_t px = priv.fb[y][x];
                    uint8_t r = (px >> 16) & 0xFF;
                    uint8_t g = (px >> 8) & 0xFF;
                    uint8_t b = px & 0xFF;
                    // draw_pixel(pixels, x, y, (color){r, g, b});
                    frame_mod++;
                    // if(frame_mod&1==1){
                        draw_pixel_double(pixels, x, (y<<1), (color){r, g, b});
                    // }
                    // else{
                        draw_pixel_double(pixels, x, (y<<1) + 1, (color){r, g, b});
                    // }
                }
            }
        }
        tfp_printf("Frame %d done.\r\n", frame++);
		/* ESC pressed */
		// if(state < 0)
		// 	break;

		/* If it took more than the maximum allowed time to draw frame,
		 * do not delay.
		 * Interlaced mode could be enabled here to help speed up
		 * drawing.
		 */

	}
	// free(priv.cart_ram);
	// free(priv.rom);
	return 0;
}
