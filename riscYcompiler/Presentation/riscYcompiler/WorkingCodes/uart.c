

#include <stdarg.h> 
#include "riscYstdio.h"
#define UART 0x10000000


char getUartNewFlag() {
    char *uart = (char *) UART;
    return uart[1];
}

char getUartChar() {
    char *uart = (char *) UART;
    return *uart;
}

int main() {

    int location=SCREEN_WIDTH*2;
    printf("Uart test:\n");
    printf("_");
    while(1){
        for(volatile int i=0;i<5;i++);
        if(getUartNewFlag()){
            char c=getUartChar()&127;
            printfSCR(SCREEN_WIDTH,15,"Ascii code: %d",c);
            if(c=='\b'||c>=125){
                putch(location+1,' ',0);
                putch(location,'_',15);
                location -= putch(location-1,' ',0);
            }
            else if(c=='\n'||c=='\r'){
                location  = (location & ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
            }
            else{
                location += putch(location,c,15);
                putch(location,'_',15);
            }
            
            // printf("New flag\n");
        }
    }
}