
builds/build0/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	a0010113          	addi	sp,sp,-1536 # 401a00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	724000ef          	jal	400734 <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <writeRam>:
  40001c:	00251513          	slli	a0,a0,0x2
  400020:	400007b7          	lui	a5,0x40000
  400024:	00f50533          	add	a0,a0,a5
  400028:	ff010113          	addi	sp,sp,-16
  40002c:	00b52023          	sw	a1,0(a0)
  400030:	00b52023          	sw	a1,0(a0)
  400034:	00012623          	sw	zero,12(sp)
  400038:	1f300713          	li	a4,499
  40003c:	00c12783          	lw	a5,12(sp)
  400040:	00f75663          	bge	a4,a5,40004c <writeRam+0x30>
  400044:	01010113          	addi	sp,sp,16
  400048:	00008067          	ret
  40004c:	00c12783          	lw	a5,12(sp)
  400050:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  400054:	00f12623          	sw	a5,12(sp)
  400058:	fe5ff06f          	j	40003c <writeRam+0x20>

0040005c <readRam>:
  40005c:	400007b7          	lui	a5,0x40000
  400060:	00251513          	slli	a0,a0,0x2
  400064:	00f50533          	add	a0,a0,a5
  400068:	ff010113          	addi	sp,sp,-16
  40006c:	00052783          	lw	a5,0(a0)
  400070:	1f300713          	li	a4,499
  400074:	00052503          	lw	a0,0(a0)
  400078:	00012623          	sw	zero,12(sp)
  40007c:	00c12783          	lw	a5,12(sp)
  400080:	00f75663          	bge	a4,a5,40008c <readRam+0x30>
  400084:	01010113          	addi	sp,sp,16
  400088:	00008067          	ret
  40008c:	00c12783          	lw	a5,12(sp)
  400090:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  400094:	00f12623          	sw	a5,12(sp)
  400098:	fe5ff06f          	j	40007c <readRam+0x20>

0040009c <memcpy>:
  40009c:	00000793          	li	a5,0
  4000a0:	00c7c463          	blt	a5,a2,4000a8 <memcpy+0xc>
  4000a4:	00008067          	ret
  4000a8:	00f58733          	add	a4,a1,a5
  4000ac:	00074683          	lbu	a3,0(a4)
  4000b0:	00f50733          	add	a4,a0,a5
  4000b4:	00178793          	addi	a5,a5,1
  4000b8:	00d70023          	sb	a3,0(a4)
  4000bc:	fe5ff06f          	j	4000a0 <memcpy+0x4>

004000c0 <memset>:
  4000c0:	00c50633          	add	a2,a0,a2
  4000c4:	00050793          	mv	a5,a0
  4000c8:	00c79463          	bne	a5,a2,4000d0 <memset+0x10>
  4000cc:	00008067          	ret
  4000d0:	00178793          	addi	a5,a5,1
  4000d4:	feb78fa3          	sb	a1,-1(a5)
  4000d8:	ff1ff06f          	j	4000c8 <memset+0x8>

004000dc <getButtonDown>:
  4000dc:	890007b7          	lui	a5,0x89000
  4000e0:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  4000e4:	00008067          	ret

004000e8 <getButtonUp>:
  4000e8:	890007b7          	lui	a5,0x89000
  4000ec:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  4000f0:	00008067          	ret

004000f4 <getButtonLeft>:
  4000f4:	890007b7          	lui	a5,0x89000
  4000f8:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4000fc:	00008067          	ret

00400100 <getButtonRight>:
  400100:	890007b7          	lui	a5,0x89000
  400104:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  400108:	00008067          	ret

0040010c <putch>:
  40010c:	4c000793          	li	a5,1216
  400110:	02a7e263          	bltu	a5,a0,400134 <putch+0x28>
  400114:	00861613          	slli	a2,a2,0x8
  400118:	880007b7          	lui	a5,0x88000
  40011c:	00151513          	slli	a0,a0,0x1
  400120:	00f50533          	add	a0,a0,a5
  400124:	00b665b3          	or	a1,a2,a1
  400128:	00b51023          	sh	a1,0(a0)
  40012c:	00100513          	li	a0,1
  400130:	00008067          	ret
  400134:	00000513          	li	a0,0
  400138:	00008067          	ret

0040013c <printString>:
  40013c:	fe010113          	addi	sp,sp,-32
  400140:	01312623          	sw	s3,12(sp)
  400144:	01412423          	sw	s4,8(sp)
  400148:	00112e23          	sw	ra,28(sp)
  40014c:	00812c23          	sw	s0,24(sp)
  400150:	00912a23          	sw	s1,20(sp)
  400154:	01212823          	sw	s2,16(sp)
  400158:	01512223          	sw	s5,4(sp)
  40015c:	01612023          	sw	s6,0(sp)
  400160:	00050a13          	mv	s4,a0
  400164:	00058993          	mv	s3,a1
  400168:	06060c63          	beqz	a2,4001e0 <printString+0xa4>
  40016c:	00060413          	mv	s0,a2
  400170:	00000913          	li	s2,0
  400174:	00000493          	li	s1,0
  400178:	00100a93          	li	s5,1
  40017c:	00f00b13          	li	s6,15
  400180:	0280006f          	j	4001a8 <printString+0x6c>
  400184:	00040613          	mv	a2,s0
  400188:	009a0533          	add	a0,s4,s1
  40018c:	f81ff0ef          	jal	40010c <putch>
  400190:	06050263          	beqz	a0,4001f4 <printString+0xb8>
  400194:	00148493          	addi	s1,s1,1
  400198:	01591863          	bne	s2,s5,4001a8 <printString+0x6c>
  40019c:	00140413          	addi	s0,s0,1
  4001a0:	0ff47413          	zext.b	s0,s0
  4001a4:	048b6463          	bltu	s6,s0,4001ec <printString+0xb0>
  4001a8:	009987b3          	add	a5,s3,s1
  4001ac:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  4001b0:	00048513          	mv	a0,s1
  4001b4:	fc0598e3          	bnez	a1,400184 <printString+0x48>
  4001b8:	01c12083          	lw	ra,28(sp)
  4001bc:	01812403          	lw	s0,24(sp)
  4001c0:	01412483          	lw	s1,20(sp)
  4001c4:	01012903          	lw	s2,16(sp)
  4001c8:	00c12983          	lw	s3,12(sp)
  4001cc:	00812a03          	lw	s4,8(sp)
  4001d0:	00412a83          	lw	s5,4(sp)
  4001d4:	00012b03          	lw	s6,0(sp)
  4001d8:	02010113          	addi	sp,sp,32
  4001dc:	00008067          	ret
  4001e0:	00100913          	li	s2,1
  4001e4:	00090413          	mv	s0,s2
  4001e8:	f8dff06f          	j	400174 <printString+0x38>
  4001ec:	00090413          	mv	s0,s2
  4001f0:	fb9ff06f          	j	4001a8 <printString+0x6c>
  4001f4:	00000513          	li	a0,0
  4001f8:	fc1ff06f          	j	4001b8 <printString+0x7c>

004001fc <printHex>:
  4001fc:	fd010113          	addi	sp,sp,-48
  400200:	02812423          	sw	s0,40(sp)
  400204:	00058413          	mv	s0,a1
  400208:	004005b7          	lui	a1,0x400
  40020c:	02912223          	sw	s1,36(sp)
  400210:	03212023          	sw	s2,32(sp)
  400214:	7e458593          	addi	a1,a1,2020 # 4007e4 <_etext+0xb0>
  400218:	00050493          	mv	s1,a0
  40021c:	00060913          	mv	s2,a2
  400220:	00c10513          	addi	a0,sp,12
  400224:	01100613          	li	a2,17
  400228:	02112623          	sw	ra,44(sp)
  40022c:	e71ff0ef          	jal	40009c <memcpy>
  400230:	202027b7          	lui	a5,0x20202
  400234:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  400238:	00f12023          	sw	a5,0(sp)
  40023c:	00f12223          	sw	a5,4(sp)
  400240:	00010423          	sb	zero,8(sp)
  400244:	00700793          	li	a5,7
  400248:	00010593          	mv	a1,sp
  40024c:	fff00693          	li	a3,-1
  400250:	00f47713          	andi	a4,s0,15
  400254:	02070713          	addi	a4,a4,32
  400258:	00270733          	add	a4,a4,sp
  40025c:	fec74703          	lbu	a4,-20(a4)
  400260:	00f58633          	add	a2,a1,a5
  400264:	fff78793          	addi	a5,a5,-1
  400268:	00e60023          	sb	a4,0(a2)
  40026c:	40445413          	srai	s0,s0,0x4
  400270:	fed790e3          	bne	a5,a3,400250 <printHex+0x54>
  400274:	00090613          	mv	a2,s2
  400278:	00048513          	mv	a0,s1
  40027c:	ec1ff0ef          	jal	40013c <printString>
  400280:	02c12083          	lw	ra,44(sp)
  400284:	02812403          	lw	s0,40(sp)
  400288:	02412483          	lw	s1,36(sp)
  40028c:	02012903          	lw	s2,32(sp)
  400290:	0ff57513          	zext.b	a0,a0
  400294:	03010113          	addi	sp,sp,48
  400298:	00008067          	ret

0040029c <printDec>:
  40029c:	fd010113          	addi	sp,sp,-48
  4002a0:	02812423          	sw	s0,40(sp)
  4002a4:	00058413          	mv	s0,a1
  4002a8:	004005b7          	lui	a1,0x400
  4002ac:	02912223          	sw	s1,36(sp)
  4002b0:	03212023          	sw	s2,32(sp)
  4002b4:	00050493          	mv	s1,a0
  4002b8:	00060913          	mv	s2,a2
  4002bc:	72058593          	addi	a1,a1,1824 # 400720 <resetScreenVector+0xc>
  4002c0:	01400613          	li	a2,20
  4002c4:	00c10513          	addi	a0,sp,12
  4002c8:	02112623          	sw	ra,44(sp)
  4002cc:	dd1ff0ef          	jal	40009c <memcpy>
  4002d0:	000187b7          	lui	a5,0x18
  4002d4:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1809f>
  4002d8:	0287fa63          	bgeu	a5,s0,40030c <printDec+0x70>
  4002dc:	004005b7          	lui	a1,0x400
  4002e0:	00090613          	mv	a2,s2
  4002e4:	7f858593          	addi	a1,a1,2040 # 4007f8 <_etext+0xc4>
  4002e8:	00048513          	mv	a0,s1
  4002ec:	e51ff0ef          	jal	40013c <printString>
  4002f0:	02c12083          	lw	ra,44(sp)
  4002f4:	02812403          	lw	s0,40(sp)
  4002f8:	02412483          	lw	s1,36(sp)
  4002fc:	02012903          	lw	s2,32(sp)
  400300:	0ff57513          	zext.b	a0,a0
  400304:	03010113          	addi	sp,sp,48
  400308:	00008067          	ret
  40030c:	00100613          	li	a2,1
  400310:	00c10713          	addi	a4,sp,12
  400314:	00000793          	li	a5,0
  400318:	00060513          	mv	a0,a2
  40031c:	00072583          	lw	a1,0(a4)
  400320:	00000693          	li	a3,0
  400324:	06b47263          	bgeu	s0,a1,400388 <printDec+0xec>
  400328:	00069663          	bnez	a3,400334 <printDec+0x98>
  40032c:	00a58463          	beq	a1,a0,400334 <printDec+0x98>
  400330:	00061e63          	bnez	a2,40034c <printDec+0xb0>
  400334:	02078613          	addi	a2,a5,32
  400338:	00260633          	add	a2,a2,sp
  40033c:	03068693          	addi	a3,a3,48
  400340:	fed60223          	sb	a3,-28(a2)
  400344:	00178793          	addi	a5,a5,1
  400348:	00000613          	li	a2,0
  40034c:	00470713          	addi	a4,a4,4
  400350:	02010693          	addi	a3,sp,32
  400354:	fcd714e3          	bne	a4,a3,40031c <printDec+0x80>
  400358:	00060c63          	beqz	a2,400370 <printDec+0xd4>
  40035c:	02078713          	addi	a4,a5,32
  400360:	00270733          	add	a4,a4,sp
  400364:	03000693          	li	a3,48
  400368:	fed70223          	sb	a3,-28(a4)
  40036c:	00178793          	addi	a5,a5,1
  400370:	02078793          	addi	a5,a5,32
  400374:	002787b3          	add	a5,a5,sp
  400378:	fe078223          	sb	zero,-28(a5)
  40037c:	00090613          	mv	a2,s2
  400380:	00410593          	addi	a1,sp,4
  400384:	f65ff06f          	j	4002e8 <printDec+0x4c>
  400388:	40b40433          	sub	s0,s0,a1
  40038c:	00168693          	addi	a3,a3,1
  400390:	f95ff06f          	j	400324 <printDec+0x88>

00400394 <printf>:
  400394:	fa010113          	addi	sp,sp,-96
  400398:	04f12a23          	sw	a5,84(sp)
  40039c:	04410793          	addi	a5,sp,68
  4003a0:	02812c23          	sw	s0,56(sp)
  4003a4:	02912a23          	sw	s1,52(sp)
  4003a8:	03212823          	sw	s2,48(sp)
  4003ac:	03312623          	sw	s3,44(sp)
  4003b0:	03412423          	sw	s4,40(sp)
  4003b4:	03512223          	sw	s5,36(sp)
  4003b8:	03612023          	sw	s6,32(sp)
  4003bc:	01812c23          	sw	s8,24(sp)
  4003c0:	02112e23          	sw	ra,60(sp)
  4003c4:	01712e23          	sw	s7,28(sp)
  4003c8:	00050493          	mv	s1,a0
  4003cc:	04b12223          	sw	a1,68(sp)
  4003d0:	04c12423          	sw	a2,72(sp)
  4003d4:	04d12623          	sw	a3,76(sp)
  4003d8:	04e12823          	sw	a4,80(sp)
  4003dc:	05012c23          	sw	a6,88(sp)
  4003e0:	05112e23          	sw	a7,92(sp)
  4003e4:	00f12623          	sw	a5,12(sp)
  4003e8:	00000c13          	li	s8,0
  4003ec:	00400437          	lui	s0,0x400
  4003f0:	00a00993          	li	s3,10
  4003f4:	02500913          	li	s2,37
  4003f8:	07800a13          	li	s4,120
  4003fc:	06400a93          	li	s5,100
  400400:	06300b13          	li	s6,99
  400404:	018487b3          	add	a5,s1,s8
  400408:	0007c583          	lbu	a1,0(a5)
  40040c:	7fe41503          	lh	a0,2046(s0) # 4007fe <screenPos>
  400410:	02059a63          	bnez	a1,400444 <printf+0xb0>
  400414:	03c12083          	lw	ra,60(sp)
  400418:	03812403          	lw	s0,56(sp)
  40041c:	03412483          	lw	s1,52(sp)
  400420:	03012903          	lw	s2,48(sp)
  400424:	02c12983          	lw	s3,44(sp)
  400428:	02812a03          	lw	s4,40(sp)
  40042c:	02412a83          	lw	s5,36(sp)
  400430:	02012b03          	lw	s6,32(sp)
  400434:	01c12b83          	lw	s7,28(sp)
  400438:	01812c03          	lw	s8,24(sp)
  40043c:	06010113          	addi	sp,sp,96
  400440:	00008067          	ret
  400444:	001c0b93          	addi	s7,s8,1
  400448:	01359e63          	bne	a1,s3,400464 <printf+0xd0>
  40044c:	fc057793          	andi	a5,a0,-64
  400450:	04078793          	addi	a5,a5,64
  400454:	01079793          	slli	a5,a5,0x10
  400458:	4107d793          	srai	a5,a5,0x10
  40045c:	000c0b93          	mv	s7,s8
  400460:	0380006f          	j	400498 <printf+0x104>
  400464:	0d259263          	bne	a1,s2,400528 <printf+0x194>
  400468:	0017c783          	lbu	a5,1(a5)
  40046c:	03479c63          	bne	a5,s4,4004a4 <printf+0x110>
  400470:	00c12783          	lw	a5,12(sp)
  400474:	00f00613          	li	a2,15
  400478:	0007a583          	lw	a1,0(a5)
  40047c:	00478713          	addi	a4,a5,4
  400480:	00e12623          	sw	a4,12(sp)
  400484:	d79ff0ef          	jal	4001fc <printHex>
  400488:	7fe45783          	lhu	a5,2046(s0)
  40048c:	00f507b3          	add	a5,a0,a5
  400490:	01079793          	slli	a5,a5,0x10
  400494:	4107d793          	srai	a5,a5,0x10
  400498:	7ef41f23          	sh	a5,2046(s0)
  40049c:	001b8c13          	addi	s8,s7,1
  4004a0:	f65ff06f          	j	400404 <printf+0x70>
  4004a4:	03579063          	bne	a5,s5,4004c4 <printf+0x130>
  4004a8:	00c12783          	lw	a5,12(sp)
  4004ac:	00f00613          	li	a2,15
  4004b0:	0007a583          	lw	a1,0(a5)
  4004b4:	00478713          	addi	a4,a5,4
  4004b8:	00e12623          	sw	a4,12(sp)
  4004bc:	de1ff0ef          	jal	40029c <printDec>
  4004c0:	fc9ff06f          	j	400488 <printf+0xf4>
  4004c4:	03679463          	bne	a5,s6,4004ec <printf+0x158>
  4004c8:	00c12783          	lw	a5,12(sp)
  4004cc:	00f00613          	li	a2,15
  4004d0:	0007c583          	lbu	a1,0(a5)
  4004d4:	00478713          	addi	a4,a5,4
  4004d8:	00e12623          	sw	a4,12(sp)
  4004dc:	c31ff0ef          	jal	40010c <putch>
  4004e0:	7fe45783          	lhu	a5,2046(s0)
  4004e4:	00178793          	addi	a5,a5,1
  4004e8:	fa9ff06f          	j	400490 <printf+0xfc>
  4004ec:	07300713          	li	a4,115
  4004f0:	02e79063          	bne	a5,a4,400510 <printf+0x17c>
  4004f4:	00c12783          	lw	a5,12(sp)
  4004f8:	00f00613          	li	a2,15
  4004fc:	0007a583          	lw	a1,0(a5)
  400500:	00478713          	addi	a4,a5,4
  400504:	00e12623          	sw	a4,12(sp)
  400508:	c35ff0ef          	jal	40013c <printString>
  40050c:	f7dff06f          	j	400488 <printf+0xf4>
  400510:	00f00613          	li	a2,15
  400514:	00090593          	mv	a1,s2
  400518:	bf5ff0ef          	jal	40010c <putch>
  40051c:	7fe45783          	lhu	a5,2046(s0)
  400520:	00178793          	addi	a5,a5,1
  400524:	f31ff06f          	j	400454 <printf+0xc0>
  400528:	00f00613          	li	a2,15
  40052c:	fedff06f          	j	400518 <printf+0x184>

00400530 <printfSCR>:
  400530:	f9010113          	addi	sp,sp,-112
  400534:	06f12223          	sw	a5,100(sp)
  400538:	05c10793          	addi	a5,sp,92
  40053c:	04812423          	sw	s0,72(sp)
  400540:	04912223          	sw	s1,68(sp)
  400544:	05212023          	sw	s2,64(sp)
  400548:	03412c23          	sw	s4,56(sp)
  40054c:	03512a23          	sw	s5,52(sp)
  400550:	03612823          	sw	s6,48(sp)
  400554:	03712623          	sw	s7,44(sp)
  400558:	03812423          	sw	s8,40(sp)
  40055c:	03912223          	sw	s9,36(sp)
  400560:	03a12023          	sw	s10,32(sp)
  400564:	01b12e23          	sw	s11,28(sp)
  400568:	04112623          	sw	ra,76(sp)
  40056c:	03312e23          	sw	s3,60(sp)
  400570:	00050a93          	mv	s5,a0
  400574:	00058493          	mv	s1,a1
  400578:	00060a13          	mv	s4,a2
  40057c:	04d12e23          	sw	a3,92(sp)
  400580:	06e12023          	sw	a4,96(sp)
  400584:	07012423          	sw	a6,104(sp)
  400588:	07112623          	sw	a7,108(sp)
  40058c:	00f12623          	sw	a5,12(sp)
  400590:	00000913          	li	s2,0
  400594:	00000413          	li	s0,0
  400598:	00a00b93          	li	s7,10
  40059c:	02500b13          	li	s6,37
  4005a0:	07800c13          	li	s8,120
  4005a4:	06400c93          	li	s9,100
  4005a8:	06300d13          	li	s10,99
  4005ac:	07300d93          	li	s11,115
  4005b0:	012a07b3          	add	a5,s4,s2
  4005b4:	0007c583          	lbu	a1,0(a5)
  4005b8:	04059263          	bnez	a1,4005fc <printfSCR+0xcc>
  4005bc:	04c12083          	lw	ra,76(sp)
  4005c0:	00040513          	mv	a0,s0
  4005c4:	04812403          	lw	s0,72(sp)
  4005c8:	04412483          	lw	s1,68(sp)
  4005cc:	04012903          	lw	s2,64(sp)
  4005d0:	03c12983          	lw	s3,60(sp)
  4005d4:	03812a03          	lw	s4,56(sp)
  4005d8:	03412a83          	lw	s5,52(sp)
  4005dc:	03012b03          	lw	s6,48(sp)
  4005e0:	02c12b83          	lw	s7,44(sp)
  4005e4:	02812c03          	lw	s8,40(sp)
  4005e8:	02412c83          	lw	s9,36(sp)
  4005ec:	02012d03          	lw	s10,32(sp)
  4005f0:	01c12d83          	lw	s11,28(sp)
  4005f4:	07010113          	addi	sp,sp,112
  4005f8:	00008067          	ret
  4005fc:	00190993          	addi	s3,s2,1
  400600:	01759a63          	bne	a1,s7,400614 <printfSCR+0xe4>
  400604:	fc047413          	andi	s0,s0,-64
  400608:	04040413          	addi	s0,s0,64
  40060c:	00090993          	mv	s3,s2
  400610:	0740006f          	j	400684 <printfSCR+0x154>
  400614:	01540533          	add	a0,s0,s5
  400618:	0b659463          	bne	a1,s6,4006c0 <printfSCR+0x190>
  40061c:	0017c783          	lbu	a5,1(a5)
  400620:	03879263          	bne	a5,s8,400644 <printfSCR+0x114>
  400624:	00c12783          	lw	a5,12(sp)
  400628:	00048613          	mv	a2,s1
  40062c:	0007a583          	lw	a1,0(a5)
  400630:	00478713          	addi	a4,a5,4
  400634:	00e12623          	sw	a4,12(sp)
  400638:	bc5ff0ef          	jal	4001fc <printHex>
  40063c:	00a40433          	add	s0,s0,a0
  400640:	0440006f          	j	400684 <printfSCR+0x154>
  400644:	03979063          	bne	a5,s9,400664 <printfSCR+0x134>
  400648:	00c12783          	lw	a5,12(sp)
  40064c:	00048613          	mv	a2,s1
  400650:	0007a583          	lw	a1,0(a5)
  400654:	00478713          	addi	a4,a5,4
  400658:	00e12623          	sw	a4,12(sp)
  40065c:	c41ff0ef          	jal	40029c <printDec>
  400660:	fddff06f          	j	40063c <printfSCR+0x10c>
  400664:	03a79463          	bne	a5,s10,40068c <printfSCR+0x15c>
  400668:	00c12783          	lw	a5,12(sp)
  40066c:	00048613          	mv	a2,s1
  400670:	00140413          	addi	s0,s0,1
  400674:	0007c583          	lbu	a1,0(a5)
  400678:	00478713          	addi	a4,a5,4
  40067c:	00e12623          	sw	a4,12(sp)
  400680:	a8dff0ef          	jal	40010c <putch>
  400684:	00198913          	addi	s2,s3,1
  400688:	f29ff06f          	j	4005b0 <printfSCR+0x80>
  40068c:	03b79063          	bne	a5,s11,4006ac <printfSCR+0x17c>
  400690:	00c12783          	lw	a5,12(sp)
  400694:	00048613          	mv	a2,s1
  400698:	0007a583          	lw	a1,0(a5)
  40069c:	00478713          	addi	a4,a5,4
  4006a0:	00e12623          	sw	a4,12(sp)
  4006a4:	a99ff0ef          	jal	40013c <printString>
  4006a8:	f95ff06f          	j	40063c <printfSCR+0x10c>
  4006ac:	00048613          	mv	a2,s1
  4006b0:	000b0593          	mv	a1,s6
  4006b4:	a59ff0ef          	jal	40010c <putch>
  4006b8:	00140413          	addi	s0,s0,1
  4006bc:	f51ff06f          	j	40060c <printfSCR+0xdc>
  4006c0:	00048613          	mv	a2,s1
  4006c4:	ff1ff06f          	j	4006b4 <printfSCR+0x184>

004006c8 <clearScreen>:
  4006c8:	ff010113          	addi	sp,sp,-16
  4006cc:	00812423          	sw	s0,8(sp)
  4006d0:	00912223          	sw	s1,4(sp)
  4006d4:	00112623          	sw	ra,12(sp)
  4006d8:	00000413          	li	s0,0
  4006dc:	4c000493          	li	s1,1216
  4006e0:	00040513          	mv	a0,s0
  4006e4:	00f00613          	li	a2,15
  4006e8:	02000593          	li	a1,32
  4006ec:	00140413          	addi	s0,s0,1
  4006f0:	a1dff0ef          	jal	40010c <putch>
  4006f4:	fe9416e3          	bne	s0,s1,4006e0 <clearScreen+0x18>
  4006f8:	00c12083          	lw	ra,12(sp)
  4006fc:	00812403          	lw	s0,8(sp)
  400700:	004007b7          	lui	a5,0x400
  400704:	7e079f23          	sh	zero,2046(a5) # 4007fe <screenPos>
  400708:	00412483          	lw	s1,4(sp)
  40070c:	01010113          	addi	sp,sp,16
  400710:	00008067          	ret

00400714 <resetScreenVector>:
  400714:	004007b7          	lui	a5,0x400
  400718:	7e079f23          	sh	zero,2046(a5) # 4007fe <screenPos>
  40071c:	00008067          	ret
  400720:	2710                	.insn	2, 0x2710
  400722:	0000                	.insn	2, 0x
  400724:	03e8                	.insn	2, 0x03e8
  400726:	0000                	.insn	2, 0x
  400728:	0064                	.insn	2, 0x0064
  40072a:	0000                	.insn	2, 0x
  40072c:	000a                	.insn	2, 0x000a
  40072e:	0000                	.insn	2, 0x
  400730:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400734 <main>:
  400734:	876545b7          	lui	a1,0x87654
  400738:	ff010113          	addi	sp,sp,-16
  40073c:	32158593          	addi	a1,a1,801 # 87654321 <_stack_end+0x87252321>
  400740:	00000513          	li	a0,0
  400744:	00112623          	sw	ra,12(sp)
  400748:	00812423          	sw	s0,8(sp)
  40074c:	8d1ff0ef          	jal	40001c <writeRam>
  400750:	123455b7          	lui	a1,0x12345
  400754:	67858593          	addi	a1,a1,1656 # 12345678 <_stack_end+0x11f43678>
  400758:	00100513          	li	a0,1
  40075c:	8c1ff0ef          	jal	40001c <writeRam>
  400760:	00400537          	lui	a0,0x400
  400764:	7bc50513          	addi	a0,a0,1980 # 4007bc <main+0x88>
  400768:	c2dff0ef          	jal	400394 <printf>
  40076c:	00000513          	li	a0,0
  400770:	8edff0ef          	jal	40005c <readRam>
  400774:	00400437          	lui	s0,0x400
  400778:	00050593          	mv	a1,a0
  40077c:	7cc40513          	addi	a0,s0,1996 # 4007cc <main+0x98>
  400780:	c15ff0ef          	jal	400394 <printf>
  400784:	00100513          	li	a0,1
  400788:	8d5ff0ef          	jal	40005c <readRam>
  40078c:	00050593          	mv	a1,a0
  400790:	7cc40513          	addi	a0,s0,1996
  400794:	c01ff0ef          	jal	400394 <printf>
  400798:	00200513          	li	a0,2
  40079c:	8c1ff0ef          	jal	40005c <readRam>
  4007a0:	00050593          	mv	a1,a0
  4007a4:	7cc40513          	addi	a0,s0,1996
  4007a8:	bedff0ef          	jal	400394 <printf>
  4007ac:	00400537          	lui	a0,0x400
  4007b0:	7d050513          	addi	a0,a0,2000 # 4007d0 <main+0x9c>
  4007b4:	be1ff0ef          	jal	400394 <printf>
  4007b8:	0000006f          	j	4007b8 <main+0x84>
