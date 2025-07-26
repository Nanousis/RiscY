

#include <stdarg.h> 
#include <stdint.h>
#include "riscYstdio.h"

#define TEMP_RAM 0x70000000

#define RAM_LOCATION 0x80000000
#define SECOND_STAGE_LOCATION 0x00800000
#define SECOND_STAGE_SIZE 2048
#define SECOND_STAGE_OFFSET 0x250000

int main() {

    int* temp_ram = (int*)TEMP_RAM;
    int* ram= (int*)RAM_LOCATION;

    for(int i = 0; i < SECOND_STAGE_SIZE; i++) {
        ram[i] = temp_ram[i];
    }

    void (*jump_to_program)() = (void (*)())(RAM_LOCATION);
    // Call the function pointer to jump to the loaded program
    jump_to_program();
}


