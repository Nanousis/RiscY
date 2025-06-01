

#include <stdarg.h> 
#include "riscYstdio.h"


int main() {
    
    int ctr = 0;
    while(1){
        printfSCR(0,15,"Hello World\n");
        printfSCR(64,15,"Test ctr: 0x%x\n",ctr);
        ctr++;
        printfSCR(SCREEN_WIDTH*4,15,"Button Up\n",getButtonUp());
        printfSCR(SCREEN_WIDTH*5,15,"Button Down\n",getButtonDown());
        printfSCR(SCREEN_WIDTH*6,15,"Button Left\n",getButtonLeft());
        printfSCR(SCREEN_WIDTH*7,15,"Button Right\n",getButtonRight());

    }
}


