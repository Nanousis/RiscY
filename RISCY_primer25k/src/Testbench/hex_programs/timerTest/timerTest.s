    .section .text
    .global _start

/***************************************
 * Definitions
 ***************************************/
MTIME       = 0x0200BFF8         
MTIMECMP    = 0x02004000        
INTERVAL    = 13          
/***************************************
 * _start - our reset entry point
 ***************************************/
_boot:
    # 1. Set up the trap handler (mtvec)
    #    We'll use DIRECT mode for simplicity. If you want vectored,
    #    you'd OR '1' into t0 (e.g., 'ori t0, t0, 1').
    la   t0, _trap_vector      # Address of our trap handler
    csrw mtvec, t0

    # 2. Enable global interrupts in mstatus.MIE
    li   t1, 0x8              # Bit 3 = MIE
    csrs mstatus, t1

    # 3. Enable machine timer interrupt in mie (mie.MTIMER = bit 7)
    li   t1, 0x80
    csrs mie, t1

    # 4. Configure the timer
    #    (Read mtime, add an interval, write to mtimecmp)
    
    lui t0, %hi(MTIME)          # Load upper part of mtime address
    lw t1, %lo(MTIME)(t0)       # Load lower 32 bits of mtime into t1
    lw t2, %lo(MTIME+4)(t0)     # Load upper 32 bits of mtime into t2
    addi t1, t1, INTERVAL     # add desired interval to lower 32 bits
    # if an overflow might happen, handle it, but ignoring for brevity

    la   t0, MTIMECMP         # write to mtimecmp (lower then upper)
    sw   t1, 0(t0)
    sw   t2, 4(t0)
    # 5. Main loop with branches
main_loop:
    li t3, 100                 # Counter for branch testing

_branch_test:
    addi t6, t6, 1             # Increment a test register
    nop
    addi t3, t3, -1            # Decrement the counter
	bnez t3, _branch_test          # Branch if counter is zero
end_loop:
	addi t5, t5, -1             # Increment a test register
    addi t4, t4, 1            # Decrement the counter
    j end_loop                 # Infinite loop
	ret
    ret
    ret
/***************************************
 * trap_vector - our basic trap handler
 ***************************************/


/***************************************
 * handle_timer - Machine Timer ISR
 ***************************************/
_handle_timer:
    # Example: blink an LED-like variable or increment a counter
    # We'll just increment a global counter at 'timer_count'.
	lw s0, 512(x0)
    addi a0, s0,0
    li a1, 'T'
	jal _putc
    addi s0,s0,2 
	sw s0,512(x0)
    # Schedule the next interrupt:    
    lui t0, %hi(MTIME)          # Load upper part of mtime address
    lw t1, %lo(MTIME)(t0)       # Load lower 32 bits of mtime into t1
    lw t2, %lo(MTIME+4)(t0)     # Load upper 32 bits of mtime into t2
    addi t1, t1, INTERVAL     # add desired interval to lower 32 bits

    la   t0, MTIMECMP
    sw   t1, 0(t0)
    sw   t2, 4(t0)
    mret

handle_other_interrupt:
    # For any other interrupt ID
    j default_return

handle_exception:
    # Handle synchronous exceptions here
    j default_return
_trap_vector:
    # Check if it's an interrupt or exception
    csrr  t0, mcause
    srli  t1, t0, 31    # t1 = interrupt bit (1=interrupt, 0=exception)
    beqz  t1, handle_exception

    # It's an interrupt. Find which interrupt ID:
    #   mcause[3:0] typically = 7 (machine timer)
    lui	t1,0x8000
    addi t1,t1,-1
    and  t0, t0, t1       # t0 = t0 & 0x7FFFFFFF
    li   t1, 7               # machine timer interrupt ID is usually 7
    beq  t0, t1, _handle_timer

    # Not a timer interrupt -> handle other interrupt IDs here if desired
    j handle_other_interrupt
_putc:
    lui t2, 0x88000       # Load Display address
    add t2, t2, a0
    li t0, 0xf
    sll t0, t0, 8
    or t0, t0, a1
    sh t0, 0(t2)         # Write character to display
	ret


default_return:
    mret

/***************************************
 * Data Section
 ***************************************/
    .section .data
    .align 4

timer_count:
    .word 0        # incremented by the timer ISR
