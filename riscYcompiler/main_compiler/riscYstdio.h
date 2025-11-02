// stdio.h for RISC-V -> riscYstdio.h
#ifndef RISCYSTDIO_H
#define RISCYSTDIO_H

#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216
#define BUTTONS 0x89000000
#define WaitTime 10000
#define SCREEN_WIDTH 64
#define SCREEN_HEIGHT 19
#include <stddef.h>
#include <stdint.h>
// colors
#define BG_BLACK 0<<4
#define BG_RED 1<<4
#define BG_GREEN 2<<4
#define BG_YELLOW 3<<4
#define BG_BLUE 4<<4
#define BG_MAGENTA 5<<4
#define BG_CYAN 6<<4
#define BG_wHITE 7<<4

#define MTIME_ADDR     0x0200BFF8  // Address of mtime (platform-specific)

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2
// void *memcpy(void *dest, const void *src, int n);
// void *memset(void *s, int c, size_t n);
unsigned char putch(int location, char c, char color);
char getButton(char btn);
char getButtonDown();
char getButtonUp();
char getButtonLeft();
char getButtonRight();
unsigned int printString(int location, char *string,char color);
unsigned char printHex(int location, int value, char color);
unsigned char printDec(int location, int num, char color);
int printf(const char* str, ...);
int printfSCR(int location, char color,const char* str, ...);
int uart_printf(const char* str, ...);
uint8_t uart_read_byte();
long get_time();

void clearScreen();
void resetScreenVector();

unsigned int readFlash(unsigned int adress);
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end);
int16_t riscy_fopen(const char* filename);
int32_t riscy_fread(int16_t fileHandle, void* buffer, uint32_t size);
char riscy_fgetc(int16_t fileHandle);
uint8_t riscy_fclose(int16_t fileHandle);
int riscy_fseek(int16_t fileHandle, long offset, int whence);
int riscy_ftell(int16_t fileHandle);
int riscy_feof(int16_t fileHandle);

void* riscy_malloc(size_t size);
void vOutNS16550(unsigned char c );

// Tinyprintf expects: void (*putf)(void *p, char c)
static void tfp_putc(void *p, char c) {
    (void)p;
    vOutNS16550(c);
}
#endif