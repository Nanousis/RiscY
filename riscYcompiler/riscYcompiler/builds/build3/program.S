
builds/build3/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	a0010113          	addi	sp,sp,-1536 # 401a00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	71c000ef          	jal	40072c <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <writeRam>:
  40001c:	00251513          	slli	a0,a0,0x2
  400020:	400007b7          	lui	a5,0x40000
  400024:	00f50533          	add	a0,a0,a5
  400028:	ff010113          	addi	sp,sp,-16
  40002c:	00b52023          	sw	a1,0(a0)
  400030:	00012623          	sw	zero,12(sp)
  400034:	1f300713          	li	a4,499
  400038:	00c12783          	lw	a5,12(sp)
  40003c:	00f75663          	bge	a4,a5,400048 <writeRam+0x2c>
  400040:	01010113          	addi	sp,sp,16
  400044:	00008067          	ret
  400048:	00c12783          	lw	a5,12(sp)
  40004c:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  400050:	00f12623          	sw	a5,12(sp)
  400054:	fe5ff06f          	j	400038 <writeRam+0x1c>

00400058 <readRam>:
  400058:	00251513          	slli	a0,a0,0x2
  40005c:	400007b7          	lui	a5,0x40000
  400060:	ff010113          	addi	sp,sp,-16
  400064:	00f50533          	add	a0,a0,a5
  400068:	00052503          	lw	a0,0(a0)
  40006c:	1f300713          	li	a4,499
  400070:	00012623          	sw	zero,12(sp)
  400074:	00c12783          	lw	a5,12(sp)
  400078:	00f75663          	bge	a4,a5,400084 <readRam+0x2c>
  40007c:	01010113          	addi	sp,sp,16
  400080:	00008067          	ret
  400084:	00c12783          	lw	a5,12(sp)
  400088:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  40008c:	00f12623          	sw	a5,12(sp)
  400090:	fe5ff06f          	j	400074 <readRam+0x1c>

00400094 <memcpy>:
  400094:	00000793          	li	a5,0
  400098:	00c7c463          	blt	a5,a2,4000a0 <memcpy+0xc>
  40009c:	00008067          	ret
  4000a0:	00f58733          	add	a4,a1,a5
  4000a4:	00074683          	lbu	a3,0(a4)
  4000a8:	00f50733          	add	a4,a0,a5
  4000ac:	00178793          	addi	a5,a5,1
  4000b0:	00d70023          	sb	a3,0(a4)
  4000b4:	fe5ff06f          	j	400098 <memcpy+0x4>

004000b8 <memset>:
  4000b8:	00c50633          	add	a2,a0,a2
  4000bc:	00050793          	mv	a5,a0
  4000c0:	00c79463          	bne	a5,a2,4000c8 <memset+0x10>
  4000c4:	00008067          	ret
  4000c8:	00178793          	addi	a5,a5,1
  4000cc:	feb78fa3          	sb	a1,-1(a5)
  4000d0:	ff1ff06f          	j	4000c0 <memset+0x8>

004000d4 <getButtonDown>:
  4000d4:	890007b7          	lui	a5,0x89000
  4000d8:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  4000dc:	00008067          	ret

004000e0 <getButtonUp>:
  4000e0:	890007b7          	lui	a5,0x89000
  4000e4:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  4000e8:	00008067          	ret

004000ec <getButtonLeft>:
  4000ec:	890007b7          	lui	a5,0x89000
  4000f0:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4000f4:	00008067          	ret

004000f8 <getButtonRight>:
  4000f8:	890007b7          	lui	a5,0x89000
  4000fc:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  400100:	00008067          	ret

00400104 <putch>:
  400104:	4c000793          	li	a5,1216
  400108:	02a7e263          	bltu	a5,a0,40012c <putch+0x28>
  40010c:	00861613          	slli	a2,a2,0x8
  400110:	880007b7          	lui	a5,0x88000
  400114:	00151513          	slli	a0,a0,0x1
  400118:	00f50533          	add	a0,a0,a5
  40011c:	00b665b3          	or	a1,a2,a1
  400120:	00b51023          	sh	a1,0(a0)
  400124:	00100513          	li	a0,1
  400128:	00008067          	ret
  40012c:	00000513          	li	a0,0
  400130:	00008067          	ret

00400134 <printString>:
  400134:	fe010113          	addi	sp,sp,-32
  400138:	01312623          	sw	s3,12(sp)
  40013c:	01412423          	sw	s4,8(sp)
  400140:	00112e23          	sw	ra,28(sp)
  400144:	00812c23          	sw	s0,24(sp)
  400148:	00912a23          	sw	s1,20(sp)
  40014c:	01212823          	sw	s2,16(sp)
  400150:	01512223          	sw	s5,4(sp)
  400154:	01612023          	sw	s6,0(sp)
  400158:	00050a13          	mv	s4,a0
  40015c:	00058993          	mv	s3,a1
  400160:	06060c63          	beqz	a2,4001d8 <printString+0xa4>
  400164:	00060413          	mv	s0,a2
  400168:	00000913          	li	s2,0
  40016c:	00000493          	li	s1,0
  400170:	00100a93          	li	s5,1
  400174:	00f00b13          	li	s6,15
  400178:	0280006f          	j	4001a0 <printString+0x6c>
  40017c:	00040613          	mv	a2,s0
  400180:	009a0533          	add	a0,s4,s1
  400184:	f81ff0ef          	jal	400104 <putch>
  400188:	06050263          	beqz	a0,4001ec <printString+0xb8>
  40018c:	00148493          	addi	s1,s1,1
  400190:	01591863          	bne	s2,s5,4001a0 <printString+0x6c>
  400194:	00140413          	addi	s0,s0,1
  400198:	0ff47413          	zext.b	s0,s0
  40019c:	048b6463          	bltu	s6,s0,4001e4 <printString+0xb0>
  4001a0:	009987b3          	add	a5,s3,s1
  4001a4:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  4001a8:	00048513          	mv	a0,s1
  4001ac:	fc0598e3          	bnez	a1,40017c <printString+0x48>
  4001b0:	01c12083          	lw	ra,28(sp)
  4001b4:	01812403          	lw	s0,24(sp)
  4001b8:	01412483          	lw	s1,20(sp)
  4001bc:	01012903          	lw	s2,16(sp)
  4001c0:	00c12983          	lw	s3,12(sp)
  4001c4:	00812a03          	lw	s4,8(sp)
  4001c8:	00412a83          	lw	s5,4(sp)
  4001cc:	00012b03          	lw	s6,0(sp)
  4001d0:	02010113          	addi	sp,sp,32
  4001d4:	00008067          	ret
  4001d8:	00100913          	li	s2,1
  4001dc:	00090413          	mv	s0,s2
  4001e0:	f8dff06f          	j	40016c <printString+0x38>
  4001e4:	00090413          	mv	s0,s2
  4001e8:	fb9ff06f          	j	4001a0 <printString+0x6c>
  4001ec:	00000513          	li	a0,0
  4001f0:	fc1ff06f          	j	4001b0 <printString+0x7c>

004001f4 <printHex>:
  4001f4:	fd010113          	addi	sp,sp,-48
  4001f8:	02812423          	sw	s0,40(sp)
  4001fc:	00058413          	mv	s0,a1
  400200:	004015b7          	lui	a1,0x401
  400204:	02912223          	sw	s1,36(sp)
  400208:	03212023          	sw	s2,32(sp)
  40020c:	83c58593          	addi	a1,a1,-1988 # 40083c <_etext+0x110>
  400210:	00050493          	mv	s1,a0
  400214:	00060913          	mv	s2,a2
  400218:	00c10513          	addi	a0,sp,12
  40021c:	01100613          	li	a2,17
  400220:	02112623          	sw	ra,44(sp)
  400224:	e71ff0ef          	jal	400094 <memcpy>
  400228:	202027b7          	lui	a5,0x20202
  40022c:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  400230:	00f12023          	sw	a5,0(sp)
  400234:	00f12223          	sw	a5,4(sp)
  400238:	00010423          	sb	zero,8(sp)
  40023c:	00700793          	li	a5,7
  400240:	00010593          	mv	a1,sp
  400244:	fff00693          	li	a3,-1
  400248:	00f47713          	andi	a4,s0,15
  40024c:	02070713          	addi	a4,a4,32
  400250:	00270733          	add	a4,a4,sp
  400254:	fec74703          	lbu	a4,-20(a4)
  400258:	00f58633          	add	a2,a1,a5
  40025c:	fff78793          	addi	a5,a5,-1
  400260:	00e60023          	sb	a4,0(a2)
  400264:	40445413          	srai	s0,s0,0x4
  400268:	fed790e3          	bne	a5,a3,400248 <printHex+0x54>
  40026c:	00090613          	mv	a2,s2
  400270:	00048513          	mv	a0,s1
  400274:	ec1ff0ef          	jal	400134 <printString>
  400278:	02c12083          	lw	ra,44(sp)
  40027c:	02812403          	lw	s0,40(sp)
  400280:	02412483          	lw	s1,36(sp)
  400284:	02012903          	lw	s2,32(sp)
  400288:	0ff57513          	zext.b	a0,a0
  40028c:	03010113          	addi	sp,sp,48
  400290:	00008067          	ret

00400294 <printDec>:
  400294:	fd010113          	addi	sp,sp,-48
  400298:	02812423          	sw	s0,40(sp)
  40029c:	00058413          	mv	s0,a1
  4002a0:	004005b7          	lui	a1,0x400
  4002a4:	02912223          	sw	s1,36(sp)
  4002a8:	03212023          	sw	s2,32(sp)
  4002ac:	00050493          	mv	s1,a0
  4002b0:	00060913          	mv	s2,a2
  4002b4:	71858593          	addi	a1,a1,1816 # 400718 <resetScreenVector+0xc>
  4002b8:	01400613          	li	a2,20
  4002bc:	00c10513          	addi	a0,sp,12
  4002c0:	02112623          	sw	ra,44(sp)
  4002c4:	dd1ff0ef          	jal	400094 <memcpy>
  4002c8:	000187b7          	lui	a5,0x18
  4002cc:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1809f>
  4002d0:	0287fa63          	bgeu	a5,s0,400304 <printDec+0x70>
  4002d4:	004015b7          	lui	a1,0x401
  4002d8:	00090613          	mv	a2,s2
  4002dc:	85058593          	addi	a1,a1,-1968 # 400850 <_etext+0x124>
  4002e0:	00048513          	mv	a0,s1
  4002e4:	e51ff0ef          	jal	400134 <printString>
  4002e8:	02c12083          	lw	ra,44(sp)
  4002ec:	02812403          	lw	s0,40(sp)
  4002f0:	02412483          	lw	s1,36(sp)
  4002f4:	02012903          	lw	s2,32(sp)
  4002f8:	0ff57513          	zext.b	a0,a0
  4002fc:	03010113          	addi	sp,sp,48
  400300:	00008067          	ret
  400304:	00100613          	li	a2,1
  400308:	00c10713          	addi	a4,sp,12
  40030c:	00000793          	li	a5,0
  400310:	00060513          	mv	a0,a2
  400314:	00072583          	lw	a1,0(a4)
  400318:	00000693          	li	a3,0
  40031c:	06b47263          	bgeu	s0,a1,400380 <printDec+0xec>
  400320:	00069663          	bnez	a3,40032c <printDec+0x98>
  400324:	00a58463          	beq	a1,a0,40032c <printDec+0x98>
  400328:	00061e63          	bnez	a2,400344 <printDec+0xb0>
  40032c:	02078613          	addi	a2,a5,32
  400330:	00260633          	add	a2,a2,sp
  400334:	03068693          	addi	a3,a3,48
  400338:	fed60223          	sb	a3,-28(a2)
  40033c:	00178793          	addi	a5,a5,1
  400340:	00000613          	li	a2,0
  400344:	00470713          	addi	a4,a4,4
  400348:	02010693          	addi	a3,sp,32
  40034c:	fcd714e3          	bne	a4,a3,400314 <printDec+0x80>
  400350:	00060c63          	beqz	a2,400368 <printDec+0xd4>
  400354:	02078713          	addi	a4,a5,32
  400358:	00270733          	add	a4,a4,sp
  40035c:	03000693          	li	a3,48
  400360:	fed70223          	sb	a3,-28(a4)
  400364:	00178793          	addi	a5,a5,1
  400368:	02078793          	addi	a5,a5,32
  40036c:	002787b3          	add	a5,a5,sp
  400370:	fe078223          	sb	zero,-28(a5)
  400374:	00090613          	mv	a2,s2
  400378:	00410593          	addi	a1,sp,4
  40037c:	f65ff06f          	j	4002e0 <printDec+0x4c>
  400380:	40b40433          	sub	s0,s0,a1
  400384:	00168693          	addi	a3,a3,1
  400388:	f95ff06f          	j	40031c <printDec+0x88>

0040038c <printf>:
  40038c:	fa010113          	addi	sp,sp,-96
  400390:	04f12a23          	sw	a5,84(sp)
  400394:	04410793          	addi	a5,sp,68
  400398:	02812c23          	sw	s0,56(sp)
  40039c:	02912a23          	sw	s1,52(sp)
  4003a0:	03212823          	sw	s2,48(sp)
  4003a4:	03312623          	sw	s3,44(sp)
  4003a8:	03412423          	sw	s4,40(sp)
  4003ac:	03512223          	sw	s5,36(sp)
  4003b0:	03612023          	sw	s6,32(sp)
  4003b4:	01812c23          	sw	s8,24(sp)
  4003b8:	02112e23          	sw	ra,60(sp)
  4003bc:	01712e23          	sw	s7,28(sp)
  4003c0:	00050493          	mv	s1,a0
  4003c4:	04b12223          	sw	a1,68(sp)
  4003c8:	04c12423          	sw	a2,72(sp)
  4003cc:	04d12623          	sw	a3,76(sp)
  4003d0:	04e12823          	sw	a4,80(sp)
  4003d4:	05012c23          	sw	a6,88(sp)
  4003d8:	05112e23          	sw	a7,92(sp)
  4003dc:	00f12623          	sw	a5,12(sp)
  4003e0:	00000c13          	li	s8,0
  4003e4:	00401437          	lui	s0,0x401
  4003e8:	00a00993          	li	s3,10
  4003ec:	02500913          	li	s2,37
  4003f0:	07800a13          	li	s4,120
  4003f4:	06400a93          	li	s5,100
  4003f8:	06300b13          	li	s6,99
  4003fc:	018487b3          	add	a5,s1,s8
  400400:	0007c583          	lbu	a1,0(a5)
  400404:	85641503          	lh	a0,-1962(s0) # 400856 <screenPos>
  400408:	02059a63          	bnez	a1,40043c <printf+0xb0>
  40040c:	03c12083          	lw	ra,60(sp)
  400410:	03812403          	lw	s0,56(sp)
  400414:	03412483          	lw	s1,52(sp)
  400418:	03012903          	lw	s2,48(sp)
  40041c:	02c12983          	lw	s3,44(sp)
  400420:	02812a03          	lw	s4,40(sp)
  400424:	02412a83          	lw	s5,36(sp)
  400428:	02012b03          	lw	s6,32(sp)
  40042c:	01c12b83          	lw	s7,28(sp)
  400430:	01812c03          	lw	s8,24(sp)
  400434:	06010113          	addi	sp,sp,96
  400438:	00008067          	ret
  40043c:	001c0b93          	addi	s7,s8,1
  400440:	01359e63          	bne	a1,s3,40045c <printf+0xd0>
  400444:	fc057793          	andi	a5,a0,-64
  400448:	04078793          	addi	a5,a5,64
  40044c:	01079793          	slli	a5,a5,0x10
  400450:	4107d793          	srai	a5,a5,0x10
  400454:	000c0b93          	mv	s7,s8
  400458:	0380006f          	j	400490 <printf+0x104>
  40045c:	0d259263          	bne	a1,s2,400520 <printf+0x194>
  400460:	0017c783          	lbu	a5,1(a5)
  400464:	03479c63          	bne	a5,s4,40049c <printf+0x110>
  400468:	00c12783          	lw	a5,12(sp)
  40046c:	00f00613          	li	a2,15
  400470:	0007a583          	lw	a1,0(a5)
  400474:	00478713          	addi	a4,a5,4
  400478:	00e12623          	sw	a4,12(sp)
  40047c:	d79ff0ef          	jal	4001f4 <printHex>
  400480:	85645783          	lhu	a5,-1962(s0)
  400484:	00f507b3          	add	a5,a0,a5
  400488:	01079793          	slli	a5,a5,0x10
  40048c:	4107d793          	srai	a5,a5,0x10
  400490:	84f41b23          	sh	a5,-1962(s0)
  400494:	001b8c13          	addi	s8,s7,1
  400498:	f65ff06f          	j	4003fc <printf+0x70>
  40049c:	03579063          	bne	a5,s5,4004bc <printf+0x130>
  4004a0:	00c12783          	lw	a5,12(sp)
  4004a4:	00f00613          	li	a2,15
  4004a8:	0007a583          	lw	a1,0(a5)
  4004ac:	00478713          	addi	a4,a5,4
  4004b0:	00e12623          	sw	a4,12(sp)
  4004b4:	de1ff0ef          	jal	400294 <printDec>
  4004b8:	fc9ff06f          	j	400480 <printf+0xf4>
  4004bc:	03679463          	bne	a5,s6,4004e4 <printf+0x158>
  4004c0:	00c12783          	lw	a5,12(sp)
  4004c4:	00f00613          	li	a2,15
  4004c8:	0007c583          	lbu	a1,0(a5)
  4004cc:	00478713          	addi	a4,a5,4
  4004d0:	00e12623          	sw	a4,12(sp)
  4004d4:	c31ff0ef          	jal	400104 <putch>
  4004d8:	85645783          	lhu	a5,-1962(s0)
  4004dc:	00178793          	addi	a5,a5,1
  4004e0:	fa9ff06f          	j	400488 <printf+0xfc>
  4004e4:	07300713          	li	a4,115
  4004e8:	02e79063          	bne	a5,a4,400508 <printf+0x17c>
  4004ec:	00c12783          	lw	a5,12(sp)
  4004f0:	00f00613          	li	a2,15
  4004f4:	0007a583          	lw	a1,0(a5)
  4004f8:	00478713          	addi	a4,a5,4
  4004fc:	00e12623          	sw	a4,12(sp)
  400500:	c35ff0ef          	jal	400134 <printString>
  400504:	f7dff06f          	j	400480 <printf+0xf4>
  400508:	00f00613          	li	a2,15
  40050c:	00090593          	mv	a1,s2
  400510:	bf5ff0ef          	jal	400104 <putch>
  400514:	85645783          	lhu	a5,-1962(s0)
  400518:	00178793          	addi	a5,a5,1
  40051c:	f31ff06f          	j	40044c <printf+0xc0>
  400520:	00f00613          	li	a2,15
  400524:	fedff06f          	j	400510 <printf+0x184>

00400528 <printfSCR>:
  400528:	f9010113          	addi	sp,sp,-112
  40052c:	06f12223          	sw	a5,100(sp)
  400530:	05c10793          	addi	a5,sp,92
  400534:	04812423          	sw	s0,72(sp)
  400538:	04912223          	sw	s1,68(sp)
  40053c:	05212023          	sw	s2,64(sp)
  400540:	03412c23          	sw	s4,56(sp)
  400544:	03512a23          	sw	s5,52(sp)
  400548:	03612823          	sw	s6,48(sp)
  40054c:	03712623          	sw	s7,44(sp)
  400550:	03812423          	sw	s8,40(sp)
  400554:	03912223          	sw	s9,36(sp)
  400558:	03a12023          	sw	s10,32(sp)
  40055c:	01b12e23          	sw	s11,28(sp)
  400560:	04112623          	sw	ra,76(sp)
  400564:	03312e23          	sw	s3,60(sp)
  400568:	00050a93          	mv	s5,a0
  40056c:	00058493          	mv	s1,a1
  400570:	00060a13          	mv	s4,a2
  400574:	04d12e23          	sw	a3,92(sp)
  400578:	06e12023          	sw	a4,96(sp)
  40057c:	07012423          	sw	a6,104(sp)
  400580:	07112623          	sw	a7,108(sp)
  400584:	00f12623          	sw	a5,12(sp)
  400588:	00000913          	li	s2,0
  40058c:	00000413          	li	s0,0
  400590:	00a00b93          	li	s7,10
  400594:	02500b13          	li	s6,37
  400598:	07800c13          	li	s8,120
  40059c:	06400c93          	li	s9,100
  4005a0:	06300d13          	li	s10,99
  4005a4:	07300d93          	li	s11,115
  4005a8:	012a07b3          	add	a5,s4,s2
  4005ac:	0007c583          	lbu	a1,0(a5)
  4005b0:	04059263          	bnez	a1,4005f4 <printfSCR+0xcc>
  4005b4:	04c12083          	lw	ra,76(sp)
  4005b8:	00040513          	mv	a0,s0
  4005bc:	04812403          	lw	s0,72(sp)
  4005c0:	04412483          	lw	s1,68(sp)
  4005c4:	04012903          	lw	s2,64(sp)
  4005c8:	03c12983          	lw	s3,60(sp)
  4005cc:	03812a03          	lw	s4,56(sp)
  4005d0:	03412a83          	lw	s5,52(sp)
  4005d4:	03012b03          	lw	s6,48(sp)
  4005d8:	02c12b83          	lw	s7,44(sp)
  4005dc:	02812c03          	lw	s8,40(sp)
  4005e0:	02412c83          	lw	s9,36(sp)
  4005e4:	02012d03          	lw	s10,32(sp)
  4005e8:	01c12d83          	lw	s11,28(sp)
  4005ec:	07010113          	addi	sp,sp,112
  4005f0:	00008067          	ret
  4005f4:	00190993          	addi	s3,s2,1
  4005f8:	01759a63          	bne	a1,s7,40060c <printfSCR+0xe4>
  4005fc:	fc047413          	andi	s0,s0,-64
  400600:	04040413          	addi	s0,s0,64
  400604:	00090993          	mv	s3,s2
  400608:	0740006f          	j	40067c <printfSCR+0x154>
  40060c:	01540533          	add	a0,s0,s5
  400610:	0b659463          	bne	a1,s6,4006b8 <printfSCR+0x190>
  400614:	0017c783          	lbu	a5,1(a5)
  400618:	03879263          	bne	a5,s8,40063c <printfSCR+0x114>
  40061c:	00c12783          	lw	a5,12(sp)
  400620:	00048613          	mv	a2,s1
  400624:	0007a583          	lw	a1,0(a5)
  400628:	00478713          	addi	a4,a5,4
  40062c:	00e12623          	sw	a4,12(sp)
  400630:	bc5ff0ef          	jal	4001f4 <printHex>
  400634:	00a40433          	add	s0,s0,a0
  400638:	0440006f          	j	40067c <printfSCR+0x154>
  40063c:	03979063          	bne	a5,s9,40065c <printfSCR+0x134>
  400640:	00c12783          	lw	a5,12(sp)
  400644:	00048613          	mv	a2,s1
  400648:	0007a583          	lw	a1,0(a5)
  40064c:	00478713          	addi	a4,a5,4
  400650:	00e12623          	sw	a4,12(sp)
  400654:	c41ff0ef          	jal	400294 <printDec>
  400658:	fddff06f          	j	400634 <printfSCR+0x10c>
  40065c:	03a79463          	bne	a5,s10,400684 <printfSCR+0x15c>
  400660:	00c12783          	lw	a5,12(sp)
  400664:	00048613          	mv	a2,s1
  400668:	00140413          	addi	s0,s0,1
  40066c:	0007c583          	lbu	a1,0(a5)
  400670:	00478713          	addi	a4,a5,4
  400674:	00e12623          	sw	a4,12(sp)
  400678:	a8dff0ef          	jal	400104 <putch>
  40067c:	00198913          	addi	s2,s3,1
  400680:	f29ff06f          	j	4005a8 <printfSCR+0x80>
  400684:	03b79063          	bne	a5,s11,4006a4 <printfSCR+0x17c>
  400688:	00c12783          	lw	a5,12(sp)
  40068c:	00048613          	mv	a2,s1
  400690:	0007a583          	lw	a1,0(a5)
  400694:	00478713          	addi	a4,a5,4
  400698:	00e12623          	sw	a4,12(sp)
  40069c:	a99ff0ef          	jal	400134 <printString>
  4006a0:	f95ff06f          	j	400634 <printfSCR+0x10c>
  4006a4:	00048613          	mv	a2,s1
  4006a8:	000b0593          	mv	a1,s6
  4006ac:	a59ff0ef          	jal	400104 <putch>
  4006b0:	00140413          	addi	s0,s0,1
  4006b4:	f51ff06f          	j	400604 <printfSCR+0xdc>
  4006b8:	00048613          	mv	a2,s1
  4006bc:	ff1ff06f          	j	4006ac <printfSCR+0x184>

004006c0 <clearScreen>:
  4006c0:	ff010113          	addi	sp,sp,-16
  4006c4:	00812423          	sw	s0,8(sp)
  4006c8:	00912223          	sw	s1,4(sp)
  4006cc:	00112623          	sw	ra,12(sp)
  4006d0:	00000413          	li	s0,0
  4006d4:	4c000493          	li	s1,1216
  4006d8:	00040513          	mv	a0,s0
  4006dc:	00f00613          	li	a2,15
  4006e0:	02000593          	li	a1,32
  4006e4:	00140413          	addi	s0,s0,1
  4006e8:	a1dff0ef          	jal	400104 <putch>
  4006ec:	fe9416e3          	bne	s0,s1,4006d8 <clearScreen+0x18>
  4006f0:	00c12083          	lw	ra,12(sp)
  4006f4:	00812403          	lw	s0,8(sp)
  4006f8:	004017b7          	lui	a5,0x401
  4006fc:	84079b23          	sh	zero,-1962(a5) # 400856 <screenPos>
  400700:	00412483          	lw	s1,4(sp)
  400704:	01010113          	addi	sp,sp,16
  400708:	00008067          	ret

0040070c <resetScreenVector>:
  40070c:	004017b7          	lui	a5,0x401
  400710:	84079b23          	sh	zero,-1962(a5) # 400856 <screenPos>
  400714:	00008067          	ret
  400718:	2710                	.insn	2, 0x2710
  40071a:	0000                	.insn	2, 0x
  40071c:	03e8                	.insn	2, 0x03e8
  40071e:	0000                	.insn	2, 0x
  400720:	0064                	.insn	2, 0x0064
  400722:	0000                	.insn	2, 0x
  400724:	000a                	.insn	2, 0x000a
  400726:	0000                	.insn	2, 0x
  400728:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

0040072c <main>:
  40072c:	123455b7          	lui	a1,0x12345
  400730:	ff010113          	addi	sp,sp,-16
  400734:	67858593          	addi	a1,a1,1656 # 12345678 <_stack_end+0x11f43678>
  400738:	00000513          	li	a0,0
  40073c:	00112623          	sw	ra,12(sp)
  400740:	00812423          	sw	s0,8(sp)
  400744:	00912223          	sw	s1,4(sp)
  400748:	01212023          	sw	s2,0(sp)
  40074c:	8d1ff0ef          	jal	40001c <writeRam>
  400750:	876545b7          	lui	a1,0x87654
  400754:	32158593          	addi	a1,a1,801 # 87654321 <_stack_end+0x87252321>
  400758:	00100513          	li	a0,1
  40075c:	8c1ff0ef          	jal	40001c <writeRam>
  400760:	111115b7          	lui	a1,0x11111
  400764:	11158593          	addi	a1,a1,273 # 11111111 <_stack_end+0x10d0f111>
  400768:	00200513          	li	a0,2
  40076c:	8b1ff0ef          	jal	40001c <writeRam>
  400770:	222225b7          	lui	a1,0x22222
  400774:	22258593          	addi	a1,a1,546 # 22222222 <_stack_end+0x21e20222>
  400778:	00300513          	li	a0,3
  40077c:	8a1ff0ef          	jal	40001c <writeRam>
  400780:	333335b7          	lui	a1,0x33333
  400784:	33358593          	addi	a1,a1,819 # 33333333 <_stack_end+0x32f31333>
  400788:	00400513          	li	a0,4
  40078c:	891ff0ef          	jal	40001c <writeRam>
  400790:	444445b7          	lui	a1,0x44444
  400794:	44458593          	addi	a1,a1,1092 # 44444444 <_stack_end+0x44042444>
  400798:	00500513          	li	a0,5
  40079c:	881ff0ef          	jal	40001c <writeRam>
  4007a0:	555555b7          	lui	a1,0x55555
  4007a4:	55558593          	addi	a1,a1,1365 # 55555555 <_stack_end+0x55153555>
  4007a8:	00600513          	li	a0,6
  4007ac:	871ff0ef          	jal	40001c <writeRam>
  4007b0:	666665b7          	lui	a1,0x66666
  4007b4:	66658593          	addi	a1,a1,1638 # 66666666 <_stack_end+0x66264666>
  4007b8:	00700513          	li	a0,7
  4007bc:	861ff0ef          	jal	40001c <writeRam>
  4007c0:	777775b7          	lui	a1,0x77777
  4007c4:	77758593          	addi	a1,a1,1911 # 77777777 <_stack_end+0x77375777>
  4007c8:	00800513          	li	a0,8
  4007cc:	851ff0ef          	jal	40001c <writeRam>
  4007d0:	888895b7          	lui	a1,0x88889
  4007d4:	88858593          	addi	a1,a1,-1912 # 88888888 <_stack_end+0x88486888>
  4007d8:	00900513          	li	a0,9
  4007dc:	841ff0ef          	jal	40001c <writeRam>
  4007e0:	9999a5b7          	lui	a1,0x9999a
  4007e4:	99958593          	addi	a1,a1,-1639 # 99999999 <_stack_end+0x99597999>
  4007e8:	00a00513          	li	a0,10
  4007ec:	831ff0ef          	jal	40001c <writeRam>
  4007f0:	00401537          	lui	a0,0x401
  4007f4:	82850513          	addi	a0,a0,-2008 # 400828 <main+0xfc>
  4007f8:	b95ff0ef          	jal	40038c <printf>
  4007fc:	00000413          	li	s0,0
  400800:	00401937          	lui	s2,0x401
  400804:	00a00493          	li	s1,10
  400808:	00040513          	mv	a0,s0
  40080c:	84dff0ef          	jal	400058 <readRam>
  400810:	00050593          	mv	a1,a0
  400814:	00140413          	addi	s0,s0,1
  400818:	83890513          	addi	a0,s2,-1992 # 400838 <main+0x10c>
  40081c:	b71ff0ef          	jal	40038c <printf>
  400820:	fe9414e3          	bne	s0,s1,400808 <main+0xdc>
  400824:	0000006f          	j	400824 <main+0xf8>
