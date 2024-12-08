

#include <stdarg.h> 
#include "riscYstdio.h"

typedef struct Programheader{
    char name[13];
    unsigned int startAdress;
} Programheader;

// int getUSBint() {
//     volatile int *usb = (volatile int *)USB;
//     return usb[0];
// }
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
    Programheader headers[5];

    unsigned int readData=0;
    unsigned int *programMemory = (unsigned int *)PROGRAM_MEMORY;
    unsigned int tempAddress=0;

    unsigned int programNum=0;
    // printf("\n\nList of programs\n");
    int selectNum=0;
    short btnPressed=0;
    char btnStart=0;
    int btnDebounce=0;
    clearScreen();
    while(1){
        char magicNum[]="RISCY.FS";
        char magicNumRead[9]={0};
        magicNumRead[8]='\0';
        // this should be changed to take the offset value and not the absolute address to jump to
        printf("Bootloader RiscY\n");
        printf("--------------\n");
        programNum = 0;
        tempAddress = 0;
        readData = readFlash(tempAddress);
        magicNumRead[0] = readData & 0xFF;
        magicNumRead[1] = (readData >> 8) & 0xFF;
        magicNumRead[2] = (readData >> 16) & 0xFF;
        magicNumRead[3] = (readData >> 24) & 0xFF;
        tempAddress += 4;
        readData = readFlash(tempAddress);
        magicNumRead[4] = readData & 0xFF;
        magicNumRead[5] = (readData >> 8) & 0xFF;
        magicNumRead[6] = (readData >> 16) & 0xFF;
        magicNumRead[7] = (readData >> 24) & 0xFF;
        tempAddress += 4;
        // for(int i=0; i<8; i++){
        //     if(magicNum[i]!=magicNumRead[i]){
        //         return 0;
        //     }
        // }
        programNum = readFlash(tempAddress);
        tempAddress += 4;
        printf("Number of Files: %d\n",programNum);
        int usbOut=0;
        char usbChar;
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
        btnStart=0;
        selectNum=0;
        printf("\nSelect program: \n");
        while(!getButtonRight()&&!getButtonLeft()){
            for(int i=0; i<programNum; i++){
                if(btnPressed!=0){
                    selectNum+=btnPressed;
                    btnPressed=0;
                    if(selectNum<0){
                        selectNum=programNum-1;
                    }
                    else if(selectNum>=programNum){
                        selectNum=0;
                    }
                }
                if(i==selectNum){
                    printfSCR(64*5+1+i*64,BG_MAGENTA,"Program %d: %s address: 0x%x",i,headers[i].name,headers[i].startAdress);
                }
                else{
                    printfSCR(64*5+1+i*64,15,"Program %d: %s address: 0x%x",i,headers[i].name,headers[i].startAdress);
                }
                // printf("Program %d: %s\n",i,headers[i].name);
            }
            for(volatile int j=0; j<WaitTime*2; j++){
                if(btnDebounce==0){
                    if(getButtonDown()){
                        btnDebounce=14;
                        btnPressed=1;
                    }
                    else if(getButtonUp()){
                        btnDebounce=14;
                        btnPressed=-1;
                    }
                    else if(getButtonLeft()||getButtonRight()){
                        btnStart=1;
                    }
                }
            }
            if(btnStart){
                break;
            }
            if(btnDebounce>0)
                btnDebounce--;
        }
            // printf("Reading from flash\n");
            for(int j = 0; j < 4096; j++) {
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


