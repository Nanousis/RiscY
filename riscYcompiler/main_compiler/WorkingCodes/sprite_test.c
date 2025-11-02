

#include <stdarg.h> 
#include "riscYstdio.h"


void WriteSprite(int spriteNum,char *sprite){
    unsigned short *screenSprites = (unsigned short *) 0x88001000;
    for(int i=0; i<32; i++){
        screenSprites[i+spriteNum*32] = sprite[i];
    }
}

void SetAttributes(char spriteID,short x, short y, char enable, char spriteNum){
    volatile unsigned int *screenSprites = (volatile unsigned int *) 0x88002000;
    x&=0x1FF;
    y&=0x1FF;

    int firsthalf = ((spriteNum<<9)|y)&0xffff;
    int secondhalf = ((enable)?0x8000:0)|(x&0x1ff);
    int temp=(secondhalf<<16)|firsthalf;
    screenSprites[spriteID] = temp;
}

int main() {

    unsigned short *screenSprites = (unsigned short *) 0x88001000;

    char sprite[]={
    0x00,
    0x00,
    0xFC,
    0x0F,
    0xC0,
    0x0C,
    0xFC,
    0x0F,
    0x00,
    0x00,
    0x54,
    0x01,
    0x40,
    0x00,
    0x54,
    0x00,
    0x00,
    0x00,
    0xA8,
    0x02,
    0x80,
    0x00,
    0xA8,
    0x00,
    0x00,
    0x00,
    0xFC,
    0x0F,
    0xC0,
    0x0C,
    0xFC,
    0x0F};
    char sprite2[]={
    0xAF, 0x05,
    0xAF, 0x05,
    0xAF, 0xC5,
    0xAF, 0xC5,
    0xAF, 0x05,
    0xAF, 0x05,
    0xAF, 0x05,
    0xAC, 0x05,
    0xAC, 0x05,
    0xAF, 0x05,
    0xAF, 0x05,
    0xAF, 0x05,
    0xAF, 0xC5,
    0xAF, 0xC5,
    0xAF, 0x05,
    0xAF, 0x05
};
    

    char birtd1[]={
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x50,
    0x00, 0xA5,
    0x50, 0xA9,
    0xA4, 0x96,
    0xA9, 0x6A,
    0xA9, 0xAA,
    0xA9, 0xAA,
    0xA4, 0xAA,
    0xA4, 0x9A,
    0x50, 0xA5,
    0x40, 0xAA,
    0x00, 0x55,
    0x00, 0x00
    };

    char birtd2[]={
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x15, 0x00,
    0x79, 0x00,
    0xF9, 0x01,
    0x79, 0x07,
    0x66, 0x07,
    0x9A, 0x1B,
    0x5A, 0x15,
    0x56, 0x6A,
    0x5A, 0x59,
    0x6A, 0x15,
    0xAA, 0x06,
    0x55, 0x01,
    0x00, 0x00
};

    char brick[]={
    0xAA, 0xA2,
    0x55, 0x51,
    0x55, 0x51,
    0x00, 0x00,
    0x2A, 0xAA,
    0x15, 0x55,
    0x15, 0x55,
    0x00, 0x00,
    0xAA, 0x8A,
    0x55, 0x45,
    0x55, 0x45,
    0x00, 0x00,
    0xA2, 0xAA,
    0x51, 0x55,
    0x51, 0x55,
    0x00, 0x00
    };

    // for(int i=0; i<16; i++){
    //         screenSprites[i] = 0xAA;
    // }

    for(int i=0; i<128; i++){
        for(int j=0; j<16; j++){
            screenSprites[i*16+j] = 0x00;
        }
    }
    
    WriteSprite(0,sprite2);
    WriteSprite(1,sprite);
    WriteSprite(2,birtd1);
    WriteSprite(3,birtd2);
    WriteSprite(4,brick);
    WriteSprite(5,sprite2);
    WriteSprite(6,brick);
    WriteSprite(7,sprite2);
    WriteSprite(8,brick);
    WriteSprite(9,sprite2);
    for(int i=0; i<10;i++){
        WriteSprite(10+i,brick);
    }

    for(int i=0; i<20;i++){
        SetAttributes(i,0,0,0,0);
    }


// 00 00 00 11 . 00 11 00 00

// 00 7C 14 7C 00 78 10 70
// 00 78 10 70 00 7C 14 7C
    printf("sprite Test\n");

    short x=0;
    short y=120;
    char spriteNum=0;
    char enable=1;

    // SetAttributes(0,x,y,enable,spriteNum);
    // SetAttributes(3,x+8,y,enable,spriteNum+1);

    // SetAttributes(8,100,40,enable,0);
    for(volatile int i=0; i<20;i++){
        SetAttributes(i,100+(i*8),140,enable,i);
    }

    // SetAttributes(2,x+16,y,enable,spriteNum+2);
    // SetAttributes(3,x+24,y,enable,spriteNum+3);

    for(int i=10; i<64; i++){
        putch(i+64,118+i,0);
    }
    for(int i=0; i<256; i++){
        putch(i+128,128+4,0);
    }

    int counter=0;
    while(1){
        // counter++;
        // if(counter>100){
        //     counter=0;
        //     spriteNum++;
        //     if(spriteNum>4){
        //         spriteNum=0;
        //     }
        //     // SetAttributes(0,x,y,0,spriteNum);
        //     SetAttributes(3,x+8,y,enable,spriteNum+1);
        //     // SetAttributes(2,x+16,y+16,enable,spriteNum+2);
        //     // SetAttributes(3,x+32,y+16,enable,spriteNum+3);
        // }
        printfSCR(0,0,"x:%d y:%d        ",x,y);
        for(volatile int i=0; i<WaitTime*20;i++);
        if(getButtonDown()){
            y-=1;
            SetAttributes(0,x,y,enable,2);
            SetAttributes(1,x+8,y,enable,3);

        }
        if(getButtonUp()){
            y+=1;
            SetAttributes(0,x,y,enable,2);
            SetAttributes(1,x+8,y,enable,3);
        }
        if(getButtonLeft()){
            x-=1;
            SetAttributes(0,x,y,enable,2);
            SetAttributes(1,x+8,y,enable,3);
        }
        if(getButtonRight()){
            x+=1;
            // SetAttributes(2,x,y,0,0);
            SetAttributes(0,x,y,enable,2);
            SetAttributes(1,x+8,y,enable,3);
        }
    }
}