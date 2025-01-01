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
    addi sp, sp, -128        # Allocate space on the stack
    sw ra, 124(sp)           # Save return address
    sw t0, 120(sp)           # Save temporary registers
    sw t1, 116(sp)
    sw t2, 112(sp)
    sw t3, 108(sp)
    sw t4, 104(sp)
    sw t5, 100(sp)
    sw t6, 96(sp)
    sw a0, 92(sp)            # Save function arguments (optional)
    sw a1, 88(sp)
    sw a2, 84(sp)
    sw a3, 80(sp)
    sw a4, 76(sp)
    sw a5, 72(sp)
    sw a6, 68(sp)
    sw a7, 64(sp)

    # Load trap information into function arguments
    csrr a0, mcause          # Load mcause into a0 (first argument)
    csrr a1, mepc            # Load mepc into a1 (second argument)
    csrr a2, mtval           # Load mtval into a2 (third argument)

    # Call the C trap handler
    call c_trap_handler

    # Restore context from the stack
    lw ra, 124(sp)           # Restore return address
    lw t0, 120(sp)           # Restore temporary registers
    lw t1, 116(sp)
    lw t2, 112(sp)
    lw t3, 108(sp)
    lw t4, 104(sp)
    lw t5, 100(sp)
    lw t6, 96(sp)
    lw a0, 92(sp)            # Restore function arguments (optional)
    lw a1, 88(sp)
    lw a2, 84(sp)
    lw a3, 80(sp)
    lw a4, 76(sp)
    lw a5, 72(sp)
    lw a6, 68(sp)
    lw a7, 64(sp)

    addi sp, sp, 128         # Restore stack pointer

    # Return from trap
    mret                     # Machine mode return
