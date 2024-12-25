
builds/build5/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	e0010113          	addi	sp,sp,-512 # e00 <_stack_top>
   8:	790000ef          	jal	798 <_etext>
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
  7c:	0c700713          	li	a4,199
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

000000b0 <getUSBint>:
  b0:	100007b7          	lui	a5,0x10000
  b4:	0007a503          	lw	a0,0(a5) # 10000000 <_stack_end+0xffff000>
  b8:	00008067          	ret

000000bc <WriteSprite>:
  bc:	00651513          	slli	a0,a0,0x6
  c0:	880017b7          	lui	a5,0x88001
  c4:	00a787b3          	add	a5,a5,a0
  c8:	00000713          	li	a4,0
  cc:	02000693          	li	a3,32
  d0:	00e58633          	add	a2,a1,a4
  d4:	00064603          	lbu	a2,0(a2)
  d8:	00170713          	addi	a4,a4,1
  dc:	00278793          	addi	a5,a5,2 # 88001002 <_stack_end+0x88000002>
  e0:	fec79f23          	sh	a2,-2(a5)
  e4:	fed716e3          	bne	a4,a3,d0 <WriteSprite+0x14>
  e8:	00008067          	ret

000000ec <memcpy>:
  ec:	00000793          	li	a5,0
  f0:	00c7c463          	blt	a5,a2,f8 <memcpy+0xc>
  f4:	00008067          	ret
  f8:	00f58733          	add	a4,a1,a5
  fc:	00074683          	lbu	a3,0(a4)
 100:	00f50733          	add	a4,a0,a5
 104:	00178793          	addi	a5,a5,1
 108:	00d70023          	sb	a3,0(a4)
 10c:	fe5ff06f          	j	f0 <memcpy+0x4>

00000110 <memset>:
 110:	00c50633          	add	a2,a0,a2
 114:	00050793          	mv	a5,a0
 118:	00c79463          	bne	a5,a2,120 <memset+0x10>
 11c:	00008067          	ret
 120:	00178793          	addi	a5,a5,1
 124:	feb78fa3          	sb	a1,-1(a5)
 128:	ff1ff06f          	j	118 <memset+0x8>

0000012c <getButton>:
 12c:	890007b7          	lui	a5,0x89000
 130:	00a787b3          	add	a5,a5,a0
 134:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
 138:	00008067          	ret

0000013c <getButtonDown>:
 13c:	890007b7          	lui	a5,0x89000
 140:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
 144:	00008067          	ret

00000148 <getButtonUp>:
 148:	890007b7          	lui	a5,0x89000
 14c:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88fff001>
 150:	00008067          	ret

00000154 <getButtonLeft>:
 154:	890007b7          	lui	a5,0x89000
 158:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88fff002>
 15c:	00008067          	ret

00000160 <getButtonRight>:
 160:	890007b7          	lui	a5,0x89000
 164:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88fff003>
 168:	00008067          	ret

0000016c <putch>:
 16c:	4c000793          	li	a5,1216
 170:	02a7e263          	bltu	a5,a0,194 <putch+0x28>
 174:	00861613          	slli	a2,a2,0x8
 178:	00151513          	slli	a0,a0,0x1
 17c:	880007b7          	lui	a5,0x88000
 180:	00a787b3          	add	a5,a5,a0
 184:	00b665b3          	or	a1,a2,a1
 188:	00b79023          	sh	a1,0(a5) # 88000000 <_stack_end+0x87fff000>
 18c:	00100513          	li	a0,1
 190:	00008067          	ret
 194:	00000513          	li	a0,0
 198:	00008067          	ret

0000019c <printString>:
 19c:	fe010113          	addi	sp,sp,-32
 1a0:	01212823          	sw	s2,16(sp)
 1a4:	01312623          	sw	s3,12(sp)
 1a8:	00112e23          	sw	ra,28(sp)
 1ac:	00812c23          	sw	s0,24(sp)
 1b0:	00912a23          	sw	s1,20(sp)
 1b4:	01412423          	sw	s4,8(sp)
 1b8:	01512223          	sw	s5,4(sp)
 1bc:	01612023          	sw	s6,0(sp)
 1c0:	00050993          	mv	s3,a0
 1c4:	00058913          	mv	s2,a1
 1c8:	06060c63          	beqz	a2,240 <_stack_size+0x40>
 1cc:	00060413          	mv	s0,a2
 1d0:	00000a13          	li	s4,0
 1d4:	00000493          	li	s1,0
 1d8:	00100a93          	li	s5,1
 1dc:	00f00b13          	li	s6,15
 1e0:	0280006f          	j	208 <_stack_size+0x8>
 1e4:	00040613          	mv	a2,s0
 1e8:	00998533          	add	a0,s3,s1
 1ec:	f81ff0ef          	jal	16c <putch>
 1f0:	06050263          	beqz	a0,254 <_stack_size+0x54>
 1f4:	00148493          	addi	s1,s1,1
 1f8:	015a1863          	bne	s4,s5,208 <_stack_size+0x8>
 1fc:	00140413          	addi	s0,s0,1
 200:	0ff47413          	zext.b	s0,s0
 204:	048b6463          	bltu	s6,s0,24c <_stack_size+0x4c>
 208:	009907b3          	add	a5,s2,s1
 20c:	0007c583          	lbu	a1,0(a5)
 210:	00048513          	mv	a0,s1
 214:	fc0598e3          	bnez	a1,1e4 <printString+0x48>
 218:	01c12083          	lw	ra,28(sp)
 21c:	01812403          	lw	s0,24(sp)
 220:	01412483          	lw	s1,20(sp)
 224:	01012903          	lw	s2,16(sp)
 228:	00c12983          	lw	s3,12(sp)
 22c:	00812a03          	lw	s4,8(sp)
 230:	00412a83          	lw	s5,4(sp)
 234:	00012b03          	lw	s6,0(sp)
 238:	02010113          	addi	sp,sp,32
 23c:	00008067          	ret
 240:	00100a13          	li	s4,1
 244:	00100413          	li	s0,1
 248:	f8dff06f          	j	1d4 <printString+0x38>
 24c:	00100413          	li	s0,1
 250:	fb9ff06f          	j	208 <_stack_size+0x8>
 254:	00000513          	li	a0,0
 258:	fc1ff06f          	j	218 <_stack_size+0x18>

0000025c <printHex>:
 25c:	fd010113          	addi	sp,sp,-48
 260:	02812423          	sw	s0,40(sp)
 264:	00058413          	mv	s0,a1
 268:	000015b7          	lui	a1,0x1
 26c:	02912223          	sw	s1,36(sp)
 270:	03212023          	sw	s2,32(sp)
 274:	00050493          	mv	s1,a0
 278:	00060913          	mv	s2,a2
 27c:	c2858593          	addi	a1,a1,-984 # c28 <_stack_bottom+0x28>
 280:	01100613          	li	a2,17
 284:	00c10513          	addi	a0,sp,12
 288:	02112623          	sw	ra,44(sp)
 28c:	e61ff0ef          	jal	ec <memcpy>
 290:	202027b7          	lui	a5,0x20202
 294:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 298:	00f12023          	sw	a5,0(sp)
 29c:	00f12223          	sw	a5,4(sp)
 2a0:	00010423          	sb	zero,8(sp)
 2a4:	00700793          	li	a5,7
 2a8:	fff00693          	li	a3,-1
 2ac:	00f47713          	andi	a4,s0,15
 2b0:	02070713          	addi	a4,a4,32
 2b4:	00270733          	add	a4,a4,sp
 2b8:	fec74703          	lbu	a4,-20(a4)
 2bc:	00f10633          	add	a2,sp,a5
 2c0:	fff78793          	addi	a5,a5,-1
 2c4:	00e60023          	sb	a4,0(a2)
 2c8:	40445413          	srai	s0,s0,0x4
 2cc:	fed790e3          	bne	a5,a3,2ac <printHex+0x50>
 2d0:	00090613          	mv	a2,s2
 2d4:	00010593          	mv	a1,sp
 2d8:	00048513          	mv	a0,s1
 2dc:	ec1ff0ef          	jal	19c <printString>
 2e0:	02c12083          	lw	ra,44(sp)
 2e4:	02812403          	lw	s0,40(sp)
 2e8:	02412483          	lw	s1,36(sp)
 2ec:	02012903          	lw	s2,32(sp)
 2f0:	0ff57513          	zext.b	a0,a0
 2f4:	03010113          	addi	sp,sp,48
 2f8:	00008067          	ret

000002fc <printDec>:
 2fc:	fd010113          	addi	sp,sp,-48
 300:	02812423          	sw	s0,40(sp)
 304:	00058413          	mv	s0,a1
 308:	02912223          	sw	s1,36(sp)
 30c:	03212023          	sw	s2,32(sp)
 310:	00050493          	mv	s1,a0
 314:	00060913          	mv	s2,a2
 318:	78400593          	li	a1,1924
 31c:	01400613          	li	a2,20
 320:	00c10513          	addi	a0,sp,12
 324:	02112623          	sw	ra,44(sp)
 328:	dc5ff0ef          	jal	ec <memcpy>
 32c:	000187b7          	lui	a5,0x18
 330:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 334:	0287fa63          	bgeu	a5,s0,368 <printDec+0x6c>
 338:	000015b7          	lui	a1,0x1
 33c:	00090613          	mv	a2,s2
 340:	c3c58593          	addi	a1,a1,-964 # c3c <_stack_bottom+0x3c>
 344:	00048513          	mv	a0,s1
 348:	e55ff0ef          	jal	19c <printString>
 34c:	02c12083          	lw	ra,44(sp)
 350:	02812403          	lw	s0,40(sp)
 354:	02412483          	lw	s1,36(sp)
 358:	02012903          	lw	s2,32(sp)
 35c:	0ff57513          	zext.b	a0,a0
 360:	03010113          	addi	sp,sp,48
 364:	00008067          	ret
 368:	00c10713          	addi	a4,sp,12
 36c:	00100613          	li	a2,1
 370:	00000793          	li	a5,0
 374:	00100513          	li	a0,1
 378:	00072583          	lw	a1,0(a4)
 37c:	00000693          	li	a3,0
 380:	06b47263          	bgeu	s0,a1,3e4 <printDec+0xe8>
 384:	00069663          	bnez	a3,390 <printDec+0x94>
 388:	00a58463          	beq	a1,a0,390 <printDec+0x94>
 38c:	00061e63          	bnez	a2,3a8 <printDec+0xac>
 390:	02078613          	addi	a2,a5,32
 394:	00260633          	add	a2,a2,sp
 398:	03068693          	addi	a3,a3,48
 39c:	fed60223          	sb	a3,-28(a2)
 3a0:	00178793          	addi	a5,a5,1
 3a4:	00000613          	li	a2,0
 3a8:	00470713          	addi	a4,a4,4
 3ac:	02010693          	addi	a3,sp,32
 3b0:	fcd714e3          	bne	a4,a3,378 <printDec+0x7c>
 3b4:	00060c63          	beqz	a2,3cc <printDec+0xd0>
 3b8:	02078713          	addi	a4,a5,32
 3bc:	00270733          	add	a4,a4,sp
 3c0:	03000693          	li	a3,48
 3c4:	fed70223          	sb	a3,-28(a4)
 3c8:	00178793          	addi	a5,a5,1
 3cc:	02078793          	addi	a5,a5,32
 3d0:	002787b3          	add	a5,a5,sp
 3d4:	fe078223          	sb	zero,-28(a5)
 3d8:	00090613          	mv	a2,s2
 3dc:	00410593          	addi	a1,sp,4
 3e0:	f65ff06f          	j	344 <printDec+0x48>
 3e4:	40b40433          	sub	s0,s0,a1
 3e8:	00168693          	addi	a3,a3,1
 3ec:	f95ff06f          	j	380 <printDec+0x84>

000003f0 <printf>:
 3f0:	fa010113          	addi	sp,sp,-96
 3f4:	04f12a23          	sw	a5,84(sp)
 3f8:	04410793          	addi	a5,sp,68
 3fc:	02812c23          	sw	s0,56(sp)
 400:	02912a23          	sw	s1,52(sp)
 404:	03212823          	sw	s2,48(sp)
 408:	03312623          	sw	s3,44(sp)
 40c:	03412423          	sw	s4,40(sp)
 410:	03512223          	sw	s5,36(sp)
 414:	03612023          	sw	s6,32(sp)
 418:	01712e23          	sw	s7,28(sp)
 41c:	01912a23          	sw	s9,20(sp)
 420:	02112e23          	sw	ra,60(sp)
 424:	01812c23          	sw	s8,24(sp)
 428:	00050493          	mv	s1,a0
 42c:	04b12223          	sw	a1,68(sp)
 430:	04c12423          	sw	a2,72(sp)
 434:	04d12623          	sw	a3,76(sp)
 438:	04e12823          	sw	a4,80(sp)
 43c:	05012c23          	sw	a6,88(sp)
 440:	05112e23          	sw	a7,92(sp)
 444:	00f12623          	sw	a5,12(sp)
 448:	00000c93          	li	s9,0
 44c:	00001437          	lui	s0,0x1
 450:	00a00913          	li	s2,10
 454:	02500993          	li	s3,37
 458:	07800a13          	li	s4,120
 45c:	06400a93          	li	s5,100
 460:	06300b13          	li	s6,99
 464:	07300b93          	li	s7,115
 468:	019487b3          	add	a5,s1,s9
 46c:	0007c583          	lbu	a1,0(a5)
 470:	c4241503          	lh	a0,-958(s0) # c42 <screenPos>
 474:	02059c63          	bnez	a1,4ac <printf+0xbc>
 478:	03c12083          	lw	ra,60(sp)
 47c:	03812403          	lw	s0,56(sp)
 480:	03412483          	lw	s1,52(sp)
 484:	03012903          	lw	s2,48(sp)
 488:	02c12983          	lw	s3,44(sp)
 48c:	02812a03          	lw	s4,40(sp)
 490:	02412a83          	lw	s5,36(sp)
 494:	02012b03          	lw	s6,32(sp)
 498:	01c12b83          	lw	s7,28(sp)
 49c:	01812c03          	lw	s8,24(sp)
 4a0:	01412c83          	lw	s9,20(sp)
 4a4:	06010113          	addi	sp,sp,96
 4a8:	00008067          	ret
 4ac:	001c8c13          	addi	s8,s9,1
 4b0:	01259e63          	bne	a1,s2,4cc <printf+0xdc>
 4b4:	fc057793          	andi	a5,a0,-64
 4b8:	04078793          	addi	a5,a5,64
 4bc:	01079793          	slli	a5,a5,0x10
 4c0:	4107d793          	srai	a5,a5,0x10
 4c4:	000c8c13          	mv	s8,s9
 4c8:	0380006f          	j	500 <printf+0x110>
 4cc:	0d359063          	bne	a1,s3,58c <printf+0x19c>
 4d0:	0017c783          	lbu	a5,1(a5)
 4d4:	03479c63          	bne	a5,s4,50c <printf+0x11c>
 4d8:	00c12783          	lw	a5,12(sp)
 4dc:	00f00613          	li	a2,15
 4e0:	0007a583          	lw	a1,0(a5)
 4e4:	00478713          	addi	a4,a5,4
 4e8:	00e12623          	sw	a4,12(sp)
 4ec:	d71ff0ef          	jal	25c <printHex>
 4f0:	c4245783          	lhu	a5,-958(s0)
 4f4:	00f507b3          	add	a5,a0,a5
 4f8:	01079793          	slli	a5,a5,0x10
 4fc:	4107d793          	srai	a5,a5,0x10
 500:	c4f41123          	sh	a5,-958(s0)
 504:	001c0c93          	addi	s9,s8,1
 508:	f61ff06f          	j	468 <printf+0x78>
 50c:	03579063          	bne	a5,s5,52c <printf+0x13c>
 510:	00c12783          	lw	a5,12(sp)
 514:	00f00613          	li	a2,15
 518:	0007a583          	lw	a1,0(a5)
 51c:	00478713          	addi	a4,a5,4
 520:	00e12623          	sw	a4,12(sp)
 524:	dd9ff0ef          	jal	2fc <printDec>
 528:	fc9ff06f          	j	4f0 <printf+0x100>
 52c:	03679463          	bne	a5,s6,554 <printf+0x164>
 530:	00c12783          	lw	a5,12(sp)
 534:	00f00613          	li	a2,15
 538:	0007c583          	lbu	a1,0(a5)
 53c:	00478713          	addi	a4,a5,4
 540:	00e12623          	sw	a4,12(sp)
 544:	c29ff0ef          	jal	16c <putch>
 548:	c4245783          	lhu	a5,-958(s0)
 54c:	00178793          	addi	a5,a5,1
 550:	fa9ff06f          	j	4f8 <printf+0x108>
 554:	03779063          	bne	a5,s7,574 <printf+0x184>
 558:	00c12783          	lw	a5,12(sp)
 55c:	00f00613          	li	a2,15
 560:	0007a583          	lw	a1,0(a5)
 564:	00478713          	addi	a4,a5,4
 568:	00e12623          	sw	a4,12(sp)
 56c:	c31ff0ef          	jal	19c <printString>
 570:	f81ff06f          	j	4f0 <printf+0x100>
 574:	00f00613          	li	a2,15
 578:	02500593          	li	a1,37
 57c:	bf1ff0ef          	jal	16c <putch>
 580:	c4245783          	lhu	a5,-958(s0)
 584:	00178793          	addi	a5,a5,1
 588:	f35ff06f          	j	4bc <printf+0xcc>
 58c:	00f00613          	li	a2,15
 590:	fedff06f          	j	57c <printf+0x18c>

00000594 <printfSCR>:
 594:	f9010113          	addi	sp,sp,-112
 598:	06f12223          	sw	a5,100(sp)
 59c:	05c10793          	addi	a5,sp,92
 5a0:	04812423          	sw	s0,72(sp)
 5a4:	04912223          	sw	s1,68(sp)
 5a8:	05212023          	sw	s2,64(sp)
 5ac:	03412c23          	sw	s4,56(sp)
 5b0:	03512a23          	sw	s5,52(sp)
 5b4:	03612823          	sw	s6,48(sp)
 5b8:	03712623          	sw	s7,44(sp)
 5bc:	03812423          	sw	s8,40(sp)
 5c0:	03912223          	sw	s9,36(sp)
 5c4:	03a12023          	sw	s10,32(sp)
 5c8:	01b12e23          	sw	s11,28(sp)
 5cc:	04112623          	sw	ra,76(sp)
 5d0:	03312e23          	sw	s3,60(sp)
 5d4:	00050a93          	mv	s5,a0
 5d8:	00058493          	mv	s1,a1
 5dc:	00060a13          	mv	s4,a2
 5e0:	04d12e23          	sw	a3,92(sp)
 5e4:	06e12023          	sw	a4,96(sp)
 5e8:	07012423          	sw	a6,104(sp)
 5ec:	07112623          	sw	a7,108(sp)
 5f0:	00f12623          	sw	a5,12(sp)
 5f4:	00000913          	li	s2,0
 5f8:	00000413          	li	s0,0
 5fc:	00a00b13          	li	s6,10
 600:	02500b93          	li	s7,37
 604:	07800c13          	li	s8,120
 608:	06400c93          	li	s9,100
 60c:	06300d13          	li	s10,99
 610:	07300d93          	li	s11,115
 614:	012a07b3          	add	a5,s4,s2
 618:	0007c583          	lbu	a1,0(a5)
 61c:	04059263          	bnez	a1,660 <printfSCR+0xcc>
 620:	04c12083          	lw	ra,76(sp)
 624:	00040513          	mv	a0,s0
 628:	04812403          	lw	s0,72(sp)
 62c:	04412483          	lw	s1,68(sp)
 630:	04012903          	lw	s2,64(sp)
 634:	03c12983          	lw	s3,60(sp)
 638:	03812a03          	lw	s4,56(sp)
 63c:	03412a83          	lw	s5,52(sp)
 640:	03012b03          	lw	s6,48(sp)
 644:	02c12b83          	lw	s7,44(sp)
 648:	02812c03          	lw	s8,40(sp)
 64c:	02412c83          	lw	s9,36(sp)
 650:	02012d03          	lw	s10,32(sp)
 654:	01c12d83          	lw	s11,28(sp)
 658:	07010113          	addi	sp,sp,112
 65c:	00008067          	ret
 660:	00190993          	addi	s3,s2,1
 664:	01659a63          	bne	a1,s6,678 <printfSCR+0xe4>
 668:	fc047413          	andi	s0,s0,-64
 66c:	04040413          	addi	s0,s0,64
 670:	00090993          	mv	s3,s2
 674:	0740006f          	j	6e8 <printfSCR+0x154>
 678:	01540533          	add	a0,s0,s5
 67c:	0b759463          	bne	a1,s7,724 <printfSCR+0x190>
 680:	0017c783          	lbu	a5,1(a5)
 684:	03879263          	bne	a5,s8,6a8 <printfSCR+0x114>
 688:	00c12783          	lw	a5,12(sp)
 68c:	00048613          	mv	a2,s1
 690:	0007a583          	lw	a1,0(a5)
 694:	00478713          	addi	a4,a5,4
 698:	00e12623          	sw	a4,12(sp)
 69c:	bc1ff0ef          	jal	25c <printHex>
 6a0:	00a40433          	add	s0,s0,a0
 6a4:	0440006f          	j	6e8 <printfSCR+0x154>
 6a8:	03979063          	bne	a5,s9,6c8 <printfSCR+0x134>
 6ac:	00c12783          	lw	a5,12(sp)
 6b0:	00048613          	mv	a2,s1
 6b4:	0007a583          	lw	a1,0(a5)
 6b8:	00478713          	addi	a4,a5,4
 6bc:	00e12623          	sw	a4,12(sp)
 6c0:	c3dff0ef          	jal	2fc <printDec>
 6c4:	fddff06f          	j	6a0 <printfSCR+0x10c>
 6c8:	03a79463          	bne	a5,s10,6f0 <printfSCR+0x15c>
 6cc:	00c12783          	lw	a5,12(sp)
 6d0:	00048613          	mv	a2,s1
 6d4:	00140413          	addi	s0,s0,1
 6d8:	0007c583          	lbu	a1,0(a5)
 6dc:	00478713          	addi	a4,a5,4
 6e0:	00e12623          	sw	a4,12(sp)
 6e4:	a89ff0ef          	jal	16c <putch>
 6e8:	00198913          	addi	s2,s3,1
 6ec:	f29ff06f          	j	614 <printfSCR+0x80>
 6f0:	03b79063          	bne	a5,s11,710 <printfSCR+0x17c>
 6f4:	00c12783          	lw	a5,12(sp)
 6f8:	00048613          	mv	a2,s1
 6fc:	0007a583          	lw	a1,0(a5)
 700:	00478713          	addi	a4,a5,4
 704:	00e12623          	sw	a4,12(sp)
 708:	a95ff0ef          	jal	19c <printString>
 70c:	f95ff06f          	j	6a0 <printfSCR+0x10c>
 710:	00048613          	mv	a2,s1
 714:	02500593          	li	a1,37
 718:	a55ff0ef          	jal	16c <putch>
 71c:	00140413          	addi	s0,s0,1
 720:	f51ff06f          	j	670 <printfSCR+0xdc>
 724:	00048613          	mv	a2,s1
 728:	ff1ff06f          	j	718 <printfSCR+0x184>

0000072c <clearScreen>:
 72c:	ff010113          	addi	sp,sp,-16
 730:	00812423          	sw	s0,8(sp)
 734:	00912223          	sw	s1,4(sp)
 738:	00112623          	sw	ra,12(sp)
 73c:	00000413          	li	s0,0
 740:	4c000493          	li	s1,1216
 744:	00040513          	mv	a0,s0
 748:	00f00613          	li	a2,15
 74c:	02000593          	li	a1,32
 750:	00140413          	addi	s0,s0,1
 754:	a19ff0ef          	jal	16c <putch>
 758:	fe9416e3          	bne	s0,s1,744 <clearScreen+0x18>
 75c:	00c12083          	lw	ra,12(sp)
 760:	00812403          	lw	s0,8(sp)
 764:	000017b7          	lui	a5,0x1
 768:	c4079123          	sh	zero,-958(a5) # c42 <screenPos>
 76c:	00412483          	lw	s1,4(sp)
 770:	01010113          	addi	sp,sp,16
 774:	00008067          	ret

00000778 <resetScreenVector>:
 778:	000017b7          	lui	a5,0x1
 77c:	c4079123          	sh	zero,-958(a5) # c42 <screenPos>
 780:	00008067          	ret
 784:	2710                	.insn	2, 0x2710
 786:	0000                	.insn	2, 0x
 788:	03e8                	.insn	2, 0x03e8
 78a:	0000                	.insn	2, 0x
 78c:	0064                	.insn	2, 0x0064
 78e:	0000                	.insn	2, 0x
 790:	000a                	.insn	2, 0x000a
 792:	0000                	.insn	2, 0x
 794:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00000798 <main>:
 798:	435357b7          	lui	a5,0x43535
 79c:	f2010113          	addi	sp,sp,-224
 7a0:	95278793          	addi	a5,a5,-1710 # 43534952 <_stack_end+0x43533952>
 7a4:	00f12c23          	sw	a5,24(sp)
 7a8:	534637b7          	lui	a5,0x53463
 7ac:	e5978793          	addi	a5,a5,-423 # 53462e59 <_stack_end+0x53461e59>
 7b0:	00f12e23          	sw	a5,28(sp)
 7b4:	01c00613          	li	a2,28
 7b8:	0ff00793          	li	a5,255
 7bc:	00000593          	li	a1,0
 7c0:	03410513          	addi	a0,sp,52
 7c4:	0c112e23          	sw	ra,220(sp)
 7c8:	0ba12823          	sw	s10,176(sp)
 7cc:	02f12823          	sw	a5,48(sp)
 7d0:	0c812c23          	sw	s0,216(sp)
 7d4:	0c912a23          	sw	s1,212(sp)
 7d8:	0d212823          	sw	s2,208(sp)
 7dc:	0d312623          	sw	s3,204(sp)
 7e0:	0d412423          	sw	s4,200(sp)
 7e4:	0d512223          	sw	s5,196(sp)
 7e8:	0d612023          	sw	s6,192(sp)
 7ec:	0b712e23          	sw	s7,188(sp)
 7f0:	0b812c23          	sw	s8,184(sp)
 7f4:	0b912a23          	sw	s9,180(sp)
 7f8:	0bb12623          	sw	s11,172(sp)
 7fc:	02010023          	sb	zero,32(sp)
 800:	911ff0ef          	jal	110 <memset>
 804:	f29ff0ef          	jal	72c <clearScreen>
 808:	00000d13          	li	s10,0
 80c:	00000513          	li	a0,0
 810:	02012223          	sw	zero,36(sp)
 814:	02012423          	sw	zero,40(sp)
 818:	02010623          	sb	zero,44(sp)
 81c:	845ff0ef          	jal	60 <readFlash>
 820:	02a12223          	sw	a0,36(sp)
 824:	00400513          	li	a0,4
 828:	839ff0ef          	jal	60 <readFlash>
 82c:	02a12423          	sw	a0,40(sp)
 830:	00000793          	li	a5,0
 834:	00800693          	li	a3,8
 838:	01810713          	addi	a4,sp,24
 83c:	00f70733          	add	a4,a4,a5
 840:	00074603          	lbu	a2,0(a4)
 844:	02410713          	addi	a4,sp,36
 848:	00f70733          	add	a4,a4,a5
 84c:	00074703          	lbu	a4,0(a4)
 850:	30e61a63          	bne	a2,a4,b64 <main+0x3cc>
 854:	00178793          	addi	a5,a5,1
 858:	fed790e3          	bne	a5,a3,838 <main+0xa0>
 85c:	00800513          	li	a0,8
 860:	801ff0ef          	jal	60 <readFlash>
 864:	0ff57a13          	zext.b	s4,a0
 868:	00001537          	lui	a0,0x1
 86c:	000a0593          	mv	a1,s4
 870:	bc450513          	addi	a0,a0,-1084 # bc4 <main+0x42c>
 874:	b7dff0ef          	jal	3f0 <printf>
 878:	00001537          	lui	a0,0x1
 87c:	bdc50513          	addi	a0,a0,-1060 # bdc <main+0x444>
 880:	b71ff0ef          	jal	3f0 <printf>
 884:	00000413          	li	s0,0
 888:	02000d93          	li	s11,32
 88c:	05010b93          	addi	s7,sp,80
 890:	00000b13          	li	s6,0
 894:	14400493          	li	s1,324
 898:	00000a93          	li	s5,0
 89c:	00900913          	li	s2,9
 8a0:	074aca63          	blt	s5,s4,914 <main+0x17c>
 8a4:	100007b7          	lui	a5,0x10000
 8a8:	0007a683          	lw	a3,0(a5) # 10000000 <_stack_end+0xffff000>
 8ac:	000017b7          	lui	a5,0x1
 8b0:	c0478613          	addi	a2,a5,-1020 # c04 <_stack_bottom+0x4>
 8b4:	0186d493          	srli	s1,a3,0x18
 8b8:	00048693          	mv	a3,s1
 8bc:	00f00593          	li	a1,15
 8c0:	48000513          	li	a0,1152
 8c4:	cd1ff0ef          	jal	594 <printfSCR>
 8c8:	875ff0ef          	jal	13c <getButtonDown>
 8cc:	05100793          	li	a5,81
 8d0:	00051e63          	bnez	a0,8ec <main+0x154>
 8d4:	875ff0ef          	jal	148 <getButtonUp>
 8d8:	05200793          	li	a5,82
 8dc:	00051863          	bnez	a0,8ec <main+0x154>
 8e0:	881ff0ef          	jal	160 <getButtonRight>
 8e4:	1c050463          	beqz	a0,aac <main+0x314>
 8e8:	02800793          	li	a5,40
 8ec:	0097e7b3          	or	a5,a5,s1
 8f0:	0ff7f793          	zext.b	a5,a5
 8f4:	00fd0c63          	beq	s10,a5,90c <main+0x174>
 8f8:	05100713          	li	a4,81
 8fc:	1ce79063          	bne	a5,a4,abc <main+0x324>
 900:	00140413          	addi	s0,s0,1
 904:	01444463          	blt	s0,s4,90c <main+0x174>
 908:	00000413          	li	s0,0
 90c:	00078d13          	mv	s10,a5
 910:	f7dff06f          	j	88c <main+0xf4>
 914:	00548993          	addi	s3,s1,5
 918:	01099993          	slli	s3,s3,0x10
 91c:	4109d993          	srai	s3,s3,0x10
 920:	00f00793          	li	a5,15
 924:	01541463          	bne	s0,s5,92c <main+0x194>
 928:	05000793          	li	a5,80
 92c:	0ff7fc13          	zext.b	s8,a5
 930:	00090513          	mv	a0,s2
 934:	f2cff0ef          	jal	60 <readFlash>
 938:	00198993          	addi	s3,s3,1
 93c:	01099993          	slli	s3,s3,0x10
 940:	0ff57593          	zext.b	a1,a0
 944:	00190c93          	addi	s9,s2,1
 948:	4109d993          	srai	s3,s3,0x10
 94c:	00058c63          	beqz	a1,964 <main+0x1cc>
 950:	000c0613          	mv	a2,s8
 954:	00098513          	mv	a0,s3
 958:	815ff0ef          	jal	16c <putch>
 95c:	000c8913          	mv	s2,s9
 960:	fd1ff06f          	j	930 <main+0x198>
 964:	000c8513          	mv	a0,s9
 968:	ef8ff0ef          	jal	60 <readFlash>
 96c:	00a12223          	sw	a0,4(sp)
 970:	00aba023          	sw	a0,0(s7)
 974:	00590513          	addi	a0,s2,5
 978:	ee8ff0ef          	jal	60 <readFlash>
 97c:	00990c13          	addi	s8,s2,9
 980:	00050713          	mv	a4,a0
 984:	00aba223          	sw	a0,4(s7)
 988:	10990913          	addi	s2,s2,265
 98c:	000b0c93          	mv	s9,s6
 990:	00000793          	li	a5,0
 994:	00fc0533          	add	a0,s8,a5
 998:	00e12623          	sw	a4,12(sp)
 99c:	00f12423          	sw	a5,8(sp)
 9a0:	ec0ff0ef          	jal	60 <readFlash>
 9a4:	00812783          	lw	a5,8(sp)
 9a8:	03010713          	addi	a4,sp,48
 9ac:	00f70633          	add	a2,a4,a5
 9b0:	00a60023          	sb	a0,0(a2)
 9b4:	00178793          	addi	a5,a5,1
 9b8:	00c12703          	lw	a4,12(sp)
 9bc:	fdb79ce3          	bne	a5,s11,994 <main+0x1fc>
 9c0:	000c8513          	mv	a0,s9
 9c4:	03010593          	addi	a1,sp,48
 9c8:	00e12423          	sw	a4,8(sp)
 9cc:	020c0c13          	addi	s8,s8,32
 9d0:	eecff0ef          	jal	bc <WriteSprite>
 9d4:	00812703          	lw	a4,8(sp)
 9d8:	001c8c93          	addi	s9,s9,1
 9dc:	fb2c1ae3          	bne	s8,s2,990 <main+0x1f8>
 9e0:	00412683          	lw	a3,4(sp)
 9e4:	000017b7          	lui	a5,0x1
 9e8:	bf078613          	addi	a2,a5,-1040 # bf0 <main+0x458>
 9ec:	00f00593          	li	a1,15
 9f0:	00098513          	mv	a0,s3
 9f4:	ba1ff0ef          	jal	594 <printfSCR>
 9f8:	0ffb7993          	zext.b	s3,s6
 9fc:	00000613          	li	a2,0
 a00:	0809c593          	xori	a1,s3,128
 a04:	00048513          	mv	a0,s1
 a08:	f64ff0ef          	jal	16c <putch>
 a0c:	f8198593          	addi	a1,s3,-127
 a10:	00000613          	li	a2,0
 a14:	0ff5f593          	zext.b	a1,a1
 a18:	00148513          	addi	a0,s1,1
 a1c:	f50ff0ef          	jal	16c <putch>
 a20:	f8298593          	addi	a1,s3,-126
 a24:	00000613          	li	a2,0
 a28:	0ff5f593          	zext.b	a1,a1
 a2c:	00248513          	addi	a0,s1,2
 a30:	f3cff0ef          	jal	16c <putch>
 a34:	f8398593          	addi	a1,s3,-125
 a38:	00000613          	li	a2,0
 a3c:	0ff5f593          	zext.b	a1,a1
 a40:	00348513          	addi	a0,s1,3
 a44:	f28ff0ef          	jal	16c <putch>
 a48:	f8498593          	addi	a1,s3,-124
 a4c:	00000613          	li	a2,0
 a50:	0ff5f593          	zext.b	a1,a1
 a54:	04048513          	addi	a0,s1,64
 a58:	f14ff0ef          	jal	16c <putch>
 a5c:	f8598593          	addi	a1,s3,-123
 a60:	00000613          	li	a2,0
 a64:	0ff5f593          	zext.b	a1,a1
 a68:	04148513          	addi	a0,s1,65
 a6c:	f00ff0ef          	jal	16c <putch>
 a70:	f8698593          	addi	a1,s3,-122
 a74:	00000613          	li	a2,0
 a78:	0ff5f593          	zext.b	a1,a1
 a7c:	04248513          	addi	a0,s1,66
 a80:	eecff0ef          	jal	16c <putch>
 a84:	f8798593          	addi	a1,s3,-121
 a88:	04348513          	addi	a0,s1,67
 a8c:	00000613          	li	a2,0
 a90:	0ff5f593          	zext.b	a1,a1
 a94:	ed8ff0ef          	jal	16c <putch>
 a98:	001a8a93          	addi	s5,s5,1
 a9c:	0c048493          	addi	s1,s1,192
 aa0:	008b0b13          	addi	s6,s6,8
 aa4:	008b8b93          	addi	s7,s7,8
 aa8:	df9ff06f          	j	8a0 <main+0x108>
 aac:	ea8ff0ef          	jal	154 <getButtonLeft>
 ab0:	00050793          	mv	a5,a0
 ab4:	e2051ae3          	bnez	a0,8e8 <main+0x150>
 ab8:	e35ff06f          	j	8ec <main+0x154>
 abc:	05200713          	li	a4,82
 ac0:	00e79a63          	bne	a5,a4,ad4 <main+0x33c>
 ac4:	fff40413          	addi	s0,s0,-1
 ac8:	e40452e3          	bgez	s0,90c <main+0x174>
 acc:	fffa0413          	addi	s0,s4,-1
 ad0:	e3dff06f          	j	90c <main+0x174>
 ad4:	02800713          	li	a4,40
 ad8:	e2e79ae3          	bne	a5,a4,90c <main+0x174>
 adc:	00341413          	slli	s0,s0,0x3
 ae0:	09040793          	addi	a5,s0,144
 ae4:	01010713          	addi	a4,sp,16
 ae8:	00e78433          	add	s0,a5,a4
 aec:	fb042983          	lw	s3,-80(s0)
 af0:	fb442403          	lw	s0,-76(s0)
 af4:	00001537          	lui	a0,0x1
 af8:	c0850513          	addi	a0,a0,-1016 # c08 <_stack_bottom+0x8>
 afc:	41340433          	sub	s0,s0,s3
 b00:	00245413          	srli	s0,s0,0x2
 b04:	00040593          	mv	a1,s0
 b08:	8e9ff0ef          	jal	3f0 <printf>
 b0c:	00000493          	li	s1,0
 b10:	00400a37          	lui	s4,0x400
 b14:	00001ab7          	lui	s5,0x1
 b18:	0084cc63          	blt	s1,s0,b30 <main+0x398>
 b1c:	c11ff0ef          	jal	72c <clearScreen>
 b20:	004007b7          	lui	a5,0x400
 b24:	000780e7          	jalr	a5 # 400000 <_stack_end+0x3ff000>
 b28:	c05ff0ef          	jal	72c <clearScreen>
 b2c:	ce1ff06f          	j	80c <main+0x74>
 b30:	00249913          	slli	s2,s1,0x2
 b34:	01298533          	add	a0,s3,s2
 b38:	d28ff0ef          	jal	60 <readFlash>
 b3c:	012a0933          	add	s2,s4,s2
 b40:	00a92023          	sw	a0,0(s2)
 b44:	00048693          	mv	a3,s1
 b48:	00040713          	mv	a4,s0
 b4c:	c20a8613          	addi	a2,s5,-992 # c20 <_stack_bottom+0x20>
 b50:	00f00593          	li	a1,15
 b54:	48000513          	li	a0,1152
 b58:	a3dff0ef          	jal	594 <printfSCR>
 b5c:	00148493          	addi	s1,s1,1
 b60:	fb9ff06f          	j	b18 <main+0x380>
 b64:	00001537          	lui	a0,0x1
 b68:	02410593          	addi	a1,sp,36
 b6c:	bb450513          	addi	a0,a0,-1100 # bb4 <main+0x41c>
 b70:	881ff0ef          	jal	3f0 <printf>
 b74:	0dc12083          	lw	ra,220(sp)
 b78:	0d812403          	lw	s0,216(sp)
 b7c:	0d412483          	lw	s1,212(sp)
 b80:	0d012903          	lw	s2,208(sp)
 b84:	0cc12983          	lw	s3,204(sp)
 b88:	0c812a03          	lw	s4,200(sp)
 b8c:	0c412a83          	lw	s5,196(sp)
 b90:	0c012b03          	lw	s6,192(sp)
 b94:	0bc12b83          	lw	s7,188(sp)
 b98:	0b812c03          	lw	s8,184(sp)
 b9c:	0b412c83          	lw	s9,180(sp)
 ba0:	0b012d03          	lw	s10,176(sp)
 ba4:	0ac12d83          	lw	s11,172(sp)
 ba8:	00000513          	li	a0,0
 bac:	0e010113          	addi	sp,sp,224
 bb0:	00008067          	ret
