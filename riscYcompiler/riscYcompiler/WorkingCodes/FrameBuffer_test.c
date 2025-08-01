

#include <stdarg.h> 
#include "riscYstdio.h"
#include <stdint.h>

#define MAX_WIDTH 800
#define MAX_HEIGHT 480
// keep in mind when changing these values that they are halfwords.
// This means that you need to multiply the width and height by 2 to get the correct size in bytes.
#define RAM_LOCATION (0x80000000 + MAX_WIDTH * MAX_HEIGHT)
#define RAM_LOCATION2 (0x80000000 + MAX_WIDTH * MAX_HEIGHT*4)

#define CHECKERS_WIDTH 20

uint16_t rgb_to_rgb565(uint8_t r, uint8_t g, uint8_t b) {
    // Convert 8-bit RGB to 5/6/5 bits respectively
    uint16_t r5 = (r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;

    return color; // Return as 16-bit value with RGB565
}

void gradient_pattern(uint16_t *ram) {
    uint16_t color = 0;
    int red = 0, green = 0, blue = 0;
    for(int i = 0; i < MAX_WIDTH; i++) {
        if(blue < 255)
            blue++;
        else if(green < 255)
            green++;
        else if(red < 255)
            red++;
        color = rgb_to_rgb565(red, (red > 0) ? 0 : green, (green > 0) ? 0 : blue);
        // uart_printf("Color: R:%d G:%d B:%d\r\n", red, (red > 0) ? 0 : green, (green > 0) ? 0 : blue);
        ram[i] = color; // Fill the screen with the current color
    }
}
void checker_pattern(uint16_t *ram, uint16_t color, int black, int iteration) {
    char keep_track = 0;
    int address = iteration * MAX_WIDTH; // Calculate address based on iteration
    for(int i = 0; i < MAX_WIDTH; i++) {
        if(black) {
            ram[address + i] = 0x0000; // Black
        } else {
            ram[address + i] = color; // Color
        }
        if(++keep_track >=CHECKERS_WIDTH ) {
            keep_track = 0;
            black = !black; // Toggle color
        }
    }
}
int main() {
    
    int i = 0;
    uint16_t color = 0;
    int counter = 0;
     uint16_t *ram = ( uint16_t *) RAM_LOCATION;
     unsigned int *screenChange= ( unsigned int *) 0x88002800;
     unsigned int *frame_buffer_addr= ( unsigned int *) 0x88002804;
    frame_buffer_addr[0] = (uint32_t)ram;
    uint8_t red=255;
    uint8_t green=255;
    uint8_t blue=255;
    char keep_track = 0;
    char black = 0;
    color= rgb_to_rgb565(red, green, blue);
    keep_track = 0;
    black = 0;
    for(i = 0; i <MAX_HEIGHT; i++){
        checker_pattern((uint16_t *)ram, color, black, i); // Fill the screen with the initial color
        if(++keep_track >=CHECKERS_WIDTH ) {
            keep_track = 0;
            black = !black; // Toggle color
        }
    }
    // gradient_pattern((uint16_t *)ram); // Fill the screen with a gradient pattern
    // uart_printf("Color: R:%d G:%d B:%d\r\n", red, green, blue);

    screenChange[0] = 0x00000001; // Trigger screen change
    uint8_t color_state=0;
    while(1){
        if(getButtonLeft()){
            screenChange[0] = 0x00000001; // Trigger screen change
            uart_printf("Screen change triggered ON\r\n");
        }
        if(getButtonRight()){
            screenChange[0] = 0x00000000; // Trigger screen change
            uart_printf("Screen change triggered OFF\r\n");
        }
        if(getButtonDown()){
            red = blue = green = 0; // Reset colors
            if(color_state==0){
                ram = ( uint16_t *) RAM_LOCATION; // Change RAM location for next pattern
                keep_track = 0;
                black = 0;
                for(i = 0; i <MAX_HEIGHT; i++){
                    checker_pattern((uint16_t *)ram, rgb_to_rgb565(0, 0, i),black,i);
                    if(++keep_track >=CHECKERS_WIDTH ) {
                        keep_track = 0;
                        black = !black; // Toggle color
                    }
                }
                color_state = 1; // Change state to next color
            }
            else if(color_state==1){
                ram = ( uint16_t *) RAM_LOCATION2; // Change RAM location for next pattern
                keep_track = 0;
                black = 0;
                for(i = 0; i <MAX_HEIGHT; i++){
                    checker_pattern((uint16_t *)ram, rgb_to_rgb565(0, i, 0),black,i);
                    if(++keep_track >=CHECKERS_WIDTH ) {
                        keep_track = 0;
                        black = !black; // Toggle color
                    }
                }
                color_state = 2; // Change state to next color
            }
            else if(color_state==2){
                ram = ( uint16_t *) RAM_LOCATION; // Change RAM location for next pattern
                keep_track = 0;
                black = 0;
                for(i = 0; i <MAX_HEIGHT; i++){
                    checker_pattern((uint16_t *)ram, rgb_to_rgb565(i, 0, 0),black,i);
                    if(++keep_track >=CHECKERS_WIDTH ) {
                        keep_track = 0;
                        black = !black; // Toggle color
                    }
                }
                color_state = 3; // Change state to next color
            }
            else{
                ram = ( uint16_t *) RAM_LOCATION2; // Change RAM location for next pattern
                keep_track = 0;
                black = 0;
                for(i = 0; i <MAX_HEIGHT; i++){
                    checker_pattern((uint16_t *)ram, rgb_to_rgb565(i, i, i),black,i);
                    if(++keep_track >=CHECKERS_WIDTH ) {
                        keep_track = 0;
                        black = !black; // Toggle color
                    }
                }
                color_state = 0; // Reset state
            }
            frame_buffer_addr[0] = (uint32_t)ram; // Update frame buffer address

            // uart_printf("PREVIOUS COLOR: %x\r\n",ram[0]);
            // uart_printf("Color changed to: R:%d G:%d B:%d\r\n", red, green, blue);
            // uart_printf("New Color 0x%x\r\n",color);
            // uart_printf("RAM[3] set to: 0x%x\r\n", ram[3]);
            // for(int j = 0; j<WaitTime*100; j++); // Wait for a while
        }
    }
}