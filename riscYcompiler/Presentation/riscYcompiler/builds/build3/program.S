
builds/build3/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00004117          	auipc	sp,0x4
  400004:	80010113          	addi	sp,sp,-2048 # 403800 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	481000ef          	jal	400c90 <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <getUSBint>:
  40001c:	100007b7          	lui	a5,0x10000
  400020:	0007a503          	lw	a0,0(a5) # 10000000 <_stack_end+0xfbfc000>
  400024:	00008067          	ret

00400028 <WriteSprite>:
  400028:	00651513          	slli	a0,a0,0x6
  40002c:	880017b7          	lui	a5,0x88001
  400030:	00a787b3          	add	a5,a5,a0
  400034:	00000713          	li	a4,0
  400038:	02000693          	li	a3,32
  40003c:	00e58633          	add	a2,a1,a4
  400040:	00064603          	lbu	a2,0(a2)
  400044:	00170713          	addi	a4,a4,1
  400048:	00278793          	addi	a5,a5,2 # 88001002 <_stack_end+0x87bfd002>
  40004c:	fec79f23          	sh	a2,-2(a5)
  400050:	fed716e3          	bne	a4,a3,40003c <WriteSprite+0x14>
  400054:	00008067          	ret

00400058 <USBParser>:
  400058:	01d00793          	li	a5,29
  40005c:	00a7ee63          	bltu	a5,a0,400078 <USBParser+0x20>
  400060:	00300793          	li	a5,3
  400064:	02a7ee63          	bltu	a5,a0,4000a0 <USBParser+0x48>
  400068:	00000513          	li	a0,0
  40006c:	00008067          	ret
  400070:	01b00513          	li	a0,27
  400074:	00008067          	ret
  400078:	fe250793          	addi	a5,a0,-30
  40007c:	0ff7f793          	zext.b	a5,a5
  400080:	03400713          	li	a4,52
  400084:	fef762e3          	bltu	a4,a5,400068 <USBParser+0x10>
  400088:	00401737          	lui	a4,0x401
  40008c:	00279793          	slli	a5,a5,0x2
  400090:	8b470713          	addi	a4,a4,-1868 # 4008b4 <resetScreenVector+0xc>
  400094:	00e787b3          	add	a5,a5,a4
  400098:	0007a783          	lw	a5,0(a5)
  40009c:	00078067          	jr	a5
  4000a0:	05d50513          	addi	a0,a0,93
  4000a4:	0ff57513          	zext.b	a0,a0
  4000a8:	00008067          	ret
  4000ac:	01350513          	addi	a0,a0,19
  4000b0:	ff5ff06f          	j	4000a4 <USBParser+0x4c>
  4000b4:	00800513          	li	a0,8
  4000b8:	00008067          	ret
  4000bc:	00900513          	li	a0,9
  4000c0:	00008067          	ret
  4000c4:	02000513          	li	a0,32
  4000c8:	00008067          	ret
  4000cc:	03d00513          	li	a0,61
  4000d0:	00008067          	ret
  4000d4:	05b00513          	li	a0,91
  4000d8:	00008067          	ret
  4000dc:	05d00513          	li	a0,93
  4000e0:	00008067          	ret
  4000e4:	05c00513          	li	a0,92
  4000e8:	00008067          	ret
  4000ec:	03b00513          	li	a0,59
  4000f0:	00008067          	ret
  4000f4:	02700513          	li	a0,39
  4000f8:	00008067          	ret
  4000fc:	06000513          	li	a0,96
  400100:	00008067          	ret
  400104:	02c00513          	li	a0,44
  400108:	00008067          	ret
  40010c:	02e00513          	li	a0,46
  400110:	00008067          	ret
  400114:	02f00513          	li	a0,47
  400118:	00008067          	ret
  40011c:	04600513          	li	a0,70
  400120:	00008067          	ret
  400124:	05200513          	li	a0,82
  400128:	00008067          	ret
  40012c:	04c00513          	li	a0,76
  400130:	00008067          	ret
  400134:	04400513          	li	a0,68
  400138:	00008067          	ret
  40013c:	05500513          	li	a0,85
  400140:	00008067          	ret
  400144:	00a00513          	li	a0,10
  400148:	00008067          	ret

0040014c <SetAttributes>:
  40014c:	00d036b3          	snez	a3,a3
  400150:	00971713          	slli	a4,a4,0x9
  400154:	1ff67613          	andi	a2,a2,511
  400158:	00f69693          	slli	a3,a3,0xf
  40015c:	1ff5f593          	andi	a1,a1,511
  400160:	00c76733          	or	a4,a4,a2
  400164:	00b6e6b3          	or	a3,a3,a1
  400168:	01071713          	slli	a4,a4,0x10
  40016c:	00251513          	slli	a0,a0,0x2
  400170:	880027b7          	lui	a5,0x88002
  400174:	01069693          	slli	a3,a3,0x10
  400178:	01075713          	srli	a4,a4,0x10
  40017c:	00a787b3          	add	a5,a5,a0
  400180:	00e6e6b3          	or	a3,a3,a4
  400184:	00d7a023          	sw	a3,0(a5) # 88002000 <_stack_end+0x87bfe000>
  400188:	00008067          	ret

0040018c <ClearScreenRightToLeft>:
  40018c:	fd010113          	addi	sp,sp,-48
  400190:	03212023          	sw	s2,32(sp)
  400194:	00002937          	lui	s2,0x2
  400198:	02812423          	sw	s0,40(sp)
  40019c:	01412c23          	sw	s4,24(sp)
  4001a0:	02112623          	sw	ra,44(sp)
  4001a4:	02912223          	sw	s1,36(sp)
  4001a8:	01312e23          	sw	s3,28(sp)
  4001ac:	03f00413          	li	s0,63
  4001b0:	70f90913          	addi	s2,s2,1807 # 270f <_stack_size+0x1f0f>
  4001b4:	fff00a13          	li	s4,-1
  4001b8:	00040493          	mv	s1,s0
  4001bc:	4c040993          	addi	s3,s0,1216
  4001c0:	00048513          	mv	a0,s1
  4001c4:	07000613          	li	a2,112
  4001c8:	00000593          	li	a1,0
  4001cc:	04048493          	addi	s1,s1,64
  4001d0:	0c8000ef          	jal	400298 <putch>
  4001d4:	ff3496e3          	bne	s1,s3,4001c0 <ClearScreenRightToLeft+0x34>
  4001d8:	00012623          	sw	zero,12(sp)
  4001dc:	00c12783          	lw	a5,12(sp)
  4001e0:	02f95663          	bge	s2,a5,40020c <ClearScreenRightToLeft+0x80>
  4001e4:	fff40413          	addi	s0,s0,-1
  4001e8:	fd4418e3          	bne	s0,s4,4001b8 <ClearScreenRightToLeft+0x2c>
  4001ec:	02c12083          	lw	ra,44(sp)
  4001f0:	02812403          	lw	s0,40(sp)
  4001f4:	02412483          	lw	s1,36(sp)
  4001f8:	02012903          	lw	s2,32(sp)
  4001fc:	01c12983          	lw	s3,28(sp)
  400200:	01812a03          	lw	s4,24(sp)
  400204:	03010113          	addi	sp,sp,48
  400208:	00008067          	ret
  40020c:	00c12783          	lw	a5,12(sp)
  400210:	00178793          	addi	a5,a5,1
  400214:	00f12623          	sw	a5,12(sp)
  400218:	fc5ff06f          	j	4001dc <ClearScreenRightToLeft+0x50>

0040021c <getClock1M>:
  40021c:	8a0007b7          	lui	a5,0x8a000
  400220:	0007a503          	lw	a0,0(a5) # 8a000000 <_stack_end+0x89bfc000>
  400224:	00008067          	ret

00400228 <memcpy>:
  400228:	00000793          	li	a5,0
  40022c:	00c7c463          	blt	a5,a2,400234 <memcpy+0xc>
  400230:	00008067          	ret
  400234:	00f58733          	add	a4,a1,a5
  400238:	00074683          	lbu	a3,0(a4)
  40023c:	00f50733          	add	a4,a0,a5
  400240:	00178793          	addi	a5,a5,1
  400244:	00d70023          	sb	a3,0(a4)
  400248:	fe5ff06f          	j	40022c <memcpy+0x4>

0040024c <memset>:
  40024c:	00c50633          	add	a2,a0,a2
  400250:	00050793          	mv	a5,a0
  400254:	00c79463          	bne	a5,a2,40025c <memset+0x10>
  400258:	00008067          	ret
  40025c:	00178793          	addi	a5,a5,1
  400260:	feb78fa3          	sb	a1,-1(a5)
  400264:	ff1ff06f          	j	400254 <memset+0x8>

00400268 <getButtonDown>:
  400268:	890007b7          	lui	a5,0x89000
  40026c:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfc000>
  400270:	00008067          	ret

00400274 <getButtonUp>:
  400274:	890007b7          	lui	a5,0x89000
  400278:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfc001>
  40027c:	00008067          	ret

00400280 <getButtonLeft>:
  400280:	890007b7          	lui	a5,0x89000
  400284:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfc002>
  400288:	00008067          	ret

0040028c <getButtonRight>:
  40028c:	890007b7          	lui	a5,0x89000
  400290:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfc003>
  400294:	00008067          	ret

00400298 <putch>:
  400298:	4c000793          	li	a5,1216
  40029c:	02a7e263          	bltu	a5,a0,4002c0 <putch+0x28>
  4002a0:	00861613          	slli	a2,a2,0x8
  4002a4:	00151513          	slli	a0,a0,0x1
  4002a8:	880007b7          	lui	a5,0x88000
  4002ac:	00a787b3          	add	a5,a5,a0
  4002b0:	00b665b3          	or	a1,a2,a1
  4002b4:	00b79023          	sh	a1,0(a5) # 88000000 <_stack_end+0x87bfc000>
  4002b8:	00100513          	li	a0,1
  4002bc:	00008067          	ret
  4002c0:	00000513          	li	a0,0
  4002c4:	00008067          	ret

004002c8 <printString>:
  4002c8:	fe010113          	addi	sp,sp,-32
  4002cc:	01212823          	sw	s2,16(sp)
  4002d0:	01312623          	sw	s3,12(sp)
  4002d4:	00112e23          	sw	ra,28(sp)
  4002d8:	00812c23          	sw	s0,24(sp)
  4002dc:	00912a23          	sw	s1,20(sp)
  4002e0:	01412423          	sw	s4,8(sp)
  4002e4:	01512223          	sw	s5,4(sp)
  4002e8:	01612023          	sw	s6,0(sp)
  4002ec:	00050993          	mv	s3,a0
  4002f0:	00058913          	mv	s2,a1
  4002f4:	06060c63          	beqz	a2,40036c <printString+0xa4>
  4002f8:	00060413          	mv	s0,a2
  4002fc:	00000a13          	li	s4,0
  400300:	00000493          	li	s1,0
  400304:	00100a93          	li	s5,1
  400308:	00f00b13          	li	s6,15
  40030c:	0280006f          	j	400334 <printString+0x6c>
  400310:	00040613          	mv	a2,s0
  400314:	00998533          	add	a0,s3,s1
  400318:	f81ff0ef          	jal	400298 <putch>
  40031c:	06050263          	beqz	a0,400380 <printString+0xb8>
  400320:	00148493          	addi	s1,s1,1
  400324:	015a1863          	bne	s4,s5,400334 <printString+0x6c>
  400328:	00140413          	addi	s0,s0,1
  40032c:	0ff47413          	zext.b	s0,s0
  400330:	048b6463          	bltu	s6,s0,400378 <printString+0xb0>
  400334:	009907b3          	add	a5,s2,s1
  400338:	0007c583          	lbu	a1,0(a5)
  40033c:	00048513          	mv	a0,s1
  400340:	fc0598e3          	bnez	a1,400310 <printString+0x48>
  400344:	01c12083          	lw	ra,28(sp)
  400348:	01812403          	lw	s0,24(sp)
  40034c:	01412483          	lw	s1,20(sp)
  400350:	01012903          	lw	s2,16(sp)
  400354:	00c12983          	lw	s3,12(sp)
  400358:	00812a03          	lw	s4,8(sp)
  40035c:	00412a83          	lw	s5,4(sp)
  400360:	00012b03          	lw	s6,0(sp)
  400364:	02010113          	addi	sp,sp,32
  400368:	00008067          	ret
  40036c:	00100a13          	li	s4,1
  400370:	00100413          	li	s0,1
  400374:	f8dff06f          	j	400300 <printString+0x38>
  400378:	00100413          	li	s0,1
  40037c:	fb9ff06f          	j	400334 <printString+0x6c>
  400380:	00000513          	li	a0,0
  400384:	fc1ff06f          	j	400344 <printString+0x7c>

00400388 <printHex>:
  400388:	fd010113          	addi	sp,sp,-48
  40038c:	02812423          	sw	s0,40(sp)
  400390:	00058413          	mv	s0,a1
  400394:	004025b7          	lui	a1,0x402
  400398:	02912223          	sw	s1,36(sp)
  40039c:	03212023          	sw	s2,32(sp)
  4003a0:	00050493          	mv	s1,a0
  4003a4:	00060913          	mv	s2,a2
  4003a8:	ccc58593          	addi	a1,a1,-820 # 401ccc <_etext+0x103c>
  4003ac:	01100613          	li	a2,17
  4003b0:	00c10513          	addi	a0,sp,12
  4003b4:	02112623          	sw	ra,44(sp)
  4003b8:	e71ff0ef          	jal	400228 <memcpy>
  4003bc:	202027b7          	lui	a5,0x20202
  4003c0:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fdfe020>
  4003c4:	00f12023          	sw	a5,0(sp)
  4003c8:	00f12223          	sw	a5,4(sp)
  4003cc:	00010423          	sb	zero,8(sp)
  4003d0:	00700793          	li	a5,7
  4003d4:	fff00693          	li	a3,-1
  4003d8:	00f47713          	andi	a4,s0,15
  4003dc:	02070713          	addi	a4,a4,32
  4003e0:	00270733          	add	a4,a4,sp
  4003e4:	fec74703          	lbu	a4,-20(a4)
  4003e8:	00f10633          	add	a2,sp,a5
  4003ec:	fff78793          	addi	a5,a5,-1
  4003f0:	00e60023          	sb	a4,0(a2)
  4003f4:	40445413          	srai	s0,s0,0x4
  4003f8:	fed790e3          	bne	a5,a3,4003d8 <printHex+0x50>
  4003fc:	00090613          	mv	a2,s2
  400400:	00010593          	mv	a1,sp
  400404:	00048513          	mv	a0,s1
  400408:	ec1ff0ef          	jal	4002c8 <printString>
  40040c:	02c12083          	lw	ra,44(sp)
  400410:	02812403          	lw	s0,40(sp)
  400414:	02412483          	lw	s1,36(sp)
  400418:	02012903          	lw	s2,32(sp)
  40041c:	0ff57513          	zext.b	a0,a0
  400420:	03010113          	addi	sp,sp,48
  400424:	00008067          	ret

00400428 <printDec>:
  400428:	fd010113          	addi	sp,sp,-48
  40042c:	02812423          	sw	s0,40(sp)
  400430:	00058413          	mv	s0,a1
  400434:	004015b7          	lui	a1,0x401
  400438:	02912223          	sw	s1,36(sp)
  40043c:	03212023          	sw	s2,32(sp)
  400440:	00050493          	mv	s1,a0
  400444:	00060913          	mv	s2,a2
  400448:	c7c58593          	addi	a1,a1,-900 # 400c7c <resetScreenVector+0x3d4>
  40044c:	01400613          	li	a2,20
  400450:	00c10513          	addi	a0,sp,12
  400454:	02112623          	sw	ra,44(sp)
  400458:	dd1ff0ef          	jal	400228 <memcpy>
  40045c:	000187b7          	lui	a5,0x18
  400460:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  400464:	0287fa63          	bgeu	a5,s0,400498 <printDec+0x70>
  400468:	004025b7          	lui	a1,0x402
  40046c:	00090613          	mv	a2,s2
  400470:	ce058593          	addi	a1,a1,-800 # 401ce0 <_etext+0x1050>
  400474:	00048513          	mv	a0,s1
  400478:	e51ff0ef          	jal	4002c8 <printString>
  40047c:	02c12083          	lw	ra,44(sp)
  400480:	02812403          	lw	s0,40(sp)
  400484:	02412483          	lw	s1,36(sp)
  400488:	02012903          	lw	s2,32(sp)
  40048c:	0ff57513          	zext.b	a0,a0
  400490:	03010113          	addi	sp,sp,48
  400494:	00008067          	ret
  400498:	00c10713          	addi	a4,sp,12
  40049c:	00100613          	li	a2,1
  4004a0:	00000793          	li	a5,0
  4004a4:	00100513          	li	a0,1
  4004a8:	00072583          	lw	a1,0(a4)
  4004ac:	00000693          	li	a3,0
  4004b0:	06b47263          	bgeu	s0,a1,400514 <printDec+0xec>
  4004b4:	00069663          	bnez	a3,4004c0 <printDec+0x98>
  4004b8:	00a58463          	beq	a1,a0,4004c0 <printDec+0x98>
  4004bc:	00061e63          	bnez	a2,4004d8 <printDec+0xb0>
  4004c0:	02078613          	addi	a2,a5,32
  4004c4:	00260633          	add	a2,a2,sp
  4004c8:	03068693          	addi	a3,a3,48
  4004cc:	fed60223          	sb	a3,-28(a2)
  4004d0:	00178793          	addi	a5,a5,1
  4004d4:	00000613          	li	a2,0
  4004d8:	00470713          	addi	a4,a4,4
  4004dc:	02010693          	addi	a3,sp,32
  4004e0:	fcd714e3          	bne	a4,a3,4004a8 <printDec+0x80>
  4004e4:	00060c63          	beqz	a2,4004fc <printDec+0xd4>
  4004e8:	02078713          	addi	a4,a5,32
  4004ec:	00270733          	add	a4,a4,sp
  4004f0:	03000693          	li	a3,48
  4004f4:	fed70223          	sb	a3,-28(a4)
  4004f8:	00178793          	addi	a5,a5,1
  4004fc:	02078793          	addi	a5,a5,32
  400500:	002787b3          	add	a5,a5,sp
  400504:	fe078223          	sb	zero,-28(a5)
  400508:	00090613          	mv	a2,s2
  40050c:	00410593          	addi	a1,sp,4
  400510:	f65ff06f          	j	400474 <printDec+0x4c>
  400514:	40b40433          	sub	s0,s0,a1
  400518:	00168693          	addi	a3,a3,1
  40051c:	f95ff06f          	j	4004b0 <printDec+0x88>

00400520 <printf>:
  400520:	fa010113          	addi	sp,sp,-96
  400524:	04f12a23          	sw	a5,84(sp)
  400528:	04410793          	addi	a5,sp,68
  40052c:	02812c23          	sw	s0,56(sp)
  400530:	02912a23          	sw	s1,52(sp)
  400534:	03212823          	sw	s2,48(sp)
  400538:	03312623          	sw	s3,44(sp)
  40053c:	03412423          	sw	s4,40(sp)
  400540:	03512223          	sw	s5,36(sp)
  400544:	03612023          	sw	s6,32(sp)
  400548:	01712e23          	sw	s7,28(sp)
  40054c:	01912a23          	sw	s9,20(sp)
  400550:	02112e23          	sw	ra,60(sp)
  400554:	01812c23          	sw	s8,24(sp)
  400558:	00050493          	mv	s1,a0
  40055c:	04b12223          	sw	a1,68(sp)
  400560:	04c12423          	sw	a2,72(sp)
  400564:	04d12623          	sw	a3,76(sp)
  400568:	04e12823          	sw	a4,80(sp)
  40056c:	05012c23          	sw	a6,88(sp)
  400570:	05112e23          	sw	a7,92(sp)
  400574:	00f12623          	sw	a5,12(sp)
  400578:	00000c93          	li	s9,0
  40057c:	00402437          	lui	s0,0x402
  400580:	00a00913          	li	s2,10
  400584:	02500993          	li	s3,37
  400588:	07800a13          	li	s4,120
  40058c:	06400a93          	li	s5,100
  400590:	06300b13          	li	s6,99
  400594:	07300b93          	li	s7,115
  400598:	019487b3          	add	a5,s1,s9
  40059c:	0007c583          	lbu	a1,0(a5)
  4005a0:	ce641503          	lh	a0,-794(s0) # 401ce6 <screenPos>
  4005a4:	02059c63          	bnez	a1,4005dc <printf+0xbc>
  4005a8:	03c12083          	lw	ra,60(sp)
  4005ac:	03812403          	lw	s0,56(sp)
  4005b0:	03412483          	lw	s1,52(sp)
  4005b4:	03012903          	lw	s2,48(sp)
  4005b8:	02c12983          	lw	s3,44(sp)
  4005bc:	02812a03          	lw	s4,40(sp)
  4005c0:	02412a83          	lw	s5,36(sp)
  4005c4:	02012b03          	lw	s6,32(sp)
  4005c8:	01c12b83          	lw	s7,28(sp)
  4005cc:	01812c03          	lw	s8,24(sp)
  4005d0:	01412c83          	lw	s9,20(sp)
  4005d4:	06010113          	addi	sp,sp,96
  4005d8:	00008067          	ret
  4005dc:	001c8c13          	addi	s8,s9,1
  4005e0:	01259e63          	bne	a1,s2,4005fc <printf+0xdc>
  4005e4:	fc057793          	andi	a5,a0,-64
  4005e8:	04078793          	addi	a5,a5,64
  4005ec:	01079793          	slli	a5,a5,0x10
  4005f0:	4107d793          	srai	a5,a5,0x10
  4005f4:	000c8c13          	mv	s8,s9
  4005f8:	0380006f          	j	400630 <printf+0x110>
  4005fc:	0d359063          	bne	a1,s3,4006bc <printf+0x19c>
  400600:	0017c783          	lbu	a5,1(a5)
  400604:	03479c63          	bne	a5,s4,40063c <printf+0x11c>
  400608:	00c12783          	lw	a5,12(sp)
  40060c:	00f00613          	li	a2,15
  400610:	0007a583          	lw	a1,0(a5)
  400614:	00478713          	addi	a4,a5,4
  400618:	00e12623          	sw	a4,12(sp)
  40061c:	d6dff0ef          	jal	400388 <printHex>
  400620:	ce645783          	lhu	a5,-794(s0)
  400624:	00f507b3          	add	a5,a0,a5
  400628:	01079793          	slli	a5,a5,0x10
  40062c:	4107d793          	srai	a5,a5,0x10
  400630:	cef41323          	sh	a5,-794(s0)
  400634:	001c0c93          	addi	s9,s8,1
  400638:	f61ff06f          	j	400598 <printf+0x78>
  40063c:	03579063          	bne	a5,s5,40065c <printf+0x13c>
  400640:	00c12783          	lw	a5,12(sp)
  400644:	00f00613          	li	a2,15
  400648:	0007a583          	lw	a1,0(a5)
  40064c:	00478713          	addi	a4,a5,4
  400650:	00e12623          	sw	a4,12(sp)
  400654:	dd5ff0ef          	jal	400428 <printDec>
  400658:	fc9ff06f          	j	400620 <printf+0x100>
  40065c:	03679463          	bne	a5,s6,400684 <printf+0x164>
  400660:	00c12783          	lw	a5,12(sp)
  400664:	00f00613          	li	a2,15
  400668:	0007c583          	lbu	a1,0(a5)
  40066c:	00478713          	addi	a4,a5,4
  400670:	00e12623          	sw	a4,12(sp)
  400674:	c25ff0ef          	jal	400298 <putch>
  400678:	ce645783          	lhu	a5,-794(s0)
  40067c:	00178793          	addi	a5,a5,1
  400680:	fa9ff06f          	j	400628 <printf+0x108>
  400684:	03779063          	bne	a5,s7,4006a4 <printf+0x184>
  400688:	00c12783          	lw	a5,12(sp)
  40068c:	00f00613          	li	a2,15
  400690:	0007a583          	lw	a1,0(a5)
  400694:	00478713          	addi	a4,a5,4
  400698:	00e12623          	sw	a4,12(sp)
  40069c:	c2dff0ef          	jal	4002c8 <printString>
  4006a0:	f81ff06f          	j	400620 <printf+0x100>
  4006a4:	00f00613          	li	a2,15
  4006a8:	02500593          	li	a1,37
  4006ac:	bedff0ef          	jal	400298 <putch>
  4006b0:	ce645783          	lhu	a5,-794(s0)
  4006b4:	00178793          	addi	a5,a5,1
  4006b8:	f35ff06f          	j	4005ec <printf+0xcc>
  4006bc:	00f00613          	li	a2,15
  4006c0:	fedff06f          	j	4006ac <printf+0x18c>

004006c4 <printfSCR>:
  4006c4:	f9010113          	addi	sp,sp,-112
  4006c8:	06f12223          	sw	a5,100(sp)
  4006cc:	05c10793          	addi	a5,sp,92
  4006d0:	04812423          	sw	s0,72(sp)
  4006d4:	04912223          	sw	s1,68(sp)
  4006d8:	05212023          	sw	s2,64(sp)
  4006dc:	03412c23          	sw	s4,56(sp)
  4006e0:	03512a23          	sw	s5,52(sp)
  4006e4:	03612823          	sw	s6,48(sp)
  4006e8:	03712623          	sw	s7,44(sp)
  4006ec:	03812423          	sw	s8,40(sp)
  4006f0:	03912223          	sw	s9,36(sp)
  4006f4:	03a12023          	sw	s10,32(sp)
  4006f8:	01b12e23          	sw	s11,28(sp)
  4006fc:	04112623          	sw	ra,76(sp)
  400700:	03312e23          	sw	s3,60(sp)
  400704:	00050a93          	mv	s5,a0
  400708:	00058493          	mv	s1,a1
  40070c:	00060a13          	mv	s4,a2
  400710:	04d12e23          	sw	a3,92(sp)
  400714:	06e12023          	sw	a4,96(sp)
  400718:	07012423          	sw	a6,104(sp)
  40071c:	07112623          	sw	a7,108(sp)
  400720:	00f12623          	sw	a5,12(sp)
  400724:	00000913          	li	s2,0
  400728:	00000413          	li	s0,0
  40072c:	00a00b13          	li	s6,10
  400730:	02500b93          	li	s7,37
  400734:	07800c13          	li	s8,120
  400738:	06400c93          	li	s9,100
  40073c:	06300d13          	li	s10,99
  400740:	07300d93          	li	s11,115
  400744:	012a07b3          	add	a5,s4,s2
  400748:	0007c583          	lbu	a1,0(a5)
  40074c:	04059263          	bnez	a1,400790 <printfSCR+0xcc>
  400750:	04c12083          	lw	ra,76(sp)
  400754:	00040513          	mv	a0,s0
  400758:	04812403          	lw	s0,72(sp)
  40075c:	04412483          	lw	s1,68(sp)
  400760:	04012903          	lw	s2,64(sp)
  400764:	03c12983          	lw	s3,60(sp)
  400768:	03812a03          	lw	s4,56(sp)
  40076c:	03412a83          	lw	s5,52(sp)
  400770:	03012b03          	lw	s6,48(sp)
  400774:	02c12b83          	lw	s7,44(sp)
  400778:	02812c03          	lw	s8,40(sp)
  40077c:	02412c83          	lw	s9,36(sp)
  400780:	02012d03          	lw	s10,32(sp)
  400784:	01c12d83          	lw	s11,28(sp)
  400788:	07010113          	addi	sp,sp,112
  40078c:	00008067          	ret
  400790:	00190993          	addi	s3,s2,1
  400794:	01659a63          	bne	a1,s6,4007a8 <printfSCR+0xe4>
  400798:	fc047413          	andi	s0,s0,-64
  40079c:	04040413          	addi	s0,s0,64
  4007a0:	00090993          	mv	s3,s2
  4007a4:	0740006f          	j	400818 <printfSCR+0x154>
  4007a8:	01540533          	add	a0,s0,s5
  4007ac:	0b759463          	bne	a1,s7,400854 <printfSCR+0x190>
  4007b0:	0017c783          	lbu	a5,1(a5)
  4007b4:	03879263          	bne	a5,s8,4007d8 <printfSCR+0x114>
  4007b8:	00c12783          	lw	a5,12(sp)
  4007bc:	00048613          	mv	a2,s1
  4007c0:	0007a583          	lw	a1,0(a5)
  4007c4:	00478713          	addi	a4,a5,4
  4007c8:	00e12623          	sw	a4,12(sp)
  4007cc:	bbdff0ef          	jal	400388 <printHex>
  4007d0:	00a40433          	add	s0,s0,a0
  4007d4:	0440006f          	j	400818 <printfSCR+0x154>
  4007d8:	03979063          	bne	a5,s9,4007f8 <printfSCR+0x134>
  4007dc:	00c12783          	lw	a5,12(sp)
  4007e0:	00048613          	mv	a2,s1
  4007e4:	0007a583          	lw	a1,0(a5)
  4007e8:	00478713          	addi	a4,a5,4
  4007ec:	00e12623          	sw	a4,12(sp)
  4007f0:	c39ff0ef          	jal	400428 <printDec>
  4007f4:	fddff06f          	j	4007d0 <printfSCR+0x10c>
  4007f8:	03a79463          	bne	a5,s10,400820 <printfSCR+0x15c>
  4007fc:	00c12783          	lw	a5,12(sp)
  400800:	00048613          	mv	a2,s1
  400804:	00140413          	addi	s0,s0,1
  400808:	0007c583          	lbu	a1,0(a5)
  40080c:	00478713          	addi	a4,a5,4
  400810:	00e12623          	sw	a4,12(sp)
  400814:	a85ff0ef          	jal	400298 <putch>
  400818:	00198913          	addi	s2,s3,1
  40081c:	f29ff06f          	j	400744 <printfSCR+0x80>
  400820:	03b79063          	bne	a5,s11,400840 <printfSCR+0x17c>
  400824:	00c12783          	lw	a5,12(sp)
  400828:	00048613          	mv	a2,s1
  40082c:	0007a583          	lw	a1,0(a5)
  400830:	00478713          	addi	a4,a5,4
  400834:	00e12623          	sw	a4,12(sp)
  400838:	a91ff0ef          	jal	4002c8 <printString>
  40083c:	f95ff06f          	j	4007d0 <printfSCR+0x10c>
  400840:	00048613          	mv	a2,s1
  400844:	02500593          	li	a1,37
  400848:	a51ff0ef          	jal	400298 <putch>
  40084c:	00140413          	addi	s0,s0,1
  400850:	f51ff06f          	j	4007a0 <printfSCR+0xdc>
  400854:	00048613          	mv	a2,s1
  400858:	ff1ff06f          	j	400848 <printfSCR+0x184>

0040085c <clearScreen>:
  40085c:	ff010113          	addi	sp,sp,-16
  400860:	00812423          	sw	s0,8(sp)
  400864:	00912223          	sw	s1,4(sp)
  400868:	00112623          	sw	ra,12(sp)
  40086c:	00000413          	li	s0,0
  400870:	4c000493          	li	s1,1216
  400874:	00040513          	mv	a0,s0
  400878:	00f00613          	li	a2,15
  40087c:	02000593          	li	a1,32
  400880:	00140413          	addi	s0,s0,1
  400884:	a15ff0ef          	jal	400298 <putch>
  400888:	fe9416e3          	bne	s0,s1,400874 <clearScreen+0x18>
  40088c:	00c12083          	lw	ra,12(sp)
  400890:	00812403          	lw	s0,8(sp)
  400894:	004027b7          	lui	a5,0x402
  400898:	ce079323          	sh	zero,-794(a5) # 401ce6 <screenPos>
  40089c:	00412483          	lw	s1,4(sp)
  4008a0:	01010113          	addi	sp,sp,16
  4008a4:	00008067          	ret

004008a8 <resetScreenVector>:
  4008a8:	004027b7          	lui	a5,0x402
  4008ac:	ce079323          	sh	zero,-794(a5) # 401ce6 <screenPos>
  4008b0:	00008067          	ret
  4008b4:	00ac                	.insn	2, 0x00ac
  4008b6:	0040                	.insn	2, 0x0040
  4008b8:	00ac                	.insn	2, 0x00ac
  4008ba:	0040                	.insn	2, 0x0040
  4008bc:	00ac                	.insn	2, 0x00ac
  4008be:	0040                	.insn	2, 0x0040
  4008c0:	00ac                	.insn	2, 0x00ac
  4008c2:	0040                	.insn	2, 0x0040
  4008c4:	00ac                	.insn	2, 0x00ac
  4008c6:	0040                	.insn	2, 0x0040
  4008c8:	00ac                	.insn	2, 0x00ac
  4008ca:	0040                	.insn	2, 0x0040
  4008cc:	00ac                	.insn	2, 0x00ac
  4008ce:	0040                	.insn	2, 0x0040
  4008d0:	00ac                	.insn	2, 0x00ac
  4008d2:	0040                	.insn	2, 0x0040
  4008d4:	00ac                	.insn	2, 0x00ac
  4008d6:	0040                	.insn	2, 0x0040
  4008d8:	00ac                	.insn	2, 0x00ac
  4008da:	0040                	.insn	2, 0x0040
  4008dc:	0144                	.insn	2, 0x0144
  4008de:	0040                	.insn	2, 0x0040
  4008e0:	0070                	.insn	2, 0x0070
  4008e2:	0040                	.insn	2, 0x0040
  4008e4:	00b4                	.insn	2, 0x00b4
  4008e6:	0040                	.insn	2, 0x0040
  4008e8:	00bc                	.insn	2, 0x00bc
  4008ea:	0040                	.insn	2, 0x0040
  4008ec:	00c4                	.insn	2, 0x00c4
  4008ee:	0040                	.insn	2, 0x0040
  4008f0:	006c                	.insn	2, 0x006c
  4008f2:	0040                	.insn	2, 0x0040
  4008f4:	00cc                	.insn	2, 0x00cc
  4008f6:	0040                	.insn	2, 0x0040
  4008f8:	00d4                	.insn	2, 0x00d4
  4008fa:	0040                	.insn	2, 0x0040
  4008fc:	00dc                	.insn	2, 0x00dc
  4008fe:	0040                	.insn	2, 0x0040
  400900:	00e4                	.insn	2, 0x00e4
  400902:	0040                	.insn	2, 0x0040
  400904:	0068                	.insn	2, 0x0068
  400906:	0040                	.insn	2, 0x0040
  400908:	00ec                	.insn	2, 0x00ec
  40090a:	0040                	.insn	2, 0x0040
  40090c:	00f4                	.insn	2, 0x00f4
  40090e:	0040                	.insn	2, 0x0040
  400910:	00fc                	.insn	2, 0x00fc
  400912:	0040                	.insn	2, 0x0040
  400914:	0104                	.insn	2, 0x0104
  400916:	0040                	.insn	2, 0x0040
  400918:	010c                	.insn	2, 0x010c
  40091a:	0040                	.insn	2, 0x0040
  40091c:	0114                	.insn	2, 0x0114
  40091e:	0040                	.insn	2, 0x0040
  400920:	0068                	.insn	2, 0x0068
  400922:	0040                	.insn	2, 0x0040
  400924:	011c                	.insn	2, 0x011c
  400926:	0040                	.insn	2, 0x0040
  400928:	011c                	.insn	2, 0x011c
  40092a:	0040                	.insn	2, 0x0040
  40092c:	011c                	.insn	2, 0x011c
  40092e:	0040                	.insn	2, 0x0040
  400930:	011c                	.insn	2, 0x011c
  400932:	0040                	.insn	2, 0x0040
  400934:	011c                	.insn	2, 0x011c
  400936:	0040                	.insn	2, 0x0040
  400938:	011c                	.insn	2, 0x011c
  40093a:	0040                	.insn	2, 0x0040
  40093c:	011c                	.insn	2, 0x011c
  40093e:	0040                	.insn	2, 0x0040
  400940:	011c                	.insn	2, 0x011c
  400942:	0040                	.insn	2, 0x0040
  400944:	011c                	.insn	2, 0x011c
  400946:	0040                	.insn	2, 0x0040
  400948:	011c                	.insn	2, 0x011c
  40094a:	0040                	.insn	2, 0x0040
  40094c:	011c                	.insn	2, 0x011c
  40094e:	0040                	.insn	2, 0x0040
  400950:	011c                	.insn	2, 0x011c
  400952:	0040                	.insn	2, 0x0040
  400954:	0068                	.insn	2, 0x0068
  400956:	0040                	.insn	2, 0x0040
  400958:	0068                	.insn	2, 0x0068
  40095a:	0040                	.insn	2, 0x0040
  40095c:	0068                	.insn	2, 0x0068
  40095e:	0040                	.insn	2, 0x0040
  400960:	0068                	.insn	2, 0x0068
  400962:	0040                	.insn	2, 0x0040
  400964:	0068                	.insn	2, 0x0068
  400966:	0040                	.insn	2, 0x0040
  400968:	0068                	.insn	2, 0x0068
  40096a:	0040                	.insn	2, 0x0040
  40096c:	0068                	.insn	2, 0x0068
  40096e:	0040                	.insn	2, 0x0040
  400970:	0068                	.insn	2, 0x0068
  400972:	0040                	.insn	2, 0x0040
  400974:	0068                	.insn	2, 0x0068
  400976:	0040                	.insn	2, 0x0040
  400978:	0124                	.insn	2, 0x0124
  40097a:	0040                	.insn	2, 0x0040
  40097c:	012c                	.insn	2, 0x012c
  40097e:	0040                	.insn	2, 0x0040
  400980:	0134                	.insn	2, 0x0134
  400982:	0040                	.insn	2, 0x0040
  400984:	013c                	.insn	2, 0x013c
  400986:	0040                	.insn	2, 0x0040
  400988:	111c                	.insn	2, 0x111c
  40098a:	0040                	.insn	2, 0x0040
  40098c:	11f4                	.insn	2, 0x11f4
  40098e:	0040                	.insn	2, 0x0040
  400990:	123c                	.insn	2, 0x123c
  400992:	0040                	.insn	2, 0x0040
  400994:	12c0                	.insn	2, 0x12c0
  400996:	0040                	.insn	2, 0x0040
  400998:	14ec                	.insn	2, 0x14ec
  40099a:	0040                	.insn	2, 0x0040
  40099c:	ffff                	.insn	2, 0xffff
  40099e:	ffff                	.insn	2, 0xffff
  4009a0:	ffff                	.insn	2, 0xffff
  4009a2:	ffff                	.insn	2, 0xffff
  4009a4:	ffff                	.insn	2, 0xffff
  4009a6:	ffff                	.insn	2, 0xffff
  4009a8:	be00                	.insn	2, 0xbe00
  4009aa:	efff ffff ffff ffff 	.insn	22, 0xffffffff0fff03ff33ff0fffffffffffffffffffefff
  4009b2:	ffff 0fff 33ff 03ff 
  4009ba:	0fff ffff ffff 
  4009c0:	ffff                	.insn	2, 0xffff
  4009c2:	ffff                	.insn	2, 0xffff
  4009c4:	fe00                	.insn	2, 0xfe00
  4009c6:	ff8bfe0f          	.insn	4, 0xff8bfe0f
  4009ca:	ffe2                	.insn	2, 0xffe2
  4009cc:	fff8                	.insn	2, 0xfff8
  4009ce:	ffff                	.insn	2, 0xffff
  4009d0:	ffff                	.insn	2, 0xffff
  4009d2:	0fffbfff 3cff33ff 	.insn	16, 0x3f3f3cff33ff0fffbfff
  4009da:	00003f3f 00000000 
  4009e2:	ffff                	.insn	2, 0xffff
  4009e4:	ffff                	.insn	2, 0xffff
  4009e6:	ffff                	.insn	2, 0xffff
  4009e8:	ffff                	.insn	2, 0xffff
  4009ea:	ffff                	.insn	2, 0xffff
  4009ec:	ffff                	.insn	2, 0xffff
  4009ee:	ffff                	.insn	2, 0xffff
  4009f0:	ffff                	.insn	2, 0xffff
  4009f2:	ffff                	.insn	2, 0xffff
  4009f4:	ffff                	.insn	2, 0xffff
  4009f6:	ffff                	.insn	2, 0xffff
  4009f8:	ffff                	.insn	2, 0xffff
  4009fa:	ffff                	.insn	2, 0xffff
  4009fc:	0000                	.insn	2, 0x
  4009fe:	5400                	.insn	2, 0x5400
  400a00:	a900                	.insn	2, 0xa900
  400a02:	aa40                	.insn	2, 0xaa40
  400a04:	aa40                	.insn	2, 0xaa40
  400a06:	f950                	.insn	2, 0xf950
  400a08:	5550                	.insn	2, 0x5550
  400a0a:	ff74                	.insn	2, 0xff74
  400a0c:	dff4                	.insn	2, 0xdff4
  400a0e:	df54                	.insn	2, 0xdf54
  400a10:	bd74                	.insn	2, 0xbd74
  400a12:	5550                	.insn	2, 0x5550
  400a14:	5940                	.insn	2, 0x5940
  400a16:	9500                	.insn	2, 0x9500
  400a18:	6900                	.insn	2, 0x6900
  400a1a:	5400                	.insn	2, 0x5400
  400a1c:	0000                	.insn	2, 0x
  400a1e:	0015                	.insn	2, 0x0015
  400a20:	006a                	.insn	2, 0x006a
  400a22:	01aa                	.insn	2, 0x01aa
  400a24:	01aa                	.insn	2, 0x01aa
  400a26:	0555056f          	jal	a0,45127a <_stack_end+0x4d27a>
  400a2a:	1ff71dff 067e05f7 	.insn	12, 0x05f50755067e05f71ff71dff
  400a32:	05f50755 
  400a36:	01f6                	.insn	2, 0x01f6
  400a38:	0051                	.insn	2, 0x0051
  400a3a:	0000                	.insn	2, 0x
  400a3c:	5400                	.insn	2, 0x5400
  400a3e:	a900                	.insn	2, 0xa900
  400a40:	aa40                	.insn	2, 0xaa40
  400a42:	aa40                	.insn	2, 0xaa40
  400a44:	f950                	.insn	2, 0xf950
  400a46:	5750                	.insn	2, 0x5750
  400a48:	ff74                	.insn	2, 0xff74
  400a4a:	dff4                	.insn	2, 0xdff4
  400a4c:	df50                	.insn	2, 0xdf50
  400a4e:	bd50                	.insn	2, 0xbd50
  400a50:	55f4                	.insn	2, 0x55f4
  400a52:	55f4                	.insn	2, 0x55f4
  400a54:	6950                	.insn	2, 0x6950
  400a56:	9640                	.insn	2, 0x9640
  400a58:	6a40                	.insn	2, 0x6a40
  400a5a:	1500                	.insn	2, 0x1500
  400a5c:	0015                	.insn	2, 0x0015
  400a5e:	006a                	.insn	2, 0x006a
  400a60:	01aa                	.insn	2, 0x01aa
  400a62:	01aa                	.insn	2, 0x01aa
  400a64:	05d5056f          	jal	a0,4512c0 <_stack_end+0x4d2c0>
  400a68:	1ff71dff 057e05f7 	.insn	12, 0x1f551f55057e05f71ff71dff
  400a70:	1f551f55 
  400a74:	0569                	.insn	2, 0x0569
  400a76:	0196                	.insn	2, 0x0196
  400a78:	01a9                	.insn	2, 0x01a9
  400a7a:	0054                	.insn	2, 0x0054
  400a7c:	0000                	.insn	2, 0x
  400a7e:	5400                	.insn	2, 0x5400
  400a80:	a900                	.insn	2, 0xa900
  400a82:	aa40                	.insn	2, 0xaa40
  400a84:	aa40                	.insn	2, 0xaa40
  400a86:	f950                	.insn	2, 0xf950
  400a88:	5550                	.insn	2, 0x5550
  400a8a:	ff74                	.insn	2, 0xff74
  400a8c:	dff4                	.insn	2, 0xdff4
  400a8e:	df50                	.insn	2, 0xdf50
  400a90:	bd90                	.insn	2, 0xbd90
  400a92:	55d0                	.insn	2, 0x55d0
  400a94:	5f50                	.insn	2, 0x5f50
  400a96:	9f40                	.insn	2, 0x9f40
  400a98:	4500                	.insn	2, 0x4500
  400a9a:	0000                	.insn	2, 0x
  400a9c:	0000                	.insn	2, 0x
  400a9e:	0015                	.insn	2, 0x0015
  400aa0:	006a                	.insn	2, 0x006a
  400aa2:	01aa                	.insn	2, 0x01aa
  400aa4:	01aa                	.insn	2, 0x01aa
  400aa6:	0555056f          	jal	a0,4512fa <_stack_end+0x4d2fa>
  400aaa:	1ff71dff 1d7e15f7 	.insn	12, 0x016505551d7e15f71ff71dff
  400ab2:	01650555 
  400ab6:	0056                	.insn	2, 0x0056
  400ab8:	0069                	.insn	2, 0x0069
  400aba:	0015                	.insn	2, 0x0015
  400abc:	5400                	.insn	2, 0x5400
  400abe:	a900                	.insn	2, 0xa900
  400ac0:	aa40                	.insn	2, 0xaa40
  400ac2:	ab50                	.insn	2, 0xab50
  400ac4:	aff4                	.insn	2, 0xaff4
  400ac6:	6a50                	.insn	2, 0x6a50
  400ac8:	f740                	.insn	2, 0xf740
  400aca:	f740                	.insn	2, 0xf740
  400acc:	ff40                	.insn	2, 0xff40
  400ace:	f900                	.insn	2, 0xf900
  400ad0:	5400                	.insn	2, 0x5400
  400ad2:	5000                	.insn	2, 0x5000
  400ad4:	5000                	.insn	2, 0x5000
  400ad6:	a400                	.insn	2, 0xa400
  400ad8:	a400                	.insn	2, 0xa400
  400ada:	5000                	.insn	2, 0x5000
  400adc:	0015                	.insn	2, 0x0015
  400ade:	006a                	.insn	2, 0x006a
  400ae0:	01aa                	.insn	2, 0x01aa
  400ae2:	01aa                	.insn	2, 0x01aa
  400ae4:	056a                	.insn	2, 0x056a
  400ae6:	0555                	.insn	2, 0x0555
  400ae8:	0555                	.insn	2, 0x0555
  400aea:	017d                	.insn	2, 0x017d
  400aec:	007f 0197 01a5 019f 	.insn	10, 0x019f019f01a50197007f
  400af4:	019f 
  400af6:	0055                	.insn	2, 0x0055
  400af8:	001a                	.insn	2, 0x001a
  400afa:	0005                	.insn	2, 0x0005
  400afc:	0000                	.insn	2, 0x
  400afe:	5400                	.insn	2, 0x5400
  400b00:	a900                	.insn	2, 0xa900
  400b02:	aa40                	.insn	2, 0xaa40
  400b04:	ab50                	.insn	2, 0xab50
  400b06:	aff4                	.insn	2, 0xaff4
  400b08:	6a50                	.insn	2, 0x6a50
  400b0a:	f740                	.insn	2, 0xf740
  400b0c:	f740                	.insn	2, 0xf740
  400b0e:	ff40                	.insn	2, 0xff40
  400b10:	f900                	.insn	2, 0xf900
  400b12:	5400                	.insn	2, 0x5400
  400b14:	5540                	.insn	2, 0x5540
  400b16:	a690                	.insn	2, 0xa690
  400b18:	5a40                	.insn	2, 0x5a40
  400b1a:	1500                	.insn	2, 0x1500
  400b1c:	0000                	.insn	2, 0x
  400b1e:	0015                	.insn	2, 0x0015
  400b20:	006a                	.insn	2, 0x006a
  400b22:	01aa                	.insn	2, 0x01aa
  400b24:	01aa                	.insn	2, 0x01aa
  400b26:	056a                	.insn	2, 0x056a
  400b28:	0555                	.insn	2, 0x0555
  400b2a:	0555                	.insn	2, 0x0555
  400b2c:	017d                	.insn	2, 0x017d
  400b2e:	007f 0197 0195 017d 	.insn	10, 0x067d017d01950197007f
  400b36:	067d 
  400b38:	0695                	.insn	2, 0x0695
  400b3a:	0140                	.insn	2, 0x0140
  400b3c:	5400                	.insn	2, 0x5400
  400b3e:	a900                	.insn	2, 0xa900
  400b40:	aa40                	.insn	2, 0xaa40
  400b42:	aa40                	.insn	2, 0xaa40
  400b44:	a950                	.insn	2, 0xa950
  400b46:	5550                	.insn	2, 0x5550
  400b48:	5550                	.insn	2, 0x5550
  400b4a:	7d40                	.insn	2, 0x7d40
  400b4c:	fd00                	.insn	2, 0xfd00
  400b4e:	d640                	.insn	2, 0xd640
  400b50:	5a40                	.insn	2, 0x5a40
  400b52:	f640                	.insn	2, 0xf640
  400b54:	f640                	.insn	2, 0xf640
  400b56:	5500                	.insn	2, 0x5500
  400b58:	a400                	.insn	2, 0xa400
  400b5a:	5000                	.insn	2, 0x5000
  400b5c:	0015                	.insn	2, 0x0015
  400b5e:	006a                	.insn	2, 0x006a
  400b60:	01aa                	.insn	2, 0x01aa
  400b62:	05ea                	.insn	2, 0x05ea
  400b64:	1ffa                	.insn	2, 0x1ffa
  400b66:	05a9                	.insn	2, 0x05a9
  400b68:	01df 01df 01ff      	.insn	6, 0x01ff01df01df
  400b6e:	0015006f          	j	45136e <_stack_end+0x4d36e>
  400b72:	0005                	.insn	2, 0x0005
  400b74:	0005                	.insn	2, 0x0005
  400b76:	001a                	.insn	2, 0x001a
  400b78:	001a                	.insn	2, 0x001a
  400b7a:	0005                	.insn	2, 0x0005
  400b7c:	0000                	.insn	2, 0x
  400b7e:	5400                	.insn	2, 0x5400
  400b80:	a900                	.insn	2, 0xa900
  400b82:	aa40                	.insn	2, 0xaa40
  400b84:	aa40                	.insn	2, 0xaa40
  400b86:	a950                	.insn	2, 0xa950
  400b88:	5550                	.insn	2, 0x5550
  400b8a:	5550                	.insn	2, 0x5550
  400b8c:	7d40                	.insn	2, 0x7d40
  400b8e:	fd00                	.insn	2, 0xfd00
  400b90:	d640                	.insn	2, 0xd640
  400b92:	5640                	.insn	2, 0x5640
  400b94:	7d40                	.insn	2, 0x7d40
  400b96:	7d90                	.insn	2, 0x7d90
  400b98:	5690                	.insn	2, 0x5690
  400b9a:	0140                	.insn	2, 0x0140
  400b9c:	0000                	.insn	2, 0x
  400b9e:	0015                	.insn	2, 0x0015
  400ba0:	006a                	.insn	2, 0x006a
  400ba2:	01aa                	.insn	2, 0x01aa
  400ba4:	05ea                	.insn	2, 0x05ea
  400ba6:	1ffa                	.insn	2, 0x1ffa
  400ba8:	05a9                	.insn	2, 0x05a9
  400baa:	01df 01df 01ff      	.insn	6, 0x01ff01df01df
  400bb0:	0015006f          	j	4513b0 <_stack_end+0x4d3b0>
  400bb4:	0155                	.insn	2, 0x0155
  400bb6:	069a                	.insn	2, 0x069a
  400bb8:	01a5                	.insn	2, 0x01a5
  400bba:	0054                	.insn	2, 0x0054
  400bbc:	0000                	.insn	2, 0x
  400bbe:	5400                	.insn	2, 0x5400
  400bc0:	a900                	.insn	2, 0xa900
  400bc2:	aa40                	.insn	2, 0xaa40
  400bc4:	aa40                	.insn	2, 0xaa40
  400bc6:	aa50                	.insn	2, 0xaa50
  400bc8:	a950                	.insn	2, 0xa950
  400bca:	5574                	.insn	2, 0x5574
  400bcc:	55f4                	.insn	2, 0x55f4
  400bce:	5f54                	.insn	2, 0x5f54
  400bd0:	a574                	.insn	2, 0xa574
  400bd2:	5950                	.insn	2, 0x5950
  400bd4:	e940                	.insn	2, 0xe940
  400bd6:	a500                	.insn	2, 0xa500
  400bd8:	5900                	.insn	2, 0x5900
  400bda:	5400                	.insn	2, 0x5400
  400bdc:	0000                	.insn	2, 0x
  400bde:	0015                	.insn	2, 0x0015
  400be0:	006a                	.insn	2, 0x006a
  400be2:	01aa                	.insn	2, 0x01aa
  400be4:	01aa                	.insn	2, 0x01aa
  400be6:	05aa                	.insn	2, 0x05aa
  400be8:	056a                	.insn	2, 0x056a
  400bea:	1d55                	.insn	2, 0x1d55
  400bec:	1f55                	.insn	2, 0x1f55
  400bee:	05f5                	.insn	2, 0x05f5
  400bf0:	055a                	.insn	2, 0x055a
  400bf2:	1f65                	.insn	2, 0x1f65
  400bf4:	055a1f6b          	.insn	4, 0x055a1f6b
  400bf8:	0005                	.insn	2, 0x0005
  400bfa:	0000                	.insn	2, 0x
  400bfc:	5400                	.insn	2, 0x5400
  400bfe:	a900                	.insn	2, 0xa900
  400c00:	aa40                	.insn	2, 0xaa40
  400c02:	aa40                	.insn	2, 0xaa40
  400c04:	aa50                	.insn	2, 0xaa50
  400c06:	a950                	.insn	2, 0xa950
  400c08:	5574                	.insn	2, 0x5574
  400c0a:	55f4                	.insn	2, 0x55f4
  400c0c:	5f50                	.insn	2, 0x5f50
  400c0e:	a550                	.insn	2, 0xa550
  400c10:	5974                	.insn	2, 0x5974
  400c12:	e974                	.insn	2, 0xe974
  400c14:	a550                	.insn	2, 0xa550
  400c16:	5640                	.insn	2, 0x5640
  400c18:	6a40                	.insn	2, 0x6a40
  400c1a:	1500                	.insn	2, 0x1500
  400c1c:	0015                	.insn	2, 0x0015
  400c1e:	006a                	.insn	2, 0x006a
  400c20:	01aa                	.insn	2, 0x01aa
  400c22:	01aa                	.insn	2, 0x01aa
  400c24:	05aa                	.insn	2, 0x05aa
  400c26:	056a                	.insn	2, 0x056a
  400c28:	1d55                	.insn	2, 0x1d55
  400c2a:	1f55                	.insn	2, 0x1f55
  400c2c:	05f5                	.insn	2, 0x05f5
  400c2e:	055a                	.insn	2, 0x055a
  400c30:	1d65                	.insn	2, 0x1d65
  400c32:	055a1d6b          	.insn	4, 0x055a1d6b
  400c36:	0195                	.insn	2, 0x0195
  400c38:	01a9                	.insn	2, 0x01a9
  400c3a:	0054                	.insn	2, 0x0054
  400c3c:	0000                	.insn	2, 0x
  400c3e:	5400                	.insn	2, 0x5400
  400c40:	a900                	.insn	2, 0xa900
  400c42:	aa40                	.insn	2, 0xaa40
  400c44:	aa40                	.insn	2, 0xaa40
  400c46:	aa50                	.insn	2, 0xaa50
  400c48:	a950                	.insn	2, 0xa950
  400c4a:	5574                	.insn	2, 0x5574
  400c4c:	55f4                	.insn	2, 0x55f4
  400c4e:	5f50                	.insn	2, 0x5f50
  400c50:	a550                	.insn	2, 0xa550
  400c52:	59f4                	.insn	2, 0x59f4
  400c54:	e9f4                	.insn	2, 0xe9f4
  400c56:	a550                	.insn	2, 0xa550
  400c58:	5000                	.insn	2, 0x5000
  400c5a:	0000                	.insn	2, 0x
  400c5c:	0000                	.insn	2, 0x
  400c5e:	0015                	.insn	2, 0x0015
  400c60:	006a                	.insn	2, 0x006a
  400c62:	01aa                	.insn	2, 0x01aa
  400c64:	01aa                	.insn	2, 0x01aa
  400c66:	05aa                	.insn	2, 0x05aa
  400c68:	056a                	.insn	2, 0x056a
  400c6a:	1d55                	.insn	2, 0x1d55
  400c6c:	1f55                	.insn	2, 0x1f55
  400c6e:	15f5                	.insn	2, 0x15f5
  400c70:	1d5a                	.insn	2, 0x1d5a
  400c72:	0565                	.insn	2, 0x0565
  400c74:	005a016b          	.insn	4, 0x005a016b
  400c78:	0065                	.insn	2, 0x0065
  400c7a:	0015                	.insn	2, 0x0015
  400c7c:	2710                	.insn	2, 0x2710
  400c7e:	0000                	.insn	2, 0x
  400c80:	03e8                	.insn	2, 0x03e8
  400c82:	0000                	.insn	2, 0x
  400c84:	0064                	.insn	2, 0x0064
  400c86:	0000                	.insn	2, 0x
  400c88:	000a                	.insn	2, 0x000a
  400c8a:	0000                	.insn	2, 0x
  400c8c:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400c90 <main>:
  400c90:	a8010113          	addi	sp,sp,-1408
  400c94:	004025b7          	lui	a1,0x402
  400c98:	02000613          	li	a2,32
  400c9c:	af858593          	addi	a1,a1,-1288 # 401af8 <main+0xe68>
  400ca0:	0c010513          	addi	a0,sp,192
  400ca4:	56112e23          	sw	ra,1404(sp)
  400ca8:	56812c23          	sw	s0,1400(sp)
  400cac:	56912a23          	sw	s1,1396(sp)
  400cb0:	57212823          	sw	s2,1392(sp)
  400cb4:	57312623          	sw	s3,1388(sp)
  400cb8:	57412423          	sw	s4,1384(sp)
  400cbc:	57512223          	sw	s5,1380(sp)
  400cc0:	57612023          	sw	s6,1376(sp)
  400cc4:	55712e23          	sw	s7,1372(sp)
  400cc8:	55812c23          	sw	s8,1368(sp)
  400ccc:	55912a23          	sw	s9,1364(sp)
  400cd0:	55a12823          	sw	s10,1360(sp)
  400cd4:	55b12623          	sw	s11,1356(sp)
  400cd8:	d50ff0ef          	jal	400228 <memcpy>
  400cdc:	004025b7          	lui	a1,0x402
  400ce0:	02000613          	li	a2,32
  400ce4:	b1c58593          	addi	a1,a1,-1252 # 401b1c <main+0xe8c>
  400ce8:	0e010513          	addi	a0,sp,224
  400cec:	d3cff0ef          	jal	400228 <memcpy>
  400cf0:	004015b7          	lui	a1,0x401
  400cf4:	99c58413          	addi	s0,a1,-1636 # 40099c <resetScreenVector+0xf4>
  400cf8:	02000613          	li	a2,32
  400cfc:	99c58593          	addi	a1,a1,-1636
  400d00:	10010513          	addi	a0,sp,256
  400d04:	d24ff0ef          	jal	400228 <memcpy>
  400d08:	004025b7          	lui	a1,0x402
  400d0c:	02000613          	li	a2,32
  400d10:	b4058593          	addi	a1,a1,-1216 # 401b40 <main+0xeb0>
  400d14:	12010513          	addi	a0,sp,288
  400d18:	d10ff0ef          	jal	400228 <memcpy>
  400d1c:	02040593          	addi	a1,s0,32
  400d20:	02000613          	li	a2,32
  400d24:	14010513          	addi	a0,sp,320
  400d28:	d00ff0ef          	jal	400228 <memcpy>
  400d2c:	004025b7          	lui	a1,0x402
  400d30:	02000613          	li	a2,32
  400d34:	b6458593          	addi	a1,a1,-1180 # 401b64 <main+0xed4>
  400d38:	16010513          	addi	a0,sp,352
  400d3c:	cecff0ef          	jal	400228 <memcpy>
  400d40:	004025b7          	lui	a1,0x402
  400d44:	02000613          	li	a2,32
  400d48:	b8858593          	addi	a1,a1,-1144 # 401b88 <main+0xef8>
  400d4c:	18010513          	addi	a0,sp,384
  400d50:	cd8ff0ef          	jal	400228 <memcpy>
  400d54:	004025b7          	lui	a1,0x402
  400d58:	02000613          	li	a2,32
  400d5c:	bac58593          	addi	a1,a1,-1108 # 401bac <main+0xf1c>
  400d60:	1a010513          	addi	a0,sp,416
  400d64:	cc4ff0ef          	jal	400228 <memcpy>
  400d68:	004025b7          	lui	a1,0x402
  400d6c:	02000613          	li	a2,32
  400d70:	bd058593          	addi	a1,a1,-1072 # 401bd0 <main+0xf40>
  400d74:	1c010513          	addi	a0,sp,448
  400d78:	cb0ff0ef          	jal	400228 <memcpy>
  400d7c:	004025b7          	lui	a1,0x402
  400d80:	02000613          	li	a2,32
  400d84:	bf458593          	addi	a1,a1,-1036 # 401bf4 <main+0xf64>
  400d88:	1e010513          	addi	a0,sp,480
  400d8c:	c9cff0ef          	jal	400228 <memcpy>
  400d90:	004025b7          	lui	a1,0x402
  400d94:	02000613          	li	a2,32
  400d98:	c1858593          	addi	a1,a1,-1000 # 401c18 <main+0xf88>
  400d9c:	20010513          	addi	a0,sp,512
  400da0:	c88ff0ef          	jal	400228 <memcpy>
  400da4:	004025b7          	lui	a1,0x402
  400da8:	02000613          	li	a2,32
  400dac:	c3c58593          	addi	a1,a1,-964 # 401c3c <main+0xfac>
  400db0:	22010513          	addi	a0,sp,544
  400db4:	c74ff0ef          	jal	400228 <memcpy>
  400db8:	004025b7          	lui	a1,0x402
  400dbc:	02000613          	li	a2,32
  400dc0:	c6058593          	addi	a1,a1,-928 # 401c60 <main+0xfd0>
  400dc4:	24010513          	addi	a0,sp,576
  400dc8:	c60ff0ef          	jal	400228 <memcpy>
  400dcc:	004025b7          	lui	a1,0x402
  400dd0:	02000613          	li	a2,32
  400dd4:	c8458593          	addi	a1,a1,-892 # 401c84 <main+0xff4>
  400dd8:	26010513          	addi	a0,sp,608
  400ddc:	c4cff0ef          	jal	400228 <memcpy>
  400de0:	004025b7          	lui	a1,0x402
  400de4:	02000613          	li	a2,32
  400de8:	ca858593          	addi	a1,a1,-856 # 401ca8 <main+0x1018>
  400dec:	28010513          	addi	a0,sp,640
  400df0:	c38ff0ef          	jal	400228 <memcpy>
  400df4:	04040593          	addi	a1,s0,64
  400df8:	02000613          	li	a2,32
  400dfc:	2a010513          	addi	a0,sp,672
  400e00:	c28ff0ef          	jal	400228 <memcpy>
  400e04:	2c010893          	addi	a7,sp,704
  400e08:	00088513          	mv	a0,a7
  400e0c:	06040593          	addi	a1,s0,96
  400e10:	02000613          	li	a2,32
  400e14:	c14ff0ef          	jal	400228 <memcpy>
  400e18:	2e010693          	addi	a3,sp,736
  400e1c:	00068513          	mv	a0,a3
  400e20:	08040593          	addi	a1,s0,128
  400e24:	02000613          	li	a2,32
  400e28:	c00ff0ef          	jal	400228 <memcpy>
  400e2c:	0a040593          	addi	a1,s0,160
  400e30:	02000613          	li	a2,32
  400e34:	30010513          	addi	a0,sp,768
  400e38:	bf0ff0ef          	jal	400228 <memcpy>
  400e3c:	0c040593          	addi	a1,s0,192
  400e40:	02000613          	li	a2,32
  400e44:	32010513          	addi	a0,sp,800
  400e48:	be0ff0ef          	jal	400228 <memcpy>
  400e4c:	34010813          	addi	a6,sp,832
  400e50:	00080513          	mv	a0,a6
  400e54:	0e040593          	addi	a1,s0,224
  400e58:	02000613          	li	a2,32
  400e5c:	bccff0ef          	jal	400228 <memcpy>
  400e60:	36010713          	addi	a4,sp,864
  400e64:	00070513          	mv	a0,a4
  400e68:	10040593          	addi	a1,s0,256
  400e6c:	02000613          	li	a2,32
  400e70:	bb8ff0ef          	jal	400228 <memcpy>
  400e74:	38010d93          	addi	s11,sp,896
  400e78:	12040593          	addi	a1,s0,288
  400e7c:	02000613          	li	a2,32
  400e80:	000d8513          	mv	a0,s11
  400e84:	ba4ff0ef          	jal	400228 <memcpy>
  400e88:	3a010c93          	addi	s9,sp,928
  400e8c:	14040593          	addi	a1,s0,320
  400e90:	02000613          	li	a2,32
  400e94:	000c8513          	mv	a0,s9
  400e98:	b90ff0ef          	jal	400228 <memcpy>
  400e9c:	3c010d13          	addi	s10,sp,960
  400ea0:	16040593          	addi	a1,s0,352
  400ea4:	02000613          	li	a2,32
  400ea8:	000d0513          	mv	a0,s10
  400eac:	b7cff0ef          	jal	400228 <memcpy>
  400eb0:	3e010c13          	addi	s8,sp,992
  400eb4:	18040593          	addi	a1,s0,384
  400eb8:	02000613          	li	a2,32
  400ebc:	000c0513          	mv	a0,s8
  400ec0:	b68ff0ef          	jal	400228 <memcpy>
  400ec4:	40010b93          	addi	s7,sp,1024
  400ec8:	1a040593          	addi	a1,s0,416
  400ecc:	02000613          	li	a2,32
  400ed0:	000b8513          	mv	a0,s7
  400ed4:	b54ff0ef          	jal	400228 <memcpy>
  400ed8:	42010a93          	addi	s5,sp,1056
  400edc:	1c040593          	addi	a1,s0,448
  400ee0:	02000613          	li	a2,32
  400ee4:	000a8513          	mv	a0,s5
  400ee8:	b40ff0ef          	jal	400228 <memcpy>
  400eec:	44010b13          	addi	s6,sp,1088
  400ef0:	1e040593          	addi	a1,s0,480
  400ef4:	02000613          	li	a2,32
  400ef8:	000b0513          	mv	a0,s6
  400efc:	b2cff0ef          	jal	400228 <memcpy>
  400f00:	46010a13          	addi	s4,sp,1120
  400f04:	20040593          	addi	a1,s0,512
  400f08:	02000613          	li	a2,32
  400f0c:	000a0513          	mv	a0,s4
  400f10:	b18ff0ef          	jal	400228 <memcpy>
  400f14:	48010993          	addi	s3,sp,1152
  400f18:	22040593          	addi	a1,s0,544
  400f1c:	02000613          	li	a2,32
  400f20:	00098513          	mv	a0,s3
  400f24:	b04ff0ef          	jal	400228 <memcpy>
  400f28:	4a010493          	addi	s1,sp,1184
  400f2c:	24040593          	addi	a1,s0,576
  400f30:	02000613          	li	a2,32
  400f34:	00048513          	mv	a0,s1
  400f38:	af0ff0ef          	jal	400228 <memcpy>
  400f3c:	26040593          	addi	a1,s0,608
  400f40:	02000613          	li	a2,32
  400f44:	4c010513          	addi	a0,sp,1216
  400f48:	ae0ff0ef          	jal	400228 <memcpy>
  400f4c:	28040593          	addi	a1,s0,640
  400f50:	02000613          	li	a2,32
  400f54:	4e010513          	addi	a0,sp,1248
  400f58:	ad0ff0ef          	jal	400228 <memcpy>
  400f5c:	50010913          	addi	s2,sp,1280
  400f60:	2a040593          	addi	a1,s0,672
  400f64:	02000613          	li	a2,32
  400f68:	00090513          	mv	a0,s2
  400f6c:	abcff0ef          	jal	400228 <memcpy>
  400f70:	52010793          	addi	a5,sp,1312
  400f74:	2c040593          	addi	a1,s0,704
  400f78:	02000613          	li	a2,32
  400f7c:	00078513          	mv	a0,a5
  400f80:	aa8ff0ef          	jal	400228 <memcpy>
  400f84:	30010713          	addi	a4,sp,768
  400f88:	02e12023          	sw	a4,32(sp)
  400f8c:	02e12423          	sw	a4,40(sp)
  400f90:	32010713          	addi	a4,sp,800
  400f94:	02e12a23          	sw	a4,52(sp)
  400f98:	02e12e23          	sw	a4,60(sp)
  400f9c:	36010713          	addi	a4,sp,864
  400fa0:	04e12023          	sw	a4,64(sp)
  400fa4:	4c010713          	addi	a4,sp,1216
  400fa8:	2c010893          	addi	a7,sp,704
  400fac:	34010813          	addi	a6,sp,832
  400fb0:	2e010693          	addi	a3,sp,736
  400fb4:	08e12c23          	sw	a4,152(sp)
  400fb8:	0ae12023          	sw	a4,160(sp)
  400fbc:	4e010713          	addi	a4,sp,1248
  400fc0:	0a912823          	sw	s1,176(sp)
  400fc4:	03112223          	sw	a7,36(sp)
  400fc8:	03012623          	sw	a6,44(sp)
  400fcc:	02d12c23          	sw	a3,56(sp)
  400fd0:	05b12423          	sw	s11,72(sp)
  400fd4:	05a12623          	sw	s10,76(sp)
  400fd8:	05912e23          	sw	s9,92(sp)
  400fdc:	07812023          	sw	s8,96(sp)
  400fe0:	07712823          	sw	s7,112(sp)
  400fe4:	07612a23          	sw	s6,116(sp)
  400fe8:	09512223          	sw	s5,132(sp)
  400fec:	09412423          	sw	s4,136(sp)
  400ff0:	09312e23          	sw	s3,156(sp)
  400ff4:	0b212223          	sw	s2,164(sp)
  400ff8:	0ae12623          	sw	a4,172(sp)
  400ffc:	0ae12a23          	sw	a4,180(sp)
  401000:	0aa12c23          	sw	a0,184(sp)
  401004:	00000413          	li	s0,0
  401008:	4c000493          	li	s1,1216
  40100c:	00040513          	mv	a0,s0
  401010:	07000613          	li	a2,112
  401014:	02000593          	li	a1,32
  401018:	00140413          	addi	s0,s0,1
  40101c:	a7cff0ef          	jal	400298 <putch>
  401020:	fe9416e3          	bne	s0,s1,40100c <main+0x37c>
  401024:	8a0007b7          	lui	a5,0x8a000
  401028:	0007a703          	lw	a4,0(a5) # 8a000000 <_stack_end+0x89bfc000>
  40102c:	30010593          	addi	a1,sp,768
  401030:	00000513          	li	a0,0
  401034:	00e12c23          	sw	a4,24(sp)
  401038:	0007a783          	lw	a5,0(a5)
  40103c:	0a800a13          	li	s4,168
  401040:	0dc00493          	li	s1,220
  401044:	00f12e23          	sw	a5,28(sp)
  401048:	fe1fe0ef          	jal	400028 <WriteSprite>
  40104c:	32010593          	addi	a1,sp,800
  401050:	00100513          	li	a0,1
  401054:	fd5fe0ef          	jal	400028 <WriteSprite>
  401058:	2a010593          	addi	a1,sp,672
  40105c:	00200513          	li	a0,2
  401060:	fc9fe0ef          	jal	400028 <WriteSprite>
  401064:	00a007b7          	lui	a5,0xa00
  401068:	0dc78793          	addi	a5,a5,220 # a000dc <_stack_end+0x5fc0dc>
  40106c:	88002737          	lui	a4,0x88002
  401070:	00f72023          	sw	a5,0(a4) # 88002000 <_stack_end+0x87bfe000>
  401074:	00a80737          	lui	a4,0xa80
  401078:	880027b7          	lui	a5,0x88002
  40107c:	2dc70713          	addi	a4,a4,732 # a802dc <_stack_end+0x67c2dc>
  401080:	00e7a223          	sw	a4,4(a5) # 88002004 <_stack_end+0x87bfe004>
  401084:	00100793          	li	a5,1
  401088:	00f12023          	sw	a5,0(sp)
  40108c:	004017b7          	lui	a5,0x401
  401090:	98878793          	addi	a5,a5,-1656 # 400988 <resetScreenVector+0xe0>
  401094:	00f12423          	sw	a5,8(sp)
  401098:	000187b7          	lui	a5,0x18
  40109c:	6a078793          	addi	a5,a5,1696 # 186a0 <_stack_size+0x17ea0>
  4010a0:	00012223          	sw	zero,4(sp)
  4010a4:	0a000913          	li	s2,160
  4010a8:	00000d13          	li	s10,0
  4010ac:	00100d93          	li	s11,1
  4010b0:	00000c93          	li	s9,0
  4010b4:	00000b13          	li	s6,0
  4010b8:	00000c13          	li	s8,0
  4010bc:	00000413          	li	s0,0
  4010c0:	03000b93          	li	s7,48
  4010c4:	00100993          	li	s3,1
  4010c8:	00f12623          	sw	a5,12(sp)
  4010cc:	8a0007b7          	lui	a5,0x8a000
  4010d0:	0007a783          	lw	a5,0(a5) # 8a000000 <_stack_end+0x89bfc000>
  4010d4:	07000613          	li	a2,112
  4010d8:	000b8593          	mv	a1,s7
  4010dc:	03f00513          	li	a0,63
  4010e0:	00f12e23          	sw	a5,28(sp)
  4010e4:	9b4ff0ef          	jal	400298 <putch>
  4010e8:	100007b7          	lui	a5,0x10000
  4010ec:	0007a503          	lw	a0,0(a5) # 10000000 <_stack_end+0xfbfc000>
  4010f0:	01855513          	srli	a0,a0,0x18
  4010f4:	f65fe0ef          	jal	400058 <USBParser>
  4010f8:	00050a93          	mv	s5,a0
  4010fc:	0a0b1663          	bnez	s6,4011a8 <main+0x518>
  401100:	00400793          	li	a5,4
  401104:	0b87e263          	bltu	a5,s8,4011a8 <main+0x518>
  401108:	00812703          	lw	a4,8(sp)
  40110c:	002c1793          	slli	a5,s8,0x2
  401110:	00e787b3          	add	a5,a5,a4
  401114:	0007a783          	lw	a5,0(a5)
  401118:	00078067          	jr	a5
  40111c:	00402637          	lui	a2,0x402
  401120:	82060613          	addi	a2,a2,-2016 # 401820 <main+0xb90>
  401124:	07000593          	li	a1,112
  401128:	14f00513          	li	a0,335
  40112c:	d98ff0ef          	jal	4006c4 <printfSCR>
  401130:	00402637          	lui	a2,0x402
  401134:	83c60613          	addi	a2,a2,-1988 # 40183c <main+0xbac>
  401138:	07000593          	li	a1,112
  40113c:	18f00513          	li	a0,399
  401140:	d84ff0ef          	jal	4006c4 <printfSCR>
  401144:	00402637          	lui	a2,0x402
  401148:	85860613          	addi	a2,a2,-1960 # 401858 <main+0xbc8>
  40114c:	07000593          	li	a1,112
  401150:	1cf00513          	li	a0,463
  401154:	d70ff0ef          	jal	4006c4 <printfSCR>
  401158:	00402637          	lui	a2,0x402
  40115c:	87860613          	addi	a2,a2,-1928 # 401878 <main+0xbe8>
  401160:	07000593          	li	a1,112
  401164:	20f00513          	li	a0,527
  401168:	d5cff0ef          	jal	4006c4 <printfSCR>
  40116c:	00402637          	lui	a2,0x402
  401170:	89460613          	addi	a2,a2,-1900 # 401894 <main+0xc04>
  401174:	07000593          	li	a1,112
  401178:	24f00513          	li	a0,591
  40117c:	d48ff0ef          	jal	4006c4 <printfSCR>
  401180:	00402637          	lui	a2,0x402
  401184:	8b060613          	addi	a2,a2,-1872 # 4018b0 <main+0xc20>
  401188:	07000593          	li	a1,112
  40118c:	28f00513          	li	a0,655
  401190:	d34ff0ef          	jal	4006c4 <printfSCR>
  401194:	00402637          	lui	a2,0x402
  401198:	8cc60613          	addi	a2,a2,-1844 # 4018cc <main+0xc3c>
  40119c:	07000593          	li	a1,112
  4011a0:	2cf00513          	li	a0,719
  4011a4:	d20ff0ef          	jal	4006c4 <printfSCR>
  4011a8:	004027b7          	lui	a5,0x402
  4011ac:	af078613          	addi	a2,a5,-1296 # 401af0 <main+0xe60>
  4011b0:	07000593          	li	a1,112
  4011b4:	4ba00513          	li	a0,1210
  4011b8:	00147b13          	andi	s6,s0,1
  4011bc:	d08ff0ef          	jal	4006c4 <printfSCR>
  4011c0:	3e0b1063          	bnez	s6,4015a0 <main+0x910>
  4011c4:	07100793          	li	a5,113
  4011c8:	60fa8c63          	beq	s5,a5,4017e0 <main+0xb50>
  4011cc:	3b57ee63          	bltu	a5,s5,401588 <main+0x8f8>
  4011d0:	06100793          	li	a5,97
  4011d4:	4afa8863          	beq	s5,a5,401684 <main+0x9f4>
  4011d8:	06400793          	li	a5,100
  4011dc:	4afa8a63          	beq	s5,a5,401690 <main+0xa00>
  4011e0:	02000793          	li	a5,32
  4011e4:	48fa8863          	beq	s5,a5,401674 <main+0x9e4>
  4011e8:	00100b13          	li	s6,1
  4011ec:	00400993          	li	s3,4
  4011f0:	3b00006f          	j	4015a0 <main+0x910>
  4011f4:	00402637          	lui	a2,0x402
  4011f8:	8ec60613          	addi	a2,a2,-1812 # 4018ec <main+0xc5c>
  4011fc:	07000593          	li	a1,112
  401200:	00000513          	li	a0,0
  401204:	cc0ff0ef          	jal	4006c4 <printfSCR>
  401208:	04000b13          	li	s6,64
  40120c:	000b0513          	mv	a0,s6
  401210:	07000613          	li	a2,112
  401214:	08200593          	li	a1,130
  401218:	880ff0ef          	jal	400298 <putch>
  40121c:	001b0b13          	addi	s6,s6,1
  401220:	08000793          	li	a5,128
  401224:	fefb14e3          	bne	s6,a5,40120c <main+0x57c>
  401228:	00402637          	lui	a2,0x402
  40122c:	90c60613          	addi	a2,a2,-1780 # 40190c <main+0xc7c>
  401230:	07000593          	li	a1,112
  401234:	1d800513          	li	a0,472
  401238:	f6dff06f          	j	4011a4 <main+0x514>
  40123c:	00402637          	lui	a2,0x402
  401240:	91c60613          	addi	a2,a2,-1764 # 40191c <main+0xc8c>
  401244:	07000593          	li	a1,112
  401248:	00000513          	li	a0,0
  40124c:	c78ff0ef          	jal	4006c4 <printfSCR>
  401250:	04000b13          	li	s6,64
  401254:	000b0513          	mv	a0,s6
  401258:	07000613          	li	a2,112
  40125c:	08200593          	li	a1,130
  401260:	838ff0ef          	jal	400298 <putch>
  401264:	001b0b13          	addi	s6,s6,1
  401268:	08000793          	li	a5,128
  40126c:	fefb14e3          	bne	s6,a5,401254 <main+0x5c4>
  401270:	00402637          	lui	a2,0x402
  401274:	93060613          	addi	a2,a2,-1744 # 401930 <main+0xca0>
  401278:	07000593          	li	a1,112
  40127c:	18000513          	li	a0,384
  401280:	c44ff0ef          	jal	4006c4 <printfSCR>
  401284:	00402637          	lui	a2,0x402
  401288:	95060613          	addi	a2,a2,-1712 # 401950 <main+0xcc0>
  40128c:	07000593          	li	a1,112
  401290:	1c000513          	li	a0,448
  401294:	c30ff0ef          	jal	4006c4 <printfSCR>
  401298:	00402637          	lui	a2,0x402
  40129c:	96460613          	addi	a2,a2,-1692 # 401964 <main+0xcd4>
  4012a0:	07000593          	li	a1,112
  4012a4:	20000513          	li	a0,512
  4012a8:	c1cff0ef          	jal	4006c4 <printfSCR>
  4012ac:	00402637          	lui	a2,0x402
  4012b0:	97860613          	addi	a2,a2,-1672 # 401978 <main+0xce8>
  4012b4:	07000593          	li	a1,112
  4012b8:	24000513          	li	a0,576
  4012bc:	ee9ff06f          	j	4011a4 <main+0x514>
  4012c0:	00402637          	lui	a2,0x402
  4012c4:	9a060613          	addi	a2,a2,-1632 # 4019a0 <main+0xd10>
  4012c8:	07000593          	li	a1,112
  4012cc:	00000513          	li	a0,0
  4012d0:	bf4ff0ef          	jal	4006c4 <printfSCR>
  4012d4:	04000b13          	li	s6,64
  4012d8:	000b0513          	mv	a0,s6
  4012dc:	07000613          	li	a2,112
  4012e0:	08200593          	li	a1,130
  4012e4:	fb5fe0ef          	jal	400298 <putch>
  4012e8:	001b0b13          	addi	s6,s6,1
  4012ec:	08000793          	li	a5,128
  4012f0:	fefb14e3          	bne	s6,a5,4012d8 <main+0x648>
  4012f4:	00402637          	lui	a2,0x402
  4012f8:	9b860613          	addi	a2,a2,-1608 # 4019b8 <main+0xd28>
  4012fc:	07000593          	li	a1,112
  401300:	18000513          	li	a0,384
  401304:	bc0ff0ef          	jal	4006c4 <printfSCR>
  401308:	00402637          	lui	a2,0x402
  40130c:	9dc60613          	addi	a2,a2,-1572 # 4019dc <main+0xd4c>
  401310:	07000593          	li	a1,112
  401314:	1c000513          	li	a0,448
  401318:	bacff0ef          	jal	4006c4 <printfSCR>
  40131c:	00402637          	lui	a2,0x402
  401320:	9f860613          	addi	a2,a2,-1544 # 4019f8 <main+0xd68>
  401324:	07000593          	li	a1,112
  401328:	20000513          	li	a0,512
  40132c:	b98ff0ef          	jal	4006c4 <printfSCR>
  401330:	00402637          	lui	a2,0x402
  401334:	a1860613          	addi	a2,a2,-1512 # 401a18 <main+0xd88>
  401338:	07000593          	li	a1,112
  40133c:	24000513          	li	a0,576
  401340:	b84ff0ef          	jal	4006c4 <printfSCR>
  401344:	0c010593          	addi	a1,sp,192
  401348:	00300513          	li	a0,3
  40134c:	cddfe0ef          	jal	400028 <WriteSprite>
  401350:	0e010593          	addi	a1,sp,224
  401354:	00400513          	li	a0,4
  401358:	cd1fe0ef          	jal	400028 <WriteSprite>
  40135c:	10010593          	addi	a1,sp,256
  401360:	00500513          	li	a0,5
  401364:	cc5fe0ef          	jal	400028 <WriteSprite>
  401368:	12010593          	addi	a1,sp,288
  40136c:	00600513          	li	a0,6
  401370:	cb9fe0ef          	jal	400028 <WriteSprite>
  401374:	14010593          	addi	a1,sp,320
  401378:	00700513          	li	a0,7
  40137c:	cadfe0ef          	jal	400028 <WriteSprite>
  401380:	16010593          	addi	a1,sp,352
  401384:	00800513          	li	a0,8
  401388:	ca1fe0ef          	jal	400028 <WriteSprite>
  40138c:	18010593          	addi	a1,sp,384
  401390:	00900513          	li	a0,9
  401394:	c95fe0ef          	jal	400028 <WriteSprite>
  401398:	1a010593          	addi	a1,sp,416
  40139c:	00a00513          	li	a0,10
  4013a0:	c89fe0ef          	jal	400028 <WriteSprite>
  4013a4:	1c010593          	addi	a1,sp,448
  4013a8:	00b00513          	li	a0,11
  4013ac:	c7dfe0ef          	jal	400028 <WriteSprite>
  4013b0:	1e010593          	addi	a1,sp,480
  4013b4:	00c00513          	li	a0,12
  4013b8:	c71fe0ef          	jal	400028 <WriteSprite>
  4013bc:	20010593          	addi	a1,sp,512
  4013c0:	00d00513          	li	a0,13
  4013c4:	c65fe0ef          	jal	400028 <WriteSprite>
  4013c8:	22010593          	addi	a1,sp,544
  4013cc:	00e00513          	li	a0,14
  4013d0:	c59fe0ef          	jal	400028 <WriteSprite>
  4013d4:	24010593          	addi	a1,sp,576
  4013d8:	00f00513          	li	a0,15
  4013dc:	c4dfe0ef          	jal	400028 <WriteSprite>
  4013e0:	26010593          	addi	a1,sp,608
  4013e4:	01000513          	li	a0,16
  4013e8:	c41fe0ef          	jal	400028 <WriteSprite>
  4013ec:	28010593          	addi	a1,sp,640
  4013f0:	01100513          	li	a0,17
  4013f4:	c35fe0ef          	jal	400028 <WriteSprite>
  4013f8:	07000613          	li	a2,112
  4013fc:	08300593          	li	a1,131
  401400:	26800513          	li	a0,616
  401404:	e95fe0ef          	jal	400298 <putch>
  401408:	07000613          	li	a2,112
  40140c:	08400593          	li	a1,132
  401410:	26900513          	li	a0,617
  401414:	e85fe0ef          	jal	400298 <putch>
  401418:	07000613          	li	a2,112
  40141c:	08500593          	li	a1,133
  401420:	26a00513          	li	a0,618
  401424:	e75fe0ef          	jal	400298 <putch>
  401428:	07000613          	li	a2,112
  40142c:	08600593          	li	a1,134
  401430:	26b00513          	li	a0,619
  401434:	e65fe0ef          	jal	400298 <putch>
  401438:	07000613          	li	a2,112
  40143c:	08700593          	li	a1,135
  401440:	26c00513          	li	a0,620
  401444:	e55fe0ef          	jal	400298 <putch>
  401448:	07000613          	li	a2,112
  40144c:	08800593          	li	a1,136
  401450:	2a800513          	li	a0,680
  401454:	e45fe0ef          	jal	400298 <putch>
  401458:	07000613          	li	a2,112
  40145c:	08900593          	li	a1,137
  401460:	2a900513          	li	a0,681
  401464:	e35fe0ef          	jal	400298 <putch>
  401468:	07000613          	li	a2,112
  40146c:	08a00593          	li	a1,138
  401470:	2aa00513          	li	a0,682
  401474:	e25fe0ef          	jal	400298 <putch>
  401478:	07000613          	li	a2,112
  40147c:	08b00593          	li	a1,139
  401480:	2ab00513          	li	a0,683
  401484:	e15fe0ef          	jal	400298 <putch>
  401488:	07000613          	li	a2,112
  40148c:	08c00593          	li	a1,140
  401490:	2ac00513          	li	a0,684
  401494:	e05fe0ef          	jal	400298 <putch>
  401498:	07000613          	li	a2,112
  40149c:	08d00593          	li	a1,141
  4014a0:	2e800513          	li	a0,744
  4014a4:	df5fe0ef          	jal	400298 <putch>
  4014a8:	07000613          	li	a2,112
  4014ac:	08e00593          	li	a1,142
  4014b0:	2e900513          	li	a0,745
  4014b4:	de5fe0ef          	jal	400298 <putch>
  4014b8:	07000613          	li	a2,112
  4014bc:	08f00593          	li	a1,143
  4014c0:	2ea00513          	li	a0,746
  4014c4:	dd5fe0ef          	jal	400298 <putch>
  4014c8:	07000613          	li	a2,112
  4014cc:	09000593          	li	a1,144
  4014d0:	2eb00513          	li	a0,747
  4014d4:	dc5fe0ef          	jal	400298 <putch>
  4014d8:	07000613          	li	a2,112
  4014dc:	09100593          	li	a1,145
  4014e0:	2ec00513          	li	a0,748
  4014e4:	db5fe0ef          	jal	400298 <putch>
  4014e8:	cc1ff06f          	j	4011a8 <main+0x518>
  4014ec:	00402637          	lui	a2,0x402
  4014f0:	a4060613          	addi	a2,a2,-1472 # 401a40 <main+0xdb0>
  4014f4:	07000593          	li	a1,112
  4014f8:	00000513          	li	a0,0
  4014fc:	9c8ff0ef          	jal	4006c4 <printfSCR>
  401500:	04000493          	li	s1,64
  401504:	08000913          	li	s2,128
  401508:	00048513          	mv	a0,s1
  40150c:	07000613          	li	a2,112
  401510:	08200593          	li	a1,130
  401514:	00148493          	addi	s1,s1,1
  401518:	d81fe0ef          	jal	400298 <putch>
  40151c:	ff2496e3          	bne	s1,s2,401508 <main+0x878>
  401520:	00402637          	lui	a2,0x402
  401524:	a5c60613          	addi	a2,a2,-1444 # 401a5c <main+0xdcc>
  401528:	07000593          	li	a1,112
  40152c:	18000513          	li	a0,384
  401530:	994ff0ef          	jal	4006c4 <printfSCR>
  401534:	00402637          	lui	a2,0x402
  401538:	a7860613          	addi	a2,a2,-1416 # 401a78 <main+0xde8>
  40153c:	07000593          	li	a1,112
  401540:	1c000513          	li	a0,448
  401544:	980ff0ef          	jal	4006c4 <printfSCR>
  401548:	00402637          	lui	a2,0x402
  40154c:	aa060613          	addi	a2,a2,-1376 # 401aa0 <main+0xe10>
  401550:	07000593          	li	a1,112
  401554:	20000513          	li	a0,512
  401558:	96cff0ef          	jal	4006c4 <printfSCR>
  40155c:	00402637          	lui	a2,0x402
  401560:	ad460613          	addi	a2,a2,-1324 # 401ad4 <main+0xe44>
  401564:	07000593          	li	a1,112
  401568:	24000513          	li	a0,576
  40156c:	958ff0ef          	jal	4006c4 <printfSCR>
  401570:	00100793          	li	a5,1
  401574:	0d000a13          	li	s4,208
  401578:	00f12223          	sw	a5,4(sp)
  40157c:	09400493          	li	s1,148
  401580:	0c800913          	li	s2,200
  401584:	c25ff06f          	j	4011a8 <main+0x518>
  401588:	07300793          	li	a5,115
  40158c:	10fa8863          	beq	s5,a5,40169c <main+0xa0c>
  401590:	f89a8993          	addi	s3,s5,-119
  401594:	013039b3          	snez	s3,s3
  401598:	00299993          	slli	s3,s3,0x2
  40159c:	00100b13          	li	s6,1
  4015a0:	07000613          	li	a2,112
  4015a4:	000a8593          	mv	a1,s5
  4015a8:	03e00513          	li	a0,62
  4015ac:	cedfe0ef          	jal	400298 <putch>
  4015b0:	01c12783          	lw	a5,28(sp)
  4015b4:	01812703          	lw	a4,24(sp)
  4015b8:	40e787b3          	sub	a5,a5,a4
  4015bc:	00c12703          	lw	a4,12(sp)
  4015c0:	4017d793          	srai	a5,a5,0x1
  4015c4:	b0f754e3          	bge	a4,a5,4010cc <main+0x43c>
  4015c8:	001b8b93          	addi	s7,s7,1
  4015cc:	0ffbfb93          	zext.b	s7,s7
  4015d0:	03900793          	li	a5,57
  4015d4:	0177f463          	bgeu	a5,s7,4015dc <main+0x94c>
  4015d8:	03000b93          	li	s7,48
  4015dc:	8a0007b7          	lui	a5,0x8a000
  4015e0:	0007a783          	lw	a5,0(a5) # 8a000000 <_stack_end+0x89bfc000>
  4015e4:	00f12c23          	sw	a5,24(sp)
  4015e8:	0c099063          	bnez	s3,4016a8 <main+0xa18>
  4015ec:	001d0413          	addi	s0,s10,1
  4015f0:	0ff47413          	zext.b	s0,s0
  4015f4:	00300793          	li	a5,3
  4015f8:	00000d13          	li	s10,0
  4015fc:	0087e463          	bltu	a5,s0,401604 <main+0x974>
  401600:	00040d13          	mv	s10,s0
  401604:	ffc48493          	addi	s1,s1,-4
  401608:	01049493          	slli	s1,s1,0x10
  40160c:	4104d493          	srai	s1,s1,0x10
  401610:	0004d463          	bgez	s1,401618 <main+0x988>
  401614:	12c00493          	li	s1,300
  401618:	002d1a93          	slli	s5,s10,0x2
  40161c:	530a8793          	addi	a5,s5,1328
  401620:	01010713          	addi	a4,sp,16
  401624:	00e78ab3          	add	s5,a5,a4
  401628:	b58aa583          	lw	a1,-1192(s5)
  40162c:	00000513          	li	a0,0
  401630:	9f9fe0ef          	jal	400028 <WriteSprite>
  401634:	b6caa583          	lw	a1,-1172(s5)
  401638:	00100513          	li	a0,1
  40163c:	9edfe0ef          	jal	400028 <WriteSprite>
  401640:	00412683          	lw	a3,4(sp)
  401644:	00048613          	mv	a2,s1
  401648:	00090593          	mv	a1,s2
  40164c:	00000713          	li	a4,0
  401650:	00000513          	li	a0,0
  401654:	af9fe0ef          	jal	40014c <SetAttributes>
  401658:	00412683          	lw	a3,4(sp)
  40165c:	00100713          	li	a4,1
  401660:	00048613          	mv	a2,s1
  401664:	000a0593          	mv	a1,s4
  401668:	00100513          	li	a0,1
  40166c:	ae1fe0ef          	jal	40014c <SetAttributes>
  401670:	a5dff06f          	j	4010cc <main+0x43c>
  401674:	001c0c13          	addi	s8,s8,1
  401678:	b15fe0ef          	jal	40018c <ClearScreenRightToLeft>
  40167c:	0ffc7c13          	zext.b	s8,s8
  401680:	b6dff06f          	j	4011ec <main+0x55c>
  401684:	00100b13          	li	s6,1
  401688:	00200993          	li	s3,2
  40168c:	f15ff06f          	j	4015a0 <main+0x910>
  401690:	00100b13          	li	s6,1
  401694:	00300993          	li	s3,3
  401698:	f09ff06f          	j	4015a0 <main+0x910>
  40169c:	00100b13          	li	s6,1
  4016a0:	00100993          	li	s3,1
  4016a4:	efdff06f          	j	4015a0 <main+0x910>
  4016a8:	00100793          	li	a5,1
  4016ac:	04f99c63          	bne	s3,a5,401704 <main+0xa74>
  4016b0:	001c8413          	addi	s0,s9,1
  4016b4:	0ff47413          	zext.b	s0,s0
  4016b8:	00300793          	li	a5,3
  4016bc:	00000c93          	li	s9,0
  4016c0:	0087e463          	bltu	a5,s0,4016c8 <main+0xa38>
  4016c4:	00040c93          	mv	s9,s0
  4016c8:	00448493          	addi	s1,s1,4
  4016cc:	01049493          	slli	s1,s1,0x10
  4016d0:	4104d493          	srai	s1,s1,0x10
  4016d4:	12c00793          	li	a5,300
  4016d8:	0097d463          	bge	a5,s1,4016e0 <main+0xa50>
  4016dc:	00000493          	li	s1,0
  4016e0:	002c9a93          	slli	s5,s9,0x2
  4016e4:	530a8793          	addi	a5,s5,1328
  4016e8:	01010713          	addi	a4,sp,16
  4016ec:	00e78ab3          	add	s5,a5,a4
  4016f0:	ae0aa583          	lw	a1,-1312(s5)
  4016f4:	00000513          	li	a0,0
  4016f8:	931fe0ef          	jal	400028 <WriteSprite>
  4016fc:	af4aa583          	lw	a1,-1292(s5)
  401700:	f39ff06f          	j	401638 <main+0x9a8>
  401704:	00200713          	li	a4,2
  401708:	06e99263          	bne	s3,a4,40176c <main+0xadc>
  40170c:	001d8413          	addi	s0,s11,1
  401710:	0ff47413          	zext.b	s0,s0
  401714:	00000d93          	li	s11,0
  401718:	0087e463          	bltu	a5,s0,401720 <main+0xa90>
  40171c:	00040d93          	mv	s11,s0
  401720:	ffc90913          	addi	s2,s2,-4
  401724:	01091913          	slli	s2,s2,0x10
  401728:	41095913          	srai	s2,s2,0x10
  40172c:	02094a63          	bltz	s2,401760 <main+0xad0>
  401730:	ffca0a13          	addi	s4,s4,-4
  401734:	010a1a13          	slli	s4,s4,0x10
  401738:	410a5a13          	srai	s4,s4,0x10
  40173c:	002d9a93          	slli	s5,s11,0x2
  401740:	530a8793          	addi	a5,s5,1328
  401744:	01010713          	addi	a4,sp,16
  401748:	00e78ab3          	add	s5,a5,a4
  40174c:	b08aa583          	lw	a1,-1272(s5)
  401750:	00000513          	li	a0,0
  401754:	8d5fe0ef          	jal	400028 <WriteSprite>
  401758:	b1caa583          	lw	a1,-1252(s5)
  40175c:	eddff06f          	j	401638 <main+0x9a8>
  401760:	1fc00a13          	li	s4,508
  401764:	1f400913          	li	s2,500
  401768:	fd5ff06f          	j	40173c <main+0xaac>
  40176c:	00300713          	li	a4,3
  401770:	ece998e3          	bne	s3,a4,401640 <main+0x9b0>
  401774:	00012703          	lw	a4,0(sp)
  401778:	00012023          	sw	zero,0(sp)
  40177c:	00170413          	addi	s0,a4,1
  401780:	0ff47413          	zext.b	s0,s0
  401784:	0087e463          	bltu	a5,s0,40178c <main+0xafc>
  401788:	00812023          	sw	s0,0(sp)
  40178c:	00490913          	addi	s2,s2,4
  401790:	01091913          	slli	s2,s2,0x10
  401794:	41095913          	srai	s2,s2,0x10
  401798:	20000793          	li	a5,512
  40179c:	0327cc63          	blt	a5,s2,4017d4 <main+0xb44>
  4017a0:	004a0a13          	addi	s4,s4,4
  4017a4:	010a1a13          	slli	s4,s4,0x10
  4017a8:	410a5a13          	srai	s4,s4,0x10
  4017ac:	00012783          	lw	a5,0(sp)
  4017b0:	01010713          	addi	a4,sp,16
  4017b4:	00000513          	li	a0,0
  4017b8:	00279a93          	slli	s5,a5,0x2
  4017bc:	530a8793          	addi	a5,s5,1328
  4017c0:	00e78ab3          	add	s5,a5,a4
  4017c4:	b30aa583          	lw	a1,-1232(s5)
  4017c8:	861fe0ef          	jal	400028 <WriteSprite>
  4017cc:	b44aa583          	lw	a1,-1212(s5)
  4017d0:	e69ff06f          	j	401638 <main+0x9a8>
  4017d4:	00800a13          	li	s4,8
  4017d8:	00000913          	li	s2,0
  4017dc:	fd1ff06f          	j	4017ac <main+0xb1c>
  4017e0:	57c12083          	lw	ra,1404(sp)
  4017e4:	57812403          	lw	s0,1400(sp)
  4017e8:	57412483          	lw	s1,1396(sp)
  4017ec:	57012903          	lw	s2,1392(sp)
  4017f0:	56c12983          	lw	s3,1388(sp)
  4017f4:	56812a03          	lw	s4,1384(sp)
  4017f8:	56412a83          	lw	s5,1380(sp)
  4017fc:	56012b03          	lw	s6,1376(sp)
  401800:	55c12b83          	lw	s7,1372(sp)
  401804:	55812c03          	lw	s8,1368(sp)
  401808:	55412c83          	lw	s9,1364(sp)
  40180c:	55012d03          	lw	s10,1360(sp)
  401810:	54c12d83          	lw	s11,1356(sp)
  401814:	00000513          	li	a0,0
  401818:	58010113          	addi	sp,sp,1408
  40181c:	00008067          	ret
