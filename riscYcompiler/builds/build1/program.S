
builds/build1/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00001117          	auipc	sp,0x1
   4:	c0010113          	addi	sp,sp,-1024 # c00 <_stack_top>
   8:	058000ef          	jal	60 <main>
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

00000060 <main>:
  60:	ff010113          	addi	sp,sp,-16
  64:	00112623          	sw	ra,12(sp)
  68:	00812423          	sw	s0,8(sp)
  6c:	01010413          	addi	s0,sp,16
  70:	000017b7          	lui	a5,0x1
  74:	88478613          	addi	a2,a5,-1916 # 884 <_stack_bottom+0x84>
  78:	00f00593          	li	a1,15
  7c:	00000513          	li	a0,0
  80:	588000ef          	jal	608 <printf>
  84:	000027b7          	lui	a5,0x2
  88:	b3978713          	addi	a4,a5,-1223 # 1b39 <_stack_end+0xb39>
  8c:	000017b7          	lui	a5,0x1
  90:	23478693          	addi	a3,a5,564 # 1234 <_stack_end+0x234>
  94:	000017b7          	lui	a5,0x1
  98:	89478613          	addi	a2,a5,-1900 # 894 <_stack_bottom+0x94>
  9c:	00f00593          	li	a1,15
  a0:	00000513          	li	a0,0
  a4:	564000ef          	jal	608 <printf>
  a8:	00000013          	nop
  ac:	ffdff06f          	j	a8 <main+0x48>

000000b0 <memcpy>:
  b0:	fd010113          	addi	sp,sp,-48
  b4:	02812623          	sw	s0,44(sp)
  b8:	03010413          	addi	s0,sp,48
  bc:	fca42e23          	sw	a0,-36(s0)
  c0:	fcb42c23          	sw	a1,-40(s0)
  c4:	fcc42a23          	sw	a2,-44(s0)
  c8:	fdc42783          	lw	a5,-36(s0)
  cc:	fef42423          	sw	a5,-24(s0)
  d0:	fd842783          	lw	a5,-40(s0)
  d4:	fef42223          	sw	a5,-28(s0)
  d8:	fe042623          	sw	zero,-20(s0)
  dc:	0300006f          	j	10c <memcpy+0x5c>
  e0:	fec42783          	lw	a5,-20(s0)
  e4:	fe442703          	lw	a4,-28(s0)
  e8:	00f70733          	add	a4,a4,a5
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	fe842683          	lw	a3,-24(s0)
  f4:	00f687b3          	add	a5,a3,a5
  f8:	00074703          	lbu	a4,0(a4)
  fc:	00e78023          	sb	a4,0(a5)
 100:	fec42783          	lw	a5,-20(s0)
 104:	00178793          	addi	a5,a5,1
 108:	fef42623          	sw	a5,-20(s0)
 10c:	fec42703          	lw	a4,-20(s0)
 110:	fd442783          	lw	a5,-44(s0)
 114:	fcf746e3          	blt	a4,a5,e0 <memcpy+0x30>
 118:	fdc42783          	lw	a5,-36(s0)
 11c:	00078513          	mv	a0,a5
 120:	02c12403          	lw	s0,44(sp)
 124:	03010113          	addi	sp,sp,48
 128:	00008067          	ret

0000012c <getButtonDown>:
 12c:	fe010113          	addi	sp,sp,-32
 130:	00812e23          	sw	s0,28(sp)
 134:	02010413          	addi	s0,sp,32
 138:	890007b7          	lui	a5,0x89000
 13c:	fef42623          	sw	a5,-20(s0)
 140:	fec42783          	lw	a5,-20(s0)
 144:	0017c783          	lbu	a5,1(a5) # 89000001 <_stack_end+0x88fff001>
 148:	00078513          	mv	a0,a5
 14c:	01c12403          	lw	s0,28(sp)
 150:	02010113          	addi	sp,sp,32
 154:	00008067          	ret

00000158 <getButtonUp>:
 158:	fe010113          	addi	sp,sp,-32
 15c:	00812e23          	sw	s0,28(sp)
 160:	02010413          	addi	s0,sp,32
 164:	890007b7          	lui	a5,0x89000
 168:	fef42623          	sw	a5,-20(s0)
 16c:	fec42783          	lw	a5,-20(s0)
 170:	0007c783          	lbu	a5,0(a5) # 89000000 <_stack_end+0x88fff000>
 174:	00078513          	mv	a0,a5
 178:	01c12403          	lw	s0,28(sp)
 17c:	02010113          	addi	sp,sp,32
 180:	00008067          	ret

00000184 <getButtonLeft>:
 184:	fe010113          	addi	sp,sp,-32
 188:	00812e23          	sw	s0,28(sp)
 18c:	02010413          	addi	s0,sp,32
 190:	890007b7          	lui	a5,0x89000
 194:	fef42623          	sw	a5,-20(s0)
 198:	fec42783          	lw	a5,-20(s0)
 19c:	0027c783          	lbu	a5,2(a5) # 89000002 <_stack_end+0x88fff002>
 1a0:	00078513          	mv	a0,a5
 1a4:	01c12403          	lw	s0,28(sp)
 1a8:	02010113          	addi	sp,sp,32
 1ac:	00008067          	ret

000001b0 <getButtonRight>:
 1b0:	fe010113          	addi	sp,sp,-32
 1b4:	00812e23          	sw	s0,28(sp)
 1b8:	02010413          	addi	s0,sp,32
 1bc:	890007b7          	lui	a5,0x89000
 1c0:	fef42623          	sw	a5,-20(s0)
 1c4:	fec42783          	lw	a5,-20(s0)
 1c8:	0037c783          	lbu	a5,3(a5) # 89000003 <_stack_end+0x88fff003>
 1cc:	00078513          	mv	a0,a5
 1d0:	01c12403          	lw	s0,28(sp)
 1d4:	02010113          	addi	sp,sp,32
 1d8:	00008067          	ret

000001dc <putch>:
 1dc:	fd010113          	addi	sp,sp,-48
 1e0:	02812623          	sw	s0,44(sp)
 1e4:	03010413          	addi	s0,sp,48
 1e8:	fca42e23          	sw	a0,-36(s0)
 1ec:	00058793          	mv	a5,a1
 1f0:	00060713          	mv	a4,a2
 1f4:	fcf40da3          	sb	a5,-37(s0)
 1f8:	00070793          	mv	a5,a4
 1fc:	fcf40d23          	sb	a5,-38(s0)
 200:	fdc42703          	lw	a4,-36(s0)
 204:	4c000793          	li	a5,1216
 208:	00e7c663          	blt	a5,a4,214 <putch+0x38>
 20c:	fdc42783          	lw	a5,-36(s0)
 210:	0007d663          	bgez	a5,21c <putch+0x40>
 214:	00000793          	li	a5,0
 218:	05c0006f          	j	274 <putch+0x98>
 21c:	880007b7          	lui	a5,0x88000
 220:	fef42623          	sw	a5,-20(s0)
 224:	fda44783          	lbu	a5,-38(s0)
 228:	01079793          	slli	a5,a5,0x10
 22c:	4107d793          	srai	a5,a5,0x10
 230:	00879793          	slli	a5,a5,0x8
 234:	01079713          	slli	a4,a5,0x10
 238:	41075713          	srai	a4,a4,0x10
 23c:	fdb44783          	lbu	a5,-37(s0)
 240:	01079793          	slli	a5,a5,0x10
 244:	4107d793          	srai	a5,a5,0x10
 248:	00f767b3          	or	a5,a4,a5
 24c:	01079793          	slli	a5,a5,0x10
 250:	4107d793          	srai	a5,a5,0x10
 254:	fef41523          	sh	a5,-22(s0)
 258:	fdc42783          	lw	a5,-36(s0)
 25c:	00179793          	slli	a5,a5,0x1
 260:	fec42703          	lw	a4,-20(s0)
 264:	00f707b3          	add	a5,a4,a5
 268:	fea45703          	lhu	a4,-22(s0)
 26c:	00e79023          	sh	a4,0(a5) # 88000000 <_stack_end+0x87fff000>
 270:	00100793          	li	a5,1
 274:	00078513          	mv	a0,a5
 278:	02c12403          	lw	s0,44(sp)
 27c:	03010113          	addi	sp,sp,48
 280:	00008067          	ret

00000284 <printString>:
 284:	fd010113          	addi	sp,sp,-48
 288:	02112623          	sw	ra,44(sp)
 28c:	02812423          	sw	s0,40(sp)
 290:	03010413          	addi	s0,sp,48
 294:	fca42e23          	sw	a0,-36(s0)
 298:	fcb42c23          	sw	a1,-40(s0)
 29c:	00060793          	mv	a5,a2
 2a0:	fcf40ba3          	sb	a5,-41(s0)
 2a4:	fe042623          	sw	zero,-20(s0)
 2a8:	fe0405a3          	sb	zero,-21(s0)
 2ac:	fd744783          	lbu	a5,-41(s0)
 2b0:	08079863          	bnez	a5,340 <printString+0xbc>
 2b4:	00100793          	li	a5,1
 2b8:	fef405a3          	sb	a5,-21(s0)
 2bc:	00100793          	li	a5,1
 2c0:	fcf40ba3          	sb	a5,-41(s0)
 2c4:	07c0006f          	j	340 <printString+0xbc>
 2c8:	fdc42703          	lw	a4,-36(s0)
 2cc:	fec42783          	lw	a5,-20(s0)
 2d0:	00f706b3          	add	a3,a4,a5
 2d4:	fec42783          	lw	a5,-20(s0)
 2d8:	fd842703          	lw	a4,-40(s0)
 2dc:	00f707b3          	add	a5,a4,a5
 2e0:	0007c783          	lbu	a5,0(a5)
 2e4:	fd744703          	lbu	a4,-41(s0)
 2e8:	00070613          	mv	a2,a4
 2ec:	00078593          	mv	a1,a5
 2f0:	00068513          	mv	a0,a3
 2f4:	ee9ff0ef          	jal	1dc <putch>
 2f8:	00050793          	mv	a5,a0
 2fc:	00079663          	bnez	a5,308 <printString+0x84>
 300:	00000793          	li	a5,0
 304:	0540006f          	j	358 <printString+0xd4>
 308:	fec42783          	lw	a5,-20(s0)
 30c:	00178793          	addi	a5,a5,1
 310:	fef42623          	sw	a5,-20(s0)
 314:	feb44703          	lbu	a4,-21(s0)
 318:	00100793          	li	a5,1
 31c:	02f71263          	bne	a4,a5,340 <printString+0xbc>
 320:	fd744783          	lbu	a5,-41(s0)
 324:	00178793          	addi	a5,a5,1
 328:	fcf40ba3          	sb	a5,-41(s0)
 32c:	fd744703          	lbu	a4,-41(s0)
 330:	00f00793          	li	a5,15
 334:	00e7f663          	bgeu	a5,a4,340 <printString+0xbc>
 338:	00100793          	li	a5,1
 33c:	fcf40ba3          	sb	a5,-41(s0)
 340:	fec42783          	lw	a5,-20(s0)
 344:	fd842703          	lw	a4,-40(s0)
 348:	00f707b3          	add	a5,a4,a5
 34c:	0007c783          	lbu	a5,0(a5)
 350:	f6079ce3          	bnez	a5,2c8 <printString+0x44>
 354:	fec42783          	lw	a5,-20(s0)
 358:	00078513          	mv	a0,a5
 35c:	02c12083          	lw	ra,44(sp)
 360:	02812403          	lw	s0,40(sp)
 364:	03010113          	addi	sp,sp,48
 368:	00008067          	ret

0000036c <printHex>:
 36c:	fb010113          	addi	sp,sp,-80
 370:	04112623          	sw	ra,76(sp)
 374:	04812423          	sw	s0,72(sp)
 378:	05010413          	addi	s0,sp,80
 37c:	faa42e23          	sw	a0,-68(s0)
 380:	fab42c23          	sw	a1,-72(s0)
 384:	00060793          	mv	a5,a2
 388:	faf40ba3          	sb	a5,-73(s0)
 38c:	000017b7          	lui	a5,0x1
 390:	8b478793          	addi	a5,a5,-1868 # 8b4 <_stack_bottom+0xb4>
 394:	0007a583          	lw	a1,0(a5)
 398:	0047a603          	lw	a2,4(a5)
 39c:	0087a683          	lw	a3,8(a5)
 3a0:	00c7a703          	lw	a4,12(a5)
 3a4:	fcb42c23          	sw	a1,-40(s0)
 3a8:	fcc42e23          	sw	a2,-36(s0)
 3ac:	fed42023          	sw	a3,-32(s0)
 3b0:	fee42223          	sw	a4,-28(s0)
 3b4:	0107c783          	lbu	a5,16(a5)
 3b8:	fef40423          	sb	a5,-24(s0)
 3bc:	202027b7          	lui	a5,0x20202
 3c0:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 3c4:	fcf42623          	sw	a5,-52(s0)
 3c8:	202027b7          	lui	a5,0x20202
 3cc:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 3d0:	fcf42823          	sw	a5,-48(s0)
 3d4:	fc040a23          	sb	zero,-44(s0)
 3d8:	fc040a23          	sb	zero,-44(s0)
 3dc:	00700793          	li	a5,7
 3e0:	fef42623          	sw	a5,-20(s0)
 3e4:	0400006f          	j	424 <_stack_size+0x24>
 3e8:	fb842783          	lw	a5,-72(s0)
 3ec:	00f7f793          	andi	a5,a5,15
 3f0:	ff078793          	addi	a5,a5,-16
 3f4:	008787b3          	add	a5,a5,s0
 3f8:	fe87c703          	lbu	a4,-24(a5)
 3fc:	fec42783          	lw	a5,-20(s0)
 400:	ff078793          	addi	a5,a5,-16
 404:	008787b3          	add	a5,a5,s0
 408:	fce78e23          	sb	a4,-36(a5)
 40c:	fb842783          	lw	a5,-72(s0)
 410:	4047d793          	srai	a5,a5,0x4
 414:	faf42c23          	sw	a5,-72(s0)
 418:	fec42783          	lw	a5,-20(s0)
 41c:	fff78793          	addi	a5,a5,-1
 420:	fef42623          	sw	a5,-20(s0)
 424:	fec42783          	lw	a5,-20(s0)
 428:	fc07d0e3          	bgez	a5,3e8 <printHex+0x7c>
 42c:	fb744703          	lbu	a4,-73(s0)
 430:	fcc40793          	addi	a5,s0,-52
 434:	00070613          	mv	a2,a4
 438:	00078593          	mv	a1,a5
 43c:	fbc42503          	lw	a0,-68(s0)
 440:	e45ff0ef          	jal	284 <printString>
 444:	00050793          	mv	a5,a0
 448:	0ff7f793          	zext.b	a5,a5
 44c:	00078513          	mv	a0,a5
 450:	04c12083          	lw	ra,76(sp)
 454:	04812403          	lw	s0,72(sp)
 458:	05010113          	addi	sp,sp,80
 45c:	00008067          	ret

00000460 <printDec>:
 460:	fb010113          	addi	sp,sp,-80
 464:	04112623          	sw	ra,76(sp)
 468:	04812423          	sw	s0,72(sp)
 46c:	05010413          	addi	s0,sp,80
 470:	faa42e23          	sw	a0,-68(s0)
 474:	fab42c23          	sw	a1,-72(s0)
 478:	00060793          	mv	a5,a2
 47c:	faf40ba3          	sb	a5,-73(s0)
 480:	fe042623          	sw	zero,-20(s0)
 484:	000017b7          	lui	a5,0x1
 488:	8d078793          	addi	a5,a5,-1840 # 8d0 <_stack_bottom+0xd0>
 48c:	0007a583          	lw	a1,0(a5)
 490:	0047a603          	lw	a2,4(a5)
 494:	0087a683          	lw	a3,8(a5)
 498:	00c7a703          	lw	a4,12(a5)
 49c:	0107a783          	lw	a5,16(a5)
 4a0:	fcb42023          	sw	a1,-64(s0)
 4a4:	fcc42223          	sw	a2,-60(s0)
 4a8:	fcd42423          	sw	a3,-56(s0)
 4ac:	fce42623          	sw	a4,-52(s0)
 4b0:	fcf42823          	sw	a5,-48(s0)
 4b4:	00100793          	li	a5,1
 4b8:	fef42423          	sw	a5,-24(s0)
 4bc:	fb842703          	lw	a4,-72(s0)
 4c0:	000187b7          	lui	a5,0x18
 4c4:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 4c8:	02e7f463          	bgeu	a5,a4,4f0 <printDec+0x90>
 4cc:	fb744783          	lbu	a5,-73(s0)
 4d0:	00078613          	mv	a2,a5
 4d4:	000017b7          	lui	a5,0x1
 4d8:	8c878593          	addi	a1,a5,-1848 # 8c8 <_stack_bottom+0xc8>
 4dc:	fbc42503          	lw	a0,-68(s0)
 4e0:	da5ff0ef          	jal	284 <printString>
 4e4:	00050793          	mv	a5,a0
 4e8:	0ff7f793          	zext.b	a5,a5
 4ec:	1080006f          	j	5f4 <printDec+0x194>
 4f0:	fe042223          	sw	zero,-28(s0)
 4f4:	0a00006f          	j	594 <printDec+0x134>
 4f8:	fe442783          	lw	a5,-28(s0)
 4fc:	00279793          	slli	a5,a5,0x2
 500:	ff078793          	addi	a5,a5,-16
 504:	008787b3          	add	a5,a5,s0
 508:	fd07a783          	lw	a5,-48(a5)
 50c:	fcf42e23          	sw	a5,-36(s0)
 510:	fe042023          	sw	zero,-32(s0)
 514:	0200006f          	j	534 <printDec+0xd4>
 518:	fb842703          	lw	a4,-72(s0)
 51c:	fdc42783          	lw	a5,-36(s0)
 520:	40f707b3          	sub	a5,a4,a5
 524:	faf42c23          	sw	a5,-72(s0)
 528:	fe042783          	lw	a5,-32(s0)
 52c:	00178793          	addi	a5,a5,1
 530:	fef42023          	sw	a5,-32(s0)
 534:	fb842703          	lw	a4,-72(s0)
 538:	fdc42783          	lw	a5,-36(s0)
 53c:	fcf77ee3          	bgeu	a4,a5,518 <printDec+0xb8>
 540:	fe042783          	lw	a5,-32(s0)
 544:	00079c63          	bnez	a5,55c <printDec+0xfc>
 548:	fdc42703          	lw	a4,-36(s0)
 54c:	00100793          	li	a5,1
 550:	00f70663          	beq	a4,a5,55c <printDec+0xfc>
 554:	fe842783          	lw	a5,-24(s0)
 558:	02079863          	bnez	a5,588 <printDec+0x128>
 55c:	fe042783          	lw	a5,-32(s0)
 560:	0ff7f713          	zext.b	a4,a5
 564:	fec42783          	lw	a5,-20(s0)
 568:	00178693          	addi	a3,a5,1
 56c:	fed42623          	sw	a3,-20(s0)
 570:	03070713          	addi	a4,a4,48
 574:	0ff77713          	zext.b	a4,a4
 578:	ff078793          	addi	a5,a5,-16
 57c:	008787b3          	add	a5,a5,s0
 580:	fee78223          	sb	a4,-28(a5)
 584:	fe042423          	sw	zero,-24(s0)
 588:	fe442783          	lw	a5,-28(s0)
 58c:	00178793          	addi	a5,a5,1
 590:	fef42223          	sw	a5,-28(s0)
 594:	fe442703          	lw	a4,-28(s0)
 598:	00400793          	li	a5,4
 59c:	f4e7dee3          	bge	a5,a4,4f8 <printDec+0x98>
 5a0:	fe842783          	lw	a5,-24(s0)
 5a4:	02078063          	beqz	a5,5c4 <printDec+0x164>
 5a8:	fec42783          	lw	a5,-20(s0)
 5ac:	00178713          	addi	a4,a5,1
 5b0:	fee42623          	sw	a4,-20(s0)
 5b4:	ff078793          	addi	a5,a5,-16
 5b8:	008787b3          	add	a5,a5,s0
 5bc:	03000713          	li	a4,48
 5c0:	fee78223          	sb	a4,-28(a5)
 5c4:	fec42783          	lw	a5,-20(s0)
 5c8:	ff078793          	addi	a5,a5,-16
 5cc:	008787b3          	add	a5,a5,s0
 5d0:	fe078223          	sb	zero,-28(a5)
 5d4:	fb744703          	lbu	a4,-73(s0)
 5d8:	fd440793          	addi	a5,s0,-44
 5dc:	00070613          	mv	a2,a4
 5e0:	00078593          	mv	a1,a5
 5e4:	fbc42503          	lw	a0,-68(s0)
 5e8:	c9dff0ef          	jal	284 <printString>
 5ec:	00050793          	mv	a5,a0
 5f0:	0ff7f793          	zext.b	a5,a5
 5f4:	00078513          	mv	a0,a5
 5f8:	04c12083          	lw	ra,76(sp)
 5fc:	04812403          	lw	s0,72(sp)
 600:	05010113          	addi	sp,sp,80
 604:	00008067          	ret

00000608 <printf>:
 608:	fa010113          	addi	sp,sp,-96
 60c:	02112e23          	sw	ra,60(sp)
 610:	02812c23          	sw	s0,56(sp)
 614:	04010413          	addi	s0,sp,64
 618:	fca42623          	sw	a0,-52(s0)
 61c:	fcc42223          	sw	a2,-60(s0)
 620:	00d42623          	sw	a3,12(s0)
 624:	00e42823          	sw	a4,16(s0)
 628:	00f42a23          	sw	a5,20(s0)
 62c:	01042c23          	sw	a6,24(s0)
 630:	01142e23          	sw	a7,28(s0)
 634:	00058793          	mv	a5,a1
 638:	fcf405a3          	sb	a5,-53(s0)
 63c:	02040793          	addi	a5,s0,32
 640:	fcf42023          	sw	a5,-64(s0)
 644:	fc042783          	lw	a5,-64(s0)
 648:	fec78793          	addi	a5,a5,-20
 64c:	fcf42c23          	sw	a5,-40(s0)
 650:	fe042623          	sw	zero,-20(s0)
 654:	fe042423          	sw	zero,-24(s0)
 658:	fe042423          	sw	zero,-24(s0)
 65c:	1fc0006f          	j	858 <_stack_bottom+0x58>
 660:	fe842783          	lw	a5,-24(s0)
 664:	fc442703          	lw	a4,-60(s0)
 668:	00f707b3          	add	a5,a4,a5
 66c:	0007c703          	lbu	a4,0(a5)
 670:	02500793          	li	a5,37
 674:	18f71e63          	bne	a4,a5,810 <_stack_bottom+0x10>
 678:	fe842783          	lw	a5,-24(s0)
 67c:	00178793          	addi	a5,a5,1
 680:	fc442703          	lw	a4,-60(s0)
 684:	00f707b3          	add	a5,a4,a5
 688:	0007c703          	lbu	a4,0(a5)
 68c:	07800793          	li	a5,120
 690:	04f71e63          	bne	a4,a5,6ec <printf+0xe4>
 694:	fe842783          	lw	a5,-24(s0)
 698:	00178793          	addi	a5,a5,1
 69c:	fef42423          	sw	a5,-24(s0)
 6a0:	fd842783          	lw	a5,-40(s0)
 6a4:	00478713          	addi	a4,a5,4
 6a8:	fce42c23          	sw	a4,-40(s0)
 6ac:	0007a783          	lw	a5,0(a5)
 6b0:	fcf42e23          	sw	a5,-36(s0)
 6b4:	fcc42703          	lw	a4,-52(s0)
 6b8:	fec42783          	lw	a5,-20(s0)
 6bc:	00f707b3          	add	a5,a4,a5
 6c0:	fcb44703          	lbu	a4,-53(s0)
 6c4:	00070613          	mv	a2,a4
 6c8:	fdc42583          	lw	a1,-36(s0)
 6cc:	00078513          	mv	a0,a5
 6d0:	c9dff0ef          	jal	36c <printHex>
 6d4:	00050793          	mv	a5,a0
 6d8:	00078713          	mv	a4,a5
 6dc:	fec42783          	lw	a5,-20(s0)
 6e0:	00e787b3          	add	a5,a5,a4
 6e4:	fef42623          	sw	a5,-20(s0)
 6e8:	1640006f          	j	84c <_stack_bottom+0x4c>
 6ec:	fe842783          	lw	a5,-24(s0)
 6f0:	00178793          	addi	a5,a5,1
 6f4:	fc442703          	lw	a4,-60(s0)
 6f8:	00f707b3          	add	a5,a4,a5
 6fc:	0007c703          	lbu	a4,0(a5)
 700:	06400793          	li	a5,100
 704:	04f71e63          	bne	a4,a5,760 <printf+0x158>
 708:	fe842783          	lw	a5,-24(s0)
 70c:	00178793          	addi	a5,a5,1
 710:	fef42423          	sw	a5,-24(s0)
 714:	fd842783          	lw	a5,-40(s0)
 718:	00478713          	addi	a4,a5,4
 71c:	fce42c23          	sw	a4,-40(s0)
 720:	0007a783          	lw	a5,0(a5)
 724:	fef42023          	sw	a5,-32(s0)
 728:	fcc42703          	lw	a4,-52(s0)
 72c:	fec42783          	lw	a5,-20(s0)
 730:	00f707b3          	add	a5,a4,a5
 734:	fcb44703          	lbu	a4,-53(s0)
 738:	00070613          	mv	a2,a4
 73c:	fe042583          	lw	a1,-32(s0)
 740:	00078513          	mv	a0,a5
 744:	d1dff0ef          	jal	460 <printDec>
 748:	00050793          	mv	a5,a0
 74c:	00078713          	mv	a4,a5
 750:	fec42783          	lw	a5,-20(s0)
 754:	00e787b3          	add	a5,a5,a4
 758:	fef42623          	sw	a5,-20(s0)
 75c:	0f00006f          	j	84c <_stack_bottom+0x4c>
 760:	fe842783          	lw	a5,-24(s0)
 764:	00178793          	addi	a5,a5,1
 768:	fc442703          	lw	a4,-60(s0)
 76c:	00f707b3          	add	a5,a4,a5
 770:	0007c703          	lbu	a4,0(a5)
 774:	06300793          	li	a5,99
 778:	04f71c63          	bne	a4,a5,7d0 <printf+0x1c8>
 77c:	fe842783          	lw	a5,-24(s0)
 780:	00178793          	addi	a5,a5,1
 784:	fef42423          	sw	a5,-24(s0)
 788:	fd842783          	lw	a5,-40(s0)
 78c:	00478713          	addi	a4,a5,4
 790:	fce42c23          	sw	a4,-40(s0)
 794:	0007a783          	lw	a5,0(a5)
 798:	fef403a3          	sb	a5,-25(s0)
 79c:	fcc42703          	lw	a4,-52(s0)
 7a0:	fec42783          	lw	a5,-20(s0)
 7a4:	00f707b3          	add	a5,a4,a5
 7a8:	fcb44683          	lbu	a3,-53(s0)
 7ac:	fe744703          	lbu	a4,-25(s0)
 7b0:	00068613          	mv	a2,a3
 7b4:	00070593          	mv	a1,a4
 7b8:	00078513          	mv	a0,a5
 7bc:	a21ff0ef          	jal	1dc <putch>
 7c0:	fec42783          	lw	a5,-20(s0)
 7c4:	00178793          	addi	a5,a5,1
 7c8:	fef42623          	sw	a5,-20(s0)
 7cc:	0800006f          	j	84c <_stack_bottom+0x4c>
 7d0:	fcc42703          	lw	a4,-52(s0)
 7d4:	fec42783          	lw	a5,-20(s0)
 7d8:	00f706b3          	add	a3,a4,a5
 7dc:	fe842783          	lw	a5,-24(s0)
 7e0:	fc442703          	lw	a4,-60(s0)
 7e4:	00f707b3          	add	a5,a4,a5
 7e8:	0007c783          	lbu	a5,0(a5)
 7ec:	fcb44703          	lbu	a4,-53(s0)
 7f0:	00070613          	mv	a2,a4
 7f4:	00078593          	mv	a1,a5
 7f8:	00068513          	mv	a0,a3
 7fc:	9e1ff0ef          	jal	1dc <putch>
 800:	fec42783          	lw	a5,-20(s0)
 804:	00178793          	addi	a5,a5,1
 808:	fef42623          	sw	a5,-20(s0)
 80c:	0400006f          	j	84c <_stack_bottom+0x4c>
 810:	fcc42703          	lw	a4,-52(s0)
 814:	fec42783          	lw	a5,-20(s0)
 818:	00f706b3          	add	a3,a4,a5
 81c:	fe842783          	lw	a5,-24(s0)
 820:	fc442703          	lw	a4,-60(s0)
 824:	00f707b3          	add	a5,a4,a5
 828:	0007c783          	lbu	a5,0(a5)
 82c:	fcb44703          	lbu	a4,-53(s0)
 830:	00070613          	mv	a2,a4
 834:	00078593          	mv	a1,a5
 838:	00068513          	mv	a0,a3
 83c:	9a1ff0ef          	jal	1dc <putch>
 840:	fec42783          	lw	a5,-20(s0)
 844:	00178793          	addi	a5,a5,1
 848:	fef42623          	sw	a5,-20(s0)
 84c:	fe842783          	lw	a5,-24(s0)
 850:	00178793          	addi	a5,a5,1
 854:	fef42423          	sw	a5,-24(s0)
 858:	fe842783          	lw	a5,-24(s0)
 85c:	fc442703          	lw	a4,-60(s0)
 860:	00f707b3          	add	a5,a4,a5
 864:	0007c783          	lbu	a5,0(a5)
 868:	de079ce3          	bnez	a5,660 <printf+0x58>
 86c:	fec42783          	lw	a5,-20(s0)
 870:	00078513          	mv	a0,a5
 874:	03c12083          	lw	ra,60(sp)
 878:	03812403          	lw	s0,56(sp)
 87c:	06010113          	addi	sp,sp,96
 880:	00008067          	ret
 884:	6548                	.insn	2, 0x6548
 886:	6c6c                	.insn	2, 0x6c6c
 888:	57202c6f          	jal	s8,2dfa <_stack_end+0x1dfa>
 88c:	646c726f          	jal	tp,c7ed2 <_stack_end+0xc6ed2>
 890:	0021                	.insn	2, 0x0021
 892:	0000                	.insn	2, 0x
 894:	6574                	.insn	2, 0x6574
 896:	6e697473          	.insn	4, 0x6e697473
 89a:	65682067          	.insn	4, 0x65682067
 89e:	3a78                	.insn	2, 0x3a78
 8a0:	3020                	.insn	2, 0x3020
 8a2:	2578                	.insn	2, 0x2578
 8a4:	2078                	.insn	2, 0x2078
 8a6:	6e61                	.insn	2, 0x6e61
 8a8:	2064                	.insn	2, 0x2064
 8aa:	756e                	.insn	2, 0x756e
 8ac:	626d                	.insn	2, 0x626d
 8ae:	7265                	.insn	2, 0x7265
 8b0:	2520                	.insn	2, 0x2520
 8b2:	0064                	.insn	2, 0x0064
 8b4:	3130                	.insn	2, 0x3130
 8b6:	3332                	.insn	2, 0x3332
 8b8:	3534                	.insn	2, 0x3534
 8ba:	3736                	.insn	2, 0x3736
 8bc:	3938                	.insn	2, 0x3938
 8be:	4241                	.insn	2, 0x4241
 8c0:	46454443          	.insn	4, 0x46454443
 8c4:	0000                	.insn	2, 0x
 8c6:	0000                	.insn	2, 0x
 8c8:	7245                	.insn	2, 0x7245
 8ca:	6f72                	.insn	2, 0x6f72
 8cc:	0072                	.insn	2, 0x0072
 8ce:	0000                	.insn	2, 0x
 8d0:	2710                	.insn	2, 0x2710
 8d2:	0000                	.insn	2, 0x
 8d4:	03e8                	.insn	2, 0x03e8
 8d6:	0000                	.insn	2, 0x
 8d8:	0064                	.insn	2, 0x0064
 8da:	0000                	.insn	2, 0x
 8dc:	000a                	.insn	2, 0x000a
 8de:	0000                	.insn	2, 0x
 8e0:	0001                	.insn	2, 0x0001
	...
