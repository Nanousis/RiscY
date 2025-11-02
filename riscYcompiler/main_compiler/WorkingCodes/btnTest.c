

#include <stdarg.h> 
#include "riscYstdio.h"

int main() {
    
    char btnUpClicked=0;
    char btnDownClicked=0;
    char btnLeftClicked=0;
    char btnRightClicked=0;

    while(1){
        clearScreen();
        printf("UpR: %d\n",getButton(BUTTON_RIGHT_UP));
        printf("DownR: %d\n",getButton(BUTTON_RIGHT_DOWN));
        printf("LeftR: %d\n",getButton(BUTTON_RIGHT_LEFT));
        printf("RightR: %d\n",getButton(BUTTON_RIGHT_RIGHT));
        printf("UpL: %d\n",getButton(BUTTON_LEFT_UP));
        printf("DownL: %d\n",getButton(BUTTON_LEFT_DOWN));
        printf("LeftL: %d\n",getButton(BUTTON_LEFT_LEFT));
        printf("RightL: %d\n",getButton(BUTTON_LEFT_RIGHT));
        


        for(volatile int i=0;i<WaitTime*10;i++);
    }
    
}