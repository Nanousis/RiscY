#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216
#define BUTTONS 0x89000000
#define WaitTime 10000
#define SCREEN_WIDTH 64
#define SCREEN_HEIGHT 19

#include <stdarg.h> 


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
void putch(int location, char c, char color);
char getButtonDown();
char getButtonUp();
char getButtonLeft();
char getButtonRight();
void printString(int location, char *string,char color);
void printHex(int location, int value);
void printDec(int location, unsigned int num);

typedef struct Selection
{
    char *name;
}Selection;


int main() {
    unsigned char selectNum=0;
    Selection selections[5];
    selections[0].name="Test1";
    selections[1].name="Test2";
    selections[2].name="Test3";
    selections[3].name="Test4";
    selections[4].name="Test5";
    int i=0;
    char buttonDown=0;
    char buttonUp=0;
    while(1){

        if(buttonDown==1){
            buttonDown++;
            selectNum++;
            if(selectNum>4){
                selectNum=0;
            }
        }
        if(buttonUp==1){
            buttonUp++;
            if(selectNum==0){
                selectNum=5;
            }
            selectNum--;
        }
        for(i=0;i<5;i++){
            if(i==selectNum){
                printString(1+i*64,selections[i].name,(0xf<<4));
            }
            else{
                printString(1+i*64,selections[i].name,15);
            }
        }
        for(i=0;i<WaitTime;i++){
            if(buttonDown!=2&&buttonUp!=2){
                if(getButtonDown()){
                    buttonDown=1;
                }
                else{
                    buttonDown=0;
                }
                if(getButtonUp()){
                    buttonUp=1;
                }
                else{
                    buttonUp=0;
                }
            }
            else{
                if(!getButtonDown()){
                    buttonDown=0;
                }
                if(!getButtonUp()){
                    buttonUp=0;
                }
            }
        }
    }
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
void putch(int location, char c, char color) {
    volatile unsigned short *screen = (unsigned short *)SCREEN_LOACTION;
    unsigned short buffer = (color << 8) | c;
    screen[location] = buffer;
}
void printString(int location, char *string, char color){
    int i = 0;
    char rainbow=0;
    if(color==0){
        rainbow=1;
        color=1;
    }
    while(string[i] != '\0'){
        putch(location + i, string[i],color);
        i++;
        if(rainbow==1){
            color++;
            if(color>15){
                color=1;
            }
        }
    }
}
void printHex(int location, int value) {
    char hexChars[] = "0123456789ABCDEF";
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
    buffer[8] = '\0'; // Null-terminate the string
    
    for(int i = 7; i >= 0; i--) {
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
    }
    printString(location, buffer,0); // Print the hex string at the specified location
}
void printDec(int location, unsigned int num) {
    char digits[6]; // Max 5 digits + null terminator
    int index = 0;
    unsigned int placeValues[] = {10000U, 1000U, 100U, 10U, 1U};
    int leadingZero = 1; // Flag to skip leading zeros

    // Limit the number to 99999 to prevent using large constants
    if (num > 99999U) {
        // Handle numbers greater than 99999 separately or limit the function to 5-digit numbers
        printString(location, "Error",0);
        return;
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
    printString(location, digits,0);
}

int myprintf(int location,const char* str, ...) 
{ 
    // initializing list pointer 
    va_list ptr; 
    va_start(ptr, str); 
  
    // char array to store token 
    char token[256]; 
    // index of where to store the characters of str in 
    // token 
    int k = 0; 
  
    // parsing the formatted string 
    for (int i = 0; str[i] != '\0'; i++) { 
        token[k++] = str[i]; 
        if (str[i + 1] == '%' || str[i + 1] == '\0') { 
            token[k] = '\0'; 
            k = 0; 
            if (token[0] != '%') {
                printString(location,token,0); 
                // fprintf( 
                //     stdout, "%s", 
                //     token); // printing the whole token if 
                //             // it is not a format specifier 
            } 
            // else { 
            //     int j = 1; 
            //     char ch1 = 0; 
  
            //     // this loop is required when printing 
            //     // formatted value like 0.2f, when ch1='f' 
            //     // loop ends 
            //     while ((ch1 = token[j++]) < 58) { 
            //     } 
            //     // for integers 
            //     if (ch1 == 'i' || ch1 == 'd' || ch1 == 'u'
            //         || ch1 == 'h') { 
            //         fprintf(stdout, token, 
            //                 va_arg(ptr, int)); 
            //     } 
            //     // for characters 
            //     else if (ch1 == 'c') { 
            //         fprintf(stdout, token, 
            //                 va_arg(ptr, int)); 
            //     } 
            //     // for float values 
            //     else if (ch1 == 'f') { 
            //         fprintf(stdout, token, 
            //                 va_arg(ptr, double)); 
            //     } 
            //     else if (ch1 == 'l') { 
            //         char ch2 = token[2]; 
  
            //         // for long int 
            //         if (ch2 == 'u' || ch2 == 'd'
            //             || ch2 == 'i') { 
            //             fprintf(stdout, token, 
            //                     va_arg(ptr, long)); 
            //         } 
  
            //         // for double 
            //         else if (ch2 == 'f') { 
            //             fprintf(stdout, token, 
            //                     va_arg(ptr, double)); 
            //         } 
            //     } 
            //     else if (ch1 == 'L') { 
            //         char ch2 = token[2]; 
  
            //         // for long long int 
            //         if (ch2 == 'u' || ch2 == 'd'
            //             || ch2 == 'i') { 
            //             fprintf(stdout, token, 
            //                     va_arg(ptr, long long)); 
            //         } 
  
            //         // for long double 
            //         else if (ch2 == 'f') { 
            //             fprintf(stdout, token, 
            //                     va_arg(ptr, long double)); 
            //         } 
            //     } 
  
            //     // for strings 
            //     else if (ch1 == 's') { 
            //         fprintf(stdout, token, 
            //                 va_arg(ptr, char*)); 
            //     } 
  
            //     // print the whole token 
            //     // if no case is matched 
            //     else { 
            //         fprintf(stdout, "%s", token); 
            //     } 
            // } 
        } 
    } 
  
    // ending traversal 
    va_end(ptr); 
    return 0; 
} 