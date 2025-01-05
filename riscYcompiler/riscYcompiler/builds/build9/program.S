
builds/build9/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	00010113          	mv	sp,sp
   8:	ffc10113          	addi	sp,sp,-4 # ffc <screenPos+0x344>
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
  40:	301000ef          	jal	b40 <_etext>
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
 1d4:	bac60613          	addi	a2,a2,-1108 # bac <_etext+0x6c>
 1d8:	00f00593          	li	a1,15
 1dc:	04000513          	li	a0,64
 1e0:	00112623          	sw	ra,12(sp)
 1e4:	00912223          	sw	s1,4(sp)
 1e8:	680000ef          	jal	868 <printfSCR>
 1ec:	06045e63          	bgez	s0,268 <c_trap_handler+0xb0>
 1f0:	000014b7          	lui	s1,0x1
 1f4:	cb44a683          	lw	a3,-844(s1) # cb4 <intCount>
 1f8:	00001637          	lui	a2,0x1
 1fc:	bd060613          	addi	a2,a2,-1072 # bd0 <_etext+0x90>
 200:	00f00593          	li	a1,15
 204:	08000513          	li	a0,128
 208:	660000ef          	jal	868 <printfSCR>
 20c:	cb44a783          	lw	a5,-844(s1)
 210:	00178793          	addi	a5,a5,1
 214:	caf4aa23          	sw	a5,-844(s1)
 218:	800007b7          	lui	a5,0x80000
 21c:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
 220:	0af41063          	bne	s0,a5,2c0 <c_trap_handler+0x108>
 224:	0200c7b7          	lui	a5,0x200c
 228:	02004737          	lui	a4,0x2004
 22c:	00072703          	lw	a4,0(a4) # 2004000 <MTIMECMP>
 230:	ff87a683          	lw	a3,-8(a5) # 200bff8 <MTIME>
 234:	00001637          	lui	a2,0x1
 238:	00f00593          	li	a1,15
 23c:	be060613          	addi	a2,a2,-1056 # be0 <_etext+0xa0>
 240:	0c000513          	li	a0,192
 244:	624000ef          	jal	868 <printfSCR>
 248:	00812403          	lw	s0,8(sp)
 24c:	00c12083          	lw	ra,12(sp)
 250:	00412483          	lw	s1,4(sp)
 254:	004c5537          	lui	a0,0x4c5
 258:	b4150513          	addi	a0,a0,-1215 # 4c4b41 <_stack_end+0x4c3b41>
 25c:	00000593          	li	a1,0
 260:	01010113          	addi	sp,sp,16
 264:	f29ff06f          	j	18c <set_timer_interrupt>
 268:	00800793          	li	a5,8
 26c:	02f40863          	beq	s0,a5,29c <c_trap_handler+0xe4>
 270:	00b00793          	li	a5,11
 274:	02f40a63          	beq	s0,a5,2a8 <c_trap_handler+0xf0>
 278:	00200793          	li	a5,2
 27c:	02f41c63          	bne	s0,a5,2b4 <c_trap_handler+0xfc>
 280:	00001537          	lui	a0,0x1
 284:	c0450513          	addi	a0,a0,-1020 # c04 <_etext+0xc4>
 288:	00812403          	lw	s0,8(sp)
 28c:	00c12083          	lw	ra,12(sp)
 290:	00412483          	lw	s1,4(sp)
 294:	01010113          	addi	sp,sp,16
 298:	4340006f          	j	6cc <printf>
 29c:	00001537          	lui	a0,0x1
 2a0:	c1c50513          	addi	a0,a0,-996 # c1c <_etext+0xdc>
 2a4:	fe5ff06f          	j	288 <c_trap_handler+0xd0>
 2a8:	00001537          	lui	a0,0x1
 2ac:	c3850513          	addi	a0,a0,-968 # c38 <_etext+0xf8>
 2b0:	fd9ff06f          	j	288 <c_trap_handler+0xd0>
 2b4:	00001537          	lui	a0,0x1
 2b8:	c5450513          	addi	a0,a0,-940 # c54 <_etext+0x114>
 2bc:	fcdff06f          	j	288 <c_trap_handler+0xd0>
 2c0:	00c12083          	lw	ra,12(sp)
 2c4:	00812403          	lw	s0,8(sp)
 2c8:	00412483          	lw	s1,4(sp)
 2cc:	01010113          	addi	sp,sp,16
 2d0:	00008067          	ret

000002d4 <getUSBint>:
 2d4:	100007b7          	lui	a5,0x10000
 2d8:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
 2dc:	00008067          	ret

000002e0 <USBParser>:
 2e0:	01d00793          	li	a5,29
 2e4:	00a7ee63          	bltu	a5,a0,300 <USBParser+0x20>
 2e8:	00300793          	li	a5,3
 2ec:	02a7ee63          	bltu	a5,a0,328 <USBParser+0x48>
 2f0:	00000513          	li	a0,0
 2f4:	00008067          	ret
 2f8:	01b00513          	li	a0,27
 2fc:	00008067          	ret
 300:	fe250793          	addi	a5,a0,-30
 304:	0ff7f793          	zext.b	a5,a5
 308:	03400713          	li	a4,52
 30c:	fef762e3          	bltu	a4,a5,2f0 <USBParser+0x10>
 310:	00001737          	lui	a4,0x1
 314:	00279793          	slli	a5,a5,0x2
 318:	a5870713          	addi	a4,a4,-1448 # a58 <resetScreenVector+0xc>
 31c:	00e787b3          	add	a5,a5,a4
 320:	0007a783          	lw	a5,0(a5)
 324:	00078067          	jr	a5
 328:	05d50513          	addi	a0,a0,93
 32c:	0ff57513          	zext.b	a0,a0
 330:	00008067          	ret
 334:	01350513          	addi	a0,a0,19
 338:	ff5ff06f          	j	32c <USBParser+0x4c>
 33c:	00800513          	li	a0,8
 340:	00008067          	ret
 344:	00900513          	li	a0,9
 348:	00008067          	ret
 34c:	02000513          	li	a0,32
 350:	00008067          	ret
 354:	03d00513          	li	a0,61
 358:	00008067          	ret
 35c:	05b00513          	li	a0,91
 360:	00008067          	ret
 364:	05d00513          	li	a0,93
 368:	00008067          	ret
 36c:	05c00513          	li	a0,92
 370:	00008067          	ret
 374:	03b00513          	li	a0,59
 378:	00008067          	ret
 37c:	02700513          	li	a0,39
 380:	00008067          	ret
 384:	06000513          	li	a0,96
 388:	00008067          	ret
 38c:	02c00513          	li	a0,44
 390:	00008067          	ret
 394:	02e00513          	li	a0,46
 398:	00008067          	ret
 39c:	02f00513          	li	a0,47
 3a0:	00008067          	ret
 3a4:	04600513          	li	a0,70
 3a8:	00008067          	ret
 3ac:	05200513          	li	a0,82
 3b0:	00008067          	ret
 3b4:	04c00513          	li	a0,76
 3b8:	00008067          	ret
 3bc:	04400513          	li	a0,68
 3c0:	00008067          	ret
 3c4:	05500513          	li	a0,85
 3c8:	00008067          	ret
 3cc:	00a00513          	li	a0,10
 3d0:	00008067          	ret

000003d4 <memcpy>:
 3d4:	00000793          	li	a5,0
 3d8:	00c7c463          	blt	a5,a2,3e0 <memcpy+0xc>
 3dc:	00008067          	ret
 3e0:	00f58733          	add	a4,a1,a5
 3e4:	00074683          	lbu	a3,0(a4)
 3e8:	00f50733          	add	a4,a0,a5
 3ec:	00178793          	addi	a5,a5,1
 3f0:	00d70023          	sb	a3,0(a4)
 3f4:	fe5ff06f          	j	3d8 <memcpy+0x4>

000003f8 <memset>:
 3f8:	00c50633          	add	a2,a0,a2
 3fc:	00050793          	mv	a5,a0
 400:	00c79463          	bne	a5,a2,408 <memset+0x10>
 404:	00008067          	ret
 408:	00178793          	addi	a5,a5,1
 40c:	feb78fa3          	sb	a1,-1(a5)
 410:	ff1ff06f          	j	400 <memset+0x8>

00000414 <getButtonDown>:
 414:	890007b7          	lui	a5,0x89000
 418:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
 41c:	00008067          	ret

00000420 <getButtonUp>:
 420:	890007b7          	lui	a5,0x89000
 424:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
 428:	00008067          	ret

0000042c <getButtonLeft>:
 42c:	890007b7          	lui	a5,0x89000
 430:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
 434:	00008067          	ret

00000438 <getButtonRight>:
 438:	890007b7          	lui	a5,0x89000
 43c:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
 440:	00008067          	ret

00000444 <putch>:
 444:	4c000793          	li	a5,1216
 448:	02a7e263          	bltu	a5,a0,46c <putch+0x28>
 44c:	00861613          	slli	a2,a2,0x8
 450:	880007b7          	lui	a5,0x88000
 454:	00151513          	slli	a0,a0,0x1
 458:	00f50533          	add	a0,a0,a5
 45c:	00b665b3          	or	a1,a2,a1
 460:	00b51023          	sh	a1,0(a0)
 464:	00100513          	li	a0,1
 468:	00008067          	ret
 46c:	00000513          	li	a0,0
 470:	00008067          	ret

00000474 <printString>:
 474:	fe010113          	addi	sp,sp,-32
 478:	01312623          	sw	s3,12(sp)
 47c:	01412423          	sw	s4,8(sp)
 480:	00112e23          	sw	ra,28(sp)
 484:	00812c23          	sw	s0,24(sp)
 488:	00912a23          	sw	s1,20(sp)
 48c:	01212823          	sw	s2,16(sp)
 490:	01512223          	sw	s5,4(sp)
 494:	01612023          	sw	s6,0(sp)
 498:	00050a13          	mv	s4,a0
 49c:	00058993          	mv	s3,a1
 4a0:	06060c63          	beqz	a2,518 <printString+0xa4>
 4a4:	00060413          	mv	s0,a2
 4a8:	00000913          	li	s2,0
 4ac:	00000493          	li	s1,0
 4b0:	00100a93          	li	s5,1
 4b4:	00f00b13          	li	s6,15
 4b8:	0280006f          	j	4e0 <printString+0x6c>
 4bc:	00040613          	mv	a2,s0
 4c0:	009a0533          	add	a0,s4,s1
 4c4:	f81ff0ef          	jal	444 <putch>
 4c8:	06050263          	beqz	a0,52c <printString+0xb8>
 4cc:	00148493          	addi	s1,s1,1
 4d0:	01591863          	bne	s2,s5,4e0 <printString+0x6c>
 4d4:	00140413          	addi	s0,s0,1
 4d8:	0ff47413          	zext.b	s0,s0
 4dc:	048b6463          	bltu	s6,s0,524 <printString+0xb0>
 4e0:	009987b3          	add	a5,s3,s1
 4e4:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
 4e8:	00048513          	mv	a0,s1
 4ec:	fc0598e3          	bnez	a1,4bc <printString+0x48>
 4f0:	01c12083          	lw	ra,28(sp)
 4f4:	01812403          	lw	s0,24(sp)
 4f8:	01412483          	lw	s1,20(sp)
 4fc:	01012903          	lw	s2,16(sp)
 500:	00c12983          	lw	s3,12(sp)
 504:	00812a03          	lw	s4,8(sp)
 508:	00412a83          	lw	s5,4(sp)
 50c:	00012b03          	lw	s6,0(sp)
 510:	02010113          	addi	sp,sp,32
 514:	00008067          	ret
 518:	00100913          	li	s2,1
 51c:	00090413          	mv	s0,s2
 520:	f8dff06f          	j	4ac <printString+0x38>
 524:	00090413          	mv	s0,s2
 528:	fb9ff06f          	j	4e0 <printString+0x6c>
 52c:	00000513          	li	a0,0
 530:	fc1ff06f          	j	4f0 <printString+0x7c>

00000534 <printHex>:
 534:	fd010113          	addi	sp,sp,-48
 538:	02812423          	sw	s0,40(sp)
 53c:	00058413          	mv	s0,a1
 540:	000015b7          	lui	a1,0x1
 544:	02912223          	sw	s1,36(sp)
 548:	03212023          	sw	s2,32(sp)
 54c:	c9858593          	addi	a1,a1,-872 # c98 <_etext+0x158>
 550:	00050493          	mv	s1,a0
 554:	00060913          	mv	s2,a2
 558:	00c10513          	addi	a0,sp,12
 55c:	01100613          	li	a2,17
 560:	02112623          	sw	ra,44(sp)
 564:	e71ff0ef          	jal	3d4 <memcpy>
 568:	202027b7          	lui	a5,0x20202
 56c:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
 570:	00f12023          	sw	a5,0(sp)
 574:	00f12223          	sw	a5,4(sp)
 578:	00010423          	sb	zero,8(sp)
 57c:	00700793          	li	a5,7
 580:	00010593          	mv	a1,sp
 584:	fff00693          	li	a3,-1
 588:	00f47713          	andi	a4,s0,15
 58c:	02070713          	addi	a4,a4,32
 590:	00270733          	add	a4,a4,sp
 594:	fec74703          	lbu	a4,-20(a4)
 598:	00f58633          	add	a2,a1,a5
 59c:	fff78793          	addi	a5,a5,-1
 5a0:	00e60023          	sb	a4,0(a2)
 5a4:	40445413          	srai	s0,s0,0x4
 5a8:	fed790e3          	bne	a5,a3,588 <printHex+0x54>
 5ac:	00090613          	mv	a2,s2
 5b0:	00048513          	mv	a0,s1
 5b4:	ec1ff0ef          	jal	474 <printString>
 5b8:	02c12083          	lw	ra,44(sp)
 5bc:	02812403          	lw	s0,40(sp)
 5c0:	02412483          	lw	s1,36(sp)
 5c4:	02012903          	lw	s2,32(sp)
 5c8:	0ff57513          	zext.b	a0,a0
 5cc:	03010113          	addi	sp,sp,48
 5d0:	00008067          	ret

000005d4 <printDec>:
 5d4:	fd010113          	addi	sp,sp,-48
 5d8:	02812423          	sw	s0,40(sp)
 5dc:	00058413          	mv	s0,a1
 5e0:	000015b7          	lui	a1,0x1
 5e4:	02912223          	sw	s1,36(sp)
 5e8:	03212023          	sw	s2,32(sp)
 5ec:	00050493          	mv	s1,a0
 5f0:	00060913          	mv	s2,a2
 5f4:	b2c58593          	addi	a1,a1,-1236 # b2c <resetScreenVector+0xe0>
 5f8:	01400613          	li	a2,20
 5fc:	00c10513          	addi	a0,sp,12
 600:	02112623          	sw	ra,44(sp)
 604:	dd1ff0ef          	jal	3d4 <memcpy>
 608:	000187b7          	lui	a5,0x18
 60c:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 610:	0287fa63          	bgeu	a5,s0,644 <printDec+0x70>
 614:	000015b7          	lui	a1,0x1
 618:	00090613          	mv	a2,s2
 61c:	cac58593          	addi	a1,a1,-852 # cac <_etext+0x16c>
 620:	00048513          	mv	a0,s1
 624:	e51ff0ef          	jal	474 <printString>
 628:	02c12083          	lw	ra,44(sp)
 62c:	02812403          	lw	s0,40(sp)
 630:	02412483          	lw	s1,36(sp)
 634:	02012903          	lw	s2,32(sp)
 638:	0ff57513          	zext.b	a0,a0
 63c:	03010113          	addi	sp,sp,48
 640:	00008067          	ret
 644:	00100613          	li	a2,1
 648:	00c10713          	addi	a4,sp,12
 64c:	00000793          	li	a5,0
 650:	00060513          	mv	a0,a2
 654:	00072583          	lw	a1,0(a4)
 658:	00000693          	li	a3,0
 65c:	06b47263          	bgeu	s0,a1,6c0 <printDec+0xec>
 660:	00069663          	bnez	a3,66c <printDec+0x98>
 664:	00a58463          	beq	a1,a0,66c <printDec+0x98>
 668:	00061e63          	bnez	a2,684 <printDec+0xb0>
 66c:	02078613          	addi	a2,a5,32
 670:	00260633          	add	a2,a2,sp
 674:	03068693          	addi	a3,a3,48
 678:	fed60223          	sb	a3,-28(a2)
 67c:	00178793          	addi	a5,a5,1
 680:	00000613          	li	a2,0
 684:	00470713          	addi	a4,a4,4
 688:	02010693          	addi	a3,sp,32
 68c:	fcd714e3          	bne	a4,a3,654 <printDec+0x80>
 690:	00060c63          	beqz	a2,6a8 <printDec+0xd4>
 694:	02078713          	addi	a4,a5,32
 698:	00270733          	add	a4,a4,sp
 69c:	03000693          	li	a3,48
 6a0:	fed70223          	sb	a3,-28(a4)
 6a4:	00178793          	addi	a5,a5,1
 6a8:	02078793          	addi	a5,a5,32
 6ac:	002787b3          	add	a5,a5,sp
 6b0:	fe078223          	sb	zero,-28(a5)
 6b4:	00090613          	mv	a2,s2
 6b8:	00410593          	addi	a1,sp,4
 6bc:	f65ff06f          	j	620 <printDec+0x4c>
 6c0:	40b40433          	sub	s0,s0,a1
 6c4:	00168693          	addi	a3,a3,1
 6c8:	f95ff06f          	j	65c <printDec+0x88>

000006cc <printf>:
 6cc:	fa010113          	addi	sp,sp,-96
 6d0:	04f12a23          	sw	a5,84(sp)
 6d4:	04410793          	addi	a5,sp,68
 6d8:	02812c23          	sw	s0,56(sp)
 6dc:	02912a23          	sw	s1,52(sp)
 6e0:	03212823          	sw	s2,48(sp)
 6e4:	03312623          	sw	s3,44(sp)
 6e8:	03412423          	sw	s4,40(sp)
 6ec:	03512223          	sw	s5,36(sp)
 6f0:	03612023          	sw	s6,32(sp)
 6f4:	01812c23          	sw	s8,24(sp)
 6f8:	02112e23          	sw	ra,60(sp)
 6fc:	01712e23          	sw	s7,28(sp)
 700:	00050493          	mv	s1,a0
 704:	04b12223          	sw	a1,68(sp)
 708:	04c12423          	sw	a2,72(sp)
 70c:	04d12623          	sw	a3,76(sp)
 710:	04e12823          	sw	a4,80(sp)
 714:	05012c23          	sw	a6,88(sp)
 718:	05112e23          	sw	a7,92(sp)
 71c:	00f12623          	sw	a5,12(sp)
 720:	00000c13          	li	s8,0
 724:	00001437          	lui	s0,0x1
 728:	00a00993          	li	s3,10
 72c:	02500913          	li	s2,37
 730:	07800a13          	li	s4,120
 734:	06400a93          	li	s5,100
 738:	06300b13          	li	s6,99
 73c:	018487b3          	add	a5,s1,s8
 740:	0007c583          	lbu	a1,0(a5)
 744:	cb841503          	lh	a0,-840(s0) # cb8 <screenPos>
 748:	02059a63          	bnez	a1,77c <printf+0xb0>
 74c:	03c12083          	lw	ra,60(sp)
 750:	03812403          	lw	s0,56(sp)
 754:	03412483          	lw	s1,52(sp)
 758:	03012903          	lw	s2,48(sp)
 75c:	02c12983          	lw	s3,44(sp)
 760:	02812a03          	lw	s4,40(sp)
 764:	02412a83          	lw	s5,36(sp)
 768:	02012b03          	lw	s6,32(sp)
 76c:	01c12b83          	lw	s7,28(sp)
 770:	01812c03          	lw	s8,24(sp)
 774:	06010113          	addi	sp,sp,96
 778:	00008067          	ret
 77c:	001c0b93          	addi	s7,s8,1
 780:	01359e63          	bne	a1,s3,79c <printf+0xd0>
 784:	fc057793          	andi	a5,a0,-64
 788:	04078793          	addi	a5,a5,64
 78c:	01079793          	slli	a5,a5,0x10
 790:	4107d793          	srai	a5,a5,0x10
 794:	000c0b93          	mv	s7,s8
 798:	0380006f          	j	7d0 <printf+0x104>
 79c:	0d259263          	bne	a1,s2,860 <_stack_bottom+0x60>
 7a0:	0017c783          	lbu	a5,1(a5)
 7a4:	03479c63          	bne	a5,s4,7dc <printf+0x110>
 7a8:	00c12783          	lw	a5,12(sp)
 7ac:	00f00613          	li	a2,15
 7b0:	0007a583          	lw	a1,0(a5)
 7b4:	00478713          	addi	a4,a5,4
 7b8:	00e12623          	sw	a4,12(sp)
 7bc:	d79ff0ef          	jal	534 <printHex>
 7c0:	cb845783          	lhu	a5,-840(s0)
 7c4:	00f507b3          	add	a5,a0,a5
 7c8:	01079793          	slli	a5,a5,0x10
 7cc:	4107d793          	srai	a5,a5,0x10
 7d0:	caf41c23          	sh	a5,-840(s0)
 7d4:	001b8c13          	addi	s8,s7,1
 7d8:	f65ff06f          	j	73c <printf+0x70>
 7dc:	03579063          	bne	a5,s5,7fc <printf+0x130>
 7e0:	00c12783          	lw	a5,12(sp)
 7e4:	00f00613          	li	a2,15
 7e8:	0007a583          	lw	a1,0(a5)
 7ec:	00478713          	addi	a4,a5,4
 7f0:	00e12623          	sw	a4,12(sp)
 7f4:	de1ff0ef          	jal	5d4 <printDec>
 7f8:	fc9ff06f          	j	7c0 <printf+0xf4>
 7fc:	03679463          	bne	a5,s6,824 <_stack_bottom+0x24>
 800:	00c12783          	lw	a5,12(sp)
 804:	00f00613          	li	a2,15
 808:	0007c583          	lbu	a1,0(a5)
 80c:	00478713          	addi	a4,a5,4
 810:	00e12623          	sw	a4,12(sp)
 814:	c31ff0ef          	jal	444 <putch>
 818:	cb845783          	lhu	a5,-840(s0)
 81c:	00178793          	addi	a5,a5,1
 820:	fa9ff06f          	j	7c8 <printf+0xfc>
 824:	07300713          	li	a4,115
 828:	02e79063          	bne	a5,a4,848 <_stack_bottom+0x48>
 82c:	00c12783          	lw	a5,12(sp)
 830:	00f00613          	li	a2,15
 834:	0007a583          	lw	a1,0(a5)
 838:	00478713          	addi	a4,a5,4
 83c:	00e12623          	sw	a4,12(sp)
 840:	c35ff0ef          	jal	474 <printString>
 844:	f7dff06f          	j	7c0 <printf+0xf4>
 848:	00f00613          	li	a2,15
 84c:	00090593          	mv	a1,s2
 850:	bf5ff0ef          	jal	444 <putch>
 854:	cb845783          	lhu	a5,-840(s0)
 858:	00178793          	addi	a5,a5,1
 85c:	f31ff06f          	j	78c <printf+0xc0>
 860:	00f00613          	li	a2,15
 864:	fedff06f          	j	850 <_stack_bottom+0x50>

00000868 <printfSCR>:
 868:	f9010113          	addi	sp,sp,-112
 86c:	06f12223          	sw	a5,100(sp)
 870:	05c10793          	addi	a5,sp,92
 874:	04812423          	sw	s0,72(sp)
 878:	04912223          	sw	s1,68(sp)
 87c:	05212023          	sw	s2,64(sp)
 880:	03412c23          	sw	s4,56(sp)
 884:	03512a23          	sw	s5,52(sp)
 888:	03612823          	sw	s6,48(sp)
 88c:	03712623          	sw	s7,44(sp)
 890:	03812423          	sw	s8,40(sp)
 894:	03912223          	sw	s9,36(sp)
 898:	03a12023          	sw	s10,32(sp)
 89c:	01b12e23          	sw	s11,28(sp)
 8a0:	04112623          	sw	ra,76(sp)
 8a4:	03312e23          	sw	s3,60(sp)
 8a8:	00050a93          	mv	s5,a0
 8ac:	00058493          	mv	s1,a1
 8b0:	00060a13          	mv	s4,a2
 8b4:	04d12e23          	sw	a3,92(sp)
 8b8:	06e12023          	sw	a4,96(sp)
 8bc:	07012423          	sw	a6,104(sp)
 8c0:	07112623          	sw	a7,108(sp)
 8c4:	00f12623          	sw	a5,12(sp)
 8c8:	00000913          	li	s2,0
 8cc:	00000413          	li	s0,0
 8d0:	00a00b93          	li	s7,10
 8d4:	02500b13          	li	s6,37
 8d8:	07800c13          	li	s8,120
 8dc:	06400c93          	li	s9,100
 8e0:	06300d13          	li	s10,99
 8e4:	07300d93          	li	s11,115
 8e8:	012a07b3          	add	a5,s4,s2
 8ec:	0007c583          	lbu	a1,0(a5)
 8f0:	04059263          	bnez	a1,934 <printfSCR+0xcc>
 8f4:	04c12083          	lw	ra,76(sp)
 8f8:	00040513          	mv	a0,s0
 8fc:	04812403          	lw	s0,72(sp)
 900:	04412483          	lw	s1,68(sp)
 904:	04012903          	lw	s2,64(sp)
 908:	03c12983          	lw	s3,60(sp)
 90c:	03812a03          	lw	s4,56(sp)
 910:	03412a83          	lw	s5,52(sp)
 914:	03012b03          	lw	s6,48(sp)
 918:	02c12b83          	lw	s7,44(sp)
 91c:	02812c03          	lw	s8,40(sp)
 920:	02412c83          	lw	s9,36(sp)
 924:	02012d03          	lw	s10,32(sp)
 928:	01c12d83          	lw	s11,28(sp)
 92c:	07010113          	addi	sp,sp,112
 930:	00008067          	ret
 934:	00190993          	addi	s3,s2,1
 938:	01759a63          	bne	a1,s7,94c <printfSCR+0xe4>
 93c:	fc047413          	andi	s0,s0,-64
 940:	04040413          	addi	s0,s0,64
 944:	00090993          	mv	s3,s2
 948:	0740006f          	j	9bc <printfSCR+0x154>
 94c:	01540533          	add	a0,s0,s5
 950:	0b659463          	bne	a1,s6,9f8 <printfSCR+0x190>
 954:	0017c783          	lbu	a5,1(a5)
 958:	03879263          	bne	a5,s8,97c <printfSCR+0x114>
 95c:	00c12783          	lw	a5,12(sp)
 960:	00048613          	mv	a2,s1
 964:	0007a583          	lw	a1,0(a5)
 968:	00478713          	addi	a4,a5,4
 96c:	00e12623          	sw	a4,12(sp)
 970:	bc5ff0ef          	jal	534 <printHex>
 974:	00a40433          	add	s0,s0,a0
 978:	0440006f          	j	9bc <printfSCR+0x154>
 97c:	03979063          	bne	a5,s9,99c <printfSCR+0x134>
 980:	00c12783          	lw	a5,12(sp)
 984:	00048613          	mv	a2,s1
 988:	0007a583          	lw	a1,0(a5)
 98c:	00478713          	addi	a4,a5,4
 990:	00e12623          	sw	a4,12(sp)
 994:	c41ff0ef          	jal	5d4 <printDec>
 998:	fddff06f          	j	974 <printfSCR+0x10c>
 99c:	03a79463          	bne	a5,s10,9c4 <printfSCR+0x15c>
 9a0:	00c12783          	lw	a5,12(sp)
 9a4:	00048613          	mv	a2,s1
 9a8:	00140413          	addi	s0,s0,1
 9ac:	0007c583          	lbu	a1,0(a5)
 9b0:	00478713          	addi	a4,a5,4
 9b4:	00e12623          	sw	a4,12(sp)
 9b8:	a8dff0ef          	jal	444 <putch>
 9bc:	00198913          	addi	s2,s3,1
 9c0:	f29ff06f          	j	8e8 <printfSCR+0x80>
 9c4:	03b79063          	bne	a5,s11,9e4 <printfSCR+0x17c>
 9c8:	00c12783          	lw	a5,12(sp)
 9cc:	00048613          	mv	a2,s1
 9d0:	0007a583          	lw	a1,0(a5)
 9d4:	00478713          	addi	a4,a5,4
 9d8:	00e12623          	sw	a4,12(sp)
 9dc:	a99ff0ef          	jal	474 <printString>
 9e0:	f95ff06f          	j	974 <printfSCR+0x10c>
 9e4:	00048613          	mv	a2,s1
 9e8:	000b0593          	mv	a1,s6
 9ec:	a59ff0ef          	jal	444 <putch>
 9f0:	00140413          	addi	s0,s0,1
 9f4:	f51ff06f          	j	944 <printfSCR+0xdc>
 9f8:	00048613          	mv	a2,s1
 9fc:	ff1ff06f          	j	9ec <printfSCR+0x184>

00000a00 <clearScreen>:
 a00:	ff010113          	addi	sp,sp,-16
 a04:	00812423          	sw	s0,8(sp)
 a08:	00912223          	sw	s1,4(sp)
 a0c:	00112623          	sw	ra,12(sp)
 a10:	00000413          	li	s0,0
 a14:	4c000493          	li	s1,1216
 a18:	00040513          	mv	a0,s0
 a1c:	00f00613          	li	a2,15
 a20:	02000593          	li	a1,32
 a24:	00140413          	addi	s0,s0,1
 a28:	a1dff0ef          	jal	444 <putch>
 a2c:	fe9416e3          	bne	s0,s1,a18 <clearScreen+0x18>
 a30:	00c12083          	lw	ra,12(sp)
 a34:	00812403          	lw	s0,8(sp)
 a38:	000017b7          	lui	a5,0x1
 a3c:	ca079c23          	sh	zero,-840(a5) # cb8 <screenPos>
 a40:	00412483          	lw	s1,4(sp)
 a44:	01010113          	addi	sp,sp,16
 a48:	00008067          	ret

00000a4c <resetScreenVector>:
 a4c:	000017b7          	lui	a5,0x1
 a50:	ca079c23          	sh	zero,-840(a5) # cb8 <screenPos>
 a54:	00008067          	ret
 a58:	0334                	.insn	2, 0x0334
 a5a:	0000                	.insn	2, 0x
 a5c:	0334                	.insn	2, 0x0334
 a5e:	0000                	.insn	2, 0x
 a60:	0334                	.insn	2, 0x0334
 a62:	0000                	.insn	2, 0x
 a64:	0334                	.insn	2, 0x0334
 a66:	0000                	.insn	2, 0x
 a68:	0334                	.insn	2, 0x0334
 a6a:	0000                	.insn	2, 0x
 a6c:	0334                	.insn	2, 0x0334
 a6e:	0000                	.insn	2, 0x
 a70:	0334                	.insn	2, 0x0334
 a72:	0000                	.insn	2, 0x
 a74:	0334                	.insn	2, 0x0334
 a76:	0000                	.insn	2, 0x
 a78:	0334                	.insn	2, 0x0334
 a7a:	0000                	.insn	2, 0x
 a7c:	0334                	.insn	2, 0x0334
 a7e:	0000                	.insn	2, 0x
 a80:	03cc                	.insn	2, 0x03cc
 a82:	0000                	.insn	2, 0x
 a84:	02f8                	.insn	2, 0x02f8
 a86:	0000                	.insn	2, 0x
 a88:	033c                	.insn	2, 0x033c
 a8a:	0000                	.insn	2, 0x
 a8c:	0344                	.insn	2, 0x0344
 a8e:	0000                	.insn	2, 0x
 a90:	034c                	.insn	2, 0x034c
 a92:	0000                	.insn	2, 0x
 a94:	02f4                	.insn	2, 0x02f4
 a96:	0000                	.insn	2, 0x
 a98:	0354                	.insn	2, 0x0354
 a9a:	0000                	.insn	2, 0x
 a9c:	035c                	.insn	2, 0x035c
 a9e:	0000                	.insn	2, 0x
 aa0:	0364                	.insn	2, 0x0364
 aa2:	0000                	.insn	2, 0x
 aa4:	036c                	.insn	2, 0x036c
 aa6:	0000                	.insn	2, 0x
 aa8:	02f0                	.insn	2, 0x02f0
 aaa:	0000                	.insn	2, 0x
 aac:	0374                	.insn	2, 0x0374
 aae:	0000                	.insn	2, 0x
 ab0:	037c                	.insn	2, 0x037c
 ab2:	0000                	.insn	2, 0x
 ab4:	0384                	.insn	2, 0x0384
 ab6:	0000                	.insn	2, 0x
 ab8:	038c                	.insn	2, 0x038c
 aba:	0000                	.insn	2, 0x
 abc:	0394                	.insn	2, 0x0394
 abe:	0000                	.insn	2, 0x
 ac0:	039c                	.insn	2, 0x039c
 ac2:	0000                	.insn	2, 0x
 ac4:	02f0                	.insn	2, 0x02f0
 ac6:	0000                	.insn	2, 0x
 ac8:	03a4                	.insn	2, 0x03a4
 aca:	0000                	.insn	2, 0x
 acc:	03a4                	.insn	2, 0x03a4
 ace:	0000                	.insn	2, 0x
 ad0:	03a4                	.insn	2, 0x03a4
 ad2:	0000                	.insn	2, 0x
 ad4:	03a4                	.insn	2, 0x03a4
 ad6:	0000                	.insn	2, 0x
 ad8:	03a4                	.insn	2, 0x03a4
 ada:	0000                	.insn	2, 0x
 adc:	03a4                	.insn	2, 0x03a4
 ade:	0000                	.insn	2, 0x
 ae0:	03a4                	.insn	2, 0x03a4
 ae2:	0000                	.insn	2, 0x
 ae4:	03a4                	.insn	2, 0x03a4
 ae6:	0000                	.insn	2, 0x
 ae8:	03a4                	.insn	2, 0x03a4
 aea:	0000                	.insn	2, 0x
 aec:	03a4                	.insn	2, 0x03a4
 aee:	0000                	.insn	2, 0x
 af0:	03a4                	.insn	2, 0x03a4
 af2:	0000                	.insn	2, 0x
 af4:	03a4                	.insn	2, 0x03a4
 af6:	0000                	.insn	2, 0x
 af8:	02f0                	.insn	2, 0x02f0
 afa:	0000                	.insn	2, 0x
 afc:	02f0                	.insn	2, 0x02f0
 afe:	0000                	.insn	2, 0x
 b00:	02f0                	.insn	2, 0x02f0
 b02:	0000                	.insn	2, 0x
 b04:	02f0                	.insn	2, 0x02f0
 b06:	0000                	.insn	2, 0x
 b08:	02f0                	.insn	2, 0x02f0
 b0a:	0000                	.insn	2, 0x
 b0c:	02f0                	.insn	2, 0x02f0
 b0e:	0000                	.insn	2, 0x
 b10:	02f0                	.insn	2, 0x02f0
 b12:	0000                	.insn	2, 0x
 b14:	02f0                	.insn	2, 0x02f0
 b16:	0000                	.insn	2, 0x
 b18:	02f0                	.insn	2, 0x02f0
 b1a:	0000                	.insn	2, 0x
 b1c:	03ac                	.insn	2, 0x03ac
 b1e:	0000                	.insn	2, 0x
 b20:	03b4                	.insn	2, 0x03b4
 b22:	0000                	.insn	2, 0x
 b24:	03bc                	.insn	2, 0x03bc
 b26:	0000                	.insn	2, 0x
 b28:	03c4                	.insn	2, 0x03c4
 b2a:	0000                	.insn	2, 0x
 b2c:	2710                	.insn	2, 0x2710
 b2e:	0000                	.insn	2, 0x
 b30:	03e8                	.insn	2, 0x03e8
 b32:	0000                	.insn	2, 0x
 b34:	0064                	.insn	2, 0x0064
 b36:	0000                	.insn	2, 0x
 b38:	000a                	.insn	2, 0x000a
 b3a:	0000                	.insn	2, 0x
 b3c:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00000b40 <main>:
 b40:	fe010113          	addi	sp,sp,-32
 b44:	004c5537          	lui	a0,0x4c5
 b48:	01212823          	sw	s2,16(sp)
 b4c:	b4150513          	addi	a0,a0,-1215 # 4c4b41 <_stack_end+0x4c3b41>
 b50:	00000593          	li	a1,0
 b54:	00031937          	lui	s2,0x31
 b58:	00812c23          	sw	s0,24(sp)
 b5c:	00912a23          	sw	s1,20(sp)
 b60:	01312623          	sw	s3,12(sp)
 b64:	00112e23          	sw	ra,28(sp)
 b68:	00000493          	li	s1,0
 b6c:	e20ff0ef          	jal	18c <set_timer_interrupt>
 b70:	00000413          	li	s0,0
 b74:	d4090913          	addi	s2,s2,-704 # 30d40 <_stack_end+0x2fd40>
 b78:	000019b7          	lui	s3,0x1
 b7c:	012484b3          	add	s1,s1,s2
 b80:	c6c98613          	addi	a2,s3,-916 # c6c <main+0x12c>
 b84:	40f4d693          	srai	a3,s1,0xf
 b88:	00f00593          	li	a1,15
 b8c:	40000513          	li	a0,1024
 b90:	cd9ff0ef          	jal	868 <printfSCR>
 b94:	00140413          	addi	s0,s0,1
 b98:	00f00613          	li	a2,15
 b9c:	00040593          	mv	a1,s0
 ba0:	44000513          	li	a0,1088
 ba4:	991ff0ef          	jal	534 <printHex>
 ba8:	fd5ff06f          	j	b7c <main+0x3c>
