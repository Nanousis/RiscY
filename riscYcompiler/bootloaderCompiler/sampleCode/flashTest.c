

#include <stdarg.h> 
#include "riscYstdio.h"

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
int main() {
    
    // for(int i=0; i<WaitTime; i++);
    char *flashReady = (char *)FLASH_READY;
    char *flashRen = (char *)FLASH_REN;
    unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
    unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
    // printf("\nReady: %x\n", *flashReady);
    unsigned int adress = 0;
    unsigned int data = 0;
    char char1;
    char char2;
    char char3;
    char char4;
    char str[5];
    volatile unsigned char test=0;
    unsigned int pageStart = 0;
    unsigned int pagePosition = 0;
    unsigned int prevPageStart = 0;
    unsigned char btnDown=0;
    unsigned char btnUp=0;
    while(1){
        adress = prevPageStart;
        pageStart = SCREEN_WIDTH;
        btnDown = 0;
        btnUp = 0;
        resetScreenVector();
        // clearScreen();
        for(int i=0; i<600; i++){
            // printf("Getting data from adress %x\n", adress);
            data = readFlash(adress);
            str[0] = data & 0xFF;
            str[1] = (data >> 8) & 0xFF;
            str[2] = (data >> 16) & 0xFF;
            str[3] = (data >> 24) & 0xFF;
            //     pageStart = SCREEN_WIDTH+prevPageStart;
            // }
            char1 = str[0];
            pagePosition += printf(str);
            adress += 4;
            *flashRen = 0;
            // if(adress-prevPageStart >= SCREEN_SIZE -1){
            //     goto exit;
            // }
            // printf("test");
        }
        while (1)
        {
            for(volatile int i=0; i<WaitTime*10; i++){
                if(getButtonDown()){
                    btnDown = 1;
                }
                if(getButtonUp()){
                    btnUp = 1;
                }
            }
            if(btnUp){
                prevPageStart = prevPageStart + (SCREEN_WIDTH);
                break;
            }
            else if(btnDown){
             if(prevPageStart == 0){
                 break;
             }
                prevPageStart = prevPageStart - (SCREEN_WIDTH);
                break;
            }
        }
        
    }
    while(1);   
}