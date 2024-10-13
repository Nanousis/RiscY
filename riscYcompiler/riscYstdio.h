// stdio.h for RISC-V -> riscYstdio.h
#ifndef RISCYSTDIO_H
#define RISCYSTDIO_H

#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216
#define BUTTONS 0x89000000
#define WaitTime 10000
#define SCREEN_WIDTH 64
#define SCREEN_HEIGHT 19



void *memcpy(void *dest, const void *src, int n);
unsigned char putch(int location, char c, char color);
char getButtonDown();
char getButtonUp();
char getButtonLeft();
char getButtonRight();
unsigned int printString(int location, char *string,char color);
unsigned char printHex(int location, int value, char color);
unsigned char printDec(int location, unsigned int num, char color);
int printf(int location, char color,const char* str, ...);


#endif