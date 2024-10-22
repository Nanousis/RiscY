

#include <stdarg.h> 
#include "riscYstdio.h"

int main() {
    
    clearScreen();
    printf("Hello world\n");
    printf("\n\n\n\n");
    for(volatile int i=0;i<WaitTime*100;i++);
    printf("Press any button to exit\n");
    while(!getButtonDown()&&!getButtonUp());   
}