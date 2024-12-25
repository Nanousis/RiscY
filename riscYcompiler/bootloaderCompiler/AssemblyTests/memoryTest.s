.global _boot
.text

_boot:                    /* x0  = 0    0x000 */
   li sp, 1024
   li t0, 1234
   sw t0, 0(sp)
   lw t1, 0(sp)
   li t2, 1111
   sw t2, 0(sp)
   lw t1, 0(sp)
   addi t1, t1, 1
   
                    