
builds/build0/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00004117          	auipc	sp,0x4
  400004:	80010113          	addi	sp,sp,-2048 # 403800 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	495000ef          	jal	400ca4 <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <getUSBint>:
  40001c:	100007b7          	lui	a5,0x10000
  400020:	0007a503          	lw	a0,0(a5) # 10000000 <_stack_end+0xfbfc000>
  400024:	00008067          	ret

00400028 <WriteSprite>:
  400028:	880017b7          	lui	a5,0x88001
  40002c:	00651513          	slli	a0,a0,0x6
  400030:	00f50533          	add	a0,a0,a5
  400034:	02000713          	li	a4,32
  400038:	00000793          	li	a5,0
  40003c:	00f586b3          	add	a3,a1,a5
  400040:	0006c683          	lbu	a3,0(a3)
  400044:	00178793          	addi	a5,a5,1 # 88001001 <_stack_end+0x87bfd001>
  400048:	00250513          	addi	a0,a0,2
  40004c:	fed51f23          	sh	a3,-2(a0)
  400050:	fee796e3          	bne	a5,a4,40003c <WriteSprite+0x14>
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
  400090:	8ac70713          	addi	a4,a4,-1876 # 4008ac <resetScreenVector+0xc>
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
  40017c:	00f50533          	add	a0,a0,a5
  400180:	00e6e6b3          	or	a3,a3,a4
  400184:	00d52023          	sw	a3,0(a0)
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
  400210:	00178793          	addi	a5,a5,1 # 88002001 <_stack_end+0x87bfe001>
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
  4002a4:	880007b7          	lui	a5,0x88000
  4002a8:	00151513          	slli	a0,a0,0x1
  4002ac:	00f50533          	add	a0,a0,a5
  4002b0:	00b665b3          	or	a1,a2,a1
  4002b4:	00b51023          	sh	a1,0(a0)
  4002b8:	00100513          	li	a0,1
  4002bc:	00008067          	ret
  4002c0:	00000513          	li	a0,0
  4002c4:	00008067          	ret

004002c8 <printString>:
  4002c8:	fe010113          	addi	sp,sp,-32
  4002cc:	01312623          	sw	s3,12(sp)
  4002d0:	01412423          	sw	s4,8(sp)
  4002d4:	00112e23          	sw	ra,28(sp)
  4002d8:	00812c23          	sw	s0,24(sp)
  4002dc:	00912a23          	sw	s1,20(sp)
  4002e0:	01212823          	sw	s2,16(sp)
  4002e4:	01512223          	sw	s5,4(sp)
  4002e8:	01612023          	sw	s6,0(sp)
  4002ec:	00050a13          	mv	s4,a0
  4002f0:	00058993          	mv	s3,a1
  4002f4:	06060c63          	beqz	a2,40036c <printString+0xa4>
  4002f8:	00060413          	mv	s0,a2
  4002fc:	00000913          	li	s2,0
  400300:	00000493          	li	s1,0
  400304:	00100a93          	li	s5,1
  400308:	00f00b13          	li	s6,15
  40030c:	0280006f          	j	400334 <printString+0x6c>
  400310:	00040613          	mv	a2,s0
  400314:	009a0533          	add	a0,s4,s1
  400318:	f81ff0ef          	jal	400298 <putch>
  40031c:	06050263          	beqz	a0,400380 <printString+0xb8>
  400320:	00148493          	addi	s1,s1,1
  400324:	01591863          	bne	s2,s5,400334 <printString+0x6c>
  400328:	00140413          	addi	s0,s0,1
  40032c:	0ff47413          	zext.b	s0,s0
  400330:	048b6463          	bltu	s6,s0,400378 <printString+0xb0>
  400334:	009987b3          	add	a5,s3,s1
  400338:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87bfc000>
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
  40036c:	00100913          	li	s2,1
  400370:	00090413          	mv	s0,s2
  400374:	f8dff06f          	j	400300 <printString+0x38>
  400378:	00090413          	mv	s0,s2
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
  4003a0:	06c58593          	addi	a1,a1,108 # 40206c <_etext+0x13c8>
  4003a4:	00050493          	mv	s1,a0
  4003a8:	00060913          	mv	s2,a2
  4003ac:	00c10513          	addi	a0,sp,12
  4003b0:	01100613          	li	a2,17
  4003b4:	02112623          	sw	ra,44(sp)
  4003b8:	e71ff0ef          	jal	400228 <memcpy>
  4003bc:	202027b7          	lui	a5,0x20202
  4003c0:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fdfe020>
  4003c4:	00f12023          	sw	a5,0(sp)
  4003c8:	00f12223          	sw	a5,4(sp)
  4003cc:	00010423          	sb	zero,8(sp)
  4003d0:	00700793          	li	a5,7
  4003d4:	00010593          	mv	a1,sp
  4003d8:	fff00693          	li	a3,-1
  4003dc:	00f47713          	andi	a4,s0,15
  4003e0:	02070713          	addi	a4,a4,32
  4003e4:	00270733          	add	a4,a4,sp
  4003e8:	fec74703          	lbu	a4,-20(a4)
  4003ec:	00f58633          	add	a2,a1,a5
  4003f0:	fff78793          	addi	a5,a5,-1
  4003f4:	00e60023          	sb	a4,0(a2)
  4003f8:	40445413          	srai	s0,s0,0x4
  4003fc:	fed790e3          	bne	a5,a3,4003dc <printHex+0x54>
  400400:	00090613          	mv	a2,s2
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
  400448:	c9058593          	addi	a1,a1,-880 # 400c90 <resetScreenVector+0x3f0>
  40044c:	01400613          	li	a2,20
  400450:	00c10513          	addi	a0,sp,12
  400454:	02112623          	sw	ra,44(sp)
  400458:	dd1ff0ef          	jal	400228 <memcpy>
  40045c:	000187b7          	lui	a5,0x18
  400460:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  400464:	0287fa63          	bgeu	a5,s0,400498 <printDec+0x70>
  400468:	004025b7          	lui	a1,0x402
  40046c:	00090613          	mv	a2,s2
  400470:	08058593          	addi	a1,a1,128 # 402080 <_etext+0x13dc>
  400474:	00048513          	mv	a0,s1
  400478:	e51ff0ef          	jal	4002c8 <printString>
  40047c:	02c12083          	lw	ra,44(sp)
  400480:	02812403          	lw	s0,40(sp)
  400484:	02412483          	lw	s1,36(sp)
  400488:	02012903          	lw	s2,32(sp)
  40048c:	0ff57513          	zext.b	a0,a0
  400490:	03010113          	addi	sp,sp,48
  400494:	00008067          	ret
  400498:	00100613          	li	a2,1
  40049c:	00c10713          	addi	a4,sp,12
  4004a0:	00000793          	li	a5,0
  4004a4:	00060513          	mv	a0,a2
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
  400548:	01812c23          	sw	s8,24(sp)
  40054c:	02112e23          	sw	ra,60(sp)
  400550:	01712e23          	sw	s7,28(sp)
  400554:	00050493          	mv	s1,a0
  400558:	04b12223          	sw	a1,68(sp)
  40055c:	04c12423          	sw	a2,72(sp)
  400560:	04d12623          	sw	a3,76(sp)
  400564:	04e12823          	sw	a4,80(sp)
  400568:	05012c23          	sw	a6,88(sp)
  40056c:	05112e23          	sw	a7,92(sp)
  400570:	00f12623          	sw	a5,12(sp)
  400574:	00000c13          	li	s8,0
  400578:	00402437          	lui	s0,0x402
  40057c:	00a00993          	li	s3,10
  400580:	02500913          	li	s2,37
  400584:	07800a13          	li	s4,120
  400588:	06400a93          	li	s5,100
  40058c:	06300b13          	li	s6,99
  400590:	018487b3          	add	a5,s1,s8
  400594:	0007c583          	lbu	a1,0(a5)
  400598:	08641503          	lh	a0,134(s0) # 402086 <screenPos>
  40059c:	02059a63          	bnez	a1,4005d0 <printf+0xb0>
  4005a0:	03c12083          	lw	ra,60(sp)
  4005a4:	03812403          	lw	s0,56(sp)
  4005a8:	03412483          	lw	s1,52(sp)
  4005ac:	03012903          	lw	s2,48(sp)
  4005b0:	02c12983          	lw	s3,44(sp)
  4005b4:	02812a03          	lw	s4,40(sp)
  4005b8:	02412a83          	lw	s5,36(sp)
  4005bc:	02012b03          	lw	s6,32(sp)
  4005c0:	01c12b83          	lw	s7,28(sp)
  4005c4:	01812c03          	lw	s8,24(sp)
  4005c8:	06010113          	addi	sp,sp,96
  4005cc:	00008067          	ret
  4005d0:	001c0b93          	addi	s7,s8,1
  4005d4:	01359e63          	bne	a1,s3,4005f0 <printf+0xd0>
  4005d8:	fc057793          	andi	a5,a0,-64
  4005dc:	04078793          	addi	a5,a5,64
  4005e0:	01079793          	slli	a5,a5,0x10
  4005e4:	4107d793          	srai	a5,a5,0x10
  4005e8:	000c0b93          	mv	s7,s8
  4005ec:	0380006f          	j	400624 <printf+0x104>
  4005f0:	0d259263          	bne	a1,s2,4006b4 <printf+0x194>
  4005f4:	0017c783          	lbu	a5,1(a5)
  4005f8:	03479c63          	bne	a5,s4,400630 <printf+0x110>
  4005fc:	00c12783          	lw	a5,12(sp)
  400600:	00f00613          	li	a2,15
  400604:	0007a583          	lw	a1,0(a5)
  400608:	00478713          	addi	a4,a5,4
  40060c:	00e12623          	sw	a4,12(sp)
  400610:	d79ff0ef          	jal	400388 <printHex>
  400614:	08645783          	lhu	a5,134(s0)
  400618:	00f507b3          	add	a5,a0,a5
  40061c:	01079793          	slli	a5,a5,0x10
  400620:	4107d793          	srai	a5,a5,0x10
  400624:	08f41323          	sh	a5,134(s0)
  400628:	001b8c13          	addi	s8,s7,1
  40062c:	f65ff06f          	j	400590 <printf+0x70>
  400630:	03579063          	bne	a5,s5,400650 <printf+0x130>
  400634:	00c12783          	lw	a5,12(sp)
  400638:	00f00613          	li	a2,15
  40063c:	0007a583          	lw	a1,0(a5)
  400640:	00478713          	addi	a4,a5,4
  400644:	00e12623          	sw	a4,12(sp)
  400648:	de1ff0ef          	jal	400428 <printDec>
  40064c:	fc9ff06f          	j	400614 <printf+0xf4>
  400650:	03679463          	bne	a5,s6,400678 <printf+0x158>
  400654:	00c12783          	lw	a5,12(sp)
  400658:	00f00613          	li	a2,15
  40065c:	0007c583          	lbu	a1,0(a5)
  400660:	00478713          	addi	a4,a5,4
  400664:	00e12623          	sw	a4,12(sp)
  400668:	c31ff0ef          	jal	400298 <putch>
  40066c:	08645783          	lhu	a5,134(s0)
  400670:	00178793          	addi	a5,a5,1
  400674:	fa9ff06f          	j	40061c <printf+0xfc>
  400678:	07300713          	li	a4,115
  40067c:	02e79063          	bne	a5,a4,40069c <printf+0x17c>
  400680:	00c12783          	lw	a5,12(sp)
  400684:	00f00613          	li	a2,15
  400688:	0007a583          	lw	a1,0(a5)
  40068c:	00478713          	addi	a4,a5,4
  400690:	00e12623          	sw	a4,12(sp)
  400694:	c35ff0ef          	jal	4002c8 <printString>
  400698:	f7dff06f          	j	400614 <printf+0xf4>
  40069c:	00f00613          	li	a2,15
  4006a0:	00090593          	mv	a1,s2
  4006a4:	bf5ff0ef          	jal	400298 <putch>
  4006a8:	08645783          	lhu	a5,134(s0)
  4006ac:	00178793          	addi	a5,a5,1
  4006b0:	f31ff06f          	j	4005e0 <printf+0xc0>
  4006b4:	00f00613          	li	a2,15
  4006b8:	fedff06f          	j	4006a4 <printf+0x184>

004006bc <printfSCR>:
  4006bc:	f9010113          	addi	sp,sp,-112
  4006c0:	06f12223          	sw	a5,100(sp)
  4006c4:	05c10793          	addi	a5,sp,92
  4006c8:	04812423          	sw	s0,72(sp)
  4006cc:	04912223          	sw	s1,68(sp)
  4006d0:	05212023          	sw	s2,64(sp)
  4006d4:	03412c23          	sw	s4,56(sp)
  4006d8:	03512a23          	sw	s5,52(sp)
  4006dc:	03612823          	sw	s6,48(sp)
  4006e0:	03712623          	sw	s7,44(sp)
  4006e4:	03812423          	sw	s8,40(sp)
  4006e8:	03912223          	sw	s9,36(sp)
  4006ec:	03a12023          	sw	s10,32(sp)
  4006f0:	01b12e23          	sw	s11,28(sp)
  4006f4:	04112623          	sw	ra,76(sp)
  4006f8:	03312e23          	sw	s3,60(sp)
  4006fc:	00050a93          	mv	s5,a0
  400700:	00058493          	mv	s1,a1
  400704:	00060a13          	mv	s4,a2
  400708:	04d12e23          	sw	a3,92(sp)
  40070c:	06e12023          	sw	a4,96(sp)
  400710:	07012423          	sw	a6,104(sp)
  400714:	07112623          	sw	a7,108(sp)
  400718:	00f12623          	sw	a5,12(sp)
  40071c:	00000913          	li	s2,0
  400720:	00000413          	li	s0,0
  400724:	00a00b93          	li	s7,10
  400728:	02500b13          	li	s6,37
  40072c:	07800c13          	li	s8,120
  400730:	06400c93          	li	s9,100
  400734:	06300d13          	li	s10,99
  400738:	07300d93          	li	s11,115
  40073c:	012a07b3          	add	a5,s4,s2
  400740:	0007c583          	lbu	a1,0(a5)
  400744:	04059263          	bnez	a1,400788 <printfSCR+0xcc>
  400748:	04c12083          	lw	ra,76(sp)
  40074c:	00040513          	mv	a0,s0
  400750:	04812403          	lw	s0,72(sp)
  400754:	04412483          	lw	s1,68(sp)
  400758:	04012903          	lw	s2,64(sp)
  40075c:	03c12983          	lw	s3,60(sp)
  400760:	03812a03          	lw	s4,56(sp)
  400764:	03412a83          	lw	s5,52(sp)
  400768:	03012b03          	lw	s6,48(sp)
  40076c:	02c12b83          	lw	s7,44(sp)
  400770:	02812c03          	lw	s8,40(sp)
  400774:	02412c83          	lw	s9,36(sp)
  400778:	02012d03          	lw	s10,32(sp)
  40077c:	01c12d83          	lw	s11,28(sp)
  400780:	07010113          	addi	sp,sp,112
  400784:	00008067          	ret
  400788:	00190993          	addi	s3,s2,1
  40078c:	01759a63          	bne	a1,s7,4007a0 <printfSCR+0xe4>
  400790:	fc047413          	andi	s0,s0,-64
  400794:	04040413          	addi	s0,s0,64
  400798:	00090993          	mv	s3,s2
  40079c:	0740006f          	j	400810 <printfSCR+0x154>
  4007a0:	01540533          	add	a0,s0,s5
  4007a4:	0b659463          	bne	a1,s6,40084c <printfSCR+0x190>
  4007a8:	0017c783          	lbu	a5,1(a5)
  4007ac:	03879263          	bne	a5,s8,4007d0 <printfSCR+0x114>
  4007b0:	00c12783          	lw	a5,12(sp)
  4007b4:	00048613          	mv	a2,s1
  4007b8:	0007a583          	lw	a1,0(a5)
  4007bc:	00478713          	addi	a4,a5,4
  4007c0:	00e12623          	sw	a4,12(sp)
  4007c4:	bc5ff0ef          	jal	400388 <printHex>
  4007c8:	00a40433          	add	s0,s0,a0
  4007cc:	0440006f          	j	400810 <printfSCR+0x154>
  4007d0:	03979063          	bne	a5,s9,4007f0 <printfSCR+0x134>
  4007d4:	00c12783          	lw	a5,12(sp)
  4007d8:	00048613          	mv	a2,s1
  4007dc:	0007a583          	lw	a1,0(a5)
  4007e0:	00478713          	addi	a4,a5,4
  4007e4:	00e12623          	sw	a4,12(sp)
  4007e8:	c41ff0ef          	jal	400428 <printDec>
  4007ec:	fddff06f          	j	4007c8 <printfSCR+0x10c>
  4007f0:	03a79463          	bne	a5,s10,400818 <printfSCR+0x15c>
  4007f4:	00c12783          	lw	a5,12(sp)
  4007f8:	00048613          	mv	a2,s1
  4007fc:	00140413          	addi	s0,s0,1
  400800:	0007c583          	lbu	a1,0(a5)
  400804:	00478713          	addi	a4,a5,4
  400808:	00e12623          	sw	a4,12(sp)
  40080c:	a8dff0ef          	jal	400298 <putch>
  400810:	00198913          	addi	s2,s3,1
  400814:	f29ff06f          	j	40073c <printfSCR+0x80>
  400818:	03b79063          	bne	a5,s11,400838 <printfSCR+0x17c>
  40081c:	00c12783          	lw	a5,12(sp)
  400820:	00048613          	mv	a2,s1
  400824:	0007a583          	lw	a1,0(a5)
  400828:	00478713          	addi	a4,a5,4
  40082c:	00e12623          	sw	a4,12(sp)
  400830:	a99ff0ef          	jal	4002c8 <printString>
  400834:	f95ff06f          	j	4007c8 <printfSCR+0x10c>
  400838:	00048613          	mv	a2,s1
  40083c:	000b0593          	mv	a1,s6
  400840:	a59ff0ef          	jal	400298 <putch>
  400844:	00140413          	addi	s0,s0,1
  400848:	f51ff06f          	j	400798 <printfSCR+0xdc>
  40084c:	00048613          	mv	a2,s1
  400850:	ff1ff06f          	j	400840 <printfSCR+0x184>

00400854 <clearScreen>:
  400854:	ff010113          	addi	sp,sp,-16
  400858:	00812423          	sw	s0,8(sp)
  40085c:	00912223          	sw	s1,4(sp)
  400860:	00112623          	sw	ra,12(sp)
  400864:	00000413          	li	s0,0
  400868:	4c000493          	li	s1,1216
  40086c:	00040513          	mv	a0,s0
  400870:	00f00613          	li	a2,15
  400874:	02000593          	li	a1,32
  400878:	00140413          	addi	s0,s0,1
  40087c:	a1dff0ef          	jal	400298 <putch>
  400880:	fe9416e3          	bne	s0,s1,40086c <clearScreen+0x18>
  400884:	00c12083          	lw	ra,12(sp)
  400888:	00812403          	lw	s0,8(sp)
  40088c:	004027b7          	lui	a5,0x402
  400890:	08079323          	sh	zero,134(a5) # 402086 <screenPos>
  400894:	00412483          	lw	s1,4(sp)
  400898:	01010113          	addi	sp,sp,16
  40089c:	00008067          	ret

004008a0 <resetScreenVector>:
  4008a0:	004027b7          	lui	a5,0x402
  4008a4:	08079323          	sh	zero,134(a5) # 402086 <screenPos>
  4008a8:	00008067          	ret
  4008ac:	00ac                	.insn	2, 0x00ac
  4008ae:	0040                	.insn	2, 0x0040
  4008b0:	00ac                	.insn	2, 0x00ac
  4008b2:	0040                	.insn	2, 0x0040
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
  4008d4:	0144                	.insn	2, 0x0144
  4008d6:	0040                	.insn	2, 0x0040
  4008d8:	0070                	.insn	2, 0x0070
  4008da:	0040                	.insn	2, 0x0040
  4008dc:	00b4                	.insn	2, 0x00b4
  4008de:	0040                	.insn	2, 0x0040
  4008e0:	00bc                	.insn	2, 0x00bc
  4008e2:	0040                	.insn	2, 0x0040
  4008e4:	00c4                	.insn	2, 0x00c4
  4008e6:	0040                	.insn	2, 0x0040
  4008e8:	006c                	.insn	2, 0x006c
  4008ea:	0040                	.insn	2, 0x0040
  4008ec:	00cc                	.insn	2, 0x00cc
  4008ee:	0040                	.insn	2, 0x0040
  4008f0:	00d4                	.insn	2, 0x00d4
  4008f2:	0040                	.insn	2, 0x0040
  4008f4:	00dc                	.insn	2, 0x00dc
  4008f6:	0040                	.insn	2, 0x0040
  4008f8:	00e4                	.insn	2, 0x00e4
  4008fa:	0040                	.insn	2, 0x0040
  4008fc:	0068                	.insn	2, 0x0068
  4008fe:	0040                	.insn	2, 0x0040
  400900:	00ec                	.insn	2, 0x00ec
  400902:	0040                	.insn	2, 0x0040
  400904:	00f4                	.insn	2, 0x00f4
  400906:	0040                	.insn	2, 0x0040
  400908:	00fc                	.insn	2, 0x00fc
  40090a:	0040                	.insn	2, 0x0040
  40090c:	0104                	.insn	2, 0x0104
  40090e:	0040                	.insn	2, 0x0040
  400910:	010c                	.insn	2, 0x010c
  400912:	0040                	.insn	2, 0x0040
  400914:	0114                	.insn	2, 0x0114
  400916:	0040                	.insn	2, 0x0040
  400918:	0068                	.insn	2, 0x0068
  40091a:	0040                	.insn	2, 0x0040
  40091c:	011c                	.insn	2, 0x011c
  40091e:	0040                	.insn	2, 0x0040
  400920:	011c                	.insn	2, 0x011c
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
  40094c:	0068                	.insn	2, 0x0068
  40094e:	0040                	.insn	2, 0x0040
  400950:	0068                	.insn	2, 0x0068
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
  400970:	0124                	.insn	2, 0x0124
  400972:	0040                	.insn	2, 0x0040
  400974:	012c                	.insn	2, 0x012c
  400976:	0040                	.insn	2, 0x0040
  400978:	0134                	.insn	2, 0x0134
  40097a:	0040                	.insn	2, 0x0040
  40097c:	013c                	.insn	2, 0x013c
  40097e:	0040                	.insn	2, 0x0040
  400980:	1104                	.insn	2, 0x1104
  400982:	0040                	.insn	2, 0x0040
  400984:	1180                	.insn	2, 0x1180
  400986:	0040                	.insn	2, 0x0040
  400988:	1194                	.insn	2, 0x1194
  40098a:	0040                	.insn	2, 0x0040
  40098c:	11a8                	.insn	2, 0x11a8
  40098e:	0040                	.insn	2, 0x0040
  400990:	11bc                	.insn	2, 0x11bc
  400992:	0040                	.insn	2, 0x0040
  400994:	11c8                	.insn	2, 0x11c8
  400996:	0040                	.insn	2, 0x0040
  400998:	11d4                	.insn	2, 0x11d4
  40099a:	0040                	.insn	2, 0x0040
  40099c:	1260                	.insn	2, 0x1260
  40099e:	0040                	.insn	2, 0x0040
  4009a0:	1330                	.insn	2, 0x1330
  4009a2:	0040                	.insn	2, 0x0040
  4009a4:	15fc                	.insn	2, 0x15fc
  4009a6:	0040                	.insn	2, 0x0040
  4009a8:	15a4                	.insn	2, 0x15a4
  4009aa:	0040                	.insn	2, 0x0040
  4009ac:	16e0                	.insn	2, 0x16e0
  4009ae:	0040                	.insn	2, 0x0040
  4009b0:	ffff                	.insn	2, 0xffff
  4009b2:	ffff                	.insn	2, 0xffff
  4009b4:	ffff                	.insn	2, 0xffff
  4009b6:	ffff                	.insn	2, 0xffff
  4009b8:	ffff                	.insn	2, 0xffff
  4009ba:	ffff                	.insn	2, 0xffff
  4009bc:	be00                	.insn	2, 0xbe00
  4009be:	efff ffff ffff ffff 	.insn	22, 0xffffffff0fff03ff33ff0fffffffffffffffffffefff
  4009c6:	ffff 0fff 33ff 03ff 
  4009ce:	0fff ffff ffff 
  4009d4:	ffff                	.insn	2, 0xffff
  4009d6:	ffff                	.insn	2, 0xffff
  4009d8:	fe00                	.insn	2, 0xfe00
  4009da:	ff8bfe0f          	.insn	4, 0xff8bfe0f
  4009de:	ffe2                	.insn	2, 0xffe2
  4009e0:	fff8                	.insn	2, 0xfff8
  4009e2:	ffff                	.insn	2, 0xffff
  4009e4:	ffff                	.insn	2, 0xffff
  4009e6:	0fffbfff 3cff33ff 	.insn	16, 0x3f3f3cff33ff0fffbfff
  4009ee:	00003f3f 00000000 
  4009f6:	ffff                	.insn	2, 0xffff
  4009f8:	ffff                	.insn	2, 0xffff
  4009fa:	ffff                	.insn	2, 0xffff
  4009fc:	ffff                	.insn	2, 0xffff
  4009fe:	ffff                	.insn	2, 0xffff
  400a00:	ffff                	.insn	2, 0xffff
  400a02:	ffff                	.insn	2, 0xffff
  400a04:	ffff                	.insn	2, 0xffff
  400a06:	ffff                	.insn	2, 0xffff
  400a08:	ffff                	.insn	2, 0xffff
  400a0a:	ffff                	.insn	2, 0xffff
  400a0c:	ffff                	.insn	2, 0xffff
  400a0e:	ffff                	.insn	2, 0xffff
  400a10:	0000                	.insn	2, 0x
  400a12:	5400                	.insn	2, 0x5400
  400a14:	a900                	.insn	2, 0xa900
  400a16:	aa40                	.insn	2, 0xaa40
  400a18:	aa40                	.insn	2, 0xaa40
  400a1a:	f950                	.insn	2, 0xf950
  400a1c:	5550                	.insn	2, 0x5550
  400a1e:	ff74                	.insn	2, 0xff74
  400a20:	dff4                	.insn	2, 0xdff4
  400a22:	df54                	.insn	2, 0xdf54
  400a24:	bd74                	.insn	2, 0xbd74
  400a26:	5550                	.insn	2, 0x5550
  400a28:	5940                	.insn	2, 0x5940
  400a2a:	9500                	.insn	2, 0x9500
  400a2c:	6900                	.insn	2, 0x6900
  400a2e:	5400                	.insn	2, 0x5400
  400a30:	0000                	.insn	2, 0x
  400a32:	0015                	.insn	2, 0x0015
  400a34:	006a                	.insn	2, 0x006a
  400a36:	01aa                	.insn	2, 0x01aa
  400a38:	01aa                	.insn	2, 0x01aa
  400a3a:	0555056f          	jal	a0,45128e <_stack_end+0x4d28e>
  400a3e:	1ff71dff 067e05f7 	.insn	12, 0x05f50755067e05f71ff71dff
  400a46:	05f50755 
  400a4a:	01f6                	.insn	2, 0x01f6
  400a4c:	0051                	.insn	2, 0x0051
  400a4e:	0000                	.insn	2, 0x
  400a50:	5400                	.insn	2, 0x5400
  400a52:	a900                	.insn	2, 0xa900
  400a54:	aa40                	.insn	2, 0xaa40
  400a56:	aa40                	.insn	2, 0xaa40
  400a58:	f950                	.insn	2, 0xf950
  400a5a:	5750                	.insn	2, 0x5750
  400a5c:	ff74                	.insn	2, 0xff74
  400a5e:	dff4                	.insn	2, 0xdff4
  400a60:	df50                	.insn	2, 0xdf50
  400a62:	bd50                	.insn	2, 0xbd50
  400a64:	55f4                	.insn	2, 0x55f4
  400a66:	55f4                	.insn	2, 0x55f4
  400a68:	6950                	.insn	2, 0x6950
  400a6a:	9640                	.insn	2, 0x9640
  400a6c:	6a40                	.insn	2, 0x6a40
  400a6e:	1500                	.insn	2, 0x1500
  400a70:	0015                	.insn	2, 0x0015
  400a72:	006a                	.insn	2, 0x006a
  400a74:	01aa                	.insn	2, 0x01aa
  400a76:	01aa                	.insn	2, 0x01aa
  400a78:	05d5056f          	jal	a0,4512d4 <_stack_end+0x4d2d4>
  400a7c:	1ff71dff 057e05f7 	.insn	12, 0x1f551f55057e05f71ff71dff
  400a84:	1f551f55 
  400a88:	0569                	.insn	2, 0x0569
  400a8a:	0196                	.insn	2, 0x0196
  400a8c:	01a9                	.insn	2, 0x01a9
  400a8e:	0054                	.insn	2, 0x0054
  400a90:	0000                	.insn	2, 0x
  400a92:	5400                	.insn	2, 0x5400
  400a94:	a900                	.insn	2, 0xa900
  400a96:	aa40                	.insn	2, 0xaa40
  400a98:	aa40                	.insn	2, 0xaa40
  400a9a:	f950                	.insn	2, 0xf950
  400a9c:	5550                	.insn	2, 0x5550
  400a9e:	ff74                	.insn	2, 0xff74
  400aa0:	dff4                	.insn	2, 0xdff4
  400aa2:	df50                	.insn	2, 0xdf50
  400aa4:	bd90                	.insn	2, 0xbd90
  400aa6:	55d0                	.insn	2, 0x55d0
  400aa8:	5f50                	.insn	2, 0x5f50
  400aaa:	9f40                	.insn	2, 0x9f40
  400aac:	4500                	.insn	2, 0x4500
  400aae:	0000                	.insn	2, 0x
  400ab0:	0000                	.insn	2, 0x
  400ab2:	0015                	.insn	2, 0x0015
  400ab4:	006a                	.insn	2, 0x006a
  400ab6:	01aa                	.insn	2, 0x01aa
  400ab8:	01aa                	.insn	2, 0x01aa
  400aba:	0555056f          	jal	a0,45130e <_stack_end+0x4d30e>
  400abe:	1ff71dff 1d7e15f7 	.insn	12, 0x016505551d7e15f71ff71dff
  400ac6:	01650555 
  400aca:	0056                	.insn	2, 0x0056
  400acc:	0069                	.insn	2, 0x0069
  400ace:	0015                	.insn	2, 0x0015
  400ad0:	5400                	.insn	2, 0x5400
  400ad2:	a900                	.insn	2, 0xa900
  400ad4:	aa40                	.insn	2, 0xaa40
  400ad6:	ab50                	.insn	2, 0xab50
  400ad8:	aff4                	.insn	2, 0xaff4
  400ada:	6a50                	.insn	2, 0x6a50
  400adc:	f740                	.insn	2, 0xf740
  400ade:	f740                	.insn	2, 0xf740
  400ae0:	ff40                	.insn	2, 0xff40
  400ae2:	f900                	.insn	2, 0xf900
  400ae4:	5400                	.insn	2, 0x5400
  400ae6:	5000                	.insn	2, 0x5000
  400ae8:	5000                	.insn	2, 0x5000
  400aea:	a400                	.insn	2, 0xa400
  400aec:	a400                	.insn	2, 0xa400
  400aee:	5000                	.insn	2, 0x5000
  400af0:	0015                	.insn	2, 0x0015
  400af2:	006a                	.insn	2, 0x006a
  400af4:	01aa                	.insn	2, 0x01aa
  400af6:	01aa                	.insn	2, 0x01aa
  400af8:	056a                	.insn	2, 0x056a
  400afa:	0555                	.insn	2, 0x0555
  400afc:	0555                	.insn	2, 0x0555
  400afe:	017d                	.insn	2, 0x017d
  400b00:	007f 0197 01a5 019f 	.insn	10, 0x019f019f01a50197007f
  400b08:	019f 
  400b0a:	0055                	.insn	2, 0x0055
  400b0c:	001a                	.insn	2, 0x001a
  400b0e:	0005                	.insn	2, 0x0005
  400b10:	0000                	.insn	2, 0x
  400b12:	5400                	.insn	2, 0x5400
  400b14:	a900                	.insn	2, 0xa900
  400b16:	aa40                	.insn	2, 0xaa40
  400b18:	ab50                	.insn	2, 0xab50
  400b1a:	aff4                	.insn	2, 0xaff4
  400b1c:	6a50                	.insn	2, 0x6a50
  400b1e:	f740                	.insn	2, 0xf740
  400b20:	f740                	.insn	2, 0xf740
  400b22:	ff40                	.insn	2, 0xff40
  400b24:	f900                	.insn	2, 0xf900
  400b26:	5400                	.insn	2, 0x5400
  400b28:	5540                	.insn	2, 0x5540
  400b2a:	a690                	.insn	2, 0xa690
  400b2c:	5a40                	.insn	2, 0x5a40
  400b2e:	1500                	.insn	2, 0x1500
  400b30:	0000                	.insn	2, 0x
  400b32:	0015                	.insn	2, 0x0015
  400b34:	006a                	.insn	2, 0x006a
  400b36:	01aa                	.insn	2, 0x01aa
  400b38:	01aa                	.insn	2, 0x01aa
  400b3a:	056a                	.insn	2, 0x056a
  400b3c:	0555                	.insn	2, 0x0555
  400b3e:	0555                	.insn	2, 0x0555
  400b40:	017d                	.insn	2, 0x017d
  400b42:	007f 0197 0195 017d 	.insn	10, 0x067d017d01950197007f
  400b4a:	067d 
  400b4c:	0695                	.insn	2, 0x0695
  400b4e:	0140                	.insn	2, 0x0140
  400b50:	5400                	.insn	2, 0x5400
  400b52:	a900                	.insn	2, 0xa900
  400b54:	aa40                	.insn	2, 0xaa40
  400b56:	aa40                	.insn	2, 0xaa40
  400b58:	a950                	.insn	2, 0xa950
  400b5a:	5550                	.insn	2, 0x5550
  400b5c:	5550                	.insn	2, 0x5550
  400b5e:	7d40                	.insn	2, 0x7d40
  400b60:	fd00                	.insn	2, 0xfd00
  400b62:	d640                	.insn	2, 0xd640
  400b64:	5a40                	.insn	2, 0x5a40
  400b66:	f640                	.insn	2, 0xf640
  400b68:	f640                	.insn	2, 0xf640
  400b6a:	5500                	.insn	2, 0x5500
  400b6c:	a400                	.insn	2, 0xa400
  400b6e:	5000                	.insn	2, 0x5000
  400b70:	0015                	.insn	2, 0x0015
  400b72:	006a                	.insn	2, 0x006a
  400b74:	01aa                	.insn	2, 0x01aa
  400b76:	05ea                	.insn	2, 0x05ea
  400b78:	1ffa                	.insn	2, 0x1ffa
  400b7a:	05a9                	.insn	2, 0x05a9
  400b7c:	01df 01df 01ff      	.insn	6, 0x01ff01df01df
  400b82:	0015006f          	j	451382 <_stack_end+0x4d382>
  400b86:	0005                	.insn	2, 0x0005
  400b88:	0005                	.insn	2, 0x0005
  400b8a:	001a                	.insn	2, 0x001a
  400b8c:	001a                	.insn	2, 0x001a
  400b8e:	0005                	.insn	2, 0x0005
  400b90:	0000                	.insn	2, 0x
  400b92:	5400                	.insn	2, 0x5400
  400b94:	a900                	.insn	2, 0xa900
  400b96:	aa40                	.insn	2, 0xaa40
  400b98:	aa40                	.insn	2, 0xaa40
  400b9a:	a950                	.insn	2, 0xa950
  400b9c:	5550                	.insn	2, 0x5550
  400b9e:	5550                	.insn	2, 0x5550
  400ba0:	7d40                	.insn	2, 0x7d40
  400ba2:	fd00                	.insn	2, 0xfd00
  400ba4:	d640                	.insn	2, 0xd640
  400ba6:	5640                	.insn	2, 0x5640
  400ba8:	7d40                	.insn	2, 0x7d40
  400baa:	7d90                	.insn	2, 0x7d90
  400bac:	5690                	.insn	2, 0x5690
  400bae:	0140                	.insn	2, 0x0140
  400bb0:	0000                	.insn	2, 0x
  400bb2:	0015                	.insn	2, 0x0015
  400bb4:	006a                	.insn	2, 0x006a
  400bb6:	01aa                	.insn	2, 0x01aa
  400bb8:	05ea                	.insn	2, 0x05ea
  400bba:	1ffa                	.insn	2, 0x1ffa
  400bbc:	05a9                	.insn	2, 0x05a9
  400bbe:	01df 01df 01ff      	.insn	6, 0x01ff01df01df
  400bc4:	0015006f          	j	4513c4 <_stack_end+0x4d3c4>
  400bc8:	0155                	.insn	2, 0x0155
  400bca:	069a                	.insn	2, 0x069a
  400bcc:	01a5                	.insn	2, 0x01a5
  400bce:	0054                	.insn	2, 0x0054
  400bd0:	0000                	.insn	2, 0x
  400bd2:	5400                	.insn	2, 0x5400
  400bd4:	a900                	.insn	2, 0xa900
  400bd6:	aa40                	.insn	2, 0xaa40
  400bd8:	aa40                	.insn	2, 0xaa40
  400bda:	aa50                	.insn	2, 0xaa50
  400bdc:	a950                	.insn	2, 0xa950
  400bde:	5574                	.insn	2, 0x5574
  400be0:	55f4                	.insn	2, 0x55f4
  400be2:	5f54                	.insn	2, 0x5f54
  400be4:	a574                	.insn	2, 0xa574
  400be6:	5950                	.insn	2, 0x5950
  400be8:	e940                	.insn	2, 0xe940
  400bea:	a500                	.insn	2, 0xa500
  400bec:	5900                	.insn	2, 0x5900
  400bee:	5400                	.insn	2, 0x5400
  400bf0:	0000                	.insn	2, 0x
  400bf2:	0015                	.insn	2, 0x0015
  400bf4:	006a                	.insn	2, 0x006a
  400bf6:	01aa                	.insn	2, 0x01aa
  400bf8:	01aa                	.insn	2, 0x01aa
  400bfa:	05aa                	.insn	2, 0x05aa
  400bfc:	056a                	.insn	2, 0x056a
  400bfe:	1d55                	.insn	2, 0x1d55
  400c00:	1f55                	.insn	2, 0x1f55
  400c02:	05f5                	.insn	2, 0x05f5
  400c04:	055a                	.insn	2, 0x055a
  400c06:	1f65                	.insn	2, 0x1f65
  400c08:	055a1f6b          	.insn	4, 0x055a1f6b
  400c0c:	0005                	.insn	2, 0x0005
  400c0e:	0000                	.insn	2, 0x
  400c10:	5400                	.insn	2, 0x5400
  400c12:	a900                	.insn	2, 0xa900
  400c14:	aa40                	.insn	2, 0xaa40
  400c16:	aa40                	.insn	2, 0xaa40
  400c18:	aa50                	.insn	2, 0xaa50
  400c1a:	a950                	.insn	2, 0xa950
  400c1c:	5574                	.insn	2, 0x5574
  400c1e:	55f4                	.insn	2, 0x55f4
  400c20:	5f50                	.insn	2, 0x5f50
  400c22:	a550                	.insn	2, 0xa550
  400c24:	5974                	.insn	2, 0x5974
  400c26:	e974                	.insn	2, 0xe974
  400c28:	a550                	.insn	2, 0xa550
  400c2a:	5640                	.insn	2, 0x5640
  400c2c:	6a40                	.insn	2, 0x6a40
  400c2e:	1500                	.insn	2, 0x1500
  400c30:	0015                	.insn	2, 0x0015
  400c32:	006a                	.insn	2, 0x006a
  400c34:	01aa                	.insn	2, 0x01aa
  400c36:	01aa                	.insn	2, 0x01aa
  400c38:	05aa                	.insn	2, 0x05aa
  400c3a:	056a                	.insn	2, 0x056a
  400c3c:	1d55                	.insn	2, 0x1d55
  400c3e:	1f55                	.insn	2, 0x1f55
  400c40:	05f5                	.insn	2, 0x05f5
  400c42:	055a                	.insn	2, 0x055a
  400c44:	1d65                	.insn	2, 0x1d65
  400c46:	055a1d6b          	.insn	4, 0x055a1d6b
  400c4a:	0195                	.insn	2, 0x0195
  400c4c:	01a9                	.insn	2, 0x01a9
  400c4e:	0054                	.insn	2, 0x0054
  400c50:	0000                	.insn	2, 0x
  400c52:	5400                	.insn	2, 0x5400
  400c54:	a900                	.insn	2, 0xa900
  400c56:	aa40                	.insn	2, 0xaa40
  400c58:	aa40                	.insn	2, 0xaa40
  400c5a:	aa50                	.insn	2, 0xaa50
  400c5c:	a950                	.insn	2, 0xa950
  400c5e:	5574                	.insn	2, 0x5574
  400c60:	55f4                	.insn	2, 0x55f4
  400c62:	5f50                	.insn	2, 0x5f50
  400c64:	a550                	.insn	2, 0xa550
  400c66:	59f4                	.insn	2, 0x59f4
  400c68:	e9f4                	.insn	2, 0xe9f4
  400c6a:	a550                	.insn	2, 0xa550
  400c6c:	5000                	.insn	2, 0x5000
  400c6e:	0000                	.insn	2, 0x
  400c70:	0000                	.insn	2, 0x
  400c72:	0015                	.insn	2, 0x0015
  400c74:	006a                	.insn	2, 0x006a
  400c76:	01aa                	.insn	2, 0x01aa
  400c78:	01aa                	.insn	2, 0x01aa
  400c7a:	05aa                	.insn	2, 0x05aa
  400c7c:	056a                	.insn	2, 0x056a
  400c7e:	1d55                	.insn	2, 0x1d55
  400c80:	1f55                	.insn	2, 0x1f55
  400c82:	15f5                	.insn	2, 0x15f5
  400c84:	1d5a                	.insn	2, 0x1d5a
  400c86:	0565                	.insn	2, 0x0565
  400c88:	005a016b          	.insn	4, 0x005a016b
  400c8c:	0065                	.insn	2, 0x0065
  400c8e:	0015                	.insn	2, 0x0015
  400c90:	2710                	.insn	2, 0x2710
  400c92:	0000                	.insn	2, 0x
  400c94:	03e8                	.insn	2, 0x03e8
  400c96:	0000                	.insn	2, 0x
  400c98:	0064                	.insn	2, 0x0064
  400c9a:	0000                	.insn	2, 0x
  400c9c:	000a                	.insn	2, 0x000a
  400c9e:	0000                	.insn	2, 0x
  400ca0:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400ca4 <main>:
  400ca4:	a8010113          	addi	sp,sp,-1408
  400ca8:	004025b7          	lui	a1,0x402
  400cac:	02000613          	li	a2,32
  400cb0:	e9858593          	addi	a1,a1,-360 # 401e98 <main+0x11f4>
  400cb4:	0c010513          	addi	a0,sp,192
  400cb8:	56112e23          	sw	ra,1404(sp)
  400cbc:	56812c23          	sw	s0,1400(sp)
  400cc0:	56912a23          	sw	s1,1396(sp)
  400cc4:	57212823          	sw	s2,1392(sp)
  400cc8:	57312623          	sw	s3,1388(sp)
  400ccc:	57412423          	sw	s4,1384(sp)
  400cd0:	57512223          	sw	s5,1380(sp)
  400cd4:	57612023          	sw	s6,1376(sp)
  400cd8:	55712e23          	sw	s7,1372(sp)
  400cdc:	55812c23          	sw	s8,1368(sp)
  400ce0:	55912a23          	sw	s9,1364(sp)
  400ce4:	55a12823          	sw	s10,1360(sp)
  400ce8:	55b12623          	sw	s11,1356(sp)
  400cec:	d3cff0ef          	jal	400228 <memcpy>
  400cf0:	004025b7          	lui	a1,0x402
  400cf4:	02000613          	li	a2,32
  400cf8:	ebc58593          	addi	a1,a1,-324 # 401ebc <main+0x1218>
  400cfc:	0e010513          	addi	a0,sp,224
  400d00:	d28ff0ef          	jal	400228 <memcpy>
  400d04:	004015b7          	lui	a1,0x401
  400d08:	9b058413          	addi	s0,a1,-1616 # 4009b0 <resetScreenVector+0x110>
  400d0c:	02000613          	li	a2,32
  400d10:	9b058593          	addi	a1,a1,-1616
  400d14:	10010513          	addi	a0,sp,256
  400d18:	d10ff0ef          	jal	400228 <memcpy>
  400d1c:	004025b7          	lui	a1,0x402
  400d20:	02000613          	li	a2,32
  400d24:	ee058593          	addi	a1,a1,-288 # 401ee0 <main+0x123c>
  400d28:	12010513          	addi	a0,sp,288
  400d2c:	cfcff0ef          	jal	400228 <memcpy>
  400d30:	02000613          	li	a2,32
  400d34:	00c405b3          	add	a1,s0,a2
  400d38:	14010513          	addi	a0,sp,320
  400d3c:	cecff0ef          	jal	400228 <memcpy>
  400d40:	004025b7          	lui	a1,0x402
  400d44:	02000613          	li	a2,32
  400d48:	f0458593          	addi	a1,a1,-252 # 401f04 <main+0x1260>
  400d4c:	16010513          	addi	a0,sp,352
  400d50:	cd8ff0ef          	jal	400228 <memcpy>
  400d54:	004025b7          	lui	a1,0x402
  400d58:	02000613          	li	a2,32
  400d5c:	f2858593          	addi	a1,a1,-216 # 401f28 <main+0x1284>
  400d60:	18010513          	addi	a0,sp,384
  400d64:	cc4ff0ef          	jal	400228 <memcpy>
  400d68:	004025b7          	lui	a1,0x402
  400d6c:	02000613          	li	a2,32
  400d70:	f4c58593          	addi	a1,a1,-180 # 401f4c <main+0x12a8>
  400d74:	1a010513          	addi	a0,sp,416
  400d78:	cb0ff0ef          	jal	400228 <memcpy>
  400d7c:	004025b7          	lui	a1,0x402
  400d80:	02000613          	li	a2,32
  400d84:	f7058593          	addi	a1,a1,-144 # 401f70 <main+0x12cc>
  400d88:	1c010513          	addi	a0,sp,448
  400d8c:	c9cff0ef          	jal	400228 <memcpy>
  400d90:	004025b7          	lui	a1,0x402
  400d94:	02000613          	li	a2,32
  400d98:	f9458593          	addi	a1,a1,-108 # 401f94 <main+0x12f0>
  400d9c:	1e010513          	addi	a0,sp,480
  400da0:	c88ff0ef          	jal	400228 <memcpy>
  400da4:	004025b7          	lui	a1,0x402
  400da8:	02000613          	li	a2,32
  400dac:	fb858593          	addi	a1,a1,-72 # 401fb8 <main+0x1314>
  400db0:	20010513          	addi	a0,sp,512
  400db4:	c74ff0ef          	jal	400228 <memcpy>
  400db8:	004025b7          	lui	a1,0x402
  400dbc:	02000613          	li	a2,32
  400dc0:	fdc58593          	addi	a1,a1,-36 # 401fdc <main+0x1338>
  400dc4:	22010513          	addi	a0,sp,544
  400dc8:	c60ff0ef          	jal	400228 <memcpy>
  400dcc:	004025b7          	lui	a1,0x402
  400dd0:	02000613          	li	a2,32
  400dd4:	00058593          	mv	a1,a1
  400dd8:	24010513          	addi	a0,sp,576
  400ddc:	c4cff0ef          	jal	400228 <memcpy>
  400de0:	004025b7          	lui	a1,0x402
  400de4:	02000613          	li	a2,32
  400de8:	02458593          	addi	a1,a1,36 # 402024 <main+0x1380>
  400dec:	26010513          	addi	a0,sp,608
  400df0:	c38ff0ef          	jal	400228 <memcpy>
  400df4:	004025b7          	lui	a1,0x402
  400df8:	02000613          	li	a2,32
  400dfc:	04858593          	addi	a1,a1,72 # 402048 <main+0x13a4>
  400e00:	28010513          	addi	a0,sp,640
  400e04:	c24ff0ef          	jal	400228 <memcpy>
  400e08:	04040593          	addi	a1,s0,64
  400e0c:	02000613          	li	a2,32
  400e10:	2a010513          	addi	a0,sp,672
  400e14:	c14ff0ef          	jal	400228 <memcpy>
  400e18:	2c010f13          	addi	t5,sp,704
  400e1c:	000f0513          	mv	a0,t5
  400e20:	06040593          	addi	a1,s0,96
  400e24:	02000613          	li	a2,32
  400e28:	c00ff0ef          	jal	400228 <memcpy>
  400e2c:	2e010e13          	addi	t3,sp,736
  400e30:	000e0513          	mv	a0,t3
  400e34:	08040593          	addi	a1,s0,128
  400e38:	02000613          	li	a2,32
  400e3c:	becff0ef          	jal	400228 <memcpy>
  400e40:	30010913          	addi	s2,sp,768
  400e44:	0a040593          	addi	a1,s0,160
  400e48:	02000613          	li	a2,32
  400e4c:	00090513          	mv	a0,s2
  400e50:	bd8ff0ef          	jal	400228 <memcpy>
  400e54:	32010493          	addi	s1,sp,800
  400e58:	0c040593          	addi	a1,s0,192
  400e5c:	02000613          	li	a2,32
  400e60:	00048513          	mv	a0,s1
  400e64:	bc4ff0ef          	jal	400228 <memcpy>
  400e68:	34010e93          	addi	t4,sp,832
  400e6c:	000e8513          	mv	a0,t4
  400e70:	0e040593          	addi	a1,s0,224
  400e74:	02000613          	li	a2,32
  400e78:	bb0ff0ef          	jal	400228 <memcpy>
  400e7c:	36010313          	addi	t1,sp,864
  400e80:	00030513          	mv	a0,t1
  400e84:	10040593          	addi	a1,s0,256
  400e88:	02000613          	li	a2,32
  400e8c:	b9cff0ef          	jal	400228 <memcpy>
  400e90:	38010893          	addi	a7,sp,896
  400e94:	00088513          	mv	a0,a7
  400e98:	12040593          	addi	a1,s0,288
  400e9c:	02000613          	li	a2,32
  400ea0:	b88ff0ef          	jal	400228 <memcpy>
  400ea4:	3a010693          	addi	a3,sp,928
  400ea8:	00068513          	mv	a0,a3
  400eac:	14040593          	addi	a1,s0,320
  400eb0:	02000613          	li	a2,32
  400eb4:	b74ff0ef          	jal	400228 <memcpy>
  400eb8:	3c010813          	addi	a6,sp,960
  400ebc:	00080513          	mv	a0,a6
  400ec0:	16040593          	addi	a1,s0,352
  400ec4:	02000613          	li	a2,32
  400ec8:	b60ff0ef          	jal	400228 <memcpy>
  400ecc:	3e010713          	addi	a4,sp,992
  400ed0:	00070513          	mv	a0,a4
  400ed4:	18040593          	addi	a1,s0,384
  400ed8:	02000613          	li	a2,32
  400edc:	b4cff0ef          	jal	400228 <memcpy>
  400ee0:	40010d93          	addi	s11,sp,1024
  400ee4:	1a040593          	addi	a1,s0,416
  400ee8:	02000613          	li	a2,32
  400eec:	000d8513          	mv	a0,s11
  400ef0:	b38ff0ef          	jal	400228 <memcpy>
  400ef4:	42010c93          	addi	s9,sp,1056
  400ef8:	1c040593          	addi	a1,s0,448
  400efc:	02000613          	li	a2,32
  400f00:	000c8513          	mv	a0,s9
  400f04:	b24ff0ef          	jal	400228 <memcpy>
  400f08:	44010d13          	addi	s10,sp,1088
  400f0c:	1e040593          	addi	a1,s0,480
  400f10:	02000613          	li	a2,32
  400f14:	000d0513          	mv	a0,s10
  400f18:	b10ff0ef          	jal	400228 <memcpy>
  400f1c:	46010c13          	addi	s8,sp,1120
  400f20:	20040593          	addi	a1,s0,512
  400f24:	02000613          	li	a2,32
  400f28:	000c0513          	mv	a0,s8
  400f2c:	afcff0ef          	jal	400228 <memcpy>
  400f30:	48010b93          	addi	s7,sp,1152
  400f34:	22040593          	addi	a1,s0,544
  400f38:	02000613          	li	a2,32
  400f3c:	000b8513          	mv	a0,s7
  400f40:	ae8ff0ef          	jal	400228 <memcpy>
  400f44:	4a010a93          	addi	s5,sp,1184
  400f48:	24040593          	addi	a1,s0,576
  400f4c:	02000613          	li	a2,32
  400f50:	000a8513          	mv	a0,s5
  400f54:	ad4ff0ef          	jal	400228 <memcpy>
  400f58:	4c010a13          	addi	s4,sp,1216
  400f5c:	26040593          	addi	a1,s0,608
  400f60:	02000613          	li	a2,32
  400f64:	000a0513          	mv	a0,s4
  400f68:	ac0ff0ef          	jal	400228 <memcpy>
  400f6c:	4e010993          	addi	s3,sp,1248
  400f70:	28040593          	addi	a1,s0,640
  400f74:	02000613          	li	a2,32
  400f78:	00098513          	mv	a0,s3
  400f7c:	aacff0ef          	jal	400228 <memcpy>
  400f80:	50010b13          	addi	s6,sp,1280
  400f84:	2a040593          	addi	a1,s0,672
  400f88:	02000613          	li	a2,32
  400f8c:	000b0513          	mv	a0,s6
  400f90:	a98ff0ef          	jal	400228 <memcpy>
  400f94:	52010793          	addi	a5,sp,1312
  400f98:	2c040593          	addi	a1,s0,704
  400f9c:	02000613          	li	a2,32
  400fa0:	00078513          	mv	a0,a5
  400fa4:	a84ff0ef          	jal	400228 <memcpy>
  400fa8:	2c010f13          	addi	t5,sp,704
  400fac:	34010e93          	addi	t4,sp,832
  400fb0:	2e010e13          	addi	t3,sp,736
  400fb4:	36010313          	addi	t1,sp,864
  400fb8:	38010893          	addi	a7,sp,896
  400fbc:	3c010813          	addi	a6,sp,960
  400fc0:	3a010693          	addi	a3,sp,928
  400fc4:	3e010713          	addi	a4,sp,992
  400fc8:	0b312623          	sw	s3,172(sp)
  400fcc:	0b312a23          	sw	s3,180(sp)
  400fd0:	03212023          	sw	s2,32(sp)
  400fd4:	03e12223          	sw	t5,36(sp)
  400fd8:	03212423          	sw	s2,40(sp)
  400fdc:	03d12623          	sw	t4,44(sp)
  400fe0:	02912a23          	sw	s1,52(sp)
  400fe4:	03c12c23          	sw	t3,56(sp)
  400fe8:	02912e23          	sw	s1,60(sp)
  400fec:	04612023          	sw	t1,64(sp)
  400ff0:	05112423          	sw	a7,72(sp)
  400ff4:	05012623          	sw	a6,76(sp)
  400ff8:	04d12e23          	sw	a3,92(sp)
  400ffc:	06e12023          	sw	a4,96(sp)
  401000:	07b12823          	sw	s11,112(sp)
  401004:	07a12a23          	sw	s10,116(sp)
  401008:	09912223          	sw	s9,132(sp)
  40100c:	09812423          	sw	s8,136(sp)
  401010:	09412c23          	sw	s4,152(sp)
  401014:	09712e23          	sw	s7,156(sp)
  401018:	0b412023          	sw	s4,160(sp)
  40101c:	0b612223          	sw	s6,164(sp)
  401020:	0b512823          	sw	s5,176(sp)
  401024:	0aa12c23          	sw	a0,184(sp)
  401028:	00000413          	li	s0,0
  40102c:	4c000993          	li	s3,1216
  401030:	00040513          	mv	a0,s0
  401034:	07000613          	li	a2,112
  401038:	02000593          	li	a1,32
  40103c:	00140413          	addi	s0,s0,1
  401040:	a58ff0ef          	jal	400298 <putch>
  401044:	ff3416e3          	bne	s0,s3,401030 <main+0x38c>
  401048:	8a000db7          	lui	s11,0x8a000
  40104c:	000da783          	lw	a5,0(s11) # 8a000000 <_stack_end+0x89bfc000>
  401050:	00090593          	mv	a1,s2
  401054:	00000513          	li	a0,0
  401058:	00f12c23          	sw	a5,24(sp)
  40105c:	000da783          	lw	a5,0(s11)
  401060:	00100c13          	li	s8,1
  401064:	0a800a13          	li	s4,168
  401068:	00f12e23          	sw	a5,28(sp)
  40106c:	fbdfe0ef          	jal	400028 <WriteSprite>
  401070:	00048593          	mv	a1,s1
  401074:	00100513          	li	a0,1
  401078:	fb1fe0ef          	jal	400028 <WriteSprite>
  40107c:	2a010593          	addi	a1,sp,672
  401080:	00200513          	li	a0,2
  401084:	fa5fe0ef          	jal	400028 <WriteSprite>
  401088:	00a007b7          	lui	a5,0xa00
  40108c:	88002737          	lui	a4,0x88002
  401090:	0dc78793          	addi	a5,a5,220 # a000dc <_stack_end+0x5fc0dc>
  401094:	00f72023          	sw	a5,0(a4) # 88002000 <_stack_end+0x87bfe000>
  401098:	00a807b7          	lui	a5,0xa80
  40109c:	2dc78793          	addi	a5,a5,732 # a802dc <_stack_end+0x67c2dc>
  4010a0:	00f72223          	sw	a5,4(a4)
  4010a4:	00000c93          	li	s9,0
  4010a8:	0dc00413          	li	s0,220
  4010ac:	0a000493          	li	s1,160
  4010b0:	00000b93          	li	s7,0
  4010b4:	000c0d13          	mv	s10,s8
  4010b8:	00012423          	sw	zero,8(sp)
  4010bc:	00000b13          	li	s6,0
  4010c0:	00000a93          	li	s5,0
  4010c4:	00000993          	li	s3,0
  4010c8:	000c0913          	mv	s2,s8
  4010cc:	000da783          	lw	a5,0(s11)
  4010d0:	00f12e23          	sw	a5,28(sp)
  4010d4:	100007b7          	lui	a5,0x10000
  4010d8:	0007a783          	lw	a5,0(a5) # 10000000 <_stack_end+0xfbfc000>
  4010dc:	00f12623          	sw	a5,12(sp)
  4010e0:	4c0b1263          	bnez	s6,4015a4 <main+0x900>
  4010e4:	00b00793          	li	a5,11
  4010e8:	4b57ee63          	bltu	a5,s5,4015a4 <main+0x900>
  4010ec:	00401737          	lui	a4,0x401
  4010f0:	002a9793          	slli	a5,s5,0x2
  4010f4:	98070713          	addi	a4,a4,-1664 # 400980 <resetScreenVector+0xe0>
  4010f8:	00e787b3          	add	a5,a5,a4
  4010fc:	0007a783          	lw	a5,0(a5)
  401100:	00078067          	jr	a5
  401104:	00402637          	lui	a2,0x402
  401108:	a3860613          	addi	a2,a2,-1480 # 401a38 <main+0xd94>
  40110c:	07000593          	li	a1,112
  401110:	14f00513          	li	a0,335
  401114:	da8ff0ef          	jal	4006bc <printfSCR>
  401118:	00402637          	lui	a2,0x402
  40111c:	a6460613          	addi	a2,a2,-1436 # 401a64 <main+0xdc0>
  401120:	07000593          	li	a1,112
  401124:	18f00513          	li	a0,399
  401128:	d94ff0ef          	jal	4006bc <printfSCR>
  40112c:	00402637          	lui	a2,0x402
  401130:	a9060613          	addi	a2,a2,-1392 # 401a90 <main+0xdec>
  401134:	07000593          	li	a1,112
  401138:	1cf00513          	li	a0,463
  40113c:	d80ff0ef          	jal	4006bc <printfSCR>
  401140:	00402637          	lui	a2,0x402
  401144:	abc60613          	addi	a2,a2,-1348 # 401abc <main+0xe18>
  401148:	07000593          	li	a1,112
  40114c:	20f00513          	li	a0,527
  401150:	d6cff0ef          	jal	4006bc <printfSCR>
  401154:	00402637          	lui	a2,0x402
  401158:	ae860613          	addi	a2,a2,-1304 # 401ae8 <main+0xe44>
  40115c:	07000593          	li	a1,112
  401160:	24f00513          	li	a0,591
  401164:	d58ff0ef          	jal	4006bc <printfSCR>
  401168:	00402637          	lui	a2,0x402
  40116c:	b1460613          	addi	a2,a2,-1260 # 401b14 <main+0xe70>
  401170:	07000593          	li	a1,112
  401174:	28f00513          	li	a0,655
  401178:	d44ff0ef          	jal	4006bc <printfSCR>
  40117c:	4280006f          	j	4015a4 <main+0x900>
  401180:	00402637          	lui	a2,0x402
  401184:	b4060613          	addi	a2,a2,-1216 # 401b40 <main+0xe9c>
  401188:	07000593          	li	a1,112
  40118c:	1d800513          	li	a0,472
  401190:	fe9ff06f          	j	401178 <main+0x4d4>
  401194:	00402637          	lui	a2,0x402
  401198:	b5460613          	addi	a2,a2,-1196 # 401b54 <main+0xeb0>
  40119c:	07000593          	li	a1,112
  4011a0:	1d400513          	li	a0,468
  4011a4:	fd5ff06f          	j	401178 <main+0x4d4>
  4011a8:	00402637          	lui	a2,0x402
  4011ac:	b7060613          	addi	a2,a2,-1168 # 401b70 <main+0xecc>
  4011b0:	07000593          	li	a1,112
  4011b4:	1d600513          	li	a0,470
  4011b8:	fc1ff06f          	j	401178 <main+0x4d4>
  4011bc:	00402637          	lui	a2,0x402
  4011c0:	b8860613          	addi	a2,a2,-1144 # 401b88 <main+0xee4>
  4011c4:	fd9ff06f          	j	40119c <main+0x4f8>
  4011c8:	00402637          	lui	a2,0x402
  4011cc:	ba460613          	addi	a2,a2,-1116 # 401ba4 <main+0xf00>
  4011d0:	fcdff06f          	j	40119c <main+0x4f8>
  4011d4:	00000b13          	li	s6,0
  4011d8:	000b0513          	mv	a0,s6
  4011dc:	05000613          	li	a2,80
  4011e0:	02000593          	li	a1,32
  4011e4:	8b4ff0ef          	jal	400298 <putch>
  4011e8:	001b0b13          	addi	s6,s6,1
  4011ec:	04000793          	li	a5,64
  4011f0:	fefb14e3          	bne	s6,a5,4011d8 <main+0x534>
  4011f4:	01000613          	li	a2,16
  4011f8:	05800593          	li	a1,88
  4011fc:	03f00513          	li	a0,63
  401200:	898ff0ef          	jal	400298 <putch>
  401204:	07000613          	li	a2,112
  401208:	04f00593          	li	a1,79
  40120c:	03e00513          	li	a0,62
  401210:	888ff0ef          	jal	400298 <putch>
  401214:	07000613          	li	a2,112
  401218:	02d00593          	li	a1,45
  40121c:	03d00513          	li	a0,61
  401220:	878ff0ef          	jal	400298 <putch>
  401224:	00402637          	lui	a2,0x402
  401228:	bbc60613          	addi	a2,a2,-1092 # 401bbc <main+0xf18>
  40122c:	05000593          	li	a1,80
  401230:	00000513          	li	a0,0
  401234:	c88ff0ef          	jal	4006bc <printfSCR>
  401238:	000b0513          	mv	a0,s6
  40123c:	07000613          	li	a2,112
  401240:	08200593          	li	a1,130
  401244:	854ff0ef          	jal	400298 <putch>
  401248:	001b0b13          	addi	s6,s6,1
  40124c:	08000793          	li	a5,128
  401250:	fefb14e3          	bne	s6,a5,401238 <main+0x594>
  401254:	00402637          	lui	a2,0x402
  401258:	bdc60613          	addi	a2,a2,-1060 # 401bdc <main+0xf38>
  40125c:	f2dff06f          	j	401188 <main+0x4e4>
  401260:	00000b13          	li	s6,0
  401264:	000b0513          	mv	a0,s6
  401268:	05000613          	li	a2,80
  40126c:	02000593          	li	a1,32
  401270:	828ff0ef          	jal	400298 <putch>
  401274:	001b0b13          	addi	s6,s6,1
  401278:	04000793          	li	a5,64
  40127c:	fefb14e3          	bne	s6,a5,401264 <main+0x5c0>
  401280:	01000613          	li	a2,16
  401284:	05800593          	li	a1,88
  401288:	03f00513          	li	a0,63
  40128c:	80cff0ef          	jal	400298 <putch>
  401290:	07000613          	li	a2,112
  401294:	04f00593          	li	a1,79
  401298:	03e00513          	li	a0,62
  40129c:	ffdfe0ef          	jal	400298 <putch>
  4012a0:	07000613          	li	a2,112
  4012a4:	02d00593          	li	a1,45
  4012a8:	03d00513          	li	a0,61
  4012ac:	fedfe0ef          	jal	400298 <putch>
  4012b0:	00402637          	lui	a2,0x402
  4012b4:	bec60613          	addi	a2,a2,-1044 # 401bec <main+0xf48>
  4012b8:	05000593          	li	a1,80
  4012bc:	00000513          	li	a0,0
  4012c0:	bfcff0ef          	jal	4006bc <printfSCR>
  4012c4:	000b0513          	mv	a0,s6
  4012c8:	07000613          	li	a2,112
  4012cc:	08200593          	li	a1,130
  4012d0:	fc9fe0ef          	jal	400298 <putch>
  4012d4:	001b0b13          	addi	s6,s6,1
  4012d8:	08000793          	li	a5,128
  4012dc:	fefb14e3          	bne	s6,a5,4012c4 <main+0x620>
  4012e0:	00402637          	lui	a2,0x402
  4012e4:	c0060613          	addi	a2,a2,-1024 # 401c00 <main+0xf5c>
  4012e8:	07000593          	li	a1,112
  4012ec:	18000513          	li	a0,384
  4012f0:	bccff0ef          	jal	4006bc <printfSCR>
  4012f4:	00402637          	lui	a2,0x402
  4012f8:	c2060613          	addi	a2,a2,-992 # 401c20 <main+0xf7c>
  4012fc:	07000593          	li	a1,112
  401300:	1c000513          	li	a0,448
  401304:	bb8ff0ef          	jal	4006bc <printfSCR>
  401308:	00402637          	lui	a2,0x402
  40130c:	c3460613          	addi	a2,a2,-972 # 401c34 <main+0xf90>
  401310:	07000593          	li	a1,112
  401314:	20000513          	li	a0,512
  401318:	ba4ff0ef          	jal	4006bc <printfSCR>
  40131c:	00402637          	lui	a2,0x402
  401320:	c4860613          	addi	a2,a2,-952 # 401c48 <main+0xfa4>
  401324:	07000593          	li	a1,112
  401328:	24000513          	li	a0,576
  40132c:	e4dff06f          	j	401178 <main+0x4d4>
  401330:	00000b13          	li	s6,0
  401334:	000b0513          	mv	a0,s6
  401338:	05000613          	li	a2,80
  40133c:	02000593          	li	a1,32
  401340:	f59fe0ef          	jal	400298 <putch>
  401344:	001b0b13          	addi	s6,s6,1
  401348:	04000793          	li	a5,64
  40134c:	fefb14e3          	bne	s6,a5,401334 <main+0x690>
  401350:	01000613          	li	a2,16
  401354:	05800593          	li	a1,88
  401358:	03f00513          	li	a0,63
  40135c:	f3dfe0ef          	jal	400298 <putch>
  401360:	07000613          	li	a2,112
  401364:	04f00593          	li	a1,79
  401368:	03e00513          	li	a0,62
  40136c:	f2dfe0ef          	jal	400298 <putch>
  401370:	07000613          	li	a2,112
  401374:	02d00593          	li	a1,45
  401378:	03d00513          	li	a0,61
  40137c:	f1dfe0ef          	jal	400298 <putch>
  401380:	00402637          	lui	a2,0x402
  401384:	c7060613          	addi	a2,a2,-912 # 401c70 <main+0xfcc>
  401388:	05000593          	li	a1,80
  40138c:	00000513          	li	a0,0
  401390:	b2cff0ef          	jal	4006bc <printfSCR>
  401394:	000b0513          	mv	a0,s6
  401398:	07000613          	li	a2,112
  40139c:	08200593          	li	a1,130
  4013a0:	ef9fe0ef          	jal	400298 <putch>
  4013a4:	001b0b13          	addi	s6,s6,1
  4013a8:	08000793          	li	a5,128
  4013ac:	fefb14e3          	bne	s6,a5,401394 <main+0x6f0>
  4013b0:	00402637          	lui	a2,0x402
  4013b4:	c8860613          	addi	a2,a2,-888 # 401c88 <main+0xfe4>
  4013b8:	07000593          	li	a1,112
  4013bc:	18000513          	li	a0,384
  4013c0:	afcff0ef          	jal	4006bc <printfSCR>
  4013c4:	00402637          	lui	a2,0x402
  4013c8:	cac60613          	addi	a2,a2,-852 # 401cac <main+0x1008>
  4013cc:	07000593          	li	a1,112
  4013d0:	1c000513          	li	a0,448
  4013d4:	ae8ff0ef          	jal	4006bc <printfSCR>
  4013d8:	00402637          	lui	a2,0x402
  4013dc:	cc860613          	addi	a2,a2,-824 # 401cc8 <main+0x1024>
  4013e0:	07000593          	li	a1,112
  4013e4:	20000513          	li	a0,512
  4013e8:	ad4ff0ef          	jal	4006bc <printfSCR>
  4013ec:	00402637          	lui	a2,0x402
  4013f0:	ce860613          	addi	a2,a2,-792 # 401ce8 <main+0x1044>
  4013f4:	07000593          	li	a1,112
  4013f8:	24000513          	li	a0,576
  4013fc:	ac0ff0ef          	jal	4006bc <printfSCR>
  401400:	0c010593          	addi	a1,sp,192
  401404:	00300513          	li	a0,3
  401408:	c21fe0ef          	jal	400028 <WriteSprite>
  40140c:	0e010593          	addi	a1,sp,224
  401410:	00400513          	li	a0,4
  401414:	c15fe0ef          	jal	400028 <WriteSprite>
  401418:	10010593          	addi	a1,sp,256
  40141c:	00500513          	li	a0,5
  401420:	c09fe0ef          	jal	400028 <WriteSprite>
  401424:	12010593          	addi	a1,sp,288
  401428:	00600513          	li	a0,6
  40142c:	bfdfe0ef          	jal	400028 <WriteSprite>
  401430:	14010593          	addi	a1,sp,320
  401434:	00700513          	li	a0,7
  401438:	bf1fe0ef          	jal	400028 <WriteSprite>
  40143c:	16010593          	addi	a1,sp,352
  401440:	00800513          	li	a0,8
  401444:	be5fe0ef          	jal	400028 <WriteSprite>
  401448:	18010593          	addi	a1,sp,384
  40144c:	00900513          	li	a0,9
  401450:	bd9fe0ef          	jal	400028 <WriteSprite>
  401454:	1a010593          	addi	a1,sp,416
  401458:	00a00513          	li	a0,10
  40145c:	bcdfe0ef          	jal	400028 <WriteSprite>
  401460:	1c010593          	addi	a1,sp,448
  401464:	00b00513          	li	a0,11
  401468:	bc1fe0ef          	jal	400028 <WriteSprite>
  40146c:	1e010593          	addi	a1,sp,480
  401470:	00c00513          	li	a0,12
  401474:	bb5fe0ef          	jal	400028 <WriteSprite>
  401478:	20010593          	addi	a1,sp,512
  40147c:	00d00513          	li	a0,13
  401480:	ba9fe0ef          	jal	400028 <WriteSprite>
  401484:	22010593          	addi	a1,sp,544
  401488:	00e00513          	li	a0,14
  40148c:	b9dfe0ef          	jal	400028 <WriteSprite>
  401490:	24010593          	addi	a1,sp,576
  401494:	00f00513          	li	a0,15
  401498:	b91fe0ef          	jal	400028 <WriteSprite>
  40149c:	26010593          	addi	a1,sp,608
  4014a0:	01000513          	li	a0,16
  4014a4:	b85fe0ef          	jal	400028 <WriteSprite>
  4014a8:	28010593          	addi	a1,sp,640
  4014ac:	01100513          	li	a0,17
  4014b0:	b79fe0ef          	jal	400028 <WriteSprite>
  4014b4:	07000613          	li	a2,112
  4014b8:	08300593          	li	a1,131
  4014bc:	26800513          	li	a0,616
  4014c0:	dd9fe0ef          	jal	400298 <putch>
  4014c4:	07000613          	li	a2,112
  4014c8:	08400593          	li	a1,132
  4014cc:	26900513          	li	a0,617
  4014d0:	dc9fe0ef          	jal	400298 <putch>
  4014d4:	07000613          	li	a2,112
  4014d8:	08500593          	li	a1,133
  4014dc:	26a00513          	li	a0,618
  4014e0:	db9fe0ef          	jal	400298 <putch>
  4014e4:	07000613          	li	a2,112
  4014e8:	08600593          	li	a1,134
  4014ec:	26b00513          	li	a0,619
  4014f0:	da9fe0ef          	jal	400298 <putch>
  4014f4:	07000613          	li	a2,112
  4014f8:	08700593          	li	a1,135
  4014fc:	26c00513          	li	a0,620
  401500:	d99fe0ef          	jal	400298 <putch>
  401504:	07000613          	li	a2,112
  401508:	08800593          	li	a1,136
  40150c:	2a800513          	li	a0,680
  401510:	d89fe0ef          	jal	400298 <putch>
  401514:	07000613          	li	a2,112
  401518:	08900593          	li	a1,137
  40151c:	2a900513          	li	a0,681
  401520:	d79fe0ef          	jal	400298 <putch>
  401524:	07000613          	li	a2,112
  401528:	08a00593          	li	a1,138
  40152c:	2aa00513          	li	a0,682
  401530:	d69fe0ef          	jal	400298 <putch>
  401534:	07000613          	li	a2,112
  401538:	08b00593          	li	a1,139
  40153c:	2ab00513          	li	a0,683
  401540:	d59fe0ef          	jal	400298 <putch>
  401544:	07000613          	li	a2,112
  401548:	08c00593          	li	a1,140
  40154c:	2ac00513          	li	a0,684
  401550:	d49fe0ef          	jal	400298 <putch>
  401554:	07000613          	li	a2,112
  401558:	08d00593          	li	a1,141
  40155c:	2e800513          	li	a0,744
  401560:	d39fe0ef          	jal	400298 <putch>
  401564:	07000613          	li	a2,112
  401568:	08e00593          	li	a1,142
  40156c:	2e900513          	li	a0,745
  401570:	d29fe0ef          	jal	400298 <putch>
  401574:	07000613          	li	a2,112
  401578:	08f00593          	li	a1,143
  40157c:	2ea00513          	li	a0,746
  401580:	d19fe0ef          	jal	400298 <putch>
  401584:	07000613          	li	a2,112
  401588:	09000593          	li	a1,144
  40158c:	2eb00513          	li	a0,747
  401590:	d09fe0ef          	jal	400298 <putch>
  401594:	07000613          	li	a2,112
  401598:	09100593          	li	a1,145
  40159c:	2ec00513          	li	a0,748
  4015a0:	cf9fe0ef          	jal	400298 <putch>
  4015a4:	004027b7          	lui	a5,0x402
  4015a8:	dc078613          	addi	a2,a5,-576 # 401dc0 <main+0x111c>
  4015ac:	07000593          	li	a1,112
  4015b0:	4ba00513          	li	a0,1210
  4015b4:	0019fb13          	andi	s6,s3,1
  4015b8:	904ff0ef          	jal	4006bc <printfSCR>
  4015bc:	240b1063          	bnez	s6,4017fc <main+0xb58>
  4015c0:	00c12783          	lw	a5,12(sp)
  4015c4:	0187d513          	srli	a0,a5,0x18
  4015c8:	a91fe0ef          	jal	400058 <USBParser>
  4015cc:	06400793          	li	a5,100
  4015d0:	22f50263          	beq	a0,a5,4017f4 <main+0xb50>
  4015d4:	1aa7e263          	bltu	a5,a0,401778 <main+0xad4>
  4015d8:	05200793          	li	a5,82
  4015dc:	1ef50a63          	beq	a0,a5,4017d0 <main+0xb2c>
  4015e0:	06100793          	li	a5,97
  4015e4:	2cf50c63          	beq	a0,a5,4018bc <main+0xc18>
  4015e8:	04c00793          	li	a5,76
  4015ec:	1ef50c63          	beq	a0,a5,4017e4 <main+0xb40>
  4015f0:	00100b13          	li	s6,1
  4015f4:	00400913          	li	s2,4
  4015f8:	2040006f          	j	4017fc <main+0xb58>
  4015fc:	00000413          	li	s0,0
  401600:	04000493          	li	s1,64
  401604:	00040513          	mv	a0,s0
  401608:	05000613          	li	a2,80
  40160c:	02000593          	li	a1,32
  401610:	00140413          	addi	s0,s0,1
  401614:	c85fe0ef          	jal	400298 <putch>
  401618:	fe9416e3          	bne	s0,s1,401604 <main+0x960>
  40161c:	01000613          	li	a2,16
  401620:	05800593          	li	a1,88
  401624:	03f00513          	li	a0,63
  401628:	c71fe0ef          	jal	400298 <putch>
  40162c:	07000613          	li	a2,112
  401630:	04f00593          	li	a1,79
  401634:	03e00513          	li	a0,62
  401638:	c61fe0ef          	jal	400298 <putch>
  40163c:	07000613          	li	a2,112
  401640:	02d00593          	li	a1,45
  401644:	03d00513          	li	a0,61
  401648:	c51fe0ef          	jal	400298 <putch>
  40164c:	00402637          	lui	a2,0x402
  401650:	d1060613          	addi	a2,a2,-752 # 401d10 <main+0x106c>
  401654:	05000593          	li	a1,80
  401658:	00000513          	li	a0,0
  40165c:	860ff0ef          	jal	4006bc <printfSCR>
  401660:	08000493          	li	s1,128
  401664:	00040513          	mv	a0,s0
  401668:	07000613          	li	a2,112
  40166c:	08200593          	li	a1,130
  401670:	00140413          	addi	s0,s0,1
  401674:	c25fe0ef          	jal	400298 <putch>
  401678:	fe9416e3          	bne	s0,s1,401664 <main+0x9c0>
  40167c:	00402637          	lui	a2,0x402
  401680:	d2c60613          	addi	a2,a2,-724 # 401d2c <main+0x1088>
  401684:	07000593          	li	a1,112
  401688:	18000513          	li	a0,384
  40168c:	830ff0ef          	jal	4006bc <printfSCR>
  401690:	00402637          	lui	a2,0x402
  401694:	d4860613          	addi	a2,a2,-696 # 401d48 <main+0x10a4>
  401698:	07000593          	li	a1,112
  40169c:	1c000513          	li	a0,448
  4016a0:	81cff0ef          	jal	4006bc <printfSCR>
  4016a4:	00402637          	lui	a2,0x402
  4016a8:	d7060613          	addi	a2,a2,-656 # 401d70 <main+0x10cc>
  4016ac:	07000593          	li	a1,112
  4016b0:	20000513          	li	a0,512
  4016b4:	808ff0ef          	jal	4006bc <printfSCR>
  4016b8:	00402637          	lui	a2,0x402
  4016bc:	da460613          	addi	a2,a2,-604 # 401da4 <main+0x1100>
  4016c0:	07000593          	li	a1,112
  4016c4:	24000513          	li	a0,576
  4016c8:	ff5fe0ef          	jal	4006bc <printfSCR>
  4016cc:	0d000a13          	li	s4,208
  4016d0:	00100c93          	li	s9,1
  4016d4:	09400413          	li	s0,148
  4016d8:	0c800493          	li	s1,200
  4016dc:	ec9ff06f          	j	4015a4 <main+0x900>
  4016e0:	00000b13          	li	s6,0
  4016e4:	000b0513          	mv	a0,s6
  4016e8:	04000613          	li	a2,64
  4016ec:	02000593          	li	a1,32
  4016f0:	ba9fe0ef          	jal	400298 <putch>
  4016f4:	001b0b13          	addi	s6,s6,1
  4016f8:	4c000793          	li	a5,1216
  4016fc:	fefb14e3          	bne	s6,a5,4016e4 <main+0xa40>
  401700:	00402637          	lui	a2,0x402
  401704:	dc060613          	addi	a2,a2,-576 # 401dc0 <main+0x111c>
  401708:	07000593          	li	a1,112
  40170c:	0dc00513          	li	a0,220
  401710:	fadfe0ef          	jal	4006bc <printfSCR>
  401714:	00402637          	lui	a2,0x402
  401718:	dc860613          	addi	a2,a2,-568 # 401dc8 <main+0x1124>
  40171c:	04f00593          	li	a1,79
  401720:	1c500513          	li	a0,453
  401724:	f99fe0ef          	jal	4006bc <printfSCR>
  401728:	00402637          	lui	a2,0x402
  40172c:	dec60613          	addi	a2,a2,-532 # 401dec <main+0x1148>
  401730:	04f00593          	li	a1,79
  401734:	24500513          	li	a0,581
  401738:	f85fe0ef          	jal	4006bc <printfSCR>
  40173c:	00402637          	lui	a2,0x402
  401740:	e2860613          	addi	a2,a2,-472 # 401e28 <main+0x1184>
  401744:	04f00593          	li	a1,79
  401748:	28500513          	li	a0,645
  40174c:	f71fe0ef          	jal	4006bc <printfSCR>
  401750:	00402637          	lui	a2,0x402
  401754:	e6060613          	addi	a2,a2,-416 # 401e60 <main+0x11bc>
  401758:	04f00593          	li	a1,79
  40175c:	30500513          	li	a0,773
  401760:	f5dfe0ef          	jal	4006bc <printfSCR>
  401764:	00402637          	lui	a2,0x402
  401768:	e7c60613          	addi	a2,a2,-388 # 401e7c <main+0x11d8>
  40176c:	04f00593          	li	a1,79
  401770:	41200513          	li	a0,1042
  401774:	a05ff06f          	j	401178 <main+0x4d4>
  401778:	07300793          	li	a5,115
  40177c:	14f50663          	beq	a0,a5,4018c8 <main+0xc24>
  401780:	07700793          	li	a5,119
  401784:	14f50863          	beq	a0,a5,4018d4 <main+0xc30>
  401788:	07100793          	li	a5,113
  40178c:	e6f512e3          	bne	a0,a5,4015f0 <main+0x94c>
  401790:	57c12083          	lw	ra,1404(sp)
  401794:	57812403          	lw	s0,1400(sp)
  401798:	57412483          	lw	s1,1396(sp)
  40179c:	57012903          	lw	s2,1392(sp)
  4017a0:	56c12983          	lw	s3,1388(sp)
  4017a4:	56812a03          	lw	s4,1384(sp)
  4017a8:	56412a83          	lw	s5,1380(sp)
  4017ac:	56012b03          	lw	s6,1376(sp)
  4017b0:	55c12b83          	lw	s7,1372(sp)
  4017b4:	55812c03          	lw	s8,1368(sp)
  4017b8:	55412c83          	lw	s9,1364(sp)
  4017bc:	55012d03          	lw	s10,1360(sp)
  4017c0:	54c12d83          	lw	s11,1356(sp)
  4017c4:	00000513          	li	a0,0
  4017c8:	58010113          	addi	sp,sp,1408
  4017cc:	00008067          	ret
  4017d0:	9bdfe0ef          	jal	40018c <ClearScreenRightToLeft>
  4017d4:	001a8a93          	addi	s5,s5,1
  4017d8:	0ffafa93          	zext.b	s5,s5
  4017dc:	00000c93          	li	s9,0
  4017e0:	e15ff06f          	j	4015f4 <main+0x950>
  4017e4:	9a9fe0ef          	jal	40018c <ClearScreenRightToLeft>
  4017e8:	fe0a8ae3          	beqz	s5,4017dc <main+0xb38>
  4017ec:	fffa8a93          	addi	s5,s5,-1
  4017f0:	fe9ff06f          	j	4017d8 <main+0xb34>
  4017f4:	00100b13          	li	s6,1
  4017f8:	00300913          	li	s2,3
  4017fc:	01c12783          	lw	a5,28(sp)
  401800:	01812703          	lw	a4,24(sp)
  401804:	40e787b3          	sub	a5,a5,a4
  401808:	00018737          	lui	a4,0x18
  40180c:	4017d793          	srai	a5,a5,0x1
  401810:	6a070713          	addi	a4,a4,1696 # 186a0 <_stack_size+0x17ea0>
  401814:	8af75ce3          	bge	a4,a5,4010cc <main+0x428>
  401818:	000da783          	lw	a5,0(s11)
  40181c:	00f12c23          	sw	a5,24(sp)
  401820:	0a091e63          	bnez	s2,4018dc <main+0xc38>
  401824:	001b8993          	addi	s3,s7,1
  401828:	0ff9f993          	zext.b	s3,s3
  40182c:	ffc40413          	addi	s0,s0,-4
  401830:	0049bb93          	sltiu	s7,s3,4
  401834:	01041413          	slli	s0,s0,0x10
  401838:	41700bb3          	neg	s7,s7
  40183c:	41045413          	srai	s0,s0,0x10
  401840:	0179fbb3          	and	s7,s3,s7
  401844:	00045463          	bgez	s0,40184c <main+0xba8>
  401848:	12c00413          	li	s0,300
  40184c:	002b9793          	slli	a5,s7,0x2
  401850:	53078713          	addi	a4,a5,1328
  401854:	00f12623          	sw	a5,12(sp)
  401858:	01010793          	addi	a5,sp,16
  40185c:	00f70733          	add	a4,a4,a5
  401860:	b5872583          	lw	a1,-1192(a4)
  401864:	00000513          	li	a0,0
  401868:	fc0fe0ef          	jal	400028 <WriteSprite>
  40186c:	00c12783          	lw	a5,12(sp)
  401870:	01010713          	addi	a4,sp,16
  401874:	53078793          	addi	a5,a5,1328
  401878:	00e787b3          	add	a5,a5,a4
  40187c:	b6c7a583          	lw	a1,-1172(a5)
  401880:	00100513          	li	a0,1
  401884:	fa4fe0ef          	jal	400028 <WriteSprite>
  401888:	000c8693          	mv	a3,s9
  40188c:	00040613          	mv	a2,s0
  401890:	00048593          	mv	a1,s1
  401894:	00000713          	li	a4,0
  401898:	00000513          	li	a0,0
  40189c:	8b1fe0ef          	jal	40014c <SetAttributes>
  4018a0:	00100713          	li	a4,1
  4018a4:	000c8693          	mv	a3,s9
  4018a8:	00040613          	mv	a2,s0
  4018ac:	000a0593          	mv	a1,s4
  4018b0:	00070513          	mv	a0,a4
  4018b4:	899fe0ef          	jal	40014c <SetAttributes>
  4018b8:	815ff06f          	j	4010cc <main+0x428>
  4018bc:	00100b13          	li	s6,1
  4018c0:	00200913          	li	s2,2
  4018c4:	f39ff06f          	j	4017fc <main+0xb58>
  4018c8:	00100913          	li	s2,1
  4018cc:	00100b13          	li	s6,1
  4018d0:	f2dff06f          	j	4017fc <main+0xb58>
  4018d4:	00000913          	li	s2,0
  4018d8:	ff5ff06f          	j	4018cc <main+0xc28>
  4018dc:	00100793          	li	a5,1
  4018e0:	06f91a63          	bne	s2,a5,401954 <main+0xcb0>
  4018e4:	00812783          	lw	a5,8(sp)
  4018e8:	00440413          	addi	s0,s0,4
  4018ec:	01041413          	slli	s0,s0,0x10
  4018f0:	00178993          	addi	s3,a5,1
  4018f4:	0ff9f993          	zext.b	s3,s3
  4018f8:	0049b793          	sltiu	a5,s3,4
  4018fc:	40f007b3          	neg	a5,a5
  401900:	00f9f7b3          	and	a5,s3,a5
  401904:	00f12423          	sw	a5,8(sp)
  401908:	41045413          	srai	s0,s0,0x10
  40190c:	12c00793          	li	a5,300
  401910:	0087d463          	bge	a5,s0,401918 <main+0xc74>
  401914:	00000413          	li	s0,0
  401918:	00812783          	lw	a5,8(sp)
  40191c:	00000513          	li	a0,0
  401920:	00279793          	slli	a5,a5,0x2
  401924:	53078713          	addi	a4,a5,1328
  401928:	00f12623          	sw	a5,12(sp)
  40192c:	01010793          	addi	a5,sp,16
  401930:	00f70733          	add	a4,a4,a5
  401934:	ae072583          	lw	a1,-1312(a4)
  401938:	ef0fe0ef          	jal	400028 <WriteSprite>
  40193c:	00c12783          	lw	a5,12(sp)
  401940:	01010713          	addi	a4,sp,16
  401944:	53078793          	addi	a5,a5,1328
  401948:	00e787b3          	add	a5,a5,a4
  40194c:	af47a583          	lw	a1,-1292(a5)
  401950:	f31ff06f          	j	401880 <main+0xbdc>
  401954:	00200793          	li	a5,2
  401958:	06f91663          	bne	s2,a5,4019c4 <main+0xd20>
  40195c:	ffc48493          	addi	s1,s1,-4
  401960:	01049493          	slli	s1,s1,0x10
  401964:	4104d493          	srai	s1,s1,0x10
  401968:	001d0993          	addi	s3,s10,1
  40196c:	001d4d13          	xori	s10,s10,1
  401970:	0404c463          	bltz	s1,4019b8 <main+0xd14>
  401974:	ffca0a13          	addi	s4,s4,-4
  401978:	010a1a13          	slli	s4,s4,0x10
  40197c:	410a5a13          	srai	s4,s4,0x10
  401980:	002d1793          	slli	a5,s10,0x2
  401984:	53078713          	addi	a4,a5,1328
  401988:	00f12623          	sw	a5,12(sp)
  40198c:	01010793          	addi	a5,sp,16
  401990:	00f70733          	add	a4,a4,a5
  401994:	b0872583          	lw	a1,-1272(a4)
  401998:	00000513          	li	a0,0
  40199c:	e8cfe0ef          	jal	400028 <WriteSprite>
  4019a0:	00c12783          	lw	a5,12(sp)
  4019a4:	01010713          	addi	a4,sp,16
  4019a8:	53078793          	addi	a5,a5,1328
  4019ac:	00e787b3          	add	a5,a5,a4
  4019b0:	b1c7a583          	lw	a1,-1252(a5)
  4019b4:	ecdff06f          	j	401880 <main+0xbdc>
  4019b8:	1fc00a13          	li	s4,508
  4019bc:	1f400493          	li	s1,500
  4019c0:	fc1ff06f          	j	401980 <main+0xcdc>
  4019c4:	00300793          	li	a5,3
  4019c8:	ecf910e3          	bne	s2,a5,401888 <main+0xbe4>
  4019cc:	00448493          	addi	s1,s1,4
  4019d0:	01049493          	slli	s1,s1,0x10
  4019d4:	4104d493          	srai	s1,s1,0x10
  4019d8:	1fc00793          	li	a5,508
  4019dc:	001c0993          	addi	s3,s8,1
  4019e0:	001c4c13          	xori	s8,s8,1
  4019e4:	0497c463          	blt	a5,s1,401a2c <main+0xd88>
  4019e8:	004a0a13          	addi	s4,s4,4
  4019ec:	010a1a13          	slli	s4,s4,0x10
  4019f0:	410a5a13          	srai	s4,s4,0x10
  4019f4:	002c1793          	slli	a5,s8,0x2
  4019f8:	53078713          	addi	a4,a5,1328
  4019fc:	00f12623          	sw	a5,12(sp)
  401a00:	01010793          	addi	a5,sp,16
  401a04:	00f70733          	add	a4,a4,a5
  401a08:	b3072583          	lw	a1,-1232(a4)
  401a0c:	00000513          	li	a0,0
  401a10:	e18fe0ef          	jal	400028 <WriteSprite>
  401a14:	00c12783          	lw	a5,12(sp)
  401a18:	01010713          	addi	a4,sp,16
  401a1c:	53078793          	addi	a5,a5,1328
  401a20:	00e787b3          	add	a5,a5,a4
  401a24:	b447a583          	lw	a1,-1212(a5)
  401a28:	e59ff06f          	j	401880 <main+0xbdc>
  401a2c:	00800a13          	li	s4,8
  401a30:	00000493          	li	s1,0
  401a34:	fc1ff06f          	j	4019f4 <main+0xd50>
