MTIME       = 0x0200BFF8         
MTIMECMP    = 0x02004000   

.section .text
.global _start
.global trap_vector

_start:
    la sp, _stack_top    # Initialize stack pointer to top of RAM
    addi sp, sp, -4      # Adjust stack pointer
    sw ra, 0(sp)         # Save return address

    la   t0, trap_vector      # Address of our trap handler
    csrw mtvec, t0

    # 2. Enable global interrupts in mstatus.MIE
    li   t1, 0x8              # Bit 3 = MIE
    csrs mstatus, t1

    # 3. Enable software interrupts in mie (mie.MSIP = bit 3)
    li   t1, 0x8
    csrs mie, t1

    # 4. Enable external interrupts in mie (mie.MEIE = bit 11)
    li   t1, 0x800
    csrs mie, t1

    # 5. Enable machine timer interrupt in mie (mie.MTIMER = bit 7)
    li   t1, 0x80
    csrs mie, t1


    call main            # Call main function
    
    # Disable the timer after exiting program
    li t1, -1
    la   t0, MTIMECMP         # write to mtimecmp (lower then upper)
    sw   t1, 0(t0)
    sw   t1, 4(t0)

    # Disable software interrupts in mie (mie.MSIP = bit 3)
    li   t1, 0x8
    csrc mie, t1

    # Disable external interrupts in mie (mie.MEIE = bit 11)
    li   t1, 0x800
    csrc mie, t1

    # Disable machine timer interrupt in mie (mie.MTIMER = bit 7)
    li   t1, 0x80
    csrc mie, t1

    lw ra, 0(sp)         # Restore return address
    jalr ra               # Jump to return address

trap_vector:
    # Save context on the stack
    addi sp, sp, -144        # Allocate space for all registers (36 registers * 4 bytes = 144 bytes)
    
    # Save caller-saved registers
    sw ra, 140(sp)           # Save return address
    sw t0, 136(sp)
    sw t1, 132(sp)
    sw t2, 128(sp)
    sw t3, 124(sp)
    sw t4, 120(sp)
    sw t5, 116(sp)
    sw t6, 112(sp)
    sw a0, 108(sp)
    sw a1, 104(sp)
    sw a2, 100(sp)
    sw a3, 96(sp)
    sw a4, 92(sp)
    sw a5, 88(sp)
    sw a6, 84(sp)
    sw a7, 80(sp)

    # Save callee-saved registers
    sw s0, 76(sp)
    sw s1, 72(sp)
    sw s2, 68(sp)
    sw s3, 64(sp)
    sw s4, 60(sp)
    sw s5, 56(sp)
    sw s6, 52(sp)
    sw s7, 48(sp)
    sw s8, 44(sp)
    sw s9, 40(sp)
    sw s10, 36(sp)
    sw s11, 32(sp)

    # Load trap information into function arguments
    csrr a0, mcause          # Load mcause into a0 (first argument)
    csrr a1, mepc            # Load mepc into a1 (second argument)
    csrr a2, mtval           # Load mtval into a2 (third argument)

    # Call the C trap handler
    call c_trap_handler
    # Restore context from the stack
    lw s11, 32(sp)           # Restore callee-saved registers
    lw s10, 36(sp)
    lw s9, 40(sp)
    lw s8, 44(sp)
    lw s7, 48(sp)
    lw s6, 52(sp)
    lw s5, 56(sp)
    lw s4, 60(sp)
    lw s3, 64(sp)
    lw s2, 68(sp)
    lw s1, 72(sp)
    lw s0, 76(sp)

    lw a7, 80(sp)            # Restore caller-saved registers
    lw a6, 84(sp)
    lw a5, 88(sp)
    lw a4, 92(sp)
    lw a3, 96(sp)
    lw a2, 100(sp)
    lw a1, 104(sp)
    lw a0, 108(sp)
    lw t6, 112(sp)
    lw t5, 116(sp)
    lw t4, 120(sp)
    lw t3, 124(sp)
    lw t2, 128(sp)
    lw t1, 132(sp)
    lw t0, 136(sp)
    lw ra, 140(sp)

    addi sp, sp, 144         # Restore stack pointer

    # Return from trap
    mret                     # Machine mode return
    nop
    nop
    nop
    nop
    nop
    nop
