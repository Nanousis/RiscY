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
#define SCREEN_LOCATION 0x88000000
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


#define UART_BASE       0x10000000
#define UART_REG_RBR    (UART_BASE + 0x00)
#define UART_REG_LSR    (UART_BASE + 0x05)

#define LSR_DR          0x01

uint8_t uart_read_byte() {
    // Wait until data is ready
    while ((*(volatile uint8_t *)UART_REG_LSR & LSR_DR) == 0);
    // Read received byte
    return *(volatile uint8_t *)UART_REG_RBR;
}

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

long get_time() {
    // Read the current time from the mtime register
    volatile unsigned long *mtime = (volatile unsigned long *)MTIME_ADDR;
    return *mtime;
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
        return 0;
    }
    if(location>SCREEN_SIZE){
        return 0;
    }
    // for the big screen
    volatile unsigned short *screen = (unsigned short *)SCREEN_LOCATION;
    unsigned short buffer = (color << 8) | c;
    screen[location] = buffer;
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
        if(string[i]=='\n'){
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
            i++;
            continue;
        }
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
unsigned char printDec(int location, int num, char color) {
    char digits[12]; // Enough for -2147483648 + null terminator
    int index = 0;
    int isNegative = 0;

    // Handle zero explicitly
    if (num == 0) {
        digits[index++] = '0';
        digits[index] = '\0';
        return printString(location, digits, color);
    }

    // Handle negative numbers
    if (num < 0) {
        isNegative = 1;
        // Use unsigned to avoid overflow on INT_MIN
        unsigned int absNum = (unsigned int)(-((long)num));
        num = absNum;
    } else {
        isNegative = 0;
    }

    // Convert number to string in reverse
    unsigned int absNum = (unsigned int)num;
    while (absNum > 0) {
        digits[index++] = '0' + (absNum % 10);
        absNum /= 10;
    }

    if (isNegative) {
        digits[index++] = '-';
    }

    digits[index] = '\0';

    // Reverse the string
    for (int i = 0; i < index / 2; i++) {
        char tmp = digits[i];
        digits[i] = digits[index - 1 - i];
        digits[index - 1 - i] = tmp;
    }

    return printString(location, digits, color);
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
                if(value=='\n'){
                    screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
                    continue;    
                }
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


// Flash STUFF

#define FLASH_READY 0x8B000000
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C
unsigned int readFlash(unsigned int adress){
    volatile char *flashReady = (char *)FLASH_READY;
    volatile char *flashRen = (char *)FLASH_REN;
    volatile unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
    volatile unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
    volatile unsigned int data = 0;
    *flashAdress = adress;
    *flashRen = 1;
    // FML it get stuck if you dont do the nop here
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");
    while(1){
        if(*flashReady != 0) {
            break; // Wait until flash is ready
        }
    }
    data = *flashData;
    return data;
}

unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
    uint32_t tempAddress = 0;
    uint32_t readData;

    // Check magic number
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
    for (int i = 0; i < 2; i++) {
        readData = readFlash(tempAddress);
        for (int j = 0; j < 4; j++) {
            char c = (readData >> (8 * j)) & 0xFF;
            uart_printf("Magic[%d] = %c\r\n", i * 4 + j, c);
            if (c != expectedMagic[i * 4 + j]) {
                uart_printf("Invalid magic number at position %d\r\n", i * 4 + j);
                return 0xFFFFFFFF;
            }
        }
        tempAddress += 4;
    }

    // Read program count
    unsigned char programCount = readFlash(tempAddress)& 0xFF;
    uart_printf("Program count: %d\r\n", programCount);
    // signed char programCount = 2;

    tempAddress += 1;
    uint32_t headersAddress = 0;
    // For each program
    while(programCount--) {
        uart_printf("Checking program %d...\r\n", programCount+1);

        // Compare filename
        int match = 1;
        int pos = 0;
        char c_flash = 1, c_input = 1;

        headersAddress = tempAddress;
        while (c_flash != 0) {
            readData = readFlash(tempAddress); 
            c_flash = readData & 0xFF;
            c_input = filename[pos];
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);

            if (c_flash != c_input) {
                match = 0;
            }

            tempAddress += 1;
            pos++;
          }
          // Found match
          if (match) {
            *file_start = readFlash(tempAddress);
            *file_end = readFlash(tempAddress + 4);
            // Returns the headers address
            return headersAddress;
          }
          
          // Skip start and end addresses
          tempAddress += 4; // start
          tempAddress += 4; // end
          
          // Skip 256 bytes of sprite
          tempAddress += 256;
        }
    uart_printf("File not found: %s\r\n", filename);
    return 0xFFFFFFFF;
}
/*
    [Header: "RISCY.FS" (8 bytes)] 
    [Number of programs (1 byte)]
    [Program 1: 
        [Name (NUL-terminated)] 
        [Start address (4 bytes)] 
        [End address (4 bytes)] 
        [Image data (256 bytes)] 
        [Program data (variable length)]
    ]
    [Program 2: (same structure)] and so on...
*/
#define MAX_FILE_NAME_LENGTH 32
#define MAX_FILES 16
typedef struct {
    unsigned int startAddress; // Start address of the file in flash
    unsigned int endAddress; // End address of the file in flash
    unsigned int currentAddress; // Current address in the file
    char valid;
    char name[MAX_FILE_NAME_LENGTH]; // Name of the file
} file_t;

file_t files[MAX_FILES];
unsigned int fileCount = 0;

int16_t riscy_fopen(const char* filename) {
    uint32_t startAddress = 0;
    uint32_t endAddress = 0;
    
    // Look up the file by its name
    uint32_t headerAddress = getFileStartAddressByName(filename, &startAddress, &endAddress);
    
    if (headerAddress == 0xFFFFFFFF) {
        // File not found
        uart_printf("Error: File not found - %s\r\n", filename);
        return 0;
    }

    // If file is found, initialize the file structure
    if (fileCount < MAX_FILES) {
        file_t* newFile = &files[fileCount];
        newFile->startAddress = startAddress;
        newFile->endAddress = endAddress;
        newFile->currentAddress = startAddress;
        newFile->valid = 1; // Mark the file as valid
        short fileNameLength = 0;
        while(*filename && fileNameLength < MAX_FILE_NAME_LENGTH) {
            newFile->name[fileNameLength++] = filename[fileNameLength];
        }
        return ++fileCount;
    }

    // If there is no space left for new files
    uart_printf("Error: Maximum file count reached.\r\n");
    return 0;
}

int32_t riscy_fread(int16_t fileHandle, void* buffer, uint32_t size) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 0;
    }
    fileHandle -= 1; // Adjust for 0-based index
    file_t* file = &files[fileHandle];
    if (file->currentAddress + size > file->endAddress) {
        uart_printf("Error: Read exceeds file end address.\r\n");
        return 0;
    }

    // Read data from flash into the buffer
    for (uint32_t i = 0; i < size/4; i ++) {
        unsigned int data = readFlash(file->currentAddress + i*4);
        ((uint8_t*)buffer)[i*4] = data & 0xFF;
        ((uint8_t*)buffer)[i*4 + 1] = (data >> 8) & 0xFF;
        ((uint8_t*)buffer)[i*4 + 2] = (data >> 16) & 0xFF;
        ((uint8_t*)buffer)[i*4 + 3] = (data >> 24) & 0xFF;
    }
    // if the size is not a multiple of 4, read the remaining bytes
    if (size % 4 != 0) {
        unsigned int data = readFlash(file->currentAddress + (size/4)*4);
        for (uint32_t i = 0; i < size % 4; i++) {
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
        }
    }
    // Update current address
    file->currentAddress += size;

    return size;
}

char riscy_fgetc(int16_t fileHandle) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 0;
    }
    fileHandle -= 1; // Adjust for 0-based index
    file_t* file = &files[fileHandle];
    if (file->currentAddress >= file->endAddress) {
        uart_printf("Error: End of file reached.\r\n");
        return 0;
    }

    // Read a single byte from flash
    unsigned int data = readFlash(file->currentAddress);
    char byte = data & 0xFF; // Get the first byte
    file->currentAddress += 1; // Move to the next byte
    return byte;
}

uint8_t riscy_fclose(int16_t fileHandle) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 1; // Error
    }
    fileHandle -= 1; // Adjust for 0-based index
    // Mark the file as invalid
    files[fileHandle].valid = 0;
    return 0; // Success
}