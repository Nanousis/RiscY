#define BUTTONS 0x89000000
#define MAX_SNAKE_LENGTH 100
#include "riscYstdio.h"


void printSnake(unsigned int snakeLength);
void printApple(int appleID);
int checkForCollision(unsigned short snakeLength);
void printScore(int score);

volatile char current_x=4;
volatile char current_y=4;
short positions[MAX_SNAKE_LENGTH];
unsigned int getClock1M(){
    unsigned int *clock = (unsigned int *)0x8A000000;
    return *clock;
}

int getUSBint() {
    volatile int *usb = (volatile int *)USB;
    return usb[0];
}

int main() {
    startAgain:
    volatile int i=0;
    for(i=0;i<WaitTime;i++);
    clearScreen();

    char tempChar=0;
    printString(22+64*2, "Amazing Snake Game V2",0);
    printString(22+64*9, "Press any key to play",0);
    current_x=1;
    current_y=0;
    char state=0;
    unsigned char currentColor=1;
    char usbKey=0;
    while(1){
        usbKey = (getUSBint()>>24)&0xFF;

        if(getButtonUp()||getButtonDown()||getButtonLeft()||getButtonRight()||usbKey){
            goto startGame;
        }
        tempChar++;
        if(state==0){
            current_x++;
            if(current_x==63){
                state=1;
            }
        }
        if(state==1){
            current_y++;
            if(current_y==18){
                state=2;
            }
        }
        if(state==2){
            current_x--;
            if(current_x==0){
                state=3;
            }
        }
        if(state==3){
            current_y--;
            if(current_y==0){
                state=0;
                currentColor++;
                current_x=1;
                if(currentColor>15){
                    currentColor=1;
                }
            }
        }
        putch(current_x+current_y*64, ' ',currentColor<<4);
        for(i=0;i<WaitTime*3;i++);
    }
    startGame:
    clearScreen();
    short direction=0;
    unsigned short location=5+64*5;
    int snakeLength=4;
    current_x=4;
    current_y=4;
    char btnDebounce=1;
    unsigned short appleLocation=356;
    unsigned int seed=123456789;
    unsigned int counter=0;
    for(i=0;i<MAX_SNAKE_LENGTH;i++){
        positions[i]=-6;
    }
    
    int startClock; 

    startClock = getClock1M();
    while(getClock1M()-startClock<1000000){
            printString(25+64*2, "Starting in 3",0);
    }
    startClock = getClock1M();
    while(getClock1M()-startClock<1000000){
            printString(25+64*2, "Starting in 2",0);
    }
    startClock = getClock1M();
    while(getClock1M()-startClock<1000000){
            printString(25+64*2, "Starting in 1",0);
    }

    clearScreen();

    while(1){
        counter++;
        // This should be changed to use actual time instad of for loop
        usbKey = (getUSBint()>>24)&0xFF;

        for(i=0;i<WaitTime*8;i++){
            if(getButtonDown()||usbKey==0x51){
                if(direction!=1){
                    direction=3;
                }
            }
            else if(getButtonUp()||usbKey==0x52){
                if(direction!=3){
                    direction=1;
                }
            }
            else if(getButtonLeft()||usbKey==0x50){
                if(direction!=0){
                    direction=2;
                }
            }
            else if(getButtonRight()||usbKey==0x4f){
                if(direction!=2){
                    direction=0;
                }
            }
        }

        if(direction == 0){
            if(current_x==62){
                current_x=0;
            }
            else{
                current_x++;
                current_x++;
            }
        }
        else if(direction == 1){
            if(current_y==0){
                current_y=18;
            }
            else{
                current_y-=1;
            }
        }
        else if(direction == 2){
            if(current_x==0){
                current_x=62;
            }
            else{
                current_x--;
                current_x--;
            }
        }
        else if(direction == 3){
            if(current_y==18){
                current_y=0;
            }
            else{
                current_y+=1;
            }
        }
        location = current_x+current_y*64;
        if(location==appleLocation){
            do{
                appleLocation=((counter^seed)&511)<<1;
                counter++;
            }while(appleLocation<=25&&appleLocation<1216);
                snakeLength++;
        }
        if(checkForCollision(snakeLength)){
            goto youLoose;
        }
        // if(current_x>63||current_x<0||current_y>18||current_y<0){
        //     goto youLoose;
        // }
        printScore(snakeLength);
        printSnake(snakeLength);
        putch(appleLocation+1,16,10);
        putch(appleLocation,17,10);
    }
    youLoose:
    putch(positions[snakeLength-1],'x',1);
    putch(positions[snakeLength-1]+1,'x',1);
    for(i=0;i<WaitTime*60;i++);
    clearScreen();
    printString(25, "You lost!",0);
    printString(25+64*5, "Play again?",0);
    printString(20+64*10, "Press Left/Right to Play",0);
    printString(22+64*11, "Press Up/Down to Exit",0);
    for(i=0;i<WaitTime*50;i++);
    printScore(snakeLength);
    while(1){
        usbKey = (getUSBint()>>24)&0xFF;
        if(getButtonUp()||getButtonDown()||usbKey==0x51||usbKey==0x52){
                return 0;
        }
        else{
            if(getButtonLeft()||getButtonRight()||usbKey==0x50||usbKey==0x4f){
            goto startAgain;
            }
        }
        for(i=0;i<WaitTime*5;i++);
    }
}
void printScore(int score){
    printfSCR(0,15,"Score: %d",score-4);
}
void printSnake(unsigned int snakeLength){
        int i=0;
        putch(positions[0],' ',0);
        putch(positions[0]+1,' ',0);
        for( i=0;i<MAX_SNAKE_LENGTH-1;i++){
            positions[i]=positions[i+1];
        }
        unsigned short location = current_x+current_y*64;
        positions[snakeLength-1]=location;
        // clearScreen();
        for(i=0;i<snakeLength;i++){
            putch(positions[i],' ',BG_WHITE);
            putch(positions[i]+1,' ',BG_WHITE);
        }
        
}
int checkForCollision(unsigned short snakeLength){
    int i=0;
    for(i=0;i<snakeLength;i++){
        if(positions[i]==current_x+current_y*64){
            return 1;
        }
    }
    return 0;
}
