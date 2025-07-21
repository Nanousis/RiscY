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
#define MAXSELECT 2
    volatile char one [6*6] ={
        0,0,0,1,0,0,
        0,0,1,1,0,0,
        0,0,0,1,0,0,
        0,0,0,1,0,0,
        0,0,0,1,0,0,
        0,0,1,1,1,0
    };
    volatile char two [6*6]={
        0,0,0,1,1,1,
        0,0,1,0,0,1,
        0,0,0,0,1,0,
        0,0,0,1,0,0,
        0,1,1,0,0,0,
        1,1,1,1,1,1
    };
    volatile char four [6*6]={
        0,0,0,0,0,1,
        0,0,0,0,1,1,
        0,0,0,1,0,1,
        0,0,1,1,1,1,
        0,0,0,0,0,1,
        0,0,0,0,0,1
    };
    volatile char three [6*6]={
        0,0,0,0,0,0,
        0,0,0,1,1,1,
        0,0,0,0,0,1,
        0,0,0,1,1,0,
        0,0,0,0,0,1,
        0,0,1,1,1,0
    };
    // volatile char four [6*6]={
    //     0,0,0,0,1,1,
    //     0,0,0,1,0,1,
    //     0,0,1,0,0,1,
    //     0,1,1,1,1,1,
    //     0,0,0,0,0,1,
    //     0,0,0,0,1,1
    // };

    volatile char five [6*6]={
        1,1,1,1,1,1,
        1,0,0,0,0,0,
        1,1,1,1,1,0,
        0,0,0,0,0,1,
        0,0,0,0,0,1,
        1,1,1,1,1,0
    };
    volatile char six [6*6]={
        0,0,1,1,1,0,
        0,1,0,0,0,0,
        1,0,0,0,0,0,
        1,1,1,1,1,0,
        1,0,0,0,0,1,
        0,1,1,1,1,0
    };
    volatile char seven [6*6]={
        1,1,1,1,1,1,
        0,0,0,0,0,1,
        0,0,0,0,1,0,
        0,0,0,1,0,0,
        0,0,1,0,0,0,
        0,1,0,0,0,0
    };
    volatile char eight [6*6]={
        0,0,0,0,0,0,
        0,0,1,1,1,0,
        0,1,0,0,0,1,
        0,0,1,1,1,0,
        0,1,0,0,0,1,
        0,0,1,1,1,0
    };
    volatile char nine [6*6]={
        0,0,1,1,1,0,
        0,1,0,0,0,1,
        0,0,1,1,1,1,
        0,0,0,0,0,1,
        0,0,0,0,1,0,
        0,0,0,1,0,0
    };
    volatile char zero [6*6]={
        0,0,1,1,1,0,
        0,1,0,0,0,1,
        0,1,0,0,0,1,
        0,1,0,0,0,1,
        0,1,0,0,0,1,
        0,0,1,1,1,0
    };


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

int mod(int a, int b) {
    if (b <= 0) {
        // Handle invalid divisor
        return -1; // You can choose a different error handling mechanism
    }

    if (a < 0) {
        // Handle negative `a` by adding `b` repeatedly until non-negative
        while (a < 0) {
            a += b;
        }
    }

    // Subtract `b` from `a` until `a` is less than `b`
    while (a >= b) {
        a -= b;
    }

    return a;
}

int division(int a, int b) {
    if (b == 0) {
        // Division by zero is undefined
        return -1; // Error handling: you can choose a different mechanism
    }

    int quotient = 0;
    int negative = 0;

    // Handle signs for negative numbers
    if (a < 0) {
        a = -a;
        negative = !negative; // Flip the sign flag
    }
    if (b < 0) {
        b = -b;
        negative = !negative; // Flip the sign flag
    }

    // Subtract `b` from `a` until `a` is less than `b`
    while (a >= b) {
        a -= b;
        quotient++;
    }

    // Adjust for sign
    return negative ? -quotient : quotient;
}

volatile char intCount=0;
volatile char seconds;
volatile char hours;
volatile char minutes;

void renderNum(char number[6*6], int offset){

    for(int i=0;i<6;i++){
        for(int j=0;j<6;j++){
            // printf("i%d,j%d-",i,j);
            if(number[i*6+j]){
                putch(SCREEN_WIDTH*i+j+offset,' ',BG_WHITE);
            }
        }
    }
    // while(1);
}


void printTime(char hours, char minutes, char seconds){

    char *numbers[10]={&zero,&one,&two,&three,&four,&five,&six,&seven,&eight,&nine};
    clearScreen();
    // printfSCR(0,15,"Time: %d:%d:%d",hours,minutes,seconds);

    int line = SCREEN_WIDTH*4; 

    { // render hours
        int offset=0+line;
        int tens=division(hours,10);
        int ones=mod(hours,10);
        renderNum(numbers[tens],offset);
        offset+=7;
        renderNum(numbers[ones],offset);
        offset+=4;
        // putch(offset,' ',BG_WHITE);
    }
    { // render minutes
        int offset=18+line;
        int tens=division(minutes,10);
        int ones=mod(minutes,10);
        renderNum(numbers[tens],offset);
        offset+=7;
        renderNum(numbers[ones],offset);
        offset+=4;
        // putch(offset,' ',BG_WHITE);
    }
    { // render seconds
        int offset=36+line;
        int tens=division(seconds,10);
        int ones=mod(seconds,10);
        renderNum(numbers[tens],offset);
        offset+=7;
        renderNum(numbers[ones],offset);
        offset+=4;
        // putch(offset,' ',BG_WHITE);
    }
}
void c_trap_handler(uintptr_t mcause, uintptr_t mepc, uintptr_t mtval) {
    // printfSCR(SCREEN_WIDTH*10,15,"Trap Handler entered!\n");
    // printfSCR(0,15,"Trap occurred!\n");
    // printfSCR(SCREEN_WIDTH*4,15,"mcause: %x, mepc: %x, mtval: %x\n", mcause, mepc, mtval);

    if ((mcause & 0x80000000) != 0) {
        // Interrupt
        // printfSCR(SCREEN_WIDTH*5,15,"Interrupt: %x\n",intCount);
        // if(mepc<0x00400000){
        //     while(1);
        // }
        intCount++;
        if(mcause == 0x80000007){
            // Timer interrupt
            // printfSCR(SCREEN_WIDTH*6,15,"Timer interrupt! time:%x cmp:%x\n",*((uint32_t *)MTIME_ADDR),*((uint32_t *)MTIMECMP_ADDR));
            set_timer_interrupt(ONESECOND); 
            seconds++;
            if(seconds>59){
                seconds=0;
                minutes++;
                if(minutes>59){
                    minutes=0;
                    hours++;
                    if(hours>23){
                        hours=0;
                    }
                }
            }
            printTime(hours,minutes,seconds);
            // disable_timer_interrupt();

            // set_timer_interrupt(ONESECOND); // Set next timer interrupt
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
// uint64_t second_to_cycles(int seconds){
//     uint32_t cycles=0;
//     for(int i=0;i<seconds;i++){
//         cycles+=ONESECOND;
//     }
//     uint64_t cycles64=cycles;
//     return cycles64;
// }





int main() {


    // int numb=0;
    // // set_timer_interrupt(ONESECOND); // Set timer interrupt to 1 ms 50,000,000 cycles
    // volatile uint32_t clock=0;
    // volatile uint32_t clockcmp=0;
    // int cnt=0;
    // int cnt2=0;
    // char test='a';
    // int secondsInterrupt=1;
    // int selection=0;
    int state=0;
    
    char prevButton=0;
    char newButton=0;
    // char count=0;

    seconds = 0;
    minutes = 0;
    hours = 0;
    // set_timer_interrupt(ONESECOND); 
    printfSCR(0,15,"Select Seconds: %d",seconds);
    while(1){
        // for(volatile int i=0;i<1000000;i++);

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
            
            // clearScreen();

            if (state == 0) {
                state = 0 ;
                if (newButton == UP) {
                    seconds++;
                    if (seconds > 59) {
                        seconds = 0;
                    }
                } else if (newButton == DOWN) {
                    seconds--;
                    if (seconds < 0) {
                        seconds = 59;
                    }
                    printfSCR(0,15,"Select Seconds: %d",seconds);
                }else if (newButton == LEFT) {
                    state = 0;
                }
                
                 else if (newButton == RIGHT) {
                    state = 1;
                }
                    printfSCR(0,15,"Select Seconds: %d",seconds);
            } else if (state == 1) {
                if (newButton == UP) {
                    minutes++;
                    if (minutes > 59) {
                        minutes = 0;
                    }
                    printfSCR(0,15,"Select Minutes: %d",minutes);
                } else if (newButton == DOWN) {
                    minutes--;
                    if (minutes < 0) {
                        minutes = 59;
                    }
                    printfSCR(0,15,"Select Minutes: %d",minutes);
                } else if (newButton == RIGHT) {
                    printfSCR(0,15,"Select Hours: %d",hours);
                    state = 2;
                } else if (newButton == LEFT) {
                    printfSCR(0,15,"Select Seconds: %d",seconds);
                    state = 0;
                }
            } else if (state == 2) {
                if (newButton == UP) {
                    hours++;
                    if (hours > 23) {
                        hours = 0;
                    }
                    printfSCR(0,15,"Select Hours: %d",hours);
                } else if (newButton == DOWN) {
                    hours--;
                    if (hours < 0) {
                        hours = 23;
                    }
                    printfSCR(0,15,"Select Hours: %d",hours);
                } else if (newButton == RIGHT) {
                    set_timer_interrupt(ONESECOND);
                    state = 3;
                } else if (newButton == LEFT) {
                    printfSCR(0,15,"Select Minutes: %d",minutes);
                    state = 1;
                }
            } else if (state == 3) {
                if (newButton == LEFT) {
                    state = 2;
                }
            }
            prevButton=newButton;
        }
    }
}
