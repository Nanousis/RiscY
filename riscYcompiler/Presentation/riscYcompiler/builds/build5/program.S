
builds/build5/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00004117          	auipc	sp,0x4
  400004:	80010113          	addi	sp,sp,-2048 # 403800 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	5f5000ef          	jal	400e04 <_etext>
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
  4003a0:	3e458593          	addi	a1,a1,996 # 4023e4 <_etext+0x15e0>
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
  400448:	df058593          	addi	a1,a1,-528 # 400df0 <resetScreenVector+0x550>
  40044c:	01400613          	li	a2,20
  400450:	00c10513          	addi	a0,sp,12
  400454:	02112623          	sw	ra,44(sp)
  400458:	dd1ff0ef          	jal	400228 <memcpy>
  40045c:	000187b7          	lui	a5,0x18
  400460:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  400464:	0287fa63          	bgeu	a5,s0,400498 <printDec+0x70>
  400468:	004025b7          	lui	a1,0x402
  40046c:	00090613          	mv	a2,s2
  400470:	3f858593          	addi	a1,a1,1016 # 4023f8 <_etext+0x15f4>
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
  400598:	3fe41503          	lh	a0,1022(s0) # 4023fe <screenPos>
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
  400614:	3fe45783          	lhu	a5,1022(s0)
  400618:	00f507b3          	add	a5,a0,a5
  40061c:	01079793          	slli	a5,a5,0x10
  400620:	4107d793          	srai	a5,a5,0x10
  400624:	3ef41f23          	sh	a5,1022(s0)
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
  40066c:	3fe45783          	lhu	a5,1022(s0)
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
  4006a8:	3fe45783          	lhu	a5,1022(s0)
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
  400890:	3e079f23          	sh	zero,1022(a5) # 4023fe <screenPos>
  400894:	00412483          	lw	s1,4(sp)
  400898:	01010113          	addi	sp,sp,16
  40089c:	00008067          	ret

004008a0 <resetScreenVector>:
  4008a0:	004027b7          	lui	a5,0x402
  4008a4:	3e079f23          	sh	zero,1022(a5) # 4023fe <screenPos>
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
  400980:	132c                	.insn	2, 0x132c
  400982:	0040                	.insn	2, 0x0040
  400984:	13a8                	.insn	2, 0x13a8
  400986:	0040                	.insn	2, 0x0040
  400988:	13bc                	.insn	2, 0x13bc
  40098a:	0040                	.insn	2, 0x0040
  40098c:	13d0                	.insn	2, 0x13d0
  40098e:	0040                	.insn	2, 0x0040
  400990:	13e4                	.insn	2, 0x13e4
  400992:	0040                	.insn	2, 0x0040
  400994:	13f0                	.insn	2, 0x13f0
  400996:	0040                	.insn	2, 0x0040
  400998:	13fc                	.insn	2, 0x13fc
  40099a:	0040                	.insn	2, 0x0040
  40099c:	1488                	.insn	2, 0x1488
  40099e:	0040                	.insn	2, 0x0040
  4009a0:	1558                	.insn	2, 0x1558
  4009a2:	0040                	.insn	2, 0x0040
  4009a4:	1824                	.insn	2, 0x1824
  4009a6:	0040                	.insn	2, 0x0040
  4009a8:	17cc                	.insn	2, 0x17cc
  4009aa:	0040                	.insn	2, 0x0040
  4009ac:	1a58                	.insn	2, 0x1a58
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
  400c90:	5553000f          	.insn	4, 0x5553000f
  400c94:	55735573          	.insn	4, 0x55735573
  400c98:	55735573          	.insn	4, 0x55735573
  400c9c:	55735573          	.insn	4, 0x55735573
  400ca0:	55735573          	.insn	4, 0x55735573
  400ca4:	55735573          	.insn	4, 0x55735573
  400ca8:	55735573          	.insn	4, 0x55735573
  400cac:	aaa35573          	.insn	4, 0xaaa35573
  400cb0:	0000                	.insn	2, 0x
  400cb2:	5555                	.insn	2, 0x5555
  400cb4:	5555                	.insn	2, 0x5555
  400cb6:	5555                	.insn	2, 0x5555
  400cb8:	5555                	.insn	2, 0x5555
  400cba:	5555                	.insn	2, 0x5555
  400cbc:	5555                	.insn	2, 0x5555
  400cbe:	5555                	.insn	2, 0x5555
  400cc0:	5555                	.insn	2, 0x5555
  400cc2:	5555                	.insn	2, 0x5555
  400cc4:	5555                	.insn	2, 0x5555
  400cc6:	5555                	.insn	2, 0x5555
  400cc8:	5555                	.insn	2, 0x5555
  400cca:	a555                	.insn	2, 0xa555
  400ccc:	2aaa                	.insn	2, 0x2aaa
  400cce:	0002                	.insn	2, 0x0002
  400cd0:	0000                	.insn	2, 0x
  400cd2:	5555                	.insn	2, 0x5555
  400cd4:	5555                	.insn	2, 0x5555
  400cd6:	5555                	.insn	2, 0x5555
  400cd8:	5555                	.insn	2, 0x5555
  400cda:	5555                	.insn	2, 0x5555
  400cdc:	5555                	.insn	2, 0x5555
  400cde:	5555                	.insn	2, 0x5555
  400ce0:	5555                	.insn	2, 0x5555
  400ce2:	5555                	.insn	2, 0x5555
  400ce4:	5555                	.insn	2, 0x5555
  400ce6:	5555                	.insn	2, 0x5555
  400ce8:	5555                	.insn	2, 0x5555
  400cea:	aaaa                	.insn	2, 0xaaaa
  400cec:	0000                	.insn	2, 0x
  400cee:	ffff                	.insn	2, 0xffff
  400cf0:	0000                	.insn	2, 0x
  400cf2:	5555                	.insn	2, 0x5555
  400cf4:	5555                	.insn	2, 0x5555
  400cf6:	5555                	.insn	2, 0x5555
  400cf8:	5555                	.insn	2, 0x5555
  400cfa:	5555                	.insn	2, 0x5555
  400cfc:	5555                	.insn	2, 0x5555
  400cfe:	5555                	.insn	2, 0x5555
  400d00:	5555                	.insn	2, 0x5555
  400d02:	5555                	.insn	2, 0x5555
  400d04:	5555                	.insn	2, 0x5555
  400d06:	5555                	.insn	2, 0x5555
  400d08:	5555                	.insn	2, 0x5555
  400d0a:	555a                	.insn	2, 0x555a
  400d0c:	aaa8                	.insn	2, 0xaaa8
  400d0e:	8000                	.insn	2, 0x8000
  400d10:	f000                	.insn	2, 0xf000
  400d12:	c555                	.insn	2, 0xc555
  400d14:	cd55                	.insn	2, 0xcd55
  400d16:	cd55                	.insn	2, 0xcd55
  400d18:	cd55                	.insn	2, 0xcd55
  400d1a:	cd55                	.insn	2, 0xcd55
  400d1c:	cd55                	.insn	2, 0xcd55
  400d1e:	cd55                	.insn	2, 0xcd55
  400d20:	cd55                	.insn	2, 0xcd55
  400d22:	cd55                	.insn	2, 0xcd55
  400d24:	cd55                	.insn	2, 0xcd55
  400d26:	cd55                	.insn	2, 0xcd55
  400d28:	cd55                	.insn	2, 0xcd55
  400d2a:	cd55                	.insn	2, 0xcd55
  400d2c:	cd55                	.insn	2, 0xcd55
  400d2e:	caaa                	.insn	2, 0xcaaa
  400d30:	ffd30003          	lb	zero,-3(t1)
  400d34:	3fd33fd3          	.insn	4, 0x3fd33fd3
  400d38:	3fd33fd3          	.insn	4, 0x3fd33fd3
  400d3c:	3fd33fd3          	.insn	4, 0x3fd33fd3
  400d40:	fff3fff3          	.insn	4, 0xfff3fff3
  400d44:	fff3fff3          	.insn	4, 0xfff3fff3
  400d48:	5553fff3          	.insn	4, 0x5553fff3
  400d4c:	00034003          	lbu	zero,0(t1)
  400d50:	fffc                	.insn	2, 0xfffc
  400d52:	ffff                	.insn	2, 0xffff
  400d54:	fc00                	.insn	2, 0xfc00
  400d56:	fcff                	.insn	2, 0xfcff
  400d58:	fcaafceb          	.insn	4, 0xfcaafceb
  400d5c:	fc55                	.insn	2, 0xfc55
  400d5e:	fc00                	.insn	2, 0xfc00
  400d60:	ffff                	.insn	2, 0xffff
  400d62:	ffff                	.insn	2, 0xffff
  400d64:	ffff                	.insn	2, 0xffff
  400d66:	ffff                	.insn	2, 0xffff
  400d68:	ffff                	.insn	2, 0xffff
  400d6a:	055557ff 00000000 	.insn	20, 0x58545454545454545454545400000000055557ff
  400d72:	54545454 54545454 
  400d7a:	58545454 
  400d7e:	9464                	.insn	2, 0x9464
  400d80:	5894                	.insn	2, 0x5894
  400d82:	9464                	.insn	2, 0x9464
  400d84:	5494                	.insn	2, 0x5494
  400d86:	5454                	.insn	2, 0x5454
  400d88:	5454                	.insn	2, 0x5454
  400d8a:	5454                	.insn	2, 0x5454
  400d8c:	5454                	.insn	2, 0x5454
  400d8e:	0000                	.insn	2, 0x
  400d90:	0000                	.insn	2, 0x
  400d92:	1515                	.insn	2, 0x1515
  400d94:	1515                	.insn	2, 0x1515
  400d96:	1515                	.insn	2, 0x1515
  400d98:	1515                	.insn	2, 0x1515
  400d9a:	1715                	.insn	2, 0x1715
  400d9c:	17351d17          	auipc	s10,0x17351
  400da0:	15351d17          	auipc	s10,0x15351
  400da4:	1515                	.insn	2, 0x1515
  400da6:	1515                	.insn	2, 0x1515
  400da8:	1515                	.insn	2, 0x1515
  400daa:	1515                	.insn	2, 0x1515
  400dac:	1515                	.insn	2, 0x1515
  400dae:	0000                	.insn	2, 0x
  400db0:	ffff3fff ff3f003f 	.insn	16, 0x003f553faa3feb3fff3f003fffff3fff
  400db8:	aa3feb3f 003f553f 
  400dc0:	ffff                	.insn	2, 0xffff
  400dc2:	ffff                	.insn	2, 0xffff
  400dc4:	ffff                	.insn	2, 0xffff
  400dc6:	ffff                	.insn	2, 0xffff
  400dc8:	ffff                	.insn	2, 0xffff
  400dca:	ffd5                	.insn	2, 0xffd5
  400dcc:	5550                	.insn	2, 0x5550
  400dce:	0000                	.insn	2, 0x
  400dd0:	c000                	.insn	2, 0xc000
  400dd2:	c7ff c7fc c7fc c7fc 	.insn	18, 0xcfffcfffc7fcc7fcc7fcc7fcc7fcc7fcc7ff
  400dda:	c7fc c7fc c7fc cfff 
  400de2:	cfff 
  400de4:	cfff cfff cfff c555 	.insn	18, 0x03e800002710c000c001c555cfffcfffcfff
  400dec:	c001 c000 2710 0000 
  400df4:	03e8 
  400df6:	0000                	.insn	2, 0x
  400df8:	0064                	.insn	2, 0x0064
  400dfa:	0000                	.insn	2, 0x
  400dfc:	000a                	.insn	2, 0x000a
  400dfe:	0000                	.insn	2, 0x
  400e00:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400e04 <main>:
  400e04:	90010113          	addi	sp,sp,-1792
  400e08:	004025b7          	lui	a1,0x402
  400e0c:	02000613          	li	a2,32
  400e10:	21058593          	addi	a1,a1,528 # 402210 <main+0x140c>
  400e14:	0c010513          	addi	a0,sp,192
  400e18:	6e112e23          	sw	ra,1788(sp)
  400e1c:	6e812c23          	sw	s0,1784(sp)
  400e20:	6e912a23          	sw	s1,1780(sp)
  400e24:	6f212823          	sw	s2,1776(sp)
  400e28:	6f312623          	sw	s3,1772(sp)
  400e2c:	6f412423          	sw	s4,1768(sp)
  400e30:	6f512223          	sw	s5,1764(sp)
  400e34:	6f612023          	sw	s6,1760(sp)
  400e38:	6d712e23          	sw	s7,1756(sp)
  400e3c:	6d812c23          	sw	s8,1752(sp)
  400e40:	6d912a23          	sw	s9,1748(sp)
  400e44:	6da12823          	sw	s10,1744(sp)
  400e48:	6db12623          	sw	s11,1740(sp)
  400e4c:	bdcff0ef          	jal	400228 <memcpy>
  400e50:	004025b7          	lui	a1,0x402
  400e54:	02000613          	li	a2,32
  400e58:	23458593          	addi	a1,a1,564 # 402234 <main+0x1430>
  400e5c:	0e010513          	addi	a0,sp,224
  400e60:	bc8ff0ef          	jal	400228 <memcpy>
  400e64:	004015b7          	lui	a1,0x401
  400e68:	9b058413          	addi	s0,a1,-1616 # 4009b0 <resetScreenVector+0x110>
  400e6c:	02000613          	li	a2,32
  400e70:	9b058593          	addi	a1,a1,-1616
  400e74:	10010513          	addi	a0,sp,256
  400e78:	bb0ff0ef          	jal	400228 <memcpy>
  400e7c:	004025b7          	lui	a1,0x402
  400e80:	02000613          	li	a2,32
  400e84:	25858593          	addi	a1,a1,600 # 402258 <main+0x1454>
  400e88:	12010513          	addi	a0,sp,288
  400e8c:	b9cff0ef          	jal	400228 <memcpy>
  400e90:	02000613          	li	a2,32
  400e94:	00c405b3          	add	a1,s0,a2
  400e98:	14010513          	addi	a0,sp,320
  400e9c:	b8cff0ef          	jal	400228 <memcpy>
  400ea0:	004025b7          	lui	a1,0x402
  400ea4:	02000613          	li	a2,32
  400ea8:	27c58593          	addi	a1,a1,636 # 40227c <main+0x1478>
  400eac:	16010513          	addi	a0,sp,352
  400eb0:	b78ff0ef          	jal	400228 <memcpy>
  400eb4:	004025b7          	lui	a1,0x402
  400eb8:	02000613          	li	a2,32
  400ebc:	2a058593          	addi	a1,a1,672 # 4022a0 <main+0x149c>
  400ec0:	18010513          	addi	a0,sp,384
  400ec4:	b64ff0ef          	jal	400228 <memcpy>
  400ec8:	004025b7          	lui	a1,0x402
  400ecc:	02000613          	li	a2,32
  400ed0:	2c458593          	addi	a1,a1,708 # 4022c4 <main+0x14c0>
  400ed4:	1a010513          	addi	a0,sp,416
  400ed8:	b50ff0ef          	jal	400228 <memcpy>
  400edc:	004025b7          	lui	a1,0x402
  400ee0:	02000613          	li	a2,32
  400ee4:	2e858593          	addi	a1,a1,744 # 4022e8 <main+0x14e4>
  400ee8:	1c010513          	addi	a0,sp,448
  400eec:	b3cff0ef          	jal	400228 <memcpy>
  400ef0:	004025b7          	lui	a1,0x402
  400ef4:	02000613          	li	a2,32
  400ef8:	30c58593          	addi	a1,a1,780 # 40230c <main+0x1508>
  400efc:	1e010513          	addi	a0,sp,480
  400f00:	b28ff0ef          	jal	400228 <memcpy>
  400f04:	004025b7          	lui	a1,0x402
  400f08:	02000613          	li	a2,32
  400f0c:	33058593          	addi	a1,a1,816 # 402330 <main+0x152c>
  400f10:	20010513          	addi	a0,sp,512
  400f14:	b14ff0ef          	jal	400228 <memcpy>
  400f18:	004025b7          	lui	a1,0x402
  400f1c:	02000613          	li	a2,32
  400f20:	35458593          	addi	a1,a1,852 # 402354 <main+0x1550>
  400f24:	22010513          	addi	a0,sp,544
  400f28:	b00ff0ef          	jal	400228 <memcpy>
  400f2c:	004025b7          	lui	a1,0x402
  400f30:	02000613          	li	a2,32
  400f34:	37858593          	addi	a1,a1,888 # 402378 <main+0x1574>
  400f38:	24010513          	addi	a0,sp,576
  400f3c:	aecff0ef          	jal	400228 <memcpy>
  400f40:	004025b7          	lui	a1,0x402
  400f44:	02000613          	li	a2,32
  400f48:	39c58593          	addi	a1,a1,924 # 40239c <main+0x1598>
  400f4c:	26010513          	addi	a0,sp,608
  400f50:	ad8ff0ef          	jal	400228 <memcpy>
  400f54:	004025b7          	lui	a1,0x402
  400f58:	02000613          	li	a2,32
  400f5c:	3c058593          	addi	a1,a1,960 # 4023c0 <main+0x15bc>
  400f60:	28010513          	addi	a0,sp,640
  400f64:	ac4ff0ef          	jal	400228 <memcpy>
  400f68:	04040593          	addi	a1,s0,64
  400f6c:	02000613          	li	a2,32
  400f70:	2a010513          	addi	a0,sp,672
  400f74:	ab4ff0ef          	jal	400228 <memcpy>
  400f78:	2c010f13          	addi	t5,sp,704
  400f7c:	000f0513          	mv	a0,t5
  400f80:	06040593          	addi	a1,s0,96
  400f84:	02000613          	li	a2,32
  400f88:	aa0ff0ef          	jal	400228 <memcpy>
  400f8c:	2e010e13          	addi	t3,sp,736
  400f90:	000e0513          	mv	a0,t3
  400f94:	08040593          	addi	a1,s0,128
  400f98:	02000613          	li	a2,32
  400f9c:	a8cff0ef          	jal	400228 <memcpy>
  400fa0:	30010913          	addi	s2,sp,768
  400fa4:	0a040593          	addi	a1,s0,160
  400fa8:	02000613          	li	a2,32
  400fac:	00090513          	mv	a0,s2
  400fb0:	a78ff0ef          	jal	400228 <memcpy>
  400fb4:	32010493          	addi	s1,sp,800
  400fb8:	0c040593          	addi	a1,s0,192
  400fbc:	02000613          	li	a2,32
  400fc0:	00048513          	mv	a0,s1
  400fc4:	a64ff0ef          	jal	400228 <memcpy>
  400fc8:	34010e93          	addi	t4,sp,832
  400fcc:	000e8513          	mv	a0,t4
  400fd0:	0e040593          	addi	a1,s0,224
  400fd4:	02000613          	li	a2,32
  400fd8:	a50ff0ef          	jal	400228 <memcpy>
  400fdc:	36010313          	addi	t1,sp,864
  400fe0:	00030513          	mv	a0,t1
  400fe4:	10040593          	addi	a1,s0,256
  400fe8:	02000613          	li	a2,32
  400fec:	a3cff0ef          	jal	400228 <memcpy>
  400ff0:	38010893          	addi	a7,sp,896
  400ff4:	00088513          	mv	a0,a7
  400ff8:	12040593          	addi	a1,s0,288
  400ffc:	02000613          	li	a2,32
  401000:	a28ff0ef          	jal	400228 <memcpy>
  401004:	3a010693          	addi	a3,sp,928
  401008:	00068513          	mv	a0,a3
  40100c:	14040593          	addi	a1,s0,320
  401010:	02000613          	li	a2,32
  401014:	a14ff0ef          	jal	400228 <memcpy>
  401018:	3c010813          	addi	a6,sp,960
  40101c:	00080513          	mv	a0,a6
  401020:	16040593          	addi	a1,s0,352
  401024:	02000613          	li	a2,32
  401028:	a00ff0ef          	jal	400228 <memcpy>
  40102c:	3e010713          	addi	a4,sp,992
  401030:	00070513          	mv	a0,a4
  401034:	18040593          	addi	a1,s0,384
  401038:	02000613          	li	a2,32
  40103c:	9ecff0ef          	jal	400228 <memcpy>
  401040:	40010793          	addi	a5,sp,1024
  401044:	00078513          	mv	a0,a5
  401048:	1a040593          	addi	a1,s0,416
  40104c:	02000613          	li	a2,32
  401050:	9d8ff0ef          	jal	400228 <memcpy>
  401054:	42010d13          	addi	s10,sp,1056
  401058:	1c040593          	addi	a1,s0,448
  40105c:	02000613          	li	a2,32
  401060:	000d0513          	mv	a0,s10
  401064:	9c4ff0ef          	jal	400228 <memcpy>
  401068:	44010d93          	addi	s11,sp,1088
  40106c:	1e040593          	addi	a1,s0,480
  401070:	02000613          	li	a2,32
  401074:	000d8513          	mv	a0,s11
  401078:	9b0ff0ef          	jal	400228 <memcpy>
  40107c:	46010c93          	addi	s9,sp,1120
  401080:	20040593          	addi	a1,s0,512
  401084:	02000613          	li	a2,32
  401088:	000c8513          	mv	a0,s9
  40108c:	99cff0ef          	jal	400228 <memcpy>
  401090:	48010c13          	addi	s8,sp,1152
  401094:	22040593          	addi	a1,s0,544
  401098:	02000613          	li	a2,32
  40109c:	000c0513          	mv	a0,s8
  4010a0:	988ff0ef          	jal	400228 <memcpy>
  4010a4:	4a010b13          	addi	s6,sp,1184
  4010a8:	24040593          	addi	a1,s0,576
  4010ac:	02000613          	li	a2,32
  4010b0:	000b0513          	mv	a0,s6
  4010b4:	974ff0ef          	jal	400228 <memcpy>
  4010b8:	4c010a13          	addi	s4,sp,1216
  4010bc:	26040593          	addi	a1,s0,608
  4010c0:	02000613          	li	a2,32
  4010c4:	000a0513          	mv	a0,s4
  4010c8:	960ff0ef          	jal	400228 <memcpy>
  4010cc:	4e010993          	addi	s3,sp,1248
  4010d0:	28040593          	addi	a1,s0,640
  4010d4:	02000613          	li	a2,32
  4010d8:	00098513          	mv	a0,s3
  4010dc:	94cff0ef          	jal	400228 <memcpy>
  4010e0:	50010b93          	addi	s7,sp,1280
  4010e4:	2a040593          	addi	a1,s0,672
  4010e8:	02000613          	li	a2,32
  4010ec:	000b8513          	mv	a0,s7
  4010f0:	938ff0ef          	jal	400228 <memcpy>
  4010f4:	52010a93          	addi	s5,sp,1312
  4010f8:	2c040593          	addi	a1,s0,704
  4010fc:	02000613          	li	a2,32
  401100:	000a8513          	mv	a0,s5
  401104:	924ff0ef          	jal	400228 <memcpy>
  401108:	2e040593          	addi	a1,s0,736
  40110c:	02000613          	li	a2,32
  401110:	54010513          	addi	a0,sp,1344
  401114:	914ff0ef          	jal	400228 <memcpy>
  401118:	30040593          	addi	a1,s0,768
  40111c:	02000613          	li	a2,32
  401120:	56010513          	addi	a0,sp,1376
  401124:	904ff0ef          	jal	400228 <memcpy>
  401128:	32040593          	addi	a1,s0,800
  40112c:	02000613          	li	a2,32
  401130:	58010513          	addi	a0,sp,1408
  401134:	8f4ff0ef          	jal	400228 <memcpy>
  401138:	004017b7          	lui	a5,0x401
  40113c:	cd078593          	addi	a1,a5,-816 # 400cd0 <resetScreenVector+0x430>
  401140:	02000613          	li	a2,32
  401144:	5a010513          	addi	a0,sp,1440
  401148:	8e0ff0ef          	jal	400228 <memcpy>
  40114c:	34040593          	addi	a1,s0,832
  401150:	02000613          	li	a2,32
  401154:	5c010513          	addi	a0,sp,1472
  401158:	8d0ff0ef          	jal	400228 <memcpy>
  40115c:	36040593          	addi	a1,s0,864
  401160:	02000613          	li	a2,32
  401164:	5e010513          	addi	a0,sp,1504
  401168:	8c0ff0ef          	jal	400228 <memcpy>
  40116c:	38040593          	addi	a1,s0,896
  401170:	02000613          	li	a2,32
  401174:	60010513          	addi	a0,sp,1536
  401178:	8b0ff0ef          	jal	400228 <memcpy>
  40117c:	3a040593          	addi	a1,s0,928
  401180:	02000613          	li	a2,32
  401184:	62010513          	addi	a0,sp,1568
  401188:	8a0ff0ef          	jal	400228 <memcpy>
  40118c:	3c040593          	addi	a1,s0,960
  401190:	02000613          	li	a2,32
  401194:	64010513          	addi	a0,sp,1600
  401198:	890ff0ef          	jal	400228 <memcpy>
  40119c:	3e040593          	addi	a1,s0,992
  4011a0:	02000613          	li	a2,32
  4011a4:	66010513          	addi	a0,sp,1632
  4011a8:	880ff0ef          	jal	400228 <memcpy>
  4011ac:	40040593          	addi	a1,s0,1024
  4011b0:	02000613          	li	a2,32
  4011b4:	68010513          	addi	a0,sp,1664
  4011b8:	870ff0ef          	jal	400228 <memcpy>
  4011bc:	42040593          	addi	a1,s0,1056
  4011c0:	02000613          	li	a2,32
  4011c4:	6a010513          	addi	a0,sp,1696
  4011c8:	860ff0ef          	jal	400228 <memcpy>
  4011cc:	2c010f13          	addi	t5,sp,704
  4011d0:	34010e93          	addi	t4,sp,832
  4011d4:	2e010e13          	addi	t3,sp,736
  4011d8:	36010313          	addi	t1,sp,864
  4011dc:	38010893          	addi	a7,sp,896
  4011e0:	3c010813          	addi	a6,sp,960
  4011e4:	3a010693          	addi	a3,sp,928
  4011e8:	3e010713          	addi	a4,sp,992
  4011ec:	40010793          	addi	a5,sp,1024
  4011f0:	0b312623          	sw	s3,172(sp)
  4011f4:	0b312a23          	sw	s3,180(sp)
  4011f8:	03212023          	sw	s2,32(sp)
  4011fc:	03e12223          	sw	t5,36(sp)
  401200:	03212423          	sw	s2,40(sp)
  401204:	03d12623          	sw	t4,44(sp)
  401208:	02912a23          	sw	s1,52(sp)
  40120c:	03c12c23          	sw	t3,56(sp)
  401210:	02912e23          	sw	s1,60(sp)
  401214:	04612023          	sw	t1,64(sp)
  401218:	05112423          	sw	a7,72(sp)
  40121c:	05012623          	sw	a6,76(sp)
  401220:	04d12e23          	sw	a3,92(sp)
  401224:	06e12023          	sw	a4,96(sp)
  401228:	06f12823          	sw	a5,112(sp)
  40122c:	07b12a23          	sw	s11,116(sp)
  401230:	09a12223          	sw	s10,132(sp)
  401234:	09912423          	sw	s9,136(sp)
  401238:	09412c23          	sw	s4,152(sp)
  40123c:	09812e23          	sw	s8,156(sp)
  401240:	0b412023          	sw	s4,160(sp)
  401244:	0b712223          	sw	s7,164(sp)
  401248:	0b612823          	sw	s6,176(sp)
  40124c:	0b512c23          	sw	s5,184(sp)
  401250:	00000413          	li	s0,0
  401254:	4c000993          	li	s3,1216
  401258:	00040513          	mv	a0,s0
  40125c:	07000613          	li	a2,112
  401260:	02000593          	li	a1,32
  401264:	00140413          	addi	s0,s0,1
  401268:	830ff0ef          	jal	400298 <putch>
  40126c:	ff3416e3          	bne	s0,s3,401258 <main+0x454>
  401270:	8a000db7          	lui	s11,0x8a000
  401274:	000da783          	lw	a5,0(s11) # 8a000000 <_stack_end+0x89bfc000>
  401278:	00090593          	mv	a1,s2
  40127c:	00000513          	li	a0,0
  401280:	00f12c23          	sw	a5,24(sp)
  401284:	000da783          	lw	a5,0(s11)
  401288:	00100c13          	li	s8,1
  40128c:	0a800a13          	li	s4,168
  401290:	00f12e23          	sw	a5,28(sp)
  401294:	d95fe0ef          	jal	400028 <WriteSprite>
  401298:	00048593          	mv	a1,s1
  40129c:	00100513          	li	a0,1
  4012a0:	d89fe0ef          	jal	400028 <WriteSprite>
  4012a4:	2a010593          	addi	a1,sp,672
  4012a8:	00200513          	li	a0,2
  4012ac:	d7dfe0ef          	jal	400028 <WriteSprite>
  4012b0:	00a007b7          	lui	a5,0xa00
  4012b4:	88002737          	lui	a4,0x88002
  4012b8:	0dc78793          	addi	a5,a5,220 # a000dc <_stack_end+0x5fc0dc>
  4012bc:	00f72023          	sw	a5,0(a4) # 88002000 <_stack_end+0x87bfe000>
  4012c0:	00a807b7          	lui	a5,0xa80
  4012c4:	2dc78793          	addi	a5,a5,732 # a802dc <_stack_end+0x67c2dc>
  4012c8:	00f72223          	sw	a5,4(a4)
  4012cc:	00000c93          	li	s9,0
  4012d0:	0dc00413          	li	s0,220
  4012d4:	0a000493          	li	s1,160
  4012d8:	00000b93          	li	s7,0
  4012dc:	000c0d13          	mv	s10,s8
  4012e0:	00012423          	sw	zero,8(sp)
  4012e4:	00000b13          	li	s6,0
  4012e8:	00000a93          	li	s5,0
  4012ec:	00000993          	li	s3,0
  4012f0:	000c0913          	mv	s2,s8
  4012f4:	000da783          	lw	a5,0(s11)
  4012f8:	00f12e23          	sw	a5,28(sp)
  4012fc:	100007b7          	lui	a5,0x10000
  401300:	0007a783          	lw	a5,0(a5) # 10000000 <_stack_end+0xfbfc000>
  401304:	00f12623          	sw	a5,12(sp)
  401308:	4c0b1263          	bnez	s6,4017cc <main+0x9c8>
  40130c:	00b00793          	li	a5,11
  401310:	4b57ee63          	bltu	a5,s5,4017cc <main+0x9c8>
  401314:	00401737          	lui	a4,0x401
  401318:	002a9793          	slli	a5,s5,0x2
  40131c:	98070713          	addi	a4,a4,-1664 # 400980 <resetScreenVector+0xe0>
  401320:	00e787b3          	add	a5,a5,a4
  401324:	0007a783          	lw	a5,0(a5)
  401328:	00078067          	jr	a5
  40132c:	00402637          	lui	a2,0x402
  401330:	db060613          	addi	a2,a2,-592 # 401db0 <main+0xfac>
  401334:	07000593          	li	a1,112
  401338:	14f00513          	li	a0,335
  40133c:	b80ff0ef          	jal	4006bc <printfSCR>
  401340:	00402637          	lui	a2,0x402
  401344:	ddc60613          	addi	a2,a2,-548 # 401ddc <main+0xfd8>
  401348:	07000593          	li	a1,112
  40134c:	18f00513          	li	a0,399
  401350:	b6cff0ef          	jal	4006bc <printfSCR>
  401354:	00402637          	lui	a2,0x402
  401358:	e0860613          	addi	a2,a2,-504 # 401e08 <main+0x1004>
  40135c:	07000593          	li	a1,112
  401360:	1cf00513          	li	a0,463
  401364:	b58ff0ef          	jal	4006bc <printfSCR>
  401368:	00402637          	lui	a2,0x402
  40136c:	e3460613          	addi	a2,a2,-460 # 401e34 <main+0x1030>
  401370:	07000593          	li	a1,112
  401374:	20f00513          	li	a0,527
  401378:	b44ff0ef          	jal	4006bc <printfSCR>
  40137c:	00402637          	lui	a2,0x402
  401380:	e6060613          	addi	a2,a2,-416 # 401e60 <main+0x105c>
  401384:	07000593          	li	a1,112
  401388:	24f00513          	li	a0,591
  40138c:	b30ff0ef          	jal	4006bc <printfSCR>
  401390:	00402637          	lui	a2,0x402
  401394:	e8c60613          	addi	a2,a2,-372 # 401e8c <main+0x1088>
  401398:	07000593          	li	a1,112
  40139c:	28f00513          	li	a0,655
  4013a0:	b1cff0ef          	jal	4006bc <printfSCR>
  4013a4:	4280006f          	j	4017cc <main+0x9c8>
  4013a8:	00402637          	lui	a2,0x402
  4013ac:	eb860613          	addi	a2,a2,-328 # 401eb8 <main+0x10b4>
  4013b0:	07000593          	li	a1,112
  4013b4:	1d800513          	li	a0,472
  4013b8:	fe9ff06f          	j	4013a0 <main+0x59c>
  4013bc:	00402637          	lui	a2,0x402
  4013c0:	ecc60613          	addi	a2,a2,-308 # 401ecc <main+0x10c8>
  4013c4:	07000593          	li	a1,112
  4013c8:	1d400513          	li	a0,468
  4013cc:	fd5ff06f          	j	4013a0 <main+0x59c>
  4013d0:	00402637          	lui	a2,0x402
  4013d4:	ee860613          	addi	a2,a2,-280 # 401ee8 <main+0x10e4>
  4013d8:	07000593          	li	a1,112
  4013dc:	1d600513          	li	a0,470
  4013e0:	fc1ff06f          	j	4013a0 <main+0x59c>
  4013e4:	00402637          	lui	a2,0x402
  4013e8:	f0060613          	addi	a2,a2,-256 # 401f00 <main+0x10fc>
  4013ec:	fd9ff06f          	j	4013c4 <main+0x5c0>
  4013f0:	00402637          	lui	a2,0x402
  4013f4:	f1c60613          	addi	a2,a2,-228 # 401f1c <main+0x1118>
  4013f8:	fcdff06f          	j	4013c4 <main+0x5c0>
  4013fc:	00000b13          	li	s6,0
  401400:	000b0513          	mv	a0,s6
  401404:	05000613          	li	a2,80
  401408:	02000593          	li	a1,32
  40140c:	e8dfe0ef          	jal	400298 <putch>
  401410:	001b0b13          	addi	s6,s6,1
  401414:	04000793          	li	a5,64
  401418:	fefb14e3          	bne	s6,a5,401400 <main+0x5fc>
  40141c:	01000613          	li	a2,16
  401420:	05800593          	li	a1,88
  401424:	03f00513          	li	a0,63
  401428:	e71fe0ef          	jal	400298 <putch>
  40142c:	07000613          	li	a2,112
  401430:	04f00593          	li	a1,79
  401434:	03e00513          	li	a0,62
  401438:	e61fe0ef          	jal	400298 <putch>
  40143c:	07000613          	li	a2,112
  401440:	02d00593          	li	a1,45
  401444:	03d00513          	li	a0,61
  401448:	e51fe0ef          	jal	400298 <putch>
  40144c:	00402637          	lui	a2,0x402
  401450:	f3460613          	addi	a2,a2,-204 # 401f34 <main+0x1130>
  401454:	05000593          	li	a1,80
  401458:	00000513          	li	a0,0
  40145c:	a60ff0ef          	jal	4006bc <printfSCR>
  401460:	000b0513          	mv	a0,s6
  401464:	07000613          	li	a2,112
  401468:	08200593          	li	a1,130
  40146c:	e2dfe0ef          	jal	400298 <putch>
  401470:	001b0b13          	addi	s6,s6,1
  401474:	08000793          	li	a5,128
  401478:	fefb14e3          	bne	s6,a5,401460 <main+0x65c>
  40147c:	00402637          	lui	a2,0x402
  401480:	f5460613          	addi	a2,a2,-172 # 401f54 <main+0x1150>
  401484:	f2dff06f          	j	4013b0 <main+0x5ac>
  401488:	00000b13          	li	s6,0
  40148c:	000b0513          	mv	a0,s6
  401490:	05000613          	li	a2,80
  401494:	02000593          	li	a1,32
  401498:	e01fe0ef          	jal	400298 <putch>
  40149c:	001b0b13          	addi	s6,s6,1
  4014a0:	04000793          	li	a5,64
  4014a4:	fefb14e3          	bne	s6,a5,40148c <main+0x688>
  4014a8:	01000613          	li	a2,16
  4014ac:	05800593          	li	a1,88
  4014b0:	03f00513          	li	a0,63
  4014b4:	de5fe0ef          	jal	400298 <putch>
  4014b8:	07000613          	li	a2,112
  4014bc:	04f00593          	li	a1,79
  4014c0:	03e00513          	li	a0,62
  4014c4:	dd5fe0ef          	jal	400298 <putch>
  4014c8:	07000613          	li	a2,112
  4014cc:	02d00593          	li	a1,45
  4014d0:	03d00513          	li	a0,61
  4014d4:	dc5fe0ef          	jal	400298 <putch>
  4014d8:	00402637          	lui	a2,0x402
  4014dc:	f6460613          	addi	a2,a2,-156 # 401f64 <main+0x1160>
  4014e0:	05000593          	li	a1,80
  4014e4:	00000513          	li	a0,0
  4014e8:	9d4ff0ef          	jal	4006bc <printfSCR>
  4014ec:	000b0513          	mv	a0,s6
  4014f0:	07000613          	li	a2,112
  4014f4:	08200593          	li	a1,130
  4014f8:	da1fe0ef          	jal	400298 <putch>
  4014fc:	001b0b13          	addi	s6,s6,1
  401500:	08000793          	li	a5,128
  401504:	fefb14e3          	bne	s6,a5,4014ec <main+0x6e8>
  401508:	00402637          	lui	a2,0x402
  40150c:	f7860613          	addi	a2,a2,-136 # 401f78 <main+0x1174>
  401510:	07000593          	li	a1,112
  401514:	18000513          	li	a0,384
  401518:	9a4ff0ef          	jal	4006bc <printfSCR>
  40151c:	00402637          	lui	a2,0x402
  401520:	f9860613          	addi	a2,a2,-104 # 401f98 <main+0x1194>
  401524:	07000593          	li	a1,112
  401528:	1c000513          	li	a0,448
  40152c:	990ff0ef          	jal	4006bc <printfSCR>
  401530:	00402637          	lui	a2,0x402
  401534:	fac60613          	addi	a2,a2,-84 # 401fac <main+0x11a8>
  401538:	07000593          	li	a1,112
  40153c:	20000513          	li	a0,512
  401540:	97cff0ef          	jal	4006bc <printfSCR>
  401544:	00402637          	lui	a2,0x402
  401548:	fc060613          	addi	a2,a2,-64 # 401fc0 <main+0x11bc>
  40154c:	07000593          	li	a1,112
  401550:	24000513          	li	a0,576
  401554:	e4dff06f          	j	4013a0 <main+0x59c>
  401558:	00000b13          	li	s6,0
  40155c:	000b0513          	mv	a0,s6
  401560:	05000613          	li	a2,80
  401564:	02000593          	li	a1,32
  401568:	d31fe0ef          	jal	400298 <putch>
  40156c:	001b0b13          	addi	s6,s6,1
  401570:	04000793          	li	a5,64
  401574:	fefb14e3          	bne	s6,a5,40155c <main+0x758>
  401578:	01000613          	li	a2,16
  40157c:	05800593          	li	a1,88
  401580:	03f00513          	li	a0,63
  401584:	d15fe0ef          	jal	400298 <putch>
  401588:	07000613          	li	a2,112
  40158c:	04f00593          	li	a1,79
  401590:	03e00513          	li	a0,62
  401594:	d05fe0ef          	jal	400298 <putch>
  401598:	07000613          	li	a2,112
  40159c:	02d00593          	li	a1,45
  4015a0:	03d00513          	li	a0,61
  4015a4:	cf5fe0ef          	jal	400298 <putch>
  4015a8:	00402637          	lui	a2,0x402
  4015ac:	fe860613          	addi	a2,a2,-24 # 401fe8 <main+0x11e4>
  4015b0:	05000593          	li	a1,80
  4015b4:	00000513          	li	a0,0
  4015b8:	904ff0ef          	jal	4006bc <printfSCR>
  4015bc:	000b0513          	mv	a0,s6
  4015c0:	07000613          	li	a2,112
  4015c4:	08200593          	li	a1,130
  4015c8:	cd1fe0ef          	jal	400298 <putch>
  4015cc:	001b0b13          	addi	s6,s6,1
  4015d0:	08000793          	li	a5,128
  4015d4:	fefb14e3          	bne	s6,a5,4015bc <main+0x7b8>
  4015d8:	00402637          	lui	a2,0x402
  4015dc:	00060613          	mv	a2,a2
  4015e0:	07000593          	li	a1,112
  4015e4:	18000513          	li	a0,384
  4015e8:	8d4ff0ef          	jal	4006bc <printfSCR>
  4015ec:	00402637          	lui	a2,0x402
  4015f0:	02460613          	addi	a2,a2,36 # 402024 <main+0x1220>
  4015f4:	07000593          	li	a1,112
  4015f8:	1c000513          	li	a0,448
  4015fc:	8c0ff0ef          	jal	4006bc <printfSCR>
  401600:	00402637          	lui	a2,0x402
  401604:	04060613          	addi	a2,a2,64 # 402040 <main+0x123c>
  401608:	07000593          	li	a1,112
  40160c:	20000513          	li	a0,512
  401610:	8acff0ef          	jal	4006bc <printfSCR>
  401614:	00402637          	lui	a2,0x402
  401618:	06060613          	addi	a2,a2,96 # 402060 <main+0x125c>
  40161c:	07000593          	li	a1,112
  401620:	24000513          	li	a0,576
  401624:	898ff0ef          	jal	4006bc <printfSCR>
  401628:	0c010593          	addi	a1,sp,192
  40162c:	00300513          	li	a0,3
  401630:	9f9fe0ef          	jal	400028 <WriteSprite>
  401634:	0e010593          	addi	a1,sp,224
  401638:	00400513          	li	a0,4
  40163c:	9edfe0ef          	jal	400028 <WriteSprite>
  401640:	10010593          	addi	a1,sp,256
  401644:	00500513          	li	a0,5
  401648:	9e1fe0ef          	jal	400028 <WriteSprite>
  40164c:	12010593          	addi	a1,sp,288
  401650:	00600513          	li	a0,6
  401654:	9d5fe0ef          	jal	400028 <WriteSprite>
  401658:	14010593          	addi	a1,sp,320
  40165c:	00700513          	li	a0,7
  401660:	9c9fe0ef          	jal	400028 <WriteSprite>
  401664:	16010593          	addi	a1,sp,352
  401668:	00800513          	li	a0,8
  40166c:	9bdfe0ef          	jal	400028 <WriteSprite>
  401670:	18010593          	addi	a1,sp,384
  401674:	00900513          	li	a0,9
  401678:	9b1fe0ef          	jal	400028 <WriteSprite>
  40167c:	1a010593          	addi	a1,sp,416
  401680:	00a00513          	li	a0,10
  401684:	9a5fe0ef          	jal	400028 <WriteSprite>
  401688:	1c010593          	addi	a1,sp,448
  40168c:	00b00513          	li	a0,11
  401690:	999fe0ef          	jal	400028 <WriteSprite>
  401694:	1e010593          	addi	a1,sp,480
  401698:	00c00513          	li	a0,12
  40169c:	98dfe0ef          	jal	400028 <WriteSprite>
  4016a0:	20010593          	addi	a1,sp,512
  4016a4:	00d00513          	li	a0,13
  4016a8:	981fe0ef          	jal	400028 <WriteSprite>
  4016ac:	22010593          	addi	a1,sp,544
  4016b0:	00e00513          	li	a0,14
  4016b4:	975fe0ef          	jal	400028 <WriteSprite>
  4016b8:	24010593          	addi	a1,sp,576
  4016bc:	00f00513          	li	a0,15
  4016c0:	969fe0ef          	jal	400028 <WriteSprite>
  4016c4:	26010593          	addi	a1,sp,608
  4016c8:	01000513          	li	a0,16
  4016cc:	95dfe0ef          	jal	400028 <WriteSprite>
  4016d0:	28010593          	addi	a1,sp,640
  4016d4:	01100513          	li	a0,17
  4016d8:	951fe0ef          	jal	400028 <WriteSprite>
  4016dc:	07000613          	li	a2,112
  4016e0:	08300593          	li	a1,131
  4016e4:	26800513          	li	a0,616
  4016e8:	bb1fe0ef          	jal	400298 <putch>
  4016ec:	07000613          	li	a2,112
  4016f0:	08400593          	li	a1,132
  4016f4:	26900513          	li	a0,617
  4016f8:	ba1fe0ef          	jal	400298 <putch>
  4016fc:	07000613          	li	a2,112
  401700:	08500593          	li	a1,133
  401704:	26a00513          	li	a0,618
  401708:	b91fe0ef          	jal	400298 <putch>
  40170c:	07000613          	li	a2,112
  401710:	08600593          	li	a1,134
  401714:	26b00513          	li	a0,619
  401718:	b81fe0ef          	jal	400298 <putch>
  40171c:	07000613          	li	a2,112
  401720:	08700593          	li	a1,135
  401724:	26c00513          	li	a0,620
  401728:	b71fe0ef          	jal	400298 <putch>
  40172c:	07000613          	li	a2,112
  401730:	08800593          	li	a1,136
  401734:	2a800513          	li	a0,680
  401738:	b61fe0ef          	jal	400298 <putch>
  40173c:	07000613          	li	a2,112
  401740:	08900593          	li	a1,137
  401744:	2a900513          	li	a0,681
  401748:	b51fe0ef          	jal	400298 <putch>
  40174c:	07000613          	li	a2,112
  401750:	08a00593          	li	a1,138
  401754:	2aa00513          	li	a0,682
  401758:	b41fe0ef          	jal	400298 <putch>
  40175c:	07000613          	li	a2,112
  401760:	08b00593          	li	a1,139
  401764:	2ab00513          	li	a0,683
  401768:	b31fe0ef          	jal	400298 <putch>
  40176c:	07000613          	li	a2,112
  401770:	08c00593          	li	a1,140
  401774:	2ac00513          	li	a0,684
  401778:	b21fe0ef          	jal	400298 <putch>
  40177c:	07000613          	li	a2,112
  401780:	08d00593          	li	a1,141
  401784:	2e800513          	li	a0,744
  401788:	b11fe0ef          	jal	400298 <putch>
  40178c:	07000613          	li	a2,112
  401790:	08e00593          	li	a1,142
  401794:	2e900513          	li	a0,745
  401798:	b01fe0ef          	jal	400298 <putch>
  40179c:	07000613          	li	a2,112
  4017a0:	08f00593          	li	a1,143
  4017a4:	2ea00513          	li	a0,746
  4017a8:	af1fe0ef          	jal	400298 <putch>
  4017ac:	07000613          	li	a2,112
  4017b0:	09000593          	li	a1,144
  4017b4:	2eb00513          	li	a0,747
  4017b8:	ae1fe0ef          	jal	400298 <putch>
  4017bc:	07000613          	li	a2,112
  4017c0:	09100593          	li	a1,145
  4017c4:	2ec00513          	li	a0,748
  4017c8:	ad1fe0ef          	jal	400298 <putch>
  4017cc:	004027b7          	lui	a5,0x402
  4017d0:	13878613          	addi	a2,a5,312 # 402138 <main+0x1334>
  4017d4:	07000593          	li	a1,112
  4017d8:	4ba00513          	li	a0,1210
  4017dc:	0019fb13          	andi	s6,s3,1
  4017e0:	eddfe0ef          	jal	4006bc <printfSCR>
  4017e4:	380b1863          	bnez	s6,401b74 <main+0xd70>
  4017e8:	00c12783          	lw	a5,12(sp)
  4017ec:	0187d513          	srli	a0,a5,0x18
  4017f0:	869fe0ef          	jal	400058 <USBParser>
  4017f4:	06400793          	li	a5,100
  4017f8:	36f50a63          	beq	a0,a5,401b6c <main+0xd68>
  4017fc:	2ea7ea63          	bltu	a5,a0,401af0 <main+0xcec>
  401800:	05200793          	li	a5,82
  401804:	34f50263          	beq	a0,a5,401b48 <main+0xd44>
  401808:	06100793          	li	a5,97
  40180c:	42f50463          	beq	a0,a5,401c34 <main+0xe30>
  401810:	04c00793          	li	a5,76
  401814:	34f50463          	beq	a0,a5,401b5c <main+0xd58>
  401818:	00100b13          	li	s6,1
  40181c:	00400913          	li	s2,4
  401820:	3540006f          	j	401b74 <main+0xd70>
  401824:	00000413          	li	s0,0
  401828:	04000493          	li	s1,64
  40182c:	00040513          	mv	a0,s0
  401830:	05000613          	li	a2,80
  401834:	02000593          	li	a1,32
  401838:	00140413          	addi	s0,s0,1
  40183c:	a5dfe0ef          	jal	400298 <putch>
  401840:	fe9416e3          	bne	s0,s1,40182c <main+0xa28>
  401844:	01000613          	li	a2,16
  401848:	05800593          	li	a1,88
  40184c:	03f00513          	li	a0,63
  401850:	a49fe0ef          	jal	400298 <putch>
  401854:	07000613          	li	a2,112
  401858:	04f00593          	li	a1,79
  40185c:	03e00513          	li	a0,62
  401860:	a39fe0ef          	jal	400298 <putch>
  401864:	07000613          	li	a2,112
  401868:	02d00593          	li	a1,45
  40186c:	03d00513          	li	a0,61
  401870:	a29fe0ef          	jal	400298 <putch>
  401874:	00402637          	lui	a2,0x402
  401878:	08860613          	addi	a2,a2,136 # 402088 <main+0x1284>
  40187c:	05000593          	li	a1,80
  401880:	00000513          	li	a0,0
  401884:	e39fe0ef          	jal	4006bc <printfSCR>
  401888:	08000493          	li	s1,128
  40188c:	00040513          	mv	a0,s0
  401890:	07000613          	li	a2,112
  401894:	08200593          	li	a1,130
  401898:	00140413          	addi	s0,s0,1
  40189c:	9fdfe0ef          	jal	400298 <putch>
  4018a0:	fe9416e3          	bne	s0,s1,40188c <main+0xa88>
  4018a4:	00402637          	lui	a2,0x402
  4018a8:	0a460613          	addi	a2,a2,164 # 4020a4 <main+0x12a0>
  4018ac:	07000593          	li	a1,112
  4018b0:	18000513          	li	a0,384
  4018b4:	e09fe0ef          	jal	4006bc <printfSCR>
  4018b8:	00402637          	lui	a2,0x402
  4018bc:	0c060613          	addi	a2,a2,192 # 4020c0 <main+0x12bc>
  4018c0:	07000593          	li	a1,112
  4018c4:	1c000513          	li	a0,448
  4018c8:	df5fe0ef          	jal	4006bc <printfSCR>
  4018cc:	00402637          	lui	a2,0x402
  4018d0:	0e860613          	addi	a2,a2,232 # 4020e8 <main+0x12e4>
  4018d4:	07000593          	li	a1,112
  4018d8:	20000513          	li	a0,512
  4018dc:	de1fe0ef          	jal	4006bc <printfSCR>
  4018e0:	00402637          	lui	a2,0x402
  4018e4:	11c60613          	addi	a2,a2,284 # 40211c <main+0x1318>
  4018e8:	07000593          	li	a1,112
  4018ec:	24000513          	li	a0,576
  4018f0:	dcdfe0ef          	jal	4006bc <printfSCR>
  4018f4:	54010593          	addi	a1,sp,1344
  4018f8:	00300513          	li	a0,3
  4018fc:	f2cfe0ef          	jal	400028 <WriteSprite>
  401900:	56010593          	addi	a1,sp,1376
  401904:	00400513          	li	a0,4
  401908:	f20fe0ef          	jal	400028 <WriteSprite>
  40190c:	58010593          	addi	a1,sp,1408
  401910:	00500513          	li	a0,5
  401914:	f14fe0ef          	jal	400028 <WriteSprite>
  401918:	5a010593          	addi	a1,sp,1440
  40191c:	00600513          	li	a0,6
  401920:	f08fe0ef          	jal	400028 <WriteSprite>
  401924:	5c010593          	addi	a1,sp,1472
  401928:	00700513          	li	a0,7
  40192c:	efcfe0ef          	jal	400028 <WriteSprite>
  401930:	5e010593          	addi	a1,sp,1504
  401934:	00800513          	li	a0,8
  401938:	ef0fe0ef          	jal	400028 <WriteSprite>
  40193c:	60010593          	addi	a1,sp,1536
  401940:	00900513          	li	a0,9
  401944:	ee4fe0ef          	jal	400028 <WriteSprite>
  401948:	62010593          	addi	a1,sp,1568
  40194c:	00a00513          	li	a0,10
  401950:	ed8fe0ef          	jal	400028 <WriteSprite>
  401954:	64010593          	addi	a1,sp,1600
  401958:	00b00513          	li	a0,11
  40195c:	eccfe0ef          	jal	400028 <WriteSprite>
  401960:	66010593          	addi	a1,sp,1632
  401964:	00c00513          	li	a0,12
  401968:	ec0fe0ef          	jal	400028 <WriteSprite>
  40196c:	68010593          	addi	a1,sp,1664
  401970:	00d00513          	li	a0,13
  401974:	eb4fe0ef          	jal	400028 <WriteSprite>
  401978:	6a010593          	addi	a1,sp,1696
  40197c:	00e00513          	li	a0,14
  401980:	ea8fe0ef          	jal	400028 <WriteSprite>
  401984:	07000613          	li	a2,112
  401988:	08300593          	li	a1,131
  40198c:	27200513          	li	a0,626
  401990:	909fe0ef          	jal	400298 <putch>
  401994:	07000613          	li	a2,112
  401998:	08400593          	li	a1,132
  40199c:	27300513          	li	a0,627
  4019a0:	8f9fe0ef          	jal	400298 <putch>
  4019a4:	07000613          	li	a2,112
  4019a8:	08500593          	li	a1,133
  4019ac:	27400513          	li	a0,628
  4019b0:	8e9fe0ef          	jal	400298 <putch>
  4019b4:	07000613          	li	a2,112
  4019b8:	08600593          	li	a1,134
  4019bc:	27500513          	li	a0,629
  4019c0:	8d9fe0ef          	jal	400298 <putch>
  4019c4:	07000613          	li	a2,112
  4019c8:	08700593          	li	a1,135
  4019cc:	27600513          	li	a0,630
  4019d0:	8c9fe0ef          	jal	400298 <putch>
  4019d4:	07000613          	li	a2,112
  4019d8:	08800593          	li	a1,136
  4019dc:	27700513          	li	a0,631
  4019e0:	8b9fe0ef          	jal	400298 <putch>
  4019e4:	07000613          	li	a2,112
  4019e8:	08900593          	li	a1,137
  4019ec:	2b200513          	li	a0,690
  4019f0:	8a9fe0ef          	jal	400298 <putch>
  4019f4:	07000613          	li	a2,112
  4019f8:	08a00593          	li	a1,138
  4019fc:	2b300513          	li	a0,691
  401a00:	899fe0ef          	jal	400298 <putch>
  401a04:	07000613          	li	a2,112
  401a08:	08b00593          	li	a1,139
  401a0c:	2b400513          	li	a0,692
  401a10:	889fe0ef          	jal	400298 <putch>
  401a14:	07000613          	li	a2,112
  401a18:	08c00593          	li	a1,140
  401a1c:	2b500513          	li	a0,693
  401a20:	879fe0ef          	jal	400298 <putch>
  401a24:	07000613          	li	a2,112
  401a28:	08d00593          	li	a1,141
  401a2c:	2b600513          	li	a0,694
  401a30:	869fe0ef          	jal	400298 <putch>
  401a34:	07000613          	li	a2,112
  401a38:	08e00593          	li	a1,142
  401a3c:	2b700513          	li	a0,695
  401a40:	859fe0ef          	jal	400298 <putch>
  401a44:	0d000a13          	li	s4,208
  401a48:	00100c93          	li	s9,1
  401a4c:	09400413          	li	s0,148
  401a50:	0c800493          	li	s1,200
  401a54:	d79ff06f          	j	4017cc <main+0x9c8>
  401a58:	00000b13          	li	s6,0
  401a5c:	000b0513          	mv	a0,s6
  401a60:	04000613          	li	a2,64
  401a64:	02000593          	li	a1,32
  401a68:	831fe0ef          	jal	400298 <putch>
  401a6c:	001b0b13          	addi	s6,s6,1
  401a70:	4c000793          	li	a5,1216
  401a74:	fefb14e3          	bne	s6,a5,401a5c <main+0xc58>
  401a78:	00402637          	lui	a2,0x402
  401a7c:	13860613          	addi	a2,a2,312 # 402138 <main+0x1334>
  401a80:	07000593          	li	a1,112
  401a84:	0dc00513          	li	a0,220
  401a88:	c35fe0ef          	jal	4006bc <printfSCR>
  401a8c:	00402637          	lui	a2,0x402
  401a90:	14060613          	addi	a2,a2,320 # 402140 <main+0x133c>
  401a94:	04f00593          	li	a1,79
  401a98:	1c500513          	li	a0,453
  401a9c:	c21fe0ef          	jal	4006bc <printfSCR>
  401aa0:	00402637          	lui	a2,0x402
  401aa4:	16460613          	addi	a2,a2,356 # 402164 <main+0x1360>
  401aa8:	04f00593          	li	a1,79
  401aac:	24500513          	li	a0,581
  401ab0:	c0dfe0ef          	jal	4006bc <printfSCR>
  401ab4:	00402637          	lui	a2,0x402
  401ab8:	1a060613          	addi	a2,a2,416 # 4021a0 <main+0x139c>
  401abc:	04f00593          	li	a1,79
  401ac0:	28500513          	li	a0,645
  401ac4:	bf9fe0ef          	jal	4006bc <printfSCR>
  401ac8:	00402637          	lui	a2,0x402
  401acc:	1d860613          	addi	a2,a2,472 # 4021d8 <main+0x13d4>
  401ad0:	04f00593          	li	a1,79
  401ad4:	30500513          	li	a0,773
  401ad8:	be5fe0ef          	jal	4006bc <printfSCR>
  401adc:	00402637          	lui	a2,0x402
  401ae0:	1f460613          	addi	a2,a2,500 # 4021f4 <main+0x13f0>
  401ae4:	04f00593          	li	a1,79
  401ae8:	41200513          	li	a0,1042
  401aec:	8b5ff06f          	j	4013a0 <main+0x59c>
  401af0:	07300793          	li	a5,115
  401af4:	14f50663          	beq	a0,a5,401c40 <main+0xe3c>
  401af8:	07700793          	li	a5,119
  401afc:	14f50863          	beq	a0,a5,401c4c <main+0xe48>
  401b00:	07100793          	li	a5,113
  401b04:	d0f51ae3          	bne	a0,a5,401818 <main+0xa14>
  401b08:	6fc12083          	lw	ra,1788(sp)
  401b0c:	6f812403          	lw	s0,1784(sp)
  401b10:	6f412483          	lw	s1,1780(sp)
  401b14:	6f012903          	lw	s2,1776(sp)
  401b18:	6ec12983          	lw	s3,1772(sp)
  401b1c:	6e812a03          	lw	s4,1768(sp)
  401b20:	6e412a83          	lw	s5,1764(sp)
  401b24:	6e012b03          	lw	s6,1760(sp)
  401b28:	6dc12b83          	lw	s7,1756(sp)
  401b2c:	6d812c03          	lw	s8,1752(sp)
  401b30:	6d412c83          	lw	s9,1748(sp)
  401b34:	6d012d03          	lw	s10,1744(sp)
  401b38:	6cc12d83          	lw	s11,1740(sp)
  401b3c:	00000513          	li	a0,0
  401b40:	70010113          	addi	sp,sp,1792
  401b44:	00008067          	ret
  401b48:	e44fe0ef          	jal	40018c <ClearScreenRightToLeft>
  401b4c:	001a8a93          	addi	s5,s5,1
  401b50:	0ffafa93          	zext.b	s5,s5
  401b54:	00000c93          	li	s9,0
  401b58:	cc5ff06f          	j	40181c <main+0xa18>
  401b5c:	e30fe0ef          	jal	40018c <ClearScreenRightToLeft>
  401b60:	fe0a8ae3          	beqz	s5,401b54 <main+0xd50>
  401b64:	fffa8a93          	addi	s5,s5,-1
  401b68:	fe9ff06f          	j	401b50 <main+0xd4c>
  401b6c:	00100b13          	li	s6,1
  401b70:	00300913          	li	s2,3
  401b74:	01c12783          	lw	a5,28(sp)
  401b78:	01812703          	lw	a4,24(sp)
  401b7c:	40e787b3          	sub	a5,a5,a4
  401b80:	00018737          	lui	a4,0x18
  401b84:	4017d793          	srai	a5,a5,0x1
  401b88:	6a070713          	addi	a4,a4,1696 # 186a0 <_stack_size+0x17ea0>
  401b8c:	f6f75463          	bge	a4,a5,4012f4 <main+0x4f0>
  401b90:	000da783          	lw	a5,0(s11)
  401b94:	00f12c23          	sw	a5,24(sp)
  401b98:	0a091e63          	bnez	s2,401c54 <main+0xe50>
  401b9c:	001b8993          	addi	s3,s7,1
  401ba0:	0ff9f993          	zext.b	s3,s3
  401ba4:	ffc40413          	addi	s0,s0,-4
  401ba8:	0049bb93          	sltiu	s7,s3,4
  401bac:	01041413          	slli	s0,s0,0x10
  401bb0:	41700bb3          	neg	s7,s7
  401bb4:	41045413          	srai	s0,s0,0x10
  401bb8:	0179fbb3          	and	s7,s3,s7
  401bbc:	00045463          	bgez	s0,401bc4 <main+0xdc0>
  401bc0:	12c00413          	li	s0,300
  401bc4:	002b9793          	slli	a5,s7,0x2
  401bc8:	6b078713          	addi	a4,a5,1712
  401bcc:	00f12623          	sw	a5,12(sp)
  401bd0:	01010793          	addi	a5,sp,16
  401bd4:	00f70733          	add	a4,a4,a5
  401bd8:	9d872583          	lw	a1,-1576(a4)
  401bdc:	00000513          	li	a0,0
  401be0:	c48fe0ef          	jal	400028 <WriteSprite>
  401be4:	00c12783          	lw	a5,12(sp)
  401be8:	01010713          	addi	a4,sp,16
  401bec:	6b078793          	addi	a5,a5,1712
  401bf0:	00e787b3          	add	a5,a5,a4
  401bf4:	9ec7a583          	lw	a1,-1556(a5)
  401bf8:	00100513          	li	a0,1
  401bfc:	c2cfe0ef          	jal	400028 <WriteSprite>
  401c00:	000c8693          	mv	a3,s9
  401c04:	00040613          	mv	a2,s0
  401c08:	00048593          	mv	a1,s1
  401c0c:	00000713          	li	a4,0
  401c10:	00000513          	li	a0,0
  401c14:	d38fe0ef          	jal	40014c <SetAttributes>
  401c18:	00100713          	li	a4,1
  401c1c:	000c8693          	mv	a3,s9
  401c20:	00040613          	mv	a2,s0
  401c24:	000a0593          	mv	a1,s4
  401c28:	00070513          	mv	a0,a4
  401c2c:	d20fe0ef          	jal	40014c <SetAttributes>
  401c30:	ec4ff06f          	j	4012f4 <main+0x4f0>
  401c34:	00100b13          	li	s6,1
  401c38:	00200913          	li	s2,2
  401c3c:	f39ff06f          	j	401b74 <main+0xd70>
  401c40:	00100913          	li	s2,1
  401c44:	00100b13          	li	s6,1
  401c48:	f2dff06f          	j	401b74 <main+0xd70>
  401c4c:	00000913          	li	s2,0
  401c50:	ff5ff06f          	j	401c44 <main+0xe40>
  401c54:	00100793          	li	a5,1
  401c58:	06f91a63          	bne	s2,a5,401ccc <main+0xec8>
  401c5c:	00812783          	lw	a5,8(sp)
  401c60:	00440413          	addi	s0,s0,4
  401c64:	01041413          	slli	s0,s0,0x10
  401c68:	00178993          	addi	s3,a5,1
  401c6c:	0ff9f993          	zext.b	s3,s3
  401c70:	0049b793          	sltiu	a5,s3,4
  401c74:	40f007b3          	neg	a5,a5
  401c78:	00f9f7b3          	and	a5,s3,a5
  401c7c:	00f12423          	sw	a5,8(sp)
  401c80:	41045413          	srai	s0,s0,0x10
  401c84:	12c00793          	li	a5,300
  401c88:	0087d463          	bge	a5,s0,401c90 <main+0xe8c>
  401c8c:	00000413          	li	s0,0
  401c90:	00812783          	lw	a5,8(sp)
  401c94:	00000513          	li	a0,0
  401c98:	00279793          	slli	a5,a5,0x2
  401c9c:	6b078713          	addi	a4,a5,1712
  401ca0:	00f12623          	sw	a5,12(sp)
  401ca4:	01010793          	addi	a5,sp,16
  401ca8:	00f70733          	add	a4,a4,a5
  401cac:	96072583          	lw	a1,-1696(a4)
  401cb0:	b78fe0ef          	jal	400028 <WriteSprite>
  401cb4:	00c12783          	lw	a5,12(sp)
  401cb8:	01010713          	addi	a4,sp,16
  401cbc:	6b078793          	addi	a5,a5,1712
  401cc0:	00e787b3          	add	a5,a5,a4
  401cc4:	9747a583          	lw	a1,-1676(a5)
  401cc8:	f31ff06f          	j	401bf8 <main+0xdf4>
  401ccc:	00200793          	li	a5,2
  401cd0:	06f91663          	bne	s2,a5,401d3c <main+0xf38>
  401cd4:	ffc48493          	addi	s1,s1,-4
  401cd8:	01049493          	slli	s1,s1,0x10
  401cdc:	4104d493          	srai	s1,s1,0x10
  401ce0:	001d0993          	addi	s3,s10,1 # 15751da1 <_stack_end+0x1534dda1>
  401ce4:	001d4d13          	xori	s10,s10,1
  401ce8:	0404c463          	bltz	s1,401d30 <main+0xf2c>
  401cec:	ffca0a13          	addi	s4,s4,-4
  401cf0:	010a1a13          	slli	s4,s4,0x10
  401cf4:	410a5a13          	srai	s4,s4,0x10
  401cf8:	002d1793          	slli	a5,s10,0x2
  401cfc:	6b078713          	addi	a4,a5,1712
  401d00:	00f12623          	sw	a5,12(sp)
  401d04:	01010793          	addi	a5,sp,16
  401d08:	00f70733          	add	a4,a4,a5
  401d0c:	98872583          	lw	a1,-1656(a4)
  401d10:	00000513          	li	a0,0
  401d14:	b14fe0ef          	jal	400028 <WriteSprite>
  401d18:	00c12783          	lw	a5,12(sp)
  401d1c:	01010713          	addi	a4,sp,16
  401d20:	6b078793          	addi	a5,a5,1712
  401d24:	00e787b3          	add	a5,a5,a4
  401d28:	99c7a583          	lw	a1,-1636(a5)
  401d2c:	ecdff06f          	j	401bf8 <main+0xdf4>
  401d30:	1fc00a13          	li	s4,508
  401d34:	1f400493          	li	s1,500
  401d38:	fc1ff06f          	j	401cf8 <main+0xef4>
  401d3c:	00300793          	li	a5,3
  401d40:	ecf910e3          	bne	s2,a5,401c00 <main+0xdfc>
  401d44:	00448493          	addi	s1,s1,4
  401d48:	01049493          	slli	s1,s1,0x10
  401d4c:	4104d493          	srai	s1,s1,0x10
  401d50:	1fc00793          	li	a5,508
  401d54:	001c0993          	addi	s3,s8,1
  401d58:	001c4c13          	xori	s8,s8,1
  401d5c:	0497c463          	blt	a5,s1,401da4 <main+0xfa0>
  401d60:	004a0a13          	addi	s4,s4,4
  401d64:	010a1a13          	slli	s4,s4,0x10
  401d68:	410a5a13          	srai	s4,s4,0x10
  401d6c:	002c1793          	slli	a5,s8,0x2
  401d70:	6b078713          	addi	a4,a5,1712
  401d74:	00f12623          	sw	a5,12(sp)
  401d78:	01010793          	addi	a5,sp,16
  401d7c:	00f70733          	add	a4,a4,a5
  401d80:	9b072583          	lw	a1,-1616(a4)
  401d84:	00000513          	li	a0,0
  401d88:	aa0fe0ef          	jal	400028 <WriteSprite>
  401d8c:	00c12783          	lw	a5,12(sp)
  401d90:	01010713          	addi	a4,sp,16
  401d94:	6b078793          	addi	a5,a5,1712
  401d98:	00e787b3          	add	a5,a5,a4
  401d9c:	9c47a583          	lw	a1,-1596(a5)
  401da0:	e59ff06f          	j	401bf8 <main+0xdf4>
  401da4:	00800a13          	li	s4,8
  401da8:	00000493          	li	s1,0
  401dac:	fc1ff06f          	j	401d6c <main+0xf68>
