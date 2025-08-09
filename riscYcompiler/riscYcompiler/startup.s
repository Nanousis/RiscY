.section .text
.global _start

_start:
    la sp, _stack_top    # Initialize stack pointer to top of RAM
    addi sp, sp, -4      # Adjust stack pointer
    sw ra, 0(sp)         # Save return address
    call main            # Call main function
    lw ra, 0(sp)         # Restore return address
    jalr ra               # Jump to return address