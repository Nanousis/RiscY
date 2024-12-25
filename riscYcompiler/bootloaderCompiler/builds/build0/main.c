

#include <stdarg.h> 
#include "riscYstdio.h"

typedef struct Programheader{
    unsigned int startAddress;
    unsigned int endAddress;
} Programheader;

#define PROGRAM_MEMORY 0x00400000
#define FLASH_READY 0x8B000000
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B0000008
#define FLASH_DATA_OUT 0x8B000000C
#define USB 0x10000000

#define FILE_OFFSET 4 

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

int getUSBint() {
    volatile int *usb = (volatile int *)USB;
    return usb[0];
}


void WriteSprite(int spriteNum,char *sprite){
    unsigned short *screenSprites = (unsigned short *) 0x88001000;
    for(int i=0; i<32; i++){
        screenSprites[i+spriteNum*32] = sprite[i];
    }
}
// this function reads the program from the flash and loads it into the program memory
int main() {
    Programheader headers[10];
    unsigned int readData=0;
    unsigned int *programMemory = (unsigned int *)PROGRAM_MEMORY;
    unsigned int tempAddress=0;
    unsigned int startinAddress=0;  

    char programNum=0;
    // printf("\n\nList of programs\n");
    int selectNum=0;
    short btnPressed=0;
    char btnStart=0;
    int btnDebounce=0;
    char magicNum[]="RISCY.FS";
    char readChar;
    short textPos=0;
    int i=0,j=0;
    char sprite[32]={255};
    clearScreen();
    char usbKey=0;
    char oldKey=0;
    char boardBtns=0;
    char oldBoardBtns=0;
    while(1){
        char magicNumRead[9]={0};
        magicNumRead[9]='\0';
        // this should be changed to take the offset value and not the absolute address to jump to
        // printf("Bootloader RiscY\n");
        // printf("--------------\n");
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
        for(i=0; i<8; i++){
            if(magicNum[i]!=magicNumRead[i]){
                // printf("Error: Magic number not found\n");
                printf("Error MN: %s\n",magicNumRead);
                return 0;
            }
        }

        programNum = readFlash(tempAddress);
        tempAddress += 1;
        printf("Number of Files: %d\n",programNum);
        btnPressed=0;
        btnStart=0;
        selectNum=0;
        printf("\nSelect program: \n");
        startinAddress = tempAddress;
        while(1){
            tempAddress = startinAddress;
            for(i=0; i<programNum; i++){
                textPos = FILE_OFFSET+64*5+5+i*192;
                do{
                    readData = readFlash(tempAddress);
                    readChar = readData & 0xFF;
                    tempAddress += 1;
                    textPos++;
                    if(readChar==0){
                        break;
                    }
                    putch(textPos, readChar, (i==selectNum)?BG_MAGENTA:15);
                }while(1);
                readAddress:
                headers[i].startAddress = readFlash(tempAddress);
                tempAddress += 4;
                headers[i].endAddress = readFlash(tempAddress);
                tempAddress += 4;
                for(int k=0;k<8;k++){
                    for(int j=0;j<32;j++){
                            readData = readFlash(tempAddress);
                            tempAddress += 1;
                            sprite[j] = readData & 0xFF;
                    }
                WriteSprite(i*8+k,sprite);
                }
                printfSCR(textPos,15," S: 0x%x, E: 0x%x",headers[i].startAddress,headers[i].endAddress);
                textPos = FILE_OFFSET + 64*5+i*192;

                putch(textPos,                  i*8 + 128, 0);
                putch(textPos+1,                i*8 + 128+1, 0);
                putch(textPos+2,                i*8 + 128+2, 0);
                putch(textPos+3,                i*8 + 128+3, 0);
                putch(textPos+SCREEN_WIDTH,     i*8 + 128+4, 0);
                putch(textPos+SCREEN_WIDTH+1,   i*8 + 128+5, 0);
                putch(textPos+SCREEN_WIDTH+2,   i*8 + 128+6, 0);
                putch(textPos+SCREEN_WIDTH+3,   i*8 + 128+7, 0);
            }
            usbKey = (getUSBint()>>24)&0xFF;

            printfSCR(SCREEN_WIDTH*18,15,"%x",usbKey);

            if(getButtonDown()){
                boardBtns = 0x51;
            }
            else if(getButtonUp()){
                boardBtns = 0x52;
            }
            else if(getButtonRight()){
                boardBtns = 0x28;
            }
            else if(getButtonLeft()){
                boardBtns = 0x28;
            }
            else{
                boardBtns = 0;
            }

            if(usbKey!=oldKey){
                if(boardBtns == 0x51||usbKey == 0x51){//down arrow
                    selectNum++;
                    if(selectNum>=programNum){
                        selectNum=0;
                    }
                }
                else if(boardBtns == 0x52||usbKey == 0x52){//up arrow
                    selectNum--;
                    if(selectNum<0){
                        selectNum=programNum-1;
                    }
                }
                else if(boardBtns == 0x28||usbKey == 0x28){//enter key
                    break;
                }
            }
            oldBoardBtns = boardBtns;
            oldKey = usbKey;
            for(volatile int k=0; k<WaitTime>>2; k++);
        }
        int programSize=(headers[selectNum].endAddress-headers[selectNum].startAddress)>>2;
        printf("Reading from flash %x\n",programSize);
        for(j = 0; j < programSize; j++) {
            readData = readFlash((j << 2) + headers[selectNum].startAddress);
            programMemory[j] = readData;
            printfSCR(64*18,15, "%x/%x",j,programSize);
        }
        clearScreen();
        // printf("Jumping to program\n");
        // Define a function pointer to jump to the loaded program
        void (*jump_to_program)() = (void (*)())(PROGRAM_MEMORY);
        // Call the function pointer to jump to the loaded program
        jump_to_program();
        clearScreen();
    }
}


