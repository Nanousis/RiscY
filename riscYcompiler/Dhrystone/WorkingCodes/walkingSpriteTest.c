#include <stdarg.h> 
#include <stdint.h>
#include "riscYstdio.h"
#define USB 0x10000000
#define MTIME_ADDR     0x0200BFF8  // Address of mtime (platform-specific)
#define MTIMECMP_ADDR  0x02004000  // Address of mtimecmp (platform-specific)
#define ONESECOND 27000000 //27.000.000 cycles for 27MHz clock
#define ONETENTH 2700000 //27.000.000 cycles for 27MHz clock
#include <stdint.h>
#define BG_COLOR BG_BLACK
#define FG_COLOR BG_MAGENTA
#define FLASH_READY 0x8B000000
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C

#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4
#define MAXSELECT 2



char characterdown1_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xF9,
    0x50, 0x55,
    0x74, 0xFF,
    0xF4, 0xDF,
    0x54, 0xDF,
    0x74, 0xBD,
    0x50, 0x55,
    0x40, 0x59,
    0x00, 0x95,
    0x00, 0x69,
    0x00, 0x54,
};

char characterdown1_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6F, 0x05,
    0x55, 0x05,
    0xFF, 0x1D,
    0xF7, 0x1F,
    0xF7, 0x05,
    0x7E, 0x06,
    0x55, 0x07,
    0xF5, 0x05,
    0xF6, 0x01,
    0x51, 0x00,
    0x00, 0x00,
};

char characterdown2_00[] = {
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xF9,
    0x50, 0x57,
    0x74, 0xFF,
    0xF4, 0xDF,
    0x50, 0xDF,
    0x50, 0xBD,
    0xF4, 0x55,
    0xF4, 0x55,
    0x50, 0x69,
    0x40, 0x96,
    0x40, 0x6A,
    0x00, 0x15,
};

char characterdown2_01[] = {
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6F, 0x05,
    0xD5, 0x05,
    0xFF, 0x1D,
    0xF7, 0x1F,
    0xF7, 0x05,
    0x7E, 0x05,
    0x55, 0x1F,
    0x55, 0x1F,
    0x69, 0x05,
    0x96, 0x01,
    0xA9, 0x01,
    0x54, 0x00,
};

char characterdown3_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xF9,
    0x50, 0x55,
    0x74, 0xFF,
    0xF4, 0xDF,
    0x50, 0xDF,
    0x90, 0xBD,
    0xD0, 0x55,
    0x50, 0x5F,
    0x40, 0x9F,
    0x00, 0x45,
    0x00, 0x00,
};

char characterdown3_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6F, 0x05,
    0x55, 0x05,
    0xFF, 0x1D,
    0xF7, 0x1F,
    0xF7, 0x15,
    0x7E, 0x1D,
    0x55, 0x05,
    0x65, 0x01,
    0x56, 0x00,
    0x69, 0x00,
    0x15, 0x00,
};

char characterleft1_00[] = {
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x50, 0xAB,
    0xF4, 0xAF,
    0x50, 0x6A,
    0x40, 0xF7,
    0x40, 0xF7,
    0x40, 0xFF,
    0x00, 0xF9,
    0x00, 0x54,
    0x00, 0x50,
    0x00, 0x50,
    0x00, 0xA4,
    0x00, 0xA4,
    0x00, 0x50,
};

char characterleft1_01[] = {
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6A, 0x05,
    0x55, 0x05,
    0x55, 0x05,
    0x7D, 0x01,
    0x7F, 0x00,
    0x97, 0x01,
    0xA5, 0x01,
    0x9F, 0x01,
    0x9F, 0x01,
    0x55, 0x00,
    0x1A, 0x00,
    0x05, 0x00,
};

char characterleft2_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x50, 0xAB,
    0xF4, 0xAF,
    0x50, 0x6A,
    0x40, 0xF7,
    0x40, 0xF7,
    0x40, 0xFF,
    0x00, 0xF9,
    0x00, 0x54,
    0x40, 0x55,
    0x90, 0xA6,
    0x40, 0x5A,
    0x00, 0x15,
};

char characterleft2_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6A, 0x05,
    0x55, 0x05,
    0x55, 0x05,
    0x7D, 0x01,
    0x7F, 0x00,
    0x97, 0x01,
    0x95, 0x01,
    0x7D, 0x01,
    0x7D, 0x06,
    0x95, 0x06,
    0x40, 0x01,
};

char characterright1_00[] = {
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xA9,
    0x50, 0x55,
    0x50, 0x55,
    0x40, 0x7D,
    0x00, 0xFD,
    0x40, 0xD6,
    0x40, 0x5A,
    0x40, 0xF6,
    0x40, 0xF6,
    0x00, 0x55,
    0x00, 0xA4,
    0x00, 0x50,
};

char characterright1_01[] = {
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xEA, 0x05,
    0xFA, 0x1F,
    0xA9, 0x05,
    0xDF, 0x01,
    0xDF, 0x01,
    0xFF, 0x01,
    0x6F, 0x00,
    0x15, 0x00,
    0x05, 0x00,
    0x05, 0x00,
    0x1A, 0x00,
    0x1A, 0x00,
    0x05, 0x00,
};

char characterright2_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xA9,
    0x50, 0x55,
    0x50, 0x55,
    0x40, 0x7D,
    0x00, 0xFD,
    0x40, 0xD6,
    0x40, 0x56,
    0x40, 0x7D,
    0x90, 0x7D,
    0x90, 0x56,
    0x40, 0x01,
};

char characterright2_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xEA, 0x05,
    0xFA, 0x1F,
    0xA9, 0x05,
    0xDF, 0x01,
    0xDF, 0x01,
    0xFF, 0x01,
    0x6F, 0x00,
    0x15, 0x00,
    0x55, 0x01,
    0x9A, 0x06,
    0xA5, 0x01,
    0x54, 0x00,
};

char characterup1_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xAA,
    0x50, 0xA9,
    0x74, 0x55,
    0xF4, 0x55,
    0x54, 0x5F,
    0x74, 0xA5,
    0x50, 0x59,
    0x40, 0xE9,
    0x00, 0xA5,
    0x00, 0x59,
    0x00, 0x54,
};

char characterup1_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0xAA, 0x05,
    0x6A, 0x05,
    0x55, 0x1D,
    0x55, 0x1F,
    0xF5, 0x05,
    0x5A, 0x05,
    0x65, 0x1F,
    0x6B, 0x1F,
    0x5A, 0x05,
    0x05, 0x00,
    0x00, 0x00,
};

char characterup2_00[] = {
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xAA,
    0x50, 0xA9,
    0x74, 0x55,
    0xF4, 0x55,
    0x50, 0x5F,
    0x50, 0xA5,
    0x74, 0x59,
    0x74, 0xE9,
    0x50, 0xA5,
    0x40, 0x56,
    0x40, 0x6A,
    0x00, 0x15,
};

char characterup2_01[] = {
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0xAA, 0x05,
    0x6A, 0x05,
    0x55, 0x1D,
    0x55, 0x1F,
    0xF5, 0x05,
    0x5A, 0x05,
    0x65, 0x1D,
    0x6B, 0x1D,
    0x5A, 0x05,
    0x95, 0x01,
    0xA9, 0x01,
    0x54, 0x00,
};

char characterup3_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xAA,
    0x50, 0xA9,
    0x74, 0x55,
    0xF4, 0x55,
    0x50, 0x5F,
    0x50, 0xA5,
    0xF4, 0x59,
    0xF4, 0xE9,
    0x50, 0xA5,
    0x00, 0x50,
    0x00, 0x00,
};

char characterup3_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0xAA, 0x05,
    0x6A, 0x05,
    0x55, 0x1D,
    0x55, 0x1F,
    0xF5, 0x15,
    0x5A, 0x1D,
    0x65, 0x05,
    0x6B, 0x01,
    0x5A, 0x00,
    0x65, 0x00,
    0x15, 0x00,
};

        // character movement
typedef struct object {
    char id;
    short x;
    short y;    
    char sprite;
    char enable;
} object;
typedef struct animation{

    char *frames[4];
    char frameCount;
    char currentFrame;
    char idleFrameIndex;
}animation;
animation charDown00;
animation charDown01;
animation charLeft00;
animation charLeft01;
animation charRight00;
animation charRight01;
animation charUp00;
animation charUp01;

object character00={1,200,120,30,1};
object character01={2,208,120,31,1};


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

unsigned int GetFlashAddresFile(char *fileName){
    unsigned int data=0;
    unsigned int address = 8;
    char numOfFiles=0;
    numOfFiles = readFlash(address);
    address++;

    char i=0;
    char found=0;
    char wrong=0;
    char tempName[32];
    char fileCount=0;
    while(!found&&fileCount<numOfFiles){
        i=0;
        fileCount++;
        wrong=0;

        do{
            tempName[i] = (char)readFlash(address);
            if(tempName[i]=readFlash(address)){
                wrong=1;
            }
            address++;
            i++;
        }while(tempName[i-1]!='\0');

        printf("name:-%s, %x\n",tempName, address);
        
        if(wrong==0){
            found=1;
        }
        else{
            address+=264;
        }
    }
    unsigned int fileAddress = readFlash(address)+279;
    // printf("fileAddress: %x\n",fileAddress);
    // asm volatile("ebreak");
    return fileAddress;
    
}

char sprite_temp[32];
void LoadMapFromFile(char *fileName){
    
    int fileAddress = GetFlashAddresFile(fileName);

    // int fileAddress = 0x422E;
    char spriteNum = readFlash(fileAddress);
    fileAddress++;
    int i=0;
    for(i=0;i<spriteNum;i++){
        printf("Sprite %d: 0x",i);
        for(int j=0;j<32;j++){
            sprite_temp[j] =(char) readFlash(fileAddress);
            fileAddress++;
            printf("%d %x_",j ,sprite_temp[j]);
        }
        WriteSprite(i, sprite_temp);
    }
    char spriteId=0;
    // putch(SCREEN_WIDTH*10,128,0);
    for(i=0;i<15;i++){
        for(int j=0;j<50;j++){
            spriteId=readFlash(fileAddress);
            fileAddress++;
            putch(i*SCREEN_WIDTH+j,128+spriteId,15);
        }
    }
}

void WriteSprite(int spriteNum, char *sprite) {
    unsigned short *screenSprites = (unsigned short *)0x88001000;
    for (int i = 0; i < 32; i++) {
        screenSprites[i + spriteNum * 32] = sprite[i];
    }
}

void set_timer_interrupt(uint64_t interval) {
    volatile uint64_t *mtime = (uint64_t *)MTIME_ADDR;
    volatile uint64_t *mtimecmp = (uint64_t *)MTIMECMP_ADDR;
    asm volatile("li t1, 0x80");
    asm volatile("csrc mie, t1");
    uint64_t current_time = *mtime;
    *mtimecmp = current_time + interval; // Set next timer interrupt
    asm volatile("li t1, 0x80");
    asm volatile("csrs mie, t1");
}

void disable_timer_interrupt() {
            volatile uint32_t *mtimecmp = (uint32_t *)MTIMECMP_ADDR;
            mtimecmp[1] = 0xffffffff; // Set next timer interrupt
            mtimecmp[0] = 0xffffffff; // Set next timer interrupt
}
char direction = 0;
char currentFrame = 0;
void SetAttributes(char spriteID, short x, short y, char enable, char spriteNum) {
    volatile unsigned int *screenSprites = (volatile unsigned int *)0x88002000;
    x &= 0x1FF;
    y &= 0x1FF;

    int firsthalf = ((spriteNum << 9) | y) & 0xffff;
    int secondhalf = ((enable) ? 0x8000 : 0) | (x & 0x1ff);
    int temp = (secondhalf << 16) | firsthalf;
    screenSprites[spriteID] = temp;
}
void renderFrame(){
    if(direction == UP){
        charUp00.currentFrame++;
        charUp01.currentFrame++;
        if(charUp00.currentFrame>=charUp00.frameCount){
            charUp00.currentFrame = 0;
            charUp01.currentFrame = 0;
        }
        currentFrame = charUp00.currentFrame;
        character00.y-=4;
        character01.y-=4;
        if(character00.y<0){
            character00.y = 300;
            character01.y = 300;
        }
        WriteSprite(character00.sprite, charUp00.frames[charUp00.currentFrame]);
        WriteSprite(character01.sprite, charUp01.frames[charUp01.currentFrame]);
    }
    else if(direction==DOWN){
        charDown00.currentFrame++;
        charDown01.currentFrame++;
        if(charDown00.currentFrame>=charDown00.frameCount){
            charDown00.currentFrame = 0;
            charDown01.currentFrame = 0;
        }
        currentFrame = charDown00.currentFrame;
        character00.y+=4;
        character01.y+=4;
        if(character00.y>300){
            character00.y = 0;
            character01.y = 0;
        }
        WriteSprite(character00.sprite, charDown00.frames[charDown00.currentFrame]);
        WriteSprite(character01.sprite, charDown01.frames[charDown01.currentFrame]);
    }
    else if(direction==LEFT){
        charLeft00.currentFrame++;
        charLeft01.currentFrame++;
        if(charLeft00.currentFrame>=charLeft00.frameCount){
            charLeft00.currentFrame = 0;
            charLeft01.currentFrame = 0;
        }
        currentFrame = charLeft00.currentFrame;
        character00.x-=4;
        character01.x-=4;
        if(character00.x<0){
            character00.x = 500;
            character01.x = 508;
        }
        WriteSprite(character00.sprite, charLeft00.frames[charLeft00.currentFrame]);
        WriteSprite(character01.sprite, charLeft01.frames[charLeft01.currentFrame]);
    }
    else if(direction==RIGHT){
        charRight00.currentFrame++;
        charRight01.currentFrame++;
        if(charRight00.currentFrame>=charRight00.frameCount){
            charRight00.currentFrame = 0;
            charRight01.currentFrame = 0;
        }
        currentFrame = charRight00.currentFrame;
        character00.x+=4;
        character01.x+=4;
        if(character00.x>508){
            character00.x = 0;
            character01.x = 8;
        }
        WriteSprite(character00.sprite, charRight00.frames[charRight00.currentFrame]);
        WriteSprite(character01.sprite, charRight01.frames[charRight01.currentFrame]);
    }
    
    SetAttributes(character00.id, character00.x, character00.y, character00.enable, character00.sprite);
    SetAttributes(character01.id, character01.x, character01.y, character01.enable, character01.sprite);
}
void c_trap_handler(uintptr_t mcause, uintptr_t mepc, uintptr_t mtval) {
    // printfSCR(SCREEN_WIDTH*10,15,"Trap Handler entered!\n");
    // printfSCR(0,15,"Trap occurred!\n");
    // printfSCR(SCREEN_WIDTH*4,15,"mcause: %x, mepc: %x, mtval: %x\n", mcause, mepc, mtval);

    if ((mcause & 0x80000000) != 0) {
        // Interrupt
        // printfSCR(SCREEN_WIDTH*5,15,"Interrupt: %x\n",intCount);
        // if(mepc<0x00400000){
        //     while(1);
        // }
        if(mcause == 0x80000007){
            // Timer interrupt
            // printfSCR(SCREEN_WIDTH*6,15,"Timer interrupt! time:%x cmp:%x\n",*((uint32_t *)MTIME_ADDR),*((uint32_t *)MTIMECMP_ADDR));
            set_timer_interrupt(ONETENTH); 
            renderFrame();
            // disable_timer_interrupt();

            // set_timer_interrupt(ONETENTH); // Set next timer interrupt
        }
} else {
        // Exception
        switch (mcause) {
            case 2:  // Illegal instruction
            printfSCR(SCREEN_WIDTH * 14, 15, "Illegal instruction!\n");
            break;
            case 3:  // Breakpoint (ebreak)
            printfSCR(SCREEN_WIDTH * 14, 15, "Breakpoint (ebreak)!\n");
            while(getButtonDown()==0);
            break;
            case 8:  // Environment call from U-mode
            printfSCR(SCREEN_WIDTH * 14, 15, "System call from U-mode!\n");
            break;
            case 11:  // Environment call from S-mode
            printfSCR(SCREEN_WIDTH * 14, 15, "System call from M-mode!\n");
            while(getButtonDown()==0);

            break;
            default:
            printfSCR(SCREEN_WIDTH * 14, 15, "Unhandled exception!\n");
            break;
        }

        // Skip the faulting instruction
        if ((*(uint16_t *)mepc & 0x3) == 0x3) {
            // Regular 32-bit instruction
            mepc += 4;
        } else {
            // Compressed 16-bit instruction
            mepc += 2;
        }
        // while(1);
        asm volatile("csrw mepc, %0" : : "r"(mepc));
        printfSCR(SCREEN_WIDTH * 11, 15, "new PC: %x!\n",mepc);

    }
}





int main() {



    int state=0;
    
    char prevButton=0;
    char newButton=0;
    int i=0;


    charDown00.frames[0] = characterdown2_00;
    charDown00.frames[1] = characterdown1_00;
    charDown00.frames[2] = characterdown2_00;
    charDown00.frames[3] = characterdown3_00;
    charDown00.frameCount = 4;
    charDown00.currentFrame = 0;
    charDown00.idleFrameIndex = 0;

    charDown01.frames[0] = characterdown2_01;
    charDown01.frames[1] = characterdown1_01;
    charDown01.frames[2] = characterdown2_01;
    charDown01.frames[3] = characterdown3_01;
    charDown01.frameCount = 4;
    charDown01.currentFrame = 0;
    charDown01.idleFrameIndex = 0;

    charLeft00.frames[0] = characterleft1_00;
    charLeft00.frames[1] = characterleft2_00;
    charLeft00.frameCount = 2;
    charLeft00.currentFrame = 1;
    charLeft00.idleFrameIndex = 1;

    charLeft01.frames[0] = characterleft1_01;
    charLeft01.frames[1] = characterleft2_01;
    charLeft01.frameCount = 2;
    charLeft01.currentFrame = 1;
    charLeft01.idleFrameIndex = 1;

    charRight00.frames[0] = characterright1_00;
    charRight00.frames[1] = characterright2_00;
    charRight00.frameCount = 2;
    charRight00.currentFrame = 1;
    charRight00.idleFrameIndex = 1;

    charRight01.frames[0] = characterright1_01;
    charRight01.frames[1] = characterright2_01;
    charRight01.frameCount = 2;
    charRight01.currentFrame = 1;
    charRight01.idleFrameIndex = 1;

    charUp00.frames[0] = characterup2_00;
    charUp00.frames[1] = characterup1_00;
    charUp00.frames[2] = characterup2_00;
    charUp00.frames[3] = characterup3_00;
    charUp00.frameCount = 4;
    charUp00.currentFrame = 0;
    charUp00.idleFrameIndex = 0;

    charUp01.frames[0] = characterup2_01;
    charUp01.frames[1] = characterup1_01;
    charUp01.frames[2] = characterup2_01;
    charUp01.frames[3] = characterup3_01;
    charUp01.frameCount = 4;
    charUp01.currentFrame = 0;
    charUp01.idleFrameIndex = 0;


    
    WriteSprite(character00.sprite, charDown00.frames[charDown00.currentFrame]);
    WriteSprite(character01.sprite, charDown01.frames[charDown01.currentFrame]);
    
    LoadMapFromFile("map1.bin");
    // WriteSprite(0, brickwall_00);
    // SetAttributes(character00.id, character00.x, character00.y, character00.enable, character00.sprite);

    // SetAttributes(3, 100, 100, 1, 3);
    
    set_timer_interrupt(ONETENTH);


    while(1){
        // for(volatile int i=0;i<1000000;i++);

        if(getButton(BUTTON_LEFT_DOWN)){
            direction = DOWN;
            // newButton=UP;
        }
        else if(getButton(BUTTON_LEFT_UP)){
            direction = UP;
            // newButton=DOWN;
        }
        else if(getButton(BUTTON_LEFT_LEFT)){
            direction = LEFT;
            // newButton=LEFT;
        }
        else if(getButton(BUTTON_LEFT_RIGHT)){
            direction = RIGHT;
            // newButton=RIGHT;
        }
        else{
            if(currentFrame==0)
            direction=15;
        }

        // if(newButton!=prevButton){
            
        //     // clearScreen();

        //     if (state == 0) {
        //         state = 0 ;
        //         if (newButton == UP) {
        //             seconds++;
        //             if (seconds > 59) {
        //                 seconds = 0;
        //             }
        //         } else if (newButton == DOWN) {
        //             seconds--;
        //             if (seconds < 0) {
        //                 seconds = 59;
        //             }
        //             printfSCR(0,15,"Select Seconds: %d",seconds);
        //         }else if (newButton == LEFT) {
        //             state = 0;
        //         }
                
        //          else if (newButton == RIGHT) {
        //             state = 1;
        //         }
        //             printfSCR(0,15,"Select Seconds: %d",seconds);
        //     } else if (state == 1) {
        //         if (newButton == UP) {
        //             minutes++;
        //             if (minutes > 59) {
        //                 minutes = 0;
        //             }
        //             printfSCR(0,15,"Select Minutes: %d",minutes);
        //         } else if (newButton == DOWN) {
        //             minutes--;
        //             if (minutes < 0) {
        //                 minutes = 59;
        //             }
        //             printfSCR(0,15,"Select Minutes: %d",minutes);
        //         } else if (newButton == RIGHT) {
        //             printfSCR(0,15,"Select Hours: %d",hours);
        //             state = 2;
        //         } else if (newButton == LEFT) {
        //             printfSCR(0,15,"Select Seconds: %d",seconds);
        //             state = 0;
        //         }
        //     } else if (state == 2) {
        //         if (newButton == UP) {
        //             hours++;
        //             if (hours > 23) {
        //                 hours = 0;
        //             }
        //             printfSCR(0,15,"Select Hours: %d",hours);
        //         } else if (newButton == DOWN) {
        //             hours--;
        //             if (hours < 0) {
        //                 hours = 23;
        //             }
        //             printfSCR(0,15,"Select Hours: %d",hours);
        //         } else if (newButton == RIGHT) {
        //             set_timer_interrupt(ONESECOND);
        //             for(int i=0;i<SCREEN_SIZE;i++){
        //                 putch(i,' ',BG_COLOR);
        //             }
        //             state = 3;
        //         } else if (newButton == LEFT) {
        //             printfSCR(0,15,"Select Minutes: %d",minutes);
        //             state = 1;
        //         }
        //     } else if (state == 3) {
        //         if (newButton == LEFT) {
        //             state = 2;
        //         }
        //     }
        //     prevButton=newButton;
        // }
    }
}
