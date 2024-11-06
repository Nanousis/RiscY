
builds/build1/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	c0010113          	addi	sp,sp,-1024 # c00 <_stack_top>
   8:	754000ef          	jal	75c <_etext>
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
  64:	00a7a223          	sw	a0,4(a5) # 8b000004 <_stack_end+0x8afff004>
  68:	00100713          	li	a4,1
  6c:	8b0007b7          	lui	a5,0x8b000
  70:	00e780a3          	sb	a4,1(a5) # 8b000001 <_stack_end+0x8afff001>
  74:	ff010113          	addi	sp,sp,-16
  78:	00012623          	sw	zero,12(sp)
  7c:	1f300713          	li	a4,499
  80:	00c12783          	lw	a5,12(sp)
  84:	00f75e63          	bge	a4,a5,a0 <readFlash+0x40>
  88:	b00007b7          	lui	a5,0xb0000
  8c:	00c7a503          	lw	a0,12(a5) # b000000c <_stack_end+0xaffff00c>
  90:	8b0007b7          	lui	a5,0x8b000
  94:	000780a3          	sb	zero,1(a5) # 8b000001 <_stack_end+0x8afff001>
  98:	01010113          	addi	sp,sp,16
  9c:	00008067          	ret
  a0:	00c12783          	lw	a5,12(sp)
  a4:	00178793          	addi	a5,a5,1
  a8:	00f12623          	sw	a5,12(sp)
  ac:	fd5ff06f          	j	80 <readFlash+0x20>

000000b0 <memcpy>:
  b0:	00000793          	li	a5,0
  b4:	00c7c463          	blt	a5,a2,bc <memcpy+0xc>
  b8:	00008067          	ret
  bc:	00f58733          	add	a4,a1,a5
  c0:	00074683          	lbu	a3,0(a4)
  c4:	00f50733          	add	a4,a0,a5
  c8:	00178793          	addi	a5,a5,1
  cc:	00d70023          	sb	a3,0(a4)
  d0:	fe5ff06f          	j	b4 <memcpy+0x4>

000000d4 <memset>:
  d4:	00c50633          	add	a2,a0,a2
  d8:	00050793          	mv	a5,a0
  dc:	00c79463          	bne	a5,a2,e4 <memset+0x10>
  e0:	00008067          	ret
  e4:	00178793          	addi	a5,a5,1
  e8:	feb78fa3          	sb	a1,-1(a5)
  ec:	ff1ff06f          	j	dc <memset+0x8>

000000f0 <getButton>:
  f0:	890007b7          	lui	a5,0x89000
  f4:	00a787b3          	add	a5,a5,a0
  f8:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
  fc:	00008067          	ret

00000100 <getButtonDown>:
 100:	890007b7          	lui	a5,0x89000
 104:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
 108:	00008067          	ret

0000010c <getButtonUp>:
 10c:	890007b7          	lui	a5,0x89000
 110:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88fff001>
 114:	00008067          	ret

00000118 <getButtonLeft>:
 118:	890007b7          	lui	a5,0x89000
 11c:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88fff002>
 120:	00008067          	ret

00000124 <getButtonRight>:
 124:	890007b7          	lui	a5,0x89000
 128:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88fff003>
 12c:	00008067          	ret

00000130 <putch>:
 130:	4c000793          	li	a5,1216
 134:	02a7e263          	bltu	a5,a0,158 <putch+0x28>
 138:	00861613          	slli	a2,a2,0x8
 13c:	00151513          	slli	a0,a0,0x1
 140:	880007b7          	lui	a5,0x88000
 144:	00a787b3          	add	a5,a5,a0
 148:	00b665b3          	or	a1,a2,a1
 14c:	00b79023          	sh	a1,0(a5) # 88000000 <_stack_end+0x87fff000>
 150:	00100513          	li	a0,1
 154:	00008067          	ret
 158:	00000513          	li	a0,0
 15c:	00008067          	ret

00000160 <printString>:
 160:	fe010113          	addi	sp,sp,-32
 164:	01212823          	sw	s2,16(sp)
 168:	01312623          	sw	s3,12(sp)
 16c:	00112e23          	sw	ra,28(sp)
 170:	00812c23          	sw	s0,24(sp)
 174:	00912a23          	sw	s1,20(sp)
 178:	01412423          	sw	s4,8(sp)
 17c:	01512223          	sw	s5,4(sp)
 180:	01612023          	sw	s6,0(sp)
 184:	00050993          	mv	s3,a0
 188:	00058913          	mv	s2,a1
 18c:	06060c63          	beqz	a2,204 <printString+0xa4>
 190:	00060413          	mv	s0,a2
 194:	00000a13          	li	s4,0
 198:	00000493          	li	s1,0
 19c:	00100a93          	li	s5,1
 1a0:	00f00b13          	li	s6,15
 1a4:	0280006f          	j	1cc <printString+0x6c>
 1a8:	00040613          	mv	a2,s0
 1ac:	00998533          	add	a0,s3,s1
 1b0:	f81ff0ef          	jal	130 <putch>
 1b4:	06050263          	beqz	a0,218 <printString+0xb8>
 1b8:	00148493          	addi	s1,s1,1
 1bc:	015a1863          	bne	s4,s5,1cc <printString+0x6c>
 1c0:	00140413          	addi	s0,s0,1
 1c4:	0ff47413          	zext.b	s0,s0
 1c8:	048b6463          	bltu	s6,s0,210 <printString+0xb0>
 1cc:	009907b3          	add	a5,s2,s1
 1d0:	0007c583          	lbu	a1,0(a5)
 1d4:	00048513          	mv	a0,s1
 1d8:	fc0598e3          	bnez	a1,1a8 <printString+0x48>
 1dc:	01c12083          	lw	ra,28(sp)
 1e0:	01812403          	lw	s0,24(sp)
 1e4:	01412483          	lw	s1,20(sp)
 1e8:	01012903          	lw	s2,16(sp)
 1ec:	00c12983          	lw	s3,12(sp)
 1f0:	00812a03          	lw	s4,8(sp)
 1f4:	00412a83          	lw	s5,4(sp)
 1f8:	00012b03          	lw	s6,0(sp)
 1fc:	02010113          	addi	sp,sp,32
 200:	00008067          	ret
 204:	00100a13          	li	s4,1
 208:	00100413          	li	s0,1
 20c:	f8dff06f          	j	198 <printString+0x38>
 210:	00100413          	li	s0,1
 214:	fb9ff06f          	j	1cc <printString+0x6c>
 218:	00000513          	li	a0,0
 21c:	fc1ff06f          	j	1dc <printString+0x7c>

00000220 <printHex>:
 220:	fd010113          	addi	sp,sp,-48
 224:	02812423          	sw	s0,40(sp)
 228:	00058413          	mv	s0,a1
 22c:	000015b7          	lui	a1,0x1
 230:	02912223          	sw	s1,36(sp)
 234:	03212023          	sw	s2,32(sp)
 238:	00050493          	mv	s1,a0
 23c:	00060913          	mv	s2,a2
 240:	8c058593          	addi	a1,a1,-1856 # 8c0 <_stack_bottom+0xc0>
 244:	01100613          	li	a2,17
 248:	00c10513          	addi	a0,sp,12
 24c:	02112623          	sw	ra,44(sp)
 250:	e61ff0ef          	jal	b0 <memcpy>
 254:	202027b7          	lui	a5,0x20202
 258:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 25c:	00f12023          	sw	a5,0(sp)
 260:	00f12223          	sw	a5,4(sp)
 264:	00010423          	sb	zero,8(sp)
 268:	00700793          	li	a5,7
 26c:	fff00693          	li	a3,-1
 270:	00f47713          	andi	a4,s0,15
 274:	02070713          	addi	a4,a4,32
 278:	00270733          	add	a4,a4,sp
 27c:	fec74703          	lbu	a4,-20(a4)
 280:	00f10633          	add	a2,sp,a5
 284:	fff78793          	addi	a5,a5,-1
 288:	00e60023          	sb	a4,0(a2)
 28c:	40445413          	srai	s0,s0,0x4
 290:	fed790e3          	bne	a5,a3,270 <printHex+0x50>
 294:	00090613          	mv	a2,s2
 298:	00010593          	mv	a1,sp
 29c:	00048513          	mv	a0,s1
 2a0:	ec1ff0ef          	jal	160 <printString>
 2a4:	02c12083          	lw	ra,44(sp)
 2a8:	02812403          	lw	s0,40(sp)
 2ac:	02412483          	lw	s1,36(sp)
 2b0:	02012903          	lw	s2,32(sp)
 2b4:	0ff57513          	zext.b	a0,a0
 2b8:	03010113          	addi	sp,sp,48
 2bc:	00008067          	ret

000002c0 <printDec>:
 2c0:	fd010113          	addi	sp,sp,-48
 2c4:	02812423          	sw	s0,40(sp)
 2c8:	00058413          	mv	s0,a1
 2cc:	02912223          	sw	s1,36(sp)
 2d0:	03212023          	sw	s2,32(sp)
 2d4:	00050493          	mv	s1,a0
 2d8:	00060913          	mv	s2,a2
 2dc:	74800593          	li	a1,1864
 2e0:	01400613          	li	a2,20
 2e4:	00c10513          	addi	a0,sp,12
 2e8:	02112623          	sw	ra,44(sp)
 2ec:	dc5ff0ef          	jal	b0 <memcpy>
 2f0:	000187b7          	lui	a5,0x18
 2f4:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 2f8:	0287fa63          	bgeu	a5,s0,32c <printDec+0x6c>
 2fc:	000015b7          	lui	a1,0x1
 300:	00090613          	mv	a2,s2
 304:	8d458593          	addi	a1,a1,-1836 # 8d4 <_stack_bottom+0xd4>
 308:	00048513          	mv	a0,s1
 30c:	e55ff0ef          	jal	160 <printString>
 310:	02c12083          	lw	ra,44(sp)
 314:	02812403          	lw	s0,40(sp)
 318:	02412483          	lw	s1,36(sp)
 31c:	02012903          	lw	s2,32(sp)
 320:	0ff57513          	zext.b	a0,a0
 324:	03010113          	addi	sp,sp,48
 328:	00008067          	ret
 32c:	00c10713          	addi	a4,sp,12
 330:	00100613          	li	a2,1
 334:	00000793          	li	a5,0
 338:	00100513          	li	a0,1
 33c:	00072583          	lw	a1,0(a4)
 340:	00000693          	li	a3,0
 344:	06b47263          	bgeu	s0,a1,3a8 <printDec+0xe8>
 348:	00069663          	bnez	a3,354 <printDec+0x94>
 34c:	00a58463          	beq	a1,a0,354 <printDec+0x94>
 350:	00061e63          	bnez	a2,36c <printDec+0xac>
 354:	02078613          	addi	a2,a5,32
 358:	00260633          	add	a2,a2,sp
 35c:	03068693          	addi	a3,a3,48
 360:	fed60223          	sb	a3,-28(a2)
 364:	00178793          	addi	a5,a5,1
 368:	00000613          	li	a2,0
 36c:	00470713          	addi	a4,a4,4
 370:	02010693          	addi	a3,sp,32
 374:	fcd714e3          	bne	a4,a3,33c <printDec+0x7c>
 378:	00060c63          	beqz	a2,390 <printDec+0xd0>
 37c:	02078713          	addi	a4,a5,32
 380:	00270733          	add	a4,a4,sp
 384:	03000693          	li	a3,48
 388:	fed70223          	sb	a3,-28(a4)
 38c:	00178793          	addi	a5,a5,1
 390:	02078793          	addi	a5,a5,32
 394:	002787b3          	add	a5,a5,sp
 398:	fe078223          	sb	zero,-28(a5)
 39c:	00090613          	mv	a2,s2
 3a0:	00410593          	addi	a1,sp,4
 3a4:	f65ff06f          	j	308 <printDec+0x48>
 3a8:	40b40433          	sub	s0,s0,a1
 3ac:	00168693          	addi	a3,a3,1
 3b0:	f95ff06f          	j	344 <printDec+0x84>

000003b4 <printf>:
 3b4:	fa010113          	addi	sp,sp,-96
 3b8:	04f12a23          	sw	a5,84(sp)
 3bc:	04410793          	addi	a5,sp,68
 3c0:	02812c23          	sw	s0,56(sp)
 3c4:	02912a23          	sw	s1,52(sp)
 3c8:	03212823          	sw	s2,48(sp)
 3cc:	03312623          	sw	s3,44(sp)
 3d0:	03412423          	sw	s4,40(sp)
 3d4:	03512223          	sw	s5,36(sp)
 3d8:	03612023          	sw	s6,32(sp)
 3dc:	01712e23          	sw	s7,28(sp)
 3e0:	01912a23          	sw	s9,20(sp)
 3e4:	02112e23          	sw	ra,60(sp)
 3e8:	01812c23          	sw	s8,24(sp)
 3ec:	00050493          	mv	s1,a0
 3f0:	04b12223          	sw	a1,68(sp)
 3f4:	04c12423          	sw	a2,72(sp)
 3f8:	04d12623          	sw	a3,76(sp)
 3fc:	04e12823          	sw	a4,80(sp)
 400:	05012c23          	sw	a6,88(sp)
 404:	05112e23          	sw	a7,92(sp)
 408:	00f12623          	sw	a5,12(sp)
 40c:	00000c93          	li	s9,0
 410:	00001437          	lui	s0,0x1
 414:	00a00913          	li	s2,10
 418:	02500993          	li	s3,37
 41c:	07800a13          	li	s4,120
 420:	06400a93          	li	s5,100
 424:	06300b13          	li	s6,99
 428:	07300b93          	li	s7,115
 42c:	019487b3          	add	a5,s1,s9
 430:	0007c583          	lbu	a1,0(a5)
 434:	8da41503          	lh	a0,-1830(s0) # 8da <screenPos>
 438:	02059c63          	bnez	a1,470 <_stack_size+0x70>
 43c:	03c12083          	lw	ra,60(sp)
 440:	03812403          	lw	s0,56(sp)
 444:	03412483          	lw	s1,52(sp)
 448:	03012903          	lw	s2,48(sp)
 44c:	02c12983          	lw	s3,44(sp)
 450:	02812a03          	lw	s4,40(sp)
 454:	02412a83          	lw	s5,36(sp)
 458:	02012b03          	lw	s6,32(sp)
 45c:	01c12b83          	lw	s7,28(sp)
 460:	01812c03          	lw	s8,24(sp)
 464:	01412c83          	lw	s9,20(sp)
 468:	06010113          	addi	sp,sp,96
 46c:	00008067          	ret
 470:	001c8c13          	addi	s8,s9,1
 474:	01259e63          	bne	a1,s2,490 <_stack_size+0x90>
 478:	fc057793          	andi	a5,a0,-64
 47c:	04078793          	addi	a5,a5,64
 480:	01079793          	slli	a5,a5,0x10
 484:	4107d793          	srai	a5,a5,0x10
 488:	000c8c13          	mv	s8,s9
 48c:	0380006f          	j	4c4 <_stack_size+0xc4>
 490:	0d359063          	bne	a1,s3,550 <_stack_size+0x150>
 494:	0017c783          	lbu	a5,1(a5)
 498:	03479c63          	bne	a5,s4,4d0 <_stack_size+0xd0>
 49c:	00c12783          	lw	a5,12(sp)
 4a0:	00f00613          	li	a2,15
 4a4:	0007a583          	lw	a1,0(a5)
 4a8:	00478713          	addi	a4,a5,4
 4ac:	00e12623          	sw	a4,12(sp)
 4b0:	d71ff0ef          	jal	220 <printHex>
 4b4:	8da45783          	lhu	a5,-1830(s0)
 4b8:	00f507b3          	add	a5,a0,a5
 4bc:	01079793          	slli	a5,a5,0x10
 4c0:	4107d793          	srai	a5,a5,0x10
 4c4:	8cf41d23          	sh	a5,-1830(s0)
 4c8:	001c0c93          	addi	s9,s8,1
 4cc:	f61ff06f          	j	42c <_stack_size+0x2c>
 4d0:	03579063          	bne	a5,s5,4f0 <_stack_size+0xf0>
 4d4:	00c12783          	lw	a5,12(sp)
 4d8:	00f00613          	li	a2,15
 4dc:	0007a583          	lw	a1,0(a5)
 4e0:	00478713          	addi	a4,a5,4
 4e4:	00e12623          	sw	a4,12(sp)
 4e8:	dd9ff0ef          	jal	2c0 <printDec>
 4ec:	fc9ff06f          	j	4b4 <_stack_size+0xb4>
 4f0:	03679463          	bne	a5,s6,518 <_stack_size+0x118>
 4f4:	00c12783          	lw	a5,12(sp)
 4f8:	00f00613          	li	a2,15
 4fc:	0007c583          	lbu	a1,0(a5)
 500:	00478713          	addi	a4,a5,4
 504:	00e12623          	sw	a4,12(sp)
 508:	c29ff0ef          	jal	130 <putch>
 50c:	8da45783          	lhu	a5,-1830(s0)
 510:	00178793          	addi	a5,a5,1
 514:	fa9ff06f          	j	4bc <_stack_size+0xbc>
 518:	03779063          	bne	a5,s7,538 <_stack_size+0x138>
 51c:	00c12783          	lw	a5,12(sp)
 520:	00f00613          	li	a2,15
 524:	0007a583          	lw	a1,0(a5)
 528:	00478713          	addi	a4,a5,4
 52c:	00e12623          	sw	a4,12(sp)
 530:	c31ff0ef          	jal	160 <printString>
 534:	f81ff06f          	j	4b4 <_stack_size+0xb4>
 538:	00f00613          	li	a2,15
 53c:	02500593          	li	a1,37
 540:	bf1ff0ef          	jal	130 <putch>
 544:	8da45783          	lhu	a5,-1830(s0)
 548:	00178793          	addi	a5,a5,1
 54c:	f35ff06f          	j	480 <_stack_size+0x80>
 550:	00f00613          	li	a2,15
 554:	fedff06f          	j	540 <_stack_size+0x140>

00000558 <printfSCR>:
 558:	f9010113          	addi	sp,sp,-112
 55c:	06f12223          	sw	a5,100(sp)
 560:	05c10793          	addi	a5,sp,92
 564:	04812423          	sw	s0,72(sp)
 568:	04912223          	sw	s1,68(sp)
 56c:	05212023          	sw	s2,64(sp)
 570:	03412c23          	sw	s4,56(sp)
 574:	03512a23          	sw	s5,52(sp)
 578:	03612823          	sw	s6,48(sp)
 57c:	03712623          	sw	s7,44(sp)
 580:	03812423          	sw	s8,40(sp)
 584:	03912223          	sw	s9,36(sp)
 588:	03a12023          	sw	s10,32(sp)
 58c:	01b12e23          	sw	s11,28(sp)
 590:	04112623          	sw	ra,76(sp)
 594:	03312e23          	sw	s3,60(sp)
 598:	00050a93          	mv	s5,a0
 59c:	00058493          	mv	s1,a1
 5a0:	00060a13          	mv	s4,a2
 5a4:	04d12e23          	sw	a3,92(sp)
 5a8:	06e12023          	sw	a4,96(sp)
 5ac:	07012423          	sw	a6,104(sp)
 5b0:	07112623          	sw	a7,108(sp)
 5b4:	00f12623          	sw	a5,12(sp)
 5b8:	00000913          	li	s2,0
 5bc:	00000413          	li	s0,0
 5c0:	00a00b13          	li	s6,10
 5c4:	02500b93          	li	s7,37
 5c8:	07800c13          	li	s8,120
 5cc:	06400c93          	li	s9,100
 5d0:	06300d13          	li	s10,99
 5d4:	07300d93          	li	s11,115
 5d8:	012a07b3          	add	a5,s4,s2
 5dc:	0007c583          	lbu	a1,0(a5)
 5e0:	04059263          	bnez	a1,624 <printfSCR+0xcc>
 5e4:	04c12083          	lw	ra,76(sp)
 5e8:	00040513          	mv	a0,s0
 5ec:	04812403          	lw	s0,72(sp)
 5f0:	04412483          	lw	s1,68(sp)
 5f4:	04012903          	lw	s2,64(sp)
 5f8:	03c12983          	lw	s3,60(sp)
 5fc:	03812a03          	lw	s4,56(sp)
 600:	03412a83          	lw	s5,52(sp)
 604:	03012b03          	lw	s6,48(sp)
 608:	02c12b83          	lw	s7,44(sp)
 60c:	02812c03          	lw	s8,40(sp)
 610:	02412c83          	lw	s9,36(sp)
 614:	02012d03          	lw	s10,32(sp)
 618:	01c12d83          	lw	s11,28(sp)
 61c:	07010113          	addi	sp,sp,112
 620:	00008067          	ret
 624:	00190993          	addi	s3,s2,1
 628:	01659a63          	bne	a1,s6,63c <printfSCR+0xe4>
 62c:	fc047413          	andi	s0,s0,-64
 630:	04040413          	addi	s0,s0,64
 634:	00090993          	mv	s3,s2
 638:	0740006f          	j	6ac <printfSCR+0x154>
 63c:	01540533          	add	a0,s0,s5
 640:	0b759463          	bne	a1,s7,6e8 <printfSCR+0x190>
 644:	0017c783          	lbu	a5,1(a5)
 648:	03879263          	bne	a5,s8,66c <printfSCR+0x114>
 64c:	00c12783          	lw	a5,12(sp)
 650:	00048613          	mv	a2,s1
 654:	0007a583          	lw	a1,0(a5)
 658:	00478713          	addi	a4,a5,4
 65c:	00e12623          	sw	a4,12(sp)
 660:	bc1ff0ef          	jal	220 <printHex>
 664:	00a40433          	add	s0,s0,a0
 668:	0440006f          	j	6ac <printfSCR+0x154>
 66c:	03979063          	bne	a5,s9,68c <printfSCR+0x134>
 670:	00c12783          	lw	a5,12(sp)
 674:	00048613          	mv	a2,s1
 678:	0007a583          	lw	a1,0(a5)
 67c:	00478713          	addi	a4,a5,4
 680:	00e12623          	sw	a4,12(sp)
 684:	c3dff0ef          	jal	2c0 <printDec>
 688:	fddff06f          	j	664 <printfSCR+0x10c>
 68c:	03a79463          	bne	a5,s10,6b4 <printfSCR+0x15c>
 690:	00c12783          	lw	a5,12(sp)
 694:	00048613          	mv	a2,s1
 698:	00140413          	addi	s0,s0,1
 69c:	0007c583          	lbu	a1,0(a5)
 6a0:	00478713          	addi	a4,a5,4
 6a4:	00e12623          	sw	a4,12(sp)
 6a8:	a89ff0ef          	jal	130 <putch>
 6ac:	00198913          	addi	s2,s3,1
 6b0:	f29ff06f          	j	5d8 <printfSCR+0x80>
 6b4:	03b79063          	bne	a5,s11,6d4 <printfSCR+0x17c>
 6b8:	00c12783          	lw	a5,12(sp)
 6bc:	00048613          	mv	a2,s1
 6c0:	0007a583          	lw	a1,0(a5)
 6c4:	00478713          	addi	a4,a5,4
 6c8:	00e12623          	sw	a4,12(sp)
 6cc:	a95ff0ef          	jal	160 <printString>
 6d0:	f95ff06f          	j	664 <printfSCR+0x10c>
 6d4:	00048613          	mv	a2,s1
 6d8:	02500593          	li	a1,37
 6dc:	a55ff0ef          	jal	130 <putch>
 6e0:	00140413          	addi	s0,s0,1
 6e4:	f51ff06f          	j	634 <printfSCR+0xdc>
 6e8:	00048613          	mv	a2,s1
 6ec:	ff1ff06f          	j	6dc <printfSCR+0x184>

000006f0 <clearScreen>:
 6f0:	ff010113          	addi	sp,sp,-16
 6f4:	00812423          	sw	s0,8(sp)
 6f8:	00912223          	sw	s1,4(sp)
 6fc:	00112623          	sw	ra,12(sp)
 700:	00000413          	li	s0,0
 704:	4c000493          	li	s1,1216
 708:	00040513          	mv	a0,s0
 70c:	00f00613          	li	a2,15
 710:	02000593          	li	a1,32
 714:	00140413          	addi	s0,s0,1
 718:	a19ff0ef          	jal	130 <putch>
 71c:	fe9416e3          	bne	s0,s1,708 <clearScreen+0x18>
 720:	00c12083          	lw	ra,12(sp)
 724:	00812403          	lw	s0,8(sp)
 728:	000017b7          	lui	a5,0x1
 72c:	8c079d23          	sh	zero,-1830(a5) # 8da <screenPos>
 730:	00412483          	lw	s1,4(sp)
 734:	01010113          	addi	sp,sp,16
 738:	00008067          	ret

0000073c <resetScreenVector>:
 73c:	000017b7          	lui	a5,0x1
 740:	8c079d23          	sh	zero,-1830(a5) # 8da <screenPos>
 744:	00008067          	ret
 748:	2710                	.insn	2, 0x2710
 74a:	0000                	.insn	2, 0x
 74c:	03e8                	.insn	2, 0x03e8
 74e:	0000                	.insn	2, 0x
 750:	0064                	.insn	2, 0x0064
 752:	0000                	.insn	2, 0x
 754:	000a                	.insn	2, 0x000a
 756:	0000                	.insn	2, 0x
 758:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

0000075c <main>:
 75c:	fd010113          	addi	sp,sp,-48
 760:	000015b7          	lui	a1,0x1
 764:	00b00613          	li	a2,11
 768:	8b458593          	addi	a1,a1,-1868 # 8b4 <_stack_bottom+0xb4>
 76c:	01410513          	addi	a0,sp,20
 770:	02112623          	sw	ra,44(sp)
 774:	93dff0ef          	jal	b0 <memcpy>
 778:	deadc5b7          	lui	a1,0xdeadc
 77c:	004007b7          	lui	a5,0x400
 780:	eef58593          	addi	a1,a1,-273 # deadbeef <_stack_end+0xdeadaeef>
 784:	00001537          	lui	a0,0x1
 788:	00b7a023          	sw	a1,0(a5) # 400000 <_stack_end+0x3ff000>
 78c:	87c50513          	addi	a0,a0,-1924 # 87c <_stack_bottom+0x7c>
 790:	c25ff0ef          	jal	3b4 <printf>
 794:	0007a7b7          	lui	a5,0x7a
 798:	00012223          	sw	zero,4(sp)
 79c:	11f78793          	addi	a5,a5,287 # 7a11f <_stack_end+0x7911f>
 7a0:	00412703          	lw	a4,4(sp)
 7a4:	06e7de63          	bge	a5,a4,820 <_stack_bottom+0x20>
 7a8:	004007b7          	lui	a5,0x400
 7ac:	0007a583          	lw	a1,0(a5) # 400000 <_stack_end+0x3ff000>
 7b0:	00001537          	lui	a0,0x1
 7b4:	88c50513          	addi	a0,a0,-1908 # 88c <_stack_bottom+0x8c>
 7b8:	bfdff0ef          	jal	3b4 <printf>
 7bc:	0007a7b7          	lui	a5,0x7a
 7c0:	00012423          	sw	zero,8(sp)
 7c4:	11f78793          	addi	a5,a5,287 # 7a11f <_stack_end+0x7911f>
 7c8:	00812703          	lw	a4,8(sp)
 7cc:	06e7d263          	bge	a5,a4,830 <_stack_bottom+0x30>
 7d0:	00001537          	lui	a0,0x1
 7d4:	01410593          	addi	a1,sp,20
 7d8:	89c50513          	addi	a0,a0,-1892 # 89c <_stack_bottom+0x9c>
 7dc:	bd9ff0ef          	jal	3b4 <printf>
 7e0:	00a00693          	li	a3,10
 7e4:	00012623          	sw	zero,12(sp)
 7e8:	00400637          	lui	a2,0x400
 7ec:	00c12783          	lw	a5,12(sp)
 7f0:	04f6d863          	bge	a3,a5,840 <_stack_bottom+0x40>
 7f4:	0007a7b7          	lui	a5,0x7a
 7f8:	00012823          	sw	zero,16(sp)
 7fc:	11f78793          	addi	a5,a5,287 # 7a11f <_stack_end+0x7911f>
 800:	01012703          	lw	a4,16(sp)
 804:	06e7d463          	bge	a5,a4,86c <_stack_bottom+0x6c>
 808:	004005b7          	lui	a1,0x400
 80c:	00001537          	lui	a0,0x1
 810:	00858593          	addi	a1,a1,8 # 400008 <_stack_end+0x3ff008>
 814:	8a850513          	addi	a0,a0,-1880 # 8a8 <_stack_bottom+0xa8>
 818:	b9dff0ef          	jal	3b4 <printf>
 81c:	0000006f          	j	81c <_stack_bottom+0x1c>
 820:	00412703          	lw	a4,4(sp)
 824:	00170713          	addi	a4,a4,1
 828:	00e12223          	sw	a4,4(sp)
 82c:	f75ff06f          	j	7a0 <main+0x44>
 830:	00812703          	lw	a4,8(sp)
 834:	00170713          	addi	a4,a4,1
 838:	00e12423          	sw	a4,8(sp)
 83c:	f8dff06f          	j	7c8 <main+0x6c>
 840:	00c12703          	lw	a4,12(sp)
 844:	00c12783          	lw	a5,12(sp)
 848:	02070713          	addi	a4,a4,32
 84c:	00270733          	add	a4,a4,sp
 850:	ff474703          	lbu	a4,-12(a4)
 854:	00f607b3          	add	a5,a2,a5
 858:	00e78423          	sb	a4,8(a5)
 85c:	00c12783          	lw	a5,12(sp)
 860:	00178793          	addi	a5,a5,1
 864:	00f12623          	sw	a5,12(sp)
 868:	f85ff06f          	j	7ec <main+0x90>
 86c:	01012703          	lw	a4,16(sp)
 870:	00170713          	addi	a4,a4,1
 874:	00e12823          	sw	a4,16(sp)
 878:	f89ff06f          	j	800 <_stack_bottom>
