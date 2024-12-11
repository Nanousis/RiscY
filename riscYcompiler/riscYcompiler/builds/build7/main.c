

#include <stdarg.h> 
#include "riscYstdio.h"
#define RAM 0x40000000


void writeRam(int location, int value) {
    volatile int *ram = (int *)RAM;
    ram[location*4] = value;
}

int readRam(int location) {
    volatile int *ram = (int *)RAM;
    int value;
    value = ram[location*4];
    return value;
}

int main() {
    volatile int *ram = (int *)RAM;
    // test ram

    writeRam(0, 0x87654321);
    writeRam(1, 0x12345678);
    writeRam(2, 0x11111111);
    writeRam(3, 0x22222222);
    writeRam(4, 0x33333333);
    writeRam(5, 0x44444444);
    writeRam(6, 0x55555555);
    writeRam(7, 0x66666666);
    writeRam(8, 0x77777777);
    writeRam(9, 0x88888888);
    writeRam(10, 0x99999999);

    // test memcpy
    printf("Testing memcpy\n");
    printf("%x ", readRam(0));
    printf("%x ", readRam(1));
    printf("%x ", readRam(2));
    printf("%x ", readRam(3));
    printf("%x ", readRam(4));
    printf("%x ", readRam(5));
    printf("%x ", readRam(6));
    printf("%x ", readRam(7));
    printf("%x ", readRam(8));
    printf("%x ", readRam(9));
    printf("%x ", readRam(10));
    printf("Testing memcpy2\n");
    while(1);
}
