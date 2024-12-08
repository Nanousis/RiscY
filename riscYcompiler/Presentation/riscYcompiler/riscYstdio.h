// stdio.h for RISC-V -> riscYstdio.h
#ifndef RISCYSTDIO_H
#define RISCYSTDIO_H

#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216
#define BUTTONS 0x89000000
#define USB 0x10000000
#define WaitTime 10000
#define SCREEN_WIDTH 64
#define SCREEN_HEIGHT 19

// colors
#define BG_BLACK 0<<4
#define BG_RED 1<<4
#define BG_GREEN 2<<4
#define BG_YELLOW 3<<4
#define BG_BLUE 4<<4
#define BG_MAGENTA 5<<4
#define BG_CYAN 6<<4
#define BG_WHITE 7<<4

#include <stddef.h>



void *memcpy(void *dest, const void *src, int n);
void *memset(void *s, int c, size_t n);
unsigned char putch(int location, char c, char color);
char getButtonDown();
char getButtonUp();
char getButtonLeft();
char getButtonRight();
unsigned int printString(int location, char *string,char color);
unsigned char printHex(int location, int value, char color);
unsigned char printDec(int location, unsigned int num, char color);
int printf(const char* str, ...);
int printfSCR(int location, char color,const char* str, ...);
void clearScreen();
void resetScreenVector();

#endif