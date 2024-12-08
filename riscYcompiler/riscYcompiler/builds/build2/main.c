

#include <stdarg.h> 
#include "riscYstdio.h"
#define PROGRAM 0x00400000

int main() {
    volatile int *ram = (int *)PROGRAM;
    // test ram
    ram[0] = 0x12345678;
    ram[1] = 0x87654321;
    ram[2] = 0x11111111;
    ram[3] = 0x22222222;
    ram[4] = 0x33333333;
    ram[5] = 0x44444444;
    ram[6] = 0x55555555;
    ram[7] = 0x66666666;
    ram[8] = 0x77777777;
    ram[9] = 0x88888888;
    ram[10] = 0x99999999;

    // test memcpy
    printf("Testing memcpy\n");
    for(int i = 0; i < 10; i++) {
        printf("%x ", ram[i]);
    }
    while(1);
}
