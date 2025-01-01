
builds/build3/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	00010113          	mv	sp,sp
   8:	ffc10113          	addi	sp,sp,-4 # ffc <screenPos+0x448>
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
  40:	261000ef          	jal	aa0 <_etext>
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
  78:	f8010113          	addi	sp,sp,-128
  7c:	06112e23          	sw	ra,124(sp)
  80:	06512c23          	sw	t0,120(sp)
  84:	06612a23          	sw	t1,116(sp)
  88:	06712823          	sw	t2,112(sp)
  8c:	07c12623          	sw	t3,108(sp)
  90:	07d12423          	sw	t4,104(sp)
  94:	07e12223          	sw	t5,100(sp)
  98:	07f12023          	sw	t6,96(sp)
  9c:	04a12e23          	sw	a0,92(sp)
  a0:	04b12c23          	sw	a1,88(sp)
  a4:	04c12a23          	sw	a2,84(sp)
  a8:	04d12823          	sw	a3,80(sp)
  ac:	04e12623          	sw	a4,76(sp)
  b0:	04f12423          	sw	a5,72(sp)
  b4:	05012223          	sw	a6,68(sp)
  b8:	05112023          	sw	a7,64(sp)
  bc:	34202573          	csrr	a0,mcause
  c0:	341025f3          	csrr	a1,mepc
  c4:	34302673          	csrr	a2,mtval
  c8:	078000ef          	jal	140 <c_trap_handler>
  cc:	07c12083          	lw	ra,124(sp)
  d0:	07812283          	lw	t0,120(sp)
  d4:	07412303          	lw	t1,116(sp)
  d8:	07012383          	lw	t2,112(sp)
  dc:	06c12e03          	lw	t3,108(sp)
  e0:	06812e83          	lw	t4,104(sp)
  e4:	06412f03          	lw	t5,100(sp)
  e8:	06012f83          	lw	t6,96(sp)
  ec:	05c12503          	lw	a0,92(sp)
  f0:	05812583          	lw	a1,88(sp)
  f4:	05412603          	lw	a2,84(sp)
  f8:	05012683          	lw	a3,80(sp)
  fc:	04c12703          	lw	a4,76(sp)
 100:	04812783          	lw	a5,72(sp)
 104:	04412803          	lw	a6,68(sp)
 108:	04012883          	lw	a7,64(sp)
 10c:	08010113          	addi	sp,sp,128
 110:	30200073          	mret

00000114 <set_timer_interrupt>:
 114:	0200c7b7          	lui	a5,0x200c
 118:	ff87a703          	lw	a4,-8(a5) # 200bff8 <MTIME>
 11c:	ffc7a783          	lw	a5,-4(a5)
 120:	00e50533          	add	a0,a0,a4
 124:	00e536b3          	sltu	a3,a0,a4
 128:	00f585b3          	add	a1,a1,a5
 12c:	00b687b3          	add	a5,a3,a1
 130:	020046b7          	lui	a3,0x2004
 134:	00a6a023          	sw	a0,0(a3) # 2004000 <MTIMECMP>
 138:	00f6a223          	sw	a5,4(a3)
 13c:	00008067          	ret

00000140 <c_trap_handler>:
 140:	ff010113          	addi	sp,sp,-16
 144:	00060793          	mv	a5,a2
 148:	00001637          	lui	a2,0x1
 14c:	00812423          	sw	s0,8(sp)
 150:	00058713          	mv	a4,a1
 154:	00050413          	mv	s0,a0
 158:	00050693          	mv	a3,a0
 15c:	ae460613          	addi	a2,a2,-1308 # ae4 <_etext+0x44>
 160:	00f00593          	li	a1,15
 164:	04000513          	li	a0,64
 168:	00112623          	sw	ra,12(sp)
 16c:	00912223          	sw	s1,4(sp)
 170:	658000ef          	jal	7c8 <printfSCR>
 174:	04045a63          	bgez	s0,1c8 <c_trap_handler+0x88>
 178:	000014b7          	lui	s1,0x1
 17c:	bb04a683          	lw	a3,-1104(s1) # bb0 <intCount>
 180:	00001637          	lui	a2,0x1
 184:	b0860613          	addi	a2,a2,-1272 # b08 <_etext+0x68>
 188:	00f00593          	li	a1,15
 18c:	08000513          	li	a0,128
 190:	638000ef          	jal	7c8 <printfSCR>
 194:	bb04a783          	lw	a5,-1104(s1)
 198:	00178793          	addi	a5,a5,1
 19c:	baf4a823          	sw	a5,-1104(s1)
 1a0:	800007b7          	lui	a5,0x80000
 1a4:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
 1a8:	06f41c63          	bne	s0,a5,220 <c_trap_handler+0xe0>
 1ac:	00812403          	lw	s0,8(sp)
 1b0:	00c12083          	lw	ra,12(sp)
 1b4:	00412483          	lw	s1,4(sp)
 1b8:	1f400513          	li	a0,500
 1bc:	00000593          	li	a1,0
 1c0:	01010113          	addi	sp,sp,16
 1c4:	f51ff06f          	j	114 <set_timer_interrupt>
 1c8:	00800793          	li	a5,8
 1cc:	02f40863          	beq	s0,a5,1fc <c_trap_handler+0xbc>
 1d0:	00b00793          	li	a5,11
 1d4:	02f40a63          	beq	s0,a5,208 <c_trap_handler+0xc8>
 1d8:	00200793          	li	a5,2
 1dc:	02f41c63          	bne	s0,a5,214 <c_trap_handler+0xd4>
 1e0:	00001537          	lui	a0,0x1
 1e4:	b1850513          	addi	a0,a0,-1256 # b18 <_etext+0x78>
 1e8:	00812403          	lw	s0,8(sp)
 1ec:	00c12083          	lw	ra,12(sp)
 1f0:	00412483          	lw	s1,4(sp)
 1f4:	01010113          	addi	sp,sp,16
 1f8:	4340006f          	j	62c <printf>
 1fc:	00001537          	lui	a0,0x1
 200:	b3050513          	addi	a0,a0,-1232 # b30 <_etext+0x90>
 204:	fe5ff06f          	j	1e8 <c_trap_handler+0xa8>
 208:	00001537          	lui	a0,0x1
 20c:	b4c50513          	addi	a0,a0,-1204 # b4c <_etext+0xac>
 210:	fd9ff06f          	j	1e8 <c_trap_handler+0xa8>
 214:	00001537          	lui	a0,0x1
 218:	b6850513          	addi	a0,a0,-1176 # b68 <_etext+0xc8>
 21c:	fcdff06f          	j	1e8 <c_trap_handler+0xa8>
 220:	00c12083          	lw	ra,12(sp)
 224:	00812403          	lw	s0,8(sp)
 228:	00412483          	lw	s1,4(sp)
 22c:	01010113          	addi	sp,sp,16
 230:	00008067          	ret

00000234 <getUSBint>:
 234:	100007b7          	lui	a5,0x10000
 238:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
 23c:	00008067          	ret

00000240 <USBParser>:
 240:	01d00793          	li	a5,29
 244:	00a7ee63          	bltu	a5,a0,260 <USBParser+0x20>
 248:	00300793          	li	a5,3
 24c:	02a7ee63          	bltu	a5,a0,288 <USBParser+0x48>
 250:	00000513          	li	a0,0
 254:	00008067          	ret
 258:	01b00513          	li	a0,27
 25c:	00008067          	ret
 260:	fe250793          	addi	a5,a0,-30
 264:	0ff7f793          	zext.b	a5,a5
 268:	03400713          	li	a4,52
 26c:	fef762e3          	bltu	a4,a5,250 <USBParser+0x10>
 270:	00001737          	lui	a4,0x1
 274:	00279793          	slli	a5,a5,0x2
 278:	9b870713          	addi	a4,a4,-1608 # 9b8 <resetScreenVector+0xc>
 27c:	00e787b3          	add	a5,a5,a4
 280:	0007a783          	lw	a5,0(a5)
 284:	00078067          	jr	a5
 288:	05d50513          	addi	a0,a0,93
 28c:	0ff57513          	zext.b	a0,a0
 290:	00008067          	ret
 294:	01350513          	addi	a0,a0,19
 298:	ff5ff06f          	j	28c <USBParser+0x4c>
 29c:	00800513          	li	a0,8
 2a0:	00008067          	ret
 2a4:	00900513          	li	a0,9
 2a8:	00008067          	ret
 2ac:	02000513          	li	a0,32
 2b0:	00008067          	ret
 2b4:	03d00513          	li	a0,61
 2b8:	00008067          	ret
 2bc:	05b00513          	li	a0,91
 2c0:	00008067          	ret
 2c4:	05d00513          	li	a0,93
 2c8:	00008067          	ret
 2cc:	05c00513          	li	a0,92
 2d0:	00008067          	ret
 2d4:	03b00513          	li	a0,59
 2d8:	00008067          	ret
 2dc:	02700513          	li	a0,39
 2e0:	00008067          	ret
 2e4:	06000513          	li	a0,96
 2e8:	00008067          	ret
 2ec:	02c00513          	li	a0,44
 2f0:	00008067          	ret
 2f4:	02e00513          	li	a0,46
 2f8:	00008067          	ret
 2fc:	02f00513          	li	a0,47
 300:	00008067          	ret
 304:	04600513          	li	a0,70
 308:	00008067          	ret
 30c:	05200513          	li	a0,82
 310:	00008067          	ret
 314:	04c00513          	li	a0,76
 318:	00008067          	ret
 31c:	04400513          	li	a0,68
 320:	00008067          	ret
 324:	05500513          	li	a0,85
 328:	00008067          	ret
 32c:	00a00513          	li	a0,10
 330:	00008067          	ret

00000334 <memcpy>:
 334:	00000793          	li	a5,0
 338:	00c7c463          	blt	a5,a2,340 <memcpy+0xc>
 33c:	00008067          	ret
 340:	00f58733          	add	a4,a1,a5
 344:	00074683          	lbu	a3,0(a4)
 348:	00f50733          	add	a4,a0,a5
 34c:	00178793          	addi	a5,a5,1
 350:	00d70023          	sb	a3,0(a4)
 354:	fe5ff06f          	j	338 <memcpy+0x4>

00000358 <memset>:
 358:	00c50633          	add	a2,a0,a2
 35c:	00050793          	mv	a5,a0
 360:	00c79463          	bne	a5,a2,368 <memset+0x10>
 364:	00008067          	ret
 368:	00178793          	addi	a5,a5,1
 36c:	feb78fa3          	sb	a1,-1(a5)
 370:	ff1ff06f          	j	360 <memset+0x8>

00000374 <getButtonDown>:
 374:	890007b7          	lui	a5,0x89000
 378:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
 37c:	00008067          	ret

00000380 <getButtonUp>:
 380:	890007b7          	lui	a5,0x89000
 384:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
 388:	00008067          	ret

0000038c <getButtonLeft>:
 38c:	890007b7          	lui	a5,0x89000
 390:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
 394:	00008067          	ret

00000398 <getButtonRight>:
 398:	890007b7          	lui	a5,0x89000
 39c:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
 3a0:	00008067          	ret

000003a4 <putch>:
 3a4:	4c000793          	li	a5,1216
 3a8:	02a7e263          	bltu	a5,a0,3cc <putch+0x28>
 3ac:	00861613          	slli	a2,a2,0x8
 3b0:	880007b7          	lui	a5,0x88000
 3b4:	00151513          	slli	a0,a0,0x1
 3b8:	00f50533          	add	a0,a0,a5
 3bc:	00b665b3          	or	a1,a2,a1
 3c0:	00b51023          	sh	a1,0(a0)
 3c4:	00100513          	li	a0,1
 3c8:	00008067          	ret
 3cc:	00000513          	li	a0,0
 3d0:	00008067          	ret

000003d4 <printString>:
 3d4:	fe010113          	addi	sp,sp,-32
 3d8:	01312623          	sw	s3,12(sp)
 3dc:	01412423          	sw	s4,8(sp)
 3e0:	00112e23          	sw	ra,28(sp)
 3e4:	00812c23          	sw	s0,24(sp)
 3e8:	00912a23          	sw	s1,20(sp)
 3ec:	01212823          	sw	s2,16(sp)
 3f0:	01512223          	sw	s5,4(sp)
 3f4:	01612023          	sw	s6,0(sp)
 3f8:	00050a13          	mv	s4,a0
 3fc:	00058993          	mv	s3,a1
 400:	06060c63          	beqz	a2,478 <printString+0xa4>
 404:	00060413          	mv	s0,a2
 408:	00000913          	li	s2,0
 40c:	00000493          	li	s1,0
 410:	00100a93          	li	s5,1
 414:	00f00b13          	li	s6,15
 418:	0280006f          	j	440 <printString+0x6c>
 41c:	00040613          	mv	a2,s0
 420:	009a0533          	add	a0,s4,s1
 424:	f81ff0ef          	jal	3a4 <putch>
 428:	06050263          	beqz	a0,48c <printString+0xb8>
 42c:	00148493          	addi	s1,s1,1
 430:	01591863          	bne	s2,s5,440 <printString+0x6c>
 434:	00140413          	addi	s0,s0,1
 438:	0ff47413          	zext.b	s0,s0
 43c:	048b6463          	bltu	s6,s0,484 <printString+0xb0>
 440:	009987b3          	add	a5,s3,s1
 444:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
 448:	00048513          	mv	a0,s1
 44c:	fc0598e3          	bnez	a1,41c <printString+0x48>
 450:	01c12083          	lw	ra,28(sp)
 454:	01812403          	lw	s0,24(sp)
 458:	01412483          	lw	s1,20(sp)
 45c:	01012903          	lw	s2,16(sp)
 460:	00c12983          	lw	s3,12(sp)
 464:	00812a03          	lw	s4,8(sp)
 468:	00412a83          	lw	s5,4(sp)
 46c:	00012b03          	lw	s6,0(sp)
 470:	02010113          	addi	sp,sp,32
 474:	00008067          	ret
 478:	00100913          	li	s2,1
 47c:	00090413          	mv	s0,s2
 480:	f8dff06f          	j	40c <printString+0x38>
 484:	00090413          	mv	s0,s2
 488:	fb9ff06f          	j	440 <printString+0x6c>
 48c:	00000513          	li	a0,0
 490:	fc1ff06f          	j	450 <printString+0x7c>

00000494 <printHex>:
 494:	fd010113          	addi	sp,sp,-48
 498:	02812423          	sw	s0,40(sp)
 49c:	00058413          	mv	s0,a1
 4a0:	000015b7          	lui	a1,0x1
 4a4:	02912223          	sw	s1,36(sp)
 4a8:	03212023          	sw	s2,32(sp)
 4ac:	b9458593          	addi	a1,a1,-1132 # b94 <_etext+0xf4>
 4b0:	00050493          	mv	s1,a0
 4b4:	00060913          	mv	s2,a2
 4b8:	00c10513          	addi	a0,sp,12
 4bc:	01100613          	li	a2,17
 4c0:	02112623          	sw	ra,44(sp)
 4c4:	e71ff0ef          	jal	334 <memcpy>
 4c8:	202027b7          	lui	a5,0x20202
 4cc:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
 4d0:	00f12023          	sw	a5,0(sp)
 4d4:	00f12223          	sw	a5,4(sp)
 4d8:	00010423          	sb	zero,8(sp)
 4dc:	00700793          	li	a5,7
 4e0:	00010593          	mv	a1,sp
 4e4:	fff00693          	li	a3,-1
 4e8:	00f47713          	andi	a4,s0,15
 4ec:	02070713          	addi	a4,a4,32
 4f0:	00270733          	add	a4,a4,sp
 4f4:	fec74703          	lbu	a4,-20(a4)
 4f8:	00f58633          	add	a2,a1,a5
 4fc:	fff78793          	addi	a5,a5,-1
 500:	00e60023          	sb	a4,0(a2)
 504:	40445413          	srai	s0,s0,0x4
 508:	fed790e3          	bne	a5,a3,4e8 <printHex+0x54>
 50c:	00090613          	mv	a2,s2
 510:	00048513          	mv	a0,s1
 514:	ec1ff0ef          	jal	3d4 <printString>
 518:	02c12083          	lw	ra,44(sp)
 51c:	02812403          	lw	s0,40(sp)
 520:	02412483          	lw	s1,36(sp)
 524:	02012903          	lw	s2,32(sp)
 528:	0ff57513          	zext.b	a0,a0
 52c:	03010113          	addi	sp,sp,48
 530:	00008067          	ret

00000534 <printDec>:
 534:	fd010113          	addi	sp,sp,-48
 538:	02812423          	sw	s0,40(sp)
 53c:	00058413          	mv	s0,a1
 540:	000015b7          	lui	a1,0x1
 544:	02912223          	sw	s1,36(sp)
 548:	03212023          	sw	s2,32(sp)
 54c:	00050493          	mv	s1,a0
 550:	00060913          	mv	s2,a2
 554:	a8c58593          	addi	a1,a1,-1396 # a8c <resetScreenVector+0xe0>
 558:	01400613          	li	a2,20
 55c:	00c10513          	addi	a0,sp,12
 560:	02112623          	sw	ra,44(sp)
 564:	dd1ff0ef          	jal	334 <memcpy>
 568:	000187b7          	lui	a5,0x18
 56c:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 570:	0287fa63          	bgeu	a5,s0,5a4 <printDec+0x70>
 574:	000015b7          	lui	a1,0x1
 578:	00090613          	mv	a2,s2
 57c:	ba858593          	addi	a1,a1,-1112 # ba8 <_etext+0x108>
 580:	00048513          	mv	a0,s1
 584:	e51ff0ef          	jal	3d4 <printString>
 588:	02c12083          	lw	ra,44(sp)
 58c:	02812403          	lw	s0,40(sp)
 590:	02412483          	lw	s1,36(sp)
 594:	02012903          	lw	s2,32(sp)
 598:	0ff57513          	zext.b	a0,a0
 59c:	03010113          	addi	sp,sp,48
 5a0:	00008067          	ret
 5a4:	00100613          	li	a2,1
 5a8:	00c10713          	addi	a4,sp,12
 5ac:	00000793          	li	a5,0
 5b0:	00060513          	mv	a0,a2
 5b4:	00072583          	lw	a1,0(a4)
 5b8:	00000693          	li	a3,0
 5bc:	06b47263          	bgeu	s0,a1,620 <printDec+0xec>
 5c0:	00069663          	bnez	a3,5cc <printDec+0x98>
 5c4:	00a58463          	beq	a1,a0,5cc <printDec+0x98>
 5c8:	00061e63          	bnez	a2,5e4 <printDec+0xb0>
 5cc:	02078613          	addi	a2,a5,32
 5d0:	00260633          	add	a2,a2,sp
 5d4:	03068693          	addi	a3,a3,48
 5d8:	fed60223          	sb	a3,-28(a2)
 5dc:	00178793          	addi	a5,a5,1
 5e0:	00000613          	li	a2,0
 5e4:	00470713          	addi	a4,a4,4
 5e8:	02010693          	addi	a3,sp,32
 5ec:	fcd714e3          	bne	a4,a3,5b4 <printDec+0x80>
 5f0:	00060c63          	beqz	a2,608 <printDec+0xd4>
 5f4:	02078713          	addi	a4,a5,32
 5f8:	00270733          	add	a4,a4,sp
 5fc:	03000693          	li	a3,48
 600:	fed70223          	sb	a3,-28(a4)
 604:	00178793          	addi	a5,a5,1
 608:	02078793          	addi	a5,a5,32
 60c:	002787b3          	add	a5,a5,sp
 610:	fe078223          	sb	zero,-28(a5)
 614:	00090613          	mv	a2,s2
 618:	00410593          	addi	a1,sp,4
 61c:	f65ff06f          	j	580 <printDec+0x4c>
 620:	40b40433          	sub	s0,s0,a1
 624:	00168693          	addi	a3,a3,1
 628:	f95ff06f          	j	5bc <printDec+0x88>

0000062c <printf>:
 62c:	fa010113          	addi	sp,sp,-96
 630:	04f12a23          	sw	a5,84(sp)
 634:	04410793          	addi	a5,sp,68
 638:	02812c23          	sw	s0,56(sp)
 63c:	02912a23          	sw	s1,52(sp)
 640:	03212823          	sw	s2,48(sp)
 644:	03312623          	sw	s3,44(sp)
 648:	03412423          	sw	s4,40(sp)
 64c:	03512223          	sw	s5,36(sp)
 650:	03612023          	sw	s6,32(sp)
 654:	01812c23          	sw	s8,24(sp)
 658:	02112e23          	sw	ra,60(sp)
 65c:	01712e23          	sw	s7,28(sp)
 660:	00050493          	mv	s1,a0
 664:	04b12223          	sw	a1,68(sp)
 668:	04c12423          	sw	a2,72(sp)
 66c:	04d12623          	sw	a3,76(sp)
 670:	04e12823          	sw	a4,80(sp)
 674:	05012c23          	sw	a6,88(sp)
 678:	05112e23          	sw	a7,92(sp)
 67c:	00f12623          	sw	a5,12(sp)
 680:	00000c13          	li	s8,0
 684:	00001437          	lui	s0,0x1
 688:	00a00993          	li	s3,10
 68c:	02500913          	li	s2,37
 690:	07800a13          	li	s4,120
 694:	06400a93          	li	s5,100
 698:	06300b13          	li	s6,99
 69c:	018487b3          	add	a5,s1,s8
 6a0:	0007c583          	lbu	a1,0(a5)
 6a4:	bb441503          	lh	a0,-1100(s0) # bb4 <screenPos>
 6a8:	02059a63          	bnez	a1,6dc <printf+0xb0>
 6ac:	03c12083          	lw	ra,60(sp)
 6b0:	03812403          	lw	s0,56(sp)
 6b4:	03412483          	lw	s1,52(sp)
 6b8:	03012903          	lw	s2,48(sp)
 6bc:	02c12983          	lw	s3,44(sp)
 6c0:	02812a03          	lw	s4,40(sp)
 6c4:	02412a83          	lw	s5,36(sp)
 6c8:	02012b03          	lw	s6,32(sp)
 6cc:	01c12b83          	lw	s7,28(sp)
 6d0:	01812c03          	lw	s8,24(sp)
 6d4:	06010113          	addi	sp,sp,96
 6d8:	00008067          	ret
 6dc:	001c0b93          	addi	s7,s8,1
 6e0:	01359e63          	bne	a1,s3,6fc <printf+0xd0>
 6e4:	fc057793          	andi	a5,a0,-64
 6e8:	04078793          	addi	a5,a5,64
 6ec:	01079793          	slli	a5,a5,0x10
 6f0:	4107d793          	srai	a5,a5,0x10
 6f4:	000c0b93          	mv	s7,s8
 6f8:	0380006f          	j	730 <printf+0x104>
 6fc:	0d259263          	bne	a1,s2,7c0 <printf+0x194>
 700:	0017c783          	lbu	a5,1(a5)
 704:	03479c63          	bne	a5,s4,73c <printf+0x110>
 708:	00c12783          	lw	a5,12(sp)
 70c:	00f00613          	li	a2,15
 710:	0007a583          	lw	a1,0(a5)
 714:	00478713          	addi	a4,a5,4
 718:	00e12623          	sw	a4,12(sp)
 71c:	d79ff0ef          	jal	494 <printHex>
 720:	bb445783          	lhu	a5,-1100(s0)
 724:	00f507b3          	add	a5,a0,a5
 728:	01079793          	slli	a5,a5,0x10
 72c:	4107d793          	srai	a5,a5,0x10
 730:	baf41a23          	sh	a5,-1100(s0)
 734:	001b8c13          	addi	s8,s7,1
 738:	f65ff06f          	j	69c <printf+0x70>
 73c:	03579063          	bne	a5,s5,75c <printf+0x130>
 740:	00c12783          	lw	a5,12(sp)
 744:	00f00613          	li	a2,15
 748:	0007a583          	lw	a1,0(a5)
 74c:	00478713          	addi	a4,a5,4
 750:	00e12623          	sw	a4,12(sp)
 754:	de1ff0ef          	jal	534 <printDec>
 758:	fc9ff06f          	j	720 <printf+0xf4>
 75c:	03679463          	bne	a5,s6,784 <printf+0x158>
 760:	00c12783          	lw	a5,12(sp)
 764:	00f00613          	li	a2,15
 768:	0007c583          	lbu	a1,0(a5)
 76c:	00478713          	addi	a4,a5,4
 770:	00e12623          	sw	a4,12(sp)
 774:	c31ff0ef          	jal	3a4 <putch>
 778:	bb445783          	lhu	a5,-1100(s0)
 77c:	00178793          	addi	a5,a5,1
 780:	fa9ff06f          	j	728 <printf+0xfc>
 784:	07300713          	li	a4,115
 788:	02e79063          	bne	a5,a4,7a8 <printf+0x17c>
 78c:	00c12783          	lw	a5,12(sp)
 790:	00f00613          	li	a2,15
 794:	0007a583          	lw	a1,0(a5)
 798:	00478713          	addi	a4,a5,4
 79c:	00e12623          	sw	a4,12(sp)
 7a0:	c35ff0ef          	jal	3d4 <printString>
 7a4:	f7dff06f          	j	720 <printf+0xf4>
 7a8:	00f00613          	li	a2,15
 7ac:	00090593          	mv	a1,s2
 7b0:	bf5ff0ef          	jal	3a4 <putch>
 7b4:	bb445783          	lhu	a5,-1100(s0)
 7b8:	00178793          	addi	a5,a5,1
 7bc:	f31ff06f          	j	6ec <printf+0xc0>
 7c0:	00f00613          	li	a2,15
 7c4:	fedff06f          	j	7b0 <printf+0x184>

000007c8 <printfSCR>:
 7c8:	f9010113          	addi	sp,sp,-112
 7cc:	06f12223          	sw	a5,100(sp)
 7d0:	05c10793          	addi	a5,sp,92
 7d4:	04812423          	sw	s0,72(sp)
 7d8:	04912223          	sw	s1,68(sp)
 7dc:	05212023          	sw	s2,64(sp)
 7e0:	03412c23          	sw	s4,56(sp)
 7e4:	03512a23          	sw	s5,52(sp)
 7e8:	03612823          	sw	s6,48(sp)
 7ec:	03712623          	sw	s7,44(sp)
 7f0:	03812423          	sw	s8,40(sp)
 7f4:	03912223          	sw	s9,36(sp)
 7f8:	03a12023          	sw	s10,32(sp)
 7fc:	01b12e23          	sw	s11,28(sp)
 800:	04112623          	sw	ra,76(sp)
 804:	03312e23          	sw	s3,60(sp)
 808:	00050a93          	mv	s5,a0
 80c:	00058493          	mv	s1,a1
 810:	00060a13          	mv	s4,a2
 814:	04d12e23          	sw	a3,92(sp)
 818:	06e12023          	sw	a4,96(sp)
 81c:	07012423          	sw	a6,104(sp)
 820:	07112623          	sw	a7,108(sp)
 824:	00f12623          	sw	a5,12(sp)
 828:	00000913          	li	s2,0
 82c:	00000413          	li	s0,0
 830:	00a00b93          	li	s7,10
 834:	02500b13          	li	s6,37
 838:	07800c13          	li	s8,120
 83c:	06400c93          	li	s9,100
 840:	06300d13          	li	s10,99
 844:	07300d93          	li	s11,115
 848:	012a07b3          	add	a5,s4,s2
 84c:	0007c583          	lbu	a1,0(a5)
 850:	04059263          	bnez	a1,894 <_stack_bottom+0x94>
 854:	04c12083          	lw	ra,76(sp)
 858:	00040513          	mv	a0,s0
 85c:	04812403          	lw	s0,72(sp)
 860:	04412483          	lw	s1,68(sp)
 864:	04012903          	lw	s2,64(sp)
 868:	03c12983          	lw	s3,60(sp)
 86c:	03812a03          	lw	s4,56(sp)
 870:	03412a83          	lw	s5,52(sp)
 874:	03012b03          	lw	s6,48(sp)
 878:	02c12b83          	lw	s7,44(sp)
 87c:	02812c03          	lw	s8,40(sp)
 880:	02412c83          	lw	s9,36(sp)
 884:	02012d03          	lw	s10,32(sp)
 888:	01c12d83          	lw	s11,28(sp)
 88c:	07010113          	addi	sp,sp,112
 890:	00008067          	ret
 894:	00190993          	addi	s3,s2,1
 898:	01759a63          	bne	a1,s7,8ac <_stack_bottom+0xac>
 89c:	fc047413          	andi	s0,s0,-64
 8a0:	04040413          	addi	s0,s0,64
 8a4:	00090993          	mv	s3,s2
 8a8:	0740006f          	j	91c <_stack_bottom+0x11c>
 8ac:	01540533          	add	a0,s0,s5
 8b0:	0b659463          	bne	a1,s6,958 <_stack_bottom+0x158>
 8b4:	0017c783          	lbu	a5,1(a5)
 8b8:	03879263          	bne	a5,s8,8dc <_stack_bottom+0xdc>
 8bc:	00c12783          	lw	a5,12(sp)
 8c0:	00048613          	mv	a2,s1
 8c4:	0007a583          	lw	a1,0(a5)
 8c8:	00478713          	addi	a4,a5,4
 8cc:	00e12623          	sw	a4,12(sp)
 8d0:	bc5ff0ef          	jal	494 <printHex>
 8d4:	00a40433          	add	s0,s0,a0
 8d8:	0440006f          	j	91c <_stack_bottom+0x11c>
 8dc:	03979063          	bne	a5,s9,8fc <_stack_bottom+0xfc>
 8e0:	00c12783          	lw	a5,12(sp)
 8e4:	00048613          	mv	a2,s1
 8e8:	0007a583          	lw	a1,0(a5)
 8ec:	00478713          	addi	a4,a5,4
 8f0:	00e12623          	sw	a4,12(sp)
 8f4:	c41ff0ef          	jal	534 <printDec>
 8f8:	fddff06f          	j	8d4 <_stack_bottom+0xd4>
 8fc:	03a79463          	bne	a5,s10,924 <_stack_bottom+0x124>
 900:	00c12783          	lw	a5,12(sp)
 904:	00048613          	mv	a2,s1
 908:	00140413          	addi	s0,s0,1
 90c:	0007c583          	lbu	a1,0(a5)
 910:	00478713          	addi	a4,a5,4
 914:	00e12623          	sw	a4,12(sp)
 918:	a8dff0ef          	jal	3a4 <putch>
 91c:	00198913          	addi	s2,s3,1
 920:	f29ff06f          	j	848 <_stack_bottom+0x48>
 924:	03b79063          	bne	a5,s11,944 <_stack_bottom+0x144>
 928:	00c12783          	lw	a5,12(sp)
 92c:	00048613          	mv	a2,s1
 930:	0007a583          	lw	a1,0(a5)
 934:	00478713          	addi	a4,a5,4
 938:	00e12623          	sw	a4,12(sp)
 93c:	a99ff0ef          	jal	3d4 <printString>
 940:	f95ff06f          	j	8d4 <_stack_bottom+0xd4>
 944:	00048613          	mv	a2,s1
 948:	000b0593          	mv	a1,s6
 94c:	a59ff0ef          	jal	3a4 <putch>
 950:	00140413          	addi	s0,s0,1
 954:	f51ff06f          	j	8a4 <_stack_bottom+0xa4>
 958:	00048613          	mv	a2,s1
 95c:	ff1ff06f          	j	94c <_stack_bottom+0x14c>

00000960 <clearScreen>:
 960:	ff010113          	addi	sp,sp,-16
 964:	00812423          	sw	s0,8(sp)
 968:	00912223          	sw	s1,4(sp)
 96c:	00112623          	sw	ra,12(sp)
 970:	00000413          	li	s0,0
 974:	4c000493          	li	s1,1216
 978:	00040513          	mv	a0,s0
 97c:	00f00613          	li	a2,15
 980:	02000593          	li	a1,32
 984:	00140413          	addi	s0,s0,1
 988:	a1dff0ef          	jal	3a4 <putch>
 98c:	fe9416e3          	bne	s0,s1,978 <clearScreen+0x18>
 990:	00c12083          	lw	ra,12(sp)
 994:	00812403          	lw	s0,8(sp)
 998:	000017b7          	lui	a5,0x1
 99c:	ba079a23          	sh	zero,-1100(a5) # bb4 <screenPos>
 9a0:	00412483          	lw	s1,4(sp)
 9a4:	01010113          	addi	sp,sp,16
 9a8:	00008067          	ret

000009ac <resetScreenVector>:
 9ac:	000017b7          	lui	a5,0x1
 9b0:	ba079a23          	sh	zero,-1100(a5) # bb4 <screenPos>
 9b4:	00008067          	ret
 9b8:	0294                	.insn	2, 0x0294
 9ba:	0000                	.insn	2, 0x
 9bc:	0294                	.insn	2, 0x0294
 9be:	0000                	.insn	2, 0x
 9c0:	0294                	.insn	2, 0x0294
 9c2:	0000                	.insn	2, 0x
 9c4:	0294                	.insn	2, 0x0294
 9c6:	0000                	.insn	2, 0x
 9c8:	0294                	.insn	2, 0x0294
 9ca:	0000                	.insn	2, 0x
 9cc:	0294                	.insn	2, 0x0294
 9ce:	0000                	.insn	2, 0x
 9d0:	0294                	.insn	2, 0x0294
 9d2:	0000                	.insn	2, 0x
 9d4:	0294                	.insn	2, 0x0294
 9d6:	0000                	.insn	2, 0x
 9d8:	0294                	.insn	2, 0x0294
 9da:	0000                	.insn	2, 0x
 9dc:	0294                	.insn	2, 0x0294
 9de:	0000                	.insn	2, 0x
 9e0:	032c                	.insn	2, 0x032c
 9e2:	0000                	.insn	2, 0x
 9e4:	0258                	.insn	2, 0x0258
 9e6:	0000                	.insn	2, 0x
 9e8:	029c                	.insn	2, 0x029c
 9ea:	0000                	.insn	2, 0x
 9ec:	02a4                	.insn	2, 0x02a4
 9ee:	0000                	.insn	2, 0x
 9f0:	02ac                	.insn	2, 0x02ac
 9f2:	0000                	.insn	2, 0x
 9f4:	0254                	.insn	2, 0x0254
 9f6:	0000                	.insn	2, 0x
 9f8:	02b4                	.insn	2, 0x02b4
 9fa:	0000                	.insn	2, 0x
 9fc:	02bc                	.insn	2, 0x02bc
 9fe:	0000                	.insn	2, 0x
 a00:	02c4                	.insn	2, 0x02c4
 a02:	0000                	.insn	2, 0x
 a04:	02cc                	.insn	2, 0x02cc
 a06:	0000                	.insn	2, 0x
 a08:	0250                	.insn	2, 0x0250
 a0a:	0000                	.insn	2, 0x
 a0c:	02d4                	.insn	2, 0x02d4
 a0e:	0000                	.insn	2, 0x
 a10:	02dc                	.insn	2, 0x02dc
 a12:	0000                	.insn	2, 0x
 a14:	02e4                	.insn	2, 0x02e4
 a16:	0000                	.insn	2, 0x
 a18:	02ec                	.insn	2, 0x02ec
 a1a:	0000                	.insn	2, 0x
 a1c:	02f4                	.insn	2, 0x02f4
 a1e:	0000                	.insn	2, 0x
 a20:	02fc                	.insn	2, 0x02fc
 a22:	0000                	.insn	2, 0x
 a24:	0250                	.insn	2, 0x0250
 a26:	0000                	.insn	2, 0x
 a28:	0304                	.insn	2, 0x0304
 a2a:	0000                	.insn	2, 0x
 a2c:	0304                	.insn	2, 0x0304
 a2e:	0000                	.insn	2, 0x
 a30:	0304                	.insn	2, 0x0304
 a32:	0000                	.insn	2, 0x
 a34:	0304                	.insn	2, 0x0304
 a36:	0000                	.insn	2, 0x
 a38:	0304                	.insn	2, 0x0304
 a3a:	0000                	.insn	2, 0x
 a3c:	0304                	.insn	2, 0x0304
 a3e:	0000                	.insn	2, 0x
 a40:	0304                	.insn	2, 0x0304
 a42:	0000                	.insn	2, 0x
 a44:	0304                	.insn	2, 0x0304
 a46:	0000                	.insn	2, 0x
 a48:	0304                	.insn	2, 0x0304
 a4a:	0000                	.insn	2, 0x
 a4c:	0304                	.insn	2, 0x0304
 a4e:	0000                	.insn	2, 0x
 a50:	0304                	.insn	2, 0x0304
 a52:	0000                	.insn	2, 0x
 a54:	0304                	.insn	2, 0x0304
 a56:	0000                	.insn	2, 0x
 a58:	0250                	.insn	2, 0x0250
 a5a:	0000                	.insn	2, 0x
 a5c:	0250                	.insn	2, 0x0250
 a5e:	0000                	.insn	2, 0x
 a60:	0250                	.insn	2, 0x0250
 a62:	0000                	.insn	2, 0x
 a64:	0250                	.insn	2, 0x0250
 a66:	0000                	.insn	2, 0x
 a68:	0250                	.insn	2, 0x0250
 a6a:	0000                	.insn	2, 0x
 a6c:	0250                	.insn	2, 0x0250
 a6e:	0000                	.insn	2, 0x
 a70:	0250                	.insn	2, 0x0250
 a72:	0000                	.insn	2, 0x
 a74:	0250                	.insn	2, 0x0250
 a76:	0000                	.insn	2, 0x
 a78:	0250                	.insn	2, 0x0250
 a7a:	0000                	.insn	2, 0x
 a7c:	030c                	.insn	2, 0x030c
 a7e:	0000                	.insn	2, 0x
 a80:	0314                	.insn	2, 0x0314
 a82:	0000                	.insn	2, 0x
 a84:	031c                	.insn	2, 0x031c
 a86:	0000                	.insn	2, 0x
 a88:	0324                	.insn	2, 0x0324
 a8a:	0000                	.insn	2, 0x
 a8c:	2710                	.insn	2, 0x2710
 a8e:	0000                	.insn	2, 0x
 a90:	03e8                	.insn	2, 0x03e8
 a92:	0000                	.insn	2, 0x
 a94:	0064                	.insn	2, 0x0064
 a96:	0000                	.insn	2, 0x
 a98:	000a                	.insn	2, 0x000a
 a9a:	0000                	.insn	2, 0x
 a9c:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00000aa0 <main>:
 aa0:	ff010113          	addi	sp,sp,-16
 aa4:	1f400513          	li	a0,500
 aa8:	00000593          	li	a1,0
 aac:	00812423          	sw	s0,8(sp)
 ab0:	00912223          	sw	s1,4(sp)
 ab4:	00112623          	sw	ra,12(sp)
 ab8:	00000413          	li	s0,0
 abc:	e58ff0ef          	jal	114 <set_timer_interrupt>
 ac0:	000014b7          	lui	s1,0x1
 ac4:	00140413          	addi	s0,s0,1
 ac8:	00141713          	slli	a4,s0,0x1
 acc:	00040693          	mv	a3,s0
 ad0:	b8048613          	addi	a2,s1,-1152 # b80 <main+0xe0>
 ad4:	00f00593          	li	a1,15
 ad8:	44000513          	li	a0,1088
 adc:	cedff0ef          	jal	7c8 <printfSCR>
 ae0:	fe5ff06f          	j	ac4 <main+0x24>
