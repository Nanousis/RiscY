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

int main() {
    startAgain:
    volatile int i=0;
    for(i=0;i<WaitTime;i++);
    clearScreen();

    char tempChar=0;
    printString(23+64*2, "Amazing Snake Game V2",0);
    printString(22+64*9, "Press any key to play",0);
    current_x=1;
    current_y=0;
    char state=0;
    unsigned char currentColor=1;
    while(1){
        if(getButtonUp()||getButtonDown()){
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
    char btnUpClicked=0;
    char btnUpClickedReg=0;
    char btnDownClickedReg=0;
    char btnDownClicked=0;
    char btnDebounce=1;
    unsigned short appleLocation=356;
    unsigned int seed=123456789;
    unsigned int counter=0;
    for(i=0;i<MAX_SNAKE_LENGTH;i++){
        positions[i]=-6;
    }
    while(1){
        counter++;
        btnUpClickedReg = 0;
        btnDownClickedReg = 0;
        for(i=0;i<WaitTime*30;i++){
            if(getButtonDown()){
                btnDownClickedReg=1;
            }
            if(getButtonUp()){
                btnUpClickedReg=1;
            }
        }
        if(btnDebounce==0){
            if(btnUpClickedReg){
                btnUpClicked=1;
                btnDebounce=1;
            }
            else if(btnUpClicked){
                btnDownClicked=1;
                btnDebounce=1;
            }
        }
        else{
            btnUpClicked=0;
            btnDownClicked=0;
            if(btnUpClickedReg==0&&btnDownClickedReg==0){
                btnDebounce=0;
            }

        }
        
        if(btnUpClicked){
            direction++;
            if(direction>3){
                direction=0;
            }
        }
        if(btnDownClicked){
            direction--;
            if(direction<0){
                direction=3;
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
        putch(appleLocation+1,16,10);
        putch(appleLocation,17,10);
        if(checkForCollision(snakeLength)){
            goto youLoose;
        }
        // if(current_x>63||current_x<0||current_y>18||current_y<0){
        //     goto youLoose;
        // }
        btnDownClicked=0;
        btnUpClicked=0;
        printScore(snakeLength);
        printSnake(snakeLength);
    }
    youLoose:
    putch(positions[snakeLength-1],'x',1);
    putch(positions[snakeLength-1]+1,'x',1);
    for(i=0;i<WaitTime*60;i++);
    clearScreen();
    printString(25, "You lost!",15);
    printString(25+64*5, "Play again?",15);
    printScore(snakeLength);
    while(1){
        if(getButtonUp()||getButtonDown()||getButtonLeft()||getButtonRight()){
            goto startAgain;
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
            putch(positions[i],' ',17);
            putch(positions[i]+1,' ',17);
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