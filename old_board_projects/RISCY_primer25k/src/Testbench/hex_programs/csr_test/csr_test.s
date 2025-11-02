    .section .text
    .globl _start

_start:
    /* Initialize values in registers*/
    li t0, 0x01          /* Load immediate 0x01 into t0*/
    li t1, 0xFF          /* Load immediate 0xFF into t1*/

	csrrc a0, misa, x0
    /* CSRRW: Read and Write CSR (Machine Status Register - mstatus)*/
    csrrw t2, mstatus, t1    /* Swap the value of t0 with the current mstatus*/
                             /* t2 now contains the original mstatus value*/

    /* CSRRS: Read and Set CSR (Machine Interrupt Enable - mie)*/
    csrrs t3, mie, t1        /* Read mie into t3 and OR it with 0xFF*/
                             /* Bits in mie set to 1 wherever t1 has 1s*/

    /* CSRRC: Read and Clear CSR (Machine Trap Vector - mtvec)*/
    csrrc t4, mtvec, t0      /* Read mtvec into t4 and clear bits set in t0*/
                             /* Bits in mtvec set to 0 wherever t0 has 1s*/

    /* CSRRWI: Read and Write Immediate to CSR (Machine Cause Register - mcause)*/
    csrrwi t5, mcause, 0x3   /* Set mcause to 0x3, t5 contains old mcause value*/

    /* CSRRSI: Read and Set Immediate to CSR (Machine Scratch Register - mscratch)*/
    csrrsi t6, mscratch, 0x2 /* Read mscratch into t6, OR it with 0x2*/

    /* CSRRCI: Read and Clear Immediate from CSR (Machine Exception Program Counter - mepc)*/
    csrrci t1, mepc, 0x1     /* Read mepc into t7, clear bit 0*/

    /* Add a breakpoint for debugging*/
    ebreak                  /* Breakpoint for simulator/debugger*/

    /* End program (trap to environment)*/
    li a7, 10               /* Exit syscall number*/
    ecall                  /* Environment call (terminate program)*/
