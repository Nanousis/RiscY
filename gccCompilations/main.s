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
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
.L2:
	sw	zero,-20(s0)
	call	clearScreen
	li	a5,4096
	addi	a5,a5,-2048
	sw	a5,-40(s0)
	sb	zero,-21(s0)
	sb	zero,-22(s0)
	sw	zero,-28(s0)
	li	a5,15
	sb	a5,-29(s0)
	li	a5,3
	sb	a5,-30(s0)
	sb	zero,-31(s0)
	sb	zero,-41(s0)
	sb	zero,-32(s0)
	sb	zero,-42(s0)
	li	a5,2
	sb	a5,-33(s0)
	lbu	a5,-21(s0)
	li	a1,62
	mv	a0,a5
	call	putch
.L14:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	call	getButtonRight
	mv	a5,a0
	beq	a5,zero,.L3
	lbu	a4,-21(s0)
	li	a5,14
	bgtu	a4,a5,.L3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L3:
	call	getButtonLeft
	mv	a5,a0
	beq	a5,zero,.L4
	lbu	a5,-21(s0)
	beq	a5,zero,.L4
	lbu	a5,-21(s0)
	addi	a5,a5,-1
	sb	a5,-21(s0)
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L4:
	lbu	a5,-31(s0)
	addi	a5,a5,1
	sb	a5,-31(s0)
	lbu	a4,-31(s0)
	li	a5,4
	bne	a4,a5,.L5
	call	getButtonUp
	mv	a5,a0
	beq	a5,zero,.L6
	lbu	a5,-22(s0)
	beq	a5,zero,.L6
	lbu	a5,-22(s0)
	addi	a5,a5,-1
	sb	a5,-22(s0)
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L6:
	call	getButtonDown
	mv	a5,a0
	beq	a5,zero,.L7
	lbu	a4,-22(s0)
	li	a5,2
	bgtu	a4,a5,.L7
	lbu	a5,-22(s0)
	addi	a5,a5,1
	sb	a5,-22(s0)
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L7:
	sb	zero,-31(s0)
	lbu	a5,-29(s0)
	bne	a5,zero,.L8
	lbu	a4,-33(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	srai	a5,a5,2
	andi	a5,a5,0xff
	andi	a5,a5,3
	sb	a5,-30(s0)
	li	a5,15
	sb	a5,-29(s0)
.L8:
	lbu	a5,-29(s0)
	addi	a5,a5,-1
	sb	a5,-29(s0)
.L5:
	lbu	a4,-32(s0)
	li	a5,63
	bleu	a4,a5,.L9
	li	a5,15
	sb	a5,-29(s0)
	li	a5,3
	sb	a5,-30(s0)
.L9:
	call	clearScreen
	lbu	a5,-22(s0)
	slli	a5,a5,4
	andi	a5,a5,0xff
	lbu	a4,-21(s0)
	add	a5,a5,a4
	sb	a5,-41(s0)
	lbu	a5,-30(s0)
	slli	a5,a5,4
	andi	a5,a5,0xff
	lbu	a4,-29(s0)
	add	a5,a5,a4
	sb	a5,-32(s0)
	lbu	a4,-41(s0)
	lbu	a5,-32(s0)
	beq	a4,a5,.L21
	lbu	a5,-32(s0)
	li	a1,69
	mv	a0,a5
	call	putch
	lbu	a5,-41(s0)
	li	a1,62
	mv	a0,a5
	call	putch
	li	a5,200704
	addi	a5,a5,-704
	sw	a5,-20(s0)
	j	.L12
.L13:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L12:
	lw	a5,-20(s0)
	bgt	a5,zero,.L13
	j	.L14
.L21:
	nop
.L11:
	lbu	a5,-32(s0)
	li	a1,88
	mv	a0,a5
	call	putch
	sw	zero,-20(s0)
	j	.L15
.L16:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a4,-20(s0)
	li	a5,5001216
	addi	a5,a5,-1217
	ble	a4,a5,.L16
	call	clearScreen
	li	a1,89
	li	a0,3
	call	putch
	li	a1,79
	li	a0,4
	call	putch
	li	a1,85
	li	a0,5
	call	putch
	li	a1,32
	li	a0,6
	call	putch
	li	a1,76
	li	a0,7
	call	putch
	li	a1,79
	li	a0,8
	call	putch
	li	a1,83
	li	a0,9
	call	putch
	li	a1,69
	li	a0,10
	call	putch
	li	a1,83
	li	a0,34
	call	putch
	li	a1,84
	li	a0,35
	call	putch
	li	a1,65
	li	a0,36
	call	putch
	li	a1,82
	li	a0,37
	call	putch
	li	a1,84
	li	a0,38
	call	putch
	li	a1,32
	li	a0,39
	call	putch
	li	a1,65
	li	a0,40
	call	putch
	li	a1,71
	li	a0,41
	call	putch
	li	a1,65
	li	a0,42
	call	putch
	li	a1,73
	li	a0,43
	call	putch
	li	a1,78
	li	a0,44
	call	putch
	li	a1,63
	li	a0,45
	call	putch
.L19:
	call	getButtonRight
	mv	a5,a0
	bne	a5,zero,.L2
	call	getButtonLeft
	mv	a5,a0
	bne	a5,zero,.L2
	call	getButtonUp
	mv	a5,a0
	bne	a5,zero,.L2
	call	getButtonDown
	mv	a5,a0
	beq	a5,zero,.L19
	j	.L2
	.size	main, .-main
	.align	2
	.globl	getButtonDown
	.type	getButtonDown, @function
getButtonDown:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	li	a5,4096
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	getButtonDown, .-getButtonDown
	.align	2
	.globl	getButtonUp
	.type	getButtonUp, @function
getButtonUp:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	li	a5,4096
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	getButtonUp, .-getButtonUp
	.align	2
	.globl	getButtonLeft
	.type	getButtonLeft, @function
getButtonLeft:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	li	a5,4096
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lbu	a5,2(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	getButtonLeft, .-getButtonLeft
	.align	2
	.globl	getButtonRight
	.type	getButtonRight, @function
getButtonRight:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	li	a5,4096
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lbu	a5,3(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	getButtonRight, .-getButtonRight
	.align	2
	.globl	putch
	.type	putch, @function
putch:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	li	a5,1024
	sw	a5,-20(s0)
	lbu	a5,-33(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a4,-34(s0)
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
	j	.L32
.L33:
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	li	a1,32
	mv	a0,a5
	call	putch
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L32:
	lw	a4,-20(s0)
	li	a5,63
	ble	a4,a5,.L33
	nop
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	clearScreen, .-clearScreen
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
