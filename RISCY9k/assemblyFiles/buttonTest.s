.global _boot
.text

_boot:                    /* x0  = 0    0x000 */
    clearScreen:
    nop
    li t0,1024 /* screen adress*/
    addi t1,t0,32 /* screen adress end */
    addi t3,t0, 1024
	loopCS:
    lb t2,0(t3)
    nop
    addi t2,t2,'0'
    sb t2,0(t0)
    addi t0,t0,1
    blt t0,t1,loopCS
    addi t1,t0,32 /* screen adress end */
    loopCS2:
    lb t2,1(t3)
    nop
    addi t2,t2,'0'
    sb t2,0(t0)
    addi t0,t0,1
    blt t0,t1,loopCS2
	j clearScreen

.data
variable:                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
             