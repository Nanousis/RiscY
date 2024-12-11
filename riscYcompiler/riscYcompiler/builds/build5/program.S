
builds/build5/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	a0010113          	addi	sp,sp,-1536 # 401a00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	6e0000ef          	jal	4006f0 <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <writeRam>:
  40001c:	00251513          	slli	a0,a0,0x2
  400020:	400007b7          	lui	a5,0x40000
  400024:	00f50533          	add	a0,a0,a5
  400028:	00b52023          	sw	a1,0(a0)
  40002c:	00b52023          	sw	a1,0(a0)
  400030:	00b52023          	sw	a1,0(a0)
  400034:	00008067          	ret

00400038 <readRam>:
  400038:	400007b7          	lui	a5,0x40000
  40003c:	00251513          	slli	a0,a0,0x2
  400040:	00f50533          	add	a0,a0,a5
  400044:	00052783          	lw	a5,0(a0)
  400048:	00052783          	lw	a5,0(a0)
  40004c:	00052783          	lw	a5,0(a0)
  400050:	00052503          	lw	a0,0(a0)
  400054:	00008067          	ret

00400058 <memcpy>:
  400058:	00000793          	li	a5,0
  40005c:	00c7c463          	blt	a5,a2,400064 <memcpy+0xc>
  400060:	00008067          	ret
  400064:	00f58733          	add	a4,a1,a5
  400068:	00074683          	lbu	a3,0(a4)
  40006c:	00f50733          	add	a4,a0,a5
  400070:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  400074:	00d70023          	sb	a3,0(a4)
  400078:	fe5ff06f          	j	40005c <memcpy+0x4>

0040007c <memset>:
  40007c:	00c50633          	add	a2,a0,a2
  400080:	00050793          	mv	a5,a0
  400084:	00c79463          	bne	a5,a2,40008c <memset+0x10>
  400088:	00008067          	ret
  40008c:	00178793          	addi	a5,a5,1
  400090:	feb78fa3          	sb	a1,-1(a5)
  400094:	ff1ff06f          	j	400084 <memset+0x8>

00400098 <getButtonDown>:
  400098:	890007b7          	lui	a5,0x89000
  40009c:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  4000a0:	00008067          	ret

004000a4 <getButtonUp>:
  4000a4:	890007b7          	lui	a5,0x89000
  4000a8:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  4000ac:	00008067          	ret

004000b0 <getButtonLeft>:
  4000b0:	890007b7          	lui	a5,0x89000
  4000b4:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4000b8:	00008067          	ret

004000bc <getButtonRight>:
  4000bc:	890007b7          	lui	a5,0x89000
  4000c0:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  4000c4:	00008067          	ret

004000c8 <putch>:
  4000c8:	4c000793          	li	a5,1216
  4000cc:	02a7e263          	bltu	a5,a0,4000f0 <putch+0x28>
  4000d0:	00861613          	slli	a2,a2,0x8
  4000d4:	880007b7          	lui	a5,0x88000
  4000d8:	00151513          	slli	a0,a0,0x1
  4000dc:	00f50533          	add	a0,a0,a5
  4000e0:	00b665b3          	or	a1,a2,a1
  4000e4:	00b51023          	sh	a1,0(a0)
  4000e8:	00100513          	li	a0,1
  4000ec:	00008067          	ret
  4000f0:	00000513          	li	a0,0
  4000f4:	00008067          	ret

004000f8 <printString>:
  4000f8:	fe010113          	addi	sp,sp,-32
  4000fc:	01312623          	sw	s3,12(sp)
  400100:	01412423          	sw	s4,8(sp)
  400104:	00112e23          	sw	ra,28(sp)
  400108:	00812c23          	sw	s0,24(sp)
  40010c:	00912a23          	sw	s1,20(sp)
  400110:	01212823          	sw	s2,16(sp)
  400114:	01512223          	sw	s5,4(sp)
  400118:	01612023          	sw	s6,0(sp)
  40011c:	00050a13          	mv	s4,a0
  400120:	00058993          	mv	s3,a1
  400124:	06060c63          	beqz	a2,40019c <printString+0xa4>
  400128:	00060413          	mv	s0,a2
  40012c:	00000913          	li	s2,0
  400130:	00000493          	li	s1,0
  400134:	00100a93          	li	s5,1
  400138:	00f00b13          	li	s6,15
  40013c:	0280006f          	j	400164 <printString+0x6c>
  400140:	00040613          	mv	a2,s0
  400144:	009a0533          	add	a0,s4,s1
  400148:	f81ff0ef          	jal	4000c8 <putch>
  40014c:	06050263          	beqz	a0,4001b0 <printString+0xb8>
  400150:	00148493          	addi	s1,s1,1
  400154:	01591863          	bne	s2,s5,400164 <printString+0x6c>
  400158:	00140413          	addi	s0,s0,1
  40015c:	0ff47413          	zext.b	s0,s0
  400160:	048b6463          	bltu	s6,s0,4001a8 <printString+0xb0>
  400164:	009987b3          	add	a5,s3,s1
  400168:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  40016c:	00048513          	mv	a0,s1
  400170:	fc0598e3          	bnez	a1,400140 <printString+0x48>
  400174:	01c12083          	lw	ra,28(sp)
  400178:	01812403          	lw	s0,24(sp)
  40017c:	01412483          	lw	s1,20(sp)
  400180:	01012903          	lw	s2,16(sp)
  400184:	00c12983          	lw	s3,12(sp)
  400188:	00812a03          	lw	s4,8(sp)
  40018c:	00412a83          	lw	s5,4(sp)
  400190:	00012b03          	lw	s6,0(sp)
  400194:	02010113          	addi	sp,sp,32
  400198:	00008067          	ret
  40019c:	00100913          	li	s2,1
  4001a0:	00090413          	mv	s0,s2
  4001a4:	f8dff06f          	j	400130 <printString+0x38>
  4001a8:	00090413          	mv	s0,s2
  4001ac:	fb9ff06f          	j	400164 <printString+0x6c>
  4001b0:	00000513          	li	a0,0
  4001b4:	fc1ff06f          	j	400174 <printString+0x7c>

004001b8 <printHex>:
  4001b8:	fd010113          	addi	sp,sp,-48
  4001bc:	02812423          	sw	s0,40(sp)
  4001c0:	00058413          	mv	s0,a1
  4001c4:	004015b7          	lui	a1,0x401
  4001c8:	02912223          	sw	s1,36(sp)
  4001cc:	03212023          	sw	s2,32(sp)
  4001d0:	91458593          	addi	a1,a1,-1772 # 400914 <_etext+0x224>
  4001d4:	00050493          	mv	s1,a0
  4001d8:	00060913          	mv	s2,a2
  4001dc:	00c10513          	addi	a0,sp,12
  4001e0:	01100613          	li	a2,17
  4001e4:	02112623          	sw	ra,44(sp)
  4001e8:	e71ff0ef          	jal	400058 <memcpy>
  4001ec:	202027b7          	lui	a5,0x20202
  4001f0:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  4001f4:	00f12023          	sw	a5,0(sp)
  4001f8:	00f12223          	sw	a5,4(sp)
  4001fc:	00010423          	sb	zero,8(sp)
  400200:	00700793          	li	a5,7
  400204:	00010593          	mv	a1,sp
  400208:	fff00693          	li	a3,-1
  40020c:	00f47713          	andi	a4,s0,15
  400210:	02070713          	addi	a4,a4,32
  400214:	00270733          	add	a4,a4,sp
  400218:	fec74703          	lbu	a4,-20(a4)
  40021c:	00f58633          	add	a2,a1,a5
  400220:	fff78793          	addi	a5,a5,-1
  400224:	00e60023          	sb	a4,0(a2)
  400228:	40445413          	srai	s0,s0,0x4
  40022c:	fed790e3          	bne	a5,a3,40020c <printHex+0x54>
  400230:	00090613          	mv	a2,s2
  400234:	00048513          	mv	a0,s1
  400238:	ec1ff0ef          	jal	4000f8 <printString>
  40023c:	02c12083          	lw	ra,44(sp)
  400240:	02812403          	lw	s0,40(sp)
  400244:	02412483          	lw	s1,36(sp)
  400248:	02012903          	lw	s2,32(sp)
  40024c:	0ff57513          	zext.b	a0,a0
  400250:	03010113          	addi	sp,sp,48
  400254:	00008067          	ret

00400258 <printDec>:
  400258:	fd010113          	addi	sp,sp,-48
  40025c:	02812423          	sw	s0,40(sp)
  400260:	00058413          	mv	s0,a1
  400264:	004005b7          	lui	a1,0x400
  400268:	02912223          	sw	s1,36(sp)
  40026c:	03212023          	sw	s2,32(sp)
  400270:	00050493          	mv	s1,a0
  400274:	00060913          	mv	s2,a2
  400278:	6dc58593          	addi	a1,a1,1756 # 4006dc <resetScreenVector+0xc>
  40027c:	01400613          	li	a2,20
  400280:	00c10513          	addi	a0,sp,12
  400284:	02112623          	sw	ra,44(sp)
  400288:	dd1ff0ef          	jal	400058 <memcpy>
  40028c:	000187b7          	lui	a5,0x18
  400290:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1809f>
  400294:	0287fa63          	bgeu	a5,s0,4002c8 <printDec+0x70>
  400298:	004015b7          	lui	a1,0x401
  40029c:	00090613          	mv	a2,s2
  4002a0:	92858593          	addi	a1,a1,-1752 # 400928 <_etext+0x238>
  4002a4:	00048513          	mv	a0,s1
  4002a8:	e51ff0ef          	jal	4000f8 <printString>
  4002ac:	02c12083          	lw	ra,44(sp)
  4002b0:	02812403          	lw	s0,40(sp)
  4002b4:	02412483          	lw	s1,36(sp)
  4002b8:	02012903          	lw	s2,32(sp)
  4002bc:	0ff57513          	zext.b	a0,a0
  4002c0:	03010113          	addi	sp,sp,48
  4002c4:	00008067          	ret
  4002c8:	00100613          	li	a2,1
  4002cc:	00c10713          	addi	a4,sp,12
  4002d0:	00000793          	li	a5,0
  4002d4:	00060513          	mv	a0,a2
  4002d8:	00072583          	lw	a1,0(a4)
  4002dc:	00000693          	li	a3,0
  4002e0:	06b47263          	bgeu	s0,a1,400344 <printDec+0xec>
  4002e4:	00069663          	bnez	a3,4002f0 <printDec+0x98>
  4002e8:	00a58463          	beq	a1,a0,4002f0 <printDec+0x98>
  4002ec:	00061e63          	bnez	a2,400308 <printDec+0xb0>
  4002f0:	02078613          	addi	a2,a5,32
  4002f4:	00260633          	add	a2,a2,sp
  4002f8:	03068693          	addi	a3,a3,48
  4002fc:	fed60223          	sb	a3,-28(a2)
  400300:	00178793          	addi	a5,a5,1
  400304:	00000613          	li	a2,0
  400308:	00470713          	addi	a4,a4,4
  40030c:	02010693          	addi	a3,sp,32
  400310:	fcd714e3          	bne	a4,a3,4002d8 <printDec+0x80>
  400314:	00060c63          	beqz	a2,40032c <printDec+0xd4>
  400318:	02078713          	addi	a4,a5,32
  40031c:	00270733          	add	a4,a4,sp
  400320:	03000693          	li	a3,48
  400324:	fed70223          	sb	a3,-28(a4)
  400328:	00178793          	addi	a5,a5,1
  40032c:	02078793          	addi	a5,a5,32
  400330:	002787b3          	add	a5,a5,sp
  400334:	fe078223          	sb	zero,-28(a5)
  400338:	00090613          	mv	a2,s2
  40033c:	00410593          	addi	a1,sp,4
  400340:	f65ff06f          	j	4002a4 <printDec+0x4c>
  400344:	40b40433          	sub	s0,s0,a1
  400348:	00168693          	addi	a3,a3,1
  40034c:	f95ff06f          	j	4002e0 <printDec+0x88>

00400350 <printf>:
  400350:	fa010113          	addi	sp,sp,-96
  400354:	04f12a23          	sw	a5,84(sp)
  400358:	04410793          	addi	a5,sp,68
  40035c:	02812c23          	sw	s0,56(sp)
  400360:	02912a23          	sw	s1,52(sp)
  400364:	03212823          	sw	s2,48(sp)
  400368:	03312623          	sw	s3,44(sp)
  40036c:	03412423          	sw	s4,40(sp)
  400370:	03512223          	sw	s5,36(sp)
  400374:	03612023          	sw	s6,32(sp)
  400378:	01812c23          	sw	s8,24(sp)
  40037c:	02112e23          	sw	ra,60(sp)
  400380:	01712e23          	sw	s7,28(sp)
  400384:	00050493          	mv	s1,a0
  400388:	04b12223          	sw	a1,68(sp)
  40038c:	04c12423          	sw	a2,72(sp)
  400390:	04d12623          	sw	a3,76(sp)
  400394:	04e12823          	sw	a4,80(sp)
  400398:	05012c23          	sw	a6,88(sp)
  40039c:	05112e23          	sw	a7,92(sp)
  4003a0:	00f12623          	sw	a5,12(sp)
  4003a4:	00000c13          	li	s8,0
  4003a8:	00401437          	lui	s0,0x401
  4003ac:	00a00993          	li	s3,10
  4003b0:	02500913          	li	s2,37
  4003b4:	07800a13          	li	s4,120
  4003b8:	06400a93          	li	s5,100
  4003bc:	06300b13          	li	s6,99
  4003c0:	018487b3          	add	a5,s1,s8
  4003c4:	0007c583          	lbu	a1,0(a5)
  4003c8:	92e41503          	lh	a0,-1746(s0) # 40092e <screenPos>
  4003cc:	02059a63          	bnez	a1,400400 <printf+0xb0>
  4003d0:	03c12083          	lw	ra,60(sp)
  4003d4:	03812403          	lw	s0,56(sp)
  4003d8:	03412483          	lw	s1,52(sp)
  4003dc:	03012903          	lw	s2,48(sp)
  4003e0:	02c12983          	lw	s3,44(sp)
  4003e4:	02812a03          	lw	s4,40(sp)
  4003e8:	02412a83          	lw	s5,36(sp)
  4003ec:	02012b03          	lw	s6,32(sp)
  4003f0:	01c12b83          	lw	s7,28(sp)
  4003f4:	01812c03          	lw	s8,24(sp)
  4003f8:	06010113          	addi	sp,sp,96
  4003fc:	00008067          	ret
  400400:	001c0b93          	addi	s7,s8,1
  400404:	01359e63          	bne	a1,s3,400420 <printf+0xd0>
  400408:	fc057793          	andi	a5,a0,-64
  40040c:	04078793          	addi	a5,a5,64
  400410:	01079793          	slli	a5,a5,0x10
  400414:	4107d793          	srai	a5,a5,0x10
  400418:	000c0b93          	mv	s7,s8
  40041c:	0380006f          	j	400454 <printf+0x104>
  400420:	0d259263          	bne	a1,s2,4004e4 <printf+0x194>
  400424:	0017c783          	lbu	a5,1(a5)
  400428:	03479c63          	bne	a5,s4,400460 <printf+0x110>
  40042c:	00c12783          	lw	a5,12(sp)
  400430:	00f00613          	li	a2,15
  400434:	0007a583          	lw	a1,0(a5)
  400438:	00478713          	addi	a4,a5,4
  40043c:	00e12623          	sw	a4,12(sp)
  400440:	d79ff0ef          	jal	4001b8 <printHex>
  400444:	92e45783          	lhu	a5,-1746(s0)
  400448:	00f507b3          	add	a5,a0,a5
  40044c:	01079793          	slli	a5,a5,0x10
  400450:	4107d793          	srai	a5,a5,0x10
  400454:	92f41723          	sh	a5,-1746(s0)
  400458:	001b8c13          	addi	s8,s7,1
  40045c:	f65ff06f          	j	4003c0 <printf+0x70>
  400460:	03579063          	bne	a5,s5,400480 <printf+0x130>
  400464:	00c12783          	lw	a5,12(sp)
  400468:	00f00613          	li	a2,15
  40046c:	0007a583          	lw	a1,0(a5)
  400470:	00478713          	addi	a4,a5,4
  400474:	00e12623          	sw	a4,12(sp)
  400478:	de1ff0ef          	jal	400258 <printDec>
  40047c:	fc9ff06f          	j	400444 <printf+0xf4>
  400480:	03679463          	bne	a5,s6,4004a8 <printf+0x158>
  400484:	00c12783          	lw	a5,12(sp)
  400488:	00f00613          	li	a2,15
  40048c:	0007c583          	lbu	a1,0(a5)
  400490:	00478713          	addi	a4,a5,4
  400494:	00e12623          	sw	a4,12(sp)
  400498:	c31ff0ef          	jal	4000c8 <putch>
  40049c:	92e45783          	lhu	a5,-1746(s0)
  4004a0:	00178793          	addi	a5,a5,1
  4004a4:	fa9ff06f          	j	40044c <printf+0xfc>
  4004a8:	07300713          	li	a4,115
  4004ac:	02e79063          	bne	a5,a4,4004cc <printf+0x17c>
  4004b0:	00c12783          	lw	a5,12(sp)
  4004b4:	00f00613          	li	a2,15
  4004b8:	0007a583          	lw	a1,0(a5)
  4004bc:	00478713          	addi	a4,a5,4
  4004c0:	00e12623          	sw	a4,12(sp)
  4004c4:	c35ff0ef          	jal	4000f8 <printString>
  4004c8:	f7dff06f          	j	400444 <printf+0xf4>
  4004cc:	00f00613          	li	a2,15
  4004d0:	00090593          	mv	a1,s2
  4004d4:	bf5ff0ef          	jal	4000c8 <putch>
  4004d8:	92e45783          	lhu	a5,-1746(s0)
  4004dc:	00178793          	addi	a5,a5,1
  4004e0:	f31ff06f          	j	400410 <printf+0xc0>
  4004e4:	00f00613          	li	a2,15
  4004e8:	fedff06f          	j	4004d4 <printf+0x184>

004004ec <printfSCR>:
  4004ec:	f9010113          	addi	sp,sp,-112
  4004f0:	06f12223          	sw	a5,100(sp)
  4004f4:	05c10793          	addi	a5,sp,92
  4004f8:	04812423          	sw	s0,72(sp)
  4004fc:	04912223          	sw	s1,68(sp)
  400500:	05212023          	sw	s2,64(sp)
  400504:	03412c23          	sw	s4,56(sp)
  400508:	03512a23          	sw	s5,52(sp)
  40050c:	03612823          	sw	s6,48(sp)
  400510:	03712623          	sw	s7,44(sp)
  400514:	03812423          	sw	s8,40(sp)
  400518:	03912223          	sw	s9,36(sp)
  40051c:	03a12023          	sw	s10,32(sp)
  400520:	01b12e23          	sw	s11,28(sp)
  400524:	04112623          	sw	ra,76(sp)
  400528:	03312e23          	sw	s3,60(sp)
  40052c:	00050a93          	mv	s5,a0
  400530:	00058493          	mv	s1,a1
  400534:	00060a13          	mv	s4,a2
  400538:	04d12e23          	sw	a3,92(sp)
  40053c:	06e12023          	sw	a4,96(sp)
  400540:	07012423          	sw	a6,104(sp)
  400544:	07112623          	sw	a7,108(sp)
  400548:	00f12623          	sw	a5,12(sp)
  40054c:	00000913          	li	s2,0
  400550:	00000413          	li	s0,0
  400554:	00a00b93          	li	s7,10
  400558:	02500b13          	li	s6,37
  40055c:	07800c13          	li	s8,120
  400560:	06400c93          	li	s9,100
  400564:	06300d13          	li	s10,99
  400568:	07300d93          	li	s11,115
  40056c:	012a07b3          	add	a5,s4,s2
  400570:	0007c583          	lbu	a1,0(a5)
  400574:	04059263          	bnez	a1,4005b8 <printfSCR+0xcc>
  400578:	04c12083          	lw	ra,76(sp)
  40057c:	00040513          	mv	a0,s0
  400580:	04812403          	lw	s0,72(sp)
  400584:	04412483          	lw	s1,68(sp)
  400588:	04012903          	lw	s2,64(sp)
  40058c:	03c12983          	lw	s3,60(sp)
  400590:	03812a03          	lw	s4,56(sp)
  400594:	03412a83          	lw	s5,52(sp)
  400598:	03012b03          	lw	s6,48(sp)
  40059c:	02c12b83          	lw	s7,44(sp)
  4005a0:	02812c03          	lw	s8,40(sp)
  4005a4:	02412c83          	lw	s9,36(sp)
  4005a8:	02012d03          	lw	s10,32(sp)
  4005ac:	01c12d83          	lw	s11,28(sp)
  4005b0:	07010113          	addi	sp,sp,112
  4005b4:	00008067          	ret
  4005b8:	00190993          	addi	s3,s2,1
  4005bc:	01759a63          	bne	a1,s7,4005d0 <printfSCR+0xe4>
  4005c0:	fc047413          	andi	s0,s0,-64
  4005c4:	04040413          	addi	s0,s0,64
  4005c8:	00090993          	mv	s3,s2
  4005cc:	0740006f          	j	400640 <printfSCR+0x154>
  4005d0:	01540533          	add	a0,s0,s5
  4005d4:	0b659463          	bne	a1,s6,40067c <printfSCR+0x190>
  4005d8:	0017c783          	lbu	a5,1(a5)
  4005dc:	03879263          	bne	a5,s8,400600 <printfSCR+0x114>
  4005e0:	00c12783          	lw	a5,12(sp)
  4005e4:	00048613          	mv	a2,s1
  4005e8:	0007a583          	lw	a1,0(a5)
  4005ec:	00478713          	addi	a4,a5,4
  4005f0:	00e12623          	sw	a4,12(sp)
  4005f4:	bc5ff0ef          	jal	4001b8 <printHex>
  4005f8:	00a40433          	add	s0,s0,a0
  4005fc:	0440006f          	j	400640 <printfSCR+0x154>
  400600:	03979063          	bne	a5,s9,400620 <printfSCR+0x134>
  400604:	00c12783          	lw	a5,12(sp)
  400608:	00048613          	mv	a2,s1
  40060c:	0007a583          	lw	a1,0(a5)
  400610:	00478713          	addi	a4,a5,4
  400614:	00e12623          	sw	a4,12(sp)
  400618:	c41ff0ef          	jal	400258 <printDec>
  40061c:	fddff06f          	j	4005f8 <printfSCR+0x10c>
  400620:	03a79463          	bne	a5,s10,400648 <printfSCR+0x15c>
  400624:	00c12783          	lw	a5,12(sp)
  400628:	00048613          	mv	a2,s1
  40062c:	00140413          	addi	s0,s0,1
  400630:	0007c583          	lbu	a1,0(a5)
  400634:	00478713          	addi	a4,a5,4
  400638:	00e12623          	sw	a4,12(sp)
  40063c:	a8dff0ef          	jal	4000c8 <putch>
  400640:	00198913          	addi	s2,s3,1
  400644:	f29ff06f          	j	40056c <printfSCR+0x80>
  400648:	03b79063          	bne	a5,s11,400668 <printfSCR+0x17c>
  40064c:	00c12783          	lw	a5,12(sp)
  400650:	00048613          	mv	a2,s1
  400654:	0007a583          	lw	a1,0(a5)
  400658:	00478713          	addi	a4,a5,4
  40065c:	00e12623          	sw	a4,12(sp)
  400660:	a99ff0ef          	jal	4000f8 <printString>
  400664:	f95ff06f          	j	4005f8 <printfSCR+0x10c>
  400668:	00048613          	mv	a2,s1
  40066c:	000b0593          	mv	a1,s6
  400670:	a59ff0ef          	jal	4000c8 <putch>
  400674:	00140413          	addi	s0,s0,1
  400678:	f51ff06f          	j	4005c8 <printfSCR+0xdc>
  40067c:	00048613          	mv	a2,s1
  400680:	ff1ff06f          	j	400670 <printfSCR+0x184>

00400684 <clearScreen>:
  400684:	ff010113          	addi	sp,sp,-16
  400688:	00812423          	sw	s0,8(sp)
  40068c:	00912223          	sw	s1,4(sp)
  400690:	00112623          	sw	ra,12(sp)
  400694:	00000413          	li	s0,0
  400698:	4c000493          	li	s1,1216
  40069c:	00040513          	mv	a0,s0
  4006a0:	00f00613          	li	a2,15
  4006a4:	02000593          	li	a1,32
  4006a8:	00140413          	addi	s0,s0,1
  4006ac:	a1dff0ef          	jal	4000c8 <putch>
  4006b0:	fe9416e3          	bne	s0,s1,40069c <clearScreen+0x18>
  4006b4:	00c12083          	lw	ra,12(sp)
  4006b8:	00812403          	lw	s0,8(sp)
  4006bc:	004017b7          	lui	a5,0x401
  4006c0:	92079723          	sh	zero,-1746(a5) # 40092e <screenPos>
  4006c4:	00412483          	lw	s1,4(sp)
  4006c8:	01010113          	addi	sp,sp,16
  4006cc:	00008067          	ret

004006d0 <resetScreenVector>:
  4006d0:	004017b7          	lui	a5,0x401
  4006d4:	92079723          	sh	zero,-1746(a5) # 40092e <screenPos>
  4006d8:	00008067          	ret
  4006dc:	2710                	.insn	2, 0x2710
  4006de:	0000                	.insn	2, 0x
  4006e0:	03e8                	.insn	2, 0x03e8
  4006e2:	0000                	.insn	2, 0x
  4006e4:	0064                	.insn	2, 0x0064
  4006e6:	0000                	.insn	2, 0x
  4006e8:	000a                	.insn	2, 0x000a
  4006ea:	0000                	.insn	2, 0x
  4006ec:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

004006f0 <main>:
  4006f0:	ff010113          	addi	sp,sp,-16
  4006f4:	876547b7          	lui	a5,0x87654
  4006f8:	00112623          	sw	ra,12(sp)
  4006fc:	00812423          	sw	s0,8(sp)
  400700:	40000737          	lui	a4,0x40000
  400704:	32178793          	addi	a5,a5,801 # 87654321 <_stack_end+0x87252321>
  400708:	00f72023          	sw	a5,0(a4) # 40000000 <_stack_end+0x3fbfe000>
  40070c:	00f72023          	sw	a5,0(a4)
  400710:	00f72023          	sw	a5,0(a4)
  400714:	00070793          	mv	a5,a4
  400718:	12345737          	lui	a4,0x12345
  40071c:	67870713          	addi	a4,a4,1656 # 12345678 <_stack_end+0x11f43678>
  400720:	00e7a223          	sw	a4,4(a5)
  400724:	00e7a223          	sw	a4,4(a5)
  400728:	00e7a223          	sw	a4,4(a5)
  40072c:	11111737          	lui	a4,0x11111
  400730:	400007b7          	lui	a5,0x40000
  400734:	11170713          	addi	a4,a4,273 # 11111111 <_stack_end+0x10d0f111>
  400738:	00e7a423          	sw	a4,8(a5) # 40000008 <_stack_end+0x3fbfe008>
  40073c:	00e7a423          	sw	a4,8(a5)
  400740:	00e7a423          	sw	a4,8(a5)
  400744:	22222737          	lui	a4,0x22222
  400748:	400007b7          	lui	a5,0x40000
  40074c:	22270713          	addi	a4,a4,546 # 22222222 <_stack_end+0x21e20222>
  400750:	00e7a623          	sw	a4,12(a5) # 4000000c <_stack_end+0x3fbfe00c>
  400754:	00e7a623          	sw	a4,12(a5)
  400758:	00e7a623          	sw	a4,12(a5)
  40075c:	33333737          	lui	a4,0x33333
  400760:	400007b7          	lui	a5,0x40000
  400764:	33370713          	addi	a4,a4,819 # 33333333 <_stack_end+0x32f31333>
  400768:	00e7a823          	sw	a4,16(a5) # 40000010 <_stack_end+0x3fbfe010>
  40076c:	00e7a823          	sw	a4,16(a5)
  400770:	00e7a823          	sw	a4,16(a5)
  400774:	44444737          	lui	a4,0x44444
  400778:	400007b7          	lui	a5,0x40000
  40077c:	44470713          	addi	a4,a4,1092 # 44444444 <_stack_end+0x44042444>
  400780:	00e7aa23          	sw	a4,20(a5) # 40000014 <_stack_end+0x3fbfe014>
  400784:	00e7aa23          	sw	a4,20(a5)
  400788:	00e7aa23          	sw	a4,20(a5)
  40078c:	55555737          	lui	a4,0x55555
  400790:	400007b7          	lui	a5,0x40000
  400794:	55570713          	addi	a4,a4,1365 # 55555555 <_stack_end+0x55153555>
  400798:	00e7ac23          	sw	a4,24(a5) # 40000018 <_stack_end+0x3fbfe018>
  40079c:	00e7ac23          	sw	a4,24(a5)
  4007a0:	00e7ac23          	sw	a4,24(a5)
  4007a4:	66666737          	lui	a4,0x66666
  4007a8:	400007b7          	lui	a5,0x40000
  4007ac:	66670713          	addi	a4,a4,1638 # 66666666 <_stack_end+0x66264666>
  4007b0:	00e7ae23          	sw	a4,28(a5) # 4000001c <_stack_end+0x3fbfe01c>
  4007b4:	00e7ae23          	sw	a4,28(a5)
  4007b8:	00e7ae23          	sw	a4,28(a5)
  4007bc:	77777737          	lui	a4,0x77777
  4007c0:	400007b7          	lui	a5,0x40000
  4007c4:	77770713          	addi	a4,a4,1911 # 77777777 <_stack_end+0x77375777>
  4007c8:	02e7a023          	sw	a4,32(a5) # 40000020 <_stack_end+0x3fbfe020>
  4007cc:	02e7a023          	sw	a4,32(a5)
  4007d0:	02e7a023          	sw	a4,32(a5)
  4007d4:	88889737          	lui	a4,0x88889
  4007d8:	400007b7          	lui	a5,0x40000
  4007dc:	88870713          	addi	a4,a4,-1912 # 88888888 <_stack_end+0x88486888>
  4007e0:	02e7a223          	sw	a4,36(a5) # 40000024 <_stack_end+0x3fbfe024>
  4007e4:	02e7a223          	sw	a4,36(a5)
  4007e8:	02e7a223          	sw	a4,36(a5)
  4007ec:	9999a737          	lui	a4,0x9999a
  4007f0:	400007b7          	lui	a5,0x40000
  4007f4:	99970713          	addi	a4,a4,-1639 # 99999999 <_stack_end+0x99597999>
  4007f8:	02e7a423          	sw	a4,40(a5) # 40000028 <_stack_end+0x3fbfe028>
  4007fc:	02e7a423          	sw	a4,40(a5)
  400800:	00401537          	lui	a0,0x401
  400804:	02e7a423          	sw	a4,40(a5)
  400808:	8ec50513          	addi	a0,a0,-1812 # 4008ec <main+0x1fc>
  40080c:	b45ff0ef          	jal	400350 <printf>
  400810:	00000513          	li	a0,0
  400814:	00401437          	lui	s0,0x401
  400818:	821ff0ef          	jal	400038 <readRam>
  40081c:	00050593          	mv	a1,a0
  400820:	8fc40513          	addi	a0,s0,-1796 # 4008fc <main+0x20c>
  400824:	b2dff0ef          	jal	400350 <printf>
  400828:	00100513          	li	a0,1
  40082c:	80dff0ef          	jal	400038 <readRam>
  400830:	00050593          	mv	a1,a0
  400834:	8fc40513          	addi	a0,s0,-1796
  400838:	b19ff0ef          	jal	400350 <printf>
  40083c:	00200513          	li	a0,2
  400840:	ff8ff0ef          	jal	400038 <readRam>
  400844:	00050593          	mv	a1,a0
  400848:	8fc40513          	addi	a0,s0,-1796
  40084c:	b05ff0ef          	jal	400350 <printf>
  400850:	00300513          	li	a0,3
  400854:	fe4ff0ef          	jal	400038 <readRam>
  400858:	00050593          	mv	a1,a0
  40085c:	8fc40513          	addi	a0,s0,-1796
  400860:	af1ff0ef          	jal	400350 <printf>
  400864:	00400513          	li	a0,4
  400868:	fd0ff0ef          	jal	400038 <readRam>
  40086c:	00050593          	mv	a1,a0
  400870:	8fc40513          	addi	a0,s0,-1796
  400874:	addff0ef          	jal	400350 <printf>
  400878:	00500513          	li	a0,5
  40087c:	fbcff0ef          	jal	400038 <readRam>
  400880:	00050593          	mv	a1,a0
  400884:	8fc40513          	addi	a0,s0,-1796
  400888:	ac9ff0ef          	jal	400350 <printf>
  40088c:	00600513          	li	a0,6
  400890:	fa8ff0ef          	jal	400038 <readRam>
  400894:	00050593          	mv	a1,a0
  400898:	8fc40513          	addi	a0,s0,-1796
  40089c:	ab5ff0ef          	jal	400350 <printf>
  4008a0:	00700513          	li	a0,7
  4008a4:	f94ff0ef          	jal	400038 <readRam>
  4008a8:	00050593          	mv	a1,a0
  4008ac:	8fc40513          	addi	a0,s0,-1796
  4008b0:	aa1ff0ef          	jal	400350 <printf>
  4008b4:	00800513          	li	a0,8
  4008b8:	f80ff0ef          	jal	400038 <readRam>
  4008bc:	00050593          	mv	a1,a0
  4008c0:	8fc40513          	addi	a0,s0,-1796
  4008c4:	a8dff0ef          	jal	400350 <printf>
  4008c8:	00900513          	li	a0,9
  4008cc:	f6cff0ef          	jal	400038 <readRam>
  4008d0:	00050593          	mv	a1,a0
  4008d4:	8fc40513          	addi	a0,s0,-1796
  4008d8:	a79ff0ef          	jal	400350 <printf>
  4008dc:	00401537          	lui	a0,0x401
  4008e0:	90050513          	addi	a0,a0,-1792 # 400900 <main+0x210>
  4008e4:	a6dff0ef          	jal	400350 <printf>
  4008e8:	0000006f          	j	4008e8 <main+0x1f8>
