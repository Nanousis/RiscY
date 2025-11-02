.global _boot
.text

_boot:                    /* x0  = 0    0x000 */
   	li sp, 1024
   	li a5, 'b'
   	sb a5, -17(sp)
   	lui	a5,0x88000
    sw	a5,-24(sp)
    lw	a5,-24(sp)
    lbu	a4,-17(sp)
    sb	a4,0(a5)
                    