#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216
#define BUTTONS 0x89000000
#define WaitTime 10000
#define SCREEN_WIDTH 64
#define SCREEN_HEIGHT 19

#include "riscYstdio.h"

typedef struct Selection
{
    char *name;
}Selection;


int main() {
    clearScreen();
    unsigned char selectNum=0;
    Selection selections[5];
    selections[0].name="Test1";
    selections[1].name="Test2";
    selections[2].name="Test3";
    selections[3].name="Test4";
    selections[4].name="Test5";
    int i=0;
    char buttonDown=0;
    char buttonUp=0;
    while(1){

        if(buttonDown==1){
            buttonDown++;
            selectNum++;
            if(selectNum>4){
                selectNum=0;
            }
        }
        if(buttonUp==1){
            buttonUp++;
            if(selectNum==0){
                selectNum=5;
            }
            selectNum--;
        }
        for(i=0;i<5;i++){
            if(i==selectNum){
                printString(1+i*64,selections[i].name,(0xf<<4));
            }
            else{
                printString(1+i*64,selections[i].name,15);
            }
        }
        for(i=0;i<WaitTime;i++){
            if(buttonDown!=2&&buttonUp!=2){
                if(getButtonDown()){
                    buttonDown=1;
                }
                else{
                    buttonDown=0;
                }
                if(getButtonUp()){
                    buttonUp=1;
                }
                else{
                    buttonUp=0;
                }
            }
            else{
                if(!getButtonDown()){
                    buttonDown=0;
                }
                if(!getButtonUp()){
                    buttonUp=0;
                }
            }
        }
    }
}