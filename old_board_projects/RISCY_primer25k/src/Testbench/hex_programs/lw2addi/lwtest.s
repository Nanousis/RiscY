.global _boot
.text

_boot:                    /* x0  = 0    0x000 */
    /* Test ADDI */
    addi t1 , x0,   1000    /* x1  = 1000 0x3E8 */
    addi t2 , t1,   2000    /* x2  = 3000 0xBB8 */
    addi t3 , t2,  -1000    /* x3  = 2000 0x7D0 */
    addi t4 , t3,  -500     /* x4  = 0    0x000 */
    addi t5 , t4,   1000    /* x5  = 1000 0x3E8 */
    addi t6, x0, 69         /* t6  = 69 */
    sw x0, 0(t1)            /* store 0 */
    addi t6, t6, 2          /* t6  = 71 */
    lw t6, 0(t1)            /* t6  = 0 */
    addi t6, t6,5           /* t6  = 5 */
    addi t6, t6,4           /* t6  = 9 */
    addi t6, t6,3           /* t6  = 12 */
    addi t6, t6,2           /* t6  = 14 */
    addi t6, t6,1           /* t6  = 15 */
.data
variable:
	.word 0xdeadbeef
                    