
builds/build0/program.elf:     file format elf32-littleriscv


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
  60:	fe010113          	addi	sp,sp,-32
  64:	00112e23          	sw	ra,28(sp)
  68:	00812c23          	sw	s0,24(sp)
  6c:	02010413          	addi	s0,sp,32
  70:	deadc7b7          	lui	a5,0xdeadc
  74:	eaf78793          	addi	a5,a5,-337 # deadbeaf <_stack_end+0xdeadaeaf>
  78:	fef42623          	sw	a5,-20(s0)
  7c:	000037b7          	lui	a5,0x3
  80:	03978793          	addi	a5,a5,57 # 3039 <_stack_end+0x2039>
  84:	fef42423          	sw	a5,-24(s0)
  88:	04100793          	li	a5,65
  8c:	fef403a3          	sb	a5,-25(s0)
  90:	fe842703          	lw	a4,-24(s0)
  94:	fec42683          	lw	a3,-20(s0)
  98:	000017b7          	lui	a5,0x1
  9c:	8ac78613          	addi	a2,a5,-1876 # 8ac <_stack_bottom+0xac>
  a0:	00f00593          	li	a1,15
  a4:	04000513          	li	a0,64
  a8:	588000ef          	jal	630 <printf>
  ac:	fea42023          	sw	a0,-32(s0)
  b0:	00f00613          	li	a2,15
  b4:	fe042583          	lw	a1,-32(s0)
  b8:	08000513          	li	a0,128
  bc:	2d8000ef          	jal	394 <printHex>
  c0:	00000793          	li	a5,0
  c4:	00078513          	mv	a0,a5
  c8:	01c12083          	lw	ra,28(sp)
  cc:	01812403          	lw	s0,24(sp)
  d0:	02010113          	addi	sp,sp,32
  d4:	00008067          	ret

000000d8 <memcpy>:
  d8:	fd010113          	addi	sp,sp,-48
  dc:	02812623          	sw	s0,44(sp)
  e0:	03010413          	addi	s0,sp,48
  e4:	fca42e23          	sw	a0,-36(s0)
  e8:	fcb42c23          	sw	a1,-40(s0)
  ec:	fcc42a23          	sw	a2,-44(s0)
  f0:	fdc42783          	lw	a5,-36(s0)
  f4:	fef42423          	sw	a5,-24(s0)
  f8:	fd842783          	lw	a5,-40(s0)
  fc:	fef42223          	sw	a5,-28(s0)
 100:	fe042623          	sw	zero,-20(s0)
 104:	0300006f          	j	134 <memcpy+0x5c>
 108:	fec42783          	lw	a5,-20(s0)
 10c:	fe442703          	lw	a4,-28(s0)
 110:	00f70733          	add	a4,a4,a5
 114:	fec42783          	lw	a5,-20(s0)
 118:	fe842683          	lw	a3,-24(s0)
 11c:	00f687b3          	add	a5,a3,a5
 120:	00074703          	lbu	a4,0(a4)
 124:	00e78023          	sb	a4,0(a5)
 128:	fec42783          	lw	a5,-20(s0)
 12c:	00178793          	addi	a5,a5,1
 130:	fef42623          	sw	a5,-20(s0)
 134:	fec42703          	lw	a4,-20(s0)
 138:	fd442783          	lw	a5,-44(s0)
 13c:	fcf746e3          	blt	a4,a5,108 <memcpy+0x30>
 140:	fdc42783          	lw	a5,-36(s0)
 144:	00078513          	mv	a0,a5
 148:	02c12403          	lw	s0,44(sp)
 14c:	03010113          	addi	sp,sp,48
 150:	00008067          	ret

00000154 <getButtonDown>:
 154:	fe010113          	addi	sp,sp,-32
 158:	00812e23          	sw	s0,28(sp)
 15c:	02010413          	addi	s0,sp,32
 160:	890007b7          	lui	a5,0x89000
 164:	fef42623          	sw	a5,-20(s0)
 168:	fec42783          	lw	a5,-20(s0)
 16c:	0017c783          	lbu	a5,1(a5) # 89000001 <_stack_end+0x88fff001>
 170:	00078513          	mv	a0,a5
 174:	01c12403          	lw	s0,28(sp)
 178:	02010113          	addi	sp,sp,32
 17c:	00008067          	ret

00000180 <getButtonUp>:
 180:	fe010113          	addi	sp,sp,-32
 184:	00812e23          	sw	s0,28(sp)
 188:	02010413          	addi	s0,sp,32
 18c:	890007b7          	lui	a5,0x89000
 190:	fef42623          	sw	a5,-20(s0)
 194:	fec42783          	lw	a5,-20(s0)
 198:	0007c783          	lbu	a5,0(a5) # 89000000 <_stack_end+0x88fff000>
 19c:	00078513          	mv	a0,a5
 1a0:	01c12403          	lw	s0,28(sp)
 1a4:	02010113          	addi	sp,sp,32
 1a8:	00008067          	ret

000001ac <getButtonLeft>:
 1ac:	fe010113          	addi	sp,sp,-32
 1b0:	00812e23          	sw	s0,28(sp)
 1b4:	02010413          	addi	s0,sp,32
 1b8:	890007b7          	lui	a5,0x89000
 1bc:	fef42623          	sw	a5,-20(s0)
 1c0:	fec42783          	lw	a5,-20(s0)
 1c4:	0027c783          	lbu	a5,2(a5) # 89000002 <_stack_end+0x88fff002>
 1c8:	00078513          	mv	a0,a5
 1cc:	01c12403          	lw	s0,28(sp)
 1d0:	02010113          	addi	sp,sp,32
 1d4:	00008067          	ret

000001d8 <getButtonRight>:
 1d8:	fe010113          	addi	sp,sp,-32
 1dc:	00812e23          	sw	s0,28(sp)
 1e0:	02010413          	addi	s0,sp,32
 1e4:	890007b7          	lui	a5,0x89000
 1e8:	fef42623          	sw	a5,-20(s0)
 1ec:	fec42783          	lw	a5,-20(s0)
 1f0:	0037c783          	lbu	a5,3(a5) # 89000003 <_stack_end+0x88fff003>
 1f4:	00078513          	mv	a0,a5
 1f8:	01c12403          	lw	s0,28(sp)
 1fc:	02010113          	addi	sp,sp,32
 200:	00008067          	ret

00000204 <putch>:
 204:	fd010113          	addi	sp,sp,-48
 208:	02812623          	sw	s0,44(sp)
 20c:	03010413          	addi	s0,sp,48
 210:	fca42e23          	sw	a0,-36(s0)
 214:	00058793          	mv	a5,a1
 218:	00060713          	mv	a4,a2
 21c:	fcf40da3          	sb	a5,-37(s0)
 220:	00070793          	mv	a5,a4
 224:	fcf40d23          	sb	a5,-38(s0)
 228:	fdc42703          	lw	a4,-36(s0)
 22c:	4c000793          	li	a5,1216
 230:	00e7c663          	blt	a5,a4,23c <putch+0x38>
 234:	fdc42783          	lw	a5,-36(s0)
 238:	0007d663          	bgez	a5,244 <putch+0x40>
 23c:	00000793          	li	a5,0
 240:	05c0006f          	j	29c <putch+0x98>
 244:	880007b7          	lui	a5,0x88000
 248:	fef42623          	sw	a5,-20(s0)
 24c:	fda44783          	lbu	a5,-38(s0)
 250:	01079793          	slli	a5,a5,0x10
 254:	4107d793          	srai	a5,a5,0x10
 258:	00879793          	slli	a5,a5,0x8
 25c:	01079713          	slli	a4,a5,0x10
 260:	41075713          	srai	a4,a4,0x10
 264:	fdb44783          	lbu	a5,-37(s0)
 268:	01079793          	slli	a5,a5,0x10
 26c:	4107d793          	srai	a5,a5,0x10
 270:	00f767b3          	or	a5,a4,a5
 274:	01079793          	slli	a5,a5,0x10
 278:	4107d793          	srai	a5,a5,0x10
 27c:	fef41523          	sh	a5,-22(s0)
 280:	fdc42783          	lw	a5,-36(s0)
 284:	00179793          	slli	a5,a5,0x1
 288:	fec42703          	lw	a4,-20(s0)
 28c:	00f707b3          	add	a5,a4,a5
 290:	fea45703          	lhu	a4,-22(s0)
 294:	00e79023          	sh	a4,0(a5) # 88000000 <_stack_end+0x87fff000>
 298:	00100793          	li	a5,1
 29c:	00078513          	mv	a0,a5
 2a0:	02c12403          	lw	s0,44(sp)
 2a4:	03010113          	addi	sp,sp,48
 2a8:	00008067          	ret

000002ac <printString>:
 2ac:	fd010113          	addi	sp,sp,-48
 2b0:	02112623          	sw	ra,44(sp)
 2b4:	02812423          	sw	s0,40(sp)
 2b8:	03010413          	addi	s0,sp,48
 2bc:	fca42e23          	sw	a0,-36(s0)
 2c0:	fcb42c23          	sw	a1,-40(s0)
 2c4:	00060793          	mv	a5,a2
 2c8:	fcf40ba3          	sb	a5,-41(s0)
 2cc:	fe042623          	sw	zero,-20(s0)
 2d0:	fe0405a3          	sb	zero,-21(s0)
 2d4:	fd744783          	lbu	a5,-41(s0)
 2d8:	08079863          	bnez	a5,368 <printString+0xbc>
 2dc:	00100793          	li	a5,1
 2e0:	fef405a3          	sb	a5,-21(s0)
 2e4:	00100793          	li	a5,1
 2e8:	fcf40ba3          	sb	a5,-41(s0)
 2ec:	07c0006f          	j	368 <printString+0xbc>
 2f0:	fdc42703          	lw	a4,-36(s0)
 2f4:	fec42783          	lw	a5,-20(s0)
 2f8:	00f706b3          	add	a3,a4,a5
 2fc:	fec42783          	lw	a5,-20(s0)
 300:	fd842703          	lw	a4,-40(s0)
 304:	00f707b3          	add	a5,a4,a5
 308:	0007c783          	lbu	a5,0(a5)
 30c:	fd744703          	lbu	a4,-41(s0)
 310:	00070613          	mv	a2,a4
 314:	00078593          	mv	a1,a5
 318:	00068513          	mv	a0,a3
 31c:	ee9ff0ef          	jal	204 <putch>
 320:	00050793          	mv	a5,a0
 324:	00079663          	bnez	a5,330 <printString+0x84>
 328:	00000793          	li	a5,0
 32c:	0540006f          	j	380 <printString+0xd4>
 330:	fec42783          	lw	a5,-20(s0)
 334:	00178793          	addi	a5,a5,1
 338:	fef42623          	sw	a5,-20(s0)
 33c:	feb44703          	lbu	a4,-21(s0)
 340:	00100793          	li	a5,1
 344:	02f71263          	bne	a4,a5,368 <printString+0xbc>
 348:	fd744783          	lbu	a5,-41(s0)
 34c:	00178793          	addi	a5,a5,1
 350:	fcf40ba3          	sb	a5,-41(s0)
 354:	fd744703          	lbu	a4,-41(s0)
 358:	00f00793          	li	a5,15
 35c:	00e7f663          	bgeu	a5,a4,368 <printString+0xbc>
 360:	00100793          	li	a5,1
 364:	fcf40ba3          	sb	a5,-41(s0)
 368:	fec42783          	lw	a5,-20(s0)
 36c:	fd842703          	lw	a4,-40(s0)
 370:	00f707b3          	add	a5,a4,a5
 374:	0007c783          	lbu	a5,0(a5)
 378:	f6079ce3          	bnez	a5,2f0 <printString+0x44>
 37c:	fec42783          	lw	a5,-20(s0)
 380:	00078513          	mv	a0,a5
 384:	02c12083          	lw	ra,44(sp)
 388:	02812403          	lw	s0,40(sp)
 38c:	03010113          	addi	sp,sp,48
 390:	00008067          	ret

00000394 <printHex>:
 394:	fb010113          	addi	sp,sp,-80
 398:	04112623          	sw	ra,76(sp)
 39c:	04812423          	sw	s0,72(sp)
 3a0:	05010413          	addi	s0,sp,80
 3a4:	faa42e23          	sw	a0,-68(s0)
 3a8:	fab42c23          	sw	a1,-72(s0)
 3ac:	00060793          	mv	a5,a2
 3b0:	faf40ba3          	sb	a5,-73(s0)
 3b4:	000017b7          	lui	a5,0x1
 3b8:	8c478793          	addi	a5,a5,-1852 # 8c4 <_stack_bottom+0xc4>
 3bc:	0007a583          	lw	a1,0(a5)
 3c0:	0047a603          	lw	a2,4(a5)
 3c4:	0087a683          	lw	a3,8(a5)
 3c8:	00c7a703          	lw	a4,12(a5)
 3cc:	fcb42c23          	sw	a1,-40(s0)
 3d0:	fcc42e23          	sw	a2,-36(s0)
 3d4:	fed42023          	sw	a3,-32(s0)
 3d8:	fee42223          	sw	a4,-28(s0)
 3dc:	0107c783          	lbu	a5,16(a5)
 3e0:	fef40423          	sb	a5,-24(s0)
 3e4:	202027b7          	lui	a5,0x20202
 3e8:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 3ec:	fcf42623          	sw	a5,-52(s0)
 3f0:	202027b7          	lui	a5,0x20202
 3f4:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x20201020>
 3f8:	fcf42823          	sw	a5,-48(s0)
 3fc:	fc040a23          	sb	zero,-44(s0)
 400:	fc040a23          	sb	zero,-44(s0)
 404:	00700793          	li	a5,7
 408:	fef42623          	sw	a5,-20(s0)
 40c:	0400006f          	j	44c <_stack_size+0x4c>
 410:	fb842783          	lw	a5,-72(s0)
 414:	00f7f793          	andi	a5,a5,15
 418:	ff078793          	addi	a5,a5,-16
 41c:	008787b3          	add	a5,a5,s0
 420:	fe87c703          	lbu	a4,-24(a5)
 424:	fec42783          	lw	a5,-20(s0)
 428:	ff078793          	addi	a5,a5,-16
 42c:	008787b3          	add	a5,a5,s0
 430:	fce78e23          	sb	a4,-36(a5)
 434:	fb842783          	lw	a5,-72(s0)
 438:	4047d793          	srai	a5,a5,0x4
 43c:	faf42c23          	sw	a5,-72(s0)
 440:	fec42783          	lw	a5,-20(s0)
 444:	fff78793          	addi	a5,a5,-1
 448:	fef42623          	sw	a5,-20(s0)
 44c:	fec42783          	lw	a5,-20(s0)
 450:	fc07d0e3          	bgez	a5,410 <_stack_size+0x10>
 454:	fb744703          	lbu	a4,-73(s0)
 458:	fcc40793          	addi	a5,s0,-52
 45c:	00070613          	mv	a2,a4
 460:	00078593          	mv	a1,a5
 464:	fbc42503          	lw	a0,-68(s0)
 468:	e45ff0ef          	jal	2ac <printString>
 46c:	00050793          	mv	a5,a0
 470:	0ff7f793          	zext.b	a5,a5
 474:	00078513          	mv	a0,a5
 478:	04c12083          	lw	ra,76(sp)
 47c:	04812403          	lw	s0,72(sp)
 480:	05010113          	addi	sp,sp,80
 484:	00008067          	ret

00000488 <printDec>:
 488:	fb010113          	addi	sp,sp,-80
 48c:	04112623          	sw	ra,76(sp)
 490:	04812423          	sw	s0,72(sp)
 494:	05010413          	addi	s0,sp,80
 498:	faa42e23          	sw	a0,-68(s0)
 49c:	fab42c23          	sw	a1,-72(s0)
 4a0:	00060793          	mv	a5,a2
 4a4:	faf40ba3          	sb	a5,-73(s0)
 4a8:	fe042623          	sw	zero,-20(s0)
 4ac:	000017b7          	lui	a5,0x1
 4b0:	8e078793          	addi	a5,a5,-1824 # 8e0 <_stack_bottom+0xe0>
 4b4:	0007a583          	lw	a1,0(a5)
 4b8:	0047a603          	lw	a2,4(a5)
 4bc:	0087a683          	lw	a3,8(a5)
 4c0:	00c7a703          	lw	a4,12(a5)
 4c4:	0107a783          	lw	a5,16(a5)
 4c8:	fcb42023          	sw	a1,-64(s0)
 4cc:	fcc42223          	sw	a2,-60(s0)
 4d0:	fcd42423          	sw	a3,-56(s0)
 4d4:	fce42623          	sw	a4,-52(s0)
 4d8:	fcf42823          	sw	a5,-48(s0)
 4dc:	00100793          	li	a5,1
 4e0:	fef42423          	sw	a5,-24(s0)
 4e4:	fb842703          	lw	a4,-72(s0)
 4e8:	000187b7          	lui	a5,0x18
 4ec:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_end+0x1769f>
 4f0:	02e7f463          	bgeu	a5,a4,518 <printDec+0x90>
 4f4:	fb744783          	lbu	a5,-73(s0)
 4f8:	00078613          	mv	a2,a5
 4fc:	000017b7          	lui	a5,0x1
 500:	8d878593          	addi	a1,a5,-1832 # 8d8 <_stack_bottom+0xd8>
 504:	fbc42503          	lw	a0,-68(s0)
 508:	da5ff0ef          	jal	2ac <printString>
 50c:	00050793          	mv	a5,a0
 510:	0ff7f793          	zext.b	a5,a5
 514:	1080006f          	j	61c <printDec+0x194>
 518:	fe042223          	sw	zero,-28(s0)
 51c:	0a00006f          	j	5bc <printDec+0x134>
 520:	fe442783          	lw	a5,-28(s0)
 524:	00279793          	slli	a5,a5,0x2
 528:	ff078793          	addi	a5,a5,-16
 52c:	008787b3          	add	a5,a5,s0
 530:	fd07a783          	lw	a5,-48(a5)
 534:	fcf42e23          	sw	a5,-36(s0)
 538:	fe042023          	sw	zero,-32(s0)
 53c:	0200006f          	j	55c <printDec+0xd4>
 540:	fb842703          	lw	a4,-72(s0)
 544:	fdc42783          	lw	a5,-36(s0)
 548:	40f707b3          	sub	a5,a4,a5
 54c:	faf42c23          	sw	a5,-72(s0)
 550:	fe042783          	lw	a5,-32(s0)
 554:	00178793          	addi	a5,a5,1
 558:	fef42023          	sw	a5,-32(s0)
 55c:	fb842703          	lw	a4,-72(s0)
 560:	fdc42783          	lw	a5,-36(s0)
 564:	fcf77ee3          	bgeu	a4,a5,540 <printDec+0xb8>
 568:	fe042783          	lw	a5,-32(s0)
 56c:	00079c63          	bnez	a5,584 <printDec+0xfc>
 570:	fdc42703          	lw	a4,-36(s0)
 574:	00100793          	li	a5,1
 578:	00f70663          	beq	a4,a5,584 <printDec+0xfc>
 57c:	fe842783          	lw	a5,-24(s0)
 580:	02079863          	bnez	a5,5b0 <printDec+0x128>
 584:	fe042783          	lw	a5,-32(s0)
 588:	0ff7f713          	zext.b	a4,a5
 58c:	fec42783          	lw	a5,-20(s0)
 590:	00178693          	addi	a3,a5,1
 594:	fed42623          	sw	a3,-20(s0)
 598:	03070713          	addi	a4,a4,48
 59c:	0ff77713          	zext.b	a4,a4
 5a0:	ff078793          	addi	a5,a5,-16
 5a4:	008787b3          	add	a5,a5,s0
 5a8:	fee78223          	sb	a4,-28(a5)
 5ac:	fe042423          	sw	zero,-24(s0)
 5b0:	fe442783          	lw	a5,-28(s0)
 5b4:	00178793          	addi	a5,a5,1
 5b8:	fef42223          	sw	a5,-28(s0)
 5bc:	fe442703          	lw	a4,-28(s0)
 5c0:	00400793          	li	a5,4
 5c4:	f4e7dee3          	bge	a5,a4,520 <printDec+0x98>
 5c8:	fe842783          	lw	a5,-24(s0)
 5cc:	02078063          	beqz	a5,5ec <printDec+0x164>
 5d0:	fec42783          	lw	a5,-20(s0)
 5d4:	00178713          	addi	a4,a5,1
 5d8:	fee42623          	sw	a4,-20(s0)
 5dc:	ff078793          	addi	a5,a5,-16
 5e0:	008787b3          	add	a5,a5,s0
 5e4:	03000713          	li	a4,48
 5e8:	fee78223          	sb	a4,-28(a5)
 5ec:	fec42783          	lw	a5,-20(s0)
 5f0:	ff078793          	addi	a5,a5,-16
 5f4:	008787b3          	add	a5,a5,s0
 5f8:	fe078223          	sb	zero,-28(a5)
 5fc:	fb744703          	lbu	a4,-73(s0)
 600:	fd440793          	addi	a5,s0,-44
 604:	00070613          	mv	a2,a4
 608:	00078593          	mv	a1,a5
 60c:	fbc42503          	lw	a0,-68(s0)
 610:	c9dff0ef          	jal	2ac <printString>
 614:	00050793          	mv	a5,a0
 618:	0ff7f793          	zext.b	a5,a5
 61c:	00078513          	mv	a0,a5
 620:	04c12083          	lw	ra,76(sp)
 624:	04812403          	lw	s0,72(sp)
 628:	05010113          	addi	sp,sp,80
 62c:	00008067          	ret

00000630 <printf>:
 630:	fa010113          	addi	sp,sp,-96
 634:	02112e23          	sw	ra,60(sp)
 638:	02812c23          	sw	s0,56(sp)
 63c:	04010413          	addi	s0,sp,64
 640:	fca42623          	sw	a0,-52(s0)
 644:	fcc42223          	sw	a2,-60(s0)
 648:	00d42623          	sw	a3,12(s0)
 64c:	00e42823          	sw	a4,16(s0)
 650:	00f42a23          	sw	a5,20(s0)
 654:	01042c23          	sw	a6,24(s0)
 658:	01142e23          	sw	a7,28(s0)
 65c:	00058793          	mv	a5,a1
 660:	fcf405a3          	sb	a5,-53(s0)
 664:	02040793          	addi	a5,s0,32
 668:	fcf42023          	sw	a5,-64(s0)
 66c:	fc042783          	lw	a5,-64(s0)
 670:	fec78793          	addi	a5,a5,-20
 674:	fcf42c23          	sw	a5,-40(s0)
 678:	fe042623          	sw	zero,-20(s0)
 67c:	fe042423          	sw	zero,-24(s0)
 680:	fe042423          	sw	zero,-24(s0)
 684:	1fc0006f          	j	880 <_stack_bottom+0x80>
 688:	fe842783          	lw	a5,-24(s0)
 68c:	fc442703          	lw	a4,-60(s0)
 690:	00f707b3          	add	a5,a4,a5
 694:	0007c703          	lbu	a4,0(a5)
 698:	02500793          	li	a5,37
 69c:	18f71e63          	bne	a4,a5,838 <_stack_bottom+0x38>
 6a0:	fe842783          	lw	a5,-24(s0)
 6a4:	00178793          	addi	a5,a5,1
 6a8:	fc442703          	lw	a4,-60(s0)
 6ac:	00f707b3          	add	a5,a4,a5
 6b0:	0007c703          	lbu	a4,0(a5)
 6b4:	07800793          	li	a5,120
 6b8:	04f71e63          	bne	a4,a5,714 <printf+0xe4>
 6bc:	fe842783          	lw	a5,-24(s0)
 6c0:	00178793          	addi	a5,a5,1
 6c4:	fef42423          	sw	a5,-24(s0)
 6c8:	fd842783          	lw	a5,-40(s0)
 6cc:	00478713          	addi	a4,a5,4
 6d0:	fce42c23          	sw	a4,-40(s0)
 6d4:	0007a783          	lw	a5,0(a5)
 6d8:	fcf42e23          	sw	a5,-36(s0)
 6dc:	fcc42703          	lw	a4,-52(s0)
 6e0:	fec42783          	lw	a5,-20(s0)
 6e4:	00f707b3          	add	a5,a4,a5
 6e8:	fcb44703          	lbu	a4,-53(s0)
 6ec:	00070613          	mv	a2,a4
 6f0:	fdc42583          	lw	a1,-36(s0)
 6f4:	00078513          	mv	a0,a5
 6f8:	c9dff0ef          	jal	394 <printHex>
 6fc:	00050793          	mv	a5,a0
 700:	00078713          	mv	a4,a5
 704:	fec42783          	lw	a5,-20(s0)
 708:	00e787b3          	add	a5,a5,a4
 70c:	fef42623          	sw	a5,-20(s0)
 710:	1640006f          	j	874 <_stack_bottom+0x74>
 714:	fe842783          	lw	a5,-24(s0)
 718:	00178793          	addi	a5,a5,1
 71c:	fc442703          	lw	a4,-60(s0)
 720:	00f707b3          	add	a5,a4,a5
 724:	0007c703          	lbu	a4,0(a5)
 728:	06400793          	li	a5,100
 72c:	04f71e63          	bne	a4,a5,788 <printf+0x158>
 730:	fe842783          	lw	a5,-24(s0)
 734:	00178793          	addi	a5,a5,1
 738:	fef42423          	sw	a5,-24(s0)
 73c:	fd842783          	lw	a5,-40(s0)
 740:	00478713          	addi	a4,a5,4
 744:	fce42c23          	sw	a4,-40(s0)
 748:	0007a783          	lw	a5,0(a5)
 74c:	fef42023          	sw	a5,-32(s0)
 750:	fcc42703          	lw	a4,-52(s0)
 754:	fec42783          	lw	a5,-20(s0)
 758:	00f707b3          	add	a5,a4,a5
 75c:	fcb44703          	lbu	a4,-53(s0)
 760:	00070613          	mv	a2,a4
 764:	fe042583          	lw	a1,-32(s0)
 768:	00078513          	mv	a0,a5
 76c:	d1dff0ef          	jal	488 <printDec>
 770:	00050793          	mv	a5,a0
 774:	00078713          	mv	a4,a5
 778:	fec42783          	lw	a5,-20(s0)
 77c:	00e787b3          	add	a5,a5,a4
 780:	fef42623          	sw	a5,-20(s0)
 784:	0f00006f          	j	874 <_stack_bottom+0x74>
 788:	fe842783          	lw	a5,-24(s0)
 78c:	00178793          	addi	a5,a5,1
 790:	fc442703          	lw	a4,-60(s0)
 794:	00f707b3          	add	a5,a4,a5
 798:	0007c703          	lbu	a4,0(a5)
 79c:	06300793          	li	a5,99
 7a0:	04f71c63          	bne	a4,a5,7f8 <printf+0x1c8>
 7a4:	fe842783          	lw	a5,-24(s0)
 7a8:	00178793          	addi	a5,a5,1
 7ac:	fef42423          	sw	a5,-24(s0)
 7b0:	fd842783          	lw	a5,-40(s0)
 7b4:	00478713          	addi	a4,a5,4
 7b8:	fce42c23          	sw	a4,-40(s0)
 7bc:	0007a783          	lw	a5,0(a5)
 7c0:	fef403a3          	sb	a5,-25(s0)
 7c4:	fcc42703          	lw	a4,-52(s0)
 7c8:	fec42783          	lw	a5,-20(s0)
 7cc:	00f707b3          	add	a5,a4,a5
 7d0:	fcb44683          	lbu	a3,-53(s0)
 7d4:	fe744703          	lbu	a4,-25(s0)
 7d8:	00068613          	mv	a2,a3
 7dc:	00070593          	mv	a1,a4
 7e0:	00078513          	mv	a0,a5
 7e4:	a21ff0ef          	jal	204 <putch>
 7e8:	fec42783          	lw	a5,-20(s0)
 7ec:	00178793          	addi	a5,a5,1
 7f0:	fef42623          	sw	a5,-20(s0)
 7f4:	0800006f          	j	874 <_stack_bottom+0x74>
 7f8:	fcc42703          	lw	a4,-52(s0)
 7fc:	fec42783          	lw	a5,-20(s0)
 800:	00f706b3          	add	a3,a4,a5
 804:	fe842783          	lw	a5,-24(s0)
 808:	fc442703          	lw	a4,-60(s0)
 80c:	00f707b3          	add	a5,a4,a5
 810:	0007c783          	lbu	a5,0(a5)
 814:	fcb44703          	lbu	a4,-53(s0)
 818:	00070613          	mv	a2,a4
 81c:	00078593          	mv	a1,a5
 820:	00068513          	mv	a0,a3
 824:	9e1ff0ef          	jal	204 <putch>
 828:	fec42783          	lw	a5,-20(s0)
 82c:	00178793          	addi	a5,a5,1
 830:	fef42623          	sw	a5,-20(s0)
 834:	0400006f          	j	874 <_stack_bottom+0x74>
 838:	fcc42703          	lw	a4,-52(s0)
 83c:	fec42783          	lw	a5,-20(s0)
 840:	00f706b3          	add	a3,a4,a5
 844:	fe842783          	lw	a5,-24(s0)
 848:	fc442703          	lw	a4,-60(s0)
 84c:	00f707b3          	add	a5,a4,a5
 850:	0007c783          	lbu	a5,0(a5)
 854:	fcb44703          	lbu	a4,-53(s0)
 858:	00070613          	mv	a2,a4
 85c:	00078593          	mv	a1,a5
 860:	00068513          	mv	a0,a3
 864:	9a1ff0ef          	jal	204 <putch>
 868:	fec42783          	lw	a5,-20(s0)
 86c:	00178793          	addi	a5,a5,1
 870:	fef42623          	sw	a5,-20(s0)
 874:	fe842783          	lw	a5,-24(s0)
 878:	00178793          	addi	a5,a5,1
 87c:	fef42423          	sw	a5,-24(s0)
 880:	fe842783          	lw	a5,-24(s0)
 884:	fc442703          	lw	a4,-60(s0)
 888:	00f707b3          	add	a5,a4,a5
 88c:	0007c783          	lbu	a5,0(a5)
 890:	de079ce3          	bnez	a5,688 <printf+0x58>
 894:	fec42783          	lw	a5,-20(s0)
 898:	00078513          	mv	a0,a5
 89c:	03c12083          	lw	ra,60(sp)
 8a0:	03812403          	lw	s0,56(sp)
 8a4:	06010113          	addi	sp,sp,96
 8a8:	00008067          	ret
 8ac:	6568                	.insn	2, 0x6568
 8ae:	3a78                	.insn	2, 0x3a78
 8b0:	3020                	.insn	2, 0x3020
 8b2:	2578                	.insn	2, 0x2578
 8b4:	2078                	.insn	2, 0x2078
 8b6:	6574                	.insn	2, 0x6574
 8b8:	63207473          	.insn	4, 0x63207473
 8bc:	6168                	.insn	2, 0x6168
 8be:	3a72                	.insn	2, 0x3a72
 8c0:	2520                	.insn	2, 0x2520
 8c2:	0064                	.insn	2, 0x0064
 8c4:	3130                	.insn	2, 0x3130
 8c6:	3332                	.insn	2, 0x3332
 8c8:	3534                	.insn	2, 0x3534
 8ca:	3736                	.insn	2, 0x3736
 8cc:	3938                	.insn	2, 0x3938
 8ce:	4241                	.insn	2, 0x4241
 8d0:	46454443          	.insn	4, 0x46454443
 8d4:	0000                	.insn	2, 0x
 8d6:	0000                	.insn	2, 0x
 8d8:	7245                	.insn	2, 0x7245
 8da:	6f72                	.insn	2, 0x6f72
 8dc:	0072                	.insn	2, 0x0072
 8de:	0000                	.insn	2, 0x
 8e0:	2710                	.insn	2, 0x2710
 8e2:	0000                	.insn	2, 0x
 8e4:	03e8                	.insn	2, 0x03e8
 8e6:	0000                	.insn	2, 0x
 8e8:	0064                	.insn	2, 0x0064
 8ea:	0000                	.insn	2, 0x
 8ec:	000a                	.insn	2, 0x000a
 8ee:	0000                	.insn	2, 0x
 8f0:	0001                	.insn	2, 0x0001
	...
