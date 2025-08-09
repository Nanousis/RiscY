

#include <stdarg.h> 
#include "riscYstdio.h"

int main() {
    
    int i =0;
    while(1){
        printfSCR(64*4,15,"Press. %d", i++);
        if(i % 10 == 0 ){
            printfSCR(64*5,15,"Still running... %d", i/10);
        }
    }
}