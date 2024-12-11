

#include <stdarg.h> 
#include "riscYstdio.h"
#define RAM 0x40000000


void writeRam(int location, int value) {
    volatile int *ram = (int *)RAM;
    ram[location] = value;
    ram[location] = value;
}

int readRam(int location) {
    volatile int *ram = (int *)RAM;
    int value = ram[location];
    value = ram[location];
    value = ram[location];
    return value;
}

int main() {
    volatile int *ram = (int *)RAM;
    // test ram

    writeRam(0, 0xdeadbaaf);
    writeRam(1, 0xdeadbeef);
    //writeRam(2, 0x11111111);
    //writeRam(3, 0x22222222);
    //writeRam(4, 0x33333333);
    //writeRam(5, 0x44444444);
    //writeRam(6, 0x55555555);
    //writeRam(7, 0x66666666);
    //writeRam(8, 0x77777777);
    //writeRam(9, 0x88888888);
    //writeRam(10, 0x99999999);

    // test memcpy
    printf("Testing memcpy\n");
    printf("%x ", readRam(0));
    printf("%x ", readRam(1));
    printf("%x ", readRam(2));
    printf("Testing memcpy2\n");
    while(1);
}
