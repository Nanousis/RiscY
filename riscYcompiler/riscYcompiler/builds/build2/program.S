
builds/build2/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	a0010113          	addi	sp,sp,-1536 # 401a00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	151000ef          	jal	400960 <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <WriteSprite>:
  40001c:	00651513          	slli	a0,a0,0x6
  400020:	880017b7          	lui	a5,0x88001
  400024:	00a787b3          	add	a5,a5,a0
  400028:	00000713          	li	a4,0
  40002c:	02000693          	li	a3,32
  400030:	00e58633          	add	a2,a1,a4
  400034:	00064603          	lbu	a2,0(a2)
  400038:	00170713          	addi	a4,a4,1
  40003c:	00278793          	addi	a5,a5,2 # 88001002 <_stack_end+0x87bff002>
  400040:	fec79f23          	sh	a2,-2(a5)
  400044:	fed716e3          	bne	a4,a3,400030 <WriteSprite+0x14>
  400048:	00008067          	ret

0040004c <SetAttributes>:
  40004c:	00d036b3          	snez	a3,a3
  400050:	00971713          	slli	a4,a4,0x9
  400054:	1ff67613          	andi	a2,a2,511
  400058:	00f69693          	slli	a3,a3,0xf
  40005c:	1ff5f593          	andi	a1,a1,511
  400060:	00c76733          	or	a4,a4,a2
  400064:	00b6e6b3          	or	a3,a3,a1
  400068:	01071713          	slli	a4,a4,0x10
  40006c:	00251513          	slli	a0,a0,0x2
  400070:	880027b7          	lui	a5,0x88002
  400074:	01069693          	slli	a3,a3,0x10
  400078:	01075713          	srli	a4,a4,0x10
  40007c:	00a787b3          	add	a5,a5,a0
  400080:	00e6e6b3          	or	a3,a3,a4
  400084:	00d7a023          	sw	a3,0(a5) # 88002000 <_stack_end+0x87c00000>
  400088:	00008067          	ret

0040008c <getUSBint>:
  40008c:	100007b7          	lui	a5,0x10000
  400090:	0007a503          	lw	a0,0(a5) # 10000000 <_stack_end+0xfbfe000>
  400094:	00008067          	ret

00400098 <USBParser>:
  400098:	01d00793          	li	a5,29
  40009c:	00a7ee63          	bltu	a5,a0,4000b8 <USBParser+0x20>
  4000a0:	00300793          	li	a5,3
  4000a4:	02a7ee63          	bltu	a5,a0,4000e0 <USBParser+0x48>
  4000a8:	00000513          	li	a0,0
  4000ac:	00008067          	ret
  4000b0:	01b00513          	li	a0,27
  4000b4:	00008067          	ret
  4000b8:	fe250793          	addi	a5,a0,-30
  4000bc:	0ff7f793          	zext.b	a5,a5
  4000c0:	03400713          	li	a4,52
  4000c4:	fef762e3          	bltu	a4,a5,4000a8 <USBParser+0x10>
  4000c8:	00401737          	lui	a4,0x401
  4000cc:	00279793          	slli	a5,a5,0x2
  4000d0:	81870713          	addi	a4,a4,-2024 # 400818 <resetScreenVector+0xc>
  4000d4:	00e787b3          	add	a5,a5,a4
  4000d8:	0007a783          	lw	a5,0(a5)
  4000dc:	00078067          	jr	a5
  4000e0:	05d50513          	addi	a0,a0,93
  4000e4:	0ff57513          	zext.b	a0,a0
  4000e8:	00008067          	ret
  4000ec:	01350513          	addi	a0,a0,19
  4000f0:	ff5ff06f          	j	4000e4 <USBParser+0x4c>
  4000f4:	00800513          	li	a0,8
  4000f8:	00008067          	ret
  4000fc:	00900513          	li	a0,9
  400100:	00008067          	ret
  400104:	02000513          	li	a0,32
  400108:	00008067          	ret
  40010c:	03d00513          	li	a0,61
  400110:	00008067          	ret
  400114:	05b00513          	li	a0,91
  400118:	00008067          	ret
  40011c:	05d00513          	li	a0,93
  400120:	00008067          	ret
  400124:	05c00513          	li	a0,92
  400128:	00008067          	ret
  40012c:	03b00513          	li	a0,59
  400130:	00008067          	ret
  400134:	02700513          	li	a0,39
  400138:	00008067          	ret
  40013c:	06000513          	li	a0,96
  400140:	00008067          	ret
  400144:	02c00513          	li	a0,44
  400148:	00008067          	ret
  40014c:	02e00513          	li	a0,46
  400150:	00008067          	ret
  400154:	02f00513          	li	a0,47
  400158:	00008067          	ret
  40015c:	04600513          	li	a0,70
  400160:	00008067          	ret
  400164:	05200513          	li	a0,82
  400168:	00008067          	ret
  40016c:	04c00513          	li	a0,76
  400170:	00008067          	ret
  400174:	04400513          	li	a0,68
  400178:	00008067          	ret
  40017c:	05500513          	li	a0,85
  400180:	00008067          	ret
  400184:	00a00513          	li	a0,10
  400188:	00008067          	ret

0040018c <memcpy>:
  40018c:	00000793          	li	a5,0
  400190:	00c7c463          	blt	a5,a2,400198 <memcpy+0xc>
  400194:	00008067          	ret
  400198:	00f58733          	add	a4,a1,a5
  40019c:	00074683          	lbu	a3,0(a4)
  4001a0:	00f50733          	add	a4,a0,a5
  4001a4:	00178793          	addi	a5,a5,1
  4001a8:	00d70023          	sb	a3,0(a4)
  4001ac:	fe5ff06f          	j	400190 <memcpy+0x4>

004001b0 <memset>:
  4001b0:	00c50633          	add	a2,a0,a2
  4001b4:	00050793          	mv	a5,a0
  4001b8:	00c79463          	bne	a5,a2,4001c0 <memset+0x10>
  4001bc:	00008067          	ret
  4001c0:	00178793          	addi	a5,a5,1
  4001c4:	feb78fa3          	sb	a1,-1(a5)
  4001c8:	ff1ff06f          	j	4001b8 <memset+0x8>

004001cc <getButtonDown>:
  4001cc:	890007b7          	lui	a5,0x89000
  4001d0:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  4001d4:	00008067          	ret

004001d8 <getButtonUp>:
  4001d8:	890007b7          	lui	a5,0x89000
  4001dc:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  4001e0:	00008067          	ret

004001e4 <getButtonLeft>:
  4001e4:	890007b7          	lui	a5,0x89000
  4001e8:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4001ec:	00008067          	ret

004001f0 <getButtonRight>:
  4001f0:	890007b7          	lui	a5,0x89000
  4001f4:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  4001f8:	00008067          	ret

004001fc <putch>:
  4001fc:	4c000793          	li	a5,1216
  400200:	02a7e263          	bltu	a5,a0,400224 <putch+0x28>
  400204:	00861613          	slli	a2,a2,0x8
  400208:	00151513          	slli	a0,a0,0x1
  40020c:	880007b7          	lui	a5,0x88000
  400210:	00a787b3          	add	a5,a5,a0
  400214:	00b665b3          	or	a1,a2,a1
  400218:	00b79023          	sh	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  40021c:	00100513          	li	a0,1
  400220:	00008067          	ret
  400224:	00000513          	li	a0,0
  400228:	00008067          	ret

0040022c <printString>:
  40022c:	fe010113          	addi	sp,sp,-32
  400230:	01212823          	sw	s2,16(sp)
  400234:	01312623          	sw	s3,12(sp)
  400238:	00112e23          	sw	ra,28(sp)
  40023c:	00812c23          	sw	s0,24(sp)
  400240:	00912a23          	sw	s1,20(sp)
  400244:	01412423          	sw	s4,8(sp)
  400248:	01512223          	sw	s5,4(sp)
  40024c:	01612023          	sw	s6,0(sp)
  400250:	00050993          	mv	s3,a0
  400254:	00058913          	mv	s2,a1
  400258:	06060c63          	beqz	a2,4002d0 <printString+0xa4>
  40025c:	00060413          	mv	s0,a2
  400260:	00000a13          	li	s4,0
  400264:	00000493          	li	s1,0
  400268:	00100a93          	li	s5,1
  40026c:	00f00b13          	li	s6,15
  400270:	0280006f          	j	400298 <printString+0x6c>
  400274:	00040613          	mv	a2,s0
  400278:	00998533          	add	a0,s3,s1
  40027c:	f81ff0ef          	jal	4001fc <putch>
  400280:	06050263          	beqz	a0,4002e4 <printString+0xb8>
  400284:	00148493          	addi	s1,s1,1
  400288:	015a1863          	bne	s4,s5,400298 <printString+0x6c>
  40028c:	00140413          	addi	s0,s0,1
  400290:	0ff47413          	zext.b	s0,s0
  400294:	048b6463          	bltu	s6,s0,4002dc <printString+0xb0>
  400298:	009907b3          	add	a5,s2,s1
  40029c:	0007c583          	lbu	a1,0(a5)
  4002a0:	00048513          	mv	a0,s1
  4002a4:	fc0598e3          	bnez	a1,400274 <printString+0x48>
  4002a8:	01c12083          	lw	ra,28(sp)
  4002ac:	01812403          	lw	s0,24(sp)
  4002b0:	01412483          	lw	s1,20(sp)
  4002b4:	01012903          	lw	s2,16(sp)
  4002b8:	00c12983          	lw	s3,12(sp)
  4002bc:	00812a03          	lw	s4,8(sp)
  4002c0:	00412a83          	lw	s5,4(sp)
  4002c4:	00012b03          	lw	s6,0(sp)
  4002c8:	02010113          	addi	sp,sp,32
  4002cc:	00008067          	ret
  4002d0:	00100a13          	li	s4,1
  4002d4:	00100413          	li	s0,1
  4002d8:	f8dff06f          	j	400264 <printString+0x38>
  4002dc:	00100413          	li	s0,1
  4002e0:	fb9ff06f          	j	400298 <printString+0x6c>
  4002e4:	00000513          	li	a0,0
  4002e8:	fc1ff06f          	j	4002a8 <printString+0x7c>

004002ec <printHex>:
  4002ec:	fd010113          	addi	sp,sp,-48
  4002f0:	02812423          	sw	s0,40(sp)
  4002f4:	00058413          	mv	s0,a1
  4002f8:	004015b7          	lui	a1,0x401
  4002fc:	02912223          	sw	s1,36(sp)
  400300:	03212023          	sw	s2,32(sp)
  400304:	00050493          	mv	s1,a0
  400308:	00060913          	mv	s2,a2
  40030c:	02058593          	addi	a1,a1,32 # 401020 <_etext+0x6c0>
  400310:	01100613          	li	a2,17
  400314:	00c10513          	addi	a0,sp,12
  400318:	02112623          	sw	ra,44(sp)
  40031c:	e71ff0ef          	jal	40018c <memcpy>
  400320:	202027b7          	lui	a5,0x20202
  400324:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  400328:	00f12023          	sw	a5,0(sp)
  40032c:	00f12223          	sw	a5,4(sp)
  400330:	00010423          	sb	zero,8(sp)
  400334:	00700793          	li	a5,7
  400338:	fff00693          	li	a3,-1
  40033c:	00f47713          	andi	a4,s0,15
  400340:	02070713          	addi	a4,a4,32
  400344:	00270733          	add	a4,a4,sp
  400348:	fec74703          	lbu	a4,-20(a4)
  40034c:	00f10633          	add	a2,sp,a5
  400350:	fff78793          	addi	a5,a5,-1
  400354:	00e60023          	sb	a4,0(a2)
  400358:	40445413          	srai	s0,s0,0x4
  40035c:	fed790e3          	bne	a5,a3,40033c <printHex+0x50>
  400360:	00090613          	mv	a2,s2
  400364:	00010593          	mv	a1,sp
  400368:	00048513          	mv	a0,s1
  40036c:	ec1ff0ef          	jal	40022c <printString>
  400370:	02c12083          	lw	ra,44(sp)
  400374:	02812403          	lw	s0,40(sp)
  400378:	02412483          	lw	s1,36(sp)
  40037c:	02012903          	lw	s2,32(sp)
  400380:	0ff57513          	zext.b	a0,a0
  400384:	03010113          	addi	sp,sp,48
  400388:	00008067          	ret

0040038c <printDec>:
  40038c:	fd010113          	addi	sp,sp,-48
  400390:	02812423          	sw	s0,40(sp)
  400394:	00058413          	mv	s0,a1
  400398:	004015b7          	lui	a1,0x401
  40039c:	02912223          	sw	s1,36(sp)
  4003a0:	03212023          	sw	s2,32(sp)
  4003a4:	00050493          	mv	s1,a0
  4003a8:	00060913          	mv	s2,a2
  4003ac:	94c58593          	addi	a1,a1,-1716 # 40094c <resetScreenVector+0x140>
  4003b0:	01400613          	li	a2,20
  4003b4:	00c10513          	addi	a0,sp,12
  4003b8:	02112623          	sw	ra,44(sp)
  4003bc:	dd1ff0ef          	jal	40018c <memcpy>
  4003c0:	000187b7          	lui	a5,0x18
  4003c4:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1809f>
  4003c8:	0287fa63          	bgeu	a5,s0,4003fc <printDec+0x70>
  4003cc:	004015b7          	lui	a1,0x401
  4003d0:	00090613          	mv	a2,s2
  4003d4:	03458593          	addi	a1,a1,52 # 401034 <_etext+0x6d4>
  4003d8:	00048513          	mv	a0,s1
  4003dc:	e51ff0ef          	jal	40022c <printString>
  4003e0:	02c12083          	lw	ra,44(sp)
  4003e4:	02812403          	lw	s0,40(sp)
  4003e8:	02412483          	lw	s1,36(sp)
  4003ec:	02012903          	lw	s2,32(sp)
  4003f0:	0ff57513          	zext.b	a0,a0
  4003f4:	03010113          	addi	sp,sp,48
  4003f8:	00008067          	ret
  4003fc:	00c10713          	addi	a4,sp,12
  400400:	00100613          	li	a2,1
  400404:	00000793          	li	a5,0
  400408:	00100513          	li	a0,1
  40040c:	00072583          	lw	a1,0(a4)
  400410:	00000693          	li	a3,0
  400414:	06b47263          	bgeu	s0,a1,400478 <printDec+0xec>
  400418:	00069663          	bnez	a3,400424 <printDec+0x98>
  40041c:	00a58463          	beq	a1,a0,400424 <printDec+0x98>
  400420:	00061e63          	bnez	a2,40043c <printDec+0xb0>
  400424:	02078613          	addi	a2,a5,32
  400428:	00260633          	add	a2,a2,sp
  40042c:	03068693          	addi	a3,a3,48
  400430:	fed60223          	sb	a3,-28(a2)
  400434:	00178793          	addi	a5,a5,1
  400438:	00000613          	li	a2,0
  40043c:	00470713          	addi	a4,a4,4
  400440:	02010693          	addi	a3,sp,32
  400444:	fcd714e3          	bne	a4,a3,40040c <printDec+0x80>
  400448:	00060c63          	beqz	a2,400460 <printDec+0xd4>
  40044c:	02078713          	addi	a4,a5,32
  400450:	00270733          	add	a4,a4,sp
  400454:	03000693          	li	a3,48
  400458:	fed70223          	sb	a3,-28(a4)
  40045c:	00178793          	addi	a5,a5,1
  400460:	02078793          	addi	a5,a5,32
  400464:	002787b3          	add	a5,a5,sp
  400468:	fe078223          	sb	zero,-28(a5)
  40046c:	00090613          	mv	a2,s2
  400470:	00410593          	addi	a1,sp,4
  400474:	f65ff06f          	j	4003d8 <printDec+0x4c>
  400478:	40b40433          	sub	s0,s0,a1
  40047c:	00168693          	addi	a3,a3,1
  400480:	f95ff06f          	j	400414 <printDec+0x88>

00400484 <printf>:
  400484:	fa010113          	addi	sp,sp,-96
  400488:	04f12a23          	sw	a5,84(sp)
  40048c:	04410793          	addi	a5,sp,68
  400490:	02812c23          	sw	s0,56(sp)
  400494:	02912a23          	sw	s1,52(sp)
  400498:	03212823          	sw	s2,48(sp)
  40049c:	03312623          	sw	s3,44(sp)
  4004a0:	03412423          	sw	s4,40(sp)
  4004a4:	03512223          	sw	s5,36(sp)
  4004a8:	03612023          	sw	s6,32(sp)
  4004ac:	01712e23          	sw	s7,28(sp)
  4004b0:	01912a23          	sw	s9,20(sp)
  4004b4:	02112e23          	sw	ra,60(sp)
  4004b8:	01812c23          	sw	s8,24(sp)
  4004bc:	00050493          	mv	s1,a0
  4004c0:	04b12223          	sw	a1,68(sp)
  4004c4:	04c12423          	sw	a2,72(sp)
  4004c8:	04d12623          	sw	a3,76(sp)
  4004cc:	04e12823          	sw	a4,80(sp)
  4004d0:	05012c23          	sw	a6,88(sp)
  4004d4:	05112e23          	sw	a7,92(sp)
  4004d8:	00f12623          	sw	a5,12(sp)
  4004dc:	00000c93          	li	s9,0
  4004e0:	00401437          	lui	s0,0x401
  4004e4:	00a00913          	li	s2,10
  4004e8:	02500993          	li	s3,37
  4004ec:	07800a13          	li	s4,120
  4004f0:	06400a93          	li	s5,100
  4004f4:	06300b13          	li	s6,99
  4004f8:	07300b93          	li	s7,115
  4004fc:	019487b3          	add	a5,s1,s9
  400500:	0007c583          	lbu	a1,0(a5)
  400504:	03a41503          	lh	a0,58(s0) # 40103a <screenPos>
  400508:	02059c63          	bnez	a1,400540 <printf+0xbc>
  40050c:	03c12083          	lw	ra,60(sp)
  400510:	03812403          	lw	s0,56(sp)
  400514:	03412483          	lw	s1,52(sp)
  400518:	03012903          	lw	s2,48(sp)
  40051c:	02c12983          	lw	s3,44(sp)
  400520:	02812a03          	lw	s4,40(sp)
  400524:	02412a83          	lw	s5,36(sp)
  400528:	02012b03          	lw	s6,32(sp)
  40052c:	01c12b83          	lw	s7,28(sp)
  400530:	01812c03          	lw	s8,24(sp)
  400534:	01412c83          	lw	s9,20(sp)
  400538:	06010113          	addi	sp,sp,96
  40053c:	00008067          	ret
  400540:	001c8c13          	addi	s8,s9,1
  400544:	01259e63          	bne	a1,s2,400560 <printf+0xdc>
  400548:	fc057793          	andi	a5,a0,-64
  40054c:	04078793          	addi	a5,a5,64
  400550:	01079793          	slli	a5,a5,0x10
  400554:	4107d793          	srai	a5,a5,0x10
  400558:	000c8c13          	mv	s8,s9
  40055c:	0380006f          	j	400594 <printf+0x110>
  400560:	0d359063          	bne	a1,s3,400620 <printf+0x19c>
  400564:	0017c783          	lbu	a5,1(a5)
  400568:	03479c63          	bne	a5,s4,4005a0 <printf+0x11c>
  40056c:	00c12783          	lw	a5,12(sp)
  400570:	00f00613          	li	a2,15
  400574:	0007a583          	lw	a1,0(a5)
  400578:	00478713          	addi	a4,a5,4
  40057c:	00e12623          	sw	a4,12(sp)
  400580:	d6dff0ef          	jal	4002ec <printHex>
  400584:	03a45783          	lhu	a5,58(s0)
  400588:	00f507b3          	add	a5,a0,a5
  40058c:	01079793          	slli	a5,a5,0x10
  400590:	4107d793          	srai	a5,a5,0x10
  400594:	02f41d23          	sh	a5,58(s0)
  400598:	001c0c93          	addi	s9,s8,1
  40059c:	f61ff06f          	j	4004fc <printf+0x78>
  4005a0:	03579063          	bne	a5,s5,4005c0 <printf+0x13c>
  4005a4:	00c12783          	lw	a5,12(sp)
  4005a8:	00f00613          	li	a2,15
  4005ac:	0007a583          	lw	a1,0(a5)
  4005b0:	00478713          	addi	a4,a5,4
  4005b4:	00e12623          	sw	a4,12(sp)
  4005b8:	dd5ff0ef          	jal	40038c <printDec>
  4005bc:	fc9ff06f          	j	400584 <printf+0x100>
  4005c0:	03679463          	bne	a5,s6,4005e8 <printf+0x164>
  4005c4:	00c12783          	lw	a5,12(sp)
  4005c8:	00f00613          	li	a2,15
  4005cc:	0007c583          	lbu	a1,0(a5)
  4005d0:	00478713          	addi	a4,a5,4
  4005d4:	00e12623          	sw	a4,12(sp)
  4005d8:	c25ff0ef          	jal	4001fc <putch>
  4005dc:	03a45783          	lhu	a5,58(s0)
  4005e0:	00178793          	addi	a5,a5,1
  4005e4:	fa9ff06f          	j	40058c <printf+0x108>
  4005e8:	03779063          	bne	a5,s7,400608 <printf+0x184>
  4005ec:	00c12783          	lw	a5,12(sp)
  4005f0:	00f00613          	li	a2,15
  4005f4:	0007a583          	lw	a1,0(a5)
  4005f8:	00478713          	addi	a4,a5,4
  4005fc:	00e12623          	sw	a4,12(sp)
  400600:	c2dff0ef          	jal	40022c <printString>
  400604:	f81ff06f          	j	400584 <printf+0x100>
  400608:	00f00613          	li	a2,15
  40060c:	02500593          	li	a1,37
  400610:	bedff0ef          	jal	4001fc <putch>
  400614:	03a45783          	lhu	a5,58(s0)
  400618:	00178793          	addi	a5,a5,1
  40061c:	f35ff06f          	j	400550 <printf+0xcc>
  400620:	00f00613          	li	a2,15
  400624:	fedff06f          	j	400610 <printf+0x18c>

00400628 <printfSCR>:
  400628:	f9010113          	addi	sp,sp,-112
  40062c:	06f12223          	sw	a5,100(sp)
  400630:	05c10793          	addi	a5,sp,92
  400634:	04812423          	sw	s0,72(sp)
  400638:	04912223          	sw	s1,68(sp)
  40063c:	05212023          	sw	s2,64(sp)
  400640:	03412c23          	sw	s4,56(sp)
  400644:	03512a23          	sw	s5,52(sp)
  400648:	03612823          	sw	s6,48(sp)
  40064c:	03712623          	sw	s7,44(sp)
  400650:	03812423          	sw	s8,40(sp)
  400654:	03912223          	sw	s9,36(sp)
  400658:	03a12023          	sw	s10,32(sp)
  40065c:	01b12e23          	sw	s11,28(sp)
  400660:	04112623          	sw	ra,76(sp)
  400664:	03312e23          	sw	s3,60(sp)
  400668:	00050a93          	mv	s5,a0
  40066c:	00058493          	mv	s1,a1
  400670:	00060a13          	mv	s4,a2
  400674:	04d12e23          	sw	a3,92(sp)
  400678:	06e12023          	sw	a4,96(sp)
  40067c:	07012423          	sw	a6,104(sp)
  400680:	07112623          	sw	a7,108(sp)
  400684:	00f12623          	sw	a5,12(sp)
  400688:	00000913          	li	s2,0
  40068c:	00000413          	li	s0,0
  400690:	00a00b13          	li	s6,10
  400694:	02500b93          	li	s7,37
  400698:	07800c13          	li	s8,120
  40069c:	06400c93          	li	s9,100
  4006a0:	06300d13          	li	s10,99
  4006a4:	07300d93          	li	s11,115
  4006a8:	012a07b3          	add	a5,s4,s2
  4006ac:	0007c583          	lbu	a1,0(a5)
  4006b0:	04059263          	bnez	a1,4006f4 <printfSCR+0xcc>
  4006b4:	04c12083          	lw	ra,76(sp)
  4006b8:	00040513          	mv	a0,s0
  4006bc:	04812403          	lw	s0,72(sp)
  4006c0:	04412483          	lw	s1,68(sp)
  4006c4:	04012903          	lw	s2,64(sp)
  4006c8:	03c12983          	lw	s3,60(sp)
  4006cc:	03812a03          	lw	s4,56(sp)
  4006d0:	03412a83          	lw	s5,52(sp)
  4006d4:	03012b03          	lw	s6,48(sp)
  4006d8:	02c12b83          	lw	s7,44(sp)
  4006dc:	02812c03          	lw	s8,40(sp)
  4006e0:	02412c83          	lw	s9,36(sp)
  4006e4:	02012d03          	lw	s10,32(sp)
  4006e8:	01c12d83          	lw	s11,28(sp)
  4006ec:	07010113          	addi	sp,sp,112
  4006f0:	00008067          	ret
  4006f4:	00190993          	addi	s3,s2,1
  4006f8:	01659a63          	bne	a1,s6,40070c <printfSCR+0xe4>
  4006fc:	fc047413          	andi	s0,s0,-64
  400700:	04040413          	addi	s0,s0,64
  400704:	00090993          	mv	s3,s2
  400708:	0740006f          	j	40077c <printfSCR+0x154>
  40070c:	01540533          	add	a0,s0,s5
  400710:	0b759463          	bne	a1,s7,4007b8 <printfSCR+0x190>
  400714:	0017c783          	lbu	a5,1(a5)
  400718:	03879263          	bne	a5,s8,40073c <printfSCR+0x114>
  40071c:	00c12783          	lw	a5,12(sp)
  400720:	00048613          	mv	a2,s1
  400724:	0007a583          	lw	a1,0(a5)
  400728:	00478713          	addi	a4,a5,4
  40072c:	00e12623          	sw	a4,12(sp)
  400730:	bbdff0ef          	jal	4002ec <printHex>
  400734:	00a40433          	add	s0,s0,a0
  400738:	0440006f          	j	40077c <printfSCR+0x154>
  40073c:	03979063          	bne	a5,s9,40075c <printfSCR+0x134>
  400740:	00c12783          	lw	a5,12(sp)
  400744:	00048613          	mv	a2,s1
  400748:	0007a583          	lw	a1,0(a5)
  40074c:	00478713          	addi	a4,a5,4
  400750:	00e12623          	sw	a4,12(sp)
  400754:	c39ff0ef          	jal	40038c <printDec>
  400758:	fddff06f          	j	400734 <printfSCR+0x10c>
  40075c:	03a79463          	bne	a5,s10,400784 <printfSCR+0x15c>
  400760:	00c12783          	lw	a5,12(sp)
  400764:	00048613          	mv	a2,s1
  400768:	00140413          	addi	s0,s0,1
  40076c:	0007c583          	lbu	a1,0(a5)
  400770:	00478713          	addi	a4,a5,4
  400774:	00e12623          	sw	a4,12(sp)
  400778:	a85ff0ef          	jal	4001fc <putch>
  40077c:	00198913          	addi	s2,s3,1
  400780:	f29ff06f          	j	4006a8 <printfSCR+0x80>
  400784:	03b79063          	bne	a5,s11,4007a4 <printfSCR+0x17c>
  400788:	00c12783          	lw	a5,12(sp)
  40078c:	00048613          	mv	a2,s1
  400790:	0007a583          	lw	a1,0(a5)
  400794:	00478713          	addi	a4,a5,4
  400798:	00e12623          	sw	a4,12(sp)
  40079c:	a91ff0ef          	jal	40022c <printString>
  4007a0:	f95ff06f          	j	400734 <printfSCR+0x10c>
  4007a4:	00048613          	mv	a2,s1
  4007a8:	02500593          	li	a1,37
  4007ac:	a51ff0ef          	jal	4001fc <putch>
  4007b0:	00140413          	addi	s0,s0,1
  4007b4:	f51ff06f          	j	400704 <printfSCR+0xdc>
  4007b8:	00048613          	mv	a2,s1
  4007bc:	ff1ff06f          	j	4007ac <printfSCR+0x184>

004007c0 <clearScreen>:
  4007c0:	ff010113          	addi	sp,sp,-16
  4007c4:	00812423          	sw	s0,8(sp)
  4007c8:	00912223          	sw	s1,4(sp)
  4007cc:	00112623          	sw	ra,12(sp)
  4007d0:	00000413          	li	s0,0
  4007d4:	4c000493          	li	s1,1216
  4007d8:	00040513          	mv	a0,s0
  4007dc:	00f00613          	li	a2,15
  4007e0:	02000593          	li	a1,32
  4007e4:	00140413          	addi	s0,s0,1
  4007e8:	a15ff0ef          	jal	4001fc <putch>
  4007ec:	fe9416e3          	bne	s0,s1,4007d8 <clearScreen+0x18>
  4007f0:	00c12083          	lw	ra,12(sp)
  4007f4:	00812403          	lw	s0,8(sp)
  4007f8:	004017b7          	lui	a5,0x401
  4007fc:	02079d23          	sh	zero,58(a5) # 40103a <screenPos>
  400800:	00412483          	lw	s1,4(sp)
  400804:	01010113          	addi	sp,sp,16
  400808:	00008067          	ret

0040080c <resetScreenVector>:
  40080c:	004017b7          	lui	a5,0x401
  400810:	02079d23          	sh	zero,58(a5) # 40103a <screenPos>
  400814:	00008067          	ret
  400818:	00ec                	.insn	2, 0x00ec
  40081a:	0040                	.insn	2, 0x0040
  40081c:	00ec                	.insn	2, 0x00ec
  40081e:	0040                	.insn	2, 0x0040
  400820:	00ec                	.insn	2, 0x00ec
  400822:	0040                	.insn	2, 0x0040
  400824:	00ec                	.insn	2, 0x00ec
  400826:	0040                	.insn	2, 0x0040
  400828:	00ec                	.insn	2, 0x00ec
  40082a:	0040                	.insn	2, 0x0040
  40082c:	00ec                	.insn	2, 0x00ec
  40082e:	0040                	.insn	2, 0x0040
  400830:	00ec                	.insn	2, 0x00ec
  400832:	0040                	.insn	2, 0x0040
  400834:	00ec                	.insn	2, 0x00ec
  400836:	0040                	.insn	2, 0x0040
  400838:	00ec                	.insn	2, 0x00ec
  40083a:	0040                	.insn	2, 0x0040
  40083c:	00ec                	.insn	2, 0x00ec
  40083e:	0040                	.insn	2, 0x0040
  400840:	0184                	.insn	2, 0x0184
  400842:	0040                	.insn	2, 0x0040
  400844:	00b0                	.insn	2, 0x00b0
  400846:	0040                	.insn	2, 0x0040
  400848:	00f4                	.insn	2, 0x00f4
  40084a:	0040                	.insn	2, 0x0040
  40084c:	00fc                	.insn	2, 0x00fc
  40084e:	0040                	.insn	2, 0x0040
  400850:	0104                	.insn	2, 0x0104
  400852:	0040                	.insn	2, 0x0040
  400854:	00ac                	.insn	2, 0x00ac
  400856:	0040                	.insn	2, 0x0040
  400858:	010c                	.insn	2, 0x010c
  40085a:	0040                	.insn	2, 0x0040
  40085c:	0114                	.insn	2, 0x0114
  40085e:	0040                	.insn	2, 0x0040
  400860:	011c                	.insn	2, 0x011c
  400862:	0040                	.insn	2, 0x0040
  400864:	0124                	.insn	2, 0x0124
  400866:	0040                	.insn	2, 0x0040
  400868:	00a8                	.insn	2, 0x00a8
  40086a:	0040                	.insn	2, 0x0040
  40086c:	012c                	.insn	2, 0x012c
  40086e:	0040                	.insn	2, 0x0040
  400870:	0134                	.insn	2, 0x0134
  400872:	0040                	.insn	2, 0x0040
  400874:	013c                	.insn	2, 0x013c
  400876:	0040                	.insn	2, 0x0040
  400878:	0144                	.insn	2, 0x0144
  40087a:	0040                	.insn	2, 0x0040
  40087c:	014c                	.insn	2, 0x014c
  40087e:	0040                	.insn	2, 0x0040
  400880:	0154                	.insn	2, 0x0154
  400882:	0040                	.insn	2, 0x0040
  400884:	00a8                	.insn	2, 0x00a8
  400886:	0040                	.insn	2, 0x0040
  400888:	015c                	.insn	2, 0x015c
  40088a:	0040                	.insn	2, 0x0040
  40088c:	015c                	.insn	2, 0x015c
  40088e:	0040                	.insn	2, 0x0040
  400890:	015c                	.insn	2, 0x015c
  400892:	0040                	.insn	2, 0x0040
  400894:	015c                	.insn	2, 0x015c
  400896:	0040                	.insn	2, 0x0040
  400898:	015c                	.insn	2, 0x015c
  40089a:	0040                	.insn	2, 0x0040
  40089c:	015c                	.insn	2, 0x015c
  40089e:	0040                	.insn	2, 0x0040
  4008a0:	015c                	.insn	2, 0x015c
  4008a2:	0040                	.insn	2, 0x0040
  4008a4:	015c                	.insn	2, 0x015c
  4008a6:	0040                	.insn	2, 0x0040
  4008a8:	015c                	.insn	2, 0x015c
  4008aa:	0040                	.insn	2, 0x0040
  4008ac:	015c                	.insn	2, 0x015c
  4008ae:	0040                	.insn	2, 0x0040
  4008b0:	015c                	.insn	2, 0x015c
  4008b2:	0040                	.insn	2, 0x0040
  4008b4:	015c                	.insn	2, 0x015c
  4008b6:	0040                	.insn	2, 0x0040
  4008b8:	00a8                	.insn	2, 0x00a8
  4008ba:	0040                	.insn	2, 0x0040
  4008bc:	00a8                	.insn	2, 0x00a8
  4008be:	0040                	.insn	2, 0x0040
  4008c0:	00a8                	.insn	2, 0x00a8
  4008c2:	0040                	.insn	2, 0x0040
  4008c4:	00a8                	.insn	2, 0x00a8
  4008c6:	0040                	.insn	2, 0x0040
  4008c8:	00a8                	.insn	2, 0x00a8
  4008ca:	0040                	.insn	2, 0x0040
  4008cc:	00a8                	.insn	2, 0x00a8
  4008ce:	0040                	.insn	2, 0x0040
  4008d0:	00a8                	.insn	2, 0x00a8
  4008d2:	0040                	.insn	2, 0x0040
  4008d4:	00a8                	.insn	2, 0x00a8
  4008d6:	0040                	.insn	2, 0x0040
  4008d8:	00a8                	.insn	2, 0x00a8
  4008da:	0040                	.insn	2, 0x0040
  4008dc:	0164                	.insn	2, 0x0164
  4008de:	0040                	.insn	2, 0x0040
  4008e0:	016c                	.insn	2, 0x016c
  4008e2:	0040                	.insn	2, 0x0040
  4008e4:	0174                	.insn	2, 0x0174
  4008e6:	0040                	.insn	2, 0x0040
  4008e8:	017c                	.insn	2, 0x017c
  4008ea:	0040                	.insn	2, 0x0040
  4008ec:	0ff0                	.insn	2, 0x0ff0
  4008ee:	3ffc                	.insn	2, 0x3ffc
  4008f0:	ffff                	.insn	2, 0xffff
  4008f2:	ffff                	.insn	2, 0xffff
  4008f4:	ffff                	.insn	2, 0xffff
  4008f6:	ffff                	.insn	2, 0xffff
  4008f8:	3ffc                	.insn	2, 0x3ffc
  4008fa:	0ff0                	.insn	2, 0x0ff0
	...
  40090c:	a2aa                	.insn	2, 0xa2aa
  40090e:	5155                	.insn	2, 0x5155
  400910:	5155                	.insn	2, 0x5155
  400912:	0000                	.insn	2, 0x
  400914:	aa2a                	.insn	2, 0xaa2a
  400916:	5515                	.insn	2, 0x5515
  400918:	5515                	.insn	2, 0x5515
  40091a:	0000                	.insn	2, 0x
  40091c:	8aaa                	.insn	2, 0x8aaa
  40091e:	4555                	.insn	2, 0x4555
  400920:	4555                	.insn	2, 0x4555
  400922:	0000                	.insn	2, 0x
  400924:	aaa2                	.insn	2, 0xaaa2
  400926:	5551                	.insn	2, 0x5551
  400928:	5551                	.insn	2, 0x5551
	...
  400932:	0000                	.insn	2, 0x
  400934:	003c                	.insn	2, 0x003c
  400936:	003c                	.insn	2, 0x003c
  400938:	003c                	.insn	2, 0x003c
  40093a:	003c                	.insn	2, 0x003c
  40093c:	003c                	.insn	2, 0x003c
  40093e:	003c                	.insn	2, 0x003c
  400940:	003c                	.insn	2, 0x003c
  400942:	003c                	.insn	2, 0x003c
	...
  40094c:	2710                	.insn	2, 0x2710
  40094e:	0000                	.insn	2, 0x
  400950:	03e8                	.insn	2, 0x03e8
  400952:	0000                	.insn	2, 0x
  400954:	0064                	.insn	2, 0x0064
  400956:	0000                	.insn	2, 0x
  400958:	000a                	.insn	2, 0x000a
  40095a:	0000                	.insn	2, 0x
  40095c:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400960 <main>:
  400960:	f0010113          	addi	sp,sp,-256
  400964:	004015b7          	lui	a1,0x401
  400968:	0e812c23          	sw	s0,248(sp)
  40096c:	02000613          	li	a2,32
  400970:	8ec58413          	addi	s0,a1,-1812 # 4008ec <resetScreenVector+0xe0>
  400974:	02010513          	addi	a0,sp,32
  400978:	8ec58593          	addi	a1,a1,-1812
  40097c:	0e112e23          	sw	ra,252(sp)
  400980:	0e912a23          	sw	s1,244(sp)
  400984:	0f212823          	sw	s2,240(sp)
  400988:	0f312623          	sw	s3,236(sp)
  40098c:	0f412423          	sw	s4,232(sp)
  400990:	0f512223          	sw	s5,228(sp)
  400994:	0f612023          	sw	s6,224(sp)
  400998:	0d712e23          	sw	s7,220(sp)
  40099c:	0d812c23          	sw	s8,216(sp)
  4009a0:	0d912a23          	sw	s9,212(sp)
  4009a4:	0da12823          	sw	s10,208(sp)
  4009a8:	0db12623          	sw	s11,204(sp)
  4009ac:	fe0ff0ef          	jal	40018c <memcpy>
  4009b0:	02000613          	li	a2,32
  4009b4:	00000593          	li	a1,0
  4009b8:	04010513          	addi	a0,sp,64
  4009bc:	ff4ff0ef          	jal	4001b0 <memset>
  4009c0:	004015b7          	lui	a1,0x401
  4009c4:	02000613          	li	a2,32
  4009c8:	ffc58593          	addi	a1,a1,-4 # 400ffc <main+0x69c>
  4009cc:	06010513          	addi	a0,sp,96
  4009d0:	fbcff0ef          	jal	40018c <memcpy>
  4009d4:	02040593          	addi	a1,s0,32
  4009d8:	02000613          	li	a2,32
  4009dc:	08010513          	addi	a0,sp,128
  4009e0:	facff0ef          	jal	40018c <memcpy>
  4009e4:	04040593          	addi	a1,s0,64
  4009e8:	02000613          	li	a2,32
  4009ec:	0a010513          	addi	a0,sp,160
  4009f0:	f9cff0ef          	jal	40018c <memcpy>
  4009f4:	00000413          	li	s0,0
  4009f8:	01000493          	li	s1,16
  4009fc:	00040513          	mv	a0,s0
  400a00:	04010593          	addi	a1,sp,64
  400a04:	00140413          	addi	s0,s0,1
  400a08:	e14ff0ef          	jal	40001c <WriteSprite>
  400a0c:	fe9418e3          	bne	s0,s1,4009fc <main+0x9c>
  400a10:	02010593          	addi	a1,sp,32
  400a14:	00000513          	li	a0,0
  400a18:	e04ff0ef          	jal	40001c <WriteSprite>
  400a1c:	06010593          	addi	a1,sp,96
  400a20:	00200513          	li	a0,2
  400a24:	df8ff0ef          	jal	40001c <WriteSprite>
  400a28:	04010593          	addi	a1,sp,64
  400a2c:	00300513          	li	a0,3
  400a30:	decff0ef          	jal	40001c <WriteSprite>
  400a34:	0a010593          	addi	a1,sp,160
  400a38:	00400513          	li	a0,4
  400a3c:	de0ff0ef          	jal	40001c <WriteSprite>
  400a40:	08010593          	addi	a1,sp,128
  400a44:	00500513          	li	a0,5
  400a48:	dd4ff0ef          	jal	40001c <WriteSprite>
  400a4c:	00000413          	li	s0,0
  400a50:	04000993          	li	s3,64
  400a54:	00040493          	mv	s1,s0
  400a58:	4c040913          	addi	s2,s0,1216
  400a5c:	00048513          	mv	a0,s1
  400a60:	00000613          	li	a2,0
  400a64:	08300593          	li	a1,131
  400a68:	04048493          	addi	s1,s1,64
  400a6c:	f90ff0ef          	jal	4001fc <putch>
  400a70:	ff2496e3          	bne	s1,s2,400a5c <main+0xfc>
  400a74:	00140413          	addi	s0,s0,1
  400a78:	fd341ee3          	bne	s0,s3,400a54 <main+0xf4>
  400a7c:	00000413          	li	s0,0
  400a80:	04000493          	li	s1,64
  400a84:	00040513          	mv	a0,s0
  400a88:	00000613          	li	a2,0
  400a8c:	08500593          	li	a1,133
  400a90:	00140413          	addi	s0,s0,1
  400a94:	f68ff0ef          	jal	4001fc <putch>
  400a98:	fe9416e3          	bne	s0,s1,400a84 <main+0x124>
  400a9c:	48000413          	li	s0,1152
  400aa0:	4c000493          	li	s1,1216
  400aa4:	00040513          	mv	a0,s0
  400aa8:	00f00613          	li	a2,15
  400aac:	08500593          	li	a1,133
  400ab0:	00140413          	addi	s0,s0,1
  400ab4:	f48ff0ef          	jal	4001fc <putch>
  400ab8:	fe9416e3          	bne	s0,s1,400aa4 <main+0x144>
  400abc:	06000413          	li	s0,96
  400ac0:	4a000493          	li	s1,1184
  400ac4:	00040513          	mv	a0,s0
  400ac8:	00000613          	li	a2,0
  400acc:	08400593          	li	a1,132
  400ad0:	04040413          	addi	s0,s0,64
  400ad4:	f28ff0ef          	jal	4001fc <putch>
  400ad8:	fe9416e3          	bne	s0,s1,400ac4 <main+0x164>
  400adc:	801e07b7          	lui	a5,0x801e0
  400ae0:	00012a23          	sw	zero,20(sp)
  400ae4:	01e78793          	addi	a5,a5,30 # 801e001e <_stack_end+0x7fdde01e>
  400ae8:	88002737          	lui	a4,0x88002
  400aec:	00f72023          	sw	a5,0(a4) # 88002000 <_stack_end+0x87c00000>
  400af0:	80000737          	lui	a4,0x80000
  400af4:	880027b7          	lui	a5,0x88002
  400af8:	49670713          	addi	a4,a4,1174 # 80000496 <_stack_end+0x7fbfe496>
  400afc:	00e7aa23          	sw	a4,20(a5) # 88002014 <_stack_end+0x87c00014>
  400b00:	80000737          	lui	a4,0x80000
  400b04:	880027b7          	lui	a5,0x88002
  400b08:	4a670713          	addi	a4,a4,1190 # 800004a6 <_stack_end+0x7fbfe4a6>
  400b0c:	00e7ac23          	sw	a4,24(a5) # 88002018 <_stack_end+0x87c00018>
  400b10:	81f80737          	lui	a4,0x81f80
  400b14:	880027b7          	lui	a5,0x88002
  400b18:	49670713          	addi	a4,a4,1174 # 81f80496 <_stack_end+0x81b7e496>
  400b1c:	00e7a623          	sw	a4,12(a5) # 8800200c <_stack_end+0x87c0000c>
  400b20:	81f80737          	lui	a4,0x81f80
  400b24:	880027b7          	lui	a5,0x88002
  400b28:	4a670713          	addi	a4,a4,1190 # 81f804a6 <_stack_end+0x81b7e4a6>
  400b2c:	00401637          	lui	a2,0x401
  400b30:	00e7a823          	sw	a4,16(a5) # 88002010 <_stack_end+0x87c00010>
  400b34:	fc460613          	addi	a2,a2,-60 # 400fc4 <main+0x664>
  400b38:	00f00593          	li	a1,15
  400b3c:	09400513          	li	a0,148
  400b40:	ae9ff0ef          	jal	400628 <printfSCR>
  400b44:	00401637          	lui	a2,0x401
  400b48:	fdc60613          	addi	a2,a2,-36 # 400fdc <main+0x67c>
  400b4c:	00f00593          	li	a1,15
  400b50:	15400513          	li	a0,340
  400b54:	ad5ff0ef          	jal	400628 <printfSCR>
  400b58:	100004b7          	lui	s1,0x10000
  400b5c:	02000413          	li	s0,32
  400b60:	0004a503          	lw	a0,0(s1) # 10000000 <_stack_end+0xfbfe000>
  400b64:	01855513          	srli	a0,a0,0x18
  400b68:	d30ff0ef          	jal	400098 <USBParser>
  400b6c:	00a10a23          	sb	a0,20(sp)
  400b70:	fe8518e3          	bne	a0,s0,400b60 <main+0x200>
  400b74:	00012c23          	sw	zero,24(sp)
  400b78:	00064737          	lui	a4,0x64
  400b7c:	01812783          	lw	a5,24(sp)
  400b80:	26e7c463          	blt	a5,a4,400de8 <main+0x488>
  400b84:	00000413          	li	s0,0
  400b88:	04000993          	li	s3,64
  400b8c:	00040493          	mv	s1,s0
  400b90:	4c040913          	addi	s2,s0,1216
  400b94:	00048513          	mv	a0,s1
  400b98:	00000613          	li	a2,0
  400b9c:	08300593          	li	a1,131
  400ba0:	04048493          	addi	s1,s1,64
  400ba4:	e58ff0ef          	jal	4001fc <putch>
  400ba8:	fe9916e3          	bne	s2,s1,400b94 <main+0x234>
  400bac:	00140413          	addi	s0,s0,1
  400bb0:	fd341ee3          	bne	s0,s3,400b8c <main+0x22c>
  400bb4:	00000413          	li	s0,0
  400bb8:	04000493          	li	s1,64
  400bbc:	00040513          	mv	a0,s0
  400bc0:	00000613          	li	a2,0
  400bc4:	08500593          	li	a1,133
  400bc8:	00140413          	addi	s0,s0,1
  400bcc:	e30ff0ef          	jal	4001fc <putch>
  400bd0:	fe9416e3          	bne	s0,s1,400bbc <main+0x25c>
  400bd4:	48000413          	li	s0,1152
  400bd8:	4c000493          	li	s1,1216
  400bdc:	00040513          	mv	a0,s0
  400be0:	00f00613          	li	a2,15
  400be4:	08500593          	li	a1,133
  400be8:	00140413          	addi	s0,s0,1
  400bec:	e10ff0ef          	jal	4001fc <putch>
  400bf0:	fe9416e3          	bne	s0,s1,400bdc <main+0x27c>
  400bf4:	06000413          	li	s0,96
  400bf8:	4a000493          	li	s1,1184
  400bfc:	00040513          	mv	a0,s0
  400c00:	00000613          	li	a2,0
  400c04:	08400593          	li	a1,132
  400c08:	04040413          	addi	s0,s0,64
  400c0c:	df0ff0ef          	jal	4001fc <putch>
  400c10:	fe9416e3          	bne	s0,s1,400bfc <main+0x29c>
  400c14:	0000abb7          	lui	s7,0xa
  400c18:	000099b7          	lui	s3,0x9
  400c1c:	00002437          	lui	s0,0x2
  400c20:	880027b7          	lui	a5,0x88002
  400c24:	600b8b93          	addi	s7,s7,1536 # a600 <_stack_size+0xa000>
  400c28:	60098993          	addi	s3,s3,1536 # 9600 <_stack_size+0x9000>
  400c2c:	e0040413          	addi	s0,s0,-512 # 1e00 <_stack_size+0x1800>
  400c30:	88002c37          	lui	s8,0x88002
  400c34:	01878793          	addi	a5,a5,24 # 88002018 <_stack_end+0x87c00018>
  400c38:	000b8c93          	mv	s9,s7
  400c3c:	00098d93          	mv	s11,s3
  400c40:	00000493          	li	s1,0
  400c44:	10000d13          	li	s10,256
  400c48:	00040913          	mv	s2,s0
  400c4c:	00000a93          	li	s5,0
  400c50:	00000a13          	li	s4,0
  400c54:	014c0c13          	addi	s8,s8,20 # 88002014 <_stack_end+0x87c00014>
  400c58:	00f12023          	sw	a5,0(sp)
  400c5c:	004017b7          	lui	a5,0x401
  400c60:	ff478613          	addi	a2,a5,-12 # 400ff4 <main+0x694>
  400c64:	000a0693          	mv	a3,s4
  400c68:	00f00593          	li	a1,15
  400c6c:	09400513          	li	a0,148
  400c70:	00078b13          	mv	s6,a5
  400c74:	9b5ff0ef          	jal	400628 <printfSCR>
  400c78:	000a8693          	mv	a3,s5
  400c7c:	ff4b0613          	addi	a2,s6,-12
  400c80:	00f00593          	li	a1,15
  400c84:	0ac00513          	li	a0,172
  400c88:	9a1ff0ef          	jal	400628 <printfSCR>
  400c8c:	000056b7          	lui	a3,0x5
  400c90:	00012e23          	sw	zero,28(sp)
  400c94:	01c12703          	lw	a4,28(sp)
  400c98:	16d74063          	blt	a4,a3,400df8 <main+0x498>
  400c9c:	10000737          	lui	a4,0x10000
  400ca0:	00072b03          	lw	s6,0(a4) # 10000000 <_stack_end+0xfbfe000>
  400ca4:	0ffb7513          	zext.b	a0,s6
  400ca8:	bf0ff0ef          	jal	400098 <USBParser>
  400cac:	00a10ba3          	sb	a0,23(sp)
  400cb0:	408b5513          	srai	a0,s6,0x8
  400cb4:	0ff57513          	zext.b	a0,a0
  400cb8:	be0ff0ef          	jal	400098 <USBParser>
  400cbc:	00a10b23          	sb	a0,22(sp)
  400cc0:	410b5513          	srai	a0,s6,0x10
  400cc4:	0ff57513          	zext.b	a0,a0
  400cc8:	bd0ff0ef          	jal	400098 <USBParser>
  400ccc:	00a10aa3          	sb	a0,21(sp)
  400cd0:	018b5513          	srli	a0,s6,0x18
  400cd4:	bc4ff0ef          	jal	400098 <USBParser>
  400cd8:	00a10a23          	sb	a0,20(sp)
  400cdc:	00000693          	li	a3,0
  400ce0:	00400613          	li	a2,4
  400ce4:	01410793          	addi	a5,sp,20
  400ce8:	00d78733          	add	a4,a5,a3
  400cec:	00074703          	lbu	a4,0(a4)
  400cf0:	02070263          	beqz	a4,400d14 <main+0x3b4>
  400cf4:	06100793          	li	a5,97
  400cf8:	10f71863          	bne	a4,a5,400e08 <main+0x4a8>
  400cfc:	f00d8d93          	addi	s11,s11,-256
  400d00:	00001737          	lui	a4,0x1
  400d04:	f00c8c93          	addi	s9,s9,-256
  400d08:	00edd663          	bge	s11,a4,400d14 <main+0x3b4>
  400d0c:	00002cb7          	lui	s9,0x2
  400d10:	00001db7          	lui	s11,0x1
  400d14:	00168693          	addi	a3,a3,1 # 5001 <_stack_size+0x4a01>
  400d18:	fcc696e3          	bne	a3,a2,400ce4 <main+0x384>
  400d1c:	00940433          	add	s0,s0,s1
  400d20:	40845713          	srai	a4,s0,0x8
  400d24:	01000693          	li	a3,16
  400d28:	01a90933          	add	s2,s2,s10
  400d2c:	16e6c063          	blt	a3,a4,400e8c <main+0x52c>
  400d30:	00001437          	lui	s0,0x1
  400d34:	409004b3          	neg	s1,s1
  400d38:	10040413          	addi	s0,s0,256 # 1100 <_stack_size+0xb00>
  400d3c:	40895713          	srai	a4,s2,0x8
  400d40:	00800693          	li	a3,8
  400d44:	408cd893          	srai	a7,s9,0x8
  400d48:	408ddf13          	srai	t5,s11,0x8
  400d4c:	02e6ca63          	blt	a3,a4,400d80 <main+0x420>
  400d50:	40845713          	srai	a4,s0,0x8
  400d54:	00870693          	addi	a3,a4,8 # 1008 <_stack_size+0xa08>
  400d58:	15e6cc63          	blt	a3,t5,400eb0 <main+0x550>
  400d5c:	010f0613          	addi	a2,t5,16
  400d60:	14e64863          	blt	a2,a4,400eb0 <main+0x550>
  400d64:	41a00d33          	neg	s10,s10
  400d68:	008f0693          	addi	a3,t5,8
  400d6c:	40d70733          	sub	a4,a4,a3
  400d70:	00471713          	slli	a4,a4,0x4
  400d74:	00001937          	lui	s2,0x1
  400d78:	00e484b3          	add	s1,s1,a4
  400d7c:	80090913          	addi	s2,s2,-2048 # 800 <_stack_size+0x200>
  400d80:	40895693          	srai	a3,s2,0x8
  400d84:	1ef00713          	li	a4,495
  400d88:	408bdb13          	srai	s6,s7,0x8
  400d8c:	4089d813          	srai	a6,s3,0x8
  400d90:	14d75863          	bge	a4,a3,400ee0 <main+0x580>
  400d94:	40845713          	srai	a4,s0,0x8
  400d98:	00870613          	addi	a2,a4,8
  400d9c:	13064663          	blt	a2,a6,400ec8 <main+0x568>
  400da0:	01080593          	addi	a1,a6,16
  400da4:	12e5c263          	blt	a1,a4,400ec8 <main+0x568>
  400da8:	41a00d33          	neg	s10,s10
  400dac:	00880693          	addi	a3,a6,8
  400db0:	40d70733          	sub	a4,a4,a3
  400db4:	00471713          	slli	a4,a4,0x4
  400db8:	00e484b3          	add	s1,s1,a4
  400dbc:	0001f937          	lui	s2,0x1f
  400dc0:	1f000713          	li	a4,496
  400dc4:	1f700693          	li	a3,503
  400dc8:	1ce6ce63          	blt	a3,a4,400fa4 <main+0x644>
  400dcc:	20000713          	li	a4,512
  400dd0:	00975463          	bge	a4,s1,400dd8 <main+0x478>
  400dd4:	20000493          	li	s1,512
  400dd8:	e0000713          	li	a4,-512
  400ddc:	12e4d663          	bge	s1,a4,400f08 <main+0x5a8>
  400de0:	e0000493          	li	s1,-512
  400de4:	1240006f          	j	400f08 <main+0x5a8>
  400de8:	01812783          	lw	a5,24(sp)
  400dec:	00178793          	addi	a5,a5,1
  400df0:	00f12c23          	sw	a5,24(sp)
  400df4:	d89ff06f          	j	400b7c <main+0x21c>
  400df8:	01c12703          	lw	a4,28(sp)
  400dfc:	00170713          	addi	a4,a4,1
  400e00:	00e12e23          	sw	a4,28(sp)
  400e04:	e91ff06f          	j	400c94 <main+0x334>
  400e08:	07a00793          	li	a5,122
  400e0c:	02f71663          	bne	a4,a5,400e38 <main+0x4d8>
  400e10:	100c8c93          	addi	s9,s9,256 # 2100 <_stack_size+0x1b00>
  400e14:	408cd593          	srai	a1,s9,0x8
  400e18:	10e00713          	li	a4,270
  400e1c:	100d8d93          	addi	s11,s11,256 # 1100 <_stack_size+0xb00>
  400e20:	eeb75ae3          	bge	a4,a1,400d14 <main+0x3b4>
  400e24:	00011cb7          	lui	s9,0x11
  400e28:	00010db7          	lui	s11,0x10
  400e2c:	e00c8c93          	addi	s9,s9,-512 # 10e00 <_stack_size+0x10800>
  400e30:	e00d8d93          	addi	s11,s11,-512 # fe00 <_stack_size+0xf800>
  400e34:	ee1ff06f          	j	400d14 <main+0x3b4>
  400e38:	05500593          	li	a1,85
  400e3c:	02b71063          	bne	a4,a1,400e5c <main+0x4fc>
  400e40:	f0098993          	addi	s3,s3,-256
  400e44:	00001737          	lui	a4,0x1
  400e48:	f00b8b93          	addi	s7,s7,-256
  400e4c:	ece9d4e3          	bge	s3,a4,400d14 <main+0x3b4>
  400e50:	00002bb7          	lui	s7,0x2
  400e54:	000019b7          	lui	s3,0x1
  400e58:	ebdff06f          	j	400d14 <main+0x3b4>
  400e5c:	04400593          	li	a1,68
  400e60:	eab71ae3          	bne	a4,a1,400d14 <main+0x3b4>
  400e64:	100b8b93          	addi	s7,s7,256 # 2100 <_stack_size+0x1b00>
  400e68:	408bd593          	srai	a1,s7,0x8
  400e6c:	10e00713          	li	a4,270
  400e70:	10098993          	addi	s3,s3,256 # 1100 <_stack_size+0xb00>
  400e74:	eab750e3          	bge	a4,a1,400d14 <main+0x3b4>
  400e78:	00011bb7          	lui	s7,0x11
  400e7c:	000109b7          	lui	s3,0x10
  400e80:	e00b8b93          	addi	s7,s7,-512 # 10e00 <_stack_size+0x10800>
  400e84:	e0098993          	addi	s3,s3,-512 # fe00 <_stack_size+0xf800>
  400e88:	e8dff06f          	j	400d14 <main+0x3b4>
  400e8c:	11300693          	li	a3,275
  400e90:	eae6d6e3          	bge	a3,a4,400d3c <main+0x3dc>
  400e94:	00048a63          	beqz	s1,400ea8 <main+0x548>
  400e98:	409004b3          	neg	s1,s1
  400e9c:	00011437          	lui	s0,0x11
  400ea0:	40040413          	addi	s0,s0,1024 # 11400 <_stack_size+0x10e00>
  400ea4:	e99ff06f          	j	400d3c <main+0x3dc>
  400ea8:	f0000493          	li	s1,-256
  400eac:	ff1ff06f          	j	400e9c <main+0x53c>
  400eb0:	ed16c8e3          	blt	a3,a7,400d80 <main+0x420>
  400eb4:	01088693          	addi	a3,a7,16
  400eb8:	ece6c4e3          	blt	a3,a4,400d80 <main+0x420>
  400ebc:	41a00d33          	neg	s10,s10
  400ec0:	00888693          	addi	a3,a7,8
  400ec4:	ea9ff06f          	j	400d6c <main+0x40c>
  400ec8:	01664c63          	blt	a2,s6,400ee0 <main+0x580>
  400ecc:	010b0613          	addi	a2,s6,16
  400ed0:	00e64863          	blt	a2,a4,400ee0 <main+0x580>
  400ed4:	41a00d33          	neg	s10,s10
  400ed8:	008b0693          	addi	a3,s6,8
  400edc:	ed5ff06f          	j	400db0 <main+0x450>
  400ee0:	00068713          	mv	a4,a3
  400ee4:	eed040e3          	bgtz	a3,400dc4 <main+0x464>
  400ee8:	001a8a93          	addi	s5,s5,1
  400eec:	010a9a93          	slli	s5,s5,0x10
  400ef0:	00009437          	lui	s0,0x9
  400ef4:	0001f937          	lui	s2,0x1f
  400ef8:	410ada93          	srai	s5,s5,0x10
  400efc:	10000493          	li	s1,256
  400f00:	60040413          	addi	s0,s0,1536 # 9600 <_stack_size+0x9000>
  400f04:	40090913          	addi	s2,s2,1024 # 1f400 <_stack_size+0x1ee00>
  400f08:	ffc40613          	addi	a2,s0,-4
  400f0c:	40865613          	srai	a2,a2,0x8
  400f10:	40895593          	srai	a1,s2,0x8
  400f14:	01061613          	slli	a2,a2,0x10
  400f18:	01059593          	slli	a1,a1,0x10
  400f1c:	00000713          	li	a4,0
  400f20:	00100693          	li	a3,1
  400f24:	41065613          	srai	a2,a2,0x10
  400f28:	4105d593          	srai	a1,a1,0x10
  400f2c:	00000513          	li	a0,0
  400f30:	01012623          	sw	a6,12(sp)
  400f34:	01e12423          	sw	t5,8(sp)
  400f38:	01112223          	sw	a7,4(sp)
  400f3c:	910ff0ef          	jal	40004c <SetAttributes>
  400f40:	00812f03          	lw	t5,8(sp)
  400f44:	00412883          	lw	a7,4(sp)
  400f48:	00c12803          	lw	a6,12(sp)
  400f4c:	1fff7f13          	andi	t5,t5,511
  400f50:	00012783          	lw	a5,0(sp)
  400f54:	80000737          	lui	a4,0x80000
  400f58:	400f6f13          	ori	t5,t5,1024
  400f5c:	1ff8f893          	andi	a7,a7,511
  400f60:	00ef6f33          	or	t5,t5,a4
  400f64:	4008e893          	ori	a7,a7,1024
  400f68:	1ff87813          	andi	a6,a6,511
  400f6c:	01ec2023          	sw	t5,0(s8)
  400f70:	00e8e8b3          	or	a7,a7,a4
  400f74:	81f806b7          	lui	a3,0x81f80
  400f78:	40086813          	ori	a6,a6,1024
  400f7c:	1ffb7b13          	andi	s6,s6,511
  400f80:	0117a023          	sw	a7,0(a5)
  400f84:	88002737          	lui	a4,0x88002
  400f88:	00d86833          	or	a6,a6,a3
  400f8c:	400b6b13          	ori	s6,s6,1024
  400f90:	01072623          	sw	a6,12(a4) # 8800200c <_stack_end+0x87c0000c>
  400f94:	00db6b33          	or	s6,s6,a3
  400f98:	88002737          	lui	a4,0x88002
  400f9c:	01672823          	sw	s6,16(a4) # 88002010 <_stack_end+0x87c00010>
  400fa0:	cbdff06f          	j	400c5c <main+0x2fc>
  400fa4:	001a0a13          	addi	s4,s4,1
  400fa8:	010a1a13          	slli	s4,s4,0x10
  400fac:	00009437          	lui	s0,0x9
  400fb0:	410a5a13          	srai	s4,s4,0x10
  400fb4:	f0000493          	li	s1,-256
  400fb8:	60040413          	addi	s0,s0,1536 # 9600 <_stack_size+0x9000>
  400fbc:	00000913          	li	s2,0
  400fc0:	f49ff06f          	j	400f08 <main+0x5a8>
