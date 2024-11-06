

#include <stdarg.h> 
#include "riscYstdio.h"
#define USB 0x10000000


char getUSBNewFlag() {
    volatile char *usb = (volatile char *) USB;
    return usb[1];
}

unsigned int getUSBint() {
    volatile unsigned int *usb = (volatile unsigned int *) USB;
    return usb[0];
}

int main() {
    unsigned int usbout=0;
    char flag=0;
    while(1){
        for(volatile int i=0;i<WaitTime*10;i++);
        resetScreenVector();
        usbout = getUSBint();
        flag = getUSBNewFlag();
        printf("USB out: %x, flag: %x", usbout, flag);
    }
}