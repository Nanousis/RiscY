

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
	int i=0;
	char error=0;
	for(i=0;i<5;i++){
		printf("Testing %d\n",i);
		ram[i]=i;
	}
	for(i=0;i<5;i++){
		printf("Reading %d: %d\n",i,ram[i]);
	}

    while(1);
}
