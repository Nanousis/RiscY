

#include <stdarg.h> 
#include "riscYstdio.h"

#define PROGRAM_MEMORY 0x00400000
#define FLASH_READY 0x8B000000
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B0000008
#define FLASH_DATA_OUT 0x8B000000C
unsigned int readFlash(unsigned int adress){
    char *flashReady = (char *)FLASH_READY;
    char *flashRen = (char *)FLASH_REN;
    unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
    unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
    unsigned int data = 0;
    *flashAdress = adress;
    *flashRen = 1;
    // while(*flashReady == 0);
    for(volatile int j=0; j<500; j++);
    data = *flashData;
    *flashRen = 0;
    return data;
}

// this function reads the program from the flash and loads it into the program memory
int main() {
    unsigned int *programMemory = (unsigned int *)PROGRAM_MEMORY;
    unsigned char *memoryChar = (unsigned char *)PROGRAM_MEMORY;
    
    unsigned int test_data = 0xdeadbeef;
    char str[] = "Iordana <3";

    programMemory[0] = test_data;
    printf("Writing 0x%x\n", test_data);
    for(volatile int i=0; i<WaitTime*50; i++);
    printf("Reading 0x%x\n", programMemory[0]);
    for(volatile int i=0; i<WaitTime*50; i++);
    printf("Writing %s\n", str);
    for(volatile int i=0; i<11; i++) {
        memoryChar[i+8] = str[i];
    }
    for(volatile int i=0; i<WaitTime*50; i++);
    printf("Reading %s\n", memoryChar+8);
    while(1);

}


