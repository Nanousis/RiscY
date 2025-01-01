
builds/build6/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	00010113          	mv	sp,sp
   8:	ffc10113          	addi	sp,sp,-4 # ffc <screenPos+0x340>
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
  40:	31d000ef          	jal	b5c <_etext>
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
 1c8:	00912223          	sw	s1,4(sp)
 1cc:	00050413          	mv	s0,a0
 1d0:	00058493          	mv	s1,a1
 1d4:	00058713          	mv	a4,a1
 1d8:	00050693          	mv	a3,a0
 1dc:	bb060613          	addi	a2,a2,-1104 # bb0 <_etext+0x54>
 1e0:	00f00593          	li	a1,15
 1e4:	04000513          	li	a0,64
 1e8:	00112623          	sw	ra,12(sp)
 1ec:	01212023          	sw	s2,0(sp)
 1f0:	694000ef          	jal	884 <printfSCR>
 1f4:	08045463          	bgez	s0,27c <c_trap_handler+0xc4>
 1f8:	00001937          	lui	s2,0x1
 1fc:	cb892683          	lw	a3,-840(s2) # cb8 <intCount>
 200:	00001637          	lui	a2,0x1
 204:	bd460613          	addi	a2,a2,-1068 # bd4 <_etext+0x78>
 208:	00f00593          	li	a1,15
 20c:	08000513          	li	a0,128
 210:	674000ef          	jal	884 <printfSCR>
 214:	004007b7          	lui	a5,0x400
 218:	00f4f463          	bgeu	s1,a5,220 <c_trap_handler+0x68>
 21c:	0000006f          	j	21c <c_trap_handler+0x64>
 220:	cb892783          	lw	a5,-840(s2)
 224:	00178793          	addi	a5,a5,1 # 400001 <_stack_end+0x3ff001>
 228:	caf92c23          	sw	a5,-840(s2)
 22c:	800007b7          	lui	a5,0x80000
 230:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
 234:	0af41263          	bne	s0,a5,2d8 <c_trap_handler+0x120>
 238:	0200c7b7          	lui	a5,0x200c
 23c:	02004737          	lui	a4,0x2004
 240:	00072703          	lw	a4,0(a4) # 2004000 <MTIMECMP>
 244:	ff87a683          	lw	a3,-8(a5) # 200bff8 <MTIME>
 248:	00001637          	lui	a2,0x1
 24c:	00f00593          	li	a1,15
 250:	be460613          	addi	a2,a2,-1052 # be4 <_etext+0x88>
 254:	0c000513          	li	a0,192
 258:	62c000ef          	jal	884 <printfSCR>
 25c:	00812403          	lw	s0,8(sp)
 260:	00c12083          	lw	ra,12(sp)
 264:	00412483          	lw	s1,4(sp)
 268:	00012903          	lw	s2,0(sp)
 26c:	7d000513          	li	a0,2000
 270:	00000593          	li	a1,0
 274:	01010113          	addi	sp,sp,16
 278:	f15ff06f          	j	18c <set_timer_interrupt>
 27c:	00800793          	li	a5,8
 280:	02f40a63          	beq	s0,a5,2b4 <c_trap_handler+0xfc>
 284:	00b00793          	li	a5,11
 288:	02f40c63          	beq	s0,a5,2c0 <c_trap_handler+0x108>
 28c:	00200793          	li	a5,2
 290:	02f41e63          	bne	s0,a5,2cc <c_trap_handler+0x114>
 294:	00001537          	lui	a0,0x1
 298:	c0850513          	addi	a0,a0,-1016 # c08 <_etext+0xac>
 29c:	00812403          	lw	s0,8(sp)
 2a0:	00c12083          	lw	ra,12(sp)
 2a4:	00412483          	lw	s1,4(sp)
 2a8:	00012903          	lw	s2,0(sp)
 2ac:	01010113          	addi	sp,sp,16
 2b0:	4380006f          	j	6e8 <printf>
 2b4:	00001537          	lui	a0,0x1
 2b8:	c2050513          	addi	a0,a0,-992 # c20 <_etext+0xc4>
 2bc:	fe1ff06f          	j	29c <c_trap_handler+0xe4>
 2c0:	00001537          	lui	a0,0x1
 2c4:	c3c50513          	addi	a0,a0,-964 # c3c <_etext+0xe0>
 2c8:	fd5ff06f          	j	29c <c_trap_handler+0xe4>
 2cc:	00001537          	lui	a0,0x1
 2d0:	c5850513          	addi	a0,a0,-936 # c58 <_etext+0xfc>
 2d4:	fc9ff06f          	j	29c <c_trap_handler+0xe4>
 2d8:	00c12083          	lw	ra,12(sp)
 2dc:	00812403          	lw	s0,8(sp)
 2e0:	00412483          	lw	s1,4(sp)
 2e4:	00012903          	lw	s2,0(sp)
 2e8:	01010113          	addi	sp,sp,16
 2ec:	00008067          	ret

000002f0 <getUSBint>:
 2f0:	100007b7          	lui	a5,0x10000
 2f4:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
 2f8:	00008067          	ret

000002fc <USBParser>:
 2fc:	01d00793          	li	a5,29
 300:	00a7ee63          	bltu	a5,a0,31c <USBParser+0x20>
 304:	00300793          	li	a5,3
 308:	02a7ee63          	bltu	a5,a0,344 <USBParser+0x48>
 30c:	00000513          	li	a0,0
 310:	00008067          	ret
 314:	01b00513          	li	a0,27
 318:	00008067          	ret
 31c:	fe250793          	addi	a5,a0,-30
 320:	0ff7f793          	zext.b	a5,a5
 324:	03400713          	li	a4,52
 328:	fef762e3          	bltu	a4,a5,30c <USBParser+0x10>
 32c:	00001737          	lui	a4,0x1
 330:	00279793          	slli	a5,a5,0x2
 334:	a7470713          	addi	a4,a4,-1420 # a74 <resetScreenVector+0xc>
 338:	00e787b3          	add	a5,a5,a4
 33c:	0007a783          	lw	a5,0(a5)
 340:	00078067          	jr	a5
 344:	05d50513          	addi	a0,a0,93
 348:	0ff57513          	zext.b	a0,a0
 34c:	00008067          	ret
 350:	01350513          	addi	a0,a0,19
 354:	ff5ff06f          	j	348 <USBParser+0x4c>
 358:	00800513          	li	a0,8
 35c:	00008067          	ret
 360:	00900513          	li	a0,9
 364:	00008067          	ret
 368:	02000513          	li	a0,32
 36c:	00008067          	ret
 370:	03d00513          	li	a0,61
 374:	00008067          	ret
 378:	05b00513          	li	a0,91
 37c:	00008067          	ret
 380:	05d00513          	li	a0,93
 384:	00008067          	ret
 388:	05c00513          	li	a0,92
 38c:	00008067          	ret
 390:	03b00513          	li	a0,59
 394:	00008067          	ret
 398:	02700513          	li	a0,39
 39c:	00008067          	ret
 3a0:	06000513          	li	a0,96
 3a4:	00008067          	ret
 3a8:	02c00513          	li	a0,44
 3ac:	00008067          	ret
 3b0:	02e00513          	li	a0,46
 3b4:	00008067          	ret
 3b8:	02f00513          	li	a0,47
 3bc:	00008067          	ret
 3c0:	04600513          	li	a0,70
 3c4:	00008067          	ret
 3c8:	05200513          	li	a0,82
 3cc:	00008067          	ret
 3d0:	04c00513          	li	a0,76
 3d4:	00008067          	ret
 3d8:	04400513          	li	a0,68
 3dc:	00008067          	ret
 3e0:	05500513          	li	a0,85
 3e4:	00008067          	ret
 3e8:	00a00513          	li	a0,10
 3ec:	00008067          	ret

000003f0 <memcpy>:
 3f0:	00000793          	li	a5,0
 3f4:	00c7c463          	blt	a5,a2,3fc <memcpy+0xc>
 3f8:	00008067          	ret
 3fc:	00f58733          	add	a4,a1,a5
 400:	00074683          	lbu	a3,0(a4)
 404:	00f50733          	add	a4,a0,a5
 408:	00178793          	addi	a5,a5,1
 40c:	00d70023          	sb	a3,0(a4)
 410:	fe5ff06f          	j	3f4 <memcpy+0x4>

00000414 <memset>:
 414:	00c50633          	add	a2,a0,a2
 418:	00050793          	mv	a5,a0
 41c:	00c79463          	bne	a5,a2,424 <memset+0x10>
 420:	00008067          	ret
 424:	00178793          	addi	a5,a5,1
 428:	feb78fa3          	sb	a1,-1(a5)
 42c:	ff1ff06f          	j	41c <memset+0x8>

00000430 <getButtonDown>:
 430:	890007b7          	lui	a5,0x89000
 434:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
 438:	00008067          	ret

0000043c <getButtonUp>:
 43c:	890007b7          	lui	a5,0x89000
 440:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
 444:	00008067          	ret

00000448 <getButtonLeft>:
 448:	890007b7          	lui	a5,0x89000
 44c:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
 450:	00008067          	ret

00000454 <getButtonRight>:
 454:	890007b7          	lui	a5,0x89000
 458:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
 45c:	00008067          	ret

00000460 <putch>:
 460:	4c000793          	li	a5,1216
 464:	02a7e263          	bltu	a5,a0,488 <putch+0x28>
 468:	00861613          	slli	a2,a2,0x8
 46c:	880007b7          	lui	a5,0x88000
 470:	00151513          	slli	a0,a0,0x1
 474:	00f50533          	add	a0,a0,a5
 478:	00b665b3          	or	a1,a2,a1
 47c:	00b51023          	sh	a1,0(a0)
 480:	00100513          	li	a0,1
 484:	00008067          	ret
 488:	00000513          	li	a0,0
 48c:	00008067          	ret

00000490 <printString>:
 490:	fe010113          	addi	sp,sp,-32
 494:	01312623          	sw	s3,12(sp)
 498:	01412423          	sw	s4,8(sp)
 49c:	00112e23          	sw	ra,28(sp)
 4a0:	00812c23          	sw	s0,24(sp)
 4a4:	00912a23          	sw	s1,20(sp)
 4a8:	01212823          	sw	s2,16(sp)
 4ac:	01512223          	sw	s5,4(sp)
 4b0:	01612023          	sw	s6,0(sp)
 4b4:	00050a13          	mv	s4,a0
 4b8:	00058993          	mv	s3,a1
 4bc:	06060c63          	beqz	a2,534 <printString+0xa4>
 4c0:	00060413          	mv	s0,a2
 4c4:	00000913          	li	s2,0
 4c8:	00000493          	li	s1,0
 4cc:	00100a93          	li	s5,1
 4d0:	00f00b13          	li	s6,15
 4d4:	0280006f          	j	4fc <printString+0x6c>
 4d8:	00040613          	mv	a2,s0
 4dc:	009a0533          	add	a0,s4,s1
 4e0:	f81ff0ef          	jal	460 <putch>
 4e4:	06050263          	beqz	a0,548 <printString+0xb8>
 4e8:	00148493          	addi	s1,s1,1
 4ec:	01591863          	bne	s2,s5,4fc <printString+0x6c>
 4f0:	00140413          	addi	s0,s0,1
 4f4:	0ff47413          	zext.b	s0,s0
 4f8:	048b6463          	bltu	s6,s0,540 <printString+0xb0>
 4fc:	009987b3          	add	a5,s3,s1
 500:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
 504:	00048513          	mv	a0,s1
 508:	fc0598e3          	bnez	a1,4d8 <printString+0x48>
 50c:	01c12083          	lw	ra,28(sp)
 510:	01812403          	lw	s0,24(sp)
 514:	01412483          	lw	s1,20(sp)
 518:	01012903          	lw	s2,16(sp)
 51c:	00c12983          	lw	s3,12(sp)
 520:	00812a03          	lw	s4,8(sp)
 524:	00412a83          	lw	s5,4(sp)
 528:	00012b03          	lw	s6,0(sp)
 52c:	02010113          	addi	sp,sp,32
 530:	00008067          	ret
 534:	00100913          	li	s2,1
 538:	00090413          	mv	s0,s2
 53c:	f8dff06f          	j	4c8 <printString+0x38>
 540:	00090413          	mv	s0,s2
 544:	fb9ff06f          	j	4fc <printString+0x6c>
 548:	00000513          	li	a0,0
 54c:	fc1ff06f          	j	50c <printString+0x7c>

00000550 <printHex>:
 550:	fd010113          	addi	sp,sp,-48
 554:	02812423          	sw	s0,40(sp)
 558:	00058413          	mv	s0,a1
 55c:	000015b7          	lui	a1,0x1
 560:	02912223          	sw	s1,36(sp)
 564:	03212023          	sw	s2,32(sp)
 568:	c9c58593          	addi	a1,a1,-868 # c9c <_etext+0x140>
 56c:	00050493          	mv	s1,a0
 570:	00060913          	mv	s2,a2
 574:	00c10513          	addi	a0,sp,12
 578:	01100613          	li	a2,17
 57c:	02112623          	sw	ra,44(sp)
 580:	e71ff0ef          	jal	3f0 <memcpy>
 584:	202027b7          	lui	a5,0x20202
 588:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
 58c:	00f12023          	sw	a5,0(sp)
 590:	00f12223          	sw	a5,4(sp)
 594:	00010423          	sb	zero,8(sp)
 598:	00700793          	li	a5,7
 59c:	00010593          	mv	a1,sp
 5a0:	fff00693          	li	a3,-1
 5a4:	00f47713          	andi	a4,s0,15
 5a8:	02070713          	addi	a4,a4,32
 5ac:	00270733          	add	a4,a4,sp
 5b0:	fec74703          	lbu	a4,-20(a4)
 5b4:	00f58633          	add	a2,a1,a5
 5b8:	fff78793          	addi	a5,a5,-1
 5bc:	00e60023          	sb	a4,0(a2)
 5c0:	40445413          	srai	s0,s0,0x4
 5c4:	fed790e3          	bne	a5,a3,5a4 <printHex+0x54>
 5c8:	00090613          	mv	a2,s2
 5cc:	00048513          	mv	a0,s1
 5d0:	ec1ff0ef          	jal	490 <printString>
 5d4:	02c12083          	lw	ra,44(sp)
 5d8:	02812403          	lw	s0,40(sp)
 5dc:	02412483          	lw	s1,36(sp)
 5e0:	02012903          	lw	s2,32(sp)
 5e4:	0ff57513          	zext.b	a0,a0
 5e8:	03010113          	addi	sp,sp,48
 5ec:	00008067          	ret

000005f0 <printDec>:
 5f0:	fd010113          	addi	sp,sp,-48
 5f4:	02812423          	sw	s0,40(sp)
 5f8:	00058413          	mv	s0,a1
 5fc:	000015b7          	lui	a1,0x1
 600:	02912223          	sw	s1,36(sp)
 604:	03212023          	sw	s2,32(sp)
 608:	00050493          	mv	s1,a0
 60c:	00060913          	mv	s2,a2
 610:	b4858593          	addi	a1,a1,-1208 # b48 <resetScreenVector+0xe0>
 614:	01400613          	li	a2,20
 618:	00c10513          	addi	a0,sp,12
 61c:	02112623          	sw	ra,44(sp)
 620:	dd1ff0ef          	jal	3f0 <memcpy>
 624:	000187b7          	lui	a5,0x18
 628:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 62c:	0287fa63          	bgeu	a5,s0,660 <printDec+0x70>
 630:	000015b7          	lui	a1,0x1
 634:	00090613          	mv	a2,s2
 638:	cb058593          	addi	a1,a1,-848 # cb0 <_etext+0x154>
 63c:	00048513          	mv	a0,s1
 640:	e51ff0ef          	jal	490 <printString>
 644:	02c12083          	lw	ra,44(sp)
 648:	02812403          	lw	s0,40(sp)
 64c:	02412483          	lw	s1,36(sp)
 650:	02012903          	lw	s2,32(sp)
 654:	0ff57513          	zext.b	a0,a0
 658:	03010113          	addi	sp,sp,48
 65c:	00008067          	ret
 660:	00100613          	li	a2,1
 664:	00c10713          	addi	a4,sp,12
 668:	00000793          	li	a5,0
 66c:	00060513          	mv	a0,a2
 670:	00072583          	lw	a1,0(a4)
 674:	00000693          	li	a3,0
 678:	06b47263          	bgeu	s0,a1,6dc <printDec+0xec>
 67c:	00069663          	bnez	a3,688 <printDec+0x98>
 680:	00a58463          	beq	a1,a0,688 <printDec+0x98>
 684:	00061e63          	bnez	a2,6a0 <printDec+0xb0>
 688:	02078613          	addi	a2,a5,32
 68c:	00260633          	add	a2,a2,sp
 690:	03068693          	addi	a3,a3,48
 694:	fed60223          	sb	a3,-28(a2)
 698:	00178793          	addi	a5,a5,1
 69c:	00000613          	li	a2,0
 6a0:	00470713          	addi	a4,a4,4
 6a4:	02010693          	addi	a3,sp,32
 6a8:	fcd714e3          	bne	a4,a3,670 <printDec+0x80>
 6ac:	00060c63          	beqz	a2,6c4 <printDec+0xd4>
 6b0:	02078713          	addi	a4,a5,32
 6b4:	00270733          	add	a4,a4,sp
 6b8:	03000693          	li	a3,48
 6bc:	fed70223          	sb	a3,-28(a4)
 6c0:	00178793          	addi	a5,a5,1
 6c4:	02078793          	addi	a5,a5,32
 6c8:	002787b3          	add	a5,a5,sp
 6cc:	fe078223          	sb	zero,-28(a5)
 6d0:	00090613          	mv	a2,s2
 6d4:	00410593          	addi	a1,sp,4
 6d8:	f65ff06f          	j	63c <printDec+0x4c>
 6dc:	40b40433          	sub	s0,s0,a1
 6e0:	00168693          	addi	a3,a3,1
 6e4:	f95ff06f          	j	678 <printDec+0x88>

000006e8 <printf>:
 6e8:	fa010113          	addi	sp,sp,-96
 6ec:	04f12a23          	sw	a5,84(sp)
 6f0:	04410793          	addi	a5,sp,68
 6f4:	02812c23          	sw	s0,56(sp)
 6f8:	02912a23          	sw	s1,52(sp)
 6fc:	03212823          	sw	s2,48(sp)
 700:	03312623          	sw	s3,44(sp)
 704:	03412423          	sw	s4,40(sp)
 708:	03512223          	sw	s5,36(sp)
 70c:	03612023          	sw	s6,32(sp)
 710:	01812c23          	sw	s8,24(sp)
 714:	02112e23          	sw	ra,60(sp)
 718:	01712e23          	sw	s7,28(sp)
 71c:	00050493          	mv	s1,a0
 720:	04b12223          	sw	a1,68(sp)
 724:	04c12423          	sw	a2,72(sp)
 728:	04d12623          	sw	a3,76(sp)
 72c:	04e12823          	sw	a4,80(sp)
 730:	05012c23          	sw	a6,88(sp)
 734:	05112e23          	sw	a7,92(sp)
 738:	00f12623          	sw	a5,12(sp)
 73c:	00000c13          	li	s8,0
 740:	00001437          	lui	s0,0x1
 744:	00a00993          	li	s3,10
 748:	02500913          	li	s2,37
 74c:	07800a13          	li	s4,120
 750:	06400a93          	li	s5,100
 754:	06300b13          	li	s6,99
 758:	018487b3          	add	a5,s1,s8
 75c:	0007c583          	lbu	a1,0(a5)
 760:	cbc41503          	lh	a0,-836(s0) # cbc <screenPos>
 764:	02059a63          	bnez	a1,798 <printf+0xb0>
 768:	03c12083          	lw	ra,60(sp)
 76c:	03812403          	lw	s0,56(sp)
 770:	03412483          	lw	s1,52(sp)
 774:	03012903          	lw	s2,48(sp)
 778:	02c12983          	lw	s3,44(sp)
 77c:	02812a03          	lw	s4,40(sp)
 780:	02412a83          	lw	s5,36(sp)
 784:	02012b03          	lw	s6,32(sp)
 788:	01c12b83          	lw	s7,28(sp)
 78c:	01812c03          	lw	s8,24(sp)
 790:	06010113          	addi	sp,sp,96
 794:	00008067          	ret
 798:	001c0b93          	addi	s7,s8,1
 79c:	01359e63          	bne	a1,s3,7b8 <printf+0xd0>
 7a0:	fc057793          	andi	a5,a0,-64
 7a4:	04078793          	addi	a5,a5,64
 7a8:	01079793          	slli	a5,a5,0x10
 7ac:	4107d793          	srai	a5,a5,0x10
 7b0:	000c0b93          	mv	s7,s8
 7b4:	0380006f          	j	7ec <printf+0x104>
 7b8:	0d259263          	bne	a1,s2,87c <_stack_bottom+0x7c>
 7bc:	0017c783          	lbu	a5,1(a5)
 7c0:	03479c63          	bne	a5,s4,7f8 <printf+0x110>
 7c4:	00c12783          	lw	a5,12(sp)
 7c8:	00f00613          	li	a2,15
 7cc:	0007a583          	lw	a1,0(a5)
 7d0:	00478713          	addi	a4,a5,4
 7d4:	00e12623          	sw	a4,12(sp)
 7d8:	d79ff0ef          	jal	550 <printHex>
 7dc:	cbc45783          	lhu	a5,-836(s0)
 7e0:	00f507b3          	add	a5,a0,a5
 7e4:	01079793          	slli	a5,a5,0x10
 7e8:	4107d793          	srai	a5,a5,0x10
 7ec:	caf41e23          	sh	a5,-836(s0)
 7f0:	001b8c13          	addi	s8,s7,1
 7f4:	f65ff06f          	j	758 <printf+0x70>
 7f8:	03579063          	bne	a5,s5,818 <_stack_bottom+0x18>
 7fc:	00c12783          	lw	a5,12(sp)
 800:	00f00613          	li	a2,15
 804:	0007a583          	lw	a1,0(a5)
 808:	00478713          	addi	a4,a5,4
 80c:	00e12623          	sw	a4,12(sp)
 810:	de1ff0ef          	jal	5f0 <printDec>
 814:	fc9ff06f          	j	7dc <printf+0xf4>
 818:	03679463          	bne	a5,s6,840 <_stack_bottom+0x40>
 81c:	00c12783          	lw	a5,12(sp)
 820:	00f00613          	li	a2,15
 824:	0007c583          	lbu	a1,0(a5)
 828:	00478713          	addi	a4,a5,4
 82c:	00e12623          	sw	a4,12(sp)
 830:	c31ff0ef          	jal	460 <putch>
 834:	cbc45783          	lhu	a5,-836(s0)
 838:	00178793          	addi	a5,a5,1
 83c:	fa9ff06f          	j	7e4 <printf+0xfc>
 840:	07300713          	li	a4,115
 844:	02e79063          	bne	a5,a4,864 <_stack_bottom+0x64>
 848:	00c12783          	lw	a5,12(sp)
 84c:	00f00613          	li	a2,15
 850:	0007a583          	lw	a1,0(a5)
 854:	00478713          	addi	a4,a5,4
 858:	00e12623          	sw	a4,12(sp)
 85c:	c35ff0ef          	jal	490 <printString>
 860:	f7dff06f          	j	7dc <printf+0xf4>
 864:	00f00613          	li	a2,15
 868:	00090593          	mv	a1,s2
 86c:	bf5ff0ef          	jal	460 <putch>
 870:	cbc45783          	lhu	a5,-836(s0)
 874:	00178793          	addi	a5,a5,1
 878:	f31ff06f          	j	7a8 <printf+0xc0>
 87c:	00f00613          	li	a2,15
 880:	fedff06f          	j	86c <_stack_bottom+0x6c>

00000884 <printfSCR>:
 884:	f9010113          	addi	sp,sp,-112
 888:	06f12223          	sw	a5,100(sp)
 88c:	05c10793          	addi	a5,sp,92
 890:	04812423          	sw	s0,72(sp)
 894:	04912223          	sw	s1,68(sp)
 898:	05212023          	sw	s2,64(sp)
 89c:	03412c23          	sw	s4,56(sp)
 8a0:	03512a23          	sw	s5,52(sp)
 8a4:	03612823          	sw	s6,48(sp)
 8a8:	03712623          	sw	s7,44(sp)
 8ac:	03812423          	sw	s8,40(sp)
 8b0:	03912223          	sw	s9,36(sp)
 8b4:	03a12023          	sw	s10,32(sp)
 8b8:	01b12e23          	sw	s11,28(sp)
 8bc:	04112623          	sw	ra,76(sp)
 8c0:	03312e23          	sw	s3,60(sp)
 8c4:	00050a93          	mv	s5,a0
 8c8:	00058493          	mv	s1,a1
 8cc:	00060a13          	mv	s4,a2
 8d0:	04d12e23          	sw	a3,92(sp)
 8d4:	06e12023          	sw	a4,96(sp)
 8d8:	07012423          	sw	a6,104(sp)
 8dc:	07112623          	sw	a7,108(sp)
 8e0:	00f12623          	sw	a5,12(sp)
 8e4:	00000913          	li	s2,0
 8e8:	00000413          	li	s0,0
 8ec:	00a00b93          	li	s7,10
 8f0:	02500b13          	li	s6,37
 8f4:	07800c13          	li	s8,120
 8f8:	06400c93          	li	s9,100
 8fc:	06300d13          	li	s10,99
 900:	07300d93          	li	s11,115
 904:	012a07b3          	add	a5,s4,s2
 908:	0007c583          	lbu	a1,0(a5)
 90c:	04059263          	bnez	a1,950 <printfSCR+0xcc>
 910:	04c12083          	lw	ra,76(sp)
 914:	00040513          	mv	a0,s0
 918:	04812403          	lw	s0,72(sp)
 91c:	04412483          	lw	s1,68(sp)
 920:	04012903          	lw	s2,64(sp)
 924:	03c12983          	lw	s3,60(sp)
 928:	03812a03          	lw	s4,56(sp)
 92c:	03412a83          	lw	s5,52(sp)
 930:	03012b03          	lw	s6,48(sp)
 934:	02c12b83          	lw	s7,44(sp)
 938:	02812c03          	lw	s8,40(sp)
 93c:	02412c83          	lw	s9,36(sp)
 940:	02012d03          	lw	s10,32(sp)
 944:	01c12d83          	lw	s11,28(sp)
 948:	07010113          	addi	sp,sp,112
 94c:	00008067          	ret
 950:	00190993          	addi	s3,s2,1
 954:	01759a63          	bne	a1,s7,968 <printfSCR+0xe4>
 958:	fc047413          	andi	s0,s0,-64
 95c:	04040413          	addi	s0,s0,64
 960:	00090993          	mv	s3,s2
 964:	0740006f          	j	9d8 <printfSCR+0x154>
 968:	01540533          	add	a0,s0,s5
 96c:	0b659463          	bne	a1,s6,a14 <printfSCR+0x190>
 970:	0017c783          	lbu	a5,1(a5)
 974:	03879263          	bne	a5,s8,998 <printfSCR+0x114>
 978:	00c12783          	lw	a5,12(sp)
 97c:	00048613          	mv	a2,s1
 980:	0007a583          	lw	a1,0(a5)
 984:	00478713          	addi	a4,a5,4
 988:	00e12623          	sw	a4,12(sp)
 98c:	bc5ff0ef          	jal	550 <printHex>
 990:	00a40433          	add	s0,s0,a0
 994:	0440006f          	j	9d8 <printfSCR+0x154>
 998:	03979063          	bne	a5,s9,9b8 <printfSCR+0x134>
 99c:	00c12783          	lw	a5,12(sp)
 9a0:	00048613          	mv	a2,s1
 9a4:	0007a583          	lw	a1,0(a5)
 9a8:	00478713          	addi	a4,a5,4
 9ac:	00e12623          	sw	a4,12(sp)
 9b0:	c41ff0ef          	jal	5f0 <printDec>
 9b4:	fddff06f          	j	990 <printfSCR+0x10c>
 9b8:	03a79463          	bne	a5,s10,9e0 <printfSCR+0x15c>
 9bc:	00c12783          	lw	a5,12(sp)
 9c0:	00048613          	mv	a2,s1
 9c4:	00140413          	addi	s0,s0,1
 9c8:	0007c583          	lbu	a1,0(a5)
 9cc:	00478713          	addi	a4,a5,4
 9d0:	00e12623          	sw	a4,12(sp)
 9d4:	a8dff0ef          	jal	460 <putch>
 9d8:	00198913          	addi	s2,s3,1
 9dc:	f29ff06f          	j	904 <printfSCR+0x80>
 9e0:	03b79063          	bne	a5,s11,a00 <printfSCR+0x17c>
 9e4:	00c12783          	lw	a5,12(sp)
 9e8:	00048613          	mv	a2,s1
 9ec:	0007a583          	lw	a1,0(a5)
 9f0:	00478713          	addi	a4,a5,4
 9f4:	00e12623          	sw	a4,12(sp)
 9f8:	a99ff0ef          	jal	490 <printString>
 9fc:	f95ff06f          	j	990 <printfSCR+0x10c>
 a00:	00048613          	mv	a2,s1
 a04:	000b0593          	mv	a1,s6
 a08:	a59ff0ef          	jal	460 <putch>
 a0c:	00140413          	addi	s0,s0,1
 a10:	f51ff06f          	j	960 <printfSCR+0xdc>
 a14:	00048613          	mv	a2,s1
 a18:	ff1ff06f          	j	a08 <printfSCR+0x184>

00000a1c <clearScreen>:
 a1c:	ff010113          	addi	sp,sp,-16
 a20:	00812423          	sw	s0,8(sp)
 a24:	00912223          	sw	s1,4(sp)
 a28:	00112623          	sw	ra,12(sp)
 a2c:	00000413          	li	s0,0
 a30:	4c000493          	li	s1,1216
 a34:	00040513          	mv	a0,s0
 a38:	00f00613          	li	a2,15
 a3c:	02000593          	li	a1,32
 a40:	00140413          	addi	s0,s0,1
 a44:	a1dff0ef          	jal	460 <putch>
 a48:	fe9416e3          	bne	s0,s1,a34 <clearScreen+0x18>
 a4c:	00c12083          	lw	ra,12(sp)
 a50:	00812403          	lw	s0,8(sp)
 a54:	000017b7          	lui	a5,0x1
 a58:	ca079e23          	sh	zero,-836(a5) # cbc <screenPos>
 a5c:	00412483          	lw	s1,4(sp)
 a60:	01010113          	addi	sp,sp,16
 a64:	00008067          	ret

00000a68 <resetScreenVector>:
 a68:	000017b7          	lui	a5,0x1
 a6c:	ca079e23          	sh	zero,-836(a5) # cbc <screenPos>
 a70:	00008067          	ret
 a74:	0350                	.insn	2, 0x0350
 a76:	0000                	.insn	2, 0x
 a78:	0350                	.insn	2, 0x0350
 a7a:	0000                	.insn	2, 0x
 a7c:	0350                	.insn	2, 0x0350
 a7e:	0000                	.insn	2, 0x
 a80:	0350                	.insn	2, 0x0350
 a82:	0000                	.insn	2, 0x
 a84:	0350                	.insn	2, 0x0350
 a86:	0000                	.insn	2, 0x
 a88:	0350                	.insn	2, 0x0350
 a8a:	0000                	.insn	2, 0x
 a8c:	0350                	.insn	2, 0x0350
 a8e:	0000                	.insn	2, 0x
 a90:	0350                	.insn	2, 0x0350
 a92:	0000                	.insn	2, 0x
 a94:	0350                	.insn	2, 0x0350
 a96:	0000                	.insn	2, 0x
 a98:	0350                	.insn	2, 0x0350
 a9a:	0000                	.insn	2, 0x
 a9c:	03e8                	.insn	2, 0x03e8
 a9e:	0000                	.insn	2, 0x
 aa0:	0314                	.insn	2, 0x0314
 aa2:	0000                	.insn	2, 0x
 aa4:	0358                	.insn	2, 0x0358
 aa6:	0000                	.insn	2, 0x
 aa8:	0360                	.insn	2, 0x0360
 aaa:	0000                	.insn	2, 0x
 aac:	0368                	.insn	2, 0x0368
 aae:	0000                	.insn	2, 0x
 ab0:	0310                	.insn	2, 0x0310
 ab2:	0000                	.insn	2, 0x
 ab4:	0370                	.insn	2, 0x0370
 ab6:	0000                	.insn	2, 0x
 ab8:	0378                	.insn	2, 0x0378
 aba:	0000                	.insn	2, 0x
 abc:	0380                	.insn	2, 0x0380
 abe:	0000                	.insn	2, 0x
 ac0:	0388                	.insn	2, 0x0388
 ac2:	0000                	.insn	2, 0x
 ac4:	030c                	.insn	2, 0x030c
 ac6:	0000                	.insn	2, 0x
 ac8:	0390                	.insn	2, 0x0390
 aca:	0000                	.insn	2, 0x
 acc:	0398                	.insn	2, 0x0398
 ace:	0000                	.insn	2, 0x
 ad0:	03a0                	.insn	2, 0x03a0
 ad2:	0000                	.insn	2, 0x
 ad4:	03a8                	.insn	2, 0x03a8
 ad6:	0000                	.insn	2, 0x
 ad8:	03b0                	.insn	2, 0x03b0
 ada:	0000                	.insn	2, 0x
 adc:	03b8                	.insn	2, 0x03b8
 ade:	0000                	.insn	2, 0x
 ae0:	030c                	.insn	2, 0x030c
 ae2:	0000                	.insn	2, 0x
 ae4:	03c0                	.insn	2, 0x03c0
 ae6:	0000                	.insn	2, 0x
 ae8:	03c0                	.insn	2, 0x03c0
 aea:	0000                	.insn	2, 0x
 aec:	03c0                	.insn	2, 0x03c0
 aee:	0000                	.insn	2, 0x
 af0:	03c0                	.insn	2, 0x03c0
 af2:	0000                	.insn	2, 0x
 af4:	03c0                	.insn	2, 0x03c0
 af6:	0000                	.insn	2, 0x
 af8:	03c0                	.insn	2, 0x03c0
 afa:	0000                	.insn	2, 0x
 afc:	03c0                	.insn	2, 0x03c0
 afe:	0000                	.insn	2, 0x
 b00:	03c0                	.insn	2, 0x03c0
 b02:	0000                	.insn	2, 0x
 b04:	03c0                	.insn	2, 0x03c0
 b06:	0000                	.insn	2, 0x
 b08:	03c0                	.insn	2, 0x03c0
 b0a:	0000                	.insn	2, 0x
 b0c:	03c0                	.insn	2, 0x03c0
 b0e:	0000                	.insn	2, 0x
 b10:	03c0                	.insn	2, 0x03c0
 b12:	0000                	.insn	2, 0x
 b14:	030c                	.insn	2, 0x030c
 b16:	0000                	.insn	2, 0x
 b18:	030c                	.insn	2, 0x030c
 b1a:	0000                	.insn	2, 0x
 b1c:	030c                	.insn	2, 0x030c
 b1e:	0000                	.insn	2, 0x
 b20:	030c                	.insn	2, 0x030c
 b22:	0000                	.insn	2, 0x
 b24:	030c                	.insn	2, 0x030c
 b26:	0000                	.insn	2, 0x
 b28:	030c                	.insn	2, 0x030c
 b2a:	0000                	.insn	2, 0x
 b2c:	030c                	.insn	2, 0x030c
 b2e:	0000                	.insn	2, 0x
 b30:	030c                	.insn	2, 0x030c
 b32:	0000                	.insn	2, 0x
 b34:	030c                	.insn	2, 0x030c
 b36:	0000                	.insn	2, 0x
 b38:	03c8                	.insn	2, 0x03c8
 b3a:	0000                	.insn	2, 0x
 b3c:	03d0                	.insn	2, 0x03d0
 b3e:	0000                	.insn	2, 0x
 b40:	03d8                	.insn	2, 0x03d8
 b42:	0000                	.insn	2, 0x
 b44:	03e0                	.insn	2, 0x03e0
 b46:	0000                	.insn	2, 0x
 b48:	2710                	.insn	2, 0x2710
 b4a:	0000                	.insn	2, 0x
 b4c:	03e8                	.insn	2, 0x03e8
 b4e:	0000                	.insn	2, 0x
 b50:	0064                	.insn	2, 0x0064
 b52:	0000                	.insn	2, 0x
 b54:	000a                	.insn	2, 0x000a
 b56:	0000                	.insn	2, 0x
 b58:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00000b5c <main>:
 b5c:	ff010113          	addi	sp,sp,-16
 b60:	7d000513          	li	a0,2000
 b64:	00000593          	li	a1,0
 b68:	00812423          	sw	s0,8(sp)
 b6c:	00912223          	sw	s1,4(sp)
 b70:	00112623          	sw	ra,12(sp)
 b74:	00000413          	li	s0,0
 b78:	e14ff0ef          	jal	18c <set_timer_interrupt>
 b7c:	000014b7          	lui	s1,0x1
 b80:	00140413          	addi	s0,s0,1
 b84:	00141693          	slli	a3,s0,0x1
 b88:	c7048613          	addi	a2,s1,-912 # c70 <main+0x114>
 b8c:	40f6d693          	srai	a3,a3,0xf
 b90:	00f00593          	li	a1,15
 b94:	40000513          	li	a0,1024
 b98:	cedff0ef          	jal	884 <printfSCR>
 b9c:	00f00613          	li	a2,15
 ba0:	00040593          	mv	a1,s0
 ba4:	44000513          	li	a0,1088
 ba8:	9a9ff0ef          	jal	550 <printHex>
 bac:	fd5ff06f          	j	b80 <main+0x24>
