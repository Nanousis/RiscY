
.data
hello_str:
    .asciz "First Stage!"
.align 4           # Align to 2^4 = 16 bytes
_stack:
    .space 256   # 256B stack 
.section .text
.globl _start
.equ SECOND_STAGE,  0x250000
.equ FLASH,         0x8B000000
.equ FLASH_READY,   0x0
.equ FLASH_REN,     0x1
.equ FLASH_WEN,     0x2
.equ FLASH_ADDRESS, 0x4
.equ FLASH_DATA_IN, 0x8
.equ FLASH_DATA_OUT,0xC

_start:
    la sp, _stack
    addi sp, sp, 256
    lui a0, %hi(SECOND_STAGE)
    addi a0, a0, %lo(SECOND_STAGE)
    call _readFlash
    addi sp, sp, -12
    sw x0, 8(sp)
    sw a0, 0(sp)

    call _putc
    lui a0, %hi(SECOND_STAGE)
    addi a0, a0, %lo(SECOND_STAGE)
    addi a0, a0, 4
    call _readFlash
    sw a1, 4(sp)
    addi a1, sp, 0
    call print_string
    li a0, 65
    li a1, 'F'
    call _putc
    ; la a0, hello_str       # Load address of the string into a0
    ; call print_string      # Call the function
    loop:
        j loop


print_string:
    addi sp, sp, -12
    sw s0, 0(sp)
    sw s1, 4(sp)
    sw ra, 8(sp)
    addi s0, a0, 0 
    li s1, 0
    iterate_chars:
        lb a1, 0(s0)          # Load byte from string
        addi a0, s1, 0
        beq a1, x0, end_print # If null terminator, we're done
        call _putc            # Print character function
        addi s0, s0, 1        # Move to next char
        addi s1, s1, 1        # Move to next char
        j     iterate_chars
    end_print:
        lw s0, 0(sp)
        lw s1, 4(sp)
        lw ra, 8(sp)
        addi sp, sp, 12
        ret
# Writes a character in the screen
# Address is a0 and Char is a1
_putc:
    lui t2, 0x88000       # Load Display address
    slli a0, a0, 1
    add t2, t2, a0
    li t0, 0xf
    sll t0, t0, 8
    or t0, t0, a1
    sh t0, 0(t2)         # Write character to display
    ret

# read from flash at addres "a0"
_readFlash:
    lui t3, %hi(FLASH)
    addi t3, t3, %lo(FLASH_ADDRESS)
    # set address location
    sw a0, 0(t3)
    
    lui t3, %hi(FLASH)
    addi t3, t3, %lo(FLASH_REN)
    li t0, 1
    # Set the flash to read
    sw t0,0(t3) 
    nop
    # wait for data to be ready
    lui t3, %hi(FLASH)
    addi t3, t3, %lo(FLASH_READY) # not needed
    li t0, 100
    wait_for_data:
        addi t0, t0,-1
        beq t0, zero, wait_for_data

      #  lw a1, 0(t3)
       # beq a1, zero, wait_for_data
    lui t3, %hi(FLASH)
    addi t3, t3, %lo(FLASH_DATA_OUT) # not needed
    lw a1, 0(t3)
    
    ret
    
