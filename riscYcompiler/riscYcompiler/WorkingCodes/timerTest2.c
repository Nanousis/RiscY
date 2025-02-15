#include <stdarg.h> 
#include <stdint.h>
#include "riscYstdio.h"
#define USB 0x10000000
#define MTIME_ADDR     0x0200BFF8  // Address of mtime (platform-specific)
#define MTIMECMP_ADDR  0x02004000  // Address of mtimecmp (platform-specific)
#define ONESECOND 27000000 //27.000.000 cycles for 27MHz clock
#include <stdint.h>


#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4
#define MAXSELECT 4

void set_timer_interrupt(uint64_t interval) {
    volatile uint64_t *mtime = (uint64_t *)MTIME_ADDR;
    volatile uint64_t *mtimecmp = (uint64_t *)MTIMECMP_ADDR;
    asm volatile("li t1, 0x80");
    asm volatile("csrc mie, t1");
    uint64_t current_time = *mtime;
    *mtimecmp = current_time + interval; // Set next timer interrupt
    asm volatile("li t1, 0x80");
    asm volatile("csrs mie, t1");
}

void disable_timer_interrupt() {
            volatile uint32_t *mtimecmp = (uint32_t *)MTIMECMP_ADDR;
            mtimecmp[1] = 0xffffffff; // Set next timer interrupt
            mtimecmp[0] = 0xffffffff; // Set next timer interrupt
}


int intCount=0;

void c_trap_handler(uintptr_t mcause, uintptr_t mepc, uintptr_t mtval) {
    // Print trap information
    printfSCR(SCREEN_WIDTH * 7, 15, "mcause: %x, mepc: %x, mtval: %x\n", mcause, mepc, mtval);

    if ((mcause & 0x80000000) != 0) {
        // Interrupt
        printfSCR(SCREEN_WIDTH * 8, 15, "Interrupt: %x\n", intCount);
        intCount++;

        if (mcause == 0x80000007) {
            // Timer interrupt
            printfSCR(SCREEN_WIDTH * 9, 15, "Timer interrupt! time:%x cmp:%x\n",
                      *((uint32_t *)MTIME_ADDR), *((uint32_t *)MTIMECMP_ADDR));
            disable_timer_interrupt();
        }
    } else {
        // Exception
        switch (mcause) {
            case 2:  // Illegal instruction
            printfSCR(SCREEN_WIDTH * 10, 15, "Illegal instruction!\n");
            break;
            case 3:  // Breakpoint (ebreak)
            printfSCR(SCREEN_WIDTH * 10, 15, "Breakpoint (ebreak)!\n");
            while(getButtonDown()==0);
            break;
            case 8:  // Environment call from U-mode
            printfSCR(SCREEN_WIDTH * 10, 15, "System call from U-mode!\n");
            break;
            case 11:  // Environment call from S-mode
            printfSCR(SCREEN_WIDTH * 10, 15, "System call from M-mode!\n");
            while(getButtonDown()==0);

            break;
            default:
            printfSCR(SCREEN_WIDTH * 10, 15, "Unhandled exception!\n");
            break;
        }

        // Skip the faulting instruction
        if ((*(uint16_t *)mepc & 0x3) == 0x3) {
            // Regular 32-bit instruction
            mepc += 4;
        } else {
            // Compressed 16-bit instruction
            mepc += 2;
        }
        // while(1);
        asm volatile("csrw mepc, %0" : : "r"(mepc));
        printfSCR(SCREEN_WIDTH * 11, 15, "new PC: %x!\n",mepc);

    }
    // Write back the updated mepc (in some setups, this needs to be done explicitly)
}

uint64_t second_to_cycles(int seconds){
    uint32_t cycles=0;
    for(int i=0;i<seconds;i++){
        cycles+=ONESECOND;
    }
    uint64_t cycles64=cycles;
    return cycles64;
}


int main() {

    // set_timer_interrupt(ONESECOND); // Set timer interrupt to 1 ms 50,000,000 cycles
    volatile uint32_t clock=0;
    volatile uint32_t clockcmp=0;
    int cnt=0;
    int cnt2=0;
    char test='a';
    int secondsInterrupt=1;
    int selection=0;
    
    char prevButton=0;
    char newButton=0;
    char count=0;


    while(1){
        // cnt ++;
        // cnt2 +=2;
        printfSCR(SCREEN_WIDTH*0,(selection==0)?BG_MAGENTA:15,"- Select Time: %ds       ",secondsInterrupt);
        printfSCR(SCREEN_WIDTH*1,(selection==1)?BG_MAGENTA:15,"- Set Interrupt");
        printfSCR(SCREEN_WIDTH*2,(selection==2)?BG_MAGENTA:15,"- Cancel Interrupt");
        printfSCR(SCREEN_WIDTH*3,(selection==3)?BG_MAGENTA:15,"- Ecall");
        printfSCR(SCREEN_WIDTH*4,(selection==4)?BG_MAGENTA:15,"- Ebreak");
        if(getButtonUp()){
            newButton=UP;
        }
        else if(getButtonDown()){
            newButton=DOWN;
        }
        else if(getButtonLeft()){
            newButton=LEFT;
        }
        else if(getButtonRight()){
            newButton=RIGHT;
        }
        else{
            newButton=0;
        }

        if(newButton!=prevButton){
            if(newButton==UP){
                selection--;
                if(selection<0){
                    selection=MAXSELECT;
                }
            }
            else if(newButton==DOWN){
                selection++;
                if(selection>MAXSELECT){
                    selection=0;
                }
            }
            else if(newButton==LEFT){
                switch(selection){
                    case 0:
                        secondsInterrupt--;
                        break;
                    case 1:
                        set_timer_interrupt(second_to_cycles(secondsInterrupt)); // Set timer interrupt to 1 ms 50,000,000 cycles
                        printfSCR(SCREEN_WIDTH*4,15,"Timer Set to %d seconds",secondsInterrupt);
                        break;
                    case 2:
                        disable_timer_interrupt();
                        clearScreen();
                        printfSCR(SCREEN_WIDTH*4,15,"Timer cleared",secondsInterrupt);
                        break;
                }
            }
            else if(newButton==RIGHT){
                switch(selection){
                    case 0:
                        secondsInterrupt++;
                        break;
                    case 1:
                        set_timer_interrupt(second_to_cycles(secondsInterrupt)); // Set timer interrupt to 1 ms 50,000,000 cycles
                        printfSCR(SCREEN_WIDTH*4,15,"Timer Set to %d seconds",secondsInterrupt);
                        break;
                    case 2:
                        disable_timer_interrupt();
                        clearScreen();
                        printfSCR(SCREEN_WIDTH*4,15,"Timer cleared",secondsInterrupt);
                        break;
                    case 3:
                        asm volatile("ecall");
                        break;
                    case 4:
                        asm volatile("ebreak");
                        break;
                }
            }
            prevButton=newButton;
        }
        // putch(SCREEN_WIDTH*17,test,15);
        // printfSCR(SCREEN_WIDTH*16,15,"For some reason this causes problems %d\n",cnt2>>15);
        // printHex(SCREEN_WIDTH*17,cnt,15);
        printfSCR(SCREEN_WIDTH*14,15,"-%x_%x,-%x_%x",*((volatile uint32_t *)MTIME_ADDR+1),*((volatile uint32_t *)MTIME_ADDR),*((volatile uint32_t *)MTIMECMP_ADDR+1),*((volatile uint32_t *)MTIMECMP_ADDR));
        // printfSCR(SCREEN_WIDTH*14,15,"Hello-World!-%x,-%x",cnt,cnt2);
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
