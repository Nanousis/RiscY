#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216
#define BUTTONS 0x89000000
#define WaitTime 10000
#define SCREEN_WIDTH 64
#define SCREEN_HEIGHT 19
#include <stdarg.h> 

// Copies 'n' bytes from 'src' to 'dest'
void *memcpy(void *dest, const void *src, int n) {
    // Cast src and dest to char pointers to iterate over each byte
    char *d = (char *)dest;
    const char *s = (const char *)src;

    // Copy 'n' bytes from 'src' to 'dest'
    for (int i = 0; i < n; i++) {
        d[i] = s[i];
    }

    // Return the destination pointer
    return dest;
}

char getButtonDown(){
    char *buttons = (char *)BUTTONS;
    return buttons[1];
}
char getButtonUp(){
    char *buttons = (char *)BUTTONS;
    return buttons[0];
}
char getButtonLeft(){
    char *buttons = (char *)BUTTONS;
    return buttons[2];
}
char getButtonRight(){
    char *buttons = (char *)BUTTONS;
    return buttons[3];
}
unsigned char putch(int location, char c, char color) {
    if(location>SCREEN_SIZE||location<0){
        return 0;
    }
    volatile unsigned short *screen = (unsigned short *)SCREEN_LOACTION;
    unsigned short buffer = (color << 8) | c;
    screen[location] = buffer;
    return 1;
}
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
unsigned char printHex(int location, int value, char color) {
    char hexChars[] = "0123456789ABCDEF";
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
    buffer[8] = '\0'; // Null-terminate the string
    
    for(int i = 7; i >= 0; i--) {
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
    }
    return printString(location, buffer, color); // Print the hex string at the specified location
}
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

int printf(int location, char color,const char* str, ...) 
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