

#include <stdarg.h> 
#include "riscYstdio.h"

int getUSBint() {
    volatile int *usb = (volatile int *)USB;
    return usb[0];
}

void WriteSprite(int spriteNum, char *sprite) {
    unsigned short *screenSprites = (unsigned short *)0x88001000;
    for (int i = 0; i < 32; i++) {
        screenSprites[i + spriteNum * 32] = sprite[i];
    }
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
void SetAttributes(char spriteID, short x, short y, char enable, char spriteNum) {
    volatile unsigned int *screenSprites = (volatile unsigned int *)0x88002000;
    x &= 0x1FF;
    y &= 0x1FF;

    int firsthalf = ((spriteNum << 9) | y) & 0xffff;
    int secondhalf = ((enable) ? 0x8000 : 0) | (x & 0x1ff);
    int temp = (secondhalf << 16) | firsthalf;
    screenSprites[spriteID] = temp;
}

void ClearScreenRightToLeft(){
    for(int i=SCREEN_WIDTH-1; i>=0;i--){
        for(int j=0; j<SCREEN_HEIGHT;j++){
            putch(j*64+i,0,BG_WHITE);
        }
        for(volatile int wait=0;wait<WaitTime;wait++);
    }
}

typedef struct object {
    char id;
    short x;
    short y;    
    char sprite;
    char enable;
} object;

unsigned int getClock1M(){
    volatile unsigned int *clock = (volatile unsigned int *)0x8A000000;
    return *clock;
}

typedef struct animation{

    char *frames[4];
    char frameCount;
    char currentFrame;
    char idleFrameIndex;
}animation;


int main() {
    
    int i=0;

    // pikatchu initialization
    
char pikachu_00[] = {
    0xEB, 0xFF,
    0x0B, 0xFE,
    0x0F, 0xE0,
    0x2F, 0x28,
    0x3F, 0xFC,
    0xBF, 0xFC,
    0xFF, 0xFE,
    0xFF, 0xFC,
    0xFF, 0xF3,
    0xFF, 0xCF,
    0xFF, 0xBF,
    0xFF, 0x3F,
    0xFF, 0xBF,
    0xFF, 0xEF,
    0xFF, 0xCF,
    0xFF, 0xEF,
};

char pikachu_01[] = {
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFC, 0xFF,
    0xF3, 0xFF,
    0x8F, 0x2F,
    0xFF, 0xFE,
    0xFF, 0xFF,
    0xFE, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0x0F, 0xFF,
    0x33, 0xFC,
    0x03, 0xFC,
    0x0F, 0xFF,
};

char pikachu_02[] = {
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0x00, 0xBE,
    0xFF, 0xEF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0x0F,
    0xFF, 0x33,
    0xFF, 0x03,
    0xFF, 0x0F,
};

char pikachu_03[] = {
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xBF,
    0xBF, 0xE0,
    0xE0, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0x8F,
    0xEF, 0xF8,
    0x3F, 0xFF,
    0xBF, 0xFF,
    0xFC, 0xFE,
    0xFC, 0xFC,
    0xFF, 0xFE,
};

char pikachu_04[] = {
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0x00, 0xFE,
    0x0F, 0xFE,
    0x8B, 0xFF,
    0xE2, 0xFF,
    0xF8, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xBF,
    0xFF, 0x0F,
    0xFF, 0x33,
    0xFF, 0x3C,
    0x3F, 0x3F,
};

char pikachu_10[] = {
    0xFF, 0xBB,
    0xFF, 0xA3,
    0xFF, 0xA3,
    0xFF, 0xBB,
    0xFF, 0xCF,
    0xFF, 0xEF,
    0xFF, 0xBF,
    0xFF, 0xEF,
    0xFF, 0xCF,
    0xFF, 0xCF,
    0xFF, 0xEF,
    0xFF, 0xFB,
    0xFF, 0xF3,
    0xFF, 0xF3,
    0xFF, 0xF3,
    0xFF, 0xF3,
};

char pikachu_11[] = {
    0xFE, 0x3F,
    0xFA, 0xFF,
    0xFA, 0xBE,
    0xFE, 0xE3,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFC,
    0xFE, 0xFE,
    0xFC, 0xFB,
    0xF3, 0xF3,
    0xFB, 0xF3,
    0xCF, 0xFB,
    0xBF, 0xFC,
};

char pikachu_12[] = {
    0xFE, 0xFF,
    0xFF, 0xFF,
    0xBE, 0xFF,
    0xCB, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFC,
    0xFF, 0xFE,
    0xBF, 0xFF,
    0x3F, 0x3F,
    0x3F, 0xBF,
    0xBF, 0xCF,
    0xFF, 0xF8,
};

char pikachu_13[] = {
    0xEB, 0xFB,
    0xAA, 0xF3,
    0xAA, 0xF3,
    0xEB, 0x3B,
    0xFF, 0xC0,
    0xFF, 0xF2,
    0xBF, 0xFB,
    0xFF, 0xCE,
    0xFF, 0x3C,
    0xFF, 0xFE,
    0xFE, 0x3B,
    0xFC, 0xC3,
    0xFF, 0xE3,
    0xFF, 0xC3,
    0xFF, 0xA3,
    0xFF, 0xA3,
};

char pikachu_14[] = {
    0xCF, 0x3F,
    0xF3, 0x3F,
    0xFC, 0x3F,
    0xFF, 0x3F,
    0xFF, 0x3F,
    0xFF, 0xBF,
    0xFF, 0xEF,
    0xFF, 0xF3,
    0xFF, 0xFC,
    0xFC, 0xF3,
    0xFF, 0xF3,
    0xFF, 0xFE,
    0x3F, 0xFF,
    0xEF, 0xFF,
    0xF3, 0xFF,
    0xCA, 0xFF,
};

char pikachu_20[] = {
    0xFF, 0xFB,
    0xFF, 0xEF,
    0xFF, 0xCF,
    0xFF, 0x3F,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
};

char pikachu_21[] = {
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFC, 0xFF,
    0xFB, 0xAF,
    0xFC, 0xE2,
    0x02, 0xFE,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
};

char pikachu_22[] = {
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xAA, 0xFA,
    0xFF, 0x8B,
    0xFF, 0xBF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
};

char pikachu_23[] = {
    0xFF, 0xA3,
    0xFF, 0x23,
    0xFF, 0xC2,
    0xFF, 0xFC,
    0x3F, 0xFF,
    0xEF, 0xFF,
    0x3F, 0xFF,
    0x80, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
};

char pikachu_24[] = {
    0xF2, 0xFF,
    0xFC, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
};


char lineTop_00[] = {
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
};


// character movement
char characterdown1_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xF9,
    0x50, 0x55,
    0x74, 0xFF,
    0xF4, 0xDF,
    0x54, 0xDF,
    0x74, 0xBD,
    0x50, 0x55,
    0x40, 0x59,
    0x00, 0x95,
    0x00, 0x69,
    0x00, 0x54,
};

char characterdown1_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6F, 0x05,
    0x55, 0x05,
    0xFF, 0x1D,
    0xF7, 0x1F,
    0xF7, 0x05,
    0x7E, 0x06,
    0x55, 0x07,
    0xF5, 0x05,
    0xF6, 0x01,
    0x51, 0x00,
    0x00, 0x00,
};

char characterdown2_00[] = {
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xF9,
    0x50, 0x57,
    0x74, 0xFF,
    0xF4, 0xDF,
    0x50, 0xDF,
    0x50, 0xBD,
    0xF4, 0x55,
    0xF4, 0x55,
    0x50, 0x69,
    0x40, 0x96,
    0x40, 0x6A,
    0x00, 0x15,
};

char characterdown2_01[] = {
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6F, 0x05,
    0xD5, 0x05,
    0xFF, 0x1D,
    0xF7, 0x1F,
    0xF7, 0x05,
    0x7E, 0x05,
    0x55, 0x1F,
    0x55, 0x1F,
    0x69, 0x05,
    0x96, 0x01,
    0xA9, 0x01,
    0x54, 0x00,
};

char characterdown3_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xF9,
    0x50, 0x55,
    0x74, 0xFF,
    0xF4, 0xDF,
    0x50, 0xDF,
    0x90, 0xBD,
    0xD0, 0x55,
    0x50, 0x5F,
    0x40, 0x9F,
    0x00, 0x45,
    0x00, 0x00,
};

char characterdown3_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6F, 0x05,
    0x55, 0x05,
    0xFF, 0x1D,
    0xF7, 0x1F,
    0xF7, 0x15,
    0x7E, 0x1D,
    0x55, 0x05,
    0x65, 0x01,
    0x56, 0x00,
    0x69, 0x00,
    0x15, 0x00,
};

char characterleft1_00[] = {
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x50, 0xAB,
    0xF4, 0xAF,
    0x50, 0x6A,
    0x40, 0xF7,
    0x40, 0xF7,
    0x40, 0xFF,
    0x00, 0xF9,
    0x00, 0x54,
    0x00, 0x50,
    0x00, 0x50,
    0x00, 0xA4,
    0x00, 0xA4,
    0x00, 0x50,
};

char characterleft1_01[] = {
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6A, 0x05,
    0x55, 0x05,
    0x55, 0x05,
    0x7D, 0x01,
    0x7F, 0x00,
    0x97, 0x01,
    0xA5, 0x01,
    0x9F, 0x01,
    0x9F, 0x01,
    0x55, 0x00,
    0x1A, 0x00,
    0x05, 0x00,
};

char characterleft2_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x50, 0xAB,
    0xF4, 0xAF,
    0x50, 0x6A,
    0x40, 0xF7,
    0x40, 0xF7,
    0x40, 0xFF,
    0x00, 0xF9,
    0x00, 0x54,
    0x40, 0x55,
    0x90, 0xA6,
    0x40, 0x5A,
    0x00, 0x15,
};

char characterleft2_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0x6A, 0x05,
    0x55, 0x05,
    0x55, 0x05,
    0x7D, 0x01,
    0x7F, 0x00,
    0x97, 0x01,
    0x95, 0x01,
    0x7D, 0x01,
    0x7D, 0x06,
    0x95, 0x06,
    0x40, 0x01,
};

char characterright1_00[] = {
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xA9,
    0x50, 0x55,
    0x50, 0x55,
    0x40, 0x7D,
    0x00, 0xFD,
    0x40, 0xD6,
    0x40, 0x5A,
    0x40, 0xF6,
    0x40, 0xF6,
    0x00, 0x55,
    0x00, 0xA4,
    0x00, 0x50,
};

char characterright1_01[] = {
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xEA, 0x05,
    0xFA, 0x1F,
    0xA9, 0x05,
    0xDF, 0x01,
    0xDF, 0x01,
    0xFF, 0x01,
    0x6F, 0x00,
    0x15, 0x00,
    0x05, 0x00,
    0x05, 0x00,
    0x1A, 0x00,
    0x1A, 0x00,
    0x05, 0x00,
};

char characterright2_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xA9,
    0x50, 0x55,
    0x50, 0x55,
    0x40, 0x7D,
    0x00, 0xFD,
    0x40, 0xD6,
    0x40, 0x56,
    0x40, 0x7D,
    0x90, 0x7D,
    0x90, 0x56,
    0x40, 0x01,
};

char characterright2_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xEA, 0x05,
    0xFA, 0x1F,
    0xA9, 0x05,
    0xDF, 0x01,
    0xDF, 0x01,
    0xFF, 0x01,
    0x6F, 0x00,
    0x15, 0x00,
    0x55, 0x01,
    0x9A, 0x06,
    0xA5, 0x01,
    0x54, 0x00,
};

char characterup1_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xAA,
    0x50, 0xA9,
    0x74, 0x55,
    0xF4, 0x55,
    0x54, 0x5F,
    0x74, 0xA5,
    0x50, 0x59,
    0x40, 0xE9,
    0x00, 0xA5,
    0x00, 0x59,
    0x00, 0x54,
};

char characterup1_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0xAA, 0x05,
    0x6A, 0x05,
    0x55, 0x1D,
    0x55, 0x1F,
    0xF5, 0x05,
    0x5A, 0x05,
    0x65, 0x1F,
    0x6B, 0x1F,
    0x5A, 0x05,
    0x05, 0x00,
    0x00, 0x00,
};

char characterup2_00[] = {
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xAA,
    0x50, 0xA9,
    0x74, 0x55,
    0xF4, 0x55,
    0x50, 0x5F,
    0x50, 0xA5,
    0x74, 0x59,
    0x74, 0xE9,
    0x50, 0xA5,
    0x40, 0x56,
    0x40, 0x6A,
    0x00, 0x15,
};

char characterup2_01[] = {
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0xAA, 0x05,
    0x6A, 0x05,
    0x55, 0x1D,
    0x55, 0x1F,
    0xF5, 0x05,
    0x5A, 0x05,
    0x65, 0x1D,
    0x6B, 0x1D,
    0x5A, 0x05,
    0x95, 0x01,
    0xA9, 0x01,
    0x54, 0x00,
};

char characterup3_00[] = {
    0x00, 0x00,
    0x00, 0x54,
    0x00, 0xA9,
    0x40, 0xAA,
    0x40, 0xAA,
    0x50, 0xAA,
    0x50, 0xA9,
    0x74, 0x55,
    0xF4, 0x55,
    0x50, 0x5F,
    0x50, 0xA5,
    0xF4, 0x59,
    0xF4, 0xE9,
    0x50, 0xA5,
    0x00, 0x50,
    0x00, 0x00,
};

char characterup3_01[] = {
    0x00, 0x00,
    0x15, 0x00,
    0x6A, 0x00,
    0xAA, 0x01,
    0xAA, 0x01,
    0xAA, 0x05,
    0x6A, 0x05,
    0x55, 0x1D,
    0x55, 0x1F,
    0xF5, 0x15,
    0x5A, 0x1D,
    0x65, 0x05,
    0x6B, 0x01,
    0x5A, 0x00,
    0x65, 0x00,
    0x15, 0x00,
};



char house_00[] = {
    0x0F, 0x00,
    0x53, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0x73, 0x55,
    0xA3, 0xAA,
};

char house_01[] = {
    0x00, 0x00,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0xA5,
    0xAA, 0x2A,
    0x02, 0x00,
};

char house_02[] = {
    0x00, 0x00,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0xAA, 0xAA,
    0x00, 0x00,
    0xFF, 0xFF,
};

char house_03[] = {
    0x00, 0x00,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0xAA, 0xAA,
    0x00, 0x00,
    0xFF, 0xFF,
};

char house_04[] = {
    0x00, 0x00,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x55, 0x55,
    0x5A, 0x55,
    0xA8, 0xAA,
    0x00, 0x80,
};

char house_05[] = {
    0x00, 0xF0,
    0x55, 0xC5,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0x55, 0xCD,
    0xAA, 0xCA,
};

char house_10[] = {
    0x03, 0x00,
    0xD3, 0xFF,
    0xD3, 0x3F,
    0xD3, 0x3F,
    0xD3, 0x3F,
    0xD3, 0x3F,
    0xD3, 0x3F,
    0xD3, 0x3F,
    0xF3, 0xFF,
    0xF3, 0xFF,
    0xF3, 0xFF,
    0xF3, 0xFF,
    0xF3, 0xFF,
    0x53, 0x55,
    0x03, 0x40,
    0x03, 0x00,
};

char house_11[] = {
    0xFC, 0xFF,
    0xFF, 0xFF,
    0x00, 0xFC,
    0xFF, 0xFC,
    0xEB, 0xFC,
    0xAA, 0xFC,
    0x55, 0xFC,
    0x00, 0xFC,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0x57,
    0x55, 0x05,
    0x00, 0x00,
};

char house_12[] = {
    0x00, 0x00,
    0x54, 0x54,
    0x54, 0x54,
    0x54, 0x54,
    0x54, 0x54,
    0x54, 0x54,
    0x54, 0x58,
    0x64, 0x94,
    0x94, 0x58,
    0x64, 0x94,
    0x94, 0x54,
    0x54, 0x54,
    0x54, 0x54,
    0x54, 0x54,
    0x54, 0x54,
    0x00, 0x00,
};

char house_13[] = {
    0x00, 0x00,
    0x15, 0x15,
    0x15, 0x15,
    0x15, 0x15,
    0x15, 0x15,
    0x15, 0x17,
    0x17, 0x1D,
    0x35, 0x17,
    0x17, 0x1D,
    0x35, 0x15,
    0x15, 0x15,
    0x15, 0x15,
    0x15, 0x15,
    0x15, 0x15,
    0x15, 0x15,
    0x00, 0x00,
};

char house_14[] = {
    0xFF, 0x3F,
    0xFF, 0xFF,
    0x3F, 0x00,
    0x3F, 0xFF,
    0x3F, 0xEB,
    0x3F, 0xAA,
    0x3F, 0x55,
    0x3F, 0x00,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xFF, 0xFF,
    0xD5, 0xFF,
    0x50, 0x55,
    0x00, 0x00,
};

char house_15[] = {
    0x00, 0xC0,
    0xFF, 0xC7,
    0xFC, 0xC7,
    0xFC, 0xC7,
    0xFC, 0xC7,
    0xFC, 0xC7,
    0xFC, 0xC7,
    0xFC, 0xC7,
    0xFF, 0xCF,
    0xFF, 0xCF,
    0xFF, 0xCF,
    0xFF, 0xCF,
    0xFF, 0xCF,
    0x55, 0xC5,
    0x01, 0xC0,
    0x00, 0xC0,
};



    animation charDown00;
    charDown00.frames[0] = characterdown2_00;
    charDown00.frames[1] = characterdown1_00;
    charDown00.frames[2] = characterdown2_00;
    charDown00.frames[3] = characterdown3_00;
    charDown00.frameCount = 4;
    charDown00.currentFrame = 0;
    charDown00.idleFrameIndex = 0;

    animation charDown01;
    charDown01.frames[0] = characterdown2_01;
    charDown01.frames[1] = characterdown1_01;
    charDown01.frames[2] = characterdown2_01;
    charDown01.frames[3] = characterdown3_01;
    charDown01.frameCount = 4;
    charDown01.currentFrame = 0;
    charDown01.idleFrameIndex = 0;

    animation charLeft00;
    charLeft00.frames[0] = characterleft1_00;
    charLeft00.frames[1] = characterleft2_00;
    charLeft00.frameCount = 2;
    charLeft00.currentFrame = 1;
    charLeft00.idleFrameIndex = 1;

    animation charLeft01;
    charLeft01.frames[0] = characterleft1_01;
    charLeft01.frames[1] = characterleft2_01;
    charLeft01.frameCount = 2;
    charLeft01.currentFrame = 1;
    charLeft01.idleFrameIndex = 1;

    animation charRight00;
    charRight00.frames[0] = characterright1_00;
    charRight00.frames[1] = characterright2_00;
    charRight00.frameCount = 2;
    charRight00.currentFrame = 1;
    charRight00.idleFrameIndex = 1;

    animation charRight01;
    charRight01.frames[0] = characterright1_01;
    charRight01.frames[1] = characterright2_01;
    charRight01.frameCount = 2;
    charRight01.currentFrame = 1;
    charRight01.idleFrameIndex = 1;

    animation charUp00;
    charUp00.frames[0] = characterup2_00;
    charUp00.frames[1] = characterup1_00;
    charUp00.frames[2] = characterup2_00;
    charUp00.frames[3] = characterup3_00;
    charUp00.frameCount = 4;
    charUp00.currentFrame = 0;
    charUp00.idleFrameIndex = 0;

    animation charUp01;
    charUp01.frames[0] = characterup2_01;
    charUp01.frames[1] = characterup1_01;
    charUp01.frames[2] = characterup2_01;
    charUp01.frames[3] = characterup3_01;
    charUp01.frameCount = 4;
    charUp01.currentFrame = 0;
    charUp01.idleFrameIndex = 0;




    short pikachuX = 120;
    short pikachuY = 220;

    // object pikachu00Obj = {0, pikachuX + 0,     pikachuY + 0, 0, 1};
    // object pikachu01Obj = {1, pikachuX + 8,     pikachuY + 0, 1, 1};
    // object pikachu02Obj = {2, pikachuX + 16,    pikachuY + 0, 2, 1};
    // object pikachu03Obj = {3, pikachuX + 24,    pikachuY + 0, 3, 1};
    // object pikachu04Obj = {4, pikachuX + 32,    pikachuY + 0, 4, 1};
    // object pikachu10Obj = {5, pikachuX + 0,     pikachuY + 16, 5, 1};
    // object pikachu11Obj = {6, pikachuX + 8,     pikachuY + 16, 6, 1};
    // object pikachu12Obj = {7, pikachuX + 16,    pikachuY + 16, 7, 1};
    // object pikachu13Obj = {8, pikachuX + 24,    pikachuY + 16, 8, 1};
    // object pikachu14Obj = {9, pikachuX + 32,    pikachuY + 16, 9, 1};
    // object pikachu20Obj = {10, pikachuX + 0,    pikachuY + 32, 10, 1};
    // object pikachu21Obj = {11, pikachuX + 8,    pikachuY + 32, 11, 1};
    // object pikachu22Obj = {12, pikachuX + 16,   pikachuY + 32, 12, 1};
    // object pikachu23Obj = {13, pikachuX + 24,   pikachuY + 32, 13, 1};
    // object pikachu24Obj = {14, pikachuX + 32,   pikachuY + 32, 14, 1};



    // WriteSprite(0, pikachu00);
    // WriteSprite(1, pikachu01);
    // WriteSprite(2, pikachu02);
    // WriteSprite(3, pikachu03);
    // WriteSprite(4, pikachu04);
    // WriteSprite(5, pikachu10);
    // WriteSprite(6, pikachu11);
    // WriteSprite(7, pikachu12);
    // WriteSprite(8, pikachu13);
    // WriteSprite(9, pikachu14);
    // WriteSprite(10, pikachu20);
    // WriteSprite(11, pikachu21);
    // WriteSprite(12, pikachu22);
    // WriteSprite(13, pikachu23);
    // WriteSprite(14, pikachu24);


    // SetAttributes(pikachu00Obj.id, pikachu00Obj.x, pikachu00Obj.y, pikachu00Obj.enable, pikachu00Obj.sprite);
    // SetAttributes(pikachu01Obj.id, pikachu01Obj.x, pikachu01Obj.y, pikachu01Obj.enable, pikachu01Obj.sprite);
    // SetAttributes(pikachu02Obj.id, pikachu02Obj.x, pikachu02Obj.y, pikachu02Obj.enable, pikachu02Obj.sprite);
    // SetAttributes(pikachu03Obj.id, pikachu03Obj.x, pikachu03Obj.y, pikachu03Obj.enable, pikachu03Obj.sprite);
    // SetAttributes(pikachu04Obj.id, pikachu04Obj.x, pikachu04Obj.y, pikachu04Obj.enable, pikachu04Obj.sprite);
    // SetAttributes(pikachu10Obj.id, pikachu10Obj.x, pikachu10Obj.y, pikachu10Obj.enable, pikachu10Obj.sprite);
    // SetAttributes(pikachu11Obj.id, pikachu11Obj.x, pikachu11Obj.y, pikachu11Obj.enable, pikachu11Obj.sprite);
    // SetAttributes(pikachu12Obj.id, pikachu12Obj.x, pikachu12Obj.y, pikachu12Obj.enable, pikachu12Obj.sprite);
    // SetAttributes(pikachu13Obj.id, pikachu13Obj.x, pikachu13Obj.y, pikachu13Obj.enable, pikachu13Obj.sprite);
    // SetAttributes(pikachu14Obj.id, pikachu14Obj.x, pikachu14Obj.y, pikachu14Obj.enable, pikachu14Obj.sprite);
    // SetAttributes(pikachu20Obj.id, pikachu20Obj.x, pikachu20Obj.y, pikachu20Obj.enable, pikachu20Obj.sprite);
    // SetAttributes(pikachu21Obj.id, pikachu21Obj.x, pikachu21Obj.y, pikachu21Obj.enable, pikachu21Obj.sprite);
    // SetAttributes(pikachu22Obj.id, pikachu22Obj.x, pikachu22Obj.y, pikachu22Obj.enable, pikachu22Obj.sprite);
    // SetAttributes(pikachu23Obj.id, pikachu23Obj.x, pikachu23Obj.y, pikachu23Obj.enable, pikachu23Obj.sprite);
    // SetAttributes(pikachu24Obj.id, pikachu24Obj.x, pikachu24Obj.y, pikachu24Obj.enable, pikachu24Obj.sprite);
    

    for(i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
        putch(i,' ',BG_WHITE);
    }


    // putch(SCREEN_WIDTH*12+0  +10,128+0,BG_WHITE);
    // putch(SCREEN_WIDTH*12+1  +10,128+1,BG_WHITE);
    // putch(SCREEN_WIDTH*12+2  +10,128+2,BG_WHITE);
    // putch(SCREEN_WIDTH*12+3  +10,128+3,BG_WHITE);
    // putch(SCREEN_WIDTH*12+4  +10,128+4,BG_WHITE);

    // putch(SCREEN_WIDTH*13+0  +10,128+0+5,BG_WHITE);
    // putch(SCREEN_WIDTH*13+1  +10,128+1+5,BG_WHITE);
    // putch(SCREEN_WIDTH*13+2  +10,128+2+5,BG_WHITE);
    // putch(SCREEN_WIDTH*13+3  +10,128+3+5,BG_WHITE);
    // putch(SCREEN_WIDTH*13+4  +10,128+4+5,BG_WHITE);

    // putch(SCREEN_WIDTH*14+0  +10,128+0+10,BG_WHITE);
    // putch(SCREEN_WIDTH*14+1  +10,128+1+10,BG_WHITE);
    // putch(SCREEN_WIDTH*14+2  +10,128+2+10,BG_WHITE);
    // putch(SCREEN_WIDTH*14+3  +10,128+3+10,BG_WHITE);
    // putch(SCREEN_WIDTH*14+4  +10,128+4+10,BG_WHITE);

    
    int usbout = 0;
    char keys[4] = {0, 0, 0, 0};
    char direction=1; // Up = 0, Down = 1, Left = 2, Right = 3, 4 = idle
    char testNum = '0';
    volatile int clock = getClock1M();
    volatile int clock2 = getClock1M();
    WriteSprite(0, charDown00.frames[charDown00.currentFrame]);
    WriteSprite(1, charDown01.frames[charDown01.currentFrame]);
    WriteSprite(2, lineTop_00);

    char currentFrame=0;
    object character00={0,160,220,0,0};
    object character01={1,168,220,1,0};
    SetAttributes(character00.id, character00.x, character00.y, character00.enable, character00.sprite);
    SetAttributes(character01.id, character01.x, character01.y, character01.enable, character01.sprite);

    char slide = 0;
    
    char renderedFrame=0;

    while(1){
        clock2 = getClock1M();
        // putch(63,testNum,BG_WHITE);

        usbout = getUSBint();
        keys[0] = USBParser((usbout >> 24) & 0xFF);

        if(renderedFrame==0){
            renderedFrame=1;
            switch (slide)
            {
            case 0:
                printfSCR(SCREEN_WIDTH*5+15, BG_WHITE,  "  _____  _____  _____  _____   __     __");
                printfSCR(SCREEN_WIDTH*6+15, BG_WHITE,  " |  __ \\|_   _|/ ____|/ ____|  \\ \\   / /");    
                printfSCR(SCREEN_WIDTH*7+15, BG_WHITE,  " | |__) | | | | (___ | |   _____\\ \\_/ / ");
                printfSCR(SCREEN_WIDTH*8+15, BG_WHITE,  " |  _  /  | |  \\___ \\| |  |______\\   /  ");
                printfSCR(SCREEN_WIDTH*9+15, BG_WHITE,  " | | \\ \\ _| |_ ____) | |____      | |   ");
                printfSCR(SCREEN_WIDTH*10+15, BG_WHITE, " |_|  \\_\\_____|_____/ \\_____|     |_|   ");
                // printfSCR(SCREEN_WIDTH*11+15, BG_WHITE, "  
            break;
            case 1:
                printfSCR(SCREEN_WIDTH*7+24,BG_WHITE,  "What did we make?");
            break;
            case 2:
                printfSCR(SCREEN_WIDTH*7+20,BG_WHITE,  "A Processor with verilog");
            break;
            case 3:
                printfSCR(SCREEN_WIDTH*7+22,BG_WHITE,  "Displaying on screen");
            break;
            case 4:
                printfSCR(SCREEN_WIDTH*7+20,BG_WHITE,  "Memories... RAM, BRAM, PRAM");
            break;

            case 5:
                printfSCR(SCREEN_WIDTH*7+20,BG_WHITE,  "What can we do though?");
            break;

            case 6:
                for(i=0;i<SCREEN_WIDTH;i++){
                    putch(i,' ',BG_MAGENTA);
                }
                putch(SCREEN_WIDTH-1,'X',BG_RED);
                putch(SCREEN_WIDTH-2,'O',BG_WHITE);
                putch(SCREEN_WIDTH-3,'-',BG_WHITE);
                
                printfSCR(0,BG_MAGENTA," We can display text, duh...\n");
                for(i=0;i<SCREEN_WIDTH;i++){
                    putch(SCREEN_WIDTH+i,128+2,BG_WHITE);
                }
                // printfSCR(SCREEN_WIDTH*3,BG_WHITE,  "        What is a CPU?\n");
                // printfSCR(SCREEN_WIDTH*4,BG_WHITE,  "            -A CPU is the brain of the computer\n");
                // printfSCR(SCREEN_WIDTH*5,BG_WHITE,  "            -It processes instructions\n");
                // printfSCR(SCREEN_WIDTH*6,BG_WHITE,  "            -It performs basic arithmetic, logic, control,\n");
                printfSCR(SCREEN_WIDTH*7+24,BG_WHITE,  "Hello World!");
                // printfSCR(SCREEN_WIDTH*8,BG_WHITE,  "            -It is the most important component of a computer\n");
                // printfSCR(SCREEN_WIDTH*9,BG_WHITE,  "            -It is the most complex part of a computer\n");
                // printfSCR(SCREEN_WIDTH*10,BG_WHITE, "            -It is the most expensive part of a computer\n");
                break;
            case 7:
                for(i=0;i<SCREEN_WIDTH;i++){
                    putch(i,' ',BG_MAGENTA);
                }
                putch(SCREEN_WIDTH-1,'X',BG_RED);
                putch(SCREEN_WIDTH-2,'O',BG_WHITE);
                putch(SCREEN_WIDTH-3,'-',BG_WHITE);
                
                printfSCR(0,BG_MAGENTA," What about math?\n");
                for(i=0;i<SCREEN_WIDTH;i++){
                    putch(SCREEN_WIDTH+i,128+2,BG_WHITE);
                }
                printfSCR(SCREEN_WIDTH*(3+3),BG_WHITE,  "        We can do Simple Math!\n");
                printfSCR(SCREEN_WIDTH*(4+3),BG_WHITE,  "            -1+1=3\n");
                printfSCR(SCREEN_WIDTH*(5+3),BG_WHITE,  "            -1&1=1\n");
                printfSCR(SCREEN_WIDTH*(6+3),BG_WHITE,  "            -Matrix Multiplications\n");
                // printfSCR(SCREEN_WIDTH*(8+3),BG_WHITE,  "            -\n");
                // printfSCR(SCREEN_WIDTH*9,BG_WHITE,  "            -It is the most complex part of a computer\n");
                // printfSCR(SCREEN_WIDTH*10,BG_WHITE, "            -It is the most expensive part of a computer\n");
                break;
            
            case 8:
                for(i=0;i<SCREEN_WIDTH;i++){
                    putch(i,' ',BG_MAGENTA);
                }
                putch(SCREEN_WIDTH-1,'X',BG_RED);
                putch(SCREEN_WIDTH-2,'O',BG_WHITE);
                putch(SCREEN_WIDTH-3,'-',BG_WHITE);
                
                printfSCR(0,BG_MAGENTA," What about Images?\n");
                for(i=0;i<SCREEN_WIDTH;i++){
                    putch(SCREEN_WIDTH+i,128+2,BG_WHITE);
                }
                printfSCR(SCREEN_WIDTH*(3+3),BG_WHITE,  "        We can have Basic Images!\n");
                printfSCR(SCREEN_WIDTH*(4+3),BG_WHITE,  "            -8x16 Sprites\n");
                printfSCR(SCREEN_WIDTH*(5+3),BG_WHITE,  "            -Whoping 4 colors!\n");
                printfSCR(SCREEN_WIDTH*(6+3),BG_WHITE,  "            -Something like this ->\n");
                WriteSprite(3+0,    pikachu_00);
                WriteSprite(3+1,    pikachu_01);
                WriteSprite(3+2,    pikachu_02);
                WriteSprite(3+3,    pikachu_03);
                WriteSprite(3+4,    pikachu_04);
                WriteSprite(3+5,    pikachu_10);
                WriteSprite(3+6,    pikachu_11);
                WriteSprite(3+7,    pikachu_12);
                WriteSprite(3+8,    pikachu_13);
                WriteSprite(3+9,    pikachu_14);
                WriteSprite(3+10,   pikachu_20);
                WriteSprite(3+11,   pikachu_21);
                WriteSprite(3+12,   pikachu_22);
                WriteSprite(3+13,   pikachu_23);
                WriteSprite(3+14,   pikachu_24);


                putch(SCREEN_WIDTH*9+0  +40,128+0+3,BG_WHITE);
                putch(SCREEN_WIDTH*9+1  +40,128+1+3,BG_WHITE);
                putch(SCREEN_WIDTH*9+2  +40,128+2+3,BG_WHITE);
                putch(SCREEN_WIDTH*9+3  +40,128+3+3,BG_WHITE);
                putch(SCREEN_WIDTH*9+4  +40,128+4+3,BG_WHITE);

                putch(SCREEN_WIDTH*10+0  +40,128+0+5+3,BG_WHITE);
                putch(SCREEN_WIDTH*10+1  +40,128+1+5+3,BG_WHITE);
                putch(SCREEN_WIDTH*10+2  +40,128+2+5+3,BG_WHITE);
                putch(SCREEN_WIDTH*10+3  +40,128+3+5+3,BG_WHITE);
                putch(SCREEN_WIDTH*10+4  +40,128+4+5+3,BG_WHITE);

                putch(SCREEN_WIDTH*11+0  +40,128+0+10+3,BG_WHITE);
                putch(SCREEN_WIDTH*11+1  +40,128+1+10+3,BG_WHITE);
                putch(SCREEN_WIDTH*11+2  +40,128+2+10+3,BG_WHITE);
                putch(SCREEN_WIDTH*11+3  +40,128+3+10+3,BG_WHITE);
                putch(SCREEN_WIDTH*11+4  +40,128+4+10+3,BG_WHITE);
                // printfSCR(SCREEN_WIDTH*(8+3),BG_WHITE,  "            -\n");
                // printfSCR(SCREEN_WIDTH*9,BG_WHITE,  "            -It is the most complex part of a computer\n");
                // printfSCR(SCREEN_WIDTH*10,BG_WHITE, "            -It is the most expensive part of a computer\n");
                break;
                case 9:
                    for(i=0;i<SCREEN_WIDTH;i++){
                    putch(i,' ',BG_MAGENTA);
                }
                    putch(SCREEN_WIDTH-1,'X',BG_RED);
                    putch(SCREEN_WIDTH-2,'O',BG_WHITE);
                    putch(SCREEN_WIDTH-3,'-',BG_WHITE);
                    



                    printfSCR(0,BG_MAGENTA," What about Animations?\n");
                    for(i=0;i<SCREEN_WIDTH;i++){
                        putch(SCREEN_WIDTH+i,128+2,BG_WHITE);
                    }
                    printfSCR(SCREEN_WIDTH*(3+3),BG_WHITE,  "        Simple animations!\n");
                    printfSCR(SCREEN_WIDTH*(4+3),BG_WHITE,  "            -GameBoy style animations\n");
                    printfSCR(SCREEN_WIDTH*(5+3),BG_WHITE,  "            -Totally not copied this from pokemon\n");
                    printfSCR(SCREEN_WIDTH*(6+3),BG_WHITE,  "            -Look here ->\n");
                    character00.enable = 1;
                    character01.enable = 1;
                    character00.x = 200;
                    character00.y = 148;
                    character01.x = 208;
                    character01.y = 148;


                    WriteSprite(3+0,    house_00);
                    WriteSprite(3+1,    house_01);
                    WriteSprite(3+2,    house_02);
                    WriteSprite(3+3,    house_03);
                    WriteSprite(3+4,    house_04);
                    WriteSprite(3+5,    house_05);
                    WriteSprite(3+6,    house_10);
                    WriteSprite(3+7,    house_11);
                    WriteSprite(3+8,    house_12);
                    WriteSprite(3+9,    house_13);
                    WriteSprite(3+10,   house_14);
                    WriteSprite(3+11,   house_15);




                    putch(SCREEN_WIDTH*9+0  +50,128+0+3,BG_WHITE);
                    putch(SCREEN_WIDTH*9+1  +50,128+1+3,BG_WHITE);
                    putch(SCREEN_WIDTH*9+2  +50,128+2+3,BG_WHITE);
                    putch(SCREEN_WIDTH*9+3  +50,128+3+3,BG_WHITE);
                    putch(SCREEN_WIDTH*9+4  +50,128+4+3,BG_WHITE);
                    putch(SCREEN_WIDTH*9+5  +50,128+5+3,BG_WHITE);

                    putch(SCREEN_WIDTH*10+0  +50,128+ 0 +9,BG_WHITE);
                    putch(SCREEN_WIDTH*10+1  +50,128+ 1 +9,BG_WHITE);
                    putch(SCREEN_WIDTH*10+2  +50,128+ 2 +9,BG_WHITE);
                    putch(SCREEN_WIDTH*10+3  +50,128+ 3 +9,BG_WHITE);
                    putch(SCREEN_WIDTH*10+4  +50,128+ 4 +9,BG_WHITE);
                    putch(SCREEN_WIDTH*10+5  +50,128+ 5 +9,BG_WHITE);


                    // printfSCR(SCREEN_WIDTH*(8+3),BG_WHITE,  "            -\n");
                    // printfSCR(SCREEN_WIDTH*9,BG_WHITE,  "            -It is the most complex part of a computer\n");
                    // printfSCR(SCREEN_WIDTH*10,BG_WHITE, "            -It is the most expensive part of a computer\n");
                break;

                case 11:
                    for(i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
                        putch(i,' ',BG_BLUE);
                    }
                    printfSCR(SCREEN_WIDTH*3+28,BG_WHITE,  "RISC-Y");
                    printfSCR(SCREEN_WIDTH*7+5,BG_BLUE|15,  "An error has occured. To continue:");
                    
                    
                    printfSCR(SCREEN_WIDTH*9+5,BG_BLUE|15,  "Press CTR+ALT+DEL to restart the Computer If you do this,");
                    printfSCR(SCREEN_WIDTH*10+5,BG_BLUE|15,  "you will loose all unsaved work in other applications");
                    
                    printfSCR(SCREEN_WIDTH*12+5,BG_BLUE|15,  "Error: 69 : 0123 : DEADBEEF");

                    printfSCR(SCREEN_WIDTH*16+18,BG_BLUE|15,  "Press any key to continue_");
                break;
            default:
                break;
            }
        }
        printfSCR(SCREEN_WIDTH*18+SCREEN_WIDTH-6,BG_WHITE,"RISC-Y");

        if((currentFrame&1)==0){
            direction = 4;
            if(keys[0] == 'w'){
                direction = 0;
            }
            else if(keys[0] == 's'){
                direction = 1;
            }
            else if(keys[0] == 'a'){
                direction = 2;
            }
            else if(keys[0] == 'd'){
                direction = 3;
            }
            else if(keys[0] == 'R'){

                    character00.enable=0;
                    character01.enable=0;
                ClearScreenRightToLeft();
                slide++;
                renderedFrame=0;
            }
            else if(keys[0] == 'L'){

                    character00.enable=0;
                    character01.enable=0;
                ClearScreenRightToLeft();
                if(slide>0)
                    slide--;
                renderedFrame=0;
            }
            else if(keys[0] == 'q'){
                break;
            }
        }
        // putch(62,keys[0],BG_WHITE);
        if(((clock2-clock)>>1)>100000){
            testNum++;
            if(testNum>'9'){
                testNum = '0';
            }
            clock = getClock1M();
            // clock2 = clock;
            if(direction == 0){
                charUp00.currentFrame++;
                charUp01.currentFrame++;
                currentFrame = charUp00.currentFrame;
                if(charUp00.currentFrame>=charUp00.frameCount){
                    charUp00.currentFrame = 0;
                    charUp01.currentFrame = 0;
                }
                character00.y-=4;
                character01.y-=4;
                if(character00.y<0){
                    character00.y = 300;
                    character01.y = 300;
                }
                WriteSprite(character00.id, charUp00.frames[charUp00.currentFrame]);
                WriteSprite(character01.id, charUp01.frames[charUp01.currentFrame]);
            }
            else if(direction==1){
                charDown00.currentFrame++;
                charDown01.currentFrame++;
                currentFrame = charDown00.currentFrame;
                if(charDown00.currentFrame>=charDown00.frameCount){
                    charDown00.currentFrame = 0;
                    charDown01.currentFrame = 0;
                }
                character00.y+=4;
                character01.y+=4;
                if(character00.y>300){
                    character00.y = 0;
                    character01.y = 0;
                }
                WriteSprite(character00.id, charDown00.frames[charDown00.currentFrame]);
                WriteSprite(character01.id, charDown01.frames[charDown01.currentFrame]);
            }
            else if(direction==2){
                charLeft00.currentFrame++;
                charLeft01.currentFrame++;
                currentFrame = charLeft00.currentFrame;
                if(charLeft00.currentFrame>=charLeft00.frameCount){
                    charLeft00.currentFrame = 0;
                    charLeft01.currentFrame = 0;
                }
                character00.x-=4;
                character01.x-=4;
                if(character00.x<0){
                    character00.x = 500;
                    character01.x = 508;
                }
                WriteSprite(character00.id, charLeft00.frames[charLeft00.currentFrame]);
                WriteSprite(character01.id, charLeft01.frames[charLeft01.currentFrame]);
            }
            else if(direction==3){
                charRight00.currentFrame++;
                charRight01.currentFrame++;
                currentFrame = charRight00.currentFrame;
                if(charRight00.currentFrame>=charRight00.frameCount){
                    charRight00.currentFrame = 0;
                    charRight01.currentFrame = 0;
                }
                character00.x+=4;
                character01.x+=4;
                if(character00.x>508){
                    character00.x = 0;
                    character01.x = 8;
                }
                WriteSprite(character00.id, charRight00.frames[charRight00.currentFrame]);
                WriteSprite(character01.id, charRight01.frames[charRight01.currentFrame]);
            }
            SetAttributes(character00.id, character00.x, character00.y, character00.enable, character00.sprite);
            SetAttributes(character01.id, character01.x, character01.y, character01.enable, character01.sprite);
        }
    }

}