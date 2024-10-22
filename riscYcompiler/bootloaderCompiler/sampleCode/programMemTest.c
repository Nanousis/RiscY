

#include <stdarg.h> 
#include "riscYstdio.h"

#define PROGRAM_MEMORY 0x00400000

int main() {
    
    unsigned char *programMemory = PROGRAM_MEMORY;

    // printf("Writing to flash\n");
    char str[]="TESTING FOR REAL!";
    for(int i=0; i<10; i++){
        programMemory[i]=str[i];
    }
    // printf("Reading from flash\n");
    for(int i=0; i<10; i++){
        putch(i+128,programMemory[i],15);
    }

    while(1){
    }
    
}