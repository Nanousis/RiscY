

#include <stdarg.h> 
#include "riscYstdio.h"

typedef struct Programheader{
    char name[13];
    unsigned int startAdress;
} Programheader;

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
    for(volatile int j=0; j<200; j++);
    data = *flashData;
    *flashRen = 0;
    return data;
}

// this function reads the program from the flash and loads it into the program memory
int main() {
    Programheader headers[10];

    unsigned int readData;
    unsigned int *programMemory = (unsigned int *)PROGRAM_MEMORY;
    unsigned int tempAddress=0;

    unsigned int programNum;
    // printf("\n\nList of programs\n");
    int selectNum=0;
    char btnPressed=0;

    while(1){
        programNum = 0;
        tempAddress = 0;
        programNum = readFlash(tempAddress);
        tempAddress += 4;
        for(int i=0; i<programNum; i++){
            for(int j=0; j<3; j++){
                readData = readFlash(tempAddress);
                tempAddress += 4;
                headers[i].name[j << 2]   = readData & 0xFF;
                headers[i].name[(j << 2) +1] = (readData >> 8) & 0xFF;
                headers[i].name[(j << 2) +2] = (readData >> 16) & 0xFF;
                headers[i].name[(j << 2) +3] = (readData >> 24) & 0xFF;
            }
            headers[i].name[12] = '\0';
            headers[i].startAdress = readFlash(tempAddress);
            tempAddress += 4;
            // printf("Program %d: %s\n",i,headers[i].name);
        }
        btnPressed=0;
        selectNum=0;
        printf("Bootloader\n");
        printf("Number of programs: %d\n",programNum);
        printf("--------------\n");
        printf("\nSelect program: \n");
        while(!getButtonDown()){
            for(int i=0; i<programNum; i++){
                if(btnPressed==1){
                    btnPressed=0;
                    selectNum++;
                    if(selectNum>=programNum){
                        selectNum=0;
                    }
                }
                if(i==selectNum){
                    printfSCR(64*5+1+i*64,((6)<<4),"Program %d: %s address: %x",i,headers[i].name,headers[i].startAdress);
                }
                else{
                    printfSCR(64*5+1+i*64,15,"Program %d: %s address: %x",i,headers[i].name,headers[i].startAdress);
                }
                // printf("Program %d: %s\n",i,headers[i].name);
            }
            for(volatile int j=0; j<WaitTime*25; j++){
            }
            for(volatile int j=0; j<WaitTime*5; j++){
                if(getButtonUp()){
                    btnPressed=1;
                }
            }
        }
            // printf("Reading from flash\n");
            for(int j = 0; j < 2048; j++) {
                readData = readFlash((j << 2) + headers[selectNum].startAdress);
                programMemory[j] = readData;
            }
            clearScreen();
            // printf("Jumping to program\n");
            // Define a function pointer to jump to the loaded program
            void (*jump_to_program)() = (void (*)())(PROGRAM_MEMORY);

            // Call the function pointer to jump to the loaded program
            jump_to_program();
            clearScreen();
            for(volatile int j=0; j<WaitTime*20; j++);
    }
}


