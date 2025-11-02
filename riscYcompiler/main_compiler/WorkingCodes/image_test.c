

#include <stdarg.h> 
#include "riscYstdio.h"
#include <stdint.h>
#define RAM_LOCATION 0x80010000
#define FLASH_READY 0x8B000000
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C

#define MAX_WIDTH 800
#define MAX_HEIGHT 480

#define CHECKERS_WIDTH 20

unsigned int readFlash(unsigned int adress){
    char *flashReady = (char *)FLASH_READY;
    char *flashRen = (char *)FLASH_REN;
    unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
    unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
    unsigned int data = 0;
    *flashAdress = adress;
    *flashRen = 1;
    // while(*flashReady == 0);
    for(volatile int j=0; j<200; j++);
    data = *flashData;
    *flashRen = 0;
    return data;
}
uint16_t rgb_to_rgb565(uint8_t r, uint8_t g, uint8_t b) {
    // Convert 8-bit RGB to 5/6/5 bits respectively
    uint16_t r5 = (r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;

    return color; // Return as 16-bit value with RGB565
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

unsigned int getFileStartAddressByName(const char *filename) {
    unsigned int tempAddress = 0;
    unsigned int readData;

    uart_printf("Searching for file: %s\r\n", filename);

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
    unsigned int programCount = readFlash(tempAddress);
    uart_printf("Program count: %d\r\n", programCount);
    tempAddress += 1;

    // For each program
    for (int i = 0; i < programCount; i++) {
        uart_printf("Checking program %d...\r\n", i);

        // Compare filename
        int match = 1;
        int pos = 0;
        char c_flash = 1, c_input = 1;

        while (c_flash != 0 || c_input != 0) {
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
            unsigned int startAddr = readFlash(tempAddress);
            uart_printf("  Match found! Start address: 0x%x\r\n", startAddr);
            return startAddr;
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

void ReadImage(char *filename) {
    unsigned int file_address = getFileStartAddressByName(filename);
    if(file_address == 0xFFFFFFFF) {
        uart_printf("Error: File not found.\r\n");
        return;
    }
    uart_printf("File found at address: 0x%x\r\n", file_address);

    volatile uint32_t *ram32 = (volatile uint32_t *) RAM_LOCATION;
    uint16_t pixel1;
    uint16_t pixel2;
    uint32_t width = readFlash(file_address); // Read width
    uint32_t height = readFlash(file_address + 4); // Read height

    if(width > MAX_WIDTH)
        width = MAX_WIDTH; // Limit width to MAX_WIDTH
    if(height > MAX_HEIGHT)
        height = MAX_HEIGHT; // Limit height to MAX_HEIGHT
    uart_printf("Image dimensions: %d x %d\r\n", width, height);
    file_address += 8; // Move past width and height

    for(int row = 0; row < height; row++) {
        for(int col = 0; col < width/2; col++) {
            unsigned int word = readFlash(file_address + (width*2)*row + col*4); // align to word
            pixel2 = word & 0xFFFF; // Get second 16 bits
            pixel1 = (word >> 16) & 0xFFFF; // Get first 16 bits
            ram32[row * MAX_WIDTH/2 + col] = (pixel1<<16) | pixel2; // Store in RAM
        }
        // uart_printf("Row %d loaded\r\n", row);
    }
}
int main() {
    
    int i = 0;
    uint16_t color = 0;
    int counter = 0;
    volatile uint16_t *ram = (volatile uint16_t *) RAM_LOCATION;
    volatile unsigned int *screenChange= (volatile unsigned int *) 0x88002800;
    volatile unsigned int *frame_buffer_addr= (volatile unsigned int *) 0x88002804;

    uint8_t red=255;
    uint8_t green=255;
    uint8_t blue=255;
    char keep_track = 0;
    char black = 0;
    frame_buffer_addr[0] = (uint32_t)ram;
    color= rgb_to_rgb565(red, green, blue);
    keep_track = 0;
    black = 0;
    uart_printf("Starting checkerboard pattern with color.\r\n");

    // for(i = 0; i <=MAX_HEIGHT; i++){
    //     checker_pattern((uint16_t *)ram, color, black, i); // Fill the screen with the initial color
    //     if(++keep_track >=CHECKERS_WIDTH ) {
    //         keep_track = 0;
    //         black = !black; // Toggle color
    //     }
    // }
    screenChange[0] = 0x00000001; // Trigger screen change
    uint8_t color_state=0;
    while(1){
        if(getButtonLeft()){
            uart_printf("Loading image riscy.img\r\n");
            ReadImage("riscY.img");
            // screenChange[0] = 0x00000001; // Trigger screen change
            // uart_printf("Screen change triggered ON\r\n");
        }
        if(getButtonRight()){
            uart_printf("Loading image Lenna.img\r\n");
            ReadImage("Lenna.img");
            // screenChange[0] = 0x00000000; // Trigger screen change
            // uart_printf("Screen change triggered OFF\r\n");
        }
        if(getButtonDown()){
            red = blue = green = 0; // Reset colors
            if(color_state==0){
                keep_track = 0;
                black = 0;
           for(i = MAX_WIDTH; i>=0; i--){
                    checker_pattern((uint16_t *)ram+(MAX_WIDTH*MAX_HEIGHT*2), rgb_to_rgb565(0, 0, i),black,i);
                    if(++keep_track >=CHECKERS_WIDTH ) {
                        keep_track = 0;
                        black = !black; // Toggle color
                    }
                }
                frame_buffer_addr[0] = (uint32_t)ram+(MAX_WIDTH*MAX_HEIGHT); // Update frame buffer address
                color_state = 1; // Change state to next color
            }
            else if(color_state==1){
                keep_track = 0;
                black = 0;
                for(i = MAX_WIDTH; i>=0; i--){
                    checker_pattern((uint16_t *)ram, rgb_to_rgb565(0, i, 0),black,i);
                    if(++keep_track >=CHECKERS_WIDTH ) {
                        keep_track = 0;
                        black = !black; // Toggle color
                    }
                }
                frame_buffer_addr[0] = (uint32_t)ram;
                color_state = 2; // Change state to next color
            }
            else if(color_state==2){
                keep_track = 0;
                black = 0;
                for(i = MAX_WIDTH; i>=0; i--){
                    checker_pattern((uint16_t *)ram+(MAX_WIDTH*MAX_HEIGHT*2), rgb_to_rgb565(i, 0, 0),black,i);
                    if(++keep_track >=CHECKERS_WIDTH ) {
                        keep_track = 0;
                        black = !black; // Toggle color
                    }
                }
                frame_buffer_addr[0] = (uint32_t)ram+(MAX_WIDTH*MAX_HEIGHT);
                color_state = 3; // Change state to next color
            }
            else{
                keep_track = 0;
                black = 0;
                for(i = MAX_WIDTH; i>=0; i--){
                    checker_pattern((uint16_t *)ram, rgb_to_rgb565(i, i, i),black,i);
                    if(++keep_track >=CHECKERS_WIDTH ) {
                        keep_track = 0;
                        black = !black; // Toggle color
                    }
                }
                color_state = 0; // Reset state
            }
            uart_printf("PREVIOUS COLOR: %x\r\n",ram[0]);
            uart_printf("Color changed to: R:%d G:%d B:%d\r\n", red, green, blue);
            uart_printf("New Color 0x%x\r\n",color);
            uart_printf("RAM[3] set to: 0x%x\r\n", ram[3]);
        }
    }
}