

#include <stdarg.h> 
#include "riscYstdio.h"

int main() {
    printf(0,15,"Hello, World!");
    printf(64,15,"testing hex: 0x%x and number %d",0x1234, 6969);
    while(1);
}