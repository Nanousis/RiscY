
builds/build5/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	c0010113          	addi	sp,sp,-1024 # c00 <_stack_top>
   8:	744000ef          	jal	74c <_etext>
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

000000f0 <getButtonDown>:
  f0:	890007b7          	lui	a5,0x89000
  f4:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88fff001>
  f8:	00008067          	ret

000000fc <getButtonUp>:
  fc:	890007b7          	lui	a5,0x89000
 100:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
 104:	00008067          	ret

00000108 <getButtonLeft>:
 108:	890007b7          	lui	a5,0x89000
 10c:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88fff002>
 110:	00008067          	ret

00000114 <getButtonRight>:
 114:	890007b7          	lui	a5,0x89000
 118:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88fff003>
 11c:	00008067          	ret

00000120 <putch>:
 120:	4c000793          	li	a5,1216
 124:	02a7e263          	bltu	a5,a0,148 <putch+0x28>
 128:	00861613          	slli	a2,a2,0x8
 12c:	00151513          	slli	a0,a0,0x1
 130:	880007b7          	lui	a5,0x88000
 134:	00a787b3          	add	a5,a5,a0
 138:	00b665b3          	or	a1,a2,a1
 13c:	00b79023          	sh	a1,0(a5) # 88000000 <_stack_end+0x87fff000>
 140:	00100513          	li	a0,1
 144:	00008067          	ret
 148:	00000513          	li	a0,0
 14c:	00008067          	ret

00000150 <printString>:
 150:	fe010113          	addi	sp,sp,-32
 154:	01212823          	sw	s2,16(sp)
 158:	01312623          	sw	s3,12(sp)
 15c:	00112e23          	sw	ra,28(sp)
 160:	00812c23          	sw	s0,24(sp)
 164:	00912a23          	sw	s1,20(sp)
 168:	01412423          	sw	s4,8(sp)
 16c:	01512223          	sw	s5,4(sp)
 170:	01612023          	sw	s6,0(sp)
 174:	00050993          	mv	s3,a0
 178:	00058913          	mv	s2,a1
 17c:	06060c63          	beqz	a2,1f4 <printString+0xa4>
 180:	00060413          	mv	s0,a2
 184:	00000a13          	li	s4,0
 188:	00000493          	li	s1,0
 18c:	00100a93          	li	s5,1
 190:	00f00b13          	li	s6,15
 194:	0280006f          	j	1bc <printString+0x6c>
 198:	00040613          	mv	a2,s0
 19c:	00998533          	add	a0,s3,s1
 1a0:	f81ff0ef          	jal	120 <putch>
 1a4:	06050263          	beqz	a0,208 <printString+0xb8>
 1a8:	00148493          	addi	s1,s1,1
 1ac:	015a1863          	bne	s4,s5,1bc <printString+0x6c>
 1b0:	00140413          	addi	s0,s0,1
 1b4:	0ff47413          	zext.b	s0,s0
 1b8:	048b6463          	bltu	s6,s0,200 <printString+0xb0>
 1bc:	009907b3          	add	a5,s2,s1
 1c0:	0007c583          	lbu	a1,0(a5)
 1c4:	00048513          	mv	a0,s1
 1c8:	fc0598e3          	bnez	a1,198 <printString+0x48>
 1cc:	01c12083          	lw	ra,28(sp)
 1d0:	01812403          	lw	s0,24(sp)
 1d4:	01412483          	lw	s1,20(sp)
 1d8:	01012903          	lw	s2,16(sp)
 1dc:	00c12983          	lw	s3,12(sp)
 1e0:	00812a03          	lw	s4,8(sp)
 1e4:	00412a83          	lw	s5,4(sp)
 1e8:	00012b03          	lw	s6,0(sp)
 1ec:	02010113          	addi	sp,sp,32
 1f0:	00008067          	ret
 1f4:	00100a13          	li	s4,1
 1f8:	00100413          	li	s0,1
 1fc:	f8dff06f          	j	188 <printString+0x38>
 200:	00100413          	li	s0,1
 204:	fb9ff06f          	j	1bc <printString+0x6c>
 208:	00000513          	li	a0,0
 20c:	fc1ff06f          	j	1cc <printString+0x7c>

00000210 <printHex>:
 210:	fd010113          	addi	sp,sp,-48
 214:	02812423          	sw	s0,40(sp)
 218:	00058413          	mv	s0,a1
 21c:	000015b7          	lui	a1,0x1
 220:	02912223          	sw	s1,36(sp)
 224:	03212023          	sw	s2,32(sp)
 228:	00050493          	mv	s1,a0
 22c:	00060913          	mv	s2,a2
 230:	9c858593          	addi	a1,a1,-1592 # 9c8 <_stack_bottom+0x1c8>
 234:	01100613          	li	a2,17
 238:	00c10513          	addi	a0,sp,12
 23c:	02112623          	sw	ra,44(sp)
 240:	e71ff0ef          	jal	b0 <memcpy>
 244:	202027b7          	lui	a5,0x20202
 248:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 24c:	00f12023          	sw	a5,0(sp)
 250:	00f12223          	sw	a5,4(sp)
 254:	00010423          	sb	zero,8(sp)
 258:	00700793          	li	a5,7
 25c:	fff00693          	li	a3,-1
 260:	00f47713          	andi	a4,s0,15
 264:	02070713          	addi	a4,a4,32
 268:	00270733          	add	a4,a4,sp
 26c:	fec74703          	lbu	a4,-20(a4)
 270:	00f10633          	add	a2,sp,a5
 274:	fff78793          	addi	a5,a5,-1
 278:	00e60023          	sb	a4,0(a2)
 27c:	40445413          	srai	s0,s0,0x4
 280:	fed790e3          	bne	a5,a3,260 <printHex+0x50>
 284:	00090613          	mv	a2,s2
 288:	00010593          	mv	a1,sp
 28c:	00048513          	mv	a0,s1
 290:	ec1ff0ef          	jal	150 <printString>
 294:	02c12083          	lw	ra,44(sp)
 298:	02812403          	lw	s0,40(sp)
 29c:	02412483          	lw	s1,36(sp)
 2a0:	02012903          	lw	s2,32(sp)
 2a4:	0ff57513          	zext.b	a0,a0
 2a8:	03010113          	addi	sp,sp,48
 2ac:	00008067          	ret

000002b0 <printDec>:
 2b0:	fd010113          	addi	sp,sp,-48
 2b4:	02812423          	sw	s0,40(sp)
 2b8:	00058413          	mv	s0,a1
 2bc:	02912223          	sw	s1,36(sp)
 2c0:	03212023          	sw	s2,32(sp)
 2c4:	00050493          	mv	s1,a0
 2c8:	00060913          	mv	s2,a2
 2cc:	73800593          	li	a1,1848
 2d0:	01400613          	li	a2,20
 2d4:	00c10513          	addi	a0,sp,12
 2d8:	02112623          	sw	ra,44(sp)
 2dc:	dd5ff0ef          	jal	b0 <memcpy>
 2e0:	000187b7          	lui	a5,0x18
 2e4:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 2e8:	0287fa63          	bgeu	a5,s0,31c <printDec+0x6c>
 2ec:	000015b7          	lui	a1,0x1
 2f0:	00090613          	mv	a2,s2
 2f4:	9dc58593          	addi	a1,a1,-1572 # 9dc <_stack_bottom+0x1dc>
 2f8:	00048513          	mv	a0,s1
 2fc:	e55ff0ef          	jal	150 <printString>
 300:	02c12083          	lw	ra,44(sp)
 304:	02812403          	lw	s0,40(sp)
 308:	02412483          	lw	s1,36(sp)
 30c:	02012903          	lw	s2,32(sp)
 310:	0ff57513          	zext.b	a0,a0
 314:	03010113          	addi	sp,sp,48
 318:	00008067          	ret
 31c:	00c10713          	addi	a4,sp,12
 320:	00100613          	li	a2,1
 324:	00000793          	li	a5,0
 328:	00100513          	li	a0,1
 32c:	00072583          	lw	a1,0(a4)
 330:	00000693          	li	a3,0
 334:	06b47263          	bgeu	s0,a1,398 <printDec+0xe8>
 338:	00069663          	bnez	a3,344 <printDec+0x94>
 33c:	00a58463          	beq	a1,a0,344 <printDec+0x94>
 340:	00061e63          	bnez	a2,35c <printDec+0xac>
 344:	02078613          	addi	a2,a5,32
 348:	00260633          	add	a2,a2,sp
 34c:	03068693          	addi	a3,a3,48
 350:	fed60223          	sb	a3,-28(a2)
 354:	00178793          	addi	a5,a5,1
 358:	00000613          	li	a2,0
 35c:	00470713          	addi	a4,a4,4
 360:	02010693          	addi	a3,sp,32
 364:	fcd714e3          	bne	a4,a3,32c <printDec+0x7c>
 368:	00060c63          	beqz	a2,380 <printDec+0xd0>
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
 394:	f65ff06f          	j	2f8 <printDec+0x48>
 398:	40b40433          	sub	s0,s0,a1
 39c:	00168693          	addi	a3,a3,1
 3a0:	f95ff06f          	j	334 <printDec+0x84>

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
 3cc:	01712e23          	sw	s7,28(sp)
 3d0:	01912a23          	sw	s9,20(sp)
 3d4:	02112e23          	sw	ra,60(sp)
 3d8:	01812c23          	sw	s8,24(sp)
 3dc:	00050493          	mv	s1,a0
 3e0:	04b12223          	sw	a1,68(sp)
 3e4:	04c12423          	sw	a2,72(sp)
 3e8:	04d12623          	sw	a3,76(sp)
 3ec:	04e12823          	sw	a4,80(sp)
 3f0:	05012c23          	sw	a6,88(sp)
 3f4:	05112e23          	sw	a7,92(sp)
 3f8:	00f12623          	sw	a5,12(sp)
 3fc:	00000c93          	li	s9,0
 400:	00001437          	lui	s0,0x1
 404:	00a00913          	li	s2,10
 408:	02500993          	li	s3,37
 40c:	07800a13          	li	s4,120
 410:	06400a93          	li	s5,100
 414:	06300b13          	li	s6,99
 418:	07300b93          	li	s7,115
 41c:	019487b3          	add	a5,s1,s9
 420:	0007c583          	lbu	a1,0(a5)
 424:	9e241503          	lh	a0,-1566(s0) # 9e2 <screenPos>
 428:	02059c63          	bnez	a1,460 <_stack_size+0x60>
 42c:	03c12083          	lw	ra,60(sp)
 430:	03812403          	lw	s0,56(sp)
 434:	03412483          	lw	s1,52(sp)
 438:	03012903          	lw	s2,48(sp)
 43c:	02c12983          	lw	s3,44(sp)
 440:	02812a03          	lw	s4,40(sp)
 444:	02412a83          	lw	s5,36(sp)
 448:	02012b03          	lw	s6,32(sp)
 44c:	01c12b83          	lw	s7,28(sp)
 450:	01812c03          	lw	s8,24(sp)
 454:	01412c83          	lw	s9,20(sp)
 458:	06010113          	addi	sp,sp,96
 45c:	00008067          	ret
 460:	001c8c13          	addi	s8,s9,1
 464:	01259e63          	bne	a1,s2,480 <_stack_size+0x80>
 468:	fc057793          	andi	a5,a0,-64
 46c:	04078793          	addi	a5,a5,64
 470:	01079793          	slli	a5,a5,0x10
 474:	4107d793          	srai	a5,a5,0x10
 478:	000c8c13          	mv	s8,s9
 47c:	0380006f          	j	4b4 <_stack_size+0xb4>
 480:	0d359063          	bne	a1,s3,540 <_stack_size+0x140>
 484:	0017c783          	lbu	a5,1(a5)
 488:	03479c63          	bne	a5,s4,4c0 <_stack_size+0xc0>
 48c:	00c12783          	lw	a5,12(sp)
 490:	00f00613          	li	a2,15
 494:	0007a583          	lw	a1,0(a5)
 498:	00478713          	addi	a4,a5,4
 49c:	00e12623          	sw	a4,12(sp)
 4a0:	d71ff0ef          	jal	210 <printHex>
 4a4:	9e245783          	lhu	a5,-1566(s0)
 4a8:	00f507b3          	add	a5,a0,a5
 4ac:	01079793          	slli	a5,a5,0x10
 4b0:	4107d793          	srai	a5,a5,0x10
 4b4:	9ef41123          	sh	a5,-1566(s0)
 4b8:	001c0c93          	addi	s9,s8,1
 4bc:	f61ff06f          	j	41c <_stack_size+0x1c>
 4c0:	03579063          	bne	a5,s5,4e0 <_stack_size+0xe0>
 4c4:	00c12783          	lw	a5,12(sp)
 4c8:	00f00613          	li	a2,15
 4cc:	0007a583          	lw	a1,0(a5)
 4d0:	00478713          	addi	a4,a5,4
 4d4:	00e12623          	sw	a4,12(sp)
 4d8:	dd9ff0ef          	jal	2b0 <printDec>
 4dc:	fc9ff06f          	j	4a4 <_stack_size+0xa4>
 4e0:	03679463          	bne	a5,s6,508 <_stack_size+0x108>
 4e4:	00c12783          	lw	a5,12(sp)
 4e8:	00f00613          	li	a2,15
 4ec:	0007c583          	lbu	a1,0(a5)
 4f0:	00478713          	addi	a4,a5,4
 4f4:	00e12623          	sw	a4,12(sp)
 4f8:	c29ff0ef          	jal	120 <putch>
 4fc:	9e245783          	lhu	a5,-1566(s0)
 500:	00178793          	addi	a5,a5,1
 504:	fa9ff06f          	j	4ac <_stack_size+0xac>
 508:	03779063          	bne	a5,s7,528 <_stack_size+0x128>
 50c:	00c12783          	lw	a5,12(sp)
 510:	00f00613          	li	a2,15
 514:	0007a583          	lw	a1,0(a5)
 518:	00478713          	addi	a4,a5,4
 51c:	00e12623          	sw	a4,12(sp)
 520:	c31ff0ef          	jal	150 <printString>
 524:	f81ff06f          	j	4a4 <_stack_size+0xa4>
 528:	00f00613          	li	a2,15
 52c:	02500593          	li	a1,37
 530:	bf1ff0ef          	jal	120 <putch>
 534:	9e245783          	lhu	a5,-1566(s0)
 538:	00178793          	addi	a5,a5,1
 53c:	f35ff06f          	j	470 <_stack_size+0x70>
 540:	00f00613          	li	a2,15
 544:	fedff06f          	j	530 <_stack_size+0x130>

00000548 <printfSCR>:
 548:	f9010113          	addi	sp,sp,-112
 54c:	06f12223          	sw	a5,100(sp)
 550:	05c10793          	addi	a5,sp,92
 554:	04812423          	sw	s0,72(sp)
 558:	04912223          	sw	s1,68(sp)
 55c:	05212023          	sw	s2,64(sp)
 560:	03412c23          	sw	s4,56(sp)
 564:	03512a23          	sw	s5,52(sp)
 568:	03612823          	sw	s6,48(sp)
 56c:	03712623          	sw	s7,44(sp)
 570:	03812423          	sw	s8,40(sp)
 574:	03912223          	sw	s9,36(sp)
 578:	03a12023          	sw	s10,32(sp)
 57c:	01b12e23          	sw	s11,28(sp)
 580:	04112623          	sw	ra,76(sp)
 584:	03312e23          	sw	s3,60(sp)
 588:	00050a93          	mv	s5,a0
 58c:	00058493          	mv	s1,a1
 590:	00060a13          	mv	s4,a2
 594:	04d12e23          	sw	a3,92(sp)
 598:	06e12023          	sw	a4,96(sp)
 59c:	07012423          	sw	a6,104(sp)
 5a0:	07112623          	sw	a7,108(sp)
 5a4:	00f12623          	sw	a5,12(sp)
 5a8:	00000913          	li	s2,0
 5ac:	00000413          	li	s0,0
 5b0:	00a00b13          	li	s6,10
 5b4:	02500b93          	li	s7,37
 5b8:	07800c13          	li	s8,120
 5bc:	06400c93          	li	s9,100
 5c0:	06300d13          	li	s10,99
 5c4:	07300d93          	li	s11,115
 5c8:	012a07b3          	add	a5,s4,s2
 5cc:	0007c583          	lbu	a1,0(a5)
 5d0:	04059263          	bnez	a1,614 <printfSCR+0xcc>
 5d4:	04c12083          	lw	ra,76(sp)
 5d8:	00040513          	mv	a0,s0
 5dc:	04812403          	lw	s0,72(sp)
 5e0:	04412483          	lw	s1,68(sp)
 5e4:	04012903          	lw	s2,64(sp)
 5e8:	03c12983          	lw	s3,60(sp)
 5ec:	03812a03          	lw	s4,56(sp)
 5f0:	03412a83          	lw	s5,52(sp)
 5f4:	03012b03          	lw	s6,48(sp)
 5f8:	02c12b83          	lw	s7,44(sp)
 5fc:	02812c03          	lw	s8,40(sp)
 600:	02412c83          	lw	s9,36(sp)
 604:	02012d03          	lw	s10,32(sp)
 608:	01c12d83          	lw	s11,28(sp)
 60c:	07010113          	addi	sp,sp,112
 610:	00008067          	ret
 614:	00190993          	addi	s3,s2,1
 618:	01659a63          	bne	a1,s6,62c <printfSCR+0xe4>
 61c:	fc047413          	andi	s0,s0,-64
 620:	04040413          	addi	s0,s0,64
 624:	00090993          	mv	s3,s2
 628:	0740006f          	j	69c <printfSCR+0x154>
 62c:	01540533          	add	a0,s0,s5
 630:	0b759463          	bne	a1,s7,6d8 <printfSCR+0x190>
 634:	0017c783          	lbu	a5,1(a5)
 638:	03879263          	bne	a5,s8,65c <printfSCR+0x114>
 63c:	00c12783          	lw	a5,12(sp)
 640:	00048613          	mv	a2,s1
 644:	0007a583          	lw	a1,0(a5)
 648:	00478713          	addi	a4,a5,4
 64c:	00e12623          	sw	a4,12(sp)
 650:	bc1ff0ef          	jal	210 <printHex>
 654:	00a40433          	add	s0,s0,a0
 658:	0440006f          	j	69c <printfSCR+0x154>
 65c:	03979063          	bne	a5,s9,67c <printfSCR+0x134>
 660:	00c12783          	lw	a5,12(sp)
 664:	00048613          	mv	a2,s1
 668:	0007a583          	lw	a1,0(a5)
 66c:	00478713          	addi	a4,a5,4
 670:	00e12623          	sw	a4,12(sp)
 674:	c3dff0ef          	jal	2b0 <printDec>
 678:	fddff06f          	j	654 <printfSCR+0x10c>
 67c:	03a79463          	bne	a5,s10,6a4 <printfSCR+0x15c>
 680:	00c12783          	lw	a5,12(sp)
 684:	00048613          	mv	a2,s1
 688:	00140413          	addi	s0,s0,1
 68c:	0007c583          	lbu	a1,0(a5)
 690:	00478713          	addi	a4,a5,4
 694:	00e12623          	sw	a4,12(sp)
 698:	a89ff0ef          	jal	120 <putch>
 69c:	00198913          	addi	s2,s3,1
 6a0:	f29ff06f          	j	5c8 <printfSCR+0x80>
 6a4:	03b79063          	bne	a5,s11,6c4 <printfSCR+0x17c>
 6a8:	00c12783          	lw	a5,12(sp)
 6ac:	00048613          	mv	a2,s1
 6b0:	0007a583          	lw	a1,0(a5)
 6b4:	00478713          	addi	a4,a5,4
 6b8:	00e12623          	sw	a4,12(sp)
 6bc:	a95ff0ef          	jal	150 <printString>
 6c0:	f95ff06f          	j	654 <printfSCR+0x10c>
 6c4:	00048613          	mv	a2,s1
 6c8:	02500593          	li	a1,37
 6cc:	a55ff0ef          	jal	120 <putch>
 6d0:	00140413          	addi	s0,s0,1
 6d4:	f51ff06f          	j	624 <printfSCR+0xdc>
 6d8:	00048613          	mv	a2,s1
 6dc:	ff1ff06f          	j	6cc <printfSCR+0x184>

000006e0 <clearScreen>:
 6e0:	ff010113          	addi	sp,sp,-16
 6e4:	00812423          	sw	s0,8(sp)
 6e8:	00912223          	sw	s1,4(sp)
 6ec:	00112623          	sw	ra,12(sp)
 6f0:	00000413          	li	s0,0
 6f4:	4c000493          	li	s1,1216
 6f8:	00040513          	mv	a0,s0
 6fc:	00f00613          	li	a2,15
 700:	02000593          	li	a1,32
 704:	00140413          	addi	s0,s0,1
 708:	a19ff0ef          	jal	120 <putch>
 70c:	fe9416e3          	bne	s0,s1,6f8 <clearScreen+0x18>
 710:	00c12083          	lw	ra,12(sp)
 714:	00812403          	lw	s0,8(sp)
 718:	000017b7          	lui	a5,0x1
 71c:	9e079123          	sh	zero,-1566(a5) # 9e2 <screenPos>
 720:	00412483          	lw	s1,4(sp)
 724:	01010113          	addi	sp,sp,16
 728:	00008067          	ret

0000072c <resetScreenVector>:
 72c:	000017b7          	lui	a5,0x1
 730:	9e079123          	sh	zero,-1566(a5) # 9e2 <screenPos>
 734:	00008067          	ret
 738:	2710                	.insn	2, 0x2710
 73a:	0000                	.insn	2, 0x
 73c:	03e8                	.insn	2, 0x03e8
 73e:	0000                	.insn	2, 0x
 740:	0064                	.insn	2, 0x0064
 742:	0000                	.insn	2, 0x
 744:	000a                	.insn	2, 0x000a
 746:	0000                	.insn	2, 0x
 748:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

0000074c <main>:
 74c:	ee010113          	addi	sp,sp,-288
 750:	10912a23          	sw	s1,276(sp)
 754:	11312623          	sw	s3,268(sp)
 758:	11412423          	sw	s4,264(sp)
 75c:	11512223          	sw	s5,260(sp)
 760:	10112e23          	sw	ra,284(sp)
 764:	10812c23          	sw	s0,280(sp)
 768:	11212823          	sw	s2,272(sp)
 76c:	11612023          	sw	s6,256(sp)
 770:	0f712e23          	sw	s7,252(sp)
 774:	0f812c23          	sw	s8,248(sp)
 778:	0f912a23          	sw	s9,244(sp)
 77c:	0fa12823          	sw	s10,240(sp)
 780:	0fb12623          	sw	s11,236(sp)
 784:	000019b7          	lui	s3,0x1
 788:	00001a37          	lui	s4,0x1
 78c:	00001ab7          	lui	s5,0x1
 790:	000014b7          	lui	s1,0x1
 794:	00000513          	li	a0,0
 798:	8c9ff0ef          	jal	60 <readFlash>
 79c:	00050b13          	mv	s6,a0
 7a0:	01810c13          	addi	s8,sp,24
 7a4:	01000b93          	li	s7,16
 7a8:	00000d13          	li	s10,0
 7ac:	ff4b8c93          	addi	s9,s7,-12
 7b0:	0b6d1e63          	bne	s10,s6,86c <_stack_bottom+0x6c>
 7b4:	000017b7          	lui	a5,0x1
 7b8:	96478513          	addi	a0,a5,-1692 # 964 <_stack_bottom+0x164>
 7bc:	be9ff0ef          	jal	3a4 <printf>
 7c0:	000b0593          	mv	a1,s6
 7c4:	97098513          	addi	a0,s3,-1680 # 970 <_stack_bottom+0x170>
 7c8:	bddff0ef          	jal	3a4 <printf>
 7cc:	988a0513          	addi	a0,s4,-1656 # 988 <_stack_bottom+0x188>
 7d0:	bd5ff0ef          	jal	3a4 <printf>
 7d4:	998a8513          	addi	a0,s5,-1640 # 998 <_stack_bottom+0x198>
 7d8:	0003dcb7          	lui	s9,0x3d
 7dc:	0000cd37          	lui	s10,0xc
 7e0:	bc5ff0ef          	jal	3a4 <printf>
 7e4:	00000913          	li	s2,0
 7e8:	00000413          	li	s0,0
 7ec:	00100d93          	li	s11,1
 7f0:	08fc8c93          	addi	s9,s9,143 # 3d08f <_stack_end+0x3c08f>
 7f4:	34fd0d13          	addi	s10,s10,847 # c34f <_stack_end+0xb34f>
 7f8:	8f9ff0ef          	jal	f0 <getButtonDown>
 7fc:	14050663          	beqz	a0,948 <_stack_bottom+0x148>
 800:	00241793          	slli	a5,s0,0x2
 804:	00878433          	add	s0,a5,s0
 808:	00241413          	slli	s0,s0,0x2
 80c:	0e040793          	addi	a5,s0,224
 810:	00000b13          	li	s6,0
 814:	00278433          	add	s0,a5,sp
 818:	00400bb7          	lui	s7,0x400
 81c:	00002c37          	lui	s8,0x2
 820:	f4842503          	lw	a0,-184(s0)
 824:	00ab0533          	add	a0,s6,a0
 828:	839ff0ef          	jal	60 <readFlash>
 82c:	016b87b3          	add	a5,s7,s6
 830:	00a7a023          	sw	a0,0(a5)
 834:	004b0b13          	addi	s6,s6,4
 838:	ff8b14e3          	bne	s6,s8,820 <_stack_bottom+0x20>
 83c:	ea5ff0ef          	jal	6e0 <clearScreen>
 840:	000b80e7          	jalr	s7 # 400000 <_stack_end+0x3ff000>
 844:	e9dff0ef          	jal	6e0 <clearScreen>
 848:	000317b7          	lui	a5,0x31
 84c:	00012a23          	sw	zero,20(sp)
 850:	d3f78793          	addi	a5,a5,-705 # 30d3f <_stack_end+0x2fd3f>
 854:	01412703          	lw	a4,20(sp)
 858:	f2e7cee3          	blt	a5,a4,794 <main+0x48>
 85c:	01412703          	lw	a4,20(sp)
 860:	00170713          	addi	a4,a4,1
 864:	00e12a23          	sw	a4,20(sp)
 868:	fedff06f          	j	854 <_stack_bottom+0x54>
 86c:	000c0413          	mv	s0,s8
 870:	000c8513          	mv	a0,s9
 874:	fecff0ef          	jal	60 <readFlash>
 878:	00855793          	srli	a5,a0,0x8
 87c:	00f400a3          	sb	a5,1(s0)
 880:	01055793          	srli	a5,a0,0x10
 884:	00f40123          	sb	a5,2(s0)
 888:	01855793          	srli	a5,a0,0x18
 88c:	00a40023          	sb	a0,0(s0)
 890:	00f401a3          	sb	a5,3(s0)
 894:	004c8c93          	addi	s9,s9,4
 898:	00440413          	addi	s0,s0,4
 89c:	fd7c9ae3          	bne	s9,s7,870 <_stack_bottom+0x70>
 8a0:	000c0623          	sb	zero,12(s8) # 200c <_stack_end+0x100c>
 8a4:	000b8513          	mv	a0,s7
 8a8:	fb8ff0ef          	jal	60 <readFlash>
 8ac:	00ac2823          	sw	a0,16(s8)
 8b0:	001d0d13          	addi	s10,s10,1
 8b4:	014c0c13          	addi	s8,s8,20
 8b8:	010b8b93          	addi	s7,s7,16
 8bc:	ef1ff06f          	j	7ac <main+0x60>
 8c0:	01b91863          	bne	s2,s11,8d0 <_stack_bottom+0xd0>
 8c4:	00140413          	addi	s0,s0,1
 8c8:	01646463          	bltu	s0,s6,8d0 <_stack_bottom+0xd0>
 8cc:	00000413          	li	s0,0
 8d0:	006b9513          	slli	a0,s7,0x6
 8d4:	010c2783          	lw	a5,16(s8)
 8d8:	14150513          	addi	a0,a0,321
 8dc:	000c0713          	mv	a4,s8
 8e0:	05741c63          	bne	s0,s7,938 <_stack_bottom+0x138>
 8e4:	00040693          	mv	a3,s0
 8e8:	9ac48613          	addi	a2,s1,-1620 # 9ac <_stack_bottom+0x1ac>
 8ec:	06000593          	li	a1,96
 8f0:	c59ff0ef          	jal	548 <printfSCR>
 8f4:	001b8b93          	addi	s7,s7,1
 8f8:	014c0c13          	addi	s8,s8,20
 8fc:	00000913          	li	s2,0
 900:	fd6b90e3          	bne	s7,s6,8c0 <_stack_bottom+0xc0>
 904:	00012623          	sw	zero,12(sp)
 908:	00c12703          	lw	a4,12(sp)
 90c:	04ecd463          	bge	s9,a4,954 <_stack_bottom+0x154>
 910:	00012823          	sw	zero,16(sp)
 914:	01012703          	lw	a4,16(sp)
 918:	eeed40e3          	blt	s10,a4,7f8 <main+0xac>
 91c:	fe0ff0ef          	jal	fc <getButtonUp>
 920:	00050463          	beqz	a0,928 <_stack_bottom+0x128>
 924:	00100913          	li	s2,1
 928:	01012703          	lw	a4,16(sp)
 92c:	00170713          	addi	a4,a4,1
 930:	00e12823          	sw	a4,16(sp)
 934:	fe1ff06f          	j	914 <_stack_bottom+0x114>
 938:	000b8693          	mv	a3,s7
 93c:	9ac48613          	addi	a2,s1,-1620
 940:	00f00593          	li	a1,15
 944:	fadff06f          	j	8f0 <_stack_bottom+0xf0>
 948:	01810c13          	addi	s8,sp,24
 94c:	00000b93          	li	s7,0
 950:	fb1ff06f          	j	900 <_stack_bottom+0x100>
 954:	00c12703          	lw	a4,12(sp)
 958:	00170713          	addi	a4,a4,1
 95c:	00e12623          	sw	a4,12(sp)
 960:	fa9ff06f          	j	908 <_stack_bottom+0x108>
