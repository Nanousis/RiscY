
builds/build12/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	e0010113          	addi	sp,sp,-512 # e00 <_stack_top>
   8:	6e8000ef          	jal	6f0 <_etext>
   c:	0200006f          	j	2c <_exit>

00000010 <_putc>:
  10:	880003b7          	lui	t2,0x88000
  14:	00a383b3          	add	t2,t2,a0
  18:	00f00293          	li	t0,15
  1c:	00829293          	slli	t0,t0,0x8
  20:	00b2e2b3          	or	t0,t0,a1
  24:	00539023          	sh	t0,0(t2) # 88000000 <_stack_end+0x87fff000>
  28:	00008067          	ret

0000002c <_exit>:
  2c:	00000513          	li	a0,0
  30:	04500593          	li	a1,69
  34:	fddff0ef          	jal	10 <_putc>
  38:	00250513          	addi	a0,a0,2
  3c:	05800593          	li	a1,88
  40:	fd1ff0ef          	jal	10 <_putc>
  44:	00250513          	addi	a0,a0,2
  48:	04900593          	li	a1,73
  4c:	fc5ff0ef          	jal	10 <_putc>
  50:	00250513          	addi	a0,a0,2
  54:	05400593          	li	a1,84
  58:	fb9ff0ef          	jal	10 <_putc>
  5c:	fd1ff06f          	j	2c <_exit>

00000060 <memcpy>:
  60:	00000793          	li	a5,0
  64:	00c7c463          	blt	a5,a2,6c <memcpy+0xc>
  68:	00008067          	ret
  6c:	00f58733          	add	a4,a1,a5
  70:	00074683          	lbu	a3,0(a4)
  74:	00f50733          	add	a4,a0,a5
  78:	00178793          	addi	a5,a5,1
  7c:	00d70023          	sb	a3,0(a4)
  80:	fe5ff06f          	j	64 <memcpy+0x4>

00000084 <memset>:
  84:	00c50633          	add	a2,a0,a2
  88:	00050793          	mv	a5,a0
  8c:	00c79463          	bne	a5,a2,94 <memset+0x10>
  90:	00008067          	ret
  94:	00178793          	addi	a5,a5,1
  98:	feb78fa3          	sb	a1,-1(a5)
  9c:	ff1ff06f          	j	8c <memset+0x8>

000000a0 <getButton>:
  a0:	890007b7          	lui	a5,0x89000
  a4:	00a787b3          	add	a5,a5,a0
  a8:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
  ac:	00008067          	ret

000000b0 <getButtonDown>:
  b0:	890007b7          	lui	a5,0x89000
  b4:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
  b8:	00008067          	ret

000000bc <getButtonUp>:
  bc:	890007b7          	lui	a5,0x89000
  c0:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88fff001>
  c4:	00008067          	ret

000000c8 <getButtonLeft>:
  c8:	890007b7          	lui	a5,0x89000
  cc:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88fff002>
  d0:	00008067          	ret

000000d4 <getButtonRight>:
  d4:	890007b7          	lui	a5,0x89000
  d8:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88fff003>
  dc:	00008067          	ret

000000e0 <putch>:
  e0:	4c000793          	li	a5,1216
  e4:	02a7e263          	bltu	a5,a0,108 <putch+0x28>
  e8:	00861613          	slli	a2,a2,0x8
  ec:	880007b7          	lui	a5,0x88000
  f0:	00151513          	slli	a0,a0,0x1
  f4:	00f50533          	add	a0,a0,a5
  f8:	00b665b3          	or	a1,a2,a1
  fc:	00b51023          	sh	a1,0(a0)
 100:	00100513          	li	a0,1
 104:	00008067          	ret
 108:	00000513          	li	a0,0
 10c:	00008067          	ret

00000110 <printString>:
 110:	fe010113          	addi	sp,sp,-32
 114:	01312623          	sw	s3,12(sp)
 118:	01412423          	sw	s4,8(sp)
 11c:	00112e23          	sw	ra,28(sp)
 120:	00812c23          	sw	s0,24(sp)
 124:	00912a23          	sw	s1,20(sp)
 128:	01212823          	sw	s2,16(sp)
 12c:	01512223          	sw	s5,4(sp)
 130:	01612023          	sw	s6,0(sp)
 134:	00050a13          	mv	s4,a0
 138:	00058993          	mv	s3,a1
 13c:	06060c63          	beqz	a2,1b4 <printString+0xa4>
 140:	00060413          	mv	s0,a2
 144:	00000913          	li	s2,0
 148:	00000493          	li	s1,0
 14c:	00100a93          	li	s5,1
 150:	00f00b13          	li	s6,15
 154:	0280006f          	j	17c <printString+0x6c>
 158:	00040613          	mv	a2,s0
 15c:	009a0533          	add	a0,s4,s1
 160:	f81ff0ef          	jal	e0 <putch>
 164:	06050263          	beqz	a0,1c8 <printString+0xb8>
 168:	00148493          	addi	s1,s1,1
 16c:	01591863          	bne	s2,s5,17c <printString+0x6c>
 170:	00140413          	addi	s0,s0,1
 174:	0ff47413          	zext.b	s0,s0
 178:	048b6463          	bltu	s6,s0,1c0 <printString+0xb0>
 17c:	009987b3          	add	a5,s3,s1
 180:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87fff000>
 184:	00048513          	mv	a0,s1
 188:	fc0598e3          	bnez	a1,158 <printString+0x48>
 18c:	01c12083          	lw	ra,28(sp)
 190:	01812403          	lw	s0,24(sp)
 194:	01412483          	lw	s1,20(sp)
 198:	01012903          	lw	s2,16(sp)
 19c:	00c12983          	lw	s3,12(sp)
 1a0:	00812a03          	lw	s4,8(sp)
 1a4:	00412a83          	lw	s5,4(sp)
 1a8:	00012b03          	lw	s6,0(sp)
 1ac:	02010113          	addi	sp,sp,32
 1b0:	00008067          	ret
 1b4:	00100913          	li	s2,1
 1b8:	00090413          	mv	s0,s2
 1bc:	f8dff06f          	j	148 <printString+0x38>
 1c0:	00090413          	mv	s0,s2
 1c4:	fb9ff06f          	j	17c <printString+0x6c>
 1c8:	00000513          	li	a0,0
 1cc:	fc1ff06f          	j	18c <printString+0x7c>

000001d0 <printHex>:
 1d0:	fd010113          	addi	sp,sp,-48
 1d4:	02812423          	sw	s0,40(sp)
 1d8:	00058413          	mv	s0,a1
 1dc:	02912223          	sw	s1,36(sp)
 1e0:	03212023          	sw	s2,32(sp)
 1e4:	71c00593          	li	a1,1820
 1e8:	00050493          	mv	s1,a0
 1ec:	00060913          	mv	s2,a2
 1f0:	00c10513          	addi	a0,sp,12
 1f4:	01100613          	li	a2,17
 1f8:	02112623          	sw	ra,44(sp)
 1fc:	e65ff0ef          	jal	60 <memcpy>
 200:	202027b7          	lui	a5,0x20202
 204:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 208:	00f12023          	sw	a5,0(sp)
 20c:	00f12223          	sw	a5,4(sp)
 210:	00010423          	sb	zero,8(sp)
 214:	00700793          	li	a5,7
 218:	00010593          	mv	a1,sp
 21c:	fff00693          	li	a3,-1
 220:	00f47713          	andi	a4,s0,15
 224:	02070713          	addi	a4,a4,32
 228:	00270733          	add	a4,a4,sp
 22c:	fec74703          	lbu	a4,-20(a4)
 230:	00f58633          	add	a2,a1,a5
 234:	fff78793          	addi	a5,a5,-1
 238:	00e60023          	sb	a4,0(a2)
 23c:	40445413          	srai	s0,s0,0x4
 240:	fed790e3          	bne	a5,a3,220 <_stack_size+0x20>
 244:	00090613          	mv	a2,s2
 248:	00048513          	mv	a0,s1
 24c:	ec5ff0ef          	jal	110 <printString>
 250:	02c12083          	lw	ra,44(sp)
 254:	02812403          	lw	s0,40(sp)
 258:	02412483          	lw	s1,36(sp)
 25c:	02012903          	lw	s2,32(sp)
 260:	0ff57513          	zext.b	a0,a0
 264:	03010113          	addi	sp,sp,48
 268:	00008067          	ret

0000026c <printDec>:
 26c:	fd010113          	addi	sp,sp,-48
 270:	02812423          	sw	s0,40(sp)
 274:	00058413          	mv	s0,a1
 278:	02912223          	sw	s1,36(sp)
 27c:	03212023          	sw	s2,32(sp)
 280:	00050493          	mv	s1,a0
 284:	00060913          	mv	s2,a2
 288:	6dc00593          	li	a1,1756
 28c:	01400613          	li	a2,20
 290:	00c10513          	addi	a0,sp,12
 294:	02112623          	sw	ra,44(sp)
 298:	dc9ff0ef          	jal	60 <memcpy>
 29c:	000187b7          	lui	a5,0x18
 2a0:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 2a4:	0287f863          	bgeu	a5,s0,2d4 <printDec+0x68>
 2a8:	00090613          	mv	a2,s2
 2ac:	73000593          	li	a1,1840
 2b0:	00048513          	mv	a0,s1
 2b4:	e5dff0ef          	jal	110 <printString>
 2b8:	02c12083          	lw	ra,44(sp)
 2bc:	02812403          	lw	s0,40(sp)
 2c0:	02412483          	lw	s1,36(sp)
 2c4:	02012903          	lw	s2,32(sp)
 2c8:	0ff57513          	zext.b	a0,a0
 2cc:	03010113          	addi	sp,sp,48
 2d0:	00008067          	ret
 2d4:	00100613          	li	a2,1
 2d8:	00c10713          	addi	a4,sp,12
 2dc:	00000793          	li	a5,0
 2e0:	00060513          	mv	a0,a2
 2e4:	00072583          	lw	a1,0(a4)
 2e8:	00000693          	li	a3,0
 2ec:	06b47263          	bgeu	s0,a1,350 <printDec+0xe4>
 2f0:	00069663          	bnez	a3,2fc <printDec+0x90>
 2f4:	00a58463          	beq	a1,a0,2fc <printDec+0x90>
 2f8:	00061e63          	bnez	a2,314 <printDec+0xa8>
 2fc:	02078613          	addi	a2,a5,32
 300:	00260633          	add	a2,a2,sp
 304:	03068693          	addi	a3,a3,48
 308:	fed60223          	sb	a3,-28(a2)
 30c:	00178793          	addi	a5,a5,1
 310:	00000613          	li	a2,0
 314:	00470713          	addi	a4,a4,4
 318:	02010693          	addi	a3,sp,32
 31c:	fcd714e3          	bne	a4,a3,2e4 <printDec+0x78>
 320:	00060c63          	beqz	a2,338 <printDec+0xcc>
 324:	02078713          	addi	a4,a5,32
 328:	00270733          	add	a4,a4,sp
 32c:	03000693          	li	a3,48
 330:	fed70223          	sb	a3,-28(a4)
 334:	00178793          	addi	a5,a5,1
 338:	02078793          	addi	a5,a5,32
 33c:	002787b3          	add	a5,a5,sp
 340:	fe078223          	sb	zero,-28(a5)
 344:	00090613          	mv	a2,s2
 348:	00410593          	addi	a1,sp,4
 34c:	f65ff06f          	j	2b0 <printDec+0x44>
 350:	40b40433          	sub	s0,s0,a1
 354:	00168693          	addi	a3,a3,1
 358:	f95ff06f          	j	2ec <printDec+0x80>

0000035c <printf>:
 35c:	fa010113          	addi	sp,sp,-96
 360:	04f12a23          	sw	a5,84(sp)
 364:	04410793          	addi	a5,sp,68
 368:	02812c23          	sw	s0,56(sp)
 36c:	02912a23          	sw	s1,52(sp)
 370:	03212823          	sw	s2,48(sp)
 374:	03312623          	sw	s3,44(sp)
 378:	03412423          	sw	s4,40(sp)
 37c:	03512223          	sw	s5,36(sp)
 380:	03612023          	sw	s6,32(sp)
 384:	01812c23          	sw	s8,24(sp)
 388:	02112e23          	sw	ra,60(sp)
 38c:	01712e23          	sw	s7,28(sp)
 390:	00050493          	mv	s1,a0
 394:	04b12223          	sw	a1,68(sp)
 398:	04c12423          	sw	a2,72(sp)
 39c:	04d12623          	sw	a3,76(sp)
 3a0:	04e12823          	sw	a4,80(sp)
 3a4:	05012c23          	sw	a6,88(sp)
 3a8:	05112e23          	sw	a7,92(sp)
 3ac:	00f12623          	sw	a5,12(sp)
 3b0:	00000c13          	li	s8,0
 3b4:	00a00993          	li	s3,10
 3b8:	02500913          	li	s2,37
 3bc:	07800a13          	li	s4,120
 3c0:	06400a93          	li	s5,100
 3c4:	06300b13          	li	s6,99
 3c8:	018487b3          	add	a5,s1,s8
 3cc:	0007c583          	lbu	a1,0(a5)
 3d0:	73601503          	lh	a0,1846(zero) # 736 <screenPos>
 3d4:	02059a63          	bnez	a1,408 <printf+0xac>
 3d8:	03c12083          	lw	ra,60(sp)
 3dc:	03812403          	lw	s0,56(sp)
 3e0:	03412483          	lw	s1,52(sp)
 3e4:	03012903          	lw	s2,48(sp)
 3e8:	02c12983          	lw	s3,44(sp)
 3ec:	02812a03          	lw	s4,40(sp)
 3f0:	02412a83          	lw	s5,36(sp)
 3f4:	02012b03          	lw	s6,32(sp)
 3f8:	01c12b83          	lw	s7,28(sp)
 3fc:	01812c03          	lw	s8,24(sp)
 400:	06010113          	addi	sp,sp,96
 404:	00008067          	ret
 408:	001c0b93          	addi	s7,s8,1
 40c:	01359e63          	bne	a1,s3,428 <printf+0xcc>
 410:	fc057793          	andi	a5,a0,-64
 414:	04078793          	addi	a5,a5,64
 418:	01079793          	slli	a5,a5,0x10
 41c:	4107d793          	srai	a5,a5,0x10
 420:	000c0b93          	mv	s7,s8
 424:	0380006f          	j	45c <printf+0x100>
 428:	0d259263          	bne	a1,s2,4ec <printf+0x190>
 42c:	0017c783          	lbu	a5,1(a5)
 430:	03479c63          	bne	a5,s4,468 <printf+0x10c>
 434:	00c12783          	lw	a5,12(sp)
 438:	00f00613          	li	a2,15
 43c:	0007a583          	lw	a1,0(a5)
 440:	00478713          	addi	a4,a5,4
 444:	00e12623          	sw	a4,12(sp)
 448:	d89ff0ef          	jal	1d0 <printHex>
 44c:	73605783          	lhu	a5,1846(zero) # 736 <screenPos>
 450:	00f507b3          	add	a5,a0,a5
 454:	01079793          	slli	a5,a5,0x10
 458:	4107d793          	srai	a5,a5,0x10
 45c:	72f01b23          	sh	a5,1846(zero) # 736 <screenPos>
 460:	001b8c13          	addi	s8,s7,1
 464:	f65ff06f          	j	3c8 <printf+0x6c>
 468:	03579063          	bne	a5,s5,488 <printf+0x12c>
 46c:	00c12783          	lw	a5,12(sp)
 470:	00f00613          	li	a2,15
 474:	0007a583          	lw	a1,0(a5)
 478:	00478713          	addi	a4,a5,4
 47c:	00e12623          	sw	a4,12(sp)
 480:	dedff0ef          	jal	26c <printDec>
 484:	fc9ff06f          	j	44c <printf+0xf0>
 488:	03679463          	bne	a5,s6,4b0 <printf+0x154>
 48c:	00c12783          	lw	a5,12(sp)
 490:	00f00613          	li	a2,15
 494:	0007c583          	lbu	a1,0(a5)
 498:	00478713          	addi	a4,a5,4
 49c:	00e12623          	sw	a4,12(sp)
 4a0:	c41ff0ef          	jal	e0 <putch>
 4a4:	73605783          	lhu	a5,1846(zero) # 736 <screenPos>
 4a8:	00178793          	addi	a5,a5,1
 4ac:	fa9ff06f          	j	454 <printf+0xf8>
 4b0:	07300713          	li	a4,115
 4b4:	02e79063          	bne	a5,a4,4d4 <printf+0x178>
 4b8:	00c12783          	lw	a5,12(sp)
 4bc:	00f00613          	li	a2,15
 4c0:	0007a583          	lw	a1,0(a5)
 4c4:	00478713          	addi	a4,a5,4
 4c8:	00e12623          	sw	a4,12(sp)
 4cc:	c45ff0ef          	jal	110 <printString>
 4d0:	f7dff06f          	j	44c <printf+0xf0>
 4d4:	00f00613          	li	a2,15
 4d8:	00090593          	mv	a1,s2
 4dc:	c05ff0ef          	jal	e0 <putch>
 4e0:	73605783          	lhu	a5,1846(zero) # 736 <screenPos>
 4e4:	00178793          	addi	a5,a5,1
 4e8:	f31ff06f          	j	418 <printf+0xbc>
 4ec:	00f00613          	li	a2,15
 4f0:	fedff06f          	j	4dc <printf+0x180>

000004f4 <printfSCR>:
 4f4:	f9010113          	addi	sp,sp,-112
 4f8:	06f12223          	sw	a5,100(sp)
 4fc:	05c10793          	addi	a5,sp,92
 500:	04812423          	sw	s0,72(sp)
 504:	04912223          	sw	s1,68(sp)
 508:	05212023          	sw	s2,64(sp)
 50c:	03412c23          	sw	s4,56(sp)
 510:	03512a23          	sw	s5,52(sp)
 514:	03612823          	sw	s6,48(sp)
 518:	03712623          	sw	s7,44(sp)
 51c:	03812423          	sw	s8,40(sp)
 520:	03912223          	sw	s9,36(sp)
 524:	03a12023          	sw	s10,32(sp)
 528:	01b12e23          	sw	s11,28(sp)
 52c:	04112623          	sw	ra,76(sp)
 530:	03312e23          	sw	s3,60(sp)
 534:	00050a93          	mv	s5,a0
 538:	00058493          	mv	s1,a1
 53c:	00060a13          	mv	s4,a2
 540:	04d12e23          	sw	a3,92(sp)
 544:	06e12023          	sw	a4,96(sp)
 548:	07012423          	sw	a6,104(sp)
 54c:	07112623          	sw	a7,108(sp)
 550:	00f12623          	sw	a5,12(sp)
 554:	00000913          	li	s2,0
 558:	00000413          	li	s0,0
 55c:	00a00b93          	li	s7,10
 560:	02500b13          	li	s6,37
 564:	07800c13          	li	s8,120
 568:	06400c93          	li	s9,100
 56c:	06300d13          	li	s10,99
 570:	07300d93          	li	s11,115
 574:	012a07b3          	add	a5,s4,s2
 578:	0007c583          	lbu	a1,0(a5)
 57c:	04059263          	bnez	a1,5c0 <printfSCR+0xcc>
 580:	04c12083          	lw	ra,76(sp)
 584:	00040513          	mv	a0,s0
 588:	04812403          	lw	s0,72(sp)
 58c:	04412483          	lw	s1,68(sp)
 590:	04012903          	lw	s2,64(sp)
 594:	03c12983          	lw	s3,60(sp)
 598:	03812a03          	lw	s4,56(sp)
 59c:	03412a83          	lw	s5,52(sp)
 5a0:	03012b03          	lw	s6,48(sp)
 5a4:	02c12b83          	lw	s7,44(sp)
 5a8:	02812c03          	lw	s8,40(sp)
 5ac:	02412c83          	lw	s9,36(sp)
 5b0:	02012d03          	lw	s10,32(sp)
 5b4:	01c12d83          	lw	s11,28(sp)
 5b8:	07010113          	addi	sp,sp,112
 5bc:	00008067          	ret
 5c0:	00190993          	addi	s3,s2,1
 5c4:	01759a63          	bne	a1,s7,5d8 <printfSCR+0xe4>
 5c8:	fc047413          	andi	s0,s0,-64
 5cc:	04040413          	addi	s0,s0,64
 5d0:	00090993          	mv	s3,s2
 5d4:	0740006f          	j	648 <printfSCR+0x154>
 5d8:	01540533          	add	a0,s0,s5
 5dc:	0b659463          	bne	a1,s6,684 <printfSCR+0x190>
 5e0:	0017c783          	lbu	a5,1(a5)
 5e4:	03879263          	bne	a5,s8,608 <printfSCR+0x114>
 5e8:	00c12783          	lw	a5,12(sp)
 5ec:	00048613          	mv	a2,s1
 5f0:	0007a583          	lw	a1,0(a5)
 5f4:	00478713          	addi	a4,a5,4
 5f8:	00e12623          	sw	a4,12(sp)
 5fc:	bd5ff0ef          	jal	1d0 <printHex>
 600:	00a40433          	add	s0,s0,a0
 604:	0440006f          	j	648 <printfSCR+0x154>
 608:	03979063          	bne	a5,s9,628 <printfSCR+0x134>
 60c:	00c12783          	lw	a5,12(sp)
 610:	00048613          	mv	a2,s1
 614:	0007a583          	lw	a1,0(a5)
 618:	00478713          	addi	a4,a5,4
 61c:	00e12623          	sw	a4,12(sp)
 620:	c4dff0ef          	jal	26c <printDec>
 624:	fddff06f          	j	600 <printfSCR+0x10c>
 628:	03a79463          	bne	a5,s10,650 <printfSCR+0x15c>
 62c:	00c12783          	lw	a5,12(sp)
 630:	00048613          	mv	a2,s1
 634:	00140413          	addi	s0,s0,1
 638:	0007c583          	lbu	a1,0(a5)
 63c:	00478713          	addi	a4,a5,4
 640:	00e12623          	sw	a4,12(sp)
 644:	a9dff0ef          	jal	e0 <putch>
 648:	00198913          	addi	s2,s3,1
 64c:	f29ff06f          	j	574 <printfSCR+0x80>
 650:	03b79063          	bne	a5,s11,670 <printfSCR+0x17c>
 654:	00c12783          	lw	a5,12(sp)
 658:	00048613          	mv	a2,s1
 65c:	0007a583          	lw	a1,0(a5)
 660:	00478713          	addi	a4,a5,4
 664:	00e12623          	sw	a4,12(sp)
 668:	aa9ff0ef          	jal	110 <printString>
 66c:	f95ff06f          	j	600 <printfSCR+0x10c>
 670:	00048613          	mv	a2,s1
 674:	000b0593          	mv	a1,s6
 678:	a69ff0ef          	jal	e0 <putch>
 67c:	00140413          	addi	s0,s0,1
 680:	f51ff06f          	j	5d0 <printfSCR+0xdc>
 684:	00048613          	mv	a2,s1
 688:	ff1ff06f          	j	678 <printfSCR+0x184>

0000068c <clearScreen>:
 68c:	ff010113          	addi	sp,sp,-16
 690:	00812423          	sw	s0,8(sp)
 694:	00912223          	sw	s1,4(sp)
 698:	00112623          	sw	ra,12(sp)
 69c:	00000413          	li	s0,0
 6a0:	4c000493          	li	s1,1216
 6a4:	00040513          	mv	a0,s0
 6a8:	00f00613          	li	a2,15
 6ac:	02000593          	li	a1,32
 6b0:	00140413          	addi	s0,s0,1
 6b4:	a2dff0ef          	jal	e0 <putch>
 6b8:	fe9416e3          	bne	s0,s1,6a4 <clearScreen+0x18>
 6bc:	00c12083          	lw	ra,12(sp)
 6c0:	00812403          	lw	s0,8(sp)
 6c4:	72001b23          	sh	zero,1846(zero) # 736 <screenPos>
 6c8:	00412483          	lw	s1,4(sp)
 6cc:	01010113          	addi	sp,sp,16
 6d0:	00008067          	ret

000006d4 <resetScreenVector>:
 6d4:	72001b23          	sh	zero,1846(zero) # 736 <screenPos>
 6d8:	00008067          	ret
 6dc:	2710                	.insn	2, 0x2710
 6de:	0000                	.insn	2, 0x
 6e0:	03e8                	.insn	2, 0x03e8
 6e2:	0000                	.insn	2, 0x
 6e4:	0064                	.insn	2, 0x0064
 6e6:	0000                	.insn	2, 0x
 6e8:	000a                	.insn	2, 0x000a
 6ea:	0000                	.insn	2, 0x
 6ec:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

000006f0 <main>:
 6f0:	deadc637          	lui	a2,0xdeadc
 6f4:	ff010113          	addi	sp,sp,-16
 6f8:	eef60613          	addi	a2,a2,-273 # deadbeef <_stack_end+0xdeadaeef>
 6fc:	04500593          	li	a1,69
 700:	71000513          	li	a0,1808
 704:	00112623          	sw	ra,12(sp)
 708:	c55ff0ef          	jal	35c <printf>
 70c:	0000006f          	j	70c <main+0x1c>
