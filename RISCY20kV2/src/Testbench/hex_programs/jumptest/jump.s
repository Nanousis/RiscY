.global _boot
.text

_boot:                    /* x0  = 0    0x000 */
	
    addi t6,x0,10         /* t6  = 10 instr: 00a00f93*/
    j test                /* jump instr: 0180006f*/
    addi t6, t6,5
    addi t6, t6,4
    addi t6, t6,3
    addi t6, t6,2
    addi t6, t6,1
    test:
    addi t6,x0,5        /* t6 = 5 instr: 00500f93*/
    bne t6,x0, test2    /* branch to end instr: 000f9c63*/
    addi t6, t6,5
    addi t6, t6,4
    addi t6, t6,3
    addi t6, t6,2
    addi t6, t6,1
    test2:
    nop
    nop
    nop

    /* only instructions: 00a00f93, 0180006f, 00500f93, 000f9c63 should be executed*/