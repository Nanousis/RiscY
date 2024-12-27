

#include <stdarg.h> 
#include "riscYstdio.h"

// this function reads the program from the flash and loads it into the program memory
int main() {
    printf("Hello World\n");
    printf("Second line says Hi!\n");
    printf("Number is %d and %x\n", 69, 0xdeadbeef);
    printfSCR(64*18,15,"Last line WHOOP WHOOP\n");
    while(1);
}


