
builds/build8/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	00010113          	mv	sp,sp
   8:	ffc10113          	addi	sp,sp,-4 # ffc <screenPos+0x34c>
   c:	00112023          	sw	ra,0(sp)
  10:	00000297          	auipc	t0,0x0
  14:	06828293          	addi	t0,t0,104 # 78 <trap_vector>
  18:	30529073          	csrw	mtvec,t0
  1c:	00800313          	li	t1,8
  20:	30032073          	csrs	mstatus,t1
  24:	00800313          	li	t1,8
  28:	30432073          	csrs	mie,t1
  2c:	00001337          	lui	t1,0x1
  30:	80030313          	addi	t1,t1,-2048 # 800 <_stack_bottom>
  34:	30432073          	csrs	mie,t1
  38:	08000313          	li	t1,128
  3c:	30432073          	csrs	mie,t1
  40:	2fd000ef          	jal	b3c <_etext>
  44:	fff00313          	li	t1,-1
  48:	020042b7          	lui	t0,0x2004
  4c:	0062a023          	sw	t1,0(t0) # 2004000 <MTIMECMP>
  50:	0062a223          	sw	t1,4(t0)
  54:	00800313          	li	t1,8
  58:	30433073          	csrc	mie,t1
  5c:	00001337          	lui	t1,0x1
  60:	80030313          	addi	t1,t1,-2048 # 800 <_stack_bottom>
  64:	30433073          	csrc	mie,t1
  68:	08000313          	li	t1,128
  6c:	30433073          	csrc	mie,t1
  70:	00012083          	lw	ra,0(sp)
  74:	000080e7          	jalr	ra

00000078 <trap_vector>:
  78:	f7010113          	addi	sp,sp,-144
  7c:	08112623          	sw	ra,140(sp)
  80:	08512423          	sw	t0,136(sp)
  84:	08612223          	sw	t1,132(sp)
  88:	08712023          	sw	t2,128(sp)
  8c:	07c12e23          	sw	t3,124(sp)
  90:	07d12c23          	sw	t4,120(sp)
  94:	07e12a23          	sw	t5,116(sp)
  98:	07f12823          	sw	t6,112(sp)
  9c:	06a12623          	sw	a0,108(sp)
  a0:	06b12423          	sw	a1,104(sp)
  a4:	06c12223          	sw	a2,100(sp)
  a8:	06d12023          	sw	a3,96(sp)
  ac:	04e12e23          	sw	a4,92(sp)
  b0:	04f12c23          	sw	a5,88(sp)
  b4:	05012a23          	sw	a6,84(sp)
  b8:	05112823          	sw	a7,80(sp)
  bc:	04812623          	sw	s0,76(sp)
  c0:	04912423          	sw	s1,72(sp)
  c4:	05212223          	sw	s2,68(sp)
  c8:	05312023          	sw	s3,64(sp)
  cc:	03412e23          	sw	s4,60(sp)
  d0:	03512c23          	sw	s5,56(sp)
  d4:	03612a23          	sw	s6,52(sp)
  d8:	03712823          	sw	s7,48(sp)
  dc:	03812623          	sw	s8,44(sp)
  e0:	03912423          	sw	s9,40(sp)
  e4:	03a12223          	sw	s10,36(sp)
  e8:	03b12023          	sw	s11,32(sp)
  ec:	34202573          	csrr	a0,mcause
  f0:	341025f3          	csrr	a1,mepc
  f4:	34302673          	csrr	a2,mtval
  f8:	0c0000ef          	jal	1b8 <c_trap_handler>
  fc:	02012d83          	lw	s11,32(sp)
 100:	02412d03          	lw	s10,36(sp)
 104:	02812c83          	lw	s9,40(sp)
 108:	02c12c03          	lw	s8,44(sp)
 10c:	03012b83          	lw	s7,48(sp)
 110:	03412b03          	lw	s6,52(sp)
 114:	03812a83          	lw	s5,56(sp)
 118:	03c12a03          	lw	s4,60(sp)
 11c:	04012983          	lw	s3,64(sp)
 120:	04412903          	lw	s2,68(sp)
 124:	04812483          	lw	s1,72(sp)
 128:	04c12403          	lw	s0,76(sp)
 12c:	05012883          	lw	a7,80(sp)
 130:	05412803          	lw	a6,84(sp)
 134:	05812783          	lw	a5,88(sp)
 138:	05c12703          	lw	a4,92(sp)
 13c:	06012683          	lw	a3,96(sp)
 140:	06412603          	lw	a2,100(sp)
 144:	06812583          	lw	a1,104(sp)
 148:	06c12503          	lw	a0,108(sp)
 14c:	07012f83          	lw	t6,112(sp)
 150:	07412f03          	lw	t5,116(sp)
 154:	07812e83          	lw	t4,120(sp)
 158:	07c12e03          	lw	t3,124(sp)
 15c:	08012383          	lw	t2,128(sp)
 160:	08412303          	lw	t1,132(sp)
 164:	08812283          	lw	t0,136(sp)
 168:	08c12083          	lw	ra,140(sp)
 16c:	09010113          	addi	sp,sp,144
 170:	30200073          	mret
 174:	00000013          	nop
 178:	00000013          	nop
 17c:	00000013          	nop
 180:	00000013          	nop
 184:	00000013          	nop
 188:	00000013          	nop

0000018c <set_timer_interrupt>:
 18c:	0200c7b7          	lui	a5,0x200c
 190:	ff87a703          	lw	a4,-8(a5) # 200bff8 <MTIME>
 194:	ffc7a783          	lw	a5,-4(a5)
 198:	00e50533          	add	a0,a0,a4
 19c:	00e536b3          	sltu	a3,a0,a4
 1a0:	00f585b3          	add	a1,a1,a5
 1a4:	00b687b3          	add	a5,a3,a1
 1a8:	020046b7          	lui	a3,0x2004
 1ac:	00a6a023          	sw	a0,0(a3) # 2004000 <MTIMECMP>
 1b0:	00f6a223          	sw	a5,4(a3)
 1b4:	00008067          	ret

000001b8 <c_trap_handler>:
 1b8:	ff010113          	addi	sp,sp,-16
 1bc:	00060793          	mv	a5,a2
 1c0:	00001637          	lui	a2,0x1
 1c4:	00812423          	sw	s0,8(sp)
 1c8:	00058713          	mv	a4,a1
 1cc:	00050413          	mv	s0,a0
 1d0:	00050693          	mv	a3,a0
 1d4:	ba460613          	addi	a2,a2,-1116 # ba4 <_etext+0x68>
 1d8:	00f00593          	li	a1,15
 1dc:	04000513          	li	a0,64
 1e0:	00112623          	sw	ra,12(sp)
 1e4:	00912223          	sw	s1,4(sp)
 1e8:	67c000ef          	jal	864 <printfSCR>
 1ec:	06045c63          	bgez	s0,264 <c_trap_handler+0xac>
 1f0:	000014b7          	lui	s1,0x1
 1f4:	cac4a683          	lw	a3,-852(s1) # cac <intCount>
 1f8:	00001637          	lui	a2,0x1
 1fc:	bc860613          	addi	a2,a2,-1080 # bc8 <_etext+0x8c>
 200:	00f00593          	li	a1,15
 204:	08000513          	li	a0,128
 208:	65c000ef          	jal	864 <printfSCR>
 20c:	cac4a783          	lw	a5,-852(s1)
 210:	00178793          	addi	a5,a5,1
 214:	caf4a623          	sw	a5,-852(s1)
 218:	800007b7          	lui	a5,0x80000
 21c:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
 220:	08f41e63          	bne	s0,a5,2bc <c_trap_handler+0x104>
 224:	0200c7b7          	lui	a5,0x200c
 228:	02004737          	lui	a4,0x2004
 22c:	00072703          	lw	a4,0(a4) # 2004000 <MTIMECMP>
 230:	ff87a683          	lw	a3,-8(a5) # 200bff8 <MTIME>
 234:	00001637          	lui	a2,0x1
 238:	00f00593          	li	a1,15
 23c:	bd860613          	addi	a2,a2,-1064 # bd8 <_etext+0x9c>
 240:	0c000513          	li	a0,192
 244:	620000ef          	jal	864 <printfSCR>
 248:	00812403          	lw	s0,8(sp)
 24c:	00c12083          	lw	ra,12(sp)
 250:	00412483          	lw	s1,4(sp)
 254:	7d000513          	li	a0,2000
 258:	00000593          	li	a1,0
 25c:	01010113          	addi	sp,sp,16
 260:	f2dff06f          	j	18c <set_timer_interrupt>
 264:	00800793          	li	a5,8
 268:	02f40863          	beq	s0,a5,298 <c_trap_handler+0xe0>
 26c:	00b00793          	li	a5,11
 270:	02f40a63          	beq	s0,a5,2a4 <c_trap_handler+0xec>
 274:	00200793          	li	a5,2
 278:	02f41c63          	bne	s0,a5,2b0 <c_trap_handler+0xf8>
 27c:	00001537          	lui	a0,0x1
 280:	bfc50513          	addi	a0,a0,-1028 # bfc <_etext+0xc0>
 284:	00812403          	lw	s0,8(sp)
 288:	00c12083          	lw	ra,12(sp)
 28c:	00412483          	lw	s1,4(sp)
 290:	01010113          	addi	sp,sp,16
 294:	4340006f          	j	6c8 <printf>
 298:	00001537          	lui	a0,0x1
 29c:	c1450513          	addi	a0,a0,-1004 # c14 <_etext+0xd8>
 2a0:	fe5ff06f          	j	284 <c_trap_handler+0xcc>
 2a4:	00001537          	lui	a0,0x1
 2a8:	c3050513          	addi	a0,a0,-976 # c30 <_etext+0xf4>
 2ac:	fd9ff06f          	j	284 <c_trap_handler+0xcc>
 2b0:	00001537          	lui	a0,0x1
 2b4:	c4c50513          	addi	a0,a0,-948 # c4c <_etext+0x110>
 2b8:	fcdff06f          	j	284 <c_trap_handler+0xcc>
 2bc:	00c12083          	lw	ra,12(sp)
 2c0:	00812403          	lw	s0,8(sp)
 2c4:	00412483          	lw	s1,4(sp)
 2c8:	01010113          	addi	sp,sp,16
 2cc:	00008067          	ret

000002d0 <getUSBint>:
 2d0:	100007b7          	lui	a5,0x10000
 2d4:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
 2d8:	00008067          	ret

000002dc <USBParser>:
 2dc:	01d00793          	li	a5,29
 2e0:	00a7ee63          	bltu	a5,a0,2fc <USBParser+0x20>
 2e4:	00300793          	li	a5,3
 2e8:	02a7ee63          	bltu	a5,a0,324 <USBParser+0x48>
 2ec:	00000513          	li	a0,0
 2f0:	00008067          	ret
 2f4:	01b00513          	li	a0,27
 2f8:	00008067          	ret
 2fc:	fe250793          	addi	a5,a0,-30
 300:	0ff7f793          	zext.b	a5,a5
 304:	03400713          	li	a4,52
 308:	fef762e3          	bltu	a4,a5,2ec <USBParser+0x10>
 30c:	00001737          	lui	a4,0x1
 310:	00279793          	slli	a5,a5,0x2
 314:	a5470713          	addi	a4,a4,-1452 # a54 <resetScreenVector+0xc>
 318:	00e787b3          	add	a5,a5,a4
 31c:	0007a783          	lw	a5,0(a5)
 320:	00078067          	jr	a5
 324:	05d50513          	addi	a0,a0,93
 328:	0ff57513          	zext.b	a0,a0
 32c:	00008067          	ret
 330:	01350513          	addi	a0,a0,19
 334:	ff5ff06f          	j	328 <USBParser+0x4c>
 338:	00800513          	li	a0,8
 33c:	00008067          	ret
 340:	00900513          	li	a0,9
 344:	00008067          	ret
 348:	02000513          	li	a0,32
 34c:	00008067          	ret
 350:	03d00513          	li	a0,61
 354:	00008067          	ret
 358:	05b00513          	li	a0,91
 35c:	00008067          	ret
 360:	05d00513          	li	a0,93
 364:	00008067          	ret
 368:	05c00513          	li	a0,92
 36c:	00008067          	ret
 370:	03b00513          	li	a0,59
 374:	00008067          	ret
 378:	02700513          	li	a0,39
 37c:	00008067          	ret
 380:	06000513          	li	a0,96
 384:	00008067          	ret
 388:	02c00513          	li	a0,44
 38c:	00008067          	ret
 390:	02e00513          	li	a0,46
 394:	00008067          	ret
 398:	02f00513          	li	a0,47
 39c:	00008067          	ret
 3a0:	04600513          	li	a0,70
 3a4:	00008067          	ret
 3a8:	05200513          	li	a0,82
 3ac:	00008067          	ret
 3b0:	04c00513          	li	a0,76
 3b4:	00008067          	ret
 3b8:	04400513          	li	a0,68
 3bc:	00008067          	ret
 3c0:	05500513          	li	a0,85
 3c4:	00008067          	ret
 3c8:	00a00513          	li	a0,10
 3cc:	00008067          	ret

000003d0 <memcpy>:
 3d0:	00000793          	li	a5,0
 3d4:	00c7c463          	blt	a5,a2,3dc <memcpy+0xc>
 3d8:	00008067          	ret
 3dc:	00f58733          	add	a4,a1,a5
 3e0:	00074683          	lbu	a3,0(a4)
 3e4:	00f50733          	add	a4,a0,a5
 3e8:	00178793          	addi	a5,a5,1
 3ec:	00d70023          	sb	a3,0(a4)
 3f0:	fe5ff06f          	j	3d4 <memcpy+0x4>

000003f4 <memset>:
 3f4:	00c50633          	add	a2,a0,a2
 3f8:	00050793          	mv	a5,a0
 3fc:	00c79463          	bne	a5,a2,404 <memset+0x10>
 400:	00008067          	ret
 404:	00178793          	addi	a5,a5,1
 408:	feb78fa3          	sb	a1,-1(a5)
 40c:	ff1ff06f          	j	3fc <memset+0x8>

00000410 <getButtonDown>:
 410:	890007b7          	lui	a5,0x89000
 414:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
 418:	00008067          	ret

0000041c <getButtonUp>:
 41c:	890007b7          	lui	a5,0x89000
 420:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
 424:	00008067          	ret

00000428 <getButtonLeft>:
 428:	890007b7          	lui	a5,0x89000
 42c:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
 430:	00008067          	ret

00000434 <getButtonRight>:
 434:	890007b7          	lui	a5,0x89000
 438:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
 43c:	00008067          	ret

00000440 <putch>:
 440:	4c000793          	li	a5,1216
 444:	02a7e263          	bltu	a5,a0,468 <putch+0x28>
 448:	00861613          	slli	a2,a2,0x8
 44c:	880007b7          	lui	a5,0x88000
 450:	00151513          	slli	a0,a0,0x1
 454:	00f50533          	add	a0,a0,a5
 458:	00b665b3          	or	a1,a2,a1
 45c:	00b51023          	sh	a1,0(a0)
 460:	00100513          	li	a0,1
 464:	00008067          	ret
 468:	00000513          	li	a0,0
 46c:	00008067          	ret

00000470 <printString>:
 470:	fe010113          	addi	sp,sp,-32
 474:	01312623          	sw	s3,12(sp)
 478:	01412423          	sw	s4,8(sp)
 47c:	00112e23          	sw	ra,28(sp)
 480:	00812c23          	sw	s0,24(sp)
 484:	00912a23          	sw	s1,20(sp)
 488:	01212823          	sw	s2,16(sp)
 48c:	01512223          	sw	s5,4(sp)
 490:	01612023          	sw	s6,0(sp)
 494:	00050a13          	mv	s4,a0
 498:	00058993          	mv	s3,a1
 49c:	06060c63          	beqz	a2,514 <printString+0xa4>
 4a0:	00060413          	mv	s0,a2
 4a4:	00000913          	li	s2,0
 4a8:	00000493          	li	s1,0
 4ac:	00100a93          	li	s5,1
 4b0:	00f00b13          	li	s6,15
 4b4:	0280006f          	j	4dc <printString+0x6c>
 4b8:	00040613          	mv	a2,s0
 4bc:	009a0533          	add	a0,s4,s1
 4c0:	f81ff0ef          	jal	440 <putch>
 4c4:	06050263          	beqz	a0,528 <printString+0xb8>
 4c8:	00148493          	addi	s1,s1,1
 4cc:	01591863          	bne	s2,s5,4dc <printString+0x6c>
 4d0:	00140413          	addi	s0,s0,1
 4d4:	0ff47413          	zext.b	s0,s0
 4d8:	048b6463          	bltu	s6,s0,520 <printString+0xb0>
 4dc:	009987b3          	add	a5,s3,s1
 4e0:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
 4e4:	00048513          	mv	a0,s1
 4e8:	fc0598e3          	bnez	a1,4b8 <printString+0x48>
 4ec:	01c12083          	lw	ra,28(sp)
 4f0:	01812403          	lw	s0,24(sp)
 4f4:	01412483          	lw	s1,20(sp)
 4f8:	01012903          	lw	s2,16(sp)
 4fc:	00c12983          	lw	s3,12(sp)
 500:	00812a03          	lw	s4,8(sp)
 504:	00412a83          	lw	s5,4(sp)
 508:	00012b03          	lw	s6,0(sp)
 50c:	02010113          	addi	sp,sp,32
 510:	00008067          	ret
 514:	00100913          	li	s2,1
 518:	00090413          	mv	s0,s2
 51c:	f8dff06f          	j	4a8 <printString+0x38>
 520:	00090413          	mv	s0,s2
 524:	fb9ff06f          	j	4dc <printString+0x6c>
 528:	00000513          	li	a0,0
 52c:	fc1ff06f          	j	4ec <printString+0x7c>

00000530 <printHex>:
 530:	fd010113          	addi	sp,sp,-48
 534:	02812423          	sw	s0,40(sp)
 538:	00058413          	mv	s0,a1
 53c:	000015b7          	lui	a1,0x1
 540:	02912223          	sw	s1,36(sp)
 544:	03212023          	sw	s2,32(sp)
 548:	c9058593          	addi	a1,a1,-880 # c90 <_etext+0x154>
 54c:	00050493          	mv	s1,a0
 550:	00060913          	mv	s2,a2
 554:	00c10513          	addi	a0,sp,12
 558:	01100613          	li	a2,17
 55c:	02112623          	sw	ra,44(sp)
 560:	e71ff0ef          	jal	3d0 <memcpy>
 564:	202027b7          	lui	a5,0x20202
 568:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
 56c:	00f12023          	sw	a5,0(sp)
 570:	00f12223          	sw	a5,4(sp)
 574:	00010423          	sb	zero,8(sp)
 578:	00700793          	li	a5,7
 57c:	00010593          	mv	a1,sp
 580:	fff00693          	li	a3,-1
 584:	00f47713          	andi	a4,s0,15
 588:	02070713          	addi	a4,a4,32
 58c:	00270733          	add	a4,a4,sp
 590:	fec74703          	lbu	a4,-20(a4)
 594:	00f58633          	add	a2,a1,a5
 598:	fff78793          	addi	a5,a5,-1
 59c:	00e60023          	sb	a4,0(a2)
 5a0:	40445413          	srai	s0,s0,0x4
 5a4:	fed790e3          	bne	a5,a3,584 <printHex+0x54>
 5a8:	00090613          	mv	a2,s2
 5ac:	00048513          	mv	a0,s1
 5b0:	ec1ff0ef          	jal	470 <printString>
 5b4:	02c12083          	lw	ra,44(sp)
 5b8:	02812403          	lw	s0,40(sp)
 5bc:	02412483          	lw	s1,36(sp)
 5c0:	02012903          	lw	s2,32(sp)
 5c4:	0ff57513          	zext.b	a0,a0
 5c8:	03010113          	addi	sp,sp,48
 5cc:	00008067          	ret

000005d0 <printDec>:
 5d0:	fd010113          	addi	sp,sp,-48
 5d4:	02812423          	sw	s0,40(sp)
 5d8:	00058413          	mv	s0,a1
 5dc:	000015b7          	lui	a1,0x1
 5e0:	02912223          	sw	s1,36(sp)
 5e4:	03212023          	sw	s2,32(sp)
 5e8:	00050493          	mv	s1,a0
 5ec:	00060913          	mv	s2,a2
 5f0:	b2858593          	addi	a1,a1,-1240 # b28 <resetScreenVector+0xe0>
 5f4:	01400613          	li	a2,20
 5f8:	00c10513          	addi	a0,sp,12
 5fc:	02112623          	sw	ra,44(sp)
 600:	dd1ff0ef          	jal	3d0 <memcpy>
 604:	000187b7          	lui	a5,0x18
 608:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 60c:	0287fa63          	bgeu	a5,s0,640 <printDec+0x70>
 610:	000015b7          	lui	a1,0x1
 614:	00090613          	mv	a2,s2
 618:	ca458593          	addi	a1,a1,-860 # ca4 <_etext+0x168>
 61c:	00048513          	mv	a0,s1
 620:	e51ff0ef          	jal	470 <printString>
 624:	02c12083          	lw	ra,44(sp)
 628:	02812403          	lw	s0,40(sp)
 62c:	02412483          	lw	s1,36(sp)
 630:	02012903          	lw	s2,32(sp)
 634:	0ff57513          	zext.b	a0,a0
 638:	03010113          	addi	sp,sp,48
 63c:	00008067          	ret
 640:	00100613          	li	a2,1
 644:	00c10713          	addi	a4,sp,12
 648:	00000793          	li	a5,0
 64c:	00060513          	mv	a0,a2
 650:	00072583          	lw	a1,0(a4)
 654:	00000693          	li	a3,0
 658:	06b47263          	bgeu	s0,a1,6bc <printDec+0xec>
 65c:	00069663          	bnez	a3,668 <printDec+0x98>
 660:	00a58463          	beq	a1,a0,668 <printDec+0x98>
 664:	00061e63          	bnez	a2,680 <printDec+0xb0>
 668:	02078613          	addi	a2,a5,32
 66c:	00260633          	add	a2,a2,sp
 670:	03068693          	addi	a3,a3,48
 674:	fed60223          	sb	a3,-28(a2)
 678:	00178793          	addi	a5,a5,1
 67c:	00000613          	li	a2,0
 680:	00470713          	addi	a4,a4,4
 684:	02010693          	addi	a3,sp,32
 688:	fcd714e3          	bne	a4,a3,650 <printDec+0x80>
 68c:	00060c63          	beqz	a2,6a4 <printDec+0xd4>
 690:	02078713          	addi	a4,a5,32
 694:	00270733          	add	a4,a4,sp
 698:	03000693          	li	a3,48
 69c:	fed70223          	sb	a3,-28(a4)
 6a0:	00178793          	addi	a5,a5,1
 6a4:	02078793          	addi	a5,a5,32
 6a8:	002787b3          	add	a5,a5,sp
 6ac:	fe078223          	sb	zero,-28(a5)
 6b0:	00090613          	mv	a2,s2
 6b4:	00410593          	addi	a1,sp,4
 6b8:	f65ff06f          	j	61c <printDec+0x4c>
 6bc:	40b40433          	sub	s0,s0,a1
 6c0:	00168693          	addi	a3,a3,1
 6c4:	f95ff06f          	j	658 <printDec+0x88>

000006c8 <printf>:
 6c8:	fa010113          	addi	sp,sp,-96
 6cc:	04f12a23          	sw	a5,84(sp)
 6d0:	04410793          	addi	a5,sp,68
 6d4:	02812c23          	sw	s0,56(sp)
 6d8:	02912a23          	sw	s1,52(sp)
 6dc:	03212823          	sw	s2,48(sp)
 6e0:	03312623          	sw	s3,44(sp)
 6e4:	03412423          	sw	s4,40(sp)
 6e8:	03512223          	sw	s5,36(sp)
 6ec:	03612023          	sw	s6,32(sp)
 6f0:	01812c23          	sw	s8,24(sp)
 6f4:	02112e23          	sw	ra,60(sp)
 6f8:	01712e23          	sw	s7,28(sp)
 6fc:	00050493          	mv	s1,a0
 700:	04b12223          	sw	a1,68(sp)
 704:	04c12423          	sw	a2,72(sp)
 708:	04d12623          	sw	a3,76(sp)
 70c:	04e12823          	sw	a4,80(sp)
 710:	05012c23          	sw	a6,88(sp)
 714:	05112e23          	sw	a7,92(sp)
 718:	00f12623          	sw	a5,12(sp)
 71c:	00000c13          	li	s8,0
 720:	00001437          	lui	s0,0x1
 724:	00a00993          	li	s3,10
 728:	02500913          	li	s2,37
 72c:	07800a13          	li	s4,120
 730:	06400a93          	li	s5,100
 734:	06300b13          	li	s6,99
 738:	018487b3          	add	a5,s1,s8
 73c:	0007c583          	lbu	a1,0(a5)
 740:	cb041503          	lh	a0,-848(s0) # cb0 <screenPos>
 744:	02059a63          	bnez	a1,778 <printf+0xb0>
 748:	03c12083          	lw	ra,60(sp)
 74c:	03812403          	lw	s0,56(sp)
 750:	03412483          	lw	s1,52(sp)
 754:	03012903          	lw	s2,48(sp)
 758:	02c12983          	lw	s3,44(sp)
 75c:	02812a03          	lw	s4,40(sp)
 760:	02412a83          	lw	s5,36(sp)
 764:	02012b03          	lw	s6,32(sp)
 768:	01c12b83          	lw	s7,28(sp)
 76c:	01812c03          	lw	s8,24(sp)
 770:	06010113          	addi	sp,sp,96
 774:	00008067          	ret
 778:	001c0b93          	addi	s7,s8,1
 77c:	01359e63          	bne	a1,s3,798 <printf+0xd0>
 780:	fc057793          	andi	a5,a0,-64
 784:	04078793          	addi	a5,a5,64
 788:	01079793          	slli	a5,a5,0x10
 78c:	4107d793          	srai	a5,a5,0x10
 790:	000c0b93          	mv	s7,s8
 794:	0380006f          	j	7cc <printf+0x104>
 798:	0d259263          	bne	a1,s2,85c <_stack_bottom+0x5c>
 79c:	0017c783          	lbu	a5,1(a5)
 7a0:	03479c63          	bne	a5,s4,7d8 <printf+0x110>
 7a4:	00c12783          	lw	a5,12(sp)
 7a8:	00f00613          	li	a2,15
 7ac:	0007a583          	lw	a1,0(a5)
 7b0:	00478713          	addi	a4,a5,4
 7b4:	00e12623          	sw	a4,12(sp)
 7b8:	d79ff0ef          	jal	530 <printHex>
 7bc:	cb045783          	lhu	a5,-848(s0)
 7c0:	00f507b3          	add	a5,a0,a5
 7c4:	01079793          	slli	a5,a5,0x10
 7c8:	4107d793          	srai	a5,a5,0x10
 7cc:	caf41823          	sh	a5,-848(s0)
 7d0:	001b8c13          	addi	s8,s7,1
 7d4:	f65ff06f          	j	738 <printf+0x70>
 7d8:	03579063          	bne	a5,s5,7f8 <printf+0x130>
 7dc:	00c12783          	lw	a5,12(sp)
 7e0:	00f00613          	li	a2,15
 7e4:	0007a583          	lw	a1,0(a5)
 7e8:	00478713          	addi	a4,a5,4
 7ec:	00e12623          	sw	a4,12(sp)
 7f0:	de1ff0ef          	jal	5d0 <printDec>
 7f4:	fc9ff06f          	j	7bc <printf+0xf4>
 7f8:	03679463          	bne	a5,s6,820 <_stack_bottom+0x20>
 7fc:	00c12783          	lw	a5,12(sp)
 800:	00f00613          	li	a2,15
 804:	0007c583          	lbu	a1,0(a5)
 808:	00478713          	addi	a4,a5,4
 80c:	00e12623          	sw	a4,12(sp)
 810:	c31ff0ef          	jal	440 <putch>
 814:	cb045783          	lhu	a5,-848(s0)
 818:	00178793          	addi	a5,a5,1
 81c:	fa9ff06f          	j	7c4 <printf+0xfc>
 820:	07300713          	li	a4,115
 824:	02e79063          	bne	a5,a4,844 <_stack_bottom+0x44>
 828:	00c12783          	lw	a5,12(sp)
 82c:	00f00613          	li	a2,15
 830:	0007a583          	lw	a1,0(a5)
 834:	00478713          	addi	a4,a5,4
 838:	00e12623          	sw	a4,12(sp)
 83c:	c35ff0ef          	jal	470 <printString>
 840:	f7dff06f          	j	7bc <printf+0xf4>
 844:	00f00613          	li	a2,15
 848:	00090593          	mv	a1,s2
 84c:	bf5ff0ef          	jal	440 <putch>
 850:	cb045783          	lhu	a5,-848(s0)
 854:	00178793          	addi	a5,a5,1
 858:	f31ff06f          	j	788 <printf+0xc0>
 85c:	00f00613          	li	a2,15
 860:	fedff06f          	j	84c <_stack_bottom+0x4c>

00000864 <printfSCR>:
 864:	f9010113          	addi	sp,sp,-112
 868:	06f12223          	sw	a5,100(sp)
 86c:	05c10793          	addi	a5,sp,92
 870:	04812423          	sw	s0,72(sp)
 874:	04912223          	sw	s1,68(sp)
 878:	05212023          	sw	s2,64(sp)
 87c:	03412c23          	sw	s4,56(sp)
 880:	03512a23          	sw	s5,52(sp)
 884:	03612823          	sw	s6,48(sp)
 888:	03712623          	sw	s7,44(sp)
 88c:	03812423          	sw	s8,40(sp)
 890:	03912223          	sw	s9,36(sp)
 894:	03a12023          	sw	s10,32(sp)
 898:	01b12e23          	sw	s11,28(sp)
 89c:	04112623          	sw	ra,76(sp)
 8a0:	03312e23          	sw	s3,60(sp)
 8a4:	00050a93          	mv	s5,a0
 8a8:	00058493          	mv	s1,a1
 8ac:	00060a13          	mv	s4,a2
 8b0:	04d12e23          	sw	a3,92(sp)
 8b4:	06e12023          	sw	a4,96(sp)
 8b8:	07012423          	sw	a6,104(sp)
 8bc:	07112623          	sw	a7,108(sp)
 8c0:	00f12623          	sw	a5,12(sp)
 8c4:	00000913          	li	s2,0
 8c8:	00000413          	li	s0,0
 8cc:	00a00b93          	li	s7,10
 8d0:	02500b13          	li	s6,37
 8d4:	07800c13          	li	s8,120
 8d8:	06400c93          	li	s9,100
 8dc:	06300d13          	li	s10,99
 8e0:	07300d93          	li	s11,115
 8e4:	012a07b3          	add	a5,s4,s2
 8e8:	0007c583          	lbu	a1,0(a5)
 8ec:	04059263          	bnez	a1,930 <printfSCR+0xcc>
 8f0:	04c12083          	lw	ra,76(sp)
 8f4:	00040513          	mv	a0,s0
 8f8:	04812403          	lw	s0,72(sp)
 8fc:	04412483          	lw	s1,68(sp)
 900:	04012903          	lw	s2,64(sp)
 904:	03c12983          	lw	s3,60(sp)
 908:	03812a03          	lw	s4,56(sp)
 90c:	03412a83          	lw	s5,52(sp)
 910:	03012b03          	lw	s6,48(sp)
 914:	02c12b83          	lw	s7,44(sp)
 918:	02812c03          	lw	s8,40(sp)
 91c:	02412c83          	lw	s9,36(sp)
 920:	02012d03          	lw	s10,32(sp)
 924:	01c12d83          	lw	s11,28(sp)
 928:	07010113          	addi	sp,sp,112
 92c:	00008067          	ret
 930:	00190993          	addi	s3,s2,1
 934:	01759a63          	bne	a1,s7,948 <printfSCR+0xe4>
 938:	fc047413          	andi	s0,s0,-64
 93c:	04040413          	addi	s0,s0,64
 940:	00090993          	mv	s3,s2
 944:	0740006f          	j	9b8 <printfSCR+0x154>
 948:	01540533          	add	a0,s0,s5
 94c:	0b659463          	bne	a1,s6,9f4 <printfSCR+0x190>
 950:	0017c783          	lbu	a5,1(a5)
 954:	03879263          	bne	a5,s8,978 <printfSCR+0x114>
 958:	00c12783          	lw	a5,12(sp)
 95c:	00048613          	mv	a2,s1
 960:	0007a583          	lw	a1,0(a5)
 964:	00478713          	addi	a4,a5,4
 968:	00e12623          	sw	a4,12(sp)
 96c:	bc5ff0ef          	jal	530 <printHex>
 970:	00a40433          	add	s0,s0,a0
 974:	0440006f          	j	9b8 <printfSCR+0x154>
 978:	03979063          	bne	a5,s9,998 <printfSCR+0x134>
 97c:	00c12783          	lw	a5,12(sp)
 980:	00048613          	mv	a2,s1
 984:	0007a583          	lw	a1,0(a5)
 988:	00478713          	addi	a4,a5,4
 98c:	00e12623          	sw	a4,12(sp)
 990:	c41ff0ef          	jal	5d0 <printDec>
 994:	fddff06f          	j	970 <printfSCR+0x10c>
 998:	03a79463          	bne	a5,s10,9c0 <printfSCR+0x15c>
 99c:	00c12783          	lw	a5,12(sp)
 9a0:	00048613          	mv	a2,s1
 9a4:	00140413          	addi	s0,s0,1
 9a8:	0007c583          	lbu	a1,0(a5)
 9ac:	00478713          	addi	a4,a5,4
 9b0:	00e12623          	sw	a4,12(sp)
 9b4:	a8dff0ef          	jal	440 <putch>
 9b8:	00198913          	addi	s2,s3,1
 9bc:	f29ff06f          	j	8e4 <printfSCR+0x80>
 9c0:	03b79063          	bne	a5,s11,9e0 <printfSCR+0x17c>
 9c4:	00c12783          	lw	a5,12(sp)
 9c8:	00048613          	mv	a2,s1
 9cc:	0007a583          	lw	a1,0(a5)
 9d0:	00478713          	addi	a4,a5,4
 9d4:	00e12623          	sw	a4,12(sp)
 9d8:	a99ff0ef          	jal	470 <printString>
 9dc:	f95ff06f          	j	970 <printfSCR+0x10c>
 9e0:	00048613          	mv	a2,s1
 9e4:	000b0593          	mv	a1,s6
 9e8:	a59ff0ef          	jal	440 <putch>
 9ec:	00140413          	addi	s0,s0,1
 9f0:	f51ff06f          	j	940 <printfSCR+0xdc>
 9f4:	00048613          	mv	a2,s1
 9f8:	ff1ff06f          	j	9e8 <printfSCR+0x184>

000009fc <clearScreen>:
 9fc:	ff010113          	addi	sp,sp,-16
 a00:	00812423          	sw	s0,8(sp)
 a04:	00912223          	sw	s1,4(sp)
 a08:	00112623          	sw	ra,12(sp)
 a0c:	00000413          	li	s0,0
 a10:	4c000493          	li	s1,1216
 a14:	00040513          	mv	a0,s0
 a18:	00f00613          	li	a2,15
 a1c:	02000593          	li	a1,32
 a20:	00140413          	addi	s0,s0,1
 a24:	a1dff0ef          	jal	440 <putch>
 a28:	fe9416e3          	bne	s0,s1,a14 <clearScreen+0x18>
 a2c:	00c12083          	lw	ra,12(sp)
 a30:	00812403          	lw	s0,8(sp)
 a34:	000017b7          	lui	a5,0x1
 a38:	ca079823          	sh	zero,-848(a5) # cb0 <screenPos>
 a3c:	00412483          	lw	s1,4(sp)
 a40:	01010113          	addi	sp,sp,16
 a44:	00008067          	ret

00000a48 <resetScreenVector>:
 a48:	000017b7          	lui	a5,0x1
 a4c:	ca079823          	sh	zero,-848(a5) # cb0 <screenPos>
 a50:	00008067          	ret
 a54:	0330                	.insn	2, 0x0330
 a56:	0000                	.insn	2, 0x
 a58:	0330                	.insn	2, 0x0330
 a5a:	0000                	.insn	2, 0x
 a5c:	0330                	.insn	2, 0x0330
 a5e:	0000                	.insn	2, 0x
 a60:	0330                	.insn	2, 0x0330
 a62:	0000                	.insn	2, 0x
 a64:	0330                	.insn	2, 0x0330
 a66:	0000                	.insn	2, 0x
 a68:	0330                	.insn	2, 0x0330
 a6a:	0000                	.insn	2, 0x
 a6c:	0330                	.insn	2, 0x0330
 a6e:	0000                	.insn	2, 0x
 a70:	0330                	.insn	2, 0x0330
 a72:	0000                	.insn	2, 0x
 a74:	0330                	.insn	2, 0x0330
 a76:	0000                	.insn	2, 0x
 a78:	0330                	.insn	2, 0x0330
 a7a:	0000                	.insn	2, 0x
 a7c:	03c8                	.insn	2, 0x03c8
 a7e:	0000                	.insn	2, 0x
 a80:	02f4                	.insn	2, 0x02f4
 a82:	0000                	.insn	2, 0x
 a84:	0338                	.insn	2, 0x0338
 a86:	0000                	.insn	2, 0x
 a88:	0340                	.insn	2, 0x0340
 a8a:	0000                	.insn	2, 0x
 a8c:	0348                	.insn	2, 0x0348
 a8e:	0000                	.insn	2, 0x
 a90:	02f0                	.insn	2, 0x02f0
 a92:	0000                	.insn	2, 0x
 a94:	0350                	.insn	2, 0x0350
 a96:	0000                	.insn	2, 0x
 a98:	0358                	.insn	2, 0x0358
 a9a:	0000                	.insn	2, 0x
 a9c:	0360                	.insn	2, 0x0360
 a9e:	0000                	.insn	2, 0x
 aa0:	0368                	.insn	2, 0x0368
 aa2:	0000                	.insn	2, 0x
 aa4:	02ec                	.insn	2, 0x02ec
 aa6:	0000                	.insn	2, 0x
 aa8:	0370                	.insn	2, 0x0370
 aaa:	0000                	.insn	2, 0x
 aac:	0378                	.insn	2, 0x0378
 aae:	0000                	.insn	2, 0x
 ab0:	0380                	.insn	2, 0x0380
 ab2:	0000                	.insn	2, 0x
 ab4:	0388                	.insn	2, 0x0388
 ab6:	0000                	.insn	2, 0x
 ab8:	0390                	.insn	2, 0x0390
 aba:	0000                	.insn	2, 0x
 abc:	0398                	.insn	2, 0x0398
 abe:	0000                	.insn	2, 0x
 ac0:	02ec                	.insn	2, 0x02ec
 ac2:	0000                	.insn	2, 0x
 ac4:	03a0                	.insn	2, 0x03a0
 ac6:	0000                	.insn	2, 0x
 ac8:	03a0                	.insn	2, 0x03a0
 aca:	0000                	.insn	2, 0x
 acc:	03a0                	.insn	2, 0x03a0
 ace:	0000                	.insn	2, 0x
 ad0:	03a0                	.insn	2, 0x03a0
 ad2:	0000                	.insn	2, 0x
 ad4:	03a0                	.insn	2, 0x03a0
 ad6:	0000                	.insn	2, 0x
 ad8:	03a0                	.insn	2, 0x03a0
 ada:	0000                	.insn	2, 0x
 adc:	03a0                	.insn	2, 0x03a0
 ade:	0000                	.insn	2, 0x
 ae0:	03a0                	.insn	2, 0x03a0
 ae2:	0000                	.insn	2, 0x
 ae4:	03a0                	.insn	2, 0x03a0
 ae6:	0000                	.insn	2, 0x
 ae8:	03a0                	.insn	2, 0x03a0
 aea:	0000                	.insn	2, 0x
 aec:	03a0                	.insn	2, 0x03a0
 aee:	0000                	.insn	2, 0x
 af0:	03a0                	.insn	2, 0x03a0
 af2:	0000                	.insn	2, 0x
 af4:	02ec                	.insn	2, 0x02ec
 af6:	0000                	.insn	2, 0x
 af8:	02ec                	.insn	2, 0x02ec
 afa:	0000                	.insn	2, 0x
 afc:	02ec                	.insn	2, 0x02ec
 afe:	0000                	.insn	2, 0x
 b00:	02ec                	.insn	2, 0x02ec
 b02:	0000                	.insn	2, 0x
 b04:	02ec                	.insn	2, 0x02ec
 b06:	0000                	.insn	2, 0x
 b08:	02ec                	.insn	2, 0x02ec
 b0a:	0000                	.insn	2, 0x
 b0c:	02ec                	.insn	2, 0x02ec
 b0e:	0000                	.insn	2, 0x
 b10:	02ec                	.insn	2, 0x02ec
 b12:	0000                	.insn	2, 0x
 b14:	02ec                	.insn	2, 0x02ec
 b16:	0000                	.insn	2, 0x
 b18:	03a8                	.insn	2, 0x03a8
 b1a:	0000                	.insn	2, 0x
 b1c:	03b0                	.insn	2, 0x03b0
 b1e:	0000                	.insn	2, 0x
 b20:	03b8                	.insn	2, 0x03b8
 b22:	0000                	.insn	2, 0x
 b24:	03c0                	.insn	2, 0x03c0
 b26:	0000                	.insn	2, 0x
 b28:	2710                	.insn	2, 0x2710
 b2a:	0000                	.insn	2, 0x
 b2c:	03e8                	.insn	2, 0x03e8
 b2e:	0000                	.insn	2, 0x
 b30:	0064                	.insn	2, 0x0064
 b32:	0000                	.insn	2, 0x
 b34:	000a                	.insn	2, 0x000a
 b36:	0000                	.insn	2, 0x
 b38:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00000b3c <main>:
 b3c:	fe010113          	addi	sp,sp,-32
 b40:	01212823          	sw	s2,16(sp)
 b44:	7d000513          	li	a0,2000
 b48:	00000593          	li	a1,0
 b4c:	00031937          	lui	s2,0x31
 b50:	00812c23          	sw	s0,24(sp)
 b54:	00912a23          	sw	s1,20(sp)
 b58:	01312623          	sw	s3,12(sp)
 b5c:	00112e23          	sw	ra,28(sp)
 b60:	00000493          	li	s1,0
 b64:	e28ff0ef          	jal	18c <set_timer_interrupt>
 b68:	00000413          	li	s0,0
 b6c:	d4090913          	addi	s2,s2,-704 # 30d40 <_stack_end+0x2fd40>
 b70:	000019b7          	lui	s3,0x1
 b74:	012484b3          	add	s1,s1,s2
 b78:	c6498613          	addi	a2,s3,-924 # c64 <main+0x128>
 b7c:	40f4d693          	srai	a3,s1,0xf
 b80:	00f00593          	li	a1,15
 b84:	40000513          	li	a0,1024
 b88:	cddff0ef          	jal	864 <printfSCR>
 b8c:	00140413          	addi	s0,s0,1
 b90:	00f00613          	li	a2,15
 b94:	00040593          	mv	a1,s0
 b98:	44000513          	li	a0,1088
 b9c:	995ff0ef          	jal	530 <printHex>
 ba0:	fd5ff06f          	j	b74 <main+0x38>
