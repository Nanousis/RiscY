

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
    while(*flashReady == 0);
    for(volatile int j=0; j<200; j++);
    data = *flashData;
    *flashRen = 0;
    return data;
}

// this function reads the program from the flash and loads it into the program memory
int main() {
    printf("Bootloader\n");
    unsigned int *programMemory = (unsigned int *)PROGRAM_MEMORY;
    unsigned int readData;
    printf("Reading from flash\n");
    for(int i = 0; i < 1024; i++) {
        readData = readFlash(i << 2);
        programMemory[i] = readData;
    }

    printf("Jumping to program\n");
    // Define a function pointer to jump to the loaded program
    void (*jump_to_program)() = (void (*)())PROGRAM_MEMORY;

    // Call the function pointer to jump to the loaded program
    jump_to_program();
}