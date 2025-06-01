
builds/build0/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	00010113          	mv	sp,sp
   8:	730000ef          	jal	738 <_etext>
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

00000060 <readFlash>:
  60:	8b0007b7          	lui	a5,0x8b000
  64:	00100713          	li	a4,1
  68:	ff010113          	addi	sp,sp,-16 # ff0 <_stack_bottom+0x270>
  6c:	00e780a3          	sb	a4,1(a5) # 8b000001 <_stack_end+0x8afff001>
  70:	00a7a223          	sw	a0,4(a5)
  74:	00012623          	sw	zero,12(sp)
  78:	0c700713          	li	a4,199
  7c:	00c12783          	lw	a5,12(sp)
  80:	00f75c63          	bge	a4,a5,98 <readFlash+0x38>
  84:	8b0007b7          	lui	a5,0x8b000
  88:	000780a3          	sb	zero,1(a5) # 8b000001 <_stack_end+0x8afff001>
  8c:	00c7a503          	lw	a0,12(a5)
  90:	01010113          	addi	sp,sp,16
  94:	00008067          	ret
  98:	00c12783          	lw	a5,12(sp)
  9c:	00178793          	addi	a5,a5,1
  a0:	00f12623          	sw	a5,12(sp)
  a4:	fd9ff06f          	j	7c <readFlash+0x1c>

000000a8 <memcpy>:
  a8:	00000793          	li	a5,0
  ac:	00c7c463          	blt	a5,a2,b4 <memcpy+0xc>
  b0:	00008067          	ret
  b4:	00f58733          	add	a4,a1,a5
  b8:	00074683          	lbu	a3,0(a4)
  bc:	00f50733          	add	a4,a0,a5
  c0:	00178793          	addi	a5,a5,1
  c4:	00d70023          	sb	a3,0(a4)
  c8:	fe5ff06f          	j	ac <memcpy+0x4>

000000cc <memset>:
  cc:	00c50633          	add	a2,a0,a2
  d0:	00050793          	mv	a5,a0
  d4:	00c79463          	bne	a5,a2,dc <memset+0x10>
  d8:	00008067          	ret
  dc:	00178793          	addi	a5,a5,1
  e0:	feb78fa3          	sb	a1,-1(a5)
  e4:	ff1ff06f          	j	d4 <memset+0x8>

000000e8 <getButton>:
  e8:	890007b7          	lui	a5,0x89000
  ec:	00a787b3          	add	a5,a5,a0
  f0:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
  f4:	00008067          	ret

000000f8 <getButtonDown>:
  f8:	890007b7          	lui	a5,0x89000
  fc:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
 100:	00008067          	ret

00000104 <getButtonUp>:
 104:	890007b7          	lui	a5,0x89000
 108:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88fff001>
 10c:	00008067          	ret

00000110 <getButtonLeft>:
 110:	890007b7          	lui	a5,0x89000
 114:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88fff002>
 118:	00008067          	ret

0000011c <getButtonRight>:
 11c:	890007b7          	lui	a5,0x89000
 120:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88fff003>
 124:	00008067          	ret

00000128 <putch>:
 128:	4c000793          	li	a5,1216
 12c:	02a7e263          	bltu	a5,a0,150 <putch+0x28>
 130:	00861613          	slli	a2,a2,0x8
 134:	880007b7          	lui	a5,0x88000
 138:	00151513          	slli	a0,a0,0x1
 13c:	00f50533          	add	a0,a0,a5
 140:	00b665b3          	or	a1,a2,a1
 144:	00b51023          	sh	a1,0(a0)
 148:	00100513          	li	a0,1
 14c:	00008067          	ret
 150:	00000513          	li	a0,0
 154:	00008067          	ret

00000158 <printString>:
 158:	fe010113          	addi	sp,sp,-32
 15c:	01312623          	sw	s3,12(sp)
 160:	01412423          	sw	s4,8(sp)
 164:	00112e23          	sw	ra,28(sp)
 168:	00812c23          	sw	s0,24(sp)
 16c:	00912a23          	sw	s1,20(sp)
 170:	01212823          	sw	s2,16(sp)
 174:	01512223          	sw	s5,4(sp)
 178:	01612023          	sw	s6,0(sp)
 17c:	00050a13          	mv	s4,a0
 180:	00058993          	mv	s3,a1
 184:	06060c63          	beqz	a2,1fc <printString+0xa4>
 188:	00060413          	mv	s0,a2
 18c:	00000913          	li	s2,0
 190:	00000493          	li	s1,0
 194:	00100a93          	li	s5,1
 198:	00f00b13          	li	s6,15
 19c:	0280006f          	j	1c4 <printString+0x6c>
 1a0:	00040613          	mv	a2,s0
 1a4:	009a0533          	add	a0,s4,s1
 1a8:	f81ff0ef          	jal	128 <putch>
 1ac:	06050263          	beqz	a0,210 <printString+0xb8>
 1b0:	00148493          	addi	s1,s1,1
 1b4:	01591863          	bne	s2,s5,1c4 <printString+0x6c>
 1b8:	00140413          	addi	s0,s0,1
 1bc:	0ff47413          	zext.b	s0,s0
 1c0:	048b6463          	bltu	s6,s0,208 <printString+0xb0>
 1c4:	009987b3          	add	a5,s3,s1
 1c8:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87fff000>
 1cc:	00048513          	mv	a0,s1
 1d0:	fc0598e3          	bnez	a1,1a0 <printString+0x48>
 1d4:	01c12083          	lw	ra,28(sp)
 1d8:	01812403          	lw	s0,24(sp)
 1dc:	01412483          	lw	s1,20(sp)
 1e0:	01012903          	lw	s2,16(sp)
 1e4:	00c12983          	lw	s3,12(sp)
 1e8:	00812a03          	lw	s4,8(sp)
 1ec:	00412a83          	lw	s5,4(sp)
 1f0:	00012b03          	lw	s6,0(sp)
 1f4:	02010113          	addi	sp,sp,32
 1f8:	00008067          	ret
 1fc:	00100913          	li	s2,1
 200:	00090413          	mv	s0,s2
 204:	f8dff06f          	j	190 <printString+0x38>
 208:	00090413          	mv	s0,s2
 20c:	fb9ff06f          	j	1c4 <printString+0x6c>
 210:	00000513          	li	a0,0
 214:	fc1ff06f          	j	1d4 <printString+0x7c>

00000218 <printHex>:
 218:	fd010113          	addi	sp,sp,-48
 21c:	02812423          	sw	s0,40(sp)
 220:	00058413          	mv	s0,a1
 224:	02912223          	sw	s1,36(sp)
 228:	03212023          	sw	s2,32(sp)
 22c:	75800593          	li	a1,1880
 230:	00050493          	mv	s1,a0
 234:	00060913          	mv	s2,a2
 238:	00c10513          	addi	a0,sp,12
 23c:	01100613          	li	a2,17
 240:	02112623          	sw	ra,44(sp)
 244:	e65ff0ef          	jal	a8 <memcpy>
 248:	202027b7          	lui	a5,0x20202
 24c:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 250:	00f12023          	sw	a5,0(sp)
 254:	00f12223          	sw	a5,4(sp)
 258:	00010423          	sb	zero,8(sp)
 25c:	00700793          	li	a5,7
 260:	00010593          	mv	a1,sp
 264:	fff00693          	li	a3,-1
 268:	00f47713          	andi	a4,s0,15
 26c:	02070713          	addi	a4,a4,32
 270:	00270733          	add	a4,a4,sp
 274:	fec74703          	lbu	a4,-20(a4)
 278:	00f58633          	add	a2,a1,a5
 27c:	fff78793          	addi	a5,a5,-1
 280:	00e60023          	sb	a4,0(a2)
 284:	40445413          	srai	s0,s0,0x4
 288:	fed790e3          	bne	a5,a3,268 <printHex+0x50>
 28c:	00090613          	mv	a2,s2
 290:	00048513          	mv	a0,s1
 294:	ec5ff0ef          	jal	158 <printString>
 298:	02c12083          	lw	ra,44(sp)
 29c:	02812403          	lw	s0,40(sp)
 2a0:	02412483          	lw	s1,36(sp)
 2a4:	02012903          	lw	s2,32(sp)
 2a8:	0ff57513          	zext.b	a0,a0
 2ac:	03010113          	addi	sp,sp,48
 2b0:	00008067          	ret

000002b4 <printDec>:
 2b4:	fd010113          	addi	sp,sp,-48
 2b8:	02812423          	sw	s0,40(sp)
 2bc:	00058413          	mv	s0,a1
 2c0:	02912223          	sw	s1,36(sp)
 2c4:	03212023          	sw	s2,32(sp)
 2c8:	00050493          	mv	s1,a0
 2cc:	00060913          	mv	s2,a2
 2d0:	72400593          	li	a1,1828
 2d4:	01400613          	li	a2,20
 2d8:	00c10513          	addi	a0,sp,12
 2dc:	02112623          	sw	ra,44(sp)
 2e0:	dc9ff0ef          	jal	a8 <memcpy>
 2e4:	000187b7          	lui	a5,0x18
 2e8:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 2ec:	0287f863          	bgeu	a5,s0,31c <printDec+0x68>
 2f0:	00090613          	mv	a2,s2
 2f4:	76c00593          	li	a1,1900
 2f8:	00048513          	mv	a0,s1
 2fc:	e5dff0ef          	jal	158 <printString>
 300:	02c12083          	lw	ra,44(sp)
 304:	02812403          	lw	s0,40(sp)
 308:	02412483          	lw	s1,36(sp)
 30c:	02012903          	lw	s2,32(sp)
 310:	0ff57513          	zext.b	a0,a0
 314:	03010113          	addi	sp,sp,48
 318:	00008067          	ret
 31c:	00100613          	li	a2,1
 320:	00c10713          	addi	a4,sp,12
 324:	00000793          	li	a5,0
 328:	00060513          	mv	a0,a2
 32c:	00072583          	lw	a1,0(a4)
 330:	00000693          	li	a3,0
 334:	06b47263          	bgeu	s0,a1,398 <printDec+0xe4>
 338:	00069663          	bnez	a3,344 <printDec+0x90>
 33c:	00a58463          	beq	a1,a0,344 <printDec+0x90>
 340:	00061e63          	bnez	a2,35c <printDec+0xa8>
 344:	02078613          	addi	a2,a5,32
 348:	00260633          	add	a2,a2,sp
 34c:	03068693          	addi	a3,a3,48
 350:	fed60223          	sb	a3,-28(a2)
 354:	00178793          	addi	a5,a5,1
 358:	00000613          	li	a2,0
 35c:	00470713          	addi	a4,a4,4
 360:	02010693          	addi	a3,sp,32
 364:	fcd714e3          	bne	a4,a3,32c <printDec+0x78>
 368:	00060c63          	beqz	a2,380 <printDec+0xcc>
 36c:	02078713          	addi	a4,a5,32
 370:	00270733          	add	a4,a4,sp
 374:	03000693          	li	a3,48
 378:	fed70223          	sb	a3,-28(a4)
 37c:	00178793          	addi	a5,a5,1
 380:	02078793          	addi	a5,a5,32
 384:	002787b3          	add	a5,a5,sp
 388:	fe078223          	sb	zero,-28(a5)
 38c:	00090613          	mv	a2,s2
 390:	00410593          	addi	a1,sp,4
 394:	f65ff06f          	j	2f8 <printDec+0x44>
 398:	40b40433          	sub	s0,s0,a1
 39c:	00168693          	addi	a3,a3,1
 3a0:	f95ff06f          	j	334 <printDec+0x80>

000003a4 <printf>:
 3a4:	fa010113          	addi	sp,sp,-96
 3a8:	04f12a23          	sw	a5,84(sp)
 3ac:	04410793          	addi	a5,sp,68
 3b0:	02812c23          	sw	s0,56(sp)
 3b4:	02912a23          	sw	s1,52(sp)
 3b8:	03212823          	sw	s2,48(sp)
 3bc:	03312623          	sw	s3,44(sp)
 3c0:	03412423          	sw	s4,40(sp)
 3c4:	03512223          	sw	s5,36(sp)
 3c8:	03612023          	sw	s6,32(sp)
 3cc:	01812c23          	sw	s8,24(sp)
 3d0:	02112e23          	sw	ra,60(sp)
 3d4:	01712e23          	sw	s7,28(sp)
 3d8:	00050493          	mv	s1,a0
 3dc:	04b12223          	sw	a1,68(sp)
 3e0:	04c12423          	sw	a2,72(sp)
 3e4:	04d12623          	sw	a3,76(sp)
 3e8:	04e12823          	sw	a4,80(sp)
 3ec:	05012c23          	sw	a6,88(sp)
 3f0:	05112e23          	sw	a7,92(sp)
 3f4:	00f12623          	sw	a5,12(sp)
 3f8:	00000c13          	li	s8,0
 3fc:	00a00993          	li	s3,10
 400:	02500913          	li	s2,37
 404:	07800a13          	li	s4,120
 408:	06400a93          	li	s5,100
 40c:	06300b13          	li	s6,99
 410:	018487b3          	add	a5,s1,s8
 414:	0007c583          	lbu	a1,0(a5)
 418:	77201503          	lh	a0,1906(zero) # 772 <screenPos>
 41c:	02059a63          	bnez	a1,450 <printf+0xac>
 420:	03c12083          	lw	ra,60(sp)
 424:	03812403          	lw	s0,56(sp)
 428:	03412483          	lw	s1,52(sp)
 42c:	03012903          	lw	s2,48(sp)
 430:	02c12983          	lw	s3,44(sp)
 434:	02812a03          	lw	s4,40(sp)
 438:	02412a83          	lw	s5,36(sp)
 43c:	02012b03          	lw	s6,32(sp)
 440:	01c12b83          	lw	s7,28(sp)
 444:	01812c03          	lw	s8,24(sp)
 448:	06010113          	addi	sp,sp,96
 44c:	00008067          	ret
 450:	001c0b93          	addi	s7,s8,1
 454:	01359e63          	bne	a1,s3,470 <printf+0xcc>
 458:	fc057793          	andi	a5,a0,-64
 45c:	04078793          	addi	a5,a5,64
 460:	01079793          	slli	a5,a5,0x10
 464:	4107d793          	srai	a5,a5,0x10
 468:	000c0b93          	mv	s7,s8
 46c:	0380006f          	j	4a4 <printf+0x100>
 470:	0d259263          	bne	a1,s2,534 <printf+0x190>
 474:	0017c783          	lbu	a5,1(a5)
 478:	03479c63          	bne	a5,s4,4b0 <printf+0x10c>
 47c:	00c12783          	lw	a5,12(sp)
 480:	00f00613          	li	a2,15
 484:	0007a583          	lw	a1,0(a5)
 488:	00478713          	addi	a4,a5,4
 48c:	00e12623          	sw	a4,12(sp)
 490:	d89ff0ef          	jal	218 <printHex>
 494:	77205783          	lhu	a5,1906(zero) # 772 <screenPos>
 498:	00f507b3          	add	a5,a0,a5
 49c:	01079793          	slli	a5,a5,0x10
 4a0:	4107d793          	srai	a5,a5,0x10
 4a4:	76f01923          	sh	a5,1906(zero) # 772 <screenPos>
 4a8:	001b8c13          	addi	s8,s7,1
 4ac:	f65ff06f          	j	410 <printf+0x6c>
 4b0:	03579063          	bne	a5,s5,4d0 <printf+0x12c>
 4b4:	00c12783          	lw	a5,12(sp)
 4b8:	00f00613          	li	a2,15
 4bc:	0007a583          	lw	a1,0(a5)
 4c0:	00478713          	addi	a4,a5,4
 4c4:	00e12623          	sw	a4,12(sp)
 4c8:	dedff0ef          	jal	2b4 <printDec>
 4cc:	fc9ff06f          	j	494 <printf+0xf0>
 4d0:	03679463          	bne	a5,s6,4f8 <printf+0x154>
 4d4:	00c12783          	lw	a5,12(sp)
 4d8:	00f00613          	li	a2,15
 4dc:	0007c583          	lbu	a1,0(a5)
 4e0:	00478713          	addi	a4,a5,4
 4e4:	00e12623          	sw	a4,12(sp)
 4e8:	c41ff0ef          	jal	128 <putch>
 4ec:	77205783          	lhu	a5,1906(zero) # 772 <screenPos>
 4f0:	00178793          	addi	a5,a5,1
 4f4:	fa9ff06f          	j	49c <printf+0xf8>
 4f8:	07300713          	li	a4,115
 4fc:	02e79063          	bne	a5,a4,51c <printf+0x178>
 500:	00c12783          	lw	a5,12(sp)
 504:	00f00613          	li	a2,15
 508:	0007a583          	lw	a1,0(a5)
 50c:	00478713          	addi	a4,a5,4
 510:	00e12623          	sw	a4,12(sp)
 514:	c45ff0ef          	jal	158 <printString>
 518:	f7dff06f          	j	494 <printf+0xf0>
 51c:	00f00613          	li	a2,15
 520:	00090593          	mv	a1,s2
 524:	c05ff0ef          	jal	128 <putch>
 528:	77205783          	lhu	a5,1906(zero) # 772 <screenPos>
 52c:	00178793          	addi	a5,a5,1
 530:	f31ff06f          	j	460 <printf+0xbc>
 534:	00f00613          	li	a2,15
 538:	fedff06f          	j	524 <printf+0x180>

0000053c <printfSCR>:
 53c:	f9010113          	addi	sp,sp,-112
 540:	06f12223          	sw	a5,100(sp)
 544:	05c10793          	addi	a5,sp,92
 548:	04812423          	sw	s0,72(sp)
 54c:	04912223          	sw	s1,68(sp)
 550:	05212023          	sw	s2,64(sp)
 554:	03412c23          	sw	s4,56(sp)
 558:	03512a23          	sw	s5,52(sp)
 55c:	03612823          	sw	s6,48(sp)
 560:	03712623          	sw	s7,44(sp)
 564:	03812423          	sw	s8,40(sp)
 568:	03912223          	sw	s9,36(sp)
 56c:	03a12023          	sw	s10,32(sp)
 570:	01b12e23          	sw	s11,28(sp)
 574:	04112623          	sw	ra,76(sp)
 578:	03312e23          	sw	s3,60(sp)
 57c:	00050a93          	mv	s5,a0
 580:	00058493          	mv	s1,a1
 584:	00060a13          	mv	s4,a2
 588:	04d12e23          	sw	a3,92(sp)
 58c:	06e12023          	sw	a4,96(sp)
 590:	07012423          	sw	a6,104(sp)
 594:	07112623          	sw	a7,108(sp)
 598:	00f12623          	sw	a5,12(sp)
 59c:	00000913          	li	s2,0
 5a0:	00000413          	li	s0,0
 5a4:	00a00b93          	li	s7,10
 5a8:	02500b13          	li	s6,37
 5ac:	07800c13          	li	s8,120
 5b0:	06400c93          	li	s9,100
 5b4:	06300d13          	li	s10,99
 5b8:	07300d93          	li	s11,115
 5bc:	012a07b3          	add	a5,s4,s2
 5c0:	0007c583          	lbu	a1,0(a5)
 5c4:	04059263          	bnez	a1,608 <printfSCR+0xcc>
 5c8:	04c12083          	lw	ra,76(sp)
 5cc:	00040513          	mv	a0,s0
 5d0:	04812403          	lw	s0,72(sp)
 5d4:	04412483          	lw	s1,68(sp)
 5d8:	04012903          	lw	s2,64(sp)
 5dc:	03c12983          	lw	s3,60(sp)
 5e0:	03812a03          	lw	s4,56(sp)
 5e4:	03412a83          	lw	s5,52(sp)
 5e8:	03012b03          	lw	s6,48(sp)
 5ec:	02c12b83          	lw	s7,44(sp)
 5f0:	02812c03          	lw	s8,40(sp)
 5f4:	02412c83          	lw	s9,36(sp)
 5f8:	02012d03          	lw	s10,32(sp)
 5fc:	01c12d83          	lw	s11,28(sp)
 600:	07010113          	addi	sp,sp,112
 604:	00008067          	ret
 608:	00190993          	addi	s3,s2,1
 60c:	01759a63          	bne	a1,s7,620 <printfSCR+0xe4>
 610:	fc047413          	andi	s0,s0,-64
 614:	04040413          	addi	s0,s0,64
 618:	00090993          	mv	s3,s2
 61c:	0740006f          	j	690 <printfSCR+0x154>
 620:	01540533          	add	a0,s0,s5
 624:	0b659463          	bne	a1,s6,6cc <printfSCR+0x190>
 628:	0017c783          	lbu	a5,1(a5)
 62c:	03879263          	bne	a5,s8,650 <printfSCR+0x114>
 630:	00c12783          	lw	a5,12(sp)
 634:	00048613          	mv	a2,s1
 638:	0007a583          	lw	a1,0(a5)
 63c:	00478713          	addi	a4,a5,4
 640:	00e12623          	sw	a4,12(sp)
 644:	bd5ff0ef          	jal	218 <printHex>
 648:	00a40433          	add	s0,s0,a0
 64c:	0440006f          	j	690 <printfSCR+0x154>
 650:	03979063          	bne	a5,s9,670 <printfSCR+0x134>
 654:	00c12783          	lw	a5,12(sp)
 658:	00048613          	mv	a2,s1
 65c:	0007a583          	lw	a1,0(a5)
 660:	00478713          	addi	a4,a5,4
 664:	00e12623          	sw	a4,12(sp)
 668:	c4dff0ef          	jal	2b4 <printDec>
 66c:	fddff06f          	j	648 <printfSCR+0x10c>
 670:	03a79463          	bne	a5,s10,698 <printfSCR+0x15c>
 674:	00c12783          	lw	a5,12(sp)
 678:	00048613          	mv	a2,s1
 67c:	00140413          	addi	s0,s0,1
 680:	0007c583          	lbu	a1,0(a5)
 684:	00478713          	addi	a4,a5,4
 688:	00e12623          	sw	a4,12(sp)
 68c:	a9dff0ef          	jal	128 <putch>
 690:	00198913          	addi	s2,s3,1
 694:	f29ff06f          	j	5bc <printfSCR+0x80>
 698:	03b79063          	bne	a5,s11,6b8 <printfSCR+0x17c>
 69c:	00c12783          	lw	a5,12(sp)
 6a0:	00048613          	mv	a2,s1
 6a4:	0007a583          	lw	a1,0(a5)
 6a8:	00478713          	addi	a4,a5,4
 6ac:	00e12623          	sw	a4,12(sp)
 6b0:	aa9ff0ef          	jal	158 <printString>
 6b4:	f95ff06f          	j	648 <printfSCR+0x10c>
 6b8:	00048613          	mv	a2,s1
 6bc:	000b0593          	mv	a1,s6
 6c0:	a69ff0ef          	jal	128 <putch>
 6c4:	00140413          	addi	s0,s0,1
 6c8:	f51ff06f          	j	618 <printfSCR+0xdc>
 6cc:	00048613          	mv	a2,s1
 6d0:	ff1ff06f          	j	6c0 <printfSCR+0x184>

000006d4 <clearScreen>:
 6d4:	ff010113          	addi	sp,sp,-16
 6d8:	00812423          	sw	s0,8(sp)
 6dc:	00912223          	sw	s1,4(sp)
 6e0:	00112623          	sw	ra,12(sp)
 6e4:	00000413          	li	s0,0
 6e8:	4c000493          	li	s1,1216
 6ec:	00040513          	mv	a0,s0
 6f0:	00f00613          	li	a2,15
 6f4:	02000593          	li	a1,32
 6f8:	00140413          	addi	s0,s0,1
 6fc:	a2dff0ef          	jal	128 <putch>
 700:	fe9416e3          	bne	s0,s1,6ec <clearScreen+0x18>
 704:	00c12083          	lw	ra,12(sp)
 708:	00812403          	lw	s0,8(sp)
 70c:	76001923          	sh	zero,1906(zero) # 772 <screenPos>
 710:	00412483          	lw	s1,4(sp)
 714:	01010113          	addi	sp,sp,16
 718:	00008067          	ret

0000071c <resetScreenVector>:
 71c:	76001923          	sh	zero,1906(zero) # 772 <screenPos>
 720:	00008067          	ret
 724:	2710                	.insn	2, 0x2710
 726:	0000                	.insn	2, 0x
 728:	03e8                	.insn	2, 0x03e8
 72a:	0000                	.insn	2, 0x
 72c:	0064                	.insn	2, 0x0064
 72e:	0000                	.insn	2, 0x
 730:	000a                	.insn	2, 0x000a
 732:	0000                	.insn	2, 0x
 734:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00000738 <main>:
 738:	ff010113          	addi	sp,sp,-16
 73c:	00112623          	sw	ra,12(sp)
 740:	800007b7          	lui	a5,0x80000
 744:	000780e7          	jalr	a5 # 80000000 <_stack_end+0x7ffff000>
 748:	00c12083          	lw	ra,12(sp)
 74c:	00000513          	li	a0,0
 750:	01010113          	addi	sp,sp,16
 754:	00008067          	ret
