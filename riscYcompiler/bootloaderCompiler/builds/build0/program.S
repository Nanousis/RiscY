
builds/build0/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	c0010113          	addi	sp,sp,-1024 # c00 <_stack_top>
   8:	748000ef          	jal	750 <_etext>
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
  78:	1f300713          	li	a4,499
  7c:	00c12783          	lw	a5,12(sp)
  80:	00f75e63          	bge	a4,a5,9c <readFlash+0x3c>
  84:	b00007b7          	lui	a5,0xb0000
  88:	00c7a503          	lw	a0,12(a5) # b000000c <_stack_end+0xaffff00c>
  8c:	8b0007b7          	lui	a5,0x8b000
  90:	000780a3          	sb	zero,1(a5) # 8b000001 <_stack_end+0x8afff001>
  94:	01010113          	addi	sp,sp,16
  98:	00008067          	ret
  9c:	00c12783          	lw	a5,12(sp)
  a0:	00178793          	addi	a5,a5,1
  a4:	00f12623          	sw	a5,12(sp)
  a8:	fd5ff06f          	j	7c <readFlash+0x1c>

000000ac <memcpy>:
  ac:	00000793          	li	a5,0
  b0:	00c7c463          	blt	a5,a2,b8 <memcpy+0xc>
  b4:	00008067          	ret
  b8:	00f58733          	add	a4,a1,a5
  bc:	00074683          	lbu	a3,0(a4)
  c0:	00f50733          	add	a4,a0,a5
  c4:	00178793          	addi	a5,a5,1
  c8:	00d70023          	sb	a3,0(a4)
  cc:	fe5ff06f          	j	b0 <memcpy+0x4>

000000d0 <memset>:
  d0:	00c50633          	add	a2,a0,a2
  d4:	00050793          	mv	a5,a0
  d8:	00c79463          	bne	a5,a2,e0 <memset+0x10>
  dc:	00008067          	ret
  e0:	00178793          	addi	a5,a5,1
  e4:	feb78fa3          	sb	a1,-1(a5)
  e8:	ff1ff06f          	j	d8 <memset+0x8>

000000ec <getButton>:
  ec:	890007b7          	lui	a5,0x89000
  f0:	00a787b3          	add	a5,a5,a0
  f4:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
  f8:	00008067          	ret

000000fc <getButtonDown>:
  fc:	890007b7          	lui	a5,0x89000
 100:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88fff000>
 104:	00008067          	ret

00000108 <getButtonUp>:
 108:	890007b7          	lui	a5,0x89000
 10c:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88fff001>
 110:	00008067          	ret

00000114 <getButtonLeft>:
 114:	890007b7          	lui	a5,0x89000
 118:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88fff002>
 11c:	00008067          	ret

00000120 <getButtonRight>:
 120:	890007b7          	lui	a5,0x89000
 124:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88fff003>
 128:	00008067          	ret

0000012c <putch>:
 12c:	4c000793          	li	a5,1216
 130:	02a7e263          	bltu	a5,a0,154 <putch+0x28>
 134:	00861613          	slli	a2,a2,0x8
 138:	880007b7          	lui	a5,0x88000
 13c:	00151513          	slli	a0,a0,0x1
 140:	00f50533          	add	a0,a0,a5
 144:	00b665b3          	or	a1,a2,a1
 148:	00b51023          	sh	a1,0(a0)
 14c:	00100513          	li	a0,1
 150:	00008067          	ret
 154:	00000513          	li	a0,0
 158:	00008067          	ret

0000015c <printString>:
 15c:	fe010113          	addi	sp,sp,-32
 160:	01312623          	sw	s3,12(sp)
 164:	01412423          	sw	s4,8(sp)
 168:	00112e23          	sw	ra,28(sp)
 16c:	00812c23          	sw	s0,24(sp)
 170:	00912a23          	sw	s1,20(sp)
 174:	01212823          	sw	s2,16(sp)
 178:	01512223          	sw	s5,4(sp)
 17c:	01612023          	sw	s6,0(sp)
 180:	00050a13          	mv	s4,a0
 184:	00058993          	mv	s3,a1
 188:	06060c63          	beqz	a2,200 <printString+0xa4>
 18c:	00060413          	mv	s0,a2
 190:	00000913          	li	s2,0
 194:	00000493          	li	s1,0
 198:	00100a93          	li	s5,1
 19c:	00f00b13          	li	s6,15
 1a0:	0280006f          	j	1c8 <printString+0x6c>
 1a4:	00040613          	mv	a2,s0
 1a8:	009a0533          	add	a0,s4,s1
 1ac:	f81ff0ef          	jal	12c <putch>
 1b0:	06050263          	beqz	a0,214 <printString+0xb8>
 1b4:	00148493          	addi	s1,s1,1
 1b8:	01591863          	bne	s2,s5,1c8 <printString+0x6c>
 1bc:	00140413          	addi	s0,s0,1
 1c0:	0ff47413          	zext.b	s0,s0
 1c4:	048b6463          	bltu	s6,s0,20c <printString+0xb0>
 1c8:	009987b3          	add	a5,s3,s1
 1cc:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87fff000>
 1d0:	00048513          	mv	a0,s1
 1d4:	fc0598e3          	bnez	a1,1a4 <printString+0x48>
 1d8:	01c12083          	lw	ra,28(sp)
 1dc:	01812403          	lw	s0,24(sp)
 1e0:	01412483          	lw	s1,20(sp)
 1e4:	01012903          	lw	s2,16(sp)
 1e8:	00c12983          	lw	s3,12(sp)
 1ec:	00812a03          	lw	s4,8(sp)
 1f0:	00412a83          	lw	s5,4(sp)
 1f4:	00012b03          	lw	s6,0(sp)
 1f8:	02010113          	addi	sp,sp,32
 1fc:	00008067          	ret
 200:	00100913          	li	s2,1
 204:	00090413          	mv	s0,s2
 208:	f8dff06f          	j	194 <printString+0x38>
 20c:	00090413          	mv	s0,s2
 210:	fb9ff06f          	j	1c8 <printString+0x6c>
 214:	00000513          	li	a0,0
 218:	fc1ff06f          	j	1d8 <printString+0x7c>

0000021c <printHex>:
 21c:	fd010113          	addi	sp,sp,-48
 220:	02812423          	sw	s0,40(sp)
 224:	00058413          	mv	s0,a1
 228:	000015b7          	lui	a1,0x1
 22c:	02912223          	sw	s1,36(sp)
 230:	03212023          	sw	s2,32(sp)
 234:	8b458593          	addi	a1,a1,-1868 # 8b4 <_stack_bottom+0xb4>
 238:	00050493          	mv	s1,a0
 23c:	00060913          	mv	s2,a2
 240:	00c10513          	addi	a0,sp,12
 244:	01100613          	li	a2,17
 248:	02112623          	sw	ra,44(sp)
 24c:	e61ff0ef          	jal	ac <memcpy>
 250:	202027b7          	lui	a5,0x20202
 254:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 258:	00f12023          	sw	a5,0(sp)
 25c:	00f12223          	sw	a5,4(sp)
 260:	00010423          	sb	zero,8(sp)
 264:	00700793          	li	a5,7
 268:	00010593          	mv	a1,sp
 26c:	fff00693          	li	a3,-1
 270:	00f47713          	andi	a4,s0,15
 274:	02070713          	addi	a4,a4,32
 278:	00270733          	add	a4,a4,sp
 27c:	fec74703          	lbu	a4,-20(a4)
 280:	00f58633          	add	a2,a1,a5
 284:	fff78793          	addi	a5,a5,-1
 288:	00e60023          	sb	a4,0(a2)
 28c:	40445413          	srai	s0,s0,0x4
 290:	fed790e3          	bne	a5,a3,270 <printHex+0x54>
 294:	00090613          	mv	a2,s2
 298:	00048513          	mv	a0,s1
 29c:	ec1ff0ef          	jal	15c <printString>
 2a0:	02c12083          	lw	ra,44(sp)
 2a4:	02812403          	lw	s0,40(sp)
 2a8:	02412483          	lw	s1,36(sp)
 2ac:	02012903          	lw	s2,32(sp)
 2b0:	0ff57513          	zext.b	a0,a0
 2b4:	03010113          	addi	sp,sp,48
 2b8:	00008067          	ret

000002bc <printDec>:
 2bc:	fd010113          	addi	sp,sp,-48
 2c0:	02812423          	sw	s0,40(sp)
 2c4:	00058413          	mv	s0,a1
 2c8:	02912223          	sw	s1,36(sp)
 2cc:	03212023          	sw	s2,32(sp)
 2d0:	00050493          	mv	s1,a0
 2d4:	00060913          	mv	s2,a2
 2d8:	73c00593          	li	a1,1852
 2dc:	01400613          	li	a2,20
 2e0:	00c10513          	addi	a0,sp,12
 2e4:	02112623          	sw	ra,44(sp)
 2e8:	dc5ff0ef          	jal	ac <memcpy>
 2ec:	000187b7          	lui	a5,0x18
 2f0:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 2f4:	0287fa63          	bgeu	a5,s0,328 <printDec+0x6c>
 2f8:	000015b7          	lui	a1,0x1
 2fc:	00090613          	mv	a2,s2
 300:	8c858593          	addi	a1,a1,-1848 # 8c8 <_stack_bottom+0xc8>
 304:	00048513          	mv	a0,s1
 308:	e55ff0ef          	jal	15c <printString>
 30c:	02c12083          	lw	ra,44(sp)
 310:	02812403          	lw	s0,40(sp)
 314:	02412483          	lw	s1,36(sp)
 318:	02012903          	lw	s2,32(sp)
 31c:	0ff57513          	zext.b	a0,a0
 320:	03010113          	addi	sp,sp,48
 324:	00008067          	ret
 328:	00100613          	li	a2,1
 32c:	00c10713          	addi	a4,sp,12
 330:	00000793          	li	a5,0
 334:	00060513          	mv	a0,a2
 338:	00072583          	lw	a1,0(a4)
 33c:	00000693          	li	a3,0
 340:	06b47263          	bgeu	s0,a1,3a4 <printDec+0xe8>
 344:	00069663          	bnez	a3,350 <printDec+0x94>
 348:	00a58463          	beq	a1,a0,350 <printDec+0x94>
 34c:	00061e63          	bnez	a2,368 <printDec+0xac>
 350:	02078613          	addi	a2,a5,32
 354:	00260633          	add	a2,a2,sp
 358:	03068693          	addi	a3,a3,48
 35c:	fed60223          	sb	a3,-28(a2)
 360:	00178793          	addi	a5,a5,1
 364:	00000613          	li	a2,0
 368:	00470713          	addi	a4,a4,4
 36c:	02010693          	addi	a3,sp,32
 370:	fcd714e3          	bne	a4,a3,338 <printDec+0x7c>
 374:	00060c63          	beqz	a2,38c <printDec+0xd0>
 378:	02078713          	addi	a4,a5,32
 37c:	00270733          	add	a4,a4,sp
 380:	03000693          	li	a3,48
 384:	fed70223          	sb	a3,-28(a4)
 388:	00178793          	addi	a5,a5,1
 38c:	02078793          	addi	a5,a5,32
 390:	002787b3          	add	a5,a5,sp
 394:	fe078223          	sb	zero,-28(a5)
 398:	00090613          	mv	a2,s2
 39c:	00410593          	addi	a1,sp,4
 3a0:	f65ff06f          	j	304 <printDec+0x48>
 3a4:	40b40433          	sub	s0,s0,a1
 3a8:	00168693          	addi	a3,a3,1
 3ac:	f95ff06f          	j	340 <printDec+0x84>

000003b0 <printf>:
 3b0:	fa010113          	addi	sp,sp,-96
 3b4:	04f12a23          	sw	a5,84(sp)
 3b8:	04410793          	addi	a5,sp,68
 3bc:	02812c23          	sw	s0,56(sp)
 3c0:	02912a23          	sw	s1,52(sp)
 3c4:	03212823          	sw	s2,48(sp)
 3c8:	03312623          	sw	s3,44(sp)
 3cc:	03412423          	sw	s4,40(sp)
 3d0:	03512223          	sw	s5,36(sp)
 3d4:	03612023          	sw	s6,32(sp)
 3d8:	01812c23          	sw	s8,24(sp)
 3dc:	02112e23          	sw	ra,60(sp)
 3e0:	01712e23          	sw	s7,28(sp)
 3e4:	00050493          	mv	s1,a0
 3e8:	04b12223          	sw	a1,68(sp)
 3ec:	04c12423          	sw	a2,72(sp)
 3f0:	04d12623          	sw	a3,76(sp)
 3f4:	04e12823          	sw	a4,80(sp)
 3f8:	05012c23          	sw	a6,88(sp)
 3fc:	05112e23          	sw	a7,92(sp)
 400:	00f12623          	sw	a5,12(sp)
 404:	00000c13          	li	s8,0
 408:	00001437          	lui	s0,0x1
 40c:	00a00993          	li	s3,10
 410:	02500913          	li	s2,37
 414:	07800a13          	li	s4,120
 418:	06400a93          	li	s5,100
 41c:	06300b13          	li	s6,99
 420:	018487b3          	add	a5,s1,s8
 424:	0007c583          	lbu	a1,0(a5)
 428:	8ce41503          	lh	a0,-1842(s0) # 8ce <screenPos>
 42c:	02059a63          	bnez	a1,460 <_stack_size+0x60>
 430:	03c12083          	lw	ra,60(sp)
 434:	03812403          	lw	s0,56(sp)
 438:	03412483          	lw	s1,52(sp)
 43c:	03012903          	lw	s2,48(sp)
 440:	02c12983          	lw	s3,44(sp)
 444:	02812a03          	lw	s4,40(sp)
 448:	02412a83          	lw	s5,36(sp)
 44c:	02012b03          	lw	s6,32(sp)
 450:	01c12b83          	lw	s7,28(sp)
 454:	01812c03          	lw	s8,24(sp)
 458:	06010113          	addi	sp,sp,96
 45c:	00008067          	ret
 460:	001c0b93          	addi	s7,s8,1
 464:	01359e63          	bne	a1,s3,480 <_stack_size+0x80>
 468:	fc057793          	andi	a5,a0,-64
 46c:	04078793          	addi	a5,a5,64
 470:	01079793          	slli	a5,a5,0x10
 474:	4107d793          	srai	a5,a5,0x10
 478:	000c0b93          	mv	s7,s8
 47c:	0380006f          	j	4b4 <_stack_size+0xb4>
 480:	0d259263          	bne	a1,s2,544 <_stack_size+0x144>
 484:	0017c783          	lbu	a5,1(a5)
 488:	03479c63          	bne	a5,s4,4c0 <_stack_size+0xc0>
 48c:	00c12783          	lw	a5,12(sp)
 490:	00f00613          	li	a2,15
 494:	0007a583          	lw	a1,0(a5)
 498:	00478713          	addi	a4,a5,4
 49c:	00e12623          	sw	a4,12(sp)
 4a0:	d7dff0ef          	jal	21c <printHex>
 4a4:	8ce45783          	lhu	a5,-1842(s0)
 4a8:	00f507b3          	add	a5,a0,a5
 4ac:	01079793          	slli	a5,a5,0x10
 4b0:	4107d793          	srai	a5,a5,0x10
 4b4:	8cf41723          	sh	a5,-1842(s0)
 4b8:	001b8c13          	addi	s8,s7,1
 4bc:	f65ff06f          	j	420 <_stack_size+0x20>
 4c0:	03579063          	bne	a5,s5,4e0 <_stack_size+0xe0>
 4c4:	00c12783          	lw	a5,12(sp)
 4c8:	00f00613          	li	a2,15
 4cc:	0007a583          	lw	a1,0(a5)
 4d0:	00478713          	addi	a4,a5,4
 4d4:	00e12623          	sw	a4,12(sp)
 4d8:	de5ff0ef          	jal	2bc <printDec>
 4dc:	fc9ff06f          	j	4a4 <_stack_size+0xa4>
 4e0:	03679463          	bne	a5,s6,508 <_stack_size+0x108>
 4e4:	00c12783          	lw	a5,12(sp)
 4e8:	00f00613          	li	a2,15
 4ec:	0007c583          	lbu	a1,0(a5)
 4f0:	00478713          	addi	a4,a5,4
 4f4:	00e12623          	sw	a4,12(sp)
 4f8:	c35ff0ef          	jal	12c <putch>
 4fc:	8ce45783          	lhu	a5,-1842(s0)
 500:	00178793          	addi	a5,a5,1
 504:	fa9ff06f          	j	4ac <_stack_size+0xac>
 508:	07300713          	li	a4,115
 50c:	02e79063          	bne	a5,a4,52c <_stack_size+0x12c>
 510:	00c12783          	lw	a5,12(sp)
 514:	00f00613          	li	a2,15
 518:	0007a583          	lw	a1,0(a5)
 51c:	00478713          	addi	a4,a5,4
 520:	00e12623          	sw	a4,12(sp)
 524:	c39ff0ef          	jal	15c <printString>
 528:	f7dff06f          	j	4a4 <_stack_size+0xa4>
 52c:	00f00613          	li	a2,15
 530:	00090593          	mv	a1,s2
 534:	bf9ff0ef          	jal	12c <putch>
 538:	8ce45783          	lhu	a5,-1842(s0)
 53c:	00178793          	addi	a5,a5,1
 540:	f31ff06f          	j	470 <_stack_size+0x70>
 544:	00f00613          	li	a2,15
 548:	fedff06f          	j	534 <_stack_size+0x134>

0000054c <printfSCR>:
 54c:	f9010113          	addi	sp,sp,-112
 550:	06f12223          	sw	a5,100(sp)
 554:	05c10793          	addi	a5,sp,92
 558:	04812423          	sw	s0,72(sp)
 55c:	04912223          	sw	s1,68(sp)
 560:	05212023          	sw	s2,64(sp)
 564:	03412c23          	sw	s4,56(sp)
 568:	03512a23          	sw	s5,52(sp)
 56c:	03612823          	sw	s6,48(sp)
 570:	03712623          	sw	s7,44(sp)
 574:	03812423          	sw	s8,40(sp)
 578:	03912223          	sw	s9,36(sp)
 57c:	03a12023          	sw	s10,32(sp)
 580:	01b12e23          	sw	s11,28(sp)
 584:	04112623          	sw	ra,76(sp)
 588:	03312e23          	sw	s3,60(sp)
 58c:	00050a93          	mv	s5,a0
 590:	00058493          	mv	s1,a1
 594:	00060a13          	mv	s4,a2
 598:	04d12e23          	sw	a3,92(sp)
 59c:	06e12023          	sw	a4,96(sp)
 5a0:	07012423          	sw	a6,104(sp)
 5a4:	07112623          	sw	a7,108(sp)
 5a8:	00f12623          	sw	a5,12(sp)
 5ac:	00000913          	li	s2,0
 5b0:	00000413          	li	s0,0
 5b4:	00a00b93          	li	s7,10
 5b8:	02500b13          	li	s6,37
 5bc:	07800c13          	li	s8,120
 5c0:	06400c93          	li	s9,100
 5c4:	06300d13          	li	s10,99
 5c8:	07300d93          	li	s11,115
 5cc:	012a07b3          	add	a5,s4,s2
 5d0:	0007c583          	lbu	a1,0(a5)
 5d4:	04059263          	bnez	a1,618 <printfSCR+0xcc>
 5d8:	04c12083          	lw	ra,76(sp)
 5dc:	00040513          	mv	a0,s0
 5e0:	04812403          	lw	s0,72(sp)
 5e4:	04412483          	lw	s1,68(sp)
 5e8:	04012903          	lw	s2,64(sp)
 5ec:	03c12983          	lw	s3,60(sp)
 5f0:	03812a03          	lw	s4,56(sp)
 5f4:	03412a83          	lw	s5,52(sp)
 5f8:	03012b03          	lw	s6,48(sp)
 5fc:	02c12b83          	lw	s7,44(sp)
 600:	02812c03          	lw	s8,40(sp)
 604:	02412c83          	lw	s9,36(sp)
 608:	02012d03          	lw	s10,32(sp)
 60c:	01c12d83          	lw	s11,28(sp)
 610:	07010113          	addi	sp,sp,112
 614:	00008067          	ret
 618:	00190993          	addi	s3,s2,1
 61c:	01759a63          	bne	a1,s7,630 <printfSCR+0xe4>
 620:	fc047413          	andi	s0,s0,-64
 624:	04040413          	addi	s0,s0,64
 628:	00090993          	mv	s3,s2
 62c:	0740006f          	j	6a0 <printfSCR+0x154>
 630:	01540533          	add	a0,s0,s5
 634:	0b659463          	bne	a1,s6,6dc <printfSCR+0x190>
 638:	0017c783          	lbu	a5,1(a5)
 63c:	03879263          	bne	a5,s8,660 <printfSCR+0x114>
 640:	00c12783          	lw	a5,12(sp)
 644:	00048613          	mv	a2,s1
 648:	0007a583          	lw	a1,0(a5)
 64c:	00478713          	addi	a4,a5,4
 650:	00e12623          	sw	a4,12(sp)
 654:	bc9ff0ef          	jal	21c <printHex>
 658:	00a40433          	add	s0,s0,a0
 65c:	0440006f          	j	6a0 <printfSCR+0x154>
 660:	03979063          	bne	a5,s9,680 <printfSCR+0x134>
 664:	00c12783          	lw	a5,12(sp)
 668:	00048613          	mv	a2,s1
 66c:	0007a583          	lw	a1,0(a5)
 670:	00478713          	addi	a4,a5,4
 674:	00e12623          	sw	a4,12(sp)
 678:	c45ff0ef          	jal	2bc <printDec>
 67c:	fddff06f          	j	658 <printfSCR+0x10c>
 680:	03a79463          	bne	a5,s10,6a8 <printfSCR+0x15c>
 684:	00c12783          	lw	a5,12(sp)
 688:	00048613          	mv	a2,s1
 68c:	00140413          	addi	s0,s0,1
 690:	0007c583          	lbu	a1,0(a5)
 694:	00478713          	addi	a4,a5,4
 698:	00e12623          	sw	a4,12(sp)
 69c:	a91ff0ef          	jal	12c <putch>
 6a0:	00198913          	addi	s2,s3,1
 6a4:	f29ff06f          	j	5cc <printfSCR+0x80>
 6a8:	03b79063          	bne	a5,s11,6c8 <printfSCR+0x17c>
 6ac:	00c12783          	lw	a5,12(sp)
 6b0:	00048613          	mv	a2,s1
 6b4:	0007a583          	lw	a1,0(a5)
 6b8:	00478713          	addi	a4,a5,4
 6bc:	00e12623          	sw	a4,12(sp)
 6c0:	a9dff0ef          	jal	15c <printString>
 6c4:	f95ff06f          	j	658 <printfSCR+0x10c>
 6c8:	00048613          	mv	a2,s1
 6cc:	000b0593          	mv	a1,s6
 6d0:	a5dff0ef          	jal	12c <putch>
 6d4:	00140413          	addi	s0,s0,1
 6d8:	f51ff06f          	j	628 <printfSCR+0xdc>
 6dc:	00048613          	mv	a2,s1
 6e0:	ff1ff06f          	j	6d0 <printfSCR+0x184>

000006e4 <clearScreen>:
 6e4:	ff010113          	addi	sp,sp,-16
 6e8:	00812423          	sw	s0,8(sp)
 6ec:	00912223          	sw	s1,4(sp)
 6f0:	00112623          	sw	ra,12(sp)
 6f4:	00000413          	li	s0,0
 6f8:	4c000493          	li	s1,1216
 6fc:	00040513          	mv	a0,s0
 700:	00f00613          	li	a2,15
 704:	02000593          	li	a1,32
 708:	00140413          	addi	s0,s0,1
 70c:	a21ff0ef          	jal	12c <putch>
 710:	fe9416e3          	bne	s0,s1,6fc <clearScreen+0x18>
 714:	00c12083          	lw	ra,12(sp)
 718:	00812403          	lw	s0,8(sp)
 71c:	000017b7          	lui	a5,0x1
 720:	8c079723          	sh	zero,-1842(a5) # 8ce <screenPos>
 724:	00412483          	lw	s1,4(sp)
 728:	01010113          	addi	sp,sp,16
 72c:	00008067          	ret

00000730 <resetScreenVector>:
 730:	000017b7          	lui	a5,0x1
 734:	8c079723          	sh	zero,-1842(a5) # 8ce <screenPos>
 738:	00008067          	ret
 73c:	2710                	.insn	2, 0x2710
 73e:	0000                	.insn	2, 0x
 740:	03e8                	.insn	2, 0x03e8
 742:	0000                	.insn	2, 0x
 744:	0064                	.insn	2, 0x0064
 746:	0000                	.insn	2, 0x
 748:	000a                	.insn	2, 0x000a
 74a:	0000                	.insn	2, 0x
 74c:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00000750 <main>:
 750:	fd010113          	addi	sp,sp,-48
 754:	000015b7          	lui	a1,0x1
 758:	00b00613          	li	a2,11
 75c:	8a858593          	addi	a1,a1,-1880 # 8a8 <_stack_bottom+0xa8>
 760:	01410513          	addi	a0,sp,20
 764:	02112623          	sw	ra,44(sp)
 768:	945ff0ef          	jal	ac <memcpy>
 76c:	deadc5b7          	lui	a1,0xdeadc
 770:	004007b7          	lui	a5,0x400
 774:	eef58593          	addi	a1,a1,-273 # deadbeef <_stack_end+0xdeadaeef>
 778:	00001537          	lui	a0,0x1
 77c:	00b7a023          	sw	a1,0(a5) # 400000 <_stack_end+0x3ff000>
 780:	87050513          	addi	a0,a0,-1936 # 870 <_stack_bottom+0x70>
 784:	c2dff0ef          	jal	3b0 <printf>
 788:	0007a7b7          	lui	a5,0x7a
 78c:	00012223          	sw	zero,4(sp)
 790:	11f78793          	addi	a5,a5,287 # 7a11f <_stack_end+0x7911f>
 794:	00412703          	lw	a4,4(sp)
 798:	06e7de63          	bge	a5,a4,814 <_stack_bottom+0x14>
 79c:	004007b7          	lui	a5,0x400
 7a0:	0007a583          	lw	a1,0(a5) # 400000 <_stack_end+0x3ff000>
 7a4:	00001537          	lui	a0,0x1
 7a8:	88050513          	addi	a0,a0,-1920 # 880 <_stack_bottom+0x80>
 7ac:	c05ff0ef          	jal	3b0 <printf>
 7b0:	0007a7b7          	lui	a5,0x7a
 7b4:	00012423          	sw	zero,8(sp)
 7b8:	11f78793          	addi	a5,a5,287 # 7a11f <_stack_end+0x7911f>
 7bc:	00812703          	lw	a4,8(sp)
 7c0:	06e7d263          	bge	a5,a4,824 <_stack_bottom+0x24>
 7c4:	00001537          	lui	a0,0x1
 7c8:	01410593          	addi	a1,sp,20
 7cc:	89050513          	addi	a0,a0,-1904 # 890 <_stack_bottom+0x90>
 7d0:	be1ff0ef          	jal	3b0 <printf>
 7d4:	00a00693          	li	a3,10
 7d8:	00012623          	sw	zero,12(sp)
 7dc:	00400637          	lui	a2,0x400
 7e0:	00c12783          	lw	a5,12(sp)
 7e4:	04f6d863          	bge	a3,a5,834 <_stack_bottom+0x34>
 7e8:	0007a7b7          	lui	a5,0x7a
 7ec:	00012823          	sw	zero,16(sp)
 7f0:	11f78793          	addi	a5,a5,287 # 7a11f <_stack_end+0x7911f>
 7f4:	01012703          	lw	a4,16(sp)
 7f8:	06e7d463          	bge	a5,a4,860 <_stack_bottom+0x60>
 7fc:	004005b7          	lui	a1,0x400
 800:	00001537          	lui	a0,0x1
 804:	00858593          	addi	a1,a1,8 # 400008 <_stack_end+0x3ff008>
 808:	89c50513          	addi	a0,a0,-1892 # 89c <_stack_bottom+0x9c>
 80c:	ba5ff0ef          	jal	3b0 <printf>
 810:	0000006f          	j	810 <_stack_bottom+0x10>
 814:	00412703          	lw	a4,4(sp)
 818:	00170713          	addi	a4,a4,1
 81c:	00e12223          	sw	a4,4(sp)
 820:	f75ff06f          	j	794 <main+0x44>
 824:	00812703          	lw	a4,8(sp)
 828:	00170713          	addi	a4,a4,1
 82c:	00e12423          	sw	a4,8(sp)
 830:	f8dff06f          	j	7bc <main+0x6c>
 834:	00c12703          	lw	a4,12(sp)
 838:	00c12783          	lw	a5,12(sp)
 83c:	02070713          	addi	a4,a4,32
 840:	00270733          	add	a4,a4,sp
 844:	ff474703          	lbu	a4,-12(a4)
 848:	00f607b3          	add	a5,a2,a5
 84c:	00e78423          	sb	a4,8(a5)
 850:	00c12783          	lw	a5,12(sp)
 854:	00178793          	addi	a5,a5,1
 858:	00f12623          	sw	a5,12(sp)
 85c:	f85ff06f          	j	7e0 <main+0x90>
 860:	01012703          	lw	a4,16(sp)
 864:	00170713          	addi	a4,a4,1
 868:	00e12823          	sw	a4,16(sp)
 86c:	f89ff06f          	j	7f4 <main+0xa4>
