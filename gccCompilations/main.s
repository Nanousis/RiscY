	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	current_x
	.section	.sdata,"aw"
	.type	current_x, @object
	.size	current_x, 1
current_x:
	.byte	4
	.globl	current_y
	.type	current_y, @object
	.size	current_y, 1
current_y:
	.byte	4
	.globl	positions
	.bss
	.align	2
	.type	positions, @object
	.size	positions, 150
positions:
	.zero	150
	.globl	apple_positions
	.data
	.align	2
	.type	apple_positions, @object
	.size	apple_positions, 20
apple_positions:
	.half	88
	.half	100
	.half	200
	.half	300
	.half	800
	.half	562
	.half	122
	.half	456
	.half	782
	.half	654
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	addi	s0,sp,112
.L2:
	sw	zero,-20(s0)
	sw	zero,-20(s0)
	j	.L3
.L4:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L3:
	lw	a4,-20(s0)
	li	a5,98304
	addi	a5,a5,1695
	ble	a4,a5,.L4
	call	clearScreen
	li	a5,1668046848
	addi	a5,a5,1367
	sw	a5,-72(s0)
	li	a5,6647808
	addi	a5,a5,-657
	sw	a5,-68(s0)
	li	a5,1936027648
	addi	a5,a5,592
	sw	a5,-88(s0)
	li	a5,2037276672
	addi	a5,a5,288
	sw	a5,-84(s0)
	li	a5,2036690944
	addi	a5,a5,-1248
	sw	a5,-80(s0)
	sb	zero,-76(s0)
	sb	zero,-21(s0)
	addi	a5,s0,-72
	mv	a1,a5
	li	a0,155
	call	printString
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,601
	call	printString
	lui	a5,%hi(current_x)
	li	a4,1
	sb	a4,%lo(current_x)(a5)
	lui	a5,%hi(current_y)
	sb	zero,%lo(current_y)(a5)
	sb	zero,-22(s0)
	li	a5,1
	sb	a5,-23(s0)
.L14:
	call	getButtonUp
	mv	a5,a0
	bne	a5,zero,.L41
	call	getButtonDown
	mv	a5,a0
	bne	a5,zero,.L41
	call	getButtonLeft
	mv	a5,a0
	bne	a5,zero,.L41
	call	getButtonRight
	mv	a5,a0
	bne	a5,zero,.L41
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
	lbu	a5,-22(s0)
	bne	a5,zero,.L8
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(current_x)
	sb	a4,%lo(current_x)(a5)
	lui	a5,%hi(current_x)
	lbu	a4,%lo(current_x)(a5)
	li	a5,63
	bne	a4,a5,.L8
	li	a5,1
	sb	a5,-22(s0)
.L8:
	lbu	a4,-22(s0)
	li	a5,1
	bne	a4,a5,.L9
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(current_y)
	sb	a4,%lo(current_y)(a5)
	lui	a5,%hi(current_y)
	lbu	a4,%lo(current_y)(a5)
	li	a5,18
	bne	a4,a5,.L9
	li	a5,2
	sb	a5,-22(s0)
.L9:
	lbu	a4,-22(s0)
	li	a5,2
	bne	a4,a5,.L10
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lui	a5,%hi(current_x)
	sb	a4,%lo(current_x)(a5)
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	bne	a5,zero,.L10
	li	a5,3
	sb	a5,-22(s0)
.L10:
	lbu	a4,-22(s0)
	li	a5,3
	bne	a4,a5,.L11
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lui	a5,%hi(current_y)
	sb	a4,%lo(current_y)(a5)
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	bne	a5,zero,.L11
	sb	zero,-22(s0)
	lbu	a5,-23(s0)
	addi	a5,a5,1
	sb	a5,-23(s0)
	lui	a5,%hi(current_x)
	li	a4,1
	sb	a4,%lo(current_x)(a5)
	lbu	a4,-23(s0)
	li	a5,15
	bleu	a4,a5,.L11
	li	a5,1
	sb	a5,-23(s0)
.L11:
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	mv	a4,a5
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	slli	a5,a5,6
	add	a5,a4,a5
	lbu	a4,-23(s0)
	slli	a4,a4,4
	andi	a4,a4,0xff
	mv	a2,a4
	li	a1,32
	mv	a0,a5
	call	putch
	sw	zero,-20(s0)
	j	.L12
.L13:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L12:
	lw	a4,-20(s0)
	li	a5,98304
	addi	a5,a5,1695
	ble	a4,a5,.L13
	j	.L14
.L41:
	nop
.L7:
	call	clearScreen
	sh	zero,-26(s0)
	li	a5,325
	sh	a5,-46(s0)
	li	a5,4
	sw	a5,-32(s0)
	lui	a5,%hi(current_x)
	li	a4,4
	sb	a4,%lo(current_x)(a5)
	lui	a5,%hi(current_y)
	li	a4,4
	sb	a4,%lo(current_y)(a5)
	lui	a5,%hi(positions)
	addi	a5,a5,%lo(positions)
	sh	zero,0(a5)
	lui	a5,%hi(positions)
	addi	a5,a5,%lo(positions)
	sh	zero,2(a5)
	lui	a5,%hi(positions)
	addi	a5,a5,%lo(positions)
	sh	zero,4(a5)
	lui	a5,%hi(positions)
	addi	a5,a5,%lo(positions)
	sh	zero,6(a5)
	lui	a5,%hi(positions)
	addi	a5,a5,%lo(positions)
	sh	zero,8(a5)
	sw	zero,-52(s0)
	sw	zero,-56(s0)
	sb	zero,-33(s0)
	sb	zero,-34(s0)
	li	a5,1
	sb	a5,-35(s0)
	sw	zero,-60(s0)
	li	a5,356
	sh	a5,-38(s0)
	li	a5,123457536
	addi	a5,a5,-747
	sw	a5,-64(s0)
	sw	zero,-44(s0)
.L33:
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	j	.L15
.L16:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a4,-20(s0)
	li	a5,598016
	addi	a5,a5,1983
	ble	a4,a5,.L16
	lbu	a5,-35(s0)
	bne	a5,zero,.L17
	call	getButtonUp
	mv	a5,a0
	beq	a5,zero,.L18
	li	a5,1
	sb	a5,-33(s0)
	li	a5,1
	sb	a5,-35(s0)
	j	.L19
.L18:
	call	getButtonDown
	mv	a5,a0
	beq	a5,zero,.L19
	li	a5,1
	sb	a5,-34(s0)
	li	a5,1
	sb	a5,-35(s0)
	j	.L19
.L17:
	sb	zero,-33(s0)
	sb	zero,-34(s0)
	call	getButtonUp
	mv	a5,a0
	bne	a5,zero,.L19
	call	getButtonDown
	mv	a5,a0
	bne	a5,zero,.L19
	sb	zero,-35(s0)
.L19:
	lbu	a5,-33(s0)
	beq	a5,zero,.L20
	lh	a5,-26(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-26(s0)
	lh	a4,-26(s0)
	li	a5,3
	ble	a4,a5,.L20
	sh	zero,-26(s0)
.L20:
	lbu	a5,-34(s0)
	beq	a5,zero,.L21
	lh	a5,-26(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,-1
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-26(s0)
	lh	a5,-26(s0)
	bge	a5,zero,.L21
	li	a5,3
	sh	a5,-26(s0)
.L21:
	lh	a5,-26(s0)
	bne	a5,zero,.L22
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(current_x)
	sb	a4,%lo(current_x)(a5)
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(current_x)
	sb	a4,%lo(current_x)(a5)
.L22:
	lh	a4,-26(s0)
	li	a5,1
	bne	a4,a5,.L23
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lui	a5,%hi(current_y)
	sb	a4,%lo(current_y)(a5)
.L23:
	lh	a4,-26(s0)
	li	a5,2
	bne	a4,a5,.L24
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lui	a5,%hi(current_x)
	sb	a4,%lo(current_x)(a5)
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lui	a5,%hi(current_x)
	sb	a4,%lo(current_x)(a5)
.L24:
	lh	a4,-26(s0)
	li	a5,3
	bne	a4,a5,.L25
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lui	a5,%hi(current_y)
	sb	a4,%lo(current_y)(a5)
.L25:
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	mv	a4,a5
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	slli	a5,a5,6
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	sh	a5,-46(s0)
	lhu	a4,-46(s0)
	lhu	a5,-38(s0)
	bne	a4,a5,.L26
.L28:
	lw	a5,-44(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-64(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	xor	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,1022
	sh	a5,-38(s0)
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
	lhu	a4,-38(s0)
	li	a5,25
	bgtu	a4,a5,.L27
	lhu	a4,-38(s0)
	li	a5,1215
	bleu	a4,a5,.L28
.L27:
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L26:
	lhu	a5,-38(s0)
	addi	a5,a5,1
	li	a2,1
	li	a1,16
	mv	a0,a5
	call	putch
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	checkForCollision
	mv	a5,a0
	bne	a5,zero,.L42
	lui	a5,%hi(current_x)
	lbu	a4,%lo(current_x)(a5)
	li	a5,63
	bgtu	a4,a5,.L43
	lui	a5,%hi(current_y)
	lbu	a4,%lo(current_y)(a5)
	li	a5,18
	bgtu	a4,a5,.L43
	sb	zero,-34(s0)
	sb	zero,-33(s0)
	lw	a5,-32(s0)
	mv	a0,a5
	call	printSnake
	lw	a0,-32(s0)
	call	printScore
	lhu	a5,-38(s0)
	li	a2,1
	li	a1,17
	mv	a0,a5
	call	putch
	j	.L33
.L42:
	nop
	j	.L30
.L43:
	nop
.L30:
	lw	a5,-32(s0)
	addi	a5,a5,-1
	lui	a4,%hi(positions)
	addi	a4,a4,%lo(positions)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	li	a2,1
	li	a1,120
	mv	a0,a5
	call	putch
	lw	a5,-32(s0)
	addi	a5,a5,-1
	lui	a4,%hi(positions)
	addi	a4,a4,%lo(positions)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	addi	a5,a5,1
	li	a2,1
	li	a1,120
	mv	a0,a5
	call	putch
	sw	zero,-20(s0)
	j	.L34
.L35:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L34:
	lw	a4,-20(s0)
	li	a5,5001216
	addi	a5,a5,-1217
	ble	a4,a5,.L35
	call	clearScreen
	li	a5,544567296
	addi	a5,a5,-167
	sw	a5,-100(s0)
	li	a5,1953722368
	addi	a5,a5,-148
	sw	a5,-96(s0)
	li	a5,33
	sh	a5,-92(s0)
	addi	a5,s0,-100
	mv	a1,a5
	li	a0,25
	call	printString
	li	a5,2036428800
	addi	a5,a5,-944
	sw	a5,-112(s0)
	li	a5,1634164736
	addi	a5,a5,288
	sw	a5,-108(s0)
	li	a5,4157440
	addi	a5,a5,-407
	sw	a5,-104(s0)
	addi	a5,s0,-112
	mv	a1,a5
	li	a0,345
	call	printString
	lw	a0,-32(s0)
	call	printScore
.L40:
	call	getButtonUp
	mv	a5,a0
	bne	a5,zero,.L2
	call	getButtonDown
	mv	a5,a0
	bne	a5,zero,.L2
	call	getButtonLeft
	mv	a5,a0
	bne	a5,zero,.L2
	call	getButtonRight
	mv	a5,a0
	beq	a5,zero,.L37
	j	.L2
.L37:
	sw	zero,-20(s0)
	j	.L38
.L39:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L38:
	lw	a4,-20(s0)
	li	a5,98304
	addi	a5,a5,1695
	ble	a4,a5,.L39
	j	.L40
	.size	main, .-main
	.align	2
	.globl	printScore
	.type	printScore, @function
printScore:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	li	a5,1919901696
	addi	a5,a5,851
	sw	a5,-24(s0)
	li	a5,2113536
	addi	a5,a5,-1435
	sw	a5,-20(s0)
	addi	a5,s0,-24
	mv	a1,a5
	li	a0,0
	call	printString
	lw	a1,-36(s0)
	li	a0,7
	call	printOct
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	printScore, .-printScore
	.align	2
	.globl	printSnake
	.type	printSnake, @function
printSnake:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lui	a5,%hi(positions)
	addi	a5,a5,%lo(positions)
	lhu	a5,0(a5)
	li	a2,0
	li	a1,32
	mv	a0,a5
	call	putch
	lui	a5,%hi(positions)
	addi	a5,a5,%lo(positions)
	lhu	a5,0(a5)
	addi	a5,a5,1
	li	a2,0
	li	a1,32
	mv	a0,a5
	call	putch
	sw	zero,-20(s0)
	j	.L46
.L47:
	lw	a5,-20(s0)
	addi	a5,a5,1
	lui	a4,%hi(positions)
	addi	a4,a4,%lo(positions)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a4,0(a5)
	lui	a5,%hi(positions)
	addi	a3,a5,%lo(positions)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L46:
	lw	a4,-20(s0)
	li	a5,73
	ble	a4,a5,.L47
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	mv	a4,a5
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	slli	a5,a5,6
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	sh	a5,-22(s0)
	lw	a5,-36(s0)
	addi	a5,a5,-1
	lui	a4,%hi(positions)
	addi	a4,a4,%lo(positions)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a4,-22(s0)
	sh	a4,0(a5)
	sw	zero,-20(s0)
	j	.L48
.L49:
	lui	a5,%hi(positions)
	addi	a4,a5,%lo(positions)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	li	a2,17
	li	a1,32
	mv	a0,a5
	call	putch
	lui	a5,%hi(positions)
	addi	a4,a5,%lo(positions)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	addi	a5,a5,1
	li	a2,17
	li	a1,32
	mv	a0,a5
	call	putch
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L48:
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	bgtu	a4,a5,.L49
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	printSnake, .-printSnake
	.align	2
	.globl	checkForCollision
	.type	checkForCollision, @function
checkForCollision:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	mv	a5,a0
	sh	a5,-34(s0)
	sw	zero,-20(s0)
	sw	zero,-20(s0)
	j	.L51
.L54:
	lui	a5,%hi(positions)
	addi	a4,a5,%lo(positions)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	mv	a4,a5
	lui	a5,%hi(current_x)
	lbu	a5,%lo(current_x)(a5)
	mv	a3,a5
	lui	a5,%hi(current_y)
	lbu	a5,%lo(current_y)(a5)
	slli	a5,a5,6
	add	a5,a3,a5
	bne	a4,a5,.L52
	li	a5,1
	j	.L53
.L52:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L51:
	lhu	a5,-34(s0)
	lw	a4,-20(s0)
	blt	a4,a5,.L54
	li	a5,0
.L53:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	checkForCollision, .-checkForCollision
	.align	2
	.globl	getButtonDown
	.type	getButtonDown, @function
getButtonDown:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	li	a5,-1996488704
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
	li	a5,-1996488704
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
	li	a5,-1996488704
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
	li	a5,-1996488704
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
	sw	a0,-36(s0)
	mv	a5,a1
	mv	a4,a2
	sb	a5,-37(s0)
	mv	a5,a4
	sb	a5,-38(s0)
	li	a5,-2013265920
	sw	a5,-20(s0)
	lbu	a5,-38(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	lbu	a5,-37(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	sh	a5,-22(s0)
	lw	a5,-36(s0)
	slli	a5,a5,1
	lw	a4,-20(s0)
	add	a5,a4,a5
	lhu	a4,-22(s0)
	sh	a4,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	putch, .-putch
	.align	2
	.globl	printString
	.type	printString, @function
printString:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-20(s0)
	li	a5,1
	sb	a5,-21(s0)
	j	.L65
.L66:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a3,a4,a5
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	lbu	a4,-21(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	putch
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
	lbu	a4,-21(s0)
	li	a5,15
	bleu	a4,a5,.L65
	li	a5,1
	sb	a5,-21(s0)
.L65:
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L66
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	printString, .-printString
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
	j	.L68
.L69:
	li	a2,1
	li	a1,32
	lw	a0,-20(s0)
	call	putch
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L68:
	lw	a4,-20(s0)
	li	a5,1215
	ble	a4,a5,.L69
	nop
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	clearScreen, .-clearScreen
	.section	.rodata
	.align	2
.LC0:
	.string	"0123456789ABCDEF"
	.text
	.align	2
	.globl	printHex
	.type	printHex, @function
printHex:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	sw	a1,-40(s0)
	sw	a2,-36(s0)
	sw	a3,-32(s0)
	sw	a4,-28(s0)
	lbu	a5,16(a5)
	sb	a5,-24(s0)
	li	a5,538976256
	addi	a5,a5,32
	sw	a5,-52(s0)
	li	a5,538976256
	addi	a5,a5,32
	sw	a5,-48(s0)
	sb	zero,-44(s0)
	sb	zero,-44(s0)
	li	a5,7
	sw	a5,-20(s0)
	j	.L71
.L72:
	lw	a5,-72(s0)
	andi	a5,a5,15
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-24(a5)
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-36(a5)
	lw	a5,-72(s0)
	srai	a5,a5,4
	sw	a5,-72(s0)
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L71:
	lw	a5,-20(s0)
	bge	a5,zero,.L72
	addi	a5,s0,-52
	mv	a1,a5
	lw	a0,-68(s0)
	call	printString
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	printHex, .-printHex
	.align	2
	.globl	printOct
	.type	printOct, @function
printOct:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	li	a5,858927104
	addi	a5,a5,304
	sw	a5,-32(s0)
	li	a5,926298112
	addi	a5,a5,1332
	sw	a5,-28(s0)
	sb	zero,-24(s0)
	sb	zero,-33(s0)
	li	a5,10
	sw	a5,-20(s0)
	j	.L74
.L75:
	lw	a5,-56(s0)
	andi	a5,a5,7
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-16(a5)
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-28(a5)
	lw	a5,-56(s0)
	srai	a5,a5,3
	sw	a5,-56(s0)
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L74:
	lw	a5,-20(s0)
	bge	a5,zero,.L75
	addi	a5,s0,-44
	mv	a1,a5
	lw	a0,-52(s0)
	call	printString
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	printOct, .-printOct
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
