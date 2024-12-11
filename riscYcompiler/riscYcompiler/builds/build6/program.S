
builds/build6/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	a0010113          	addi	sp,sp,-1536 # 401a00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	6d0000ef          	jal	4006e0 <_etext>
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
  40003c:	00052783          	lw	a5,0(a0)
  400040:	00052503          	lw	a0,0(a0)
  400044:	00008067          	ret

00400048 <memcpy>:
  400048:	00000793          	li	a5,0
  40004c:	00c7c463          	blt	a5,a2,400054 <memcpy+0xc>
  400050:	00008067          	ret
  400054:	00f58733          	add	a4,a1,a5
  400058:	00074683          	lbu	a3,0(a4)
  40005c:	00f50733          	add	a4,a0,a5
  400060:	00178793          	addi	a5,a5,1 # 40000001 <_stack_end+0x3fbfe001>
  400064:	00d70023          	sb	a3,0(a4)
  400068:	fe5ff06f          	j	40004c <memcpy+0x4>

0040006c <memset>:
  40006c:	00c50633          	add	a2,a0,a2
  400070:	00050793          	mv	a5,a0
  400074:	00c79463          	bne	a5,a2,40007c <memset+0x10>
  400078:	00008067          	ret
  40007c:	00178793          	addi	a5,a5,1
  400080:	feb78fa3          	sb	a1,-1(a5)
  400084:	ff1ff06f          	j	400074 <memset+0x8>

00400088 <getButtonDown>:
  400088:	890007b7          	lui	a5,0x89000
  40008c:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  400090:	00008067          	ret

00400094 <getButtonUp>:
  400094:	890007b7          	lui	a5,0x89000
  400098:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  40009c:	00008067          	ret

004000a0 <getButtonLeft>:
  4000a0:	890007b7          	lui	a5,0x89000
  4000a4:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4000a8:	00008067          	ret

004000ac <getButtonRight>:
  4000ac:	890007b7          	lui	a5,0x89000
  4000b0:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  4000b4:	00008067          	ret

004000b8 <putch>:
  4000b8:	4c000793          	li	a5,1216
  4000bc:	02a7e263          	bltu	a5,a0,4000e0 <putch+0x28>
  4000c0:	00861613          	slli	a2,a2,0x8
  4000c4:	880007b7          	lui	a5,0x88000
  4000c8:	00151513          	slli	a0,a0,0x1
  4000cc:	00f50533          	add	a0,a0,a5
  4000d0:	00b665b3          	or	a1,a2,a1
  4000d4:	00b51023          	sh	a1,0(a0)
  4000d8:	00100513          	li	a0,1
  4000dc:	00008067          	ret
  4000e0:	00000513          	li	a0,0
  4000e4:	00008067          	ret

004000e8 <printString>:
  4000e8:	fe010113          	addi	sp,sp,-32
  4000ec:	01312623          	sw	s3,12(sp)
  4000f0:	01412423          	sw	s4,8(sp)
  4000f4:	00112e23          	sw	ra,28(sp)
  4000f8:	00812c23          	sw	s0,24(sp)
  4000fc:	00912a23          	sw	s1,20(sp)
  400100:	01212823          	sw	s2,16(sp)
  400104:	01512223          	sw	s5,4(sp)
  400108:	01612023          	sw	s6,0(sp)
  40010c:	00050a13          	mv	s4,a0
  400110:	00058993          	mv	s3,a1
  400114:	06060c63          	beqz	a2,40018c <printString+0xa4>
  400118:	00060413          	mv	s0,a2
  40011c:	00000913          	li	s2,0
  400120:	00000493          	li	s1,0
  400124:	00100a93          	li	s5,1
  400128:	00f00b13          	li	s6,15
  40012c:	0280006f          	j	400154 <printString+0x6c>
  400130:	00040613          	mv	a2,s0
  400134:	009a0533          	add	a0,s4,s1
  400138:	f81ff0ef          	jal	4000b8 <putch>
  40013c:	06050263          	beqz	a0,4001a0 <printString+0xb8>
  400140:	00148493          	addi	s1,s1,1
  400144:	01591863          	bne	s2,s5,400154 <printString+0x6c>
  400148:	00140413          	addi	s0,s0,1
  40014c:	0ff47413          	zext.b	s0,s0
  400150:	048b6463          	bltu	s6,s0,400198 <printString+0xb0>
  400154:	009987b3          	add	a5,s3,s1
  400158:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  40015c:	00048513          	mv	a0,s1
  400160:	fc0598e3          	bnez	a1,400130 <printString+0x48>
  400164:	01c12083          	lw	ra,28(sp)
  400168:	01812403          	lw	s0,24(sp)
  40016c:	01412483          	lw	s1,20(sp)
  400170:	01012903          	lw	s2,16(sp)
  400174:	00c12983          	lw	s3,12(sp)
  400178:	00812a03          	lw	s4,8(sp)
  40017c:	00412a83          	lw	s5,4(sp)
  400180:	00012b03          	lw	s6,0(sp)
  400184:	02010113          	addi	sp,sp,32
  400188:	00008067          	ret
  40018c:	00100913          	li	s2,1
  400190:	00090413          	mv	s0,s2
  400194:	f8dff06f          	j	400120 <printString+0x38>
  400198:	00090413          	mv	s0,s2
  40019c:	fb9ff06f          	j	400154 <printString+0x6c>
  4001a0:	00000513          	li	a0,0
  4001a4:	fc1ff06f          	j	400164 <printString+0x7c>

004001a8 <printHex>:
  4001a8:	fd010113          	addi	sp,sp,-48
  4001ac:	02812423          	sw	s0,40(sp)
  4001b0:	00058413          	mv	s0,a1
  4001b4:	004005b7          	lui	a1,0x400
  4001b8:	02912223          	sw	s1,36(sp)
  4001bc:	03212023          	sw	s2,32(sp)
  4001c0:	7b858593          	addi	a1,a1,1976 # 4007b8 <_etext+0xd8>
  4001c4:	00050493          	mv	s1,a0
  4001c8:	00060913          	mv	s2,a2
  4001cc:	00c10513          	addi	a0,sp,12
  4001d0:	01100613          	li	a2,17
  4001d4:	02112623          	sw	ra,44(sp)
  4001d8:	e71ff0ef          	jal	400048 <memcpy>
  4001dc:	202027b7          	lui	a5,0x20202
  4001e0:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  4001e4:	00f12023          	sw	a5,0(sp)
  4001e8:	00f12223          	sw	a5,4(sp)
  4001ec:	00010423          	sb	zero,8(sp)
  4001f0:	00700793          	li	a5,7
  4001f4:	00010593          	mv	a1,sp
  4001f8:	fff00693          	li	a3,-1
  4001fc:	00f47713          	andi	a4,s0,15
  400200:	02070713          	addi	a4,a4,32
  400204:	00270733          	add	a4,a4,sp
  400208:	fec74703          	lbu	a4,-20(a4)
  40020c:	00f58633          	add	a2,a1,a5
  400210:	fff78793          	addi	a5,a5,-1
  400214:	00e60023          	sb	a4,0(a2)
  400218:	40445413          	srai	s0,s0,0x4
  40021c:	fed790e3          	bne	a5,a3,4001fc <printHex+0x54>
  400220:	00090613          	mv	a2,s2
  400224:	00048513          	mv	a0,s1
  400228:	ec1ff0ef          	jal	4000e8 <printString>
  40022c:	02c12083          	lw	ra,44(sp)
  400230:	02812403          	lw	s0,40(sp)
  400234:	02412483          	lw	s1,36(sp)
  400238:	02012903          	lw	s2,32(sp)
  40023c:	0ff57513          	zext.b	a0,a0
  400240:	03010113          	addi	sp,sp,48
  400244:	00008067          	ret

00400248 <printDec>:
  400248:	fd010113          	addi	sp,sp,-48
  40024c:	02812423          	sw	s0,40(sp)
  400250:	00058413          	mv	s0,a1
  400254:	004005b7          	lui	a1,0x400
  400258:	02912223          	sw	s1,36(sp)
  40025c:	03212023          	sw	s2,32(sp)
  400260:	00050493          	mv	s1,a0
  400264:	00060913          	mv	s2,a2
  400268:	6cc58593          	addi	a1,a1,1740 # 4006cc <resetScreenVector+0xc>
  40026c:	01400613          	li	a2,20
  400270:	00c10513          	addi	a0,sp,12
  400274:	02112623          	sw	ra,44(sp)
  400278:	dd1ff0ef          	jal	400048 <memcpy>
  40027c:	000187b7          	lui	a5,0x18
  400280:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1809f>
  400284:	0287fa63          	bgeu	a5,s0,4002b8 <printDec+0x70>
  400288:	004005b7          	lui	a1,0x400
  40028c:	00090613          	mv	a2,s2
  400290:	7cc58593          	addi	a1,a1,1996 # 4007cc <_etext+0xec>
  400294:	00048513          	mv	a0,s1
  400298:	e51ff0ef          	jal	4000e8 <printString>
  40029c:	02c12083          	lw	ra,44(sp)
  4002a0:	02812403          	lw	s0,40(sp)
  4002a4:	02412483          	lw	s1,36(sp)
  4002a8:	02012903          	lw	s2,32(sp)
  4002ac:	0ff57513          	zext.b	a0,a0
  4002b0:	03010113          	addi	sp,sp,48
  4002b4:	00008067          	ret
  4002b8:	00100613          	li	a2,1
  4002bc:	00c10713          	addi	a4,sp,12
  4002c0:	00000793          	li	a5,0
  4002c4:	00060513          	mv	a0,a2
  4002c8:	00072583          	lw	a1,0(a4)
  4002cc:	00000693          	li	a3,0
  4002d0:	06b47263          	bgeu	s0,a1,400334 <printDec+0xec>
  4002d4:	00069663          	bnez	a3,4002e0 <printDec+0x98>
  4002d8:	00a58463          	beq	a1,a0,4002e0 <printDec+0x98>
  4002dc:	00061e63          	bnez	a2,4002f8 <printDec+0xb0>
  4002e0:	02078613          	addi	a2,a5,32
  4002e4:	00260633          	add	a2,a2,sp
  4002e8:	03068693          	addi	a3,a3,48
  4002ec:	fed60223          	sb	a3,-28(a2)
  4002f0:	00178793          	addi	a5,a5,1
  4002f4:	00000613          	li	a2,0
  4002f8:	00470713          	addi	a4,a4,4
  4002fc:	02010693          	addi	a3,sp,32
  400300:	fcd714e3          	bne	a4,a3,4002c8 <printDec+0x80>
  400304:	00060c63          	beqz	a2,40031c <printDec+0xd4>
  400308:	02078713          	addi	a4,a5,32
  40030c:	00270733          	add	a4,a4,sp
  400310:	03000693          	li	a3,48
  400314:	fed70223          	sb	a3,-28(a4)
  400318:	00178793          	addi	a5,a5,1
  40031c:	02078793          	addi	a5,a5,32
  400320:	002787b3          	add	a5,a5,sp
  400324:	fe078223          	sb	zero,-28(a5)
  400328:	00090613          	mv	a2,s2
  40032c:	00410593          	addi	a1,sp,4
  400330:	f65ff06f          	j	400294 <printDec+0x4c>
  400334:	40b40433          	sub	s0,s0,a1
  400338:	00168693          	addi	a3,a3,1
  40033c:	f95ff06f          	j	4002d0 <printDec+0x88>

00400340 <printf>:
  400340:	fa010113          	addi	sp,sp,-96
  400344:	04f12a23          	sw	a5,84(sp)
  400348:	04410793          	addi	a5,sp,68
  40034c:	02812c23          	sw	s0,56(sp)
  400350:	02912a23          	sw	s1,52(sp)
  400354:	03212823          	sw	s2,48(sp)
  400358:	03312623          	sw	s3,44(sp)
  40035c:	03412423          	sw	s4,40(sp)
  400360:	03512223          	sw	s5,36(sp)
  400364:	03612023          	sw	s6,32(sp)
  400368:	01812c23          	sw	s8,24(sp)
  40036c:	02112e23          	sw	ra,60(sp)
  400370:	01712e23          	sw	s7,28(sp)
  400374:	00050493          	mv	s1,a0
  400378:	04b12223          	sw	a1,68(sp)
  40037c:	04c12423          	sw	a2,72(sp)
  400380:	04d12623          	sw	a3,76(sp)
  400384:	04e12823          	sw	a4,80(sp)
  400388:	05012c23          	sw	a6,88(sp)
  40038c:	05112e23          	sw	a7,92(sp)
  400390:	00f12623          	sw	a5,12(sp)
  400394:	00000c13          	li	s8,0
  400398:	00400437          	lui	s0,0x400
  40039c:	00a00993          	li	s3,10
  4003a0:	02500913          	li	s2,37
  4003a4:	07800a13          	li	s4,120
  4003a8:	06400a93          	li	s5,100
  4003ac:	06300b13          	li	s6,99
  4003b0:	018487b3          	add	a5,s1,s8
  4003b4:	0007c583          	lbu	a1,0(a5)
  4003b8:	7d241503          	lh	a0,2002(s0) # 4007d2 <screenPos>
  4003bc:	02059a63          	bnez	a1,4003f0 <printf+0xb0>
  4003c0:	03c12083          	lw	ra,60(sp)
  4003c4:	03812403          	lw	s0,56(sp)
  4003c8:	03412483          	lw	s1,52(sp)
  4003cc:	03012903          	lw	s2,48(sp)
  4003d0:	02c12983          	lw	s3,44(sp)
  4003d4:	02812a03          	lw	s4,40(sp)
  4003d8:	02412a83          	lw	s5,36(sp)
  4003dc:	02012b03          	lw	s6,32(sp)
  4003e0:	01c12b83          	lw	s7,28(sp)
  4003e4:	01812c03          	lw	s8,24(sp)
  4003e8:	06010113          	addi	sp,sp,96
  4003ec:	00008067          	ret
  4003f0:	001c0b93          	addi	s7,s8,1
  4003f4:	01359e63          	bne	a1,s3,400410 <printf+0xd0>
  4003f8:	fc057793          	andi	a5,a0,-64
  4003fc:	04078793          	addi	a5,a5,64
  400400:	01079793          	slli	a5,a5,0x10
  400404:	4107d793          	srai	a5,a5,0x10
  400408:	000c0b93          	mv	s7,s8
  40040c:	0380006f          	j	400444 <printf+0x104>
  400410:	0d259263          	bne	a1,s2,4004d4 <printf+0x194>
  400414:	0017c783          	lbu	a5,1(a5)
  400418:	03479c63          	bne	a5,s4,400450 <printf+0x110>
  40041c:	00c12783          	lw	a5,12(sp)
  400420:	00f00613          	li	a2,15
  400424:	0007a583          	lw	a1,0(a5)
  400428:	00478713          	addi	a4,a5,4
  40042c:	00e12623          	sw	a4,12(sp)
  400430:	d79ff0ef          	jal	4001a8 <printHex>
  400434:	7d245783          	lhu	a5,2002(s0)
  400438:	00f507b3          	add	a5,a0,a5
  40043c:	01079793          	slli	a5,a5,0x10
  400440:	4107d793          	srai	a5,a5,0x10
  400444:	7cf41923          	sh	a5,2002(s0)
  400448:	001b8c13          	addi	s8,s7,1
  40044c:	f65ff06f          	j	4003b0 <printf+0x70>
  400450:	03579063          	bne	a5,s5,400470 <printf+0x130>
  400454:	00c12783          	lw	a5,12(sp)
  400458:	00f00613          	li	a2,15
  40045c:	0007a583          	lw	a1,0(a5)
  400460:	00478713          	addi	a4,a5,4
  400464:	00e12623          	sw	a4,12(sp)
  400468:	de1ff0ef          	jal	400248 <printDec>
  40046c:	fc9ff06f          	j	400434 <printf+0xf4>
  400470:	03679463          	bne	a5,s6,400498 <printf+0x158>
  400474:	00c12783          	lw	a5,12(sp)
  400478:	00f00613          	li	a2,15
  40047c:	0007c583          	lbu	a1,0(a5)
  400480:	00478713          	addi	a4,a5,4
  400484:	00e12623          	sw	a4,12(sp)
  400488:	c31ff0ef          	jal	4000b8 <putch>
  40048c:	7d245783          	lhu	a5,2002(s0)
  400490:	00178793          	addi	a5,a5,1
  400494:	fa9ff06f          	j	40043c <printf+0xfc>
  400498:	07300713          	li	a4,115
  40049c:	02e79063          	bne	a5,a4,4004bc <printf+0x17c>
  4004a0:	00c12783          	lw	a5,12(sp)
  4004a4:	00f00613          	li	a2,15
  4004a8:	0007a583          	lw	a1,0(a5)
  4004ac:	00478713          	addi	a4,a5,4
  4004b0:	00e12623          	sw	a4,12(sp)
  4004b4:	c35ff0ef          	jal	4000e8 <printString>
  4004b8:	f7dff06f          	j	400434 <printf+0xf4>
  4004bc:	00f00613          	li	a2,15
  4004c0:	00090593          	mv	a1,s2
  4004c4:	bf5ff0ef          	jal	4000b8 <putch>
  4004c8:	7d245783          	lhu	a5,2002(s0)
  4004cc:	00178793          	addi	a5,a5,1
  4004d0:	f31ff06f          	j	400400 <printf+0xc0>
  4004d4:	00f00613          	li	a2,15
  4004d8:	fedff06f          	j	4004c4 <printf+0x184>

004004dc <printfSCR>:
  4004dc:	f9010113          	addi	sp,sp,-112
  4004e0:	06f12223          	sw	a5,100(sp)
  4004e4:	05c10793          	addi	a5,sp,92
  4004e8:	04812423          	sw	s0,72(sp)
  4004ec:	04912223          	sw	s1,68(sp)
  4004f0:	05212023          	sw	s2,64(sp)
  4004f4:	03412c23          	sw	s4,56(sp)
  4004f8:	03512a23          	sw	s5,52(sp)
  4004fc:	03612823          	sw	s6,48(sp)
  400500:	03712623          	sw	s7,44(sp)
  400504:	03812423          	sw	s8,40(sp)
  400508:	03912223          	sw	s9,36(sp)
  40050c:	03a12023          	sw	s10,32(sp)
  400510:	01b12e23          	sw	s11,28(sp)
  400514:	04112623          	sw	ra,76(sp)
  400518:	03312e23          	sw	s3,60(sp)
  40051c:	00050a93          	mv	s5,a0
  400520:	00058493          	mv	s1,a1
  400524:	00060a13          	mv	s4,a2
  400528:	04d12e23          	sw	a3,92(sp)
  40052c:	06e12023          	sw	a4,96(sp)
  400530:	07012423          	sw	a6,104(sp)
  400534:	07112623          	sw	a7,108(sp)
  400538:	00f12623          	sw	a5,12(sp)
  40053c:	00000913          	li	s2,0
  400540:	00000413          	li	s0,0
  400544:	00a00b93          	li	s7,10
  400548:	02500b13          	li	s6,37
  40054c:	07800c13          	li	s8,120
  400550:	06400c93          	li	s9,100
  400554:	06300d13          	li	s10,99
  400558:	07300d93          	li	s11,115
  40055c:	012a07b3          	add	a5,s4,s2
  400560:	0007c583          	lbu	a1,0(a5)
  400564:	04059263          	bnez	a1,4005a8 <printfSCR+0xcc>
  400568:	04c12083          	lw	ra,76(sp)
  40056c:	00040513          	mv	a0,s0
  400570:	04812403          	lw	s0,72(sp)
  400574:	04412483          	lw	s1,68(sp)
  400578:	04012903          	lw	s2,64(sp)
  40057c:	03c12983          	lw	s3,60(sp)
  400580:	03812a03          	lw	s4,56(sp)
  400584:	03412a83          	lw	s5,52(sp)
  400588:	03012b03          	lw	s6,48(sp)
  40058c:	02c12b83          	lw	s7,44(sp)
  400590:	02812c03          	lw	s8,40(sp)
  400594:	02412c83          	lw	s9,36(sp)
  400598:	02012d03          	lw	s10,32(sp)
  40059c:	01c12d83          	lw	s11,28(sp)
  4005a0:	07010113          	addi	sp,sp,112
  4005a4:	00008067          	ret
  4005a8:	00190993          	addi	s3,s2,1
  4005ac:	01759a63          	bne	a1,s7,4005c0 <printfSCR+0xe4>
  4005b0:	fc047413          	andi	s0,s0,-64
  4005b4:	04040413          	addi	s0,s0,64
  4005b8:	00090993          	mv	s3,s2
  4005bc:	0740006f          	j	400630 <printfSCR+0x154>
  4005c0:	01540533          	add	a0,s0,s5
  4005c4:	0b659463          	bne	a1,s6,40066c <printfSCR+0x190>
  4005c8:	0017c783          	lbu	a5,1(a5)
  4005cc:	03879263          	bne	a5,s8,4005f0 <printfSCR+0x114>
  4005d0:	00c12783          	lw	a5,12(sp)
  4005d4:	00048613          	mv	a2,s1
  4005d8:	0007a583          	lw	a1,0(a5)
  4005dc:	00478713          	addi	a4,a5,4
  4005e0:	00e12623          	sw	a4,12(sp)
  4005e4:	bc5ff0ef          	jal	4001a8 <printHex>
  4005e8:	00a40433          	add	s0,s0,a0
  4005ec:	0440006f          	j	400630 <printfSCR+0x154>
  4005f0:	03979063          	bne	a5,s9,400610 <printfSCR+0x134>
  4005f4:	00c12783          	lw	a5,12(sp)
  4005f8:	00048613          	mv	a2,s1
  4005fc:	0007a583          	lw	a1,0(a5)
  400600:	00478713          	addi	a4,a5,4
  400604:	00e12623          	sw	a4,12(sp)
  400608:	c41ff0ef          	jal	400248 <printDec>
  40060c:	fddff06f          	j	4005e8 <printfSCR+0x10c>
  400610:	03a79463          	bne	a5,s10,400638 <printfSCR+0x15c>
  400614:	00c12783          	lw	a5,12(sp)
  400618:	00048613          	mv	a2,s1
  40061c:	00140413          	addi	s0,s0,1
  400620:	0007c583          	lbu	a1,0(a5)
  400624:	00478713          	addi	a4,a5,4
  400628:	00e12623          	sw	a4,12(sp)
  40062c:	a8dff0ef          	jal	4000b8 <putch>
  400630:	00198913          	addi	s2,s3,1
  400634:	f29ff06f          	j	40055c <printfSCR+0x80>
  400638:	03b79063          	bne	a5,s11,400658 <printfSCR+0x17c>
  40063c:	00c12783          	lw	a5,12(sp)
  400640:	00048613          	mv	a2,s1
  400644:	0007a583          	lw	a1,0(a5)
  400648:	00478713          	addi	a4,a5,4
  40064c:	00e12623          	sw	a4,12(sp)
  400650:	a99ff0ef          	jal	4000e8 <printString>
  400654:	f95ff06f          	j	4005e8 <printfSCR+0x10c>
  400658:	00048613          	mv	a2,s1
  40065c:	000b0593          	mv	a1,s6
  400660:	a59ff0ef          	jal	4000b8 <putch>
  400664:	00140413          	addi	s0,s0,1
  400668:	f51ff06f          	j	4005b8 <printfSCR+0xdc>
  40066c:	00048613          	mv	a2,s1
  400670:	ff1ff06f          	j	400660 <printfSCR+0x184>

00400674 <clearScreen>:
  400674:	ff010113          	addi	sp,sp,-16
  400678:	00812423          	sw	s0,8(sp)
  40067c:	00912223          	sw	s1,4(sp)
  400680:	00112623          	sw	ra,12(sp)
  400684:	00000413          	li	s0,0
  400688:	4c000493          	li	s1,1216
  40068c:	00040513          	mv	a0,s0
  400690:	00f00613          	li	a2,15
  400694:	02000593          	li	a1,32
  400698:	00140413          	addi	s0,s0,1
  40069c:	a1dff0ef          	jal	4000b8 <putch>
  4006a0:	fe9416e3          	bne	s0,s1,40068c <clearScreen+0x18>
  4006a4:	00c12083          	lw	ra,12(sp)
  4006a8:	00812403          	lw	s0,8(sp)
  4006ac:	004007b7          	lui	a5,0x400
  4006b0:	7c079923          	sh	zero,2002(a5) # 4007d2 <screenPos>
  4006b4:	00412483          	lw	s1,4(sp)
  4006b8:	01010113          	addi	sp,sp,16
  4006bc:	00008067          	ret

004006c0 <resetScreenVector>:
  4006c0:	004007b7          	lui	a5,0x400
  4006c4:	7c079923          	sh	zero,2002(a5) # 4007d2 <screenPos>
  4006c8:	00008067          	ret
  4006cc:	2710                	.insn	2, 0x2710
  4006ce:	0000                	.insn	2, 0x
  4006d0:	03e8                	.insn	2, 0x03e8
  4006d2:	0000                	.insn	2, 0x
  4006d4:	0064                	.insn	2, 0x0064
  4006d6:	0000                	.insn	2, 0x
  4006d8:	000a                	.insn	2, 0x000a
  4006da:	0000                	.insn	2, 0x
  4006dc:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

004006e0 <main>:
  4006e0:	fe010113          	addi	sp,sp,-32
  4006e4:	876547b7          	lui	a5,0x87654
  4006e8:	00112e23          	sw	ra,28(sp)
  4006ec:	01212823          	sw	s2,16(sp)
  4006f0:	01312623          	sw	s3,12(sp)
  4006f4:	00812c23          	sw	s0,24(sp)
  4006f8:	400009b7          	lui	s3,0x40000
  4006fc:	00912a23          	sw	s1,20(sp)
  400700:	32178793          	addi	a5,a5,801 # 87654321 <_stack_end+0x87252321>
  400704:	00f9a223          	sw	a5,4(s3) # 40000004 <_stack_end+0x3fbfe004>
  400708:	123457b7          	lui	a5,0x12345
  40070c:	67878793          	addi	a5,a5,1656 # 12345678 <_stack_end+0x11f43678>
  400710:	00f9a823          	sw	a5,16(s3)
  400714:	111117b7          	lui	a5,0x11111
  400718:	11178793          	addi	a5,a5,273 # 11111111 <_stack_end+0x10d0f111>
  40071c:	02f9a023          	sw	a5,32(s3)
  400720:	222227b7          	lui	a5,0x22222
  400724:	22278793          	addi	a5,a5,546 # 22222222 <_stack_end+0x21e20222>
  400728:	00400537          	lui	a0,0x400
  40072c:	02f9a823          	sw	a5,48(s3)
  400730:	79050513          	addi	a0,a0,1936 # 400790 <main+0xb0>
  400734:	c0dff0ef          	jal	400340 <printf>
  400738:	0049a783          	lw	a5,4(s3)
  40073c:	0049a583          	lw	a1,4(s3)
  400740:	00098913          	mv	s2,s3
  400744:	004009b7          	lui	s3,0x400
  400748:	7a098513          	addi	a0,s3,1952 # 4007a0 <main+0xc0>
  40074c:	bf5ff0ef          	jal	400340 <printf>
  400750:	01092783          	lw	a5,16(s2)
  400754:	01092583          	lw	a1,16(s2)
  400758:	7a098513          	addi	a0,s3,1952
  40075c:	be5ff0ef          	jal	400340 <printf>
  400760:	02092783          	lw	a5,32(s2)
  400764:	02092583          	lw	a1,32(s2)
  400768:	7a098513          	addi	a0,s3,1952
  40076c:	bd5ff0ef          	jal	400340 <printf>
  400770:	03092783          	lw	a5,48(s2)
  400774:	03092583          	lw	a1,48(s2)
  400778:	7a098513          	addi	a0,s3,1952
  40077c:	bc5ff0ef          	jal	400340 <printf>
  400780:	00400537          	lui	a0,0x400
  400784:	7a450513          	addi	a0,a0,1956 # 4007a4 <main+0xc4>
  400788:	bb9ff0ef          	jal	400340 <printf>
  40078c:	0000006f          	j	40078c <main+0xac>
