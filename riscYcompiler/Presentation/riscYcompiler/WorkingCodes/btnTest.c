

#include <stdarg.h> 
#include "riscYstdio.h"

int main() {
    
    char btnUpClicked=0;
    char btnDownClicked=0;
    char btnLeftClicked=0;
    char btnRightClicked=0;

    while(1){
        clearScreen();
        btnDownClicked=getButtonDown();
        btnUpClicked=getButtonUp();
        btnLeftClicked=getButtonLeft();
        btnRightClicked=getButtonRight();
        printf("Up: %d\n",btnUpClicked);
        printf("Down: %d\n",btnDownClicked);
        printf("Left: %d\n",btnLeftClicked);
        printf("Right: %d\n",btnRightClicked);

        for(volatile int i=0;i<WaitTime*10;i++);
    }
    
}