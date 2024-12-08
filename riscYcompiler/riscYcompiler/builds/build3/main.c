#include <stdarg.h> 
#include "riscYstdio.h"
#define USB 0x10000000
#define WaitTime 0x1000

#define paddle_width 8
#define paddle_height 16
#define ball_width 8
#define ball_height 8

void WriteSprite(int spriteNum, char *sprite) {
    unsigned short *screenSprites = (unsigned short *)0x88001000;
    for (int i = 0; i < 32; i++) {
        screenSprites[i + spriteNum * 32] = sprite[i];
    }
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

unsigned int getUSBint() {
    volatile unsigned int *usb = (volatile unsigned int *)USB;
    return usb[0];
}

typedef struct object {
    char id;
    int x;    // Fixed-point Q8.8 format
    int y;    // Fixed-point Q8.8 format
    int vx;   // Fixed-point Q8.8 format
    int vy;   // Fixed-point Q8.8 format
    char sprite;
    char enable;
} object;

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
    char ball[] = {
        0xF0, 0x0F,
        0xFC, 0x3F,
        0xFF, 0xFF,
        0xFF, 0xFF,
        0xFF, 0xFF,
        0xFF, 0xFF,
        0xFC, 0x3F,
        0xF0, 0x0F,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00
    };

        char allBlack[] = {
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00,
        0x00
    };


    char allWhite[] = {
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff,
        0xff
    };

    char brick[] = {
        0xAA, 0xA2,
        0x55, 0x51,
        0x55, 0x51,
        0x00, 0x00,
        0x2A, 0xAA,
        0x15, 0x55,
        0x15, 0x55,
        0x00, 0x00,
        0xAA, 0x8A,
        0x55, 0x45,
        0x55, 0x45,
        0x00, 0x00,
        0xA2, 0xAA,
        0x51, 0x55,
        0x51, 0x55,
        0x00, 0x00
    };

    char lineSeperator[] ={
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x3C, 0x00,
        0x3C, 0x00,
        0x3C, 0x00,
        0x3C, 0x00,
        0x3C, 0x00,
        0x3C, 0x00,
        0x3C, 0x00,
        0x3C, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00,
        0x00, 0x00
    };

    for(int i=0; i<16; i++){
        WriteSprite(i, allBlack);
    }

    WriteSprite(0, ball);
    WriteSprite(2, allWhite);
    WriteSprite(3, allBlack);
    WriteSprite(4, lineSeperator);
    WriteSprite(5, brick);

    for(int i=0; i<SCREEN_WIDTH; i++){
        for(int j=0; j<SCREEN_HEIGHT; j++){
            putch(j*64+i,128+3,0);
        }
    }
    //top wall
    for (int i = 0; i < 64; i++) {
        putch(i, 128 + 5, 0);
    }
    //bottom wall
    for (int i = 0; i < 64; i++) {
        putch((18 * 64) + i, 128 + 5, 15);
    }
    // line seperator
    for(int i=1; i<18; i++){
            putch(i*64+32,128+4,0);
    }
    int usbout = 0;
    char keys[4] = {0, 0, 0, 0};

    object ballObj;
    ballObj.id = 0;
    ballObj.x = 30 << 8;     // Convert to fixed-point format
    ballObj.y = 30 << 8;     // Convert to fixed-point format
    ballObj.vx = 256;        // Initial velocity (1 pixel per move)
    ballObj.vy = 0;          // Start moving horizontally
    ballObj.sprite = 0;
    ballObj.enable = 1;

    // Left paddle parts
    object paddleL1;
    paddleL1.id = 5;
    paddleL1.x = 0 << 8;
    paddleL1.y = 150 << 8;
    paddleL1.sprite = 2;
    paddleL1.enable = 1;

    object paddleL2;
    paddleL2.id = 6;
    paddleL2.x = 0 << 8;
    paddleL2.y = (150 + paddle_height) << 8;  // Positioned below paddleL1
    paddleL2.sprite = 2;
    paddleL2.enable = 1;

    // Right paddle parts
    object paddleR1;
    paddleR1.id = 3;
    paddleR1.x = (512 - 8) << 8;
    paddleR1.y = 150 << 8;
    paddleR1.sprite = 2;
    paddleR1.enable = 1;

    object paddleR2;
    paddleR2.id = 4;
    paddleR2.x = (512 - 8) << 8;
    paddleR2.y = (150 + paddle_height) << 8;  // Positioned below paddleR1
    paddleR2.sprite = 2;
    paddleR2.enable = 1;

    SetAttributes(ballObj.id, ballObj.x >> 8, ballObj.y >> 8, ballObj.enable, ballObj.sprite);
    SetAttributes(paddleL1.id, paddleL1.x >> 8, paddleL1.y >> 8, paddleL1.enable, paddleL1.sprite);
    SetAttributes(paddleL2.id, paddleL2.x >> 8, paddleL2.y >> 8, paddleL2.enable, paddleL2.sprite);
    SetAttributes(paddleR1.id, paddleR1.x >> 8, paddleR1.y >> 8, paddleR1.enable, paddleR1.sprite);
    SetAttributes(paddleR2.id, paddleR2.x >> 8, paddleR2.y >> 8, paddleR2.enable, paddleR2.sprite);

    short scoreLeft=0;
    short scoreRight=0;

    printfSCR(SCREEN_WIDTH*2 + 20, 15, "The RISC-V Pong game");
    printfSCR(SCREEN_WIDTH*5 + 20, 15, "Press Space to Start");

    while(1){
        usbout = getUSBint();
        keys[0] = USBParser((usbout >> 24) & 0xFF);

        if(keys[0] == ' '){
            break;
        }
    }

    for(volatile int i=0; i<WaitTime*100; i++);
    for(int i=0; i<SCREEN_WIDTH; i++){
        for(int j=0; j<SCREEN_HEIGHT; j++){
            putch(j*64+i,128+3,0);
        }
    }
    //top wall
    for (int i = 0; i < 64; i++) {
        putch(i, 128 + 5, 0);
    }
    //bottom wall
    for (int i = 0; i < 64; i++) {
        putch((18 * 64) + i, 128 + 5, 15);
    }
    // line seperator
    for(int i=1; i<18; i++){
            putch(i*64+32,128+4,0);
    }

    while (1) {

        printfSCR(SCREEN_WIDTH*2 + 20, 15, "%d   ", scoreLeft);
        printfSCR(SCREEN_WIDTH*2 + 44, 15, "%d   ", scoreRight);

        // active waiting
        for (volatile int i = 0; i < WaitTime * 3; i++);


        if (ballObj.vy > 512) ballObj.vy = 512;
        if (ballObj.vy < -512) ballObj.vy = -512;
        usbout = getUSBint();
        keys[3] = USBParser(usbout & 0xFF);
        keys[2] = USBParser((usbout >> 8) & 0xFF);
        keys[1] = USBParser((usbout >> 16) & 0xFF);
        keys[0] = USBParser((usbout >> 24) & 0xFF);
        for (int key_num = 0; key_num < 4; key_num++) {
            if (keys[key_num] != 0) {
                if (keys[key_num] == 'a') {
                    paddleL1.y -= 256;  // Move up by 1 pixel
                    paddleL2.y -= 256;
                    if (paddleL1.y < (16 << 8)) {
                        paddleL1.y = 16 << 8;
                        paddleL2.y = paddleL1.y + (paddle_height << 8);
                    }
                } else if (keys[key_num] == 'z') {
                    paddleL1.y += 256;  // Move down by 1 pixel
                    paddleL2.y += 256;
                    if ((paddleL2.y >> 8) + paddle_height > 300 - 14) {
                        paddleL2.y = ((300 - 14 - paddle_height) << 8);
                        paddleL1.y = paddleL2.y - (paddle_height << 8);
                    }
                } else if (keys[key_num] == 'U') {
                    paddleR1.y -= 256;  // Move up by 1 pixel
                    paddleR2.y -= 256;
                    if (paddleR1.y < (16 << 8)) {
                        paddleR1.y = 16 << 8;
                        paddleR2.y = paddleR1.y + (paddle_height << 8);
                    }
                } else if (keys[key_num] == 'D') {
                    paddleR1.y += 256;  // Move down by 1 pixel
                    paddleR2.y += 256;
                    if ((paddleR2.y >> 8) + paddle_height > 300 - 14) {
                        paddleR2.y = ((300 - 14 - paddle_height) << 8);
                        paddleR1.y = paddleR2.y - (paddle_height << 8);
                    }
                }
            }
        }

        // Update ball position
        ballObj.x += ballObj.vx;
        ballObj.y += ballObj.vy;

        // Collision with top wall
        if ((ballObj.y >> 8) <= 16) {
            ballObj.y = 17 << 8;
            ballObj.vy = -ballObj.vy;
            if (ballObj.vy == 0) {
                ballObj.vy = 256; // Assign a small downward velocity
            }
        }

        // Collision with bottom wall
        if ((ballObj.y >> 8) >= (300 - 16 -ball_height)) {
            ballObj.y = (300 - 16 -ball_height) << 8;
            ballObj.vy = -ballObj.vy;
            if (ballObj.vy == 0) {
                ballObj.vy = -256; // Assign a small upward velocity
            }
        }

        // Collision with left paddle (check both parts)
        if ((ballObj.x >> 8) <= (paddleL1.x >> 8) + paddle_width) {
            // Check collision with paddleL1
            if ((ballObj.y >> 8) + ball_height >= (paddleL1.y >> 8) &&
                (ballObj.y >> 8) <= (paddleL1.y >> 8) + paddle_height) {

                ballObj.x = ((paddleL1.x >> 8) + paddle_width) << 8;  // Adjust position
                ballObj.vx = -ballObj.vx;

                // Adjust vy based on where the ball hit the paddle
                int paddle_center = (paddleL1.y >> 8) + (paddle_height >> 1);
                int hit_pos = (ballObj.y >> 8) - paddle_center;
                ballObj.vy += hit_pos << 4;
            }
            // Check collision with paddleL2
            else if ((ballObj.y >> 8) + ball_height >= (paddleL2.y >> 8) &&
                     (ballObj.y >> 8) <= (paddleL2.y >> 8) + paddle_height) {

                ballObj.x = ((paddleL2.x >> 8) + paddle_width) << 8;  // Adjust position
                ballObj.vx = -ballObj.vx;

                int paddle_center = (paddleL2.y >> 8) + (paddle_height >> 1);
                int hit_pos = (ballObj.y >> 8) - paddle_center;
                ballObj.vy += hit_pos << 4;
            }
        }

        // Collision with right paddle (check both parts)
        if ((ballObj.x >> 8) + ball_width >= (paddleR1.x >> 8)) {
            // Check collision with paddleR1
            if ((ballObj.y >> 8) + ball_height >= (paddleR1.y >> 8) &&
                (ballObj.y >> 8) <= (paddleR1.y >> 8) + paddle_height) {

                ballObj.x = ((paddleR1.x >> 8) - ball_width) << 8;  // Adjust position
                ballObj.vx = -ballObj.vx;

                int paddle_center = (paddleR1.y >> 8) + (paddle_height >> 1);
                int hit_pos = (ballObj.y >> 8) - paddle_center;
                ballObj.vy += hit_pos << 4;
            }
            // Check collision with paddleR2
            else if ((ballObj.y >> 8) + ball_height >= (paddleR2.y >> 8) &&
                     (ballObj.y >> 8) <= (paddleR2.y >> 8) + paddle_height) {

                ballObj.x = ((paddleR2.x >> 8) - ball_width) << 8;  // Adjust position
                ballObj.vx = -ballObj.vx;

                int paddle_center = (paddleR2.y >> 8) + (paddle_height >> 1);
                int hit_pos = (ballObj.y >> 8) - paddle_center;
                ballObj.vy += hit_pos << 4;
            }
        }

        // Limit ball's vertical speed
        if (ballObj.vy > 512) ballObj.vy = 512;
        if (ballObj.vy < -512) ballObj.vy = -512;

       if ((ballObj.x >> 8) <= 0) {
            scoreRight++;
            ballObj.x = (500) << 8;
            ballObj.y = 150 << 8;
            ballObj.vx = ballObj.vx;
            ballObj.vy = 256; // Assign a small initial vertical velocity
            for(volatile int i=0; i<WaitTime*100; i++);

        }
        if ((ballObj.x >> 8) >= (512 - 8)) {
            scoreLeft++;
            ballObj.x = 0 << 8;
            ballObj.y = 150 << 8;
            ballObj.vx = ballObj.vx;
            ballObj.vy = -256; // Assign a small initial vertical velocity
            for(volatile int i=0; i<WaitTime*100; i++);
        }

        // Update attributes for rendering
        SetAttributes(ballObj.id, ballObj.x >> 8, (ballObj.y-4) >> 8, ballObj.enable, ballObj.sprite);
        SetAttributes(paddleL1.id, paddleL1.x >> 8, paddleL1.y >> 8, paddleL1.enable, paddleL1.sprite);
        SetAttributes(paddleL2.id, paddleL2.x >> 8, paddleL2.y >> 8, paddleL2.enable, paddleL2.sprite);
        SetAttributes(paddleR1.id, paddleR1.x >> 8, paddleR1.y >> 8, paddleR1.enable, paddleR1.sprite);
        SetAttributes(paddleR2.id, paddleR2.x >> 8, paddleR2.y >> 8, paddleR2.enable, paddleR2.sprite);
    }

    return 0;
}
