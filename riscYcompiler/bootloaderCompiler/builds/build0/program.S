
builds/build0/program.elf:     file format elf32-littleriscv


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
 240:	a3c58593          	addi	a1,a1,-1476 # a3c <_stack_bottom+0x23c>
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
 304:	a5058593          	addi	a1,a1,-1456 # a50 <_stack_bottom+0x250>
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
 434:	a5641503          	lh	a0,-1450(s0) # a56 <screenPos>
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
 4b4:	a5645783          	lhu	a5,-1450(s0)
 4b8:	00f507b3          	add	a5,a0,a5
 4bc:	01079793          	slli	a5,a5,0x10
 4c0:	4107d793          	srai	a5,a5,0x10
 4c4:	a4f41b23          	sh	a5,-1450(s0)
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
 50c:	a5645783          	lhu	a5,-1450(s0)
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
 544:	a5645783          	lhu	a5,-1450(s0)
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
 72c:	a4079b23          	sh	zero,-1450(a5) # a56 <screenPos>
 730:	00412483          	lw	s1,4(sp)
 734:	01010113          	addi	sp,sp,16
 738:	00008067          	ret

0000073c <resetScreenVector>:
 73c:	000017b7          	lui	a5,0x1
 740:	a4079b23          	sh	zero,-1450(a5) # a56 <screenPos>
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
 75c:	f4010113          	addi	sp,sp,-192
 760:	0a912a23          	sw	s1,180(sp)
 764:	0b212823          	sw	s2,176(sp)
 768:	0b312623          	sw	s3,172(sp)
 76c:	0b412423          	sw	s4,168(sp)
 770:	0b512223          	sw	s5,164(sp)
 774:	0b612023          	sw	s6,160(sp)
 778:	0a112e23          	sw	ra,188(sp)
 77c:	0a812c23          	sw	s0,184(sp)
 780:	09712e23          	sw	s7,156(sp)
 784:	09812c23          	sw	s8,152(sp)
 788:	09912a23          	sw	s9,148(sp)
 78c:	09a12823          	sw	s10,144(sp)
 790:	09b12623          	sw	s11,140(sp)
 794:	00000493          	li	s1,0
 798:	f59ff0ef          	jal	6f0 <clearScreen>
 79c:	000019b7          	lui	s3,0x1
 7a0:	00001a37          	lui	s4,0x1
 7a4:	00001ab7          	lui	s5,0x1
 7a8:	00001b37          	lui	s6,0x1
 7ac:	00001937          	lui	s2,0x1
 7b0:	9cc98513          	addi	a0,s3,-1588 # 9cc <_stack_bottom+0x1cc>
 7b4:	c01ff0ef          	jal	3b4 <printf>
 7b8:	9e0a0513          	addi	a0,s4,-1568 # 9e0 <_stack_bottom+0x1e0>
 7bc:	bf9ff0ef          	jal	3b4 <printf>
 7c0:	00000513          	li	a0,0
 7c4:	89dff0ef          	jal	60 <readFlash>
 7c8:	00400513          	li	a0,4
 7cc:	895ff0ef          	jal	60 <readFlash>
 7d0:	00800513          	li	a0,8
 7d4:	88dff0ef          	jal	60 <readFlash>
 7d8:	00050593          	mv	a1,a0
 7dc:	00050b93          	mv	s7,a0
 7e0:	9f0a8513          	addi	a0,s5,-1552 # 9f0 <_stack_bottom+0x1f0>
 7e4:	bd1ff0ef          	jal	3b4 <printf>
 7e8:	01c10c93          	addi	s9,sp,28
 7ec:	01800c13          	li	s8,24
 7f0:	00000d93          	li	s11,0
 7f4:	ff4c0d13          	addi	s10,s8,-12
 7f8:	0b7d9063          	bne	s11,s7,898 <_stack_bottom+0x98>
 7fc:	a08b0513          	addi	a0,s6,-1528 # a08 <_stack_bottom+0x208>
 800:	00005db7          	lui	s11,0x5
 804:	bb1ff0ef          	jal	3b4 <printf>
 808:	00000d13          	li	s10,0
 80c:	00000413          	li	s0,0
 810:	e1fd8d93          	addi	s11,s11,-481 # 4e1f <_stack_end+0x3e1f>
 814:	911ff0ef          	jal	124 <getButtonRight>
 818:	00051863          	bnez	a0,828 <_stack_bottom+0x28>
 81c:	8fdff0ef          	jal	118 <getButtonLeft>
 820:	00050c93          	mv	s9,a0
 824:	14050463          	beqz	a0,96c <_stack_bottom+0x16c>
 828:	00241793          	slli	a5,s0,0x2
 82c:	00878433          	add	s0,a5,s0
 830:	00241413          	slli	s0,s0,0x2
 834:	07040793          	addi	a5,s0,112
 838:	01010713          	addi	a4,sp,16
 83c:	00000b93          	li	s7,0
 840:	00e78433          	add	s0,a5,a4
 844:	00400c37          	lui	s8,0x400
 848:	00002cb7          	lui	s9,0x2
 84c:	fac42503          	lw	a0,-84(s0)
 850:	00ab8533          	add	a0,s7,a0
 854:	80dff0ef          	jal	60 <readFlash>
 858:	017c07b3          	add	a5,s8,s7
 85c:	00a7a023          	sw	a0,0(a5)
 860:	004b8b93          	addi	s7,s7,4
 864:	ff9b94e3          	bne	s7,s9,84c <_stack_bottom+0x4c>
 868:	e89ff0ef          	jal	6f0 <clearScreen>
 86c:	000c00e7          	jalr	s8 # 400000 <_stack_end+0x3ff000>
 870:	e81ff0ef          	jal	6f0 <clearScreen>
 874:	000317b7          	lui	a5,0x31
 878:	00012c23          	sw	zero,24(sp)
 87c:	d3f78793          	addi	a5,a5,-705 # 30d3f <_stack_end+0x2fd3f>
 880:	01812703          	lw	a4,24(sp)
 884:	f2e7c6e3          	blt	a5,a4,7b0 <main+0x54>
 888:	01812703          	lw	a4,24(sp)
 88c:	00170713          	addi	a4,a4,1
 890:	00e12c23          	sw	a4,24(sp)
 894:	fedff06f          	j	880 <_stack_bottom+0x80>
 898:	000c8413          	mv	s0,s9
 89c:	000d0513          	mv	a0,s10
 8a0:	fc0ff0ef          	jal	60 <readFlash>
 8a4:	00855793          	srli	a5,a0,0x8
 8a8:	00f400a3          	sb	a5,1(s0)
 8ac:	01055793          	srli	a5,a0,0x10
 8b0:	00f40123          	sb	a5,2(s0)
 8b4:	01855793          	srli	a5,a0,0x18
 8b8:	00a40023          	sb	a0,0(s0)
 8bc:	00f401a3          	sb	a5,3(s0)
 8c0:	004d0d13          	addi	s10,s10,4
 8c4:	00440413          	addi	s0,s0,4
 8c8:	fd8d1ae3          	bne	s10,s8,89c <_stack_bottom+0x9c>
 8cc:	000c8623          	sb	zero,12(s9) # 200c <_stack_end+0x100c>
 8d0:	000c0513          	mv	a0,s8
 8d4:	f8cff0ef          	jal	60 <readFlash>
 8d8:	00aca823          	sw	a0,16(s9)
 8dc:	001d8d93          	addi	s11,s11,1
 8e0:	014c8c93          	addi	s9,s9,20
 8e4:	010c0c13          	addi	s8,s8,16
 8e8:	f0dff06f          	j	7f4 <main+0x98>
 8ec:	000d0863          	beqz	s10,8fc <_stack_bottom+0xfc>
 8f0:	01a40433          	add	s0,s0,s10
 8f4:	04045e63          	bgez	s0,950 <_stack_bottom+0x150>
 8f8:	fffb8413          	addi	s0,s7,-1
 8fc:	006c1513          	slli	a0,s8,0x6
 900:	00e12623          	sw	a4,12(sp)
 904:	01072783          	lw	a5,16(a4)
 908:	14150513          	addi	a0,a0,321
 90c:	05841863          	bne	s0,s8,95c <_stack_bottom+0x15c>
 910:	00040693          	mv	a3,s0
 914:	a1c90613          	addi	a2,s2,-1508 # a1c <_stack_bottom+0x21c>
 918:	05000593          	li	a1,80
 91c:	c3dff0ef          	jal	558 <printfSCR>
 920:	00c12703          	lw	a4,12(sp)
 924:	001c0c13          	addi	s8,s8,1
 928:	00000d13          	li	s10,0
 92c:	01470713          	addi	a4,a4,20
 930:	fb7c1ee3          	bne	s8,s7,8ec <_stack_bottom+0xec>
 934:	00012a23          	sw	zero,20(sp)
 938:	01412783          	lw	a5,20(sp)
 93c:	02fdde63          	bge	s11,a5,978 <_stack_bottom+0x178>
 940:	ee0c94e3          	bnez	s9,828 <_stack_bottom+0x28>
 944:	ec9058e3          	blez	s1,814 <_stack_bottom+0x14>
 948:	fff48493          	addi	s1,s1,-1
 94c:	ec9ff06f          	j	814 <_stack_bottom+0x14>
 950:	fb7466e3          	bltu	s0,s7,8fc <_stack_bottom+0xfc>
 954:	00000413          	li	s0,0
 958:	fa5ff06f          	j	8fc <_stack_bottom+0xfc>
 95c:	000c0693          	mv	a3,s8
 960:	a1c90613          	addi	a2,s2,-1508
 964:	00f00593          	li	a1,15
 968:	fb5ff06f          	j	91c <_stack_bottom+0x11c>
 96c:	01c10713          	addi	a4,sp,28
 970:	00000c13          	li	s8,0
 974:	fbdff06f          	j	930 <_stack_bottom+0x130>
 978:	02049063          	bnez	s1,998 <_stack_bottom+0x198>
 97c:	f84ff0ef          	jal	100 <getButtonDown>
 980:	02051a63          	bnez	a0,9b4 <_stack_bottom+0x1b4>
 984:	f88ff0ef          	jal	10c <getButtonUp>
 988:	02051c63          	bnez	a0,9c0 <_stack_bottom+0x1c0>
 98c:	f8cff0ef          	jal	118 <getButtonLeft>
 990:	00050c63          	beqz	a0,9a8 <_stack_bottom+0x1a8>
 994:	00100c93          	li	s9,1
 998:	01412783          	lw	a5,20(sp)
 99c:	00178793          	addi	a5,a5,1
 9a0:	00f12a23          	sw	a5,20(sp)
 9a4:	f95ff06f          	j	938 <_stack_bottom+0x138>
 9a8:	f7cff0ef          	jal	124 <getButtonRight>
 9ac:	fe0514e3          	bnez	a0,994 <_stack_bottom+0x194>
 9b0:	fe9ff06f          	j	998 <_stack_bottom+0x198>
 9b4:	00e00493          	li	s1,14
 9b8:	00100d13          	li	s10,1
 9bc:	fddff06f          	j	998 <_stack_bottom+0x198>
 9c0:	00e00493          	li	s1,14
 9c4:	fff00d13          	li	s10,-1
 9c8:	fd1ff06f          	j	998 <_stack_bottom+0x198>
