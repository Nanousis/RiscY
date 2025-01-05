
builds/build0/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	e0010113          	addi	sp,sp,-512 # e00 <_stack_top>
   8:	780000ef          	jal	788 <_etext>
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
  68:	ff010113          	addi	sp,sp,-16
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

000000a8 <getUSBint>:
  a8:	100007b7          	lui	a5,0x10000
  ac:	0007a503          	lw	a0,0(a5) # 10000000 <_stack_end+0xffff000>
  b0:	00008067          	ret

000000b4 <WriteSprite>:
  b4:	880017b7          	lui	a5,0x88001
  b8:	00651513          	slli	a0,a0,0x6
  bc:	00f50533          	add	a0,a0,a5
  c0:	02000713          	li	a4,32
  c4:	00000793          	li	a5,0
  c8:	00f586b3          	add	a3,a1,a5
  cc:	0006c683          	lbu	a3,0(a3)
  d0:	00178793          	addi	a5,a5,1 # 88001001 <_stack_end+0x88000001>
  d4:	00250513          	addi	a0,a0,2
  d8:	fed51f23          	sh	a3,-2(a0)
  dc:	fee796e3          	bne	a5,a4,c8 <WriteSprite+0x14>
  e0:	00008067          	ret

000000e4 <memcpy>:
  e4:	00000793          	li	a5,0
  e8:	00c7c463          	blt	a5,a2,f0 <memcpy+0xc>
  ec:	00008067          	ret
  f0:	00f58733          	add	a4,a1,a5
  f4:	00074683          	lbu	a3,0(a4)
  f8:	00f50733          	add	a4,a0,a5
  fc:	00178793          	addi	a5,a5,1
 100:	00d70023          	sb	a3,0(a4)
 104:	fe5ff06f          	j	e8 <memcpy+0x4>

00000108 <memset>:
 108:	00c50633          	add	a2,a0,a2
 10c:	00050793          	mv	a5,a0
 110:	00c79463          	bne	a5,a2,118 <memset+0x10>
 114:	00008067          	ret
 118:	00178793          	addi	a5,a5,1
 11c:	feb78fa3          	sb	a1,-1(a5)
 120:	ff1ff06f          	j	110 <memset+0x8>

00000124 <getButton>:
 124:	890007b7          	lui	a5,0x89000
 128:	00a787b3          	add	a5,a5,a0
 12c:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
 130:	00008067          	ret

00000134 <getButtonDown>:
 134:	890007b7          	lui	a5,0x89000
 138:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
 13c:	00008067          	ret

00000140 <getButtonUp>:
 140:	890007b7          	lui	a5,0x89000
 144:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88fff001>
 148:	00008067          	ret

0000014c <getButtonLeft>:
 14c:	890007b7          	lui	a5,0x89000
 150:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88fff002>
 154:	00008067          	ret

00000158 <getButtonRight>:
 158:	890007b7          	lui	a5,0x89000
 15c:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88fff003>
 160:	00008067          	ret

00000164 <putch>:
 164:	4c000793          	li	a5,1216
 168:	02a7e263          	bltu	a5,a0,18c <putch+0x28>
 16c:	00861613          	slli	a2,a2,0x8
 170:	880007b7          	lui	a5,0x88000
 174:	00151513          	slli	a0,a0,0x1
 178:	00f50533          	add	a0,a0,a5
 17c:	00b665b3          	or	a1,a2,a1
 180:	00b51023          	sh	a1,0(a0)
 184:	00100513          	li	a0,1
 188:	00008067          	ret
 18c:	00000513          	li	a0,0
 190:	00008067          	ret

00000194 <printString>:
 194:	fe010113          	addi	sp,sp,-32
 198:	01312623          	sw	s3,12(sp)
 19c:	01412423          	sw	s4,8(sp)
 1a0:	00112e23          	sw	ra,28(sp)
 1a4:	00812c23          	sw	s0,24(sp)
 1a8:	00912a23          	sw	s1,20(sp)
 1ac:	01212823          	sw	s2,16(sp)
 1b0:	01512223          	sw	s5,4(sp)
 1b4:	01612023          	sw	s6,0(sp)
 1b8:	00050a13          	mv	s4,a0
 1bc:	00058993          	mv	s3,a1
 1c0:	06060c63          	beqz	a2,238 <_stack_size+0x38>
 1c4:	00060413          	mv	s0,a2
 1c8:	00000913          	li	s2,0
 1cc:	00000493          	li	s1,0
 1d0:	00100a93          	li	s5,1
 1d4:	00f00b13          	li	s6,15
 1d8:	0280006f          	j	200 <_stack_size>
 1dc:	00040613          	mv	a2,s0
 1e0:	009a0533          	add	a0,s4,s1
 1e4:	f81ff0ef          	jal	164 <putch>
 1e8:	06050263          	beqz	a0,24c <_stack_size+0x4c>
 1ec:	00148493          	addi	s1,s1,1
 1f0:	01591863          	bne	s2,s5,200 <_stack_size>
 1f4:	00140413          	addi	s0,s0,1
 1f8:	0ff47413          	zext.b	s0,s0
 1fc:	048b6463          	bltu	s6,s0,244 <_stack_size+0x44>
 200:	009987b3          	add	a5,s3,s1
 204:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87fff000>
 208:	00048513          	mv	a0,s1
 20c:	fc0598e3          	bnez	a1,1dc <printString+0x48>
 210:	01c12083          	lw	ra,28(sp)
 214:	01812403          	lw	s0,24(sp)
 218:	01412483          	lw	s1,20(sp)
 21c:	01012903          	lw	s2,16(sp)
 220:	00c12983          	lw	s3,12(sp)
 224:	00812a03          	lw	s4,8(sp)
 228:	00412a83          	lw	s5,4(sp)
 22c:	00012b03          	lw	s6,0(sp)
 230:	02010113          	addi	sp,sp,32
 234:	00008067          	ret
 238:	00100913          	li	s2,1
 23c:	00090413          	mv	s0,s2
 240:	f8dff06f          	j	1cc <printString+0x38>
 244:	00090413          	mv	s0,s2
 248:	fb9ff06f          	j	200 <_stack_size>
 24c:	00000513          	li	a0,0
 250:	fc1ff06f          	j	210 <_stack_size+0x10>

00000254 <printHex>:
 254:	fd010113          	addi	sp,sp,-48
 258:	02812423          	sw	s0,40(sp)
 25c:	00058413          	mv	s0,a1
 260:	000015b7          	lui	a1,0x1
 264:	02912223          	sw	s1,36(sp)
 268:	03212023          	sw	s2,32(sp)
 26c:	c4058593          	addi	a1,a1,-960 # c40 <_stack_bottom+0x40>
 270:	00050493          	mv	s1,a0
 274:	00060913          	mv	s2,a2
 278:	00c10513          	addi	a0,sp,12
 27c:	01100613          	li	a2,17
 280:	02112623          	sw	ra,44(sp)
 284:	e61ff0ef          	jal	e4 <memcpy>
 288:	202027b7          	lui	a5,0x20202
 28c:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 290:	00f12023          	sw	a5,0(sp)
 294:	00f12223          	sw	a5,4(sp)
 298:	00010423          	sb	zero,8(sp)
 29c:	00700793          	li	a5,7
 2a0:	00010593          	mv	a1,sp
 2a4:	fff00693          	li	a3,-1
 2a8:	00f47713          	andi	a4,s0,15
 2ac:	02070713          	addi	a4,a4,32
 2b0:	00270733          	add	a4,a4,sp
 2b4:	fec74703          	lbu	a4,-20(a4)
 2b8:	00f58633          	add	a2,a1,a5
 2bc:	fff78793          	addi	a5,a5,-1
 2c0:	00e60023          	sb	a4,0(a2)
 2c4:	40445413          	srai	s0,s0,0x4
 2c8:	fed790e3          	bne	a5,a3,2a8 <printHex+0x54>
 2cc:	00090613          	mv	a2,s2
 2d0:	00048513          	mv	a0,s1
 2d4:	ec1ff0ef          	jal	194 <printString>
 2d8:	02c12083          	lw	ra,44(sp)
 2dc:	02812403          	lw	s0,40(sp)
 2e0:	02412483          	lw	s1,36(sp)
 2e4:	02012903          	lw	s2,32(sp)
 2e8:	0ff57513          	zext.b	a0,a0
 2ec:	03010113          	addi	sp,sp,48
 2f0:	00008067          	ret

000002f4 <printDec>:
 2f4:	fd010113          	addi	sp,sp,-48
 2f8:	02812423          	sw	s0,40(sp)
 2fc:	00058413          	mv	s0,a1
 300:	02912223          	sw	s1,36(sp)
 304:	03212023          	sw	s2,32(sp)
 308:	00050493          	mv	s1,a0
 30c:	00060913          	mv	s2,a2
 310:	77400593          	li	a1,1908
 314:	01400613          	li	a2,20
 318:	00c10513          	addi	a0,sp,12
 31c:	02112623          	sw	ra,44(sp)
 320:	dc5ff0ef          	jal	e4 <memcpy>
 324:	000187b7          	lui	a5,0x18
 328:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 32c:	0287fa63          	bgeu	a5,s0,360 <printDec+0x6c>
 330:	000015b7          	lui	a1,0x1
 334:	00090613          	mv	a2,s2
 338:	c5458593          	addi	a1,a1,-940 # c54 <_stack_bottom+0x54>
 33c:	00048513          	mv	a0,s1
 340:	e55ff0ef          	jal	194 <printString>
 344:	02c12083          	lw	ra,44(sp)
 348:	02812403          	lw	s0,40(sp)
 34c:	02412483          	lw	s1,36(sp)
 350:	02012903          	lw	s2,32(sp)
 354:	0ff57513          	zext.b	a0,a0
 358:	03010113          	addi	sp,sp,48
 35c:	00008067          	ret
 360:	00100613          	li	a2,1
 364:	00c10713          	addi	a4,sp,12
 368:	00000793          	li	a5,0
 36c:	00060513          	mv	a0,a2
 370:	00072583          	lw	a1,0(a4)
 374:	00000693          	li	a3,0
 378:	06b47263          	bgeu	s0,a1,3dc <printDec+0xe8>
 37c:	00069663          	bnez	a3,388 <printDec+0x94>
 380:	00a58463          	beq	a1,a0,388 <printDec+0x94>
 384:	00061e63          	bnez	a2,3a0 <printDec+0xac>
 388:	02078613          	addi	a2,a5,32
 38c:	00260633          	add	a2,a2,sp
 390:	03068693          	addi	a3,a3,48
 394:	fed60223          	sb	a3,-28(a2)
 398:	00178793          	addi	a5,a5,1
 39c:	00000613          	li	a2,0
 3a0:	00470713          	addi	a4,a4,4
 3a4:	02010693          	addi	a3,sp,32
 3a8:	fcd714e3          	bne	a4,a3,370 <printDec+0x7c>
 3ac:	00060c63          	beqz	a2,3c4 <printDec+0xd0>
 3b0:	02078713          	addi	a4,a5,32
 3b4:	00270733          	add	a4,a4,sp
 3b8:	03000693          	li	a3,48
 3bc:	fed70223          	sb	a3,-28(a4)
 3c0:	00178793          	addi	a5,a5,1
 3c4:	02078793          	addi	a5,a5,32
 3c8:	002787b3          	add	a5,a5,sp
 3cc:	fe078223          	sb	zero,-28(a5)
 3d0:	00090613          	mv	a2,s2
 3d4:	00410593          	addi	a1,sp,4
 3d8:	f65ff06f          	j	33c <printDec+0x48>
 3dc:	40b40433          	sub	s0,s0,a1
 3e0:	00168693          	addi	a3,a3,1
 3e4:	f95ff06f          	j	378 <printDec+0x84>

000003e8 <printf>:
 3e8:	fa010113          	addi	sp,sp,-96
 3ec:	04f12a23          	sw	a5,84(sp)
 3f0:	04410793          	addi	a5,sp,68
 3f4:	02812c23          	sw	s0,56(sp)
 3f8:	02912a23          	sw	s1,52(sp)
 3fc:	03212823          	sw	s2,48(sp)
 400:	03312623          	sw	s3,44(sp)
 404:	03412423          	sw	s4,40(sp)
 408:	03512223          	sw	s5,36(sp)
 40c:	03612023          	sw	s6,32(sp)
 410:	01812c23          	sw	s8,24(sp)
 414:	02112e23          	sw	ra,60(sp)
 418:	01712e23          	sw	s7,28(sp)
 41c:	00050493          	mv	s1,a0
 420:	04b12223          	sw	a1,68(sp)
 424:	04c12423          	sw	a2,72(sp)
 428:	04d12623          	sw	a3,76(sp)
 42c:	04e12823          	sw	a4,80(sp)
 430:	05012c23          	sw	a6,88(sp)
 434:	05112e23          	sw	a7,92(sp)
 438:	00f12623          	sw	a5,12(sp)
 43c:	00000c13          	li	s8,0
 440:	00001437          	lui	s0,0x1
 444:	00a00993          	li	s3,10
 448:	02500913          	li	s2,37
 44c:	07800a13          	li	s4,120
 450:	06400a93          	li	s5,100
 454:	06300b13          	li	s6,99
 458:	018487b3          	add	a5,s1,s8
 45c:	0007c583          	lbu	a1,0(a5)
 460:	c5a41503          	lh	a0,-934(s0) # c5a <screenPos>
 464:	02059a63          	bnez	a1,498 <printf+0xb0>
 468:	03c12083          	lw	ra,60(sp)
 46c:	03812403          	lw	s0,56(sp)
 470:	03412483          	lw	s1,52(sp)
 474:	03012903          	lw	s2,48(sp)
 478:	02c12983          	lw	s3,44(sp)
 47c:	02812a03          	lw	s4,40(sp)
 480:	02412a83          	lw	s5,36(sp)
 484:	02012b03          	lw	s6,32(sp)
 488:	01c12b83          	lw	s7,28(sp)
 48c:	01812c03          	lw	s8,24(sp)
 490:	06010113          	addi	sp,sp,96
 494:	00008067          	ret
 498:	001c0b93          	addi	s7,s8,1
 49c:	01359e63          	bne	a1,s3,4b8 <printf+0xd0>
 4a0:	fc057793          	andi	a5,a0,-64
 4a4:	04078793          	addi	a5,a5,64
 4a8:	01079793          	slli	a5,a5,0x10
 4ac:	4107d793          	srai	a5,a5,0x10
 4b0:	000c0b93          	mv	s7,s8
 4b4:	0380006f          	j	4ec <printf+0x104>
 4b8:	0d259263          	bne	a1,s2,57c <printf+0x194>
 4bc:	0017c783          	lbu	a5,1(a5)
 4c0:	03479c63          	bne	a5,s4,4f8 <printf+0x110>
 4c4:	00c12783          	lw	a5,12(sp)
 4c8:	00f00613          	li	a2,15
 4cc:	0007a583          	lw	a1,0(a5)
 4d0:	00478713          	addi	a4,a5,4
 4d4:	00e12623          	sw	a4,12(sp)
 4d8:	d7dff0ef          	jal	254 <printHex>
 4dc:	c5a45783          	lhu	a5,-934(s0)
 4e0:	00f507b3          	add	a5,a0,a5
 4e4:	01079793          	slli	a5,a5,0x10
 4e8:	4107d793          	srai	a5,a5,0x10
 4ec:	c4f41d23          	sh	a5,-934(s0)
 4f0:	001b8c13          	addi	s8,s7,1
 4f4:	f65ff06f          	j	458 <printf+0x70>
 4f8:	03579063          	bne	a5,s5,518 <printf+0x130>
 4fc:	00c12783          	lw	a5,12(sp)
 500:	00f00613          	li	a2,15
 504:	0007a583          	lw	a1,0(a5)
 508:	00478713          	addi	a4,a5,4
 50c:	00e12623          	sw	a4,12(sp)
 510:	de5ff0ef          	jal	2f4 <printDec>
 514:	fc9ff06f          	j	4dc <printf+0xf4>
 518:	03679463          	bne	a5,s6,540 <printf+0x158>
 51c:	00c12783          	lw	a5,12(sp)
 520:	00f00613          	li	a2,15
 524:	0007c583          	lbu	a1,0(a5)
 528:	00478713          	addi	a4,a5,4
 52c:	00e12623          	sw	a4,12(sp)
 530:	c35ff0ef          	jal	164 <putch>
 534:	c5a45783          	lhu	a5,-934(s0)
 538:	00178793          	addi	a5,a5,1
 53c:	fa9ff06f          	j	4e4 <printf+0xfc>
 540:	07300713          	li	a4,115
 544:	02e79063          	bne	a5,a4,564 <printf+0x17c>
 548:	00c12783          	lw	a5,12(sp)
 54c:	00f00613          	li	a2,15
 550:	0007a583          	lw	a1,0(a5)
 554:	00478713          	addi	a4,a5,4
 558:	00e12623          	sw	a4,12(sp)
 55c:	c39ff0ef          	jal	194 <printString>
 560:	f7dff06f          	j	4dc <printf+0xf4>
 564:	00f00613          	li	a2,15
 568:	00090593          	mv	a1,s2
 56c:	bf9ff0ef          	jal	164 <putch>
 570:	c5a45783          	lhu	a5,-934(s0)
 574:	00178793          	addi	a5,a5,1
 578:	f31ff06f          	j	4a8 <printf+0xc0>
 57c:	00f00613          	li	a2,15
 580:	fedff06f          	j	56c <printf+0x184>

00000584 <printfSCR>:
 584:	f9010113          	addi	sp,sp,-112
 588:	06f12223          	sw	a5,100(sp)
 58c:	05c10793          	addi	a5,sp,92
 590:	04812423          	sw	s0,72(sp)
 594:	04912223          	sw	s1,68(sp)
 598:	05212023          	sw	s2,64(sp)
 59c:	03412c23          	sw	s4,56(sp)
 5a0:	03512a23          	sw	s5,52(sp)
 5a4:	03612823          	sw	s6,48(sp)
 5a8:	03712623          	sw	s7,44(sp)
 5ac:	03812423          	sw	s8,40(sp)
 5b0:	03912223          	sw	s9,36(sp)
 5b4:	03a12023          	sw	s10,32(sp)
 5b8:	01b12e23          	sw	s11,28(sp)
 5bc:	04112623          	sw	ra,76(sp)
 5c0:	03312e23          	sw	s3,60(sp)
 5c4:	00050a93          	mv	s5,a0
 5c8:	00058493          	mv	s1,a1
 5cc:	00060a13          	mv	s4,a2
 5d0:	04d12e23          	sw	a3,92(sp)
 5d4:	06e12023          	sw	a4,96(sp)
 5d8:	07012423          	sw	a6,104(sp)
 5dc:	07112623          	sw	a7,108(sp)
 5e0:	00f12623          	sw	a5,12(sp)
 5e4:	00000913          	li	s2,0
 5e8:	00000413          	li	s0,0
 5ec:	00a00b93          	li	s7,10
 5f0:	02500b13          	li	s6,37
 5f4:	07800c13          	li	s8,120
 5f8:	06400c93          	li	s9,100
 5fc:	06300d13          	li	s10,99
 600:	07300d93          	li	s11,115
 604:	012a07b3          	add	a5,s4,s2
 608:	0007c583          	lbu	a1,0(a5)
 60c:	04059263          	bnez	a1,650 <printfSCR+0xcc>
 610:	04c12083          	lw	ra,76(sp)
 614:	00040513          	mv	a0,s0
 618:	04812403          	lw	s0,72(sp)
 61c:	04412483          	lw	s1,68(sp)
 620:	04012903          	lw	s2,64(sp)
 624:	03c12983          	lw	s3,60(sp)
 628:	03812a03          	lw	s4,56(sp)
 62c:	03412a83          	lw	s5,52(sp)
 630:	03012b03          	lw	s6,48(sp)
 634:	02c12b83          	lw	s7,44(sp)
 638:	02812c03          	lw	s8,40(sp)
 63c:	02412c83          	lw	s9,36(sp)
 640:	02012d03          	lw	s10,32(sp)
 644:	01c12d83          	lw	s11,28(sp)
 648:	07010113          	addi	sp,sp,112
 64c:	00008067          	ret
 650:	00190993          	addi	s3,s2,1
 654:	01759a63          	bne	a1,s7,668 <printfSCR+0xe4>
 658:	fc047413          	andi	s0,s0,-64
 65c:	04040413          	addi	s0,s0,64
 660:	00090993          	mv	s3,s2
 664:	0740006f          	j	6d8 <printfSCR+0x154>
 668:	01540533          	add	a0,s0,s5
 66c:	0b659463          	bne	a1,s6,714 <printfSCR+0x190>
 670:	0017c783          	lbu	a5,1(a5)
 674:	03879263          	bne	a5,s8,698 <printfSCR+0x114>
 678:	00c12783          	lw	a5,12(sp)
 67c:	00048613          	mv	a2,s1
 680:	0007a583          	lw	a1,0(a5)
 684:	00478713          	addi	a4,a5,4
 688:	00e12623          	sw	a4,12(sp)
 68c:	bc9ff0ef          	jal	254 <printHex>
 690:	00a40433          	add	s0,s0,a0
 694:	0440006f          	j	6d8 <printfSCR+0x154>
 698:	03979063          	bne	a5,s9,6b8 <printfSCR+0x134>
 69c:	00c12783          	lw	a5,12(sp)
 6a0:	00048613          	mv	a2,s1
 6a4:	0007a583          	lw	a1,0(a5)
 6a8:	00478713          	addi	a4,a5,4
 6ac:	00e12623          	sw	a4,12(sp)
 6b0:	c45ff0ef          	jal	2f4 <printDec>
 6b4:	fddff06f          	j	690 <printfSCR+0x10c>
 6b8:	03a79463          	bne	a5,s10,6e0 <printfSCR+0x15c>
 6bc:	00c12783          	lw	a5,12(sp)
 6c0:	00048613          	mv	a2,s1
 6c4:	00140413          	addi	s0,s0,1
 6c8:	0007c583          	lbu	a1,0(a5)
 6cc:	00478713          	addi	a4,a5,4
 6d0:	00e12623          	sw	a4,12(sp)
 6d4:	a91ff0ef          	jal	164 <putch>
 6d8:	00198913          	addi	s2,s3,1
 6dc:	f29ff06f          	j	604 <printfSCR+0x80>
 6e0:	03b79063          	bne	a5,s11,700 <printfSCR+0x17c>
 6e4:	00c12783          	lw	a5,12(sp)
 6e8:	00048613          	mv	a2,s1
 6ec:	0007a583          	lw	a1,0(a5)
 6f0:	00478713          	addi	a4,a5,4
 6f4:	00e12623          	sw	a4,12(sp)
 6f8:	a9dff0ef          	jal	194 <printString>
 6fc:	f95ff06f          	j	690 <printfSCR+0x10c>
 700:	00048613          	mv	a2,s1
 704:	000b0593          	mv	a1,s6
 708:	a5dff0ef          	jal	164 <putch>
 70c:	00140413          	addi	s0,s0,1
 710:	f51ff06f          	j	660 <printfSCR+0xdc>
 714:	00048613          	mv	a2,s1
 718:	ff1ff06f          	j	708 <printfSCR+0x184>

0000071c <clearScreen>:
 71c:	ff010113          	addi	sp,sp,-16
 720:	00812423          	sw	s0,8(sp)
 724:	00912223          	sw	s1,4(sp)
 728:	00112623          	sw	ra,12(sp)
 72c:	00000413          	li	s0,0
 730:	4c000493          	li	s1,1216
 734:	00040513          	mv	a0,s0
 738:	00f00613          	li	a2,15
 73c:	02000593          	li	a1,32
 740:	00140413          	addi	s0,s0,1
 744:	a21ff0ef          	jal	164 <putch>
 748:	fe9416e3          	bne	s0,s1,734 <clearScreen+0x18>
 74c:	00c12083          	lw	ra,12(sp)
 750:	00812403          	lw	s0,8(sp)
 754:	000017b7          	lui	a5,0x1
 758:	c4079d23          	sh	zero,-934(a5) # c5a <screenPos>
 75c:	00412483          	lw	s1,4(sp)
 760:	01010113          	addi	sp,sp,16
 764:	00008067          	ret

00000768 <resetScreenVector>:
 768:	000017b7          	lui	a5,0x1
 76c:	c4079d23          	sh	zero,-934(a5) # c5a <screenPos>
 770:	00008067          	ret
 774:	2710                	.insn	2, 0x2710
 776:	0000                	.insn	2, 0x
 778:	03e8                	.insn	2, 0x03e8
 77a:	0000                	.insn	2, 0x
 77c:	0064                	.insn	2, 0x0064
 77e:	0000                	.insn	2, 0x
 780:	000a                	.insn	2, 0x000a
 782:	0000                	.insn	2, 0x
 784:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00000788 <main>:
 788:	435357b7          	lui	a5,0x43535
 78c:	f2010113          	addi	sp,sp,-224
 790:	95278793          	addi	a5,a5,-1710 # 43534952 <_stack_end+0x43533952>
 794:	00f12c23          	sw	a5,24(sp)
 798:	534637b7          	lui	a5,0x53463
 79c:	e5978793          	addi	a5,a5,-423 # 53462e59 <_stack_end+0x53461e59>
 7a0:	01c00613          	li	a2,28
 7a4:	00000593          	li	a1,0
 7a8:	00f12e23          	sw	a5,28(sp)
 7ac:	03410513          	addi	a0,sp,52
 7b0:	0ff00793          	li	a5,255
 7b4:	0c112e23          	sw	ra,220(sp)
 7b8:	02f12823          	sw	a5,48(sp)
 7bc:	0c812c23          	sw	s0,216(sp)
 7c0:	0c912a23          	sw	s1,212(sp)
 7c4:	0d212823          	sw	s2,208(sp)
 7c8:	0d312623          	sw	s3,204(sp)
 7cc:	0d412423          	sw	s4,200(sp)
 7d0:	0d512223          	sw	s5,196(sp)
 7d4:	0d612023          	sw	s6,192(sp)
 7d8:	0b712e23          	sw	s7,188(sp)
 7dc:	0b812c23          	sw	s8,184(sp)
 7e0:	0b912a23          	sw	s9,180(sp)
 7e4:	0ba12823          	sw	s10,176(sp)
 7e8:	0bb12623          	sw	s11,172(sp)
 7ec:	02010023          	sb	zero,32(sp)
 7f0:	919ff0ef          	jal	108 <memset>
 7f4:	f29ff0ef          	jal	71c <clearScreen>
 7f8:	00000513          	li	a0,0
 7fc:	02012223          	sw	zero,36(sp)
 800:	02012423          	sw	zero,40(sp)
 804:	02010623          	sb	zero,44(sp)
 808:	859ff0ef          	jal	60 <readFlash>
 80c:	02a12223          	sw	a0,36(sp)
 810:	00400513          	li	a0,4
 814:	84dff0ef          	jal	60 <readFlash>
 818:	02a12423          	sw	a0,40(sp)
 81c:	01810613          	addi	a2,sp,24
 820:	00000513          	li	a0,0
 824:	02410593          	addi	a1,sp,36
 828:	00800693          	li	a3,8
 82c:	00a60733          	add	a4,a2,a0
 830:	00a587b3          	add	a5,a1,a0
 834:	00074703          	lbu	a4,0(a4)
 838:	0007c783          	lbu	a5,0(a5)
 83c:	32f71863          	bne	a4,a5,b6c <main+0x3e4>
 840:	00150513          	addi	a0,a0,1
 844:	fed514e3          	bne	a0,a3,82c <main+0xa4>
 848:	819ff0ef          	jal	60 <readFlash>
 84c:	0ff57a13          	zext.b	s4,a0
 850:	00001537          	lui	a0,0x1
 854:	000a0593          	mv	a1,s4
 858:	bc850513          	addi	a0,a0,-1080 # bc8 <main+0x440>
 85c:	b8dff0ef          	jal	3e8 <printf>
 860:	00001537          	lui	a0,0x1
 864:	be050513          	addi	a0,a0,-1056 # be0 <main+0x458>
 868:	b81ff0ef          	jal	3e8 <printf>
 86c:	00000d13          	li	s10,0
 870:	00000413          	li	s0,0
 874:	00001db7          	lui	s11,0x1
 878:	05010a93          	addi	s5,sp,80
 87c:	00000b93          	li	s7,0
 880:	14400493          	li	s1,324
 884:	00000b13          	li	s6,0
 888:	00900913          	li	s2,9
 88c:	074b4c63          	blt	s6,s4,904 <main+0x17c>
 890:	100007b7          	lui	a5,0x10000
 894:	0007a683          	lw	a3,0(a5) # 10000000 <_stack_end+0xffff000>
 898:	00001637          	lui	a2,0x1
 89c:	c0860613          	addi	a2,a2,-1016 # c08 <_stack_bottom+0x8>
 8a0:	0186d493          	srli	s1,a3,0x18
 8a4:	00048693          	mv	a3,s1
 8a8:	00f00593          	li	a1,15
 8ac:	48000513          	li	a0,1152
 8b0:	cd5ff0ef          	jal	584 <printfSCR>
 8b4:	881ff0ef          	jal	134 <getButtonDown>
 8b8:	05100793          	li	a5,81
 8bc:	00051e63          	bnez	a0,8d8 <main+0x150>
 8c0:	881ff0ef          	jal	140 <getButtonUp>
 8c4:	05200793          	li	a5,82
 8c8:	00051863          	bnez	a0,8d8 <main+0x150>
 8cc:	88dff0ef          	jal	158 <getButtonRight>
 8d0:	1c050663          	beqz	a0,a9c <main+0x314>
 8d4:	02800793          	li	a5,40
 8d8:	0097e7b3          	or	a5,a5,s1
 8dc:	0ff7f793          	zext.b	a5,a5
 8e0:	00fd0e63          	beq	s10,a5,8fc <main+0x174>
 8e4:	05100713          	li	a4,81
 8e8:	1ce79263          	bne	a5,a4,aac <main+0x324>
 8ec:	00140413          	addi	s0,s0,1
 8f0:	01442733          	slt	a4,s0,s4
 8f4:	40e00733          	neg	a4,a4
 8f8:	00e47433          	and	s0,s0,a4
 8fc:	00078d13          	mv	s10,a5
 900:	f79ff06f          	j	878 <main+0xf0>
 904:	00548993          	addi	s3,s1,5
 908:	01099993          	slli	s3,s3,0x10
 90c:	4109d993          	srai	s3,s3,0x10
 910:	00f00793          	li	a5,15
 914:	01641463          	bne	s0,s6,91c <main+0x194>
 918:	05000793          	li	a5,80
 91c:	0ff7fc13          	zext.b	s8,a5
 920:	00090513          	mv	a0,s2
 924:	f3cff0ef          	jal	60 <readFlash>
 928:	00198993          	addi	s3,s3,1
 92c:	01099993          	slli	s3,s3,0x10
 930:	0ff57593          	zext.b	a1,a0
 934:	00190c93          	addi	s9,s2,1
 938:	4109d993          	srai	s3,s3,0x10
 93c:	00058c63          	beqz	a1,954 <main+0x1cc>
 940:	000c0613          	mv	a2,s8
 944:	00098513          	mv	a0,s3
 948:	81dff0ef          	jal	164 <putch>
 94c:	000c8913          	mv	s2,s9
 950:	fd1ff06f          	j	920 <main+0x198>
 954:	000c8513          	mv	a0,s9
 958:	f08ff0ef          	jal	60 <readFlash>
 95c:	00a12223          	sw	a0,4(sp)
 960:	00aaa023          	sw	a0,0(s5)
 964:	00590513          	addi	a0,s2,5
 968:	ef8ff0ef          	jal	60 <readFlash>
 96c:	00990c13          	addi	s8,s2,9
 970:	00050713          	mv	a4,a0
 974:	00aaa223          	sw	a0,4(s5)
 978:	10990913          	addi	s2,s2,265
 97c:	000b8c93          	mv	s9,s7
 980:	00000793          	li	a5,0
 984:	00fc0533          	add	a0,s8,a5
 988:	00e12623          	sw	a4,12(sp)
 98c:	00f12423          	sw	a5,8(sp)
 990:	ed0ff0ef          	jal	60 <readFlash>
 994:	00812783          	lw	a5,8(sp)
 998:	03010713          	addi	a4,sp,48
 99c:	02000693          	li	a3,32
 9a0:	00f70633          	add	a2,a4,a5
 9a4:	00a60023          	sb	a0,0(a2)
 9a8:	00178793          	addi	a5,a5,1
 9ac:	00c12703          	lw	a4,12(sp)
 9b0:	fcd79ae3          	bne	a5,a3,984 <main+0x1fc>
 9b4:	000c8513          	mv	a0,s9
 9b8:	03010593          	addi	a1,sp,48
 9bc:	00e12423          	sw	a4,8(sp)
 9c0:	00dc0c33          	add	s8,s8,a3
 9c4:	ef0ff0ef          	jal	b4 <WriteSprite>
 9c8:	00812703          	lw	a4,8(sp)
 9cc:	001c8c93          	addi	s9,s9,1
 9d0:	fb2c18e3          	bne	s8,s2,980 <main+0x1f8>
 9d4:	00412683          	lw	a3,4(sp)
 9d8:	bf4d8613          	addi	a2,s11,-1036 # bf4 <main+0x46c>
 9dc:	00f00593          	li	a1,15
 9e0:	00098513          	mv	a0,s3
 9e4:	ba1ff0ef          	jal	584 <printfSCR>
 9e8:	0ffbf993          	zext.b	s3,s7
 9ec:	00000613          	li	a2,0
 9f0:	0809c593          	xori	a1,s3,128
 9f4:	00048513          	mv	a0,s1
 9f8:	f6cff0ef          	jal	164 <putch>
 9fc:	f8198593          	addi	a1,s3,-127
 a00:	00000613          	li	a2,0
 a04:	0ff5f593          	zext.b	a1,a1
 a08:	00148513          	addi	a0,s1,1
 a0c:	f58ff0ef          	jal	164 <putch>
 a10:	f8298593          	addi	a1,s3,-126
 a14:	00000613          	li	a2,0
 a18:	0ff5f593          	zext.b	a1,a1
 a1c:	00248513          	addi	a0,s1,2
 a20:	f44ff0ef          	jal	164 <putch>
 a24:	f8398593          	addi	a1,s3,-125
 a28:	00000613          	li	a2,0
 a2c:	0ff5f593          	zext.b	a1,a1
 a30:	00348513          	addi	a0,s1,3
 a34:	f30ff0ef          	jal	164 <putch>
 a38:	f8498593          	addi	a1,s3,-124
 a3c:	00000613          	li	a2,0
 a40:	0ff5f593          	zext.b	a1,a1
 a44:	04048513          	addi	a0,s1,64
 a48:	f1cff0ef          	jal	164 <putch>
 a4c:	f8598593          	addi	a1,s3,-123
 a50:	00000613          	li	a2,0
 a54:	0ff5f593          	zext.b	a1,a1
 a58:	04148513          	addi	a0,s1,65
 a5c:	f08ff0ef          	jal	164 <putch>
 a60:	f8698593          	addi	a1,s3,-122
 a64:	00000613          	li	a2,0
 a68:	0ff5f593          	zext.b	a1,a1
 a6c:	04248513          	addi	a0,s1,66
 a70:	ef4ff0ef          	jal	164 <putch>
 a74:	f8798593          	addi	a1,s3,-121
 a78:	04348513          	addi	a0,s1,67
 a7c:	00000613          	li	a2,0
 a80:	0ff5f593          	zext.b	a1,a1
 a84:	ee0ff0ef          	jal	164 <putch>
 a88:	001b0b13          	addi	s6,s6,1
 a8c:	0c048493          	addi	s1,s1,192
 a90:	008b8b93          	addi	s7,s7,8
 a94:	008a8a93          	addi	s5,s5,8
 a98:	df5ff06f          	j	88c <main+0x104>
 a9c:	eb0ff0ef          	jal	14c <getButtonLeft>
 aa0:	00050793          	mv	a5,a0
 aa4:	e20518e3          	bnez	a0,8d4 <main+0x14c>
 aa8:	e31ff06f          	j	8d8 <main+0x150>
 aac:	05200713          	li	a4,82
 ab0:	00e79a63          	bne	a5,a4,ac4 <main+0x33c>
 ab4:	fff40413          	addi	s0,s0,-1
 ab8:	e40452e3          	bgez	s0,8fc <main+0x174>
 abc:	fffa0413          	addi	s0,s4,-1
 ac0:	e3dff06f          	j	8fc <main+0x174>
 ac4:	02800713          	li	a4,40
 ac8:	e2e79ae3          	bne	a5,a4,8fc <main+0x174>
 acc:	00341413          	slli	s0,s0,0x3
 ad0:	05010793          	addi	a5,sp,80
 ad4:	008787b3          	add	a5,a5,s0
 ad8:	0007a983          	lw	s3,0(a5)
 adc:	01010713          	addi	a4,sp,16
 ae0:	09040793          	addi	a5,s0,144
 ae4:	00e78433          	add	s0,a5,a4
 ae8:	fb442403          	lw	s0,-76(s0)
 aec:	00001537          	lui	a0,0x1
 af0:	c0c50513          	addi	a0,a0,-1012 # c0c <_stack_bottom+0xc>
 af4:	41340433          	sub	s0,s0,s3
 af8:	00245413          	srli	s0,s0,0x2
 afc:	00040593          	mv	a1,s0
 b00:	8e9ff0ef          	jal	3e8 <printf>
 b04:	00000493          	li	s1,0
 b08:	00400a37          	lui	s4,0x400
 b0c:	00001ab7          	lui	s5,0x1
 b10:	0284c463          	blt	s1,s0,b38 <main+0x3b0>
 b14:	c09ff0ef          	jal	71c <clearScreen>
 b18:	004007b7          	lui	a5,0x400
 b1c:	000780e7          	jalr	a5 # 400000 <_stack_end+0x3ff000>
 b20:	00001637          	lui	a2,0x1
 b24:	c2c60613          	addi	a2,a2,-980 # c2c <_stack_bottom+0x2c>
 b28:	00f00593          	li	a1,15
 b2c:	00000513          	li	a0,0
 b30:	a55ff0ef          	jal	584 <printfSCR>
 b34:	0000006f          	j	b34 <main+0x3ac>
 b38:	00249913          	slli	s2,s1,0x2
 b3c:	01298533          	add	a0,s3,s2
 b40:	d20ff0ef          	jal	60 <readFlash>
 b44:	012a0933          	add	s2,s4,s2
 b48:	00a92023          	sw	a0,0(s2)
 b4c:	00048693          	mv	a3,s1
 b50:	00040713          	mv	a4,s0
 b54:	c24a8613          	addi	a2,s5,-988 # c24 <_stack_bottom+0x24>
 b58:	00f00593          	li	a1,15
 b5c:	48000513          	li	a0,1152
 b60:	a25ff0ef          	jal	584 <printfSCR>
 b64:	00148493          	addi	s1,s1,1
 b68:	fa9ff06f          	j	b10 <main+0x388>
 b6c:	00001537          	lui	a0,0x1
 b70:	bb850513          	addi	a0,a0,-1096 # bb8 <main+0x430>
 b74:	875ff0ef          	jal	3e8 <printf>
 b78:	0dc12083          	lw	ra,220(sp)
 b7c:	0d812403          	lw	s0,216(sp)
 b80:	0d412483          	lw	s1,212(sp)
 b84:	0d012903          	lw	s2,208(sp)
 b88:	0cc12983          	lw	s3,204(sp)
 b8c:	0c812a03          	lw	s4,200(sp)
 b90:	0c412a83          	lw	s5,196(sp)
 b94:	0c012b03          	lw	s6,192(sp)
 b98:	0bc12b83          	lw	s7,188(sp)
 b9c:	0b812c03          	lw	s8,184(sp)
 ba0:	0b412c83          	lw	s9,180(sp)
 ba4:	0b012d03          	lw	s10,176(sp)
 ba8:	0ac12d83          	lw	s11,172(sp)
 bac:	00000513          	li	a0,0
 bb0:	0e010113          	addi	sp,sp,224
 bb4:	00008067          	ret
