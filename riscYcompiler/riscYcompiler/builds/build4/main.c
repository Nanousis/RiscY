

#include <stdarg.h> 
#include "riscYstdio.h"
#define RAM 0x40000000


void writeRam(int location, int value) {
    volatile int *ram = (int *)RAM;
    ram[location] = value;
}

int readRam(int location) {
    volatile int *ram = (int *)RAM;
    int value = ram[location];
    value = ram[location];
    return value;
}

int main() {
    volatile int *ram = (int *)RAM;
    // test ram

    writeRam(1, 0x87654321);
    writeRam(4, 0x12345678);
    writeRam(8, 0x11111111);
    writeRam(12, 0x22222222);

    // test memcpy
    printf("Testing memcpy\n");
    printf("%x ", readRam(1));
    printf("%x ", readRam(4));
    printf("%x ", readRam(8));
    printf("%x ", readRam(12));
    printf("Testing memcpy2\n");
    while(1);
}
