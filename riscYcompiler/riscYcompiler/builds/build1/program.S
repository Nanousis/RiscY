
builds/build1/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	a0010113          	addi	sp,sp,-1536 # 401a00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	6d8000ef          	jal	4006e8 <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <writeRam>:
  40001c:	00251513          	slli	a0,a0,0x2
  400020:	400007b7          	lui	a5,0x40000
  400024:	00f50533          	add	a0,a0,a5
  400028:	00b52023          	sw	a1,0(a0)
  40002c:	00b52023          	sw	a1,0(a0)
  400030:	00008067          	ret

00400034 <readRam>:
  400034:	400007b7          	lui	a5,0x40000
  400038:	00251513          	slli	a0,a0,0x2
  40003c:	00f50533          	add	a0,a0,a5
  400040:	00052783          	lw	a5,0(a0)
  400044:	00052783          	lw	a5,0(a0)
  400048:	00052503          	lw	a0,0(a0)
  40004c:	00008067          	ret

00400050 <memcpy>:
  400050:	00000793          	li	a5,0
  400054:	00c7c463          	blt	a5,a2,40005c <memcpy+0xc>
  400058:	00008067          	ret
  40005c:	00f58733          	add	a4,a1,a5
  400060:	00074683          	lbu	a3,0(a4)
  400064:	00f50733          	add	a4,a0,a5
  400068:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  40006c:	00d70023          	sb	a3,0(a4)
  400070:	fe5ff06f          	j	400054 <memcpy+0x4>

00400074 <memset>:
  400074:	00c50633          	add	a2,a0,a2
  400078:	00050793          	mv	a5,a0
  40007c:	00c79463          	bne	a5,a2,400084 <memset+0x10>
  400080:	00008067          	ret
  400084:	00178793          	addi	a5,a5,1
  400088:	feb78fa3          	sb	a1,-1(a5)
  40008c:	ff1ff06f          	j	40007c <memset+0x8>

00400090 <getButtonDown>:
  400090:	890007b7          	lui	a5,0x89000
  400094:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  400098:	00008067          	ret

0040009c <getButtonUp>:
  40009c:	890007b7          	lui	a5,0x89000
  4000a0:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  4000a4:	00008067          	ret

004000a8 <getButtonLeft>:
  4000a8:	890007b7          	lui	a5,0x89000
  4000ac:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4000b0:	00008067          	ret

004000b4 <getButtonRight>:
  4000b4:	890007b7          	lui	a5,0x89000
  4000b8:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  4000bc:	00008067          	ret

004000c0 <putch>:
  4000c0:	4c000793          	li	a5,1216
  4000c4:	02a7e263          	bltu	a5,a0,4000e8 <putch+0x28>
  4000c8:	00861613          	slli	a2,a2,0x8
  4000cc:	880007b7          	lui	a5,0x88000
  4000d0:	00151513          	slli	a0,a0,0x1
  4000d4:	00f50533          	add	a0,a0,a5
  4000d8:	00b665b3          	or	a1,a2,a1
  4000dc:	00b51023          	sh	a1,0(a0)
  4000e0:	00100513          	li	a0,1
  4000e4:	00008067          	ret
  4000e8:	00000513          	li	a0,0
  4000ec:	00008067          	ret

004000f0 <printString>:
  4000f0:	fe010113          	addi	sp,sp,-32
  4000f4:	01312623          	sw	s3,12(sp)
  4000f8:	01412423          	sw	s4,8(sp)
  4000fc:	00112e23          	sw	ra,28(sp)
  400100:	00812c23          	sw	s0,24(sp)
  400104:	00912a23          	sw	s1,20(sp)
  400108:	01212823          	sw	s2,16(sp)
  40010c:	01512223          	sw	s5,4(sp)
  400110:	01612023          	sw	s6,0(sp)
  400114:	00050a13          	mv	s4,a0
  400118:	00058993          	mv	s3,a1
  40011c:	06060c63          	beqz	a2,400194 <printString+0xa4>
  400120:	00060413          	mv	s0,a2
  400124:	00000913          	li	s2,0
  400128:	00000493          	li	s1,0
  40012c:	00100a93          	li	s5,1
  400130:	00f00b13          	li	s6,15
  400134:	0280006f          	j	40015c <printString+0x6c>
  400138:	00040613          	mv	a2,s0
  40013c:	009a0533          	add	a0,s4,s1
  400140:	f81ff0ef          	jal	4000c0 <putch>
  400144:	06050263          	beqz	a0,4001a8 <printString+0xb8>
  400148:	00148493          	addi	s1,s1,1
  40014c:	01591863          	bne	s2,s5,40015c <printString+0x6c>
  400150:	00140413          	addi	s0,s0,1
  400154:	0ff47413          	zext.b	s0,s0
  400158:	048b6463          	bltu	s6,s0,4001a0 <printString+0xb0>
  40015c:	009987b3          	add	a5,s3,s1
  400160:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  400164:	00048513          	mv	a0,s1
  400168:	fc0598e3          	bnez	a1,400138 <printString+0x48>
  40016c:	01c12083          	lw	ra,28(sp)
  400170:	01812403          	lw	s0,24(sp)
  400174:	01412483          	lw	s1,20(sp)
  400178:	01012903          	lw	s2,16(sp)
  40017c:	00c12983          	lw	s3,12(sp)
  400180:	00812a03          	lw	s4,8(sp)
  400184:	00412a83          	lw	s5,4(sp)
  400188:	00012b03          	lw	s6,0(sp)
  40018c:	02010113          	addi	sp,sp,32
  400190:	00008067          	ret
  400194:	00100913          	li	s2,1
  400198:	00090413          	mv	s0,s2
  40019c:	f8dff06f          	j	400128 <printString+0x38>
  4001a0:	00090413          	mv	s0,s2
  4001a4:	fb9ff06f          	j	40015c <printString+0x6c>
  4001a8:	00000513          	li	a0,0
  4001ac:	fc1ff06f          	j	40016c <printString+0x7c>

004001b0 <printHex>:
  4001b0:	fd010113          	addi	sp,sp,-48
  4001b4:	02812423          	sw	s0,40(sp)
  4001b8:	00058413          	mv	s0,a1
  4001bc:	004005b7          	lui	a1,0x400
  4001c0:	02912223          	sw	s1,36(sp)
  4001c4:	03212023          	sw	s2,32(sp)
  4001c8:	7a858593          	addi	a1,a1,1960 # 4007a8 <_etext+0xc0>
  4001cc:	00050493          	mv	s1,a0
  4001d0:	00060913          	mv	s2,a2
  4001d4:	00c10513          	addi	a0,sp,12
  4001d8:	01100613          	li	a2,17
  4001dc:	02112623          	sw	ra,44(sp)
  4001e0:	e71ff0ef          	jal	400050 <memcpy>
  4001e4:	202027b7          	lui	a5,0x20202
  4001e8:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  4001ec:	00f12023          	sw	a5,0(sp)
  4001f0:	00f12223          	sw	a5,4(sp)
  4001f4:	00010423          	sb	zero,8(sp)
  4001f8:	00700793          	li	a5,7
  4001fc:	00010593          	mv	a1,sp
  400200:	fff00693          	li	a3,-1
  400204:	00f47713          	andi	a4,s0,15
  400208:	02070713          	addi	a4,a4,32
  40020c:	00270733          	add	a4,a4,sp
  400210:	fec74703          	lbu	a4,-20(a4)
  400214:	00f58633          	add	a2,a1,a5
  400218:	fff78793          	addi	a5,a5,-1
  40021c:	00e60023          	sb	a4,0(a2)
  400220:	40445413          	srai	s0,s0,0x4
  400224:	fed790e3          	bne	a5,a3,400204 <printHex+0x54>
  400228:	00090613          	mv	a2,s2
  40022c:	00048513          	mv	a0,s1
  400230:	ec1ff0ef          	jal	4000f0 <printString>
  400234:	02c12083          	lw	ra,44(sp)
  400238:	02812403          	lw	s0,40(sp)
  40023c:	02412483          	lw	s1,36(sp)
  400240:	02012903          	lw	s2,32(sp)
  400244:	0ff57513          	zext.b	a0,a0
  400248:	03010113          	addi	sp,sp,48
  40024c:	00008067          	ret

00400250 <printDec>:
  400250:	fd010113          	addi	sp,sp,-48
  400254:	02812423          	sw	s0,40(sp)
  400258:	00058413          	mv	s0,a1
  40025c:	004005b7          	lui	a1,0x400
  400260:	02912223          	sw	s1,36(sp)
  400264:	03212023          	sw	s2,32(sp)
  400268:	00050493          	mv	s1,a0
  40026c:	00060913          	mv	s2,a2
  400270:	6d458593          	addi	a1,a1,1748 # 4006d4 <resetScreenVector+0xc>
  400274:	01400613          	li	a2,20
  400278:	00c10513          	addi	a0,sp,12
  40027c:	02112623          	sw	ra,44(sp)
  400280:	dd1ff0ef          	jal	400050 <memcpy>
  400284:	000187b7          	lui	a5,0x18
  400288:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1809f>
  40028c:	0287fa63          	bgeu	a5,s0,4002c0 <printDec+0x70>
  400290:	004005b7          	lui	a1,0x400
  400294:	00090613          	mv	a2,s2
  400298:	7bc58593          	addi	a1,a1,1980 # 4007bc <_etext+0xd4>
  40029c:	00048513          	mv	a0,s1
  4002a0:	e51ff0ef          	jal	4000f0 <printString>
  4002a4:	02c12083          	lw	ra,44(sp)
  4002a8:	02812403          	lw	s0,40(sp)
  4002ac:	02412483          	lw	s1,36(sp)
  4002b0:	02012903          	lw	s2,32(sp)
  4002b4:	0ff57513          	zext.b	a0,a0
  4002b8:	03010113          	addi	sp,sp,48
  4002bc:	00008067          	ret
  4002c0:	00100613          	li	a2,1
  4002c4:	00c10713          	addi	a4,sp,12
  4002c8:	00000793          	li	a5,0
  4002cc:	00060513          	mv	a0,a2
  4002d0:	00072583          	lw	a1,0(a4)
  4002d4:	00000693          	li	a3,0
  4002d8:	06b47263          	bgeu	s0,a1,40033c <printDec+0xec>
  4002dc:	00069663          	bnez	a3,4002e8 <printDec+0x98>
  4002e0:	00a58463          	beq	a1,a0,4002e8 <printDec+0x98>
  4002e4:	00061e63          	bnez	a2,400300 <printDec+0xb0>
  4002e8:	02078613          	addi	a2,a5,32
  4002ec:	00260633          	add	a2,a2,sp
  4002f0:	03068693          	addi	a3,a3,48
  4002f4:	fed60223          	sb	a3,-28(a2)
  4002f8:	00178793          	addi	a5,a5,1
  4002fc:	00000613          	li	a2,0
  400300:	00470713          	addi	a4,a4,4
  400304:	02010693          	addi	a3,sp,32
  400308:	fcd714e3          	bne	a4,a3,4002d0 <printDec+0x80>
  40030c:	00060c63          	beqz	a2,400324 <printDec+0xd4>
  400310:	02078713          	addi	a4,a5,32
  400314:	00270733          	add	a4,a4,sp
  400318:	03000693          	li	a3,48
  40031c:	fed70223          	sb	a3,-28(a4)
  400320:	00178793          	addi	a5,a5,1
  400324:	02078793          	addi	a5,a5,32
  400328:	002787b3          	add	a5,a5,sp
  40032c:	fe078223          	sb	zero,-28(a5)
  400330:	00090613          	mv	a2,s2
  400334:	00410593          	addi	a1,sp,4
  400338:	f65ff06f          	j	40029c <printDec+0x4c>
  40033c:	40b40433          	sub	s0,s0,a1
  400340:	00168693          	addi	a3,a3,1
  400344:	f95ff06f          	j	4002d8 <printDec+0x88>

00400348 <printf>:
  400348:	fa010113          	addi	sp,sp,-96
  40034c:	04f12a23          	sw	a5,84(sp)
  400350:	04410793          	addi	a5,sp,68
  400354:	02812c23          	sw	s0,56(sp)
  400358:	02912a23          	sw	s1,52(sp)
  40035c:	03212823          	sw	s2,48(sp)
  400360:	03312623          	sw	s3,44(sp)
  400364:	03412423          	sw	s4,40(sp)
  400368:	03512223          	sw	s5,36(sp)
  40036c:	03612023          	sw	s6,32(sp)
  400370:	01812c23          	sw	s8,24(sp)
  400374:	02112e23          	sw	ra,60(sp)
  400378:	01712e23          	sw	s7,28(sp)
  40037c:	00050493          	mv	s1,a0
  400380:	04b12223          	sw	a1,68(sp)
  400384:	04c12423          	sw	a2,72(sp)
  400388:	04d12623          	sw	a3,76(sp)
  40038c:	04e12823          	sw	a4,80(sp)
  400390:	05012c23          	sw	a6,88(sp)
  400394:	05112e23          	sw	a7,92(sp)
  400398:	00f12623          	sw	a5,12(sp)
  40039c:	00000c13          	li	s8,0
  4003a0:	00400437          	lui	s0,0x400
  4003a4:	00a00993          	li	s3,10
  4003a8:	02500913          	li	s2,37
  4003ac:	07800a13          	li	s4,120
  4003b0:	06400a93          	li	s5,100
  4003b4:	06300b13          	li	s6,99
  4003b8:	018487b3          	add	a5,s1,s8
  4003bc:	0007c583          	lbu	a1,0(a5)
  4003c0:	7c241503          	lh	a0,1986(s0) # 4007c2 <screenPos>
  4003c4:	02059a63          	bnez	a1,4003f8 <printf+0xb0>
  4003c8:	03c12083          	lw	ra,60(sp)
  4003cc:	03812403          	lw	s0,56(sp)
  4003d0:	03412483          	lw	s1,52(sp)
  4003d4:	03012903          	lw	s2,48(sp)
  4003d8:	02c12983          	lw	s3,44(sp)
  4003dc:	02812a03          	lw	s4,40(sp)
  4003e0:	02412a83          	lw	s5,36(sp)
  4003e4:	02012b03          	lw	s6,32(sp)
  4003e8:	01c12b83          	lw	s7,28(sp)
  4003ec:	01812c03          	lw	s8,24(sp)
  4003f0:	06010113          	addi	sp,sp,96
  4003f4:	00008067          	ret
  4003f8:	001c0b93          	addi	s7,s8,1
  4003fc:	01359e63          	bne	a1,s3,400418 <printf+0xd0>
  400400:	fc057793          	andi	a5,a0,-64
  400404:	04078793          	addi	a5,a5,64
  400408:	01079793          	slli	a5,a5,0x10
  40040c:	4107d793          	srai	a5,a5,0x10
  400410:	000c0b93          	mv	s7,s8
  400414:	0380006f          	j	40044c <printf+0x104>
  400418:	0d259263          	bne	a1,s2,4004dc <printf+0x194>
  40041c:	0017c783          	lbu	a5,1(a5)
  400420:	03479c63          	bne	a5,s4,400458 <printf+0x110>
  400424:	00c12783          	lw	a5,12(sp)
  400428:	00f00613          	li	a2,15
  40042c:	0007a583          	lw	a1,0(a5)
  400430:	00478713          	addi	a4,a5,4
  400434:	00e12623          	sw	a4,12(sp)
  400438:	d79ff0ef          	jal	4001b0 <printHex>
  40043c:	7c245783          	lhu	a5,1986(s0)
  400440:	00f507b3          	add	a5,a0,a5
  400444:	01079793          	slli	a5,a5,0x10
  400448:	4107d793          	srai	a5,a5,0x10
  40044c:	7cf41123          	sh	a5,1986(s0)
  400450:	001b8c13          	addi	s8,s7,1
  400454:	f65ff06f          	j	4003b8 <printf+0x70>
  400458:	03579063          	bne	a5,s5,400478 <printf+0x130>
  40045c:	00c12783          	lw	a5,12(sp)
  400460:	00f00613          	li	a2,15
  400464:	0007a583          	lw	a1,0(a5)
  400468:	00478713          	addi	a4,a5,4
  40046c:	00e12623          	sw	a4,12(sp)
  400470:	de1ff0ef          	jal	400250 <printDec>
  400474:	fc9ff06f          	j	40043c <printf+0xf4>
  400478:	03679463          	bne	a5,s6,4004a0 <printf+0x158>
  40047c:	00c12783          	lw	a5,12(sp)
  400480:	00f00613          	li	a2,15
  400484:	0007c583          	lbu	a1,0(a5)
  400488:	00478713          	addi	a4,a5,4
  40048c:	00e12623          	sw	a4,12(sp)
  400490:	c31ff0ef          	jal	4000c0 <putch>
  400494:	7c245783          	lhu	a5,1986(s0)
  400498:	00178793          	addi	a5,a5,1
  40049c:	fa9ff06f          	j	400444 <printf+0xfc>
  4004a0:	07300713          	li	a4,115
  4004a4:	02e79063          	bne	a5,a4,4004c4 <printf+0x17c>
  4004a8:	00c12783          	lw	a5,12(sp)
  4004ac:	00f00613          	li	a2,15
  4004b0:	0007a583          	lw	a1,0(a5)
  4004b4:	00478713          	addi	a4,a5,4
  4004b8:	00e12623          	sw	a4,12(sp)
  4004bc:	c35ff0ef          	jal	4000f0 <printString>
  4004c0:	f7dff06f          	j	40043c <printf+0xf4>
  4004c4:	00f00613          	li	a2,15
  4004c8:	00090593          	mv	a1,s2
  4004cc:	bf5ff0ef          	jal	4000c0 <putch>
  4004d0:	7c245783          	lhu	a5,1986(s0)
  4004d4:	00178793          	addi	a5,a5,1
  4004d8:	f31ff06f          	j	400408 <printf+0xc0>
  4004dc:	00f00613          	li	a2,15
  4004e0:	fedff06f          	j	4004cc <printf+0x184>

004004e4 <printfSCR>:
  4004e4:	f9010113          	addi	sp,sp,-112
  4004e8:	06f12223          	sw	a5,100(sp)
  4004ec:	05c10793          	addi	a5,sp,92
  4004f0:	04812423          	sw	s0,72(sp)
  4004f4:	04912223          	sw	s1,68(sp)
  4004f8:	05212023          	sw	s2,64(sp)
  4004fc:	03412c23          	sw	s4,56(sp)
  400500:	03512a23          	sw	s5,52(sp)
  400504:	03612823          	sw	s6,48(sp)
  400508:	03712623          	sw	s7,44(sp)
  40050c:	03812423          	sw	s8,40(sp)
  400510:	03912223          	sw	s9,36(sp)
  400514:	03a12023          	sw	s10,32(sp)
  400518:	01b12e23          	sw	s11,28(sp)
  40051c:	04112623          	sw	ra,76(sp)
  400520:	03312e23          	sw	s3,60(sp)
  400524:	00050a93          	mv	s5,a0
  400528:	00058493          	mv	s1,a1
  40052c:	00060a13          	mv	s4,a2
  400530:	04d12e23          	sw	a3,92(sp)
  400534:	06e12023          	sw	a4,96(sp)
  400538:	07012423          	sw	a6,104(sp)
  40053c:	07112623          	sw	a7,108(sp)
  400540:	00f12623          	sw	a5,12(sp)
  400544:	00000913          	li	s2,0
  400548:	00000413          	li	s0,0
  40054c:	00a00b93          	li	s7,10
  400550:	02500b13          	li	s6,37
  400554:	07800c13          	li	s8,120
  400558:	06400c93          	li	s9,100
  40055c:	06300d13          	li	s10,99
  400560:	07300d93          	li	s11,115
  400564:	012a07b3          	add	a5,s4,s2
  400568:	0007c583          	lbu	a1,0(a5)
  40056c:	04059263          	bnez	a1,4005b0 <printfSCR+0xcc>
  400570:	04c12083          	lw	ra,76(sp)
  400574:	00040513          	mv	a0,s0
  400578:	04812403          	lw	s0,72(sp)
  40057c:	04412483          	lw	s1,68(sp)
  400580:	04012903          	lw	s2,64(sp)
  400584:	03c12983          	lw	s3,60(sp)
  400588:	03812a03          	lw	s4,56(sp)
  40058c:	03412a83          	lw	s5,52(sp)
  400590:	03012b03          	lw	s6,48(sp)
  400594:	02c12b83          	lw	s7,44(sp)
  400598:	02812c03          	lw	s8,40(sp)
  40059c:	02412c83          	lw	s9,36(sp)
  4005a0:	02012d03          	lw	s10,32(sp)
  4005a4:	01c12d83          	lw	s11,28(sp)
  4005a8:	07010113          	addi	sp,sp,112
  4005ac:	00008067          	ret
  4005b0:	00190993          	addi	s3,s2,1
  4005b4:	01759a63          	bne	a1,s7,4005c8 <printfSCR+0xe4>
  4005b8:	fc047413          	andi	s0,s0,-64
  4005bc:	04040413          	addi	s0,s0,64
  4005c0:	00090993          	mv	s3,s2
  4005c4:	0740006f          	j	400638 <printfSCR+0x154>
  4005c8:	01540533          	add	a0,s0,s5
  4005cc:	0b659463          	bne	a1,s6,400674 <printfSCR+0x190>
  4005d0:	0017c783          	lbu	a5,1(a5)
  4005d4:	03879263          	bne	a5,s8,4005f8 <printfSCR+0x114>
  4005d8:	00c12783          	lw	a5,12(sp)
  4005dc:	00048613          	mv	a2,s1
  4005e0:	0007a583          	lw	a1,0(a5)
  4005e4:	00478713          	addi	a4,a5,4
  4005e8:	00e12623          	sw	a4,12(sp)
  4005ec:	bc5ff0ef          	jal	4001b0 <printHex>
  4005f0:	00a40433          	add	s0,s0,a0
  4005f4:	0440006f          	j	400638 <printfSCR+0x154>
  4005f8:	03979063          	bne	a5,s9,400618 <printfSCR+0x134>
  4005fc:	00c12783          	lw	a5,12(sp)
  400600:	00048613          	mv	a2,s1
  400604:	0007a583          	lw	a1,0(a5)
  400608:	00478713          	addi	a4,a5,4
  40060c:	00e12623          	sw	a4,12(sp)
  400610:	c41ff0ef          	jal	400250 <printDec>
  400614:	fddff06f          	j	4005f0 <printfSCR+0x10c>
  400618:	03a79463          	bne	a5,s10,400640 <printfSCR+0x15c>
  40061c:	00c12783          	lw	a5,12(sp)
  400620:	00048613          	mv	a2,s1
  400624:	00140413          	addi	s0,s0,1
  400628:	0007c583          	lbu	a1,0(a5)
  40062c:	00478713          	addi	a4,a5,4
  400630:	00e12623          	sw	a4,12(sp)
  400634:	a8dff0ef          	jal	4000c0 <putch>
  400638:	00198913          	addi	s2,s3,1
  40063c:	f29ff06f          	j	400564 <printfSCR+0x80>
  400640:	03b79063          	bne	a5,s11,400660 <printfSCR+0x17c>
  400644:	00c12783          	lw	a5,12(sp)
  400648:	00048613          	mv	a2,s1
  40064c:	0007a583          	lw	a1,0(a5)
  400650:	00478713          	addi	a4,a5,4
  400654:	00e12623          	sw	a4,12(sp)
  400658:	a99ff0ef          	jal	4000f0 <printString>
  40065c:	f95ff06f          	j	4005f0 <printfSCR+0x10c>
  400660:	00048613          	mv	a2,s1
  400664:	000b0593          	mv	a1,s6
  400668:	a59ff0ef          	jal	4000c0 <putch>
  40066c:	00140413          	addi	s0,s0,1
  400670:	f51ff06f          	j	4005c0 <printfSCR+0xdc>
  400674:	00048613          	mv	a2,s1
  400678:	ff1ff06f          	j	400668 <printfSCR+0x184>

0040067c <clearScreen>:
  40067c:	ff010113          	addi	sp,sp,-16
  400680:	00812423          	sw	s0,8(sp)
  400684:	00912223          	sw	s1,4(sp)
  400688:	00112623          	sw	ra,12(sp)
  40068c:	00000413          	li	s0,0
  400690:	4c000493          	li	s1,1216
  400694:	00040513          	mv	a0,s0
  400698:	00f00613          	li	a2,15
  40069c:	02000593          	li	a1,32
  4006a0:	00140413          	addi	s0,s0,1
  4006a4:	a1dff0ef          	jal	4000c0 <putch>
  4006a8:	fe9416e3          	bne	s0,s1,400694 <clearScreen+0x18>
  4006ac:	00c12083          	lw	ra,12(sp)
  4006b0:	00812403          	lw	s0,8(sp)
  4006b4:	004007b7          	lui	a5,0x400
  4006b8:	7c079123          	sh	zero,1986(a5) # 4007c2 <screenPos>
  4006bc:	00412483          	lw	s1,4(sp)
  4006c0:	01010113          	addi	sp,sp,16
  4006c4:	00008067          	ret

004006c8 <resetScreenVector>:
  4006c8:	004007b7          	lui	a5,0x400
  4006cc:	7c079123          	sh	zero,1986(a5) # 4007c2 <screenPos>
  4006d0:	00008067          	ret
  4006d4:	2710                	.insn	2, 0x2710
  4006d6:	0000                	.insn	2, 0x
  4006d8:	03e8                	.insn	2, 0x03e8
  4006da:	0000                	.insn	2, 0x
  4006dc:	0064                	.insn	2, 0x0064
  4006de:	0000                	.insn	2, 0x
  4006e0:	000a                	.insn	2, 0x000a
  4006e2:	0000                	.insn	2, 0x
  4006e4:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

004006e8 <main>:
  4006e8:	ff010113          	addi	sp,sp,-16
  4006ec:	876547b7          	lui	a5,0x87654
  4006f0:	00112623          	sw	ra,12(sp)
  4006f4:	00812423          	sw	s0,8(sp)
  4006f8:	00912223          	sw	s1,4(sp)
  4006fc:	32178793          	addi	a5,a5,801 # 87654321 <_stack_end+0x87252321>
  400700:	400004b7          	lui	s1,0x40000
  400704:	00f4a023          	sw	a5,0(s1) # 40000000 <_stack_end+0x3fbfe000>
  400708:	00f4a023          	sw	a5,0(s1)
  40070c:	123457b7          	lui	a5,0x12345
  400710:	67878793          	addi	a5,a5,1656 # 12345678 <_stack_end+0x11f43678>
  400714:	00f4a223          	sw	a5,4(s1)
  400718:	00400537          	lui	a0,0x400
  40071c:	00f4a223          	sw	a5,4(s1)
  400720:	78050513          	addi	a0,a0,1920 # 400780 <main+0x98>
  400724:	c25ff0ef          	jal	400348 <printf>
  400728:	0004a783          	lw	a5,0(s1)
  40072c:	0004a783          	lw	a5,0(s1)
  400730:	0004a583          	lw	a1,0(s1)
  400734:	00048413          	mv	s0,s1
  400738:	004004b7          	lui	s1,0x400
  40073c:	79048513          	addi	a0,s1,1936 # 400790 <main+0xa8>
  400740:	c09ff0ef          	jal	400348 <printf>
  400744:	00442783          	lw	a5,4(s0)
  400748:	00442783          	lw	a5,4(s0)
  40074c:	00442583          	lw	a1,4(s0)
  400750:	79048513          	addi	a0,s1,1936
  400754:	bf5ff0ef          	jal	400348 <printf>
  400758:	400007b7          	lui	a5,0x40000
  40075c:	0087a703          	lw	a4,8(a5) # 40000008 <_stack_end+0x3fbfe008>
  400760:	0087a703          	lw	a4,8(a5)
  400764:	0087a583          	lw	a1,8(a5)
  400768:	79048513          	addi	a0,s1,1936
  40076c:	bddff0ef          	jal	400348 <printf>
  400770:	00400537          	lui	a0,0x400
  400774:	79450513          	addi	a0,a0,1940 # 400794 <main+0xac>
  400778:	bd1ff0ef          	jal	400348 <printf>
  40077c:	0000006f          	j	40077c <main+0x94>
