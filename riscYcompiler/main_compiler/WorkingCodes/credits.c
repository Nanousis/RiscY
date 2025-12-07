

#include <stdarg.h> 
#include "riscYstdio.h"

int main() {
    
//     ____  _         __  __
//    / __ \(_)________\ \/ /
//   / /_/ / / ___/ ___/\  / 
//  / _, _/ (__  ) /__  / /  
// /_/ |_/_/____/\___/ /_/   
    clearScreen();
    printfSCR(0,5,"     ____  _         __  __");
    printfSCR(64*1,5,"    / __ \\(_)________\\ \\/ /");
    printfSCR(64*2,5,"   / /_/ / / ___/ ___/\\  /");
    printfSCR(64*3,5,"  / _, _/ (__  ) /__  / /  ");
    printfSCR(64*4,5," /_/ |_/_/____/\\___/ /_/   ");
    printfSCR(64*7,15,"  Credits:\n");
    printfSCR(64*8,15,"  - RISC-V\n\n");

    for(int i=0;i<32;i++){
        printfSCR(64*16+i,BG_MAGENTA,"#");
        printfSCR(64*17-i-1,BG_MAGENTA,"#");
        for(volatile int j=0;j<WaitTime*20;j++);
    }
    printfSCR(64*17,15,"Press any button to exit");
    while(!getButtonDown()&&!getButtonUp());   
}