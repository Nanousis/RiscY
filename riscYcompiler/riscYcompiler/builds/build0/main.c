

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
	for(int i =0; i<10000; i++){
		ram[i<<4] = i;	
	}

	for(int i =0; i<10000; i++){
		if(ram[i<<4]!=i){
			printf("Error at %d\n", i);
			error = 1;
		}	
	}
	if(!error){
		printf("No errors\n");
	}

    while(1);
}
