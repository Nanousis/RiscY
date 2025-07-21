// This file contains the implementation of the standard input/output functions
// for the RiscY cpu.

// included for the printf function
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include "riscYstdio.h"
/* register definitions */
#define REG_RBR		0x00 /* Receiver buffer reg. */
#define REG_THR		0x00 /* Transmitter holding reg. */
#define REG_IER		0x01 /* Interrupt enable reg. */
#define REG_IIR		0x02 /* Interrupt ID reg. */
#define REG_FCR		0x02 /* FIFO control reg. */
#define REG_LCR		0x03 /* Line control reg. */
#define REG_MCR		0x04 /* Modem control reg. */
#define REG_LSR		0x05 /* Line status reg. */
#define REG_MSR		0x06 /* Modem status reg. */
#define REG_SCR		0x07 /* Scratch reg. */
#define REG_BRDL	0x00 /* Divisor latch (LSB) */
#define REG_BRDH	0x01 /* Divisor latch (MSB) */

/* Line status */
#define LSR_DR			0x01 /* Data ready */
#define LSR_OE			0x02 /* Overrun error */
#define LSR_PE			0x04 /* Parity error */
#define LSR_FE			0x08 /* Framing error */
#define LSR_BI			0x10 /* Break interrupt */
#define LSR_THRE		0x20 /* Transmitter holding register empty */
#define LSR_TEMT		0x40 /* Transmitter empty */
#define LSR_EIRF		0x80 /* Error in RCVR FIFO */

#define UART_ADDRESS 0x10000000
// Screen memory location
#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216

#define SMALLSCREEN 0

// Button memory location
#define BUTTONS 0x89000000

#if SMALLSCREEN == 1
// Small screen attributes
#define SCREEN_WIDTH 16
#define SCREEN_HEIGHT 4
#else
// large screen attributes
#define SCREEN_WIDTH 64
#define SCREEN_HEIGHT 19
#endif
// General purpose wait time for frame rendering
#define WaitTime 10000

static uint8_t readb( uintptr_t addr )
{
	return *( (volatile uint8_t *) addr );
}

static void writeb( uint8_t b, uintptr_t addr )
{
	*( (uint8_t *) addr ) = b;
}

void vOutNS16550(unsigned char c )
{

    // uintptr_t *ptr = (uintptr_t *) UART_ADDRESS;
    // ptr[0] = c;
    // putch(129,'T', 15);
    // uintptr_t ptr = (uintptr_t *)UART_ADDRESS;
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
		/* busy wait */
	}
	writeb( c, UART_ADDRESS + REG_THR );
}


// *****************************************************************************
// Copies 'n' bytes from 'src' to 'dest'. Used by the compiler sometimes.
// void *memcpy(void *dest, const void *src, int n) {
//     // Cast src and dest to char pointers to iterate over each byte
//     char *d = (char *)dest;
//     const char *s = (const char *)src;

//     // Copy 'n' bytes from 'src' to 'dest'
//     for (int i = 0; i < n; i++) {
//         d[i] = s[i];
//     }

//     // Return the destination pointer
//     return dest;
// }
// void *memset(void *s, int c, size_t n) {
//     unsigned char *p = (unsigned char *)s;
//     while (n--) {
//         *p++ = (unsigned char)c;
//     }
//     return s;
// }
long get_time() {
    // Read the current time from the mtime register
    volatile unsigned long *mtime = (volatile unsigned long *)MTIME_ADDR;
    return *mtime;
}
// *****************************************************************************
// returns 1 if the button is pressed, 0 otherwise
char getButton(char btn){
    char *buttons = (char *)BUTTONS;
    return buttons[btn];
}
char getButtonDown(){
    char *buttons = (char *)BUTTONS;
    return buttons[0];
}
char getButtonUp(){
    char *buttons = (char *)BUTTONS;
    return buttons[1];
}
char getButtonLeft(){
    char *buttons = (char *)BUTTONS;
    return buttons[2];
}
char getButtonRight(){
    char *buttons = (char *)BUTTONS;
    return buttons[3];
}

// *****************************************************************************
// Puts a character at the specified location with the specified color.
// The colors are as the Text Mode format in https://en.wikipedia.org/wiki/VGA_text_mode
unsigned char putch(int location, char c, char color) {
    if(location<0){
        vOutNS16550(c);
    }
    if(location>SCREEN_SIZE){
        return 0;
    }
    #if SMALLSCREEN == 0
    // for the big screen
    volatile unsigned short *screen = (unsigned short *)SCREEN_LOACTION;
    unsigned short buffer = (color << 8) | c;
    screen[location] = buffer;
    #else
    // for the small screen you can uncomment this
    volatile unsigned char *screen = (unsigned char *)SCREEN_LOACTION;
    screen[location] = c;
    #endif
    return 1;
}

// *****************************************************************************
// Prints the string. If color is 0, it will print in rainbow colors
// If this returns 0, there was an error
unsigned int printString(int location, char *string, char color){
    int i = 0;
    char rainbow=0;
    if(color==0){
        rainbow=1;
        color=1;
    }
    while(string[i] != '\0'){
        if(!putch(location + i, string[i],color)){
            return 0;
        }
        i++;
        if(rainbow==1){
            color++;
            if(color>15){
                color=1;
            }
        }
    }
    return i;
}

// *****************************************************************************
// Prints the hex value at the specified location. If color is 0, it will print in rainbow colors
unsigned char printHex(int location, int value, char color) {
    char hexChars[] = "0123456789ABCDEF";
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
    buffer[8] = '\0'; // Null-terminate the string
    
    for(int i = 7; i >= 0; i--) {
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
    }
    return printString(location, buffer, color);
}

// *****************************************************************************
// Prints the decimal value at the specified location. If color is 0, it will print in rainbow colors
unsigned char printDec(int location, unsigned int num, char color) {
    char digits[6]; // Max 5 digits + null terminator
    int index = 0;
    unsigned int placeValues[] = {10000U, 1000U, 100U, 10U, 1U};
    int leadingZero = 1; // Flag to skip leading zeros

    // Limit the number to 99999 to prevent using large constants
    if (num > 99999U) {
        // Handle numbers greater than 99999 separately or limit the function to 5-digit numbers
        return printString(location, "Error",color);
        
    }

    for (int i = 0; i < 5; i++) {
        unsigned int placeValue = placeValues[i];
        int digit = 0;

        // Use repeated subtraction to find the digit
        while (num >= placeValue) {
            num -= placeValue;
            digit++;
        }

        if (digit != 0 || placeValue == 1 || !leadingZero) {
            digits[index++] = '0' + digit;
            leadingZero = 0;
        }
    }

    // If the number was 0, ensure we print '0'
    if (leadingZero) {
        digits[index++] = '0';
    }

    // Null-terminate the string
    digits[index] = '\0';

    // Use printString to display the number
    return printString(location, digits,color);
}

// *********************** printf **********************************************
// General purpose printf function. It supports %x for hex, %d for decimal, and %c for character
// It also supports \n for newline
// It returns the location of the next character to be printed

// General purpose variable to track where to print on the screen
short screenPos;
int printf(const char* str, ...) 
{ 
    char color=15;
    // initializing list pointer 
    va_list ptr; 
    va_start(ptr, str);  
    int i=0;
    for (i = 0; str[i] != '\0'; i++) {
        // Gandles newline 
        if(str[i]=='\n'){
            screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
            continue;    
        }
        // Handles variables
        // needs to be improved to handle attributes like %6d
        if(str[i]=='%'){
            if(str[i+1]=='x'){
                i++;
                int value=va_arg(ptr, int);
                screenPos+=printHex(screenPos,value,color);
            }
            else if(str[i+1]=='d'){
                i++;
                unsigned int value=va_arg(ptr, unsigned int);
                screenPos+=printDec(screenPos,value,color);
            }
            else if(str[i+1]=='c'){
                i++;
                char value=va_arg(ptr, int);
                putch(screenPos,value,color);
                screenPos++;
            }
            else if (str[i+1]=='s')
            {
                i++;
                char *value=va_arg(ptr, char*);
                screenPos+=printString(screenPos,value,color);
            }
            
            else{
                putch(screenPos,str[i],color);
                screenPos++;
            }
        }
        else{
            putch(screenPos,str[i],color);
            screenPos++;
        }
    } 
  
    // ending traversal 
    va_end(ptr); 
    return screenPos; 
}
// *****************************************************************************

// *****************************************************************************
// Same as printf but you can set the color and the location on the screen
// It returns the size of the string printed
int printfSCR(int location, char color,const char* str, ...) 
{ 
    
    // initializing list pointer 
    va_list ptr; 
    va_start(ptr, str);  
    // index of where to store the characters of str in 
    // token 
    int strPos=0;
    // parsing the formatted string 
    int i=0;
    for (i = 0; str[i] != '\0'; i++) { 
        if(str[i]=='\n'){
            strPos = (strPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
            continue;    
        }
        if(str[i]=='%'){
            if(str[i+1]=='x'){
                i++;
                int value=va_arg(ptr, int);
                strPos+=printHex(location+strPos,value,color);
            }
            else if(str[i+1]=='d'){
                i++;
                unsigned int value=va_arg(ptr, unsigned int);
                strPos+=printDec(location+strPos,value,color);
            }
            else if(str[i+1]=='c'){
                i++;
                char value=va_arg(ptr, int);
                putch(location+strPos,value,color);
                strPos++;
            }
            else if (str[i+1]=='s')
            {
                i++;
                char *value=va_arg(ptr, char*);
                strPos+=printString(location+strPos,value,color);
            }
            else{
                putch(location+strPos,str[i],color);
                strPos++;
            }
        }
        else{
            putch(location+strPos,str[i],color);
            strPos++;
        }
    } 
  
    // ending traversal 
    va_end(ptr); 
    return strPos; 
} 

// same as all the other printfs but sends the data to uart
int uart_printf(const char* str, ...) 
{ 
    // initializing list pointer 
    va_list ptr; 
    va_start(ptr, str);  
    // index of where to store the characters of str in 
    // token 
    int strPos=0;
    // parsing the formatted string 
    int i=0;
    for (i = 0; str[i] != '\0'; i++) { 
        if(str[i]=='%'){
            if(str[i+1]=='x'){
                i++;
                int value=va_arg(ptr, int);
                strPos+=printHex(-100,value,0);
            }
            else if(str[i+1]=='d'){
                i++;
                unsigned int value=va_arg(ptr, unsigned int);
                strPos+=printDec(-100,value,0);
            }
            else if(str[i+1]=='c'){
                i++;
                char value=va_arg(ptr, int);
                putch(-100,value,0);
                strPos++;
            }
            else if (str[i+1]=='s')
            {
                i++;
                char *value=va_arg(ptr, char*);
                strPos+=printString(-100,value,0);
            }
            else{
                putch(-100,str[i],0);
                strPos++;
            }
        }
        else{
            putch(-100,str[i],0);
            strPos++;
        }
    } 
  
    // ending traversal 
    va_end(ptr); 
    return strPos; 
} 

// *****************************************************************************
// Clears the screen and resets the screenPos
void clearScreen(){
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
        putch(i,' ',15);
    }
    screenPos=0;
}
void resetScreenVector(){
    screenPos=0;
}