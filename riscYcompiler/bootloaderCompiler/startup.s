.section .text
.global _start

_start:
    la sp, _stack_top    # Initialize stack pointer to top of RAM
    call main            # Call main function
    j _exit              # Jump to exit (infinite loop)

_putc:
    lui t2, 0x88000       # Load Display address
    add t2, t2, a0
    li t0, 0xf
    sll t0, t0, 8
    or t0, t0, a1
    sh t0, 0(t2)         # Write character to display
    ret

_exit:
    li a0, 0x00
    li a1, 'E'
    jal _putc
    addi a0, a0, 2
    li a1, 'X'
    jal _putc
    addi a0, a0, 2
    li a1, 'I'
    jal _putc
    addi a0, a0, 2
    li a1, 'T'
    jal _putc

    j _exit              # Infinite loop to prevent exiting
