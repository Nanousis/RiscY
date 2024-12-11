
builds/build2/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	a0010113          	addi	sp,sp,-1536 # 401a00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	708000ef          	jal	400718 <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <writeRam>:
  40001c:	00251513          	slli	a0,a0,0x2
  400020:	400007b7          	lui	a5,0x40000
  400024:	00f50533          	add	a0,a0,a5
  400028:	00b52023          	sw	a1,0(a0)
  40002c:	00b52023          	sw	a1,0(a0)
  400030:	00b52023          	sw	a1,0(a0)
  400034:	00b52023          	sw	a1,0(a0)
  400038:	00b52023          	sw	a1,0(a0)
  40003c:	00b52023          	sw	a1,0(a0)
  400040:	00b52023          	sw	a1,0(a0)
  400044:	00b52023          	sw	a1,0(a0)
  400048:	00008067          	ret

0040004c <readRam>:
  40004c:	400007b7          	lui	a5,0x40000
  400050:	00251513          	slli	a0,a0,0x2
  400054:	00f50533          	add	a0,a0,a5
  400058:	00052783          	lw	a5,0(a0)
  40005c:	00052783          	lw	a5,0(a0)
  400060:	00052783          	lw	a5,0(a0)
  400064:	00052783          	lw	a5,0(a0)
  400068:	00052783          	lw	a5,0(a0)
  40006c:	00052783          	lw	a5,0(a0)
  400070:	00052783          	lw	a5,0(a0)
  400074:	00052783          	lw	a5,0(a0)
  400078:	00052503          	lw	a0,0(a0)
  40007c:	00008067          	ret

00400080 <memcpy>:
  400080:	00000793          	li	a5,0
  400084:	00c7c463          	blt	a5,a2,40008c <memcpy+0xc>
  400088:	00008067          	ret
  40008c:	00f58733          	add	a4,a1,a5
  400090:	00074683          	lbu	a3,0(a4)
  400094:	00f50733          	add	a4,a0,a5
  400098:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  40009c:	00d70023          	sb	a3,0(a4)
  4000a0:	fe5ff06f          	j	400084 <memcpy+0x4>

004000a4 <memset>:
  4000a4:	00c50633          	add	a2,a0,a2
  4000a8:	00050793          	mv	a5,a0
  4000ac:	00c79463          	bne	a5,a2,4000b4 <memset+0x10>
  4000b0:	00008067          	ret
  4000b4:	00178793          	addi	a5,a5,1
  4000b8:	feb78fa3          	sb	a1,-1(a5)
  4000bc:	ff1ff06f          	j	4000ac <memset+0x8>

004000c0 <getButtonDown>:
  4000c0:	890007b7          	lui	a5,0x89000
  4000c4:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  4000c8:	00008067          	ret

004000cc <getButtonUp>:
  4000cc:	890007b7          	lui	a5,0x89000
  4000d0:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  4000d4:	00008067          	ret

004000d8 <getButtonLeft>:
  4000d8:	890007b7          	lui	a5,0x89000
  4000dc:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4000e0:	00008067          	ret

004000e4 <getButtonRight>:
  4000e4:	890007b7          	lui	a5,0x89000
  4000e8:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  4000ec:	00008067          	ret

004000f0 <putch>:
  4000f0:	4c000793          	li	a5,1216
  4000f4:	02a7e263          	bltu	a5,a0,400118 <putch+0x28>
  4000f8:	00861613          	slli	a2,a2,0x8
  4000fc:	880007b7          	lui	a5,0x88000
  400100:	00151513          	slli	a0,a0,0x1
  400104:	00f50533          	add	a0,a0,a5
  400108:	00b665b3          	or	a1,a2,a1
  40010c:	00b51023          	sh	a1,0(a0)
  400110:	00100513          	li	a0,1
  400114:	00008067          	ret
  400118:	00000513          	li	a0,0
  40011c:	00008067          	ret

00400120 <printString>:
  400120:	fe010113          	addi	sp,sp,-32
  400124:	01312623          	sw	s3,12(sp)
  400128:	01412423          	sw	s4,8(sp)
  40012c:	00112e23          	sw	ra,28(sp)
  400130:	00812c23          	sw	s0,24(sp)
  400134:	00912a23          	sw	s1,20(sp)
  400138:	01212823          	sw	s2,16(sp)
  40013c:	01512223          	sw	s5,4(sp)
  400140:	01612023          	sw	s6,0(sp)
  400144:	00050a13          	mv	s4,a0
  400148:	00058993          	mv	s3,a1
  40014c:	06060c63          	beqz	a2,4001c4 <printString+0xa4>
  400150:	00060413          	mv	s0,a2
  400154:	00000913          	li	s2,0
  400158:	00000493          	li	s1,0
  40015c:	00100a93          	li	s5,1
  400160:	00f00b13          	li	s6,15
  400164:	0280006f          	j	40018c <printString+0x6c>
  400168:	00040613          	mv	a2,s0
  40016c:	009a0533          	add	a0,s4,s1
  400170:	f81ff0ef          	jal	4000f0 <putch>
  400174:	06050263          	beqz	a0,4001d8 <printString+0xb8>
  400178:	00148493          	addi	s1,s1,1
  40017c:	01591863          	bne	s2,s5,40018c <printString+0x6c>
  400180:	00140413          	addi	s0,s0,1
  400184:	0ff47413          	zext.b	s0,s0
  400188:	048b6463          	bltu	s6,s0,4001d0 <printString+0xb0>
  40018c:	009987b3          	add	a5,s3,s1
  400190:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  400194:	00048513          	mv	a0,s1
  400198:	fc0598e3          	bnez	a1,400168 <printString+0x48>
  40019c:	01c12083          	lw	ra,28(sp)
  4001a0:	01812403          	lw	s0,24(sp)
  4001a4:	01412483          	lw	s1,20(sp)
  4001a8:	01012903          	lw	s2,16(sp)
  4001ac:	00c12983          	lw	s3,12(sp)
  4001b0:	00812a03          	lw	s4,8(sp)
  4001b4:	00412a83          	lw	s5,4(sp)
  4001b8:	00012b03          	lw	s6,0(sp)
  4001bc:	02010113          	addi	sp,sp,32
  4001c0:	00008067          	ret
  4001c4:	00100913          	li	s2,1
  4001c8:	00090413          	mv	s0,s2
  4001cc:	f8dff06f          	j	400158 <printString+0x38>
  4001d0:	00090413          	mv	s0,s2
  4001d4:	fb9ff06f          	j	40018c <printString+0x6c>
  4001d8:	00000513          	li	a0,0
  4001dc:	fc1ff06f          	j	40019c <printString+0x7c>

004001e0 <printHex>:
  4001e0:	fd010113          	addi	sp,sp,-48
  4001e4:	02812423          	sw	s0,40(sp)
  4001e8:	00058413          	mv	s0,a1
  4001ec:	004005b7          	lui	a1,0x400
  4001f0:	02912223          	sw	s1,36(sp)
  4001f4:	03212023          	sw	s2,32(sp)
  4001f8:	7c858593          	addi	a1,a1,1992 # 4007c8 <_etext+0xb0>
  4001fc:	00050493          	mv	s1,a0
  400200:	00060913          	mv	s2,a2
  400204:	00c10513          	addi	a0,sp,12
  400208:	01100613          	li	a2,17
  40020c:	02112623          	sw	ra,44(sp)
  400210:	e71ff0ef          	jal	400080 <memcpy>
  400214:	202027b7          	lui	a5,0x20202
  400218:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  40021c:	00f12023          	sw	a5,0(sp)
  400220:	00f12223          	sw	a5,4(sp)
  400224:	00010423          	sb	zero,8(sp)
  400228:	00700793          	li	a5,7
  40022c:	00010593          	mv	a1,sp
  400230:	fff00693          	li	a3,-1
  400234:	00f47713          	andi	a4,s0,15
  400238:	02070713          	addi	a4,a4,32
  40023c:	00270733          	add	a4,a4,sp
  400240:	fec74703          	lbu	a4,-20(a4)
  400244:	00f58633          	add	a2,a1,a5
  400248:	fff78793          	addi	a5,a5,-1
  40024c:	00e60023          	sb	a4,0(a2)
  400250:	40445413          	srai	s0,s0,0x4
  400254:	fed790e3          	bne	a5,a3,400234 <printHex+0x54>
  400258:	00090613          	mv	a2,s2
  40025c:	00048513          	mv	a0,s1
  400260:	ec1ff0ef          	jal	400120 <printString>
  400264:	02c12083          	lw	ra,44(sp)
  400268:	02812403          	lw	s0,40(sp)
  40026c:	02412483          	lw	s1,36(sp)
  400270:	02012903          	lw	s2,32(sp)
  400274:	0ff57513          	zext.b	a0,a0
  400278:	03010113          	addi	sp,sp,48
  40027c:	00008067          	ret

00400280 <printDec>:
  400280:	fd010113          	addi	sp,sp,-48
  400284:	02812423          	sw	s0,40(sp)
  400288:	00058413          	mv	s0,a1
  40028c:	004005b7          	lui	a1,0x400
  400290:	02912223          	sw	s1,36(sp)
  400294:	03212023          	sw	s2,32(sp)
  400298:	00050493          	mv	s1,a0
  40029c:	00060913          	mv	s2,a2
  4002a0:	70458593          	addi	a1,a1,1796 # 400704 <resetScreenVector+0xc>
  4002a4:	01400613          	li	a2,20
  4002a8:	00c10513          	addi	a0,sp,12
  4002ac:	02112623          	sw	ra,44(sp)
  4002b0:	dd1ff0ef          	jal	400080 <memcpy>
  4002b4:	000187b7          	lui	a5,0x18
  4002b8:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1809f>
  4002bc:	0287fa63          	bgeu	a5,s0,4002f0 <printDec+0x70>
  4002c0:	004005b7          	lui	a1,0x400
  4002c4:	00090613          	mv	a2,s2
  4002c8:	7dc58593          	addi	a1,a1,2012 # 4007dc <_etext+0xc4>
  4002cc:	00048513          	mv	a0,s1
  4002d0:	e51ff0ef          	jal	400120 <printString>
  4002d4:	02c12083          	lw	ra,44(sp)
  4002d8:	02812403          	lw	s0,40(sp)
  4002dc:	02412483          	lw	s1,36(sp)
  4002e0:	02012903          	lw	s2,32(sp)
  4002e4:	0ff57513          	zext.b	a0,a0
  4002e8:	03010113          	addi	sp,sp,48
  4002ec:	00008067          	ret
  4002f0:	00100613          	li	a2,1
  4002f4:	00c10713          	addi	a4,sp,12
  4002f8:	00000793          	li	a5,0
  4002fc:	00060513          	mv	a0,a2
  400300:	00072583          	lw	a1,0(a4)
  400304:	00000693          	li	a3,0
  400308:	06b47263          	bgeu	s0,a1,40036c <printDec+0xec>
  40030c:	00069663          	bnez	a3,400318 <printDec+0x98>
  400310:	00a58463          	beq	a1,a0,400318 <printDec+0x98>
  400314:	00061e63          	bnez	a2,400330 <printDec+0xb0>
  400318:	02078613          	addi	a2,a5,32
  40031c:	00260633          	add	a2,a2,sp
  400320:	03068693          	addi	a3,a3,48
  400324:	fed60223          	sb	a3,-28(a2)
  400328:	00178793          	addi	a5,a5,1
  40032c:	00000613          	li	a2,0
  400330:	00470713          	addi	a4,a4,4
  400334:	02010693          	addi	a3,sp,32
  400338:	fcd714e3          	bne	a4,a3,400300 <printDec+0x80>
  40033c:	00060c63          	beqz	a2,400354 <printDec+0xd4>
  400340:	02078713          	addi	a4,a5,32
  400344:	00270733          	add	a4,a4,sp
  400348:	03000693          	li	a3,48
  40034c:	fed70223          	sb	a3,-28(a4)
  400350:	00178793          	addi	a5,a5,1
  400354:	02078793          	addi	a5,a5,32
  400358:	002787b3          	add	a5,a5,sp
  40035c:	fe078223          	sb	zero,-28(a5)
  400360:	00090613          	mv	a2,s2
  400364:	00410593          	addi	a1,sp,4
  400368:	f65ff06f          	j	4002cc <printDec+0x4c>
  40036c:	40b40433          	sub	s0,s0,a1
  400370:	00168693          	addi	a3,a3,1
  400374:	f95ff06f          	j	400308 <printDec+0x88>

00400378 <printf>:
  400378:	fa010113          	addi	sp,sp,-96
  40037c:	04f12a23          	sw	a5,84(sp)
  400380:	04410793          	addi	a5,sp,68
  400384:	02812c23          	sw	s0,56(sp)
  400388:	02912a23          	sw	s1,52(sp)
  40038c:	03212823          	sw	s2,48(sp)
  400390:	03312623          	sw	s3,44(sp)
  400394:	03412423          	sw	s4,40(sp)
  400398:	03512223          	sw	s5,36(sp)
  40039c:	03612023          	sw	s6,32(sp)
  4003a0:	01812c23          	sw	s8,24(sp)
  4003a4:	02112e23          	sw	ra,60(sp)
  4003a8:	01712e23          	sw	s7,28(sp)
  4003ac:	00050493          	mv	s1,a0
  4003b0:	04b12223          	sw	a1,68(sp)
  4003b4:	04c12423          	sw	a2,72(sp)
  4003b8:	04d12623          	sw	a3,76(sp)
  4003bc:	04e12823          	sw	a4,80(sp)
  4003c0:	05012c23          	sw	a6,88(sp)
  4003c4:	05112e23          	sw	a7,92(sp)
  4003c8:	00f12623          	sw	a5,12(sp)
  4003cc:	00000c13          	li	s8,0
  4003d0:	00400437          	lui	s0,0x400
  4003d4:	00a00993          	li	s3,10
  4003d8:	02500913          	li	s2,37
  4003dc:	07800a13          	li	s4,120
  4003e0:	06400a93          	li	s5,100
  4003e4:	06300b13          	li	s6,99
  4003e8:	018487b3          	add	a5,s1,s8
  4003ec:	0007c583          	lbu	a1,0(a5)
  4003f0:	7e241503          	lh	a0,2018(s0) # 4007e2 <screenPos>
  4003f4:	02059a63          	bnez	a1,400428 <printf+0xb0>
  4003f8:	03c12083          	lw	ra,60(sp)
  4003fc:	03812403          	lw	s0,56(sp)
  400400:	03412483          	lw	s1,52(sp)
  400404:	03012903          	lw	s2,48(sp)
  400408:	02c12983          	lw	s3,44(sp)
  40040c:	02812a03          	lw	s4,40(sp)
  400410:	02412a83          	lw	s5,36(sp)
  400414:	02012b03          	lw	s6,32(sp)
  400418:	01c12b83          	lw	s7,28(sp)
  40041c:	01812c03          	lw	s8,24(sp)
  400420:	06010113          	addi	sp,sp,96
  400424:	00008067          	ret
  400428:	001c0b93          	addi	s7,s8,1
  40042c:	01359e63          	bne	a1,s3,400448 <printf+0xd0>
  400430:	fc057793          	andi	a5,a0,-64
  400434:	04078793          	addi	a5,a5,64
  400438:	01079793          	slli	a5,a5,0x10
  40043c:	4107d793          	srai	a5,a5,0x10
  400440:	000c0b93          	mv	s7,s8
  400444:	0380006f          	j	40047c <printf+0x104>
  400448:	0d259263          	bne	a1,s2,40050c <printf+0x194>
  40044c:	0017c783          	lbu	a5,1(a5)
  400450:	03479c63          	bne	a5,s4,400488 <printf+0x110>
  400454:	00c12783          	lw	a5,12(sp)
  400458:	00f00613          	li	a2,15
  40045c:	0007a583          	lw	a1,0(a5)
  400460:	00478713          	addi	a4,a5,4
  400464:	00e12623          	sw	a4,12(sp)
  400468:	d79ff0ef          	jal	4001e0 <printHex>
  40046c:	7e245783          	lhu	a5,2018(s0)
  400470:	00f507b3          	add	a5,a0,a5
  400474:	01079793          	slli	a5,a5,0x10
  400478:	4107d793          	srai	a5,a5,0x10
  40047c:	7ef41123          	sh	a5,2018(s0)
  400480:	001b8c13          	addi	s8,s7,1
  400484:	f65ff06f          	j	4003e8 <printf+0x70>
  400488:	03579063          	bne	a5,s5,4004a8 <printf+0x130>
  40048c:	00c12783          	lw	a5,12(sp)
  400490:	00f00613          	li	a2,15
  400494:	0007a583          	lw	a1,0(a5)
  400498:	00478713          	addi	a4,a5,4
  40049c:	00e12623          	sw	a4,12(sp)
  4004a0:	de1ff0ef          	jal	400280 <printDec>
  4004a4:	fc9ff06f          	j	40046c <printf+0xf4>
  4004a8:	03679463          	bne	a5,s6,4004d0 <printf+0x158>
  4004ac:	00c12783          	lw	a5,12(sp)
  4004b0:	00f00613          	li	a2,15
  4004b4:	0007c583          	lbu	a1,0(a5)
  4004b8:	00478713          	addi	a4,a5,4
  4004bc:	00e12623          	sw	a4,12(sp)
  4004c0:	c31ff0ef          	jal	4000f0 <putch>
  4004c4:	7e245783          	lhu	a5,2018(s0)
  4004c8:	00178793          	addi	a5,a5,1
  4004cc:	fa9ff06f          	j	400474 <printf+0xfc>
  4004d0:	07300713          	li	a4,115
  4004d4:	02e79063          	bne	a5,a4,4004f4 <printf+0x17c>
  4004d8:	00c12783          	lw	a5,12(sp)
  4004dc:	00f00613          	li	a2,15
  4004e0:	0007a583          	lw	a1,0(a5)
  4004e4:	00478713          	addi	a4,a5,4
  4004e8:	00e12623          	sw	a4,12(sp)
  4004ec:	c35ff0ef          	jal	400120 <printString>
  4004f0:	f7dff06f          	j	40046c <printf+0xf4>
  4004f4:	00f00613          	li	a2,15
  4004f8:	00090593          	mv	a1,s2
  4004fc:	bf5ff0ef          	jal	4000f0 <putch>
  400500:	7e245783          	lhu	a5,2018(s0)
  400504:	00178793          	addi	a5,a5,1
  400508:	f31ff06f          	j	400438 <printf+0xc0>
  40050c:	00f00613          	li	a2,15
  400510:	fedff06f          	j	4004fc <printf+0x184>

00400514 <printfSCR>:
  400514:	f9010113          	addi	sp,sp,-112
  400518:	06f12223          	sw	a5,100(sp)
  40051c:	05c10793          	addi	a5,sp,92
  400520:	04812423          	sw	s0,72(sp)
  400524:	04912223          	sw	s1,68(sp)
  400528:	05212023          	sw	s2,64(sp)
  40052c:	03412c23          	sw	s4,56(sp)
  400530:	03512a23          	sw	s5,52(sp)
  400534:	03612823          	sw	s6,48(sp)
  400538:	03712623          	sw	s7,44(sp)
  40053c:	03812423          	sw	s8,40(sp)
  400540:	03912223          	sw	s9,36(sp)
  400544:	03a12023          	sw	s10,32(sp)
  400548:	01b12e23          	sw	s11,28(sp)
  40054c:	04112623          	sw	ra,76(sp)
  400550:	03312e23          	sw	s3,60(sp)
  400554:	00050a93          	mv	s5,a0
  400558:	00058493          	mv	s1,a1
  40055c:	00060a13          	mv	s4,a2
  400560:	04d12e23          	sw	a3,92(sp)
  400564:	06e12023          	sw	a4,96(sp)
  400568:	07012423          	sw	a6,104(sp)
  40056c:	07112623          	sw	a7,108(sp)
  400570:	00f12623          	sw	a5,12(sp)
  400574:	00000913          	li	s2,0
  400578:	00000413          	li	s0,0
  40057c:	00a00b93          	li	s7,10
  400580:	02500b13          	li	s6,37
  400584:	07800c13          	li	s8,120
  400588:	06400c93          	li	s9,100
  40058c:	06300d13          	li	s10,99
  400590:	07300d93          	li	s11,115
  400594:	012a07b3          	add	a5,s4,s2
  400598:	0007c583          	lbu	a1,0(a5)
  40059c:	04059263          	bnez	a1,4005e0 <printfSCR+0xcc>
  4005a0:	04c12083          	lw	ra,76(sp)
  4005a4:	00040513          	mv	a0,s0
  4005a8:	04812403          	lw	s0,72(sp)
  4005ac:	04412483          	lw	s1,68(sp)
  4005b0:	04012903          	lw	s2,64(sp)
  4005b4:	03c12983          	lw	s3,60(sp)
  4005b8:	03812a03          	lw	s4,56(sp)
  4005bc:	03412a83          	lw	s5,52(sp)
  4005c0:	03012b03          	lw	s6,48(sp)
  4005c4:	02c12b83          	lw	s7,44(sp)
  4005c8:	02812c03          	lw	s8,40(sp)
  4005cc:	02412c83          	lw	s9,36(sp)
  4005d0:	02012d03          	lw	s10,32(sp)
  4005d4:	01c12d83          	lw	s11,28(sp)
  4005d8:	07010113          	addi	sp,sp,112
  4005dc:	00008067          	ret
  4005e0:	00190993          	addi	s3,s2,1
  4005e4:	01759a63          	bne	a1,s7,4005f8 <printfSCR+0xe4>
  4005e8:	fc047413          	andi	s0,s0,-64
  4005ec:	04040413          	addi	s0,s0,64
  4005f0:	00090993          	mv	s3,s2
  4005f4:	0740006f          	j	400668 <printfSCR+0x154>
  4005f8:	01540533          	add	a0,s0,s5
  4005fc:	0b659463          	bne	a1,s6,4006a4 <printfSCR+0x190>
  400600:	0017c783          	lbu	a5,1(a5)
  400604:	03879263          	bne	a5,s8,400628 <printfSCR+0x114>
  400608:	00c12783          	lw	a5,12(sp)
  40060c:	00048613          	mv	a2,s1
  400610:	0007a583          	lw	a1,0(a5)
  400614:	00478713          	addi	a4,a5,4
  400618:	00e12623          	sw	a4,12(sp)
  40061c:	bc5ff0ef          	jal	4001e0 <printHex>
  400620:	00a40433          	add	s0,s0,a0
  400624:	0440006f          	j	400668 <printfSCR+0x154>
  400628:	03979063          	bne	a5,s9,400648 <printfSCR+0x134>
  40062c:	00c12783          	lw	a5,12(sp)
  400630:	00048613          	mv	a2,s1
  400634:	0007a583          	lw	a1,0(a5)
  400638:	00478713          	addi	a4,a5,4
  40063c:	00e12623          	sw	a4,12(sp)
  400640:	c41ff0ef          	jal	400280 <printDec>
  400644:	fddff06f          	j	400620 <printfSCR+0x10c>
  400648:	03a79463          	bne	a5,s10,400670 <printfSCR+0x15c>
  40064c:	00c12783          	lw	a5,12(sp)
  400650:	00048613          	mv	a2,s1
  400654:	00140413          	addi	s0,s0,1
  400658:	0007c583          	lbu	a1,0(a5)
  40065c:	00478713          	addi	a4,a5,4
  400660:	00e12623          	sw	a4,12(sp)
  400664:	a8dff0ef          	jal	4000f0 <putch>
  400668:	00198913          	addi	s2,s3,1
  40066c:	f29ff06f          	j	400594 <printfSCR+0x80>
  400670:	03b79063          	bne	a5,s11,400690 <printfSCR+0x17c>
  400674:	00c12783          	lw	a5,12(sp)
  400678:	00048613          	mv	a2,s1
  40067c:	0007a583          	lw	a1,0(a5)
  400680:	00478713          	addi	a4,a5,4
  400684:	00e12623          	sw	a4,12(sp)
  400688:	a99ff0ef          	jal	400120 <printString>
  40068c:	f95ff06f          	j	400620 <printfSCR+0x10c>
  400690:	00048613          	mv	a2,s1
  400694:	000b0593          	mv	a1,s6
  400698:	a59ff0ef          	jal	4000f0 <putch>
  40069c:	00140413          	addi	s0,s0,1
  4006a0:	f51ff06f          	j	4005f0 <printfSCR+0xdc>
  4006a4:	00048613          	mv	a2,s1
  4006a8:	ff1ff06f          	j	400698 <printfSCR+0x184>

004006ac <clearScreen>:
  4006ac:	ff010113          	addi	sp,sp,-16
  4006b0:	00812423          	sw	s0,8(sp)
  4006b4:	00912223          	sw	s1,4(sp)
  4006b8:	00112623          	sw	ra,12(sp)
  4006bc:	00000413          	li	s0,0
  4006c0:	4c000493          	li	s1,1216
  4006c4:	00040513          	mv	a0,s0
  4006c8:	00f00613          	li	a2,15
  4006cc:	02000593          	li	a1,32
  4006d0:	00140413          	addi	s0,s0,1
  4006d4:	a1dff0ef          	jal	4000f0 <putch>
  4006d8:	fe9416e3          	bne	s0,s1,4006c4 <clearScreen+0x18>
  4006dc:	00c12083          	lw	ra,12(sp)
  4006e0:	00812403          	lw	s0,8(sp)
  4006e4:	004007b7          	lui	a5,0x400
  4006e8:	7e079123          	sh	zero,2018(a5) # 4007e2 <screenPos>
  4006ec:	00412483          	lw	s1,4(sp)
  4006f0:	01010113          	addi	sp,sp,16
  4006f4:	00008067          	ret

004006f8 <resetScreenVector>:
  4006f8:	004007b7          	lui	a5,0x400
  4006fc:	7e079123          	sh	zero,2018(a5) # 4007e2 <screenPos>
  400700:	00008067          	ret
  400704:	2710                	.insn	2, 0x2710
  400706:	0000                	.insn	2, 0x
  400708:	03e8                	.insn	2, 0x03e8
  40070a:	0000                	.insn	2, 0x
  40070c:	0064                	.insn	2, 0x0064
  40070e:	0000                	.insn	2, 0x
  400710:	000a                	.insn	2, 0x000a
  400712:	0000                	.insn	2, 0x
  400714:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400718 <main>:
  400718:	876545b7          	lui	a1,0x87654
  40071c:	ff010113          	addi	sp,sp,-16
  400720:	32158593          	addi	a1,a1,801 # 87654321 <_stack_end+0x87252321>
  400724:	00000513          	li	a0,0
  400728:	00112623          	sw	ra,12(sp)
  40072c:	00812423          	sw	s0,8(sp)
  400730:	8edff0ef          	jal	40001c <writeRam>
  400734:	123455b7          	lui	a1,0x12345
  400738:	67858593          	addi	a1,a1,1656 # 12345678 <_stack_end+0x11f43678>
  40073c:	00100513          	li	a0,1
  400740:	8ddff0ef          	jal	40001c <writeRam>
  400744:	00400537          	lui	a0,0x400
  400748:	7a050513          	addi	a0,a0,1952 # 4007a0 <main+0x88>
  40074c:	c2dff0ef          	jal	400378 <printf>
  400750:	00000513          	li	a0,0
  400754:	8f9ff0ef          	jal	40004c <readRam>
  400758:	00400437          	lui	s0,0x400
  40075c:	00050593          	mv	a1,a0
  400760:	7b040513          	addi	a0,s0,1968 # 4007b0 <main+0x98>
  400764:	c15ff0ef          	jal	400378 <printf>
  400768:	00100513          	li	a0,1
  40076c:	8e1ff0ef          	jal	40004c <readRam>
  400770:	00050593          	mv	a1,a0
  400774:	7b040513          	addi	a0,s0,1968
  400778:	c01ff0ef          	jal	400378 <printf>
  40077c:	00200513          	li	a0,2
  400780:	8cdff0ef          	jal	40004c <readRam>
  400784:	00050593          	mv	a1,a0
  400788:	7b040513          	addi	a0,s0,1968
  40078c:	bedff0ef          	jal	400378 <printf>
  400790:	00400537          	lui	a0,0x400
  400794:	7b450513          	addi	a0,a0,1972 # 4007b4 <main+0x9c>
  400798:	be1ff0ef          	jal	400378 <printf>
  40079c:	0000006f          	j	40079c <main+0x84>
