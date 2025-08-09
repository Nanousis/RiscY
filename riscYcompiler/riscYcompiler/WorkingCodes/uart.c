#include <stdint.h>
#include "riscYstdio.h"

void main() {
  uart_printf("Lines drawn\r\n");
  char received_char;
  while(1){
    received_char = uart_read_byte();
    uart_printf("Received character: %c\r\n", received_char);
  }

}