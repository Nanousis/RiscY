

#include <stdarg.h> 
#include <stdint.h>
#include <elf.h>
#include "riscYstdio.h"


typedef struct Programheader{
    unsigned int startAddress;
    unsigned int endAddress;
} Programheader;

#define FLASH_READY 0x8B000000
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C
#define FILE_OFFSET 4 

#define RAM_LOCATION 0x80000000
#define SECOND_STAGE_LOCATION 0x00800000
#define SECOND_STAGE_SIZE 0x2000
#define SECOND_STAGE_OFFSET 0x250000
unsigned int readFlash(unsigned int adress){
    char *flashReady = (char *)FLASH_READY;
    char *flashRen = (char *)FLASH_REN;
    unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
    unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
    unsigned int data = 0;
    *flashAdress = adress;
    *flashRen = 1;
    // while(*flashReady == 0);
    for(volatile int j=0; j<200; j++);
    data = *flashData;
    *flashRen = 0;
    return data;
}

int main() {
    // for(int i=0; i<SCREEN_SIZE; i++){
    //     putch(i,' ', BG_MAGENTA);
    // }
    // printString(0,"First Stage bootloader\n",BG_MAGENTA);
    // uint32_t buffer=0;
    // uint32_t *second_stage_ram = (uint32_t *) SECOND_STAGE_LOCATION;
    // for(int i=0; i<SECOND_STAGE_SIZE;i+=4){
    //     buffer = readFlash(i+SECOND_STAGE_OFFSET);
    //     second_stage_ram[i>>2] = buffer;
    // }
    // Define a function pointer to jump to the loaded program
    void (*jump_to_program)() = (void (*)())(RAM_LOCATION);
    // Call the function pointer to jump to the loaded program
    jump_to_program();
}


