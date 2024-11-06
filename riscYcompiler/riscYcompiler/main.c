

#include <stdarg.h> 
#include "riscYstdio.h"
#define USB 0x10000000

char getUSBModifier(){
    volatile char *usb = (volatile char *) USB;
    return usb[2];
}

char getUSBType() {
    volatile char *usb = (volatile char *) USB;
    return usb[1];
}

unsigned int getUSBint() {
    volatile unsigned int *usb = (volatile unsigned int *) USB;
    return usb[0];
}

char USBParser(char usbout) {
    if (usbout >= 0x04 && usbout <= 0x1D) {
        // Lowercase letters 'a' to 'z'
        return usbout - 4 + 'a';
    }
    else if (usbout >= 0x1E && usbout <= 0x27) {
        // Digits '0' to '9'
        return usbout - 0x1E + '1';
    }
    else if (usbout == 0x28) {
        return '\n'; // Enter key
    }
    else if (usbout == 0x29) {
        return '\x1B'; // Escape key
    }
    else if (usbout == 0x2A) {
        return '\b'; // Backspace key
    }
    else if (usbout == 0x2B) {
        return '\t'; // Tab key
    }
    else if (usbout == 0x2C) {
        return ' '; // Space key
    }
    else if (usbout == 0x2D) {
        return '-'; // Minus key
    }
    else if (usbout == 0x2E) {
        return '='; // Equals key
    }
    else if (usbout == 0x2F) {
        return '['; // Left bracket key
    }
    else if (usbout == 0x30) {
        return ']'; // Right bracket key
    }
    else if (usbout == 0x31) {
        return '\\'; // Backslash key
    }
    else if (usbout == 0x33) {
        return ';'; // Semicolon key
    }
    else if (usbout == 0x34) {
        return '\''; // Apostrophe key
    }
    else if (usbout == 0x35) {
        return '`'; // Grave accent key
    }
    else if (usbout == 0x36) {
        return ','; // Comma key
    }
    else if (usbout == 0x37) {
        return '.'; // Period key
    }
    else if (usbout == 0x38) {
        return '/'; // Forward slash key
    }
    else if (usbout >= 0x3A && usbout <= 0x45) {
        // Function keys F1 to F12
        return 'F'; // Placeholder for function key handling
    }

    // Return 0 if the input doesn't match any known key
    return 0;
}


int main() {
    unsigned int usbout=0;
    char type_old = 0;
    char type_new=0;
    char keys_new[4]={0,0,0,0};
    char keys_old[4]={0,0,0,0}; 
    short characterLocation = 0;
    printf("USB test\n");
    while(1){
        for(volatile int i=0;i<WaitTime*10;i++);
        type_new = getUSBType();
        if(type_new != type_old){
            clearScreen();
            printf("Type: %d\n", type_new);
            characterLocation = SCREEN_WIDTH;
            type_old = type_new;
        }
        if(type_old == 0){
            continue;
        }
        keys_new[3] = USBParser(usbout & 0xFF);
        keys_new[2] = USBParser((usbout >> 8) & 0xFF);
        keys_new[1] = USBParser((usbout >> 16) & 0xFF);
        keys_new[0] = USBParser((usbout >> 24) & 0xFF);
        if(type_new ==1){
            usbout = getUSBint();
            
            for(int i=0; i<1; i++){
                if(keys_new[i] != 0 && keys_new[i] != keys_old[i]){
                    if(keys_new[i] == '\b'){
                        
                        putch(characterLocation+1,' ',15);
                        putch(characterLocation,'_',15);
                        characterLocation-=putch(characterLocation-1,' ',0);
                    }
                    else if(keys_new[i] == '\n'){
                        
                        characterLocation-=putch(characterLocation,' ',0);
                        characterLocation = (characterLocation& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
                    }
                    else{
                        characterLocation+=putch(characterLocation,keys_new[i],15);
                        putch(characterLocation,'_',15);
                    }
                }
                keys_old[i] = keys_new[i];
            }
        }
        else if(type_old==2){
            printf("clk : %x  mouse  X:%x   mouseY: %x\n",keys_new[1],keys_new[2],keys_new[3]);
        }
    }
}