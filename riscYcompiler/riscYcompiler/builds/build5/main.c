

#include <stdarg.h> 
#include "riscYstdio.h"
#define RAM 0x40000000


void writeRam(int location, int value) {
    volatile int *ram = (int *)RAM;
    ram[location] = value;
}

int readRam(int location) {
    volatile int *ram = (int *)RAM;
    int value;
    value = ram[location];
    return value;
}

int main() {
    volatile int *ram = (int *)RAM;
    // test ram

    writeRam(0, 0xaaaaaaaa);
    writeRam(1, 0xbbbbbbbb);
    writeRam(2, 0xcccccccc);
    writeRam(3, 0xdddddddd);
    writeRam(4, 0xffffffff);
    writeRam(5, 0xeeeeeeee);
    writeRam(6, 0x00100000);
    writeRam(7, 0x20222222);
    writeRam(8, 0x33333333);
    writeRam(9, 0x44444444);
    writeRam(10, 0x55555555);

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
