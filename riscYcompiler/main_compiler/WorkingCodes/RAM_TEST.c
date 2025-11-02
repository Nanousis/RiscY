

#include <stdarg.h> 
#include "riscYstdio.h"
#include <stdint.h>
#define RAM_LOCATION 0x70000000
#define TESTING_SIZE (1 << 23) // 8MB
#define PRINT_INTERVAl 100000
uint32_t rgb_to_rgb565(uint8_t r, uint8_t g, uint8_t b) {
    // Convert 8-bit RGB to 5/6/5 bits respectively
    uint32_t r5 = (r >> 3) & 0x1F;  // 5 bits
    uint32_t g6 = (g >> 2) & 0x3F;  // 6 bits
    uint32_t b5 = (b >> 3) & 0x1F;  // 5 bits
    uint32_t color = (r5 << 11) | (g6 << 5) | b5;

    return color<<16 | color; // Return as 32-bit value with RGB565 in both halves
}
int main() {
    
    int counter2=0;
    volatile int *ram = (volatile int *) RAM_LOCATION;
    // This loop writes to the RAM in 32-bit chunks
    printf("Testing ram write of size %x\n", TESTING_SIZE);
    for(int i = 0; i<TESTING_SIZE/4; i++){
        if(counter2++ >PRINT_INTERVAl){
            counter2 = 0;
            uart_printf("Writing to ram[%x]\r\n", i);
            // printf("Writing to ram[%x]\n", i);
        }
        ram[i] = i;
    }
    counter2 = 0;
    printf("Testing ram read\n");
    uart_printf("Testing ram read\n");
    // This loop reads the RAM in 32-bit chunks
    for(int i = 0; i<TESTING_SIZE/4; i++){
        if(counter2++ >PRINT_INTERVAl){
            counter2 = 0;
            uart_printf("Reading from ram[%x]\r\n", i);
            // printf("Reading from ram[%x]\n", i);
        }
        if(ram[i] != i){
            uart_printf("Error at index %x: expected %x, got %x\r\n", i, i, ram[i]);
            printf("Error at index %x: expected %x, got %x\n", i, i, ram[i]);
        }
    }

    uart_printf("TESTING CORRECT\n");
    printf("TESTING CORRECT\n");

    while(1);

}