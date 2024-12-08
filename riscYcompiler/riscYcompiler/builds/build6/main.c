

#include <stdarg.h> 
#include "riscYstdio.h"
#define RAM 0x40000000


void writeRam(int location, int value) {
    volatile int *ram = (int *)RAM;
    ram[location] = value;
    //for(volatile int i=0; i<500;i++);
}

int readRam(int location) {
    volatile int *ram = (int *)RAM;
    int value = ram[location];
    //for(volatile int i=0; i<500;i++);
    return value;
}

int main() {
    volatile int *ram = (int *)RAM;
    volatile int test=0;
    // test ram

    writeRam(0, 0x12345678);
    writeRam(1, 0x87654321);
    writeRam(2, 0x11111111);
    writeRam(3, 0x22222222);
    writeRam(4, 0x33333333);
    writeRam(5, 0x44444444);
    writeRam(6, 0x55555555);
    writeRam(7, 0x66666666);
    writeRam(8, 0x77777777);
    writeRam(9, 0x88888888);
    writeRam(10, 0x99999999);
    test = readRam(0);
    test = readRam(1);
    test = readRam(2);
    test = readRam(3);
    test = readRam(4);
    test = readRam(5);
    test = readRam(6);
    test = readRam(7);
    test = readRam(8);
    
    while(1);
}
