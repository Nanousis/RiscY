#include <stdint.h>
#include "riscYstdio.h"
#include "tinyprintf.h"

int main() {
    init_printf(NULL, tfp_putc);      // set output sink
    tfp_printf("Lines drawn\r\n");
    char received_char;
    while(1){
        received_char = uart_read_byte();
        tfp_printf("Received character: %c\r\n", received_char);
    }

}