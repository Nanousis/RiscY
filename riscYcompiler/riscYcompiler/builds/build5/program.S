
builds/build5/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	a0010113          	addi	sp,sp,-1536 # 401a00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	6cc000ef          	jal	4006dc <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <writeRam>:
  40001c:	00251513          	slli	a0,a0,0x2
  400020:	400007b7          	lui	a5,0x40000
  400024:	00f50533          	add	a0,a0,a5
  400028:	00b52023          	sw	a1,0(a0)
  40002c:	00008067          	ret

00400030 <readRam>:
  400030:	400007b7          	lui	a5,0x40000
  400034:	00251513          	slli	a0,a0,0x2
  400038:	00f50533          	add	a0,a0,a5
  40003c:	00052503          	lw	a0,0(a0)
  400040:	00008067          	ret

00400044 <memcpy>:
  400044:	00000793          	li	a5,0
  400048:	00c7c463          	blt	a5,a2,400050 <memcpy+0xc>
  40004c:	00008067          	ret
  400050:	00f58733          	add	a4,a1,a5
  400054:	00074683          	lbu	a3,0(a4)
  400058:	00f50733          	add	a4,a0,a5
  40005c:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  400060:	00d70023          	sb	a3,0(a4)
  400064:	fe5ff06f          	j	400048 <memcpy+0x4>

00400068 <memset>:
  400068:	00c50633          	add	a2,a0,a2
  40006c:	00050793          	mv	a5,a0
  400070:	00c79463          	bne	a5,a2,400078 <memset+0x10>
  400074:	00008067          	ret
  400078:	00178793          	addi	a5,a5,1
  40007c:	feb78fa3          	sb	a1,-1(a5)
  400080:	ff1ff06f          	j	400070 <memset+0x8>

00400084 <getButtonDown>:
  400084:	890007b7          	lui	a5,0x89000
  400088:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  40008c:	00008067          	ret

00400090 <getButtonUp>:
  400090:	890007b7          	lui	a5,0x89000
  400094:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  400098:	00008067          	ret

0040009c <getButtonLeft>:
  40009c:	890007b7          	lui	a5,0x89000
  4000a0:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4000a4:	00008067          	ret

004000a8 <getButtonRight>:
  4000a8:	890007b7          	lui	a5,0x89000
  4000ac:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  4000b0:	00008067          	ret

004000b4 <putch>:
  4000b4:	4c000793          	li	a5,1216
  4000b8:	02a7e263          	bltu	a5,a0,4000dc <putch+0x28>
  4000bc:	00861613          	slli	a2,a2,0x8
  4000c0:	880007b7          	lui	a5,0x88000
  4000c4:	00151513          	slli	a0,a0,0x1
  4000c8:	00f50533          	add	a0,a0,a5
  4000cc:	00b665b3          	or	a1,a2,a1
  4000d0:	00b51023          	sh	a1,0(a0)
  4000d4:	00100513          	li	a0,1
  4000d8:	00008067          	ret
  4000dc:	00000513          	li	a0,0
  4000e0:	00008067          	ret

004000e4 <printString>:
  4000e4:	fe010113          	addi	sp,sp,-32
  4000e8:	01312623          	sw	s3,12(sp)
  4000ec:	01412423          	sw	s4,8(sp)
  4000f0:	00112e23          	sw	ra,28(sp)
  4000f4:	00812c23          	sw	s0,24(sp)
  4000f8:	00912a23          	sw	s1,20(sp)
  4000fc:	01212823          	sw	s2,16(sp)
  400100:	01512223          	sw	s5,4(sp)
  400104:	01612023          	sw	s6,0(sp)
  400108:	00050a13          	mv	s4,a0
  40010c:	00058993          	mv	s3,a1
  400110:	06060c63          	beqz	a2,400188 <printString+0xa4>
  400114:	00060413          	mv	s0,a2
  400118:	00000913          	li	s2,0
  40011c:	00000493          	li	s1,0
  400120:	00100a93          	li	s5,1
  400124:	00f00b13          	li	s6,15
  400128:	0280006f          	j	400150 <printString+0x6c>
  40012c:	00040613          	mv	a2,s0
  400130:	009a0533          	add	a0,s4,s1
  400134:	f81ff0ef          	jal	4000b4 <putch>
  400138:	06050263          	beqz	a0,40019c <printString+0xb8>
  40013c:	00148493          	addi	s1,s1,1
  400140:	01591863          	bne	s2,s5,400150 <printString+0x6c>
  400144:	00140413          	addi	s0,s0,1
  400148:	0ff47413          	zext.b	s0,s0
  40014c:	048b6463          	bltu	s6,s0,400194 <printString+0xb0>
  400150:	009987b3          	add	a5,s3,s1
  400154:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  400158:	00048513          	mv	a0,s1
  40015c:	fc0598e3          	bnez	a1,40012c <printString+0x48>
  400160:	01c12083          	lw	ra,28(sp)
  400164:	01812403          	lw	s0,24(sp)
  400168:	01412483          	lw	s1,20(sp)
  40016c:	01012903          	lw	s2,16(sp)
  400170:	00c12983          	lw	s3,12(sp)
  400174:	00812a03          	lw	s4,8(sp)
  400178:	00412a83          	lw	s5,4(sp)
  40017c:	00012b03          	lw	s6,0(sp)
  400180:	02010113          	addi	sp,sp,32
  400184:	00008067          	ret
  400188:	00100913          	li	s2,1
  40018c:	00090413          	mv	s0,s2
  400190:	f8dff06f          	j	40011c <printString+0x38>
  400194:	00090413          	mv	s0,s2
  400198:	fb9ff06f          	j	400150 <printString+0x6c>
  40019c:	00000513          	li	a0,0
  4001a0:	fc1ff06f          	j	400160 <printString+0x7c>

004001a4 <printHex>:
  4001a4:	fd010113          	addi	sp,sp,-48
  4001a8:	02812423          	sw	s0,40(sp)
  4001ac:	00058413          	mv	s0,a1
  4001b0:	004015b7          	lui	a1,0x401
  4001b4:	02912223          	sw	s1,36(sp)
  4001b8:	03212023          	sw	s2,32(sp)
  4001bc:	86058593          	addi	a1,a1,-1952 # 400860 <_etext+0x184>
  4001c0:	00050493          	mv	s1,a0
  4001c4:	00060913          	mv	s2,a2
  4001c8:	00c10513          	addi	a0,sp,12
  4001cc:	01100613          	li	a2,17
  4001d0:	02112623          	sw	ra,44(sp)
  4001d4:	e71ff0ef          	jal	400044 <memcpy>
  4001d8:	202027b7          	lui	a5,0x20202
  4001dc:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  4001e0:	00f12023          	sw	a5,0(sp)
  4001e4:	00f12223          	sw	a5,4(sp)
  4001e8:	00010423          	sb	zero,8(sp)
  4001ec:	00700793          	li	a5,7
  4001f0:	00010593          	mv	a1,sp
  4001f4:	fff00693          	li	a3,-1
  4001f8:	00f47713          	andi	a4,s0,15
  4001fc:	02070713          	addi	a4,a4,32
  400200:	00270733          	add	a4,a4,sp
  400204:	fec74703          	lbu	a4,-20(a4)
  400208:	00f58633          	add	a2,a1,a5
  40020c:	fff78793          	addi	a5,a5,-1
  400210:	00e60023          	sb	a4,0(a2)
  400214:	40445413          	srai	s0,s0,0x4
  400218:	fed790e3          	bne	a5,a3,4001f8 <printHex+0x54>
  40021c:	00090613          	mv	a2,s2
  400220:	00048513          	mv	a0,s1
  400224:	ec1ff0ef          	jal	4000e4 <printString>
  400228:	02c12083          	lw	ra,44(sp)
  40022c:	02812403          	lw	s0,40(sp)
  400230:	02412483          	lw	s1,36(sp)
  400234:	02012903          	lw	s2,32(sp)
  400238:	0ff57513          	zext.b	a0,a0
  40023c:	03010113          	addi	sp,sp,48
  400240:	00008067          	ret

00400244 <printDec>:
  400244:	fd010113          	addi	sp,sp,-48
  400248:	02812423          	sw	s0,40(sp)
  40024c:	00058413          	mv	s0,a1
  400250:	004005b7          	lui	a1,0x400
  400254:	02912223          	sw	s1,36(sp)
  400258:	03212023          	sw	s2,32(sp)
  40025c:	00050493          	mv	s1,a0
  400260:	00060913          	mv	s2,a2
  400264:	6c858593          	addi	a1,a1,1736 # 4006c8 <resetScreenVector+0xc>
  400268:	01400613          	li	a2,20
  40026c:	00c10513          	addi	a0,sp,12
  400270:	02112623          	sw	ra,44(sp)
  400274:	dd1ff0ef          	jal	400044 <memcpy>
  400278:	000187b7          	lui	a5,0x18
  40027c:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1809f>
  400280:	0287fa63          	bgeu	a5,s0,4002b4 <printDec+0x70>
  400284:	004015b7          	lui	a1,0x401
  400288:	00090613          	mv	a2,s2
  40028c:	87458593          	addi	a1,a1,-1932 # 400874 <_etext+0x198>
  400290:	00048513          	mv	a0,s1
  400294:	e51ff0ef          	jal	4000e4 <printString>
  400298:	02c12083          	lw	ra,44(sp)
  40029c:	02812403          	lw	s0,40(sp)
  4002a0:	02412483          	lw	s1,36(sp)
  4002a4:	02012903          	lw	s2,32(sp)
  4002a8:	0ff57513          	zext.b	a0,a0
  4002ac:	03010113          	addi	sp,sp,48
  4002b0:	00008067          	ret
  4002b4:	00100613          	li	a2,1
  4002b8:	00c10713          	addi	a4,sp,12
  4002bc:	00000793          	li	a5,0
  4002c0:	00060513          	mv	a0,a2
  4002c4:	00072583          	lw	a1,0(a4)
  4002c8:	00000693          	li	a3,0
  4002cc:	06b47263          	bgeu	s0,a1,400330 <printDec+0xec>
  4002d0:	00069663          	bnez	a3,4002dc <printDec+0x98>
  4002d4:	00a58463          	beq	a1,a0,4002dc <printDec+0x98>
  4002d8:	00061e63          	bnez	a2,4002f4 <printDec+0xb0>
  4002dc:	02078613          	addi	a2,a5,32
  4002e0:	00260633          	add	a2,a2,sp
  4002e4:	03068693          	addi	a3,a3,48
  4002e8:	fed60223          	sb	a3,-28(a2)
  4002ec:	00178793          	addi	a5,a5,1
  4002f0:	00000613          	li	a2,0
  4002f4:	00470713          	addi	a4,a4,4
  4002f8:	02010693          	addi	a3,sp,32
  4002fc:	fcd714e3          	bne	a4,a3,4002c4 <printDec+0x80>
  400300:	00060c63          	beqz	a2,400318 <printDec+0xd4>
  400304:	02078713          	addi	a4,a5,32
  400308:	00270733          	add	a4,a4,sp
  40030c:	03000693          	li	a3,48
  400310:	fed70223          	sb	a3,-28(a4)
  400314:	00178793          	addi	a5,a5,1
  400318:	02078793          	addi	a5,a5,32
  40031c:	002787b3          	add	a5,a5,sp
  400320:	fe078223          	sb	zero,-28(a5)
  400324:	00090613          	mv	a2,s2
  400328:	00410593          	addi	a1,sp,4
  40032c:	f65ff06f          	j	400290 <printDec+0x4c>
  400330:	40b40433          	sub	s0,s0,a1
  400334:	00168693          	addi	a3,a3,1
  400338:	f95ff06f          	j	4002cc <printDec+0x88>

0040033c <printf>:
  40033c:	fa010113          	addi	sp,sp,-96
  400340:	04f12a23          	sw	a5,84(sp)
  400344:	04410793          	addi	a5,sp,68
  400348:	02812c23          	sw	s0,56(sp)
  40034c:	02912a23          	sw	s1,52(sp)
  400350:	03212823          	sw	s2,48(sp)
  400354:	03312623          	sw	s3,44(sp)
  400358:	03412423          	sw	s4,40(sp)
  40035c:	03512223          	sw	s5,36(sp)
  400360:	03612023          	sw	s6,32(sp)
  400364:	01812c23          	sw	s8,24(sp)
  400368:	02112e23          	sw	ra,60(sp)
  40036c:	01712e23          	sw	s7,28(sp)
  400370:	00050493          	mv	s1,a0
  400374:	04b12223          	sw	a1,68(sp)
  400378:	04c12423          	sw	a2,72(sp)
  40037c:	04d12623          	sw	a3,76(sp)
  400380:	04e12823          	sw	a4,80(sp)
  400384:	05012c23          	sw	a6,88(sp)
  400388:	05112e23          	sw	a7,92(sp)
  40038c:	00f12623          	sw	a5,12(sp)
  400390:	00000c13          	li	s8,0
  400394:	00401437          	lui	s0,0x401
  400398:	00a00993          	li	s3,10
  40039c:	02500913          	li	s2,37
  4003a0:	07800a13          	li	s4,120
  4003a4:	06400a93          	li	s5,100
  4003a8:	06300b13          	li	s6,99
  4003ac:	018487b3          	add	a5,s1,s8
  4003b0:	0007c583          	lbu	a1,0(a5)
  4003b4:	87a41503          	lh	a0,-1926(s0) # 40087a <screenPos>
  4003b8:	02059a63          	bnez	a1,4003ec <printf+0xb0>
  4003bc:	03c12083          	lw	ra,60(sp)
  4003c0:	03812403          	lw	s0,56(sp)
  4003c4:	03412483          	lw	s1,52(sp)
  4003c8:	03012903          	lw	s2,48(sp)
  4003cc:	02c12983          	lw	s3,44(sp)
  4003d0:	02812a03          	lw	s4,40(sp)
  4003d4:	02412a83          	lw	s5,36(sp)
  4003d8:	02012b03          	lw	s6,32(sp)
  4003dc:	01c12b83          	lw	s7,28(sp)
  4003e0:	01812c03          	lw	s8,24(sp)
  4003e4:	06010113          	addi	sp,sp,96
  4003e8:	00008067          	ret
  4003ec:	001c0b93          	addi	s7,s8,1
  4003f0:	01359e63          	bne	a1,s3,40040c <printf+0xd0>
  4003f4:	fc057793          	andi	a5,a0,-64
  4003f8:	04078793          	addi	a5,a5,64
  4003fc:	01079793          	slli	a5,a5,0x10
  400400:	4107d793          	srai	a5,a5,0x10
  400404:	000c0b93          	mv	s7,s8
  400408:	0380006f          	j	400440 <printf+0x104>
  40040c:	0d259263          	bne	a1,s2,4004d0 <printf+0x194>
  400410:	0017c783          	lbu	a5,1(a5)
  400414:	03479c63          	bne	a5,s4,40044c <printf+0x110>
  400418:	00c12783          	lw	a5,12(sp)
  40041c:	00f00613          	li	a2,15
  400420:	0007a583          	lw	a1,0(a5)
  400424:	00478713          	addi	a4,a5,4
  400428:	00e12623          	sw	a4,12(sp)
  40042c:	d79ff0ef          	jal	4001a4 <printHex>
  400430:	87a45783          	lhu	a5,-1926(s0)
  400434:	00f507b3          	add	a5,a0,a5
  400438:	01079793          	slli	a5,a5,0x10
  40043c:	4107d793          	srai	a5,a5,0x10
  400440:	86f41d23          	sh	a5,-1926(s0)
  400444:	001b8c13          	addi	s8,s7,1
  400448:	f65ff06f          	j	4003ac <printf+0x70>
  40044c:	03579063          	bne	a5,s5,40046c <printf+0x130>
  400450:	00c12783          	lw	a5,12(sp)
  400454:	00f00613          	li	a2,15
  400458:	0007a583          	lw	a1,0(a5)
  40045c:	00478713          	addi	a4,a5,4
  400460:	00e12623          	sw	a4,12(sp)
  400464:	de1ff0ef          	jal	400244 <printDec>
  400468:	fc9ff06f          	j	400430 <printf+0xf4>
  40046c:	03679463          	bne	a5,s6,400494 <printf+0x158>
  400470:	00c12783          	lw	a5,12(sp)
  400474:	00f00613          	li	a2,15
  400478:	0007c583          	lbu	a1,0(a5)
  40047c:	00478713          	addi	a4,a5,4
  400480:	00e12623          	sw	a4,12(sp)
  400484:	c31ff0ef          	jal	4000b4 <putch>
  400488:	87a45783          	lhu	a5,-1926(s0)
  40048c:	00178793          	addi	a5,a5,1
  400490:	fa9ff06f          	j	400438 <printf+0xfc>
  400494:	07300713          	li	a4,115
  400498:	02e79063          	bne	a5,a4,4004b8 <printf+0x17c>
  40049c:	00c12783          	lw	a5,12(sp)
  4004a0:	00f00613          	li	a2,15
  4004a4:	0007a583          	lw	a1,0(a5)
  4004a8:	00478713          	addi	a4,a5,4
  4004ac:	00e12623          	sw	a4,12(sp)
  4004b0:	c35ff0ef          	jal	4000e4 <printString>
  4004b4:	f7dff06f          	j	400430 <printf+0xf4>
  4004b8:	00f00613          	li	a2,15
  4004bc:	00090593          	mv	a1,s2
  4004c0:	bf5ff0ef          	jal	4000b4 <putch>
  4004c4:	87a45783          	lhu	a5,-1926(s0)
  4004c8:	00178793          	addi	a5,a5,1
  4004cc:	f31ff06f          	j	4003fc <printf+0xc0>
  4004d0:	00f00613          	li	a2,15
  4004d4:	fedff06f          	j	4004c0 <printf+0x184>

004004d8 <printfSCR>:
  4004d8:	f9010113          	addi	sp,sp,-112
  4004dc:	06f12223          	sw	a5,100(sp)
  4004e0:	05c10793          	addi	a5,sp,92
  4004e4:	04812423          	sw	s0,72(sp)
  4004e8:	04912223          	sw	s1,68(sp)
  4004ec:	05212023          	sw	s2,64(sp)
  4004f0:	03412c23          	sw	s4,56(sp)
  4004f4:	03512a23          	sw	s5,52(sp)
  4004f8:	03612823          	sw	s6,48(sp)
  4004fc:	03712623          	sw	s7,44(sp)
  400500:	03812423          	sw	s8,40(sp)
  400504:	03912223          	sw	s9,36(sp)
  400508:	03a12023          	sw	s10,32(sp)
  40050c:	01b12e23          	sw	s11,28(sp)
  400510:	04112623          	sw	ra,76(sp)
  400514:	03312e23          	sw	s3,60(sp)
  400518:	00050a93          	mv	s5,a0
  40051c:	00058493          	mv	s1,a1
  400520:	00060a13          	mv	s4,a2
  400524:	04d12e23          	sw	a3,92(sp)
  400528:	06e12023          	sw	a4,96(sp)
  40052c:	07012423          	sw	a6,104(sp)
  400530:	07112623          	sw	a7,108(sp)
  400534:	00f12623          	sw	a5,12(sp)
  400538:	00000913          	li	s2,0
  40053c:	00000413          	li	s0,0
  400540:	00a00b93          	li	s7,10
  400544:	02500b13          	li	s6,37
  400548:	07800c13          	li	s8,120
  40054c:	06400c93          	li	s9,100
  400550:	06300d13          	li	s10,99
  400554:	07300d93          	li	s11,115
  400558:	012a07b3          	add	a5,s4,s2
  40055c:	0007c583          	lbu	a1,0(a5)
  400560:	04059263          	bnez	a1,4005a4 <printfSCR+0xcc>
  400564:	04c12083          	lw	ra,76(sp)
  400568:	00040513          	mv	a0,s0
  40056c:	04812403          	lw	s0,72(sp)
  400570:	04412483          	lw	s1,68(sp)
  400574:	04012903          	lw	s2,64(sp)
  400578:	03c12983          	lw	s3,60(sp)
  40057c:	03812a03          	lw	s4,56(sp)
  400580:	03412a83          	lw	s5,52(sp)
  400584:	03012b03          	lw	s6,48(sp)
  400588:	02c12b83          	lw	s7,44(sp)
  40058c:	02812c03          	lw	s8,40(sp)
  400590:	02412c83          	lw	s9,36(sp)
  400594:	02012d03          	lw	s10,32(sp)
  400598:	01c12d83          	lw	s11,28(sp)
  40059c:	07010113          	addi	sp,sp,112
  4005a0:	00008067          	ret
  4005a4:	00190993          	addi	s3,s2,1
  4005a8:	01759a63          	bne	a1,s7,4005bc <printfSCR+0xe4>
  4005ac:	fc047413          	andi	s0,s0,-64
  4005b0:	04040413          	addi	s0,s0,64
  4005b4:	00090993          	mv	s3,s2
  4005b8:	0740006f          	j	40062c <printfSCR+0x154>
  4005bc:	01540533          	add	a0,s0,s5
  4005c0:	0b659463          	bne	a1,s6,400668 <printfSCR+0x190>
  4005c4:	0017c783          	lbu	a5,1(a5)
  4005c8:	03879263          	bne	a5,s8,4005ec <printfSCR+0x114>
  4005cc:	00c12783          	lw	a5,12(sp)
  4005d0:	00048613          	mv	a2,s1
  4005d4:	0007a583          	lw	a1,0(a5)
  4005d8:	00478713          	addi	a4,a5,4
  4005dc:	00e12623          	sw	a4,12(sp)
  4005e0:	bc5ff0ef          	jal	4001a4 <printHex>
  4005e4:	00a40433          	add	s0,s0,a0
  4005e8:	0440006f          	j	40062c <printfSCR+0x154>
  4005ec:	03979063          	bne	a5,s9,40060c <printfSCR+0x134>
  4005f0:	00c12783          	lw	a5,12(sp)
  4005f4:	00048613          	mv	a2,s1
  4005f8:	0007a583          	lw	a1,0(a5)
  4005fc:	00478713          	addi	a4,a5,4
  400600:	00e12623          	sw	a4,12(sp)
  400604:	c41ff0ef          	jal	400244 <printDec>
  400608:	fddff06f          	j	4005e4 <printfSCR+0x10c>
  40060c:	03a79463          	bne	a5,s10,400634 <printfSCR+0x15c>
  400610:	00c12783          	lw	a5,12(sp)
  400614:	00048613          	mv	a2,s1
  400618:	00140413          	addi	s0,s0,1
  40061c:	0007c583          	lbu	a1,0(a5)
  400620:	00478713          	addi	a4,a5,4
  400624:	00e12623          	sw	a4,12(sp)
  400628:	a8dff0ef          	jal	4000b4 <putch>
  40062c:	00198913          	addi	s2,s3,1
  400630:	f29ff06f          	j	400558 <printfSCR+0x80>
  400634:	03b79063          	bne	a5,s11,400654 <printfSCR+0x17c>
  400638:	00c12783          	lw	a5,12(sp)
  40063c:	00048613          	mv	a2,s1
  400640:	0007a583          	lw	a1,0(a5)
  400644:	00478713          	addi	a4,a5,4
  400648:	00e12623          	sw	a4,12(sp)
  40064c:	a99ff0ef          	jal	4000e4 <printString>
  400650:	f95ff06f          	j	4005e4 <printfSCR+0x10c>
  400654:	00048613          	mv	a2,s1
  400658:	000b0593          	mv	a1,s6
  40065c:	a59ff0ef          	jal	4000b4 <putch>
  400660:	00140413          	addi	s0,s0,1
  400664:	f51ff06f          	j	4005b4 <printfSCR+0xdc>
  400668:	00048613          	mv	a2,s1
  40066c:	ff1ff06f          	j	40065c <printfSCR+0x184>

00400670 <clearScreen>:
  400670:	ff010113          	addi	sp,sp,-16
  400674:	00812423          	sw	s0,8(sp)
  400678:	00912223          	sw	s1,4(sp)
  40067c:	00112623          	sw	ra,12(sp)
  400680:	00000413          	li	s0,0
  400684:	4c000493          	li	s1,1216
  400688:	00040513          	mv	a0,s0
  40068c:	00f00613          	li	a2,15
  400690:	02000593          	li	a1,32
  400694:	00140413          	addi	s0,s0,1
  400698:	a1dff0ef          	jal	4000b4 <putch>
  40069c:	fe9416e3          	bne	s0,s1,400688 <clearScreen+0x18>
  4006a0:	00c12083          	lw	ra,12(sp)
  4006a4:	00812403          	lw	s0,8(sp)
  4006a8:	004017b7          	lui	a5,0x401
  4006ac:	86079d23          	sh	zero,-1926(a5) # 40087a <screenPos>
  4006b0:	00412483          	lw	s1,4(sp)
  4006b4:	01010113          	addi	sp,sp,16
  4006b8:	00008067          	ret

004006bc <resetScreenVector>:
  4006bc:	004017b7          	lui	a5,0x401
  4006c0:	86079d23          	sh	zero,-1926(a5) # 40087a <screenPos>
  4006c4:	00008067          	ret
  4006c8:	2710                	.insn	2, 0x2710
  4006ca:	0000                	.insn	2, 0x
  4006cc:	03e8                	.insn	2, 0x03e8
  4006ce:	0000                	.insn	2, 0x
  4006d0:	0064                	.insn	2, 0x0064
  4006d2:	0000                	.insn	2, 0x
  4006d4:	000a                	.insn	2, 0x000a
  4006d6:	0000                	.insn	2, 0x
  4006d8:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

004006dc <main>:
  4006dc:	fd010113          	addi	sp,sp,-48
  4006e0:	aaaab7b7          	lui	a5,0xaaaab
  4006e4:	02112623          	sw	ra,44(sp)
  4006e8:	02812423          	sw	s0,40(sp)
  4006ec:	01a12023          	sw	s10,0(sp)
  4006f0:	40000437          	lui	s0,0x40000
  4006f4:	02912223          	sw	s1,36(sp)
  4006f8:	03212023          	sw	s2,32(sp)
  4006fc:	01312e23          	sw	s3,28(sp)
  400700:	01412c23          	sw	s4,24(sp)
  400704:	01512a23          	sw	s5,20(sp)
  400708:	01612823          	sw	s6,16(sp)
  40070c:	01712623          	sw	s7,12(sp)
  400710:	01812423          	sw	s8,8(sp)
  400714:	01912223          	sw	s9,4(sp)
  400718:	aaa78793          	addi	a5,a5,-1366 # aaaaaaaa <_stack_end+0xaa6a8aaa>
  40071c:	00f42023          	sw	a5,0(s0) # 40000000 <_stack_end+0x3fbfe000>
  400720:	bbbbc7b7          	lui	a5,0xbbbbc
  400724:	bbb78793          	addi	a5,a5,-1093 # bbbbbbbb <_stack_end+0xbb7b9bbb>
  400728:	00f42223          	sw	a5,4(s0)
  40072c:	ccccd7b7          	lui	a5,0xccccd
  400730:	ccc78793          	addi	a5,a5,-820 # cccccccc <_stack_end+0xcc8caccc>
  400734:	00f42423          	sw	a5,8(s0)
  400738:	dddde7b7          	lui	a5,0xdddde
  40073c:	ddd78793          	addi	a5,a5,-547 # dddddddd <_stack_end+0xdd9dbddd>
  400740:	00f42623          	sw	a5,12(s0)
  400744:	fff00793          	li	a5,-1
  400748:	00f42823          	sw	a5,16(s0)
  40074c:	eeeef7b7          	lui	a5,0xeeeef
  400750:	eee78793          	addi	a5,a5,-274 # eeeeeeee <_stack_end+0xeeaeceee>
  400754:	00f42a23          	sw	a5,20(s0)
  400758:	001007b7          	lui	a5,0x100
  40075c:	00f42c23          	sw	a5,24(s0)
  400760:	202227b7          	lui	a5,0x20222
  400764:	22278793          	addi	a5,a5,546 # 20222222 <_stack_end+0x1fe20222>
  400768:	00f42e23          	sw	a5,28(s0)
  40076c:	333337b7          	lui	a5,0x33333
  400770:	33378793          	addi	a5,a5,819 # 33333333 <_stack_end+0x32f31333>
  400774:	02f42023          	sw	a5,32(s0)
  400778:	444447b7          	lui	a5,0x44444
  40077c:	44478793          	addi	a5,a5,1092 # 44444444 <_stack_end+0x44042444>
  400780:	02f42223          	sw	a5,36(s0)
  400784:	555557b7          	lui	a5,0x55555
  400788:	55578793          	addi	a5,a5,1365 # 55555555 <_stack_end+0x55153555>
  40078c:	00401537          	lui	a0,0x401
  400790:	02f42423          	sw	a5,40(s0)
  400794:	83850513          	addi	a0,a0,-1992 # 400838 <main+0x15c>
  400798:	ba5ff0ef          	jal	40033c <printf>
  40079c:	00042583          	lw	a1,0(s0)
  4007a0:	00040d13          	mv	s10,s0
  4007a4:	00401437          	lui	s0,0x401
  4007a8:	84840513          	addi	a0,s0,-1976 # 400848 <main+0x16c>
  4007ac:	b91ff0ef          	jal	40033c <printf>
  4007b0:	004d2583          	lw	a1,4(s10)
  4007b4:	84840513          	addi	a0,s0,-1976
  4007b8:	b85ff0ef          	jal	40033c <printf>
  4007bc:	008d2583          	lw	a1,8(s10)
  4007c0:	84840513          	addi	a0,s0,-1976
  4007c4:	b79ff0ef          	jal	40033c <printf>
  4007c8:	00cd2583          	lw	a1,12(s10)
  4007cc:	84840513          	addi	a0,s0,-1976
  4007d0:	b6dff0ef          	jal	40033c <printf>
  4007d4:	010d2583          	lw	a1,16(s10)
  4007d8:	84840513          	addi	a0,s0,-1976
  4007dc:	b61ff0ef          	jal	40033c <printf>
  4007e0:	014d2583          	lw	a1,20(s10)
  4007e4:	84840513          	addi	a0,s0,-1976
  4007e8:	b55ff0ef          	jal	40033c <printf>
  4007ec:	018d2583          	lw	a1,24(s10)
  4007f0:	84840513          	addi	a0,s0,-1976
  4007f4:	b49ff0ef          	jal	40033c <printf>
  4007f8:	01cd2583          	lw	a1,28(s10)
  4007fc:	84840513          	addi	a0,s0,-1976
  400800:	b3dff0ef          	jal	40033c <printf>
  400804:	020d2583          	lw	a1,32(s10)
  400808:	84840513          	addi	a0,s0,-1976
  40080c:	b31ff0ef          	jal	40033c <printf>
  400810:	024d2583          	lw	a1,36(s10)
  400814:	84840513          	addi	a0,s0,-1976
  400818:	b25ff0ef          	jal	40033c <printf>
  40081c:	028d2583          	lw	a1,40(s10)
  400820:	84840513          	addi	a0,s0,-1976
  400824:	b19ff0ef          	jal	40033c <printf>
  400828:	00401537          	lui	a0,0x401
  40082c:	84c50513          	addi	a0,a0,-1972 # 40084c <main+0x170>
  400830:	b0dff0ef          	jal	40033c <printf>
  400834:	0000006f          	j	400834 <main+0x158>
