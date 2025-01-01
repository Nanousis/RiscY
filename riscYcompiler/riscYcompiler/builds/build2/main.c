#include <stdarg.h> 
#include <stdint.h>
#include "riscYstdio.h"
#define USB 0x10000000
#define MTIME_ADDR     0x0200BFF8  // Address of mtime (platform-specific)
#define MTIMECMP_ADDR  0x02004000  // Address of mtimecmp (platform-specific)
#define ONESECOND 5000000 //100ms
#include <stdint.h>
#include <stdio.h>

void set_timer_interrupt(uint64_t interval) {
    volatile uint64_t *mtime = (uint64_t *)MTIME_ADDR;
    volatile uint64_t *mtimecmp = (uint64_t *)MTIMECMP_ADDR;

    uint64_t current_time = *mtime;
    *mtimecmp = current_time + interval; // Set next timer interrupt
}


int intCount=0;

void c_trap_handler(uintptr_t mcause, uintptr_t mepc, uintptr_t mtval) {
    // printfSCR(SCREEN_WIDTH*10,15,"Trap Handler entered!\n");
    // printfSCR(0,15,"Trap occurred!\n");
    printfSCR(SCREEN_WIDTH*1,15,"mcause: %x, mepc: %x, mtval: %x\n", mcause, mepc, mtval);

    if ((mcause & 0x80000000) != 0) {
        // Interrupt
        printfSCR(SCREEN_WIDTH*2,15,"Interrupt: %x\n",intCount);
        // if(mepc<0x00400000){
        //     while(1);
        // }
        intCount++;
        if(mcause == 0x80000007){
            // Timer interrupt
            printfSCR(SCREEN_WIDTH*3,15,"Timer interrupt! time:%x cmp:%x\n",*((uint32_t *)MTIME_ADDR),*((uint32_t *)MTIMECMP_ADDR));
            set_timer_interrupt(ONESECOND); // Set next timer interrupt
        }
    } else {
        // Exception
        switch (mcause) {
            case 2:  // Illegal instruction
                printf("Illegal instruction!\n");
                break;
            case 8:  // Environment call from U-mode
                printf("System call from U-mode!\n");
                break;
            case 11:  // Environment call from S-mode
                printf("System call from M-mode!\n");
                break;
            default:
                printf("Unhandled exception!\n");
                break;
        }
        mepc += 4; // Skip the faulting instruction
    }

    // Example: Skip the faulting instruction
    // printfSCR(SCREEN_WIDTH*10,15,"Trap Handler exited!\n");
}

unsigned int getUSBint() {
    volatile unsigned int *usb = (volatile unsigned int *)USB;
    return usb[0];
}

char USBParser(char usbout) {
    // (USBParser implementation remains the same)
    if (usbout >= 0x04 && usbout <= 0x1D) {
        // Lowercase letters 'a' to 'z'
        return usbout - 4 + 'a';
    } else if (usbout >= 0x1E && usbout <= 0x27) {
        // Digits '0' to '9'
        return usbout - 0x1E + '1';
    } else if (usbout == 0x28) {
        return '\n'; // Enter key
    } else if (usbout == 0x29) {
        return '\x1B'; // Escape key
    } else if (usbout == 0x2A) {
        return '\b'; // Backspace key
    } else if (usbout == 0x2B) {
        return '\t'; // Tab key
    } else if (usbout == 0x2C) {
        return ' '; // Space key
    } else if (usbout == 0x2D) {
        return '-'; // Minus key
    } else if (usbout == 0x2E) {
        return '='; // Equals key
    } else if (usbout == 0x2F) {
        return '['; // Left bracket key
    } else if (usbout == 0x30) {
        return ']'; // Right bracket key
    } else if (usbout == 0x31) {
        return '\\'; // Backslash key
    } else if (usbout == 0x33) {
        return ';'; // Semicolon key
    } else if (usbout == 0x34) {
        return '\''; // Apostrophe key
    } else if (usbout == 0x35) {
        return '`'; // Grave accent key
    } else if (usbout == 0x36) {
        return ','; // Comma key
    } else if (usbout == 0x37) {
        return '.'; // Period key
    } else if (usbout == 0x38) {
        return '/'; // Forward slash key
    } else if (usbout >= 0x3A && usbout <= 0x45) {
        // Function keys F1 to F12
        return 'F'; // Placeholder for function key handling
    } else if (usbout == 0x4F) {
        return 'R'; // Right arrow
    } else if (usbout == 0x50) {
        return 'L'; // Left arrow
    } else if (usbout == 0x51) {
        return 'D'; // Down arrow
    } else if (usbout == 0x52) {
        return 'U'; // Up arrow
    }

    // Return 0 if the input doesn't match any known key
    return 0;
}

int main() {

    set_timer_interrupt(ONESECOND); // Set timer interrupt to 1 ms 50,000,000 cycles
    uint64_t clock=0;
    uint64_t clockcmp=0;
    int cnt=0;
    int cnt2=0;
    char test='a';
    while(1){
        cnt ++;
        cnt2 +=2;
        clock = *((uint64_t *)MTIME_ADDR);
        clockcmp = *((uint64_t *)MTIMECMP_ADDR);
        // putch(SCREEN_WIDTH*17,test,15);
         printfSCR(SCREEN_WIDTH*17,15,"For some reason this causes problems\n");
        printHex(SCREEN_WIDTH*17,cnt,15);
        // printfSCR(SCREEN_WIDTH*17,15,"Hello-World!-%x,-%x",cnt,cnt2);
        // test++;
        // if(test > 'z'){
        //     test = 'a';
        // }
        // if(clock >= clockcmp+0xf0000000){
        //     break;
        // }
        // printfSCR(SCREEN_WIDTH*17,15,"Hello World! %x, %x",test, count);
    }
    printfSCR(SCREEN_WIDTH*18,BG_RED,"ERROR 1");
    printfSCR(SCREEN_WIDTH*17+20,BG_RED,"ERROR 2");
    printfSCR(SCREEN_WIDTH*16+20,BG_RED,"ERROR 3");
    printfSCR(SCREEN_WIDTH*15+20,BG_RED,"ERROR 4");
    printfSCR(SCREEN_WIDTH*14+20,BG_RED,"ERROR 5");
    while(1);
}
