    .section .text
    .globl _start
_start:
    li sp, 256          /* Initialize stack pointer */
    call main                  /* Call main function */
    j .                        /* Infinite loop after main returns */

    .section .bss
    .space 1024                /* Allocate space for .bss section */
_stack_top:
