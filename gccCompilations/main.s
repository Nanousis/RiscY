	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	zero,-20(s0)
	sw	zero,-20(s0)
	j	.L2
.L3:
	li	a1,32
	lw	a0,-20(s0)
	call	putch
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,63
	ble	a4,a5,.L3
	li	a1,97
	li	a0,0
	call	putch
	sw	zero,-20(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L5
	li	a1,98
	li	a0,1
	call	putch
	sw	zero,-20(s0)
	j	.L6
.L7:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L7
	li	a1,99
	li	a0,2
	call	putch
	sw	zero,-20(s0)
	j	.L8
.L9:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L8:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L9
	li	a1,100
	li	a0,3
	call	putch
	sw	zero,-20(s0)
	j	.L10
.L11:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L11
	li	a1,101
	li	a0,4
	call	putch
	sw	zero,-20(s0)
	j	.L12
.L13:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L12:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L13
	li	a1,102
	li	a0,5
	call	putch
	sw	zero,-20(s0)
	j	.L14
.L15:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L14:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L15
	li	a1,103
	li	a0,6
	call	putch
	sw	zero,-20(s0)
	j	.L16
.L17:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L16:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L17
	li	a1,104
	li	a0,7
	call	putch
	sw	zero,-20(s0)
	j	.L18
.L19:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L18:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L19
	li	a1,105
	li	a0,8
	call	putch
	sw	zero,-20(s0)
	j	.L20
.L21:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L21
	li	a1,106
	li	a0,9
	call	putch
	sw	zero,-20(s0)
	j	.L22
.L23:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L22:
	lw	a4,-20(s0)
	li	a5,1998848
	addi	a5,a5,1151
	ble	a4,a5,.L23
.L24:
	j	.L24
	.size	main, .-main
	.align	2
	.globl	putch
	.type	putch, @function
putch:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	li	a5,1024
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	putch, .-putch
	.align	2
	.globl	clearScreen
	.type	clearScreen, @function
clearScreen:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	zero,-20(s0)
	sw	zero,-20(s0)
	j	.L27
.L28:
	li	a1,32
	lw	a0,-20(s0)
	call	putch
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L27:
	lw	a4,-20(s0)
	li	a5,63
	ble	a4,a5,.L28
	nop
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	clearScreen, .-clearScreen
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
