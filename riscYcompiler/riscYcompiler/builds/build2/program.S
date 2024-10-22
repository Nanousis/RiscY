
builds/build2/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00002117          	auipc	sp,0x2
  400004:	c0010113          	addi	sp,sp,-1024 # 401c00 <_stack_top>
  400008:	ffc10113          	addi	sp,sp,-4
  40000c:	00112023          	sw	ra,0(sp)
  400010:	7e8000ef          	jal	4007f8 <_etext>
  400014:	00012083          	lw	ra,0(sp)
  400018:	000080e7          	jalr	ra

0040001c <printScore>:
  40001c:	00401637          	lui	a2,0x401
  400020:	ffc50693          	addi	a3,a0,-4
  400024:	cb460613          	addi	a2,a2,-844 # 400cb4 <_etext+0x4bc>
  400028:	00f00593          	li	a1,15
  40002c:	00000513          	li	a0,0
  400030:	5c40006f          	j	4005f4 <printfSCR>

00400034 <printSnake>:
  400034:	ff010113          	addi	sp,sp,-16
  400038:	00812423          	sw	s0,8(sp)
  40003c:	00401437          	lui	s0,0x401
  400040:	00912223          	sw	s1,4(sp)
  400044:	d2440493          	addi	s1,s0,-732 # 400d24 <positions>
  400048:	01212023          	sw	s2,0(sp)
  40004c:	00050913          	mv	s2,a0
  400050:	00049503          	lh	a0,0(s1)
  400054:	00000613          	li	a2,0
  400058:	02000593          	li	a1,32
  40005c:	00112623          	sw	ra,12(sp)
  400060:	168000ef          	jal	4001c8 <putch>
  400064:	00049503          	lh	a0,0(s1)
  400068:	00000613          	li	a2,0
  40006c:	02000593          	li	a1,32
  400070:	00150513          	addi	a0,a0,1
  400074:	154000ef          	jal	4001c8 <putch>
  400078:	d2440793          	addi	a5,s0,-732
  40007c:	0c648713          	addi	a4,s1,198
  400080:	d2440413          	addi	s0,s0,-732
  400084:	0027d683          	lhu	a3,2(a5)
  400088:	00278793          	addi	a5,a5,2
  40008c:	fed79f23          	sh	a3,-2(a5)
  400090:	fee79ae3          	bne	a5,a4,400084 <printSnake+0x50>
  400094:	004017b7          	lui	a5,0x401
  400098:	00401737          	lui	a4,0x401
  40009c:	d237c783          	lbu	a5,-733(a5) # 400d23 <current_x>
  4000a0:	d2274703          	lbu	a4,-734(a4) # 400d22 <current_y>
  4000a4:	fff90693          	addi	a3,s2,-1
  4000a8:	00169693          	slli	a3,a3,0x1
  4000ac:	00671713          	slli	a4,a4,0x6
  4000b0:	00d40433          	add	s0,s0,a3
  4000b4:	00e787b3          	add	a5,a5,a4
  4000b8:	00f41023          	sh	a5,0(s0)
  4000bc:	00000413          	li	s0,0
  4000c0:	01241e63          	bne	s0,s2,4000dc <printSnake+0xa8>
  4000c4:	00c12083          	lw	ra,12(sp)
  4000c8:	00812403          	lw	s0,8(sp)
  4000cc:	00412483          	lw	s1,4(sp)
  4000d0:	00012903          	lw	s2,0(sp)
  4000d4:	01010113          	addi	sp,sp,16
  4000d8:	00008067          	ret
  4000dc:	00049503          	lh	a0,0(s1)
  4000e0:	01100613          	li	a2,17
  4000e4:	02000593          	li	a1,32
  4000e8:	0e0000ef          	jal	4001c8 <putch>
  4000ec:	00049503          	lh	a0,0(s1)
  4000f0:	01100613          	li	a2,17
  4000f4:	02000593          	li	a1,32
  4000f8:	00150513          	addi	a0,a0,1
  4000fc:	0cc000ef          	jal	4001c8 <putch>
  400100:	00140413          	addi	s0,s0,1
  400104:	00248493          	addi	s1,s1,2
  400108:	fb9ff06f          	j	4000c0 <printSnake+0x8c>

0040010c <checkForCollision>:
  40010c:	004017b7          	lui	a5,0x401
  400110:	d2478793          	addi	a5,a5,-732 # 400d24 <positions>
  400114:	00000693          	li	a3,0
  400118:	00401637          	lui	a2,0x401
  40011c:	004015b7          	lui	a1,0x401
  400120:	00a6c663          	blt	a3,a0,40012c <checkForCollision+0x20>
  400124:	00000513          	li	a0,0
  400128:	00008067          	ret
  40012c:	d2364883          	lbu	a7,-733(a2) # 400d23 <current_x>
  400130:	d225c703          	lbu	a4,-734(a1) # 400d22 <current_y>
  400134:	00079803          	lh	a6,0(a5)
  400138:	00278793          	addi	a5,a5,2
  40013c:	00671713          	slli	a4,a4,0x6
  400140:	01170733          	add	a4,a4,a7
  400144:	00e80663          	beq	a6,a4,400150 <checkForCollision+0x44>
  400148:	00168693          	addi	a3,a3,1
  40014c:	fd5ff06f          	j	400120 <checkForCollision+0x14>
  400150:	00100513          	li	a0,1
  400154:	00008067          	ret

00400158 <memcpy>:
  400158:	00000793          	li	a5,0
  40015c:	00c7c463          	blt	a5,a2,400164 <memcpy+0xc>
  400160:	00008067          	ret
  400164:	00f58733          	add	a4,a1,a5
  400168:	00074683          	lbu	a3,0(a4)
  40016c:	00f50733          	add	a4,a0,a5
  400170:	00178793          	addi	a5,a5,1
  400174:	00d70023          	sb	a3,0(a4)
  400178:	fe5ff06f          	j	40015c <memcpy+0x4>

0040017c <memset>:
  40017c:	00c50633          	add	a2,a0,a2
  400180:	00050793          	mv	a5,a0
  400184:	00c79463          	bne	a5,a2,40018c <memset+0x10>
  400188:	00008067          	ret
  40018c:	00178793          	addi	a5,a5,1
  400190:	feb78fa3          	sb	a1,-1(a5)
  400194:	ff1ff06f          	j	400184 <memset+0x8>

00400198 <getButtonDown>:
  400198:	890007b7          	lui	a5,0x89000
  40019c:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x88bfe001>
  4001a0:	00008067          	ret

004001a4 <getButtonUp>:
  4001a4:	890007b7          	lui	a5,0x89000
  4001a8:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x88bfe000>
  4001ac:	00008067          	ret

004001b0 <getButtonLeft>:
  4001b0:	890007b7          	lui	a5,0x89000
  4001b4:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x88bfe002>
  4001b8:	00008067          	ret

004001bc <getButtonRight>:
  4001bc:	890007b7          	lui	a5,0x89000
  4001c0:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x88bfe003>
  4001c4:	00008067          	ret

004001c8 <putch>:
  4001c8:	4c000793          	li	a5,1216
  4001cc:	02a7e263          	bltu	a5,a0,4001f0 <putch+0x28>
  4001d0:	00861613          	slli	a2,a2,0x8
  4001d4:	00151513          	slli	a0,a0,0x1
  4001d8:	880007b7          	lui	a5,0x88000
  4001dc:	00a787b3          	add	a5,a5,a0
  4001e0:	00b665b3          	or	a1,a2,a1
  4001e4:	00b79023          	sh	a1,0(a5) # 88000000 <_stack_end+0x87bfe000>
  4001e8:	00100513          	li	a0,1
  4001ec:	00008067          	ret
  4001f0:	00000513          	li	a0,0
  4001f4:	00008067          	ret

004001f8 <printString>:
  4001f8:	fe010113          	addi	sp,sp,-32
  4001fc:	01212823          	sw	s2,16(sp)
  400200:	01312623          	sw	s3,12(sp)
  400204:	00112e23          	sw	ra,28(sp)
  400208:	00812c23          	sw	s0,24(sp)
  40020c:	00912a23          	sw	s1,20(sp)
  400210:	01412423          	sw	s4,8(sp)
  400214:	01512223          	sw	s5,4(sp)
  400218:	01612023          	sw	s6,0(sp)
  40021c:	00050993          	mv	s3,a0
  400220:	00058913          	mv	s2,a1
  400224:	06060c63          	beqz	a2,40029c <printString+0xa4>
  400228:	00060413          	mv	s0,a2
  40022c:	00000a13          	li	s4,0
  400230:	00000493          	li	s1,0
  400234:	00100a93          	li	s5,1
  400238:	00f00b13          	li	s6,15
  40023c:	0280006f          	j	400264 <printString+0x6c>
  400240:	00040613          	mv	a2,s0
  400244:	00998533          	add	a0,s3,s1
  400248:	f81ff0ef          	jal	4001c8 <putch>
  40024c:	06050263          	beqz	a0,4002b0 <printString+0xb8>
  400250:	00148493          	addi	s1,s1,1
  400254:	015a1863          	bne	s4,s5,400264 <printString+0x6c>
  400258:	00140413          	addi	s0,s0,1
  40025c:	0ff47413          	zext.b	s0,s0
  400260:	048b6463          	bltu	s6,s0,4002a8 <printString+0xb0>
  400264:	009907b3          	add	a5,s2,s1
  400268:	0007c583          	lbu	a1,0(a5)
  40026c:	00048513          	mv	a0,s1
  400270:	fc0598e3          	bnez	a1,400240 <printString+0x48>
  400274:	01c12083          	lw	ra,28(sp)
  400278:	01812403          	lw	s0,24(sp)
  40027c:	01412483          	lw	s1,20(sp)
  400280:	01012903          	lw	s2,16(sp)
  400284:	00c12983          	lw	s3,12(sp)
  400288:	00812a03          	lw	s4,8(sp)
  40028c:	00412a83          	lw	s5,4(sp)
  400290:	00012b03          	lw	s6,0(sp)
  400294:	02010113          	addi	sp,sp,32
  400298:	00008067          	ret
  40029c:	00100a13          	li	s4,1
  4002a0:	00100413          	li	s0,1
  4002a4:	f8dff06f          	j	400230 <printString+0x38>
  4002a8:	00100413          	li	s0,1
  4002ac:	fb9ff06f          	j	400264 <printString+0x6c>
  4002b0:	00000513          	li	a0,0
  4002b4:	fc1ff06f          	j	400274 <printString+0x7c>

004002b8 <printHex>:
  4002b8:	fd010113          	addi	sp,sp,-48
  4002bc:	02812423          	sw	s0,40(sp)
  4002c0:	00058413          	mv	s0,a1
  4002c4:	004015b7          	lui	a1,0x401
  4002c8:	02912223          	sw	s1,36(sp)
  4002cc:	03212023          	sw	s2,32(sp)
  4002d0:	00050493          	mv	s1,a0
  4002d4:	00060913          	mv	s2,a2
  4002d8:	d0858593          	addi	a1,a1,-760 # 400d08 <_etext+0x510>
  4002dc:	01100613          	li	a2,17
  4002e0:	00c10513          	addi	a0,sp,12
  4002e4:	02112623          	sw	ra,44(sp)
  4002e8:	e71ff0ef          	jal	400158 <memcpy>
  4002ec:	202027b7          	lui	a5,0x20202
  4002f0:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fe00020>
  4002f4:	00f12023          	sw	a5,0(sp)
  4002f8:	00f12223          	sw	a5,4(sp)
  4002fc:	00010423          	sb	zero,8(sp)
  400300:	00700793          	li	a5,7
  400304:	fff00693          	li	a3,-1
  400308:	00f47713          	andi	a4,s0,15
  40030c:	02070713          	addi	a4,a4,32
  400310:	00270733          	add	a4,a4,sp
  400314:	fec74703          	lbu	a4,-20(a4)
  400318:	00f10633          	add	a2,sp,a5
  40031c:	fff78793          	addi	a5,a5,-1
  400320:	00e60023          	sb	a4,0(a2)
  400324:	40445413          	srai	s0,s0,0x4
  400328:	fed790e3          	bne	a5,a3,400308 <printHex+0x50>
  40032c:	00090613          	mv	a2,s2
  400330:	00010593          	mv	a1,sp
  400334:	00048513          	mv	a0,s1
  400338:	ec1ff0ef          	jal	4001f8 <printString>
  40033c:	02c12083          	lw	ra,44(sp)
  400340:	02812403          	lw	s0,40(sp)
  400344:	02412483          	lw	s1,36(sp)
  400348:	02012903          	lw	s2,32(sp)
  40034c:	0ff57513          	zext.b	a0,a0
  400350:	03010113          	addi	sp,sp,48
  400354:	00008067          	ret

00400358 <printDec>:
  400358:	fd010113          	addi	sp,sp,-48
  40035c:	02812423          	sw	s0,40(sp)
  400360:	00058413          	mv	s0,a1
  400364:	004005b7          	lui	a1,0x400
  400368:	02912223          	sw	s1,36(sp)
  40036c:	03212023          	sw	s2,32(sp)
  400370:	00050493          	mv	s1,a0
  400374:	00060913          	mv	s2,a2
  400378:	7e458593          	addi	a1,a1,2020 # 4007e4 <resetScreenVector+0xc>
  40037c:	01400613          	li	a2,20
  400380:	00c10513          	addi	a0,sp,12
  400384:	02112623          	sw	ra,44(sp)
  400388:	dd1ff0ef          	jal	400158 <memcpy>
  40038c:	000187b7          	lui	a5,0x18
  400390:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1829f>
  400394:	0287fa63          	bgeu	a5,s0,4003c8 <printDec+0x70>
  400398:	004015b7          	lui	a1,0x401
  40039c:	00090613          	mv	a2,s2
  4003a0:	d1c58593          	addi	a1,a1,-740 # 400d1c <_etext+0x524>
  4003a4:	00048513          	mv	a0,s1
  4003a8:	e51ff0ef          	jal	4001f8 <printString>
  4003ac:	02c12083          	lw	ra,44(sp)
  4003b0:	02812403          	lw	s0,40(sp)
  4003b4:	02412483          	lw	s1,36(sp)
  4003b8:	02012903          	lw	s2,32(sp)
  4003bc:	0ff57513          	zext.b	a0,a0
  4003c0:	03010113          	addi	sp,sp,48
  4003c4:	00008067          	ret
  4003c8:	00c10713          	addi	a4,sp,12
  4003cc:	00100613          	li	a2,1
  4003d0:	00000793          	li	a5,0
  4003d4:	00100513          	li	a0,1
  4003d8:	00072583          	lw	a1,0(a4)
  4003dc:	00000693          	li	a3,0
  4003e0:	06b47263          	bgeu	s0,a1,400444 <printDec+0xec>
  4003e4:	00069663          	bnez	a3,4003f0 <printDec+0x98>
  4003e8:	00a58463          	beq	a1,a0,4003f0 <printDec+0x98>
  4003ec:	00061e63          	bnez	a2,400408 <printDec+0xb0>
  4003f0:	02078613          	addi	a2,a5,32
  4003f4:	00260633          	add	a2,a2,sp
  4003f8:	03068693          	addi	a3,a3,48
  4003fc:	fed60223          	sb	a3,-28(a2)
  400400:	00178793          	addi	a5,a5,1
  400404:	00000613          	li	a2,0
  400408:	00470713          	addi	a4,a4,4
  40040c:	02010693          	addi	a3,sp,32
  400410:	fcd714e3          	bne	a4,a3,4003d8 <printDec+0x80>
  400414:	00060c63          	beqz	a2,40042c <printDec+0xd4>
  400418:	02078713          	addi	a4,a5,32
  40041c:	00270733          	add	a4,a4,sp
  400420:	03000693          	li	a3,48
  400424:	fed70223          	sb	a3,-28(a4)
  400428:	00178793          	addi	a5,a5,1
  40042c:	02078793          	addi	a5,a5,32
  400430:	002787b3          	add	a5,a5,sp
  400434:	fe078223          	sb	zero,-28(a5)
  400438:	00090613          	mv	a2,s2
  40043c:	00410593          	addi	a1,sp,4
  400440:	f65ff06f          	j	4003a4 <printDec+0x4c>
  400444:	40b40433          	sub	s0,s0,a1
  400448:	00168693          	addi	a3,a3,1
  40044c:	f95ff06f          	j	4003e0 <printDec+0x88>

00400450 <printf>:
  400450:	fa010113          	addi	sp,sp,-96
  400454:	04f12a23          	sw	a5,84(sp)
  400458:	04410793          	addi	a5,sp,68
  40045c:	02812c23          	sw	s0,56(sp)
  400460:	02912a23          	sw	s1,52(sp)
  400464:	03212823          	sw	s2,48(sp)
  400468:	03312623          	sw	s3,44(sp)
  40046c:	03412423          	sw	s4,40(sp)
  400470:	03512223          	sw	s5,36(sp)
  400474:	03612023          	sw	s6,32(sp)
  400478:	01712e23          	sw	s7,28(sp)
  40047c:	01912a23          	sw	s9,20(sp)
  400480:	02112e23          	sw	ra,60(sp)
  400484:	01812c23          	sw	s8,24(sp)
  400488:	00050493          	mv	s1,a0
  40048c:	04b12223          	sw	a1,68(sp)
  400490:	04c12423          	sw	a2,72(sp)
  400494:	04d12623          	sw	a3,76(sp)
  400498:	04e12823          	sw	a4,80(sp)
  40049c:	05012c23          	sw	a6,88(sp)
  4004a0:	05112e23          	sw	a7,92(sp)
  4004a4:	00f12623          	sw	a5,12(sp)
  4004a8:	00000c93          	li	s9,0
  4004ac:	00401437          	lui	s0,0x401
  4004b0:	00a00913          	li	s2,10
  4004b4:	02500993          	li	s3,37
  4004b8:	07800a13          	li	s4,120
  4004bc:	06400a93          	li	s5,100
  4004c0:	06300b13          	li	s6,99
  4004c4:	07300b93          	li	s7,115
  4004c8:	019487b3          	add	a5,s1,s9
  4004cc:	0007c583          	lbu	a1,0(a5)
  4004d0:	dec41503          	lh	a0,-532(s0) # 400dec <screenPos>
  4004d4:	02059c63          	bnez	a1,40050c <printf+0xbc>
  4004d8:	03c12083          	lw	ra,60(sp)
  4004dc:	03812403          	lw	s0,56(sp)
  4004e0:	03412483          	lw	s1,52(sp)
  4004e4:	03012903          	lw	s2,48(sp)
  4004e8:	02c12983          	lw	s3,44(sp)
  4004ec:	02812a03          	lw	s4,40(sp)
  4004f0:	02412a83          	lw	s5,36(sp)
  4004f4:	02012b03          	lw	s6,32(sp)
  4004f8:	01c12b83          	lw	s7,28(sp)
  4004fc:	01812c03          	lw	s8,24(sp)
  400500:	01412c83          	lw	s9,20(sp)
  400504:	06010113          	addi	sp,sp,96
  400508:	00008067          	ret
  40050c:	001c8c13          	addi	s8,s9,1
  400510:	01259e63          	bne	a1,s2,40052c <printf+0xdc>
  400514:	fc057793          	andi	a5,a0,-64
  400518:	04078793          	addi	a5,a5,64
  40051c:	01079793          	slli	a5,a5,0x10
  400520:	4107d793          	srai	a5,a5,0x10
  400524:	000c8c13          	mv	s8,s9
  400528:	0380006f          	j	400560 <printf+0x110>
  40052c:	0d359063          	bne	a1,s3,4005ec <printf+0x19c>
  400530:	0017c783          	lbu	a5,1(a5)
  400534:	03479c63          	bne	a5,s4,40056c <printf+0x11c>
  400538:	00c12783          	lw	a5,12(sp)
  40053c:	00f00613          	li	a2,15
  400540:	0007a583          	lw	a1,0(a5)
  400544:	00478713          	addi	a4,a5,4
  400548:	00e12623          	sw	a4,12(sp)
  40054c:	d6dff0ef          	jal	4002b8 <printHex>
  400550:	dec45783          	lhu	a5,-532(s0)
  400554:	00f507b3          	add	a5,a0,a5
  400558:	01079793          	slli	a5,a5,0x10
  40055c:	4107d793          	srai	a5,a5,0x10
  400560:	def41623          	sh	a5,-532(s0)
  400564:	001c0c93          	addi	s9,s8,1
  400568:	f61ff06f          	j	4004c8 <printf+0x78>
  40056c:	03579063          	bne	a5,s5,40058c <printf+0x13c>
  400570:	00c12783          	lw	a5,12(sp)
  400574:	00f00613          	li	a2,15
  400578:	0007a583          	lw	a1,0(a5)
  40057c:	00478713          	addi	a4,a5,4
  400580:	00e12623          	sw	a4,12(sp)
  400584:	dd5ff0ef          	jal	400358 <printDec>
  400588:	fc9ff06f          	j	400550 <printf+0x100>
  40058c:	03679463          	bne	a5,s6,4005b4 <printf+0x164>
  400590:	00c12783          	lw	a5,12(sp)
  400594:	00f00613          	li	a2,15
  400598:	0007c583          	lbu	a1,0(a5)
  40059c:	00478713          	addi	a4,a5,4
  4005a0:	00e12623          	sw	a4,12(sp)
  4005a4:	c25ff0ef          	jal	4001c8 <putch>
  4005a8:	dec45783          	lhu	a5,-532(s0)
  4005ac:	00178793          	addi	a5,a5,1
  4005b0:	fa9ff06f          	j	400558 <printf+0x108>
  4005b4:	03779063          	bne	a5,s7,4005d4 <printf+0x184>
  4005b8:	00c12783          	lw	a5,12(sp)
  4005bc:	00f00613          	li	a2,15
  4005c0:	0007a583          	lw	a1,0(a5)
  4005c4:	00478713          	addi	a4,a5,4
  4005c8:	00e12623          	sw	a4,12(sp)
  4005cc:	c2dff0ef          	jal	4001f8 <printString>
  4005d0:	f81ff06f          	j	400550 <printf+0x100>
  4005d4:	00f00613          	li	a2,15
  4005d8:	02500593          	li	a1,37
  4005dc:	bedff0ef          	jal	4001c8 <putch>
  4005e0:	dec45783          	lhu	a5,-532(s0)
  4005e4:	00178793          	addi	a5,a5,1
  4005e8:	f35ff06f          	j	40051c <printf+0xcc>
  4005ec:	00f00613          	li	a2,15
  4005f0:	fedff06f          	j	4005dc <printf+0x18c>

004005f4 <printfSCR>:
  4005f4:	f9010113          	addi	sp,sp,-112
  4005f8:	06f12223          	sw	a5,100(sp)
  4005fc:	05c10793          	addi	a5,sp,92
  400600:	04812423          	sw	s0,72(sp)
  400604:	04912223          	sw	s1,68(sp)
  400608:	05212023          	sw	s2,64(sp)
  40060c:	03412c23          	sw	s4,56(sp)
  400610:	03512a23          	sw	s5,52(sp)
  400614:	03612823          	sw	s6,48(sp)
  400618:	03712623          	sw	s7,44(sp)
  40061c:	03812423          	sw	s8,40(sp)
  400620:	03912223          	sw	s9,36(sp)
  400624:	03a12023          	sw	s10,32(sp)
  400628:	01b12e23          	sw	s11,28(sp)
  40062c:	04112623          	sw	ra,76(sp)
  400630:	03312e23          	sw	s3,60(sp)
  400634:	00050a93          	mv	s5,a0
  400638:	00058493          	mv	s1,a1
  40063c:	00060a13          	mv	s4,a2
  400640:	04d12e23          	sw	a3,92(sp)
  400644:	06e12023          	sw	a4,96(sp)
  400648:	07012423          	sw	a6,104(sp)
  40064c:	07112623          	sw	a7,108(sp)
  400650:	00f12623          	sw	a5,12(sp)
  400654:	00000913          	li	s2,0
  400658:	00000413          	li	s0,0
  40065c:	00a00b13          	li	s6,10
  400660:	02500b93          	li	s7,37
  400664:	07800c13          	li	s8,120
  400668:	06400c93          	li	s9,100
  40066c:	06300d13          	li	s10,99
  400670:	07300d93          	li	s11,115
  400674:	012a07b3          	add	a5,s4,s2
  400678:	0007c583          	lbu	a1,0(a5)
  40067c:	04059263          	bnez	a1,4006c0 <printfSCR+0xcc>
  400680:	04c12083          	lw	ra,76(sp)
  400684:	00040513          	mv	a0,s0
  400688:	04812403          	lw	s0,72(sp)
  40068c:	04412483          	lw	s1,68(sp)
  400690:	04012903          	lw	s2,64(sp)
  400694:	03c12983          	lw	s3,60(sp)
  400698:	03812a03          	lw	s4,56(sp)
  40069c:	03412a83          	lw	s5,52(sp)
  4006a0:	03012b03          	lw	s6,48(sp)
  4006a4:	02c12b83          	lw	s7,44(sp)
  4006a8:	02812c03          	lw	s8,40(sp)
  4006ac:	02412c83          	lw	s9,36(sp)
  4006b0:	02012d03          	lw	s10,32(sp)
  4006b4:	01c12d83          	lw	s11,28(sp)
  4006b8:	07010113          	addi	sp,sp,112
  4006bc:	00008067          	ret
  4006c0:	00190993          	addi	s3,s2,1
  4006c4:	01659a63          	bne	a1,s6,4006d8 <printfSCR+0xe4>
  4006c8:	fc047413          	andi	s0,s0,-64
  4006cc:	04040413          	addi	s0,s0,64
  4006d0:	00090993          	mv	s3,s2
  4006d4:	0740006f          	j	400748 <printfSCR+0x154>
  4006d8:	01540533          	add	a0,s0,s5
  4006dc:	0b759463          	bne	a1,s7,400784 <printfSCR+0x190>
  4006e0:	0017c783          	lbu	a5,1(a5)
  4006e4:	03879263          	bne	a5,s8,400708 <printfSCR+0x114>
  4006e8:	00c12783          	lw	a5,12(sp)
  4006ec:	00048613          	mv	a2,s1
  4006f0:	0007a583          	lw	a1,0(a5)
  4006f4:	00478713          	addi	a4,a5,4
  4006f8:	00e12623          	sw	a4,12(sp)
  4006fc:	bbdff0ef          	jal	4002b8 <printHex>
  400700:	00a40433          	add	s0,s0,a0
  400704:	0440006f          	j	400748 <printfSCR+0x154>
  400708:	03979063          	bne	a5,s9,400728 <printfSCR+0x134>
  40070c:	00c12783          	lw	a5,12(sp)
  400710:	00048613          	mv	a2,s1
  400714:	0007a583          	lw	a1,0(a5)
  400718:	00478713          	addi	a4,a5,4
  40071c:	00e12623          	sw	a4,12(sp)
  400720:	c39ff0ef          	jal	400358 <printDec>
  400724:	fddff06f          	j	400700 <printfSCR+0x10c>
  400728:	03a79463          	bne	a5,s10,400750 <printfSCR+0x15c>
  40072c:	00c12783          	lw	a5,12(sp)
  400730:	00048613          	mv	a2,s1
  400734:	00140413          	addi	s0,s0,1
  400738:	0007c583          	lbu	a1,0(a5)
  40073c:	00478713          	addi	a4,a5,4
  400740:	00e12623          	sw	a4,12(sp)
  400744:	a85ff0ef          	jal	4001c8 <putch>
  400748:	00198913          	addi	s2,s3,1
  40074c:	f29ff06f          	j	400674 <printfSCR+0x80>
  400750:	03b79063          	bne	a5,s11,400770 <printfSCR+0x17c>
  400754:	00c12783          	lw	a5,12(sp)
  400758:	00048613          	mv	a2,s1
  40075c:	0007a583          	lw	a1,0(a5)
  400760:	00478713          	addi	a4,a5,4
  400764:	00e12623          	sw	a4,12(sp)
  400768:	a91ff0ef          	jal	4001f8 <printString>
  40076c:	f95ff06f          	j	400700 <printfSCR+0x10c>
  400770:	00048613          	mv	a2,s1
  400774:	02500593          	li	a1,37
  400778:	a51ff0ef          	jal	4001c8 <putch>
  40077c:	00140413          	addi	s0,s0,1
  400780:	f51ff06f          	j	4006d0 <printfSCR+0xdc>
  400784:	00048613          	mv	a2,s1
  400788:	ff1ff06f          	j	400778 <printfSCR+0x184>

0040078c <clearScreen>:
  40078c:	ff010113          	addi	sp,sp,-16
  400790:	00812423          	sw	s0,8(sp)
  400794:	00912223          	sw	s1,4(sp)
  400798:	00112623          	sw	ra,12(sp)
  40079c:	00000413          	li	s0,0
  4007a0:	4c000493          	li	s1,1216
  4007a4:	00040513          	mv	a0,s0
  4007a8:	00f00613          	li	a2,15
  4007ac:	02000593          	li	a1,32
  4007b0:	00140413          	addi	s0,s0,1
  4007b4:	a15ff0ef          	jal	4001c8 <putch>
  4007b8:	fe9416e3          	bne	s0,s1,4007a4 <clearScreen+0x18>
  4007bc:	00c12083          	lw	ra,12(sp)
  4007c0:	00812403          	lw	s0,8(sp)
  4007c4:	004017b7          	lui	a5,0x401
  4007c8:	de079623          	sh	zero,-532(a5) # 400dec <screenPos>
  4007cc:	00412483          	lw	s1,4(sp)
  4007d0:	01010113          	addi	sp,sp,16
  4007d4:	00008067          	ret

004007d8 <resetScreenVector>:
  4007d8:	004017b7          	lui	a5,0x401
  4007dc:	de079623          	sh	zero,-532(a5) # 400dec <screenPos>
  4007e0:	00008067          	ret
  4007e4:	2710                	.insn	2, 0x2710
  4007e6:	0000                	.insn	2, 0x
  4007e8:	03e8                	.insn	2, 0x03e8
  4007ea:	0000                	.insn	2, 0x
  4007ec:	0064                	.insn	2, 0x0064
  4007ee:	0000                	.insn	2, 0x
  4007f0:	000a                	.insn	2, 0x000a
  4007f2:	0000                	.insn	2, 0x
  4007f4:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

004007f8 <main>:
  4007f8:	fb010113          	addi	sp,sp,-80
  4007fc:	03512a23          	sw	s5,52(sp)
  400800:	00401ab7          	lui	s5,0x401
  400804:	04812423          	sw	s0,72(sp)
  400808:	03a12023          	sw	s10,32(sp)
  40080c:	04112623          	sw	ra,76(sp)
  400810:	04912223          	sw	s1,68(sp)
  400814:	05212023          	sw	s2,64(sp)
  400818:	03312e23          	sw	s3,60(sp)
  40081c:	03412c23          	sw	s4,56(sp)
  400820:	03612823          	sw	s6,48(sp)
  400824:	03712623          	sw	s7,44(sp)
  400828:	03812423          	sw	s8,40(sp)
  40082c:	03912223          	sw	s9,36(sp)
  400830:	01b12e23          	sw	s11,28(sp)
  400834:	00401437          	lui	s0,0x401
  400838:	d24a8a93          	addi	s5,s5,-732 # 400d24 <positions>
  40083c:	00100d13          	li	s10,1
  400840:	004014b7          	lui	s1,0x401
  400844:	00012623          	sw	zero,12(sp)
  400848:	000027b7          	lui	a5,0x2
  40084c:	00012623          	sw	zero,12(sp)
  400850:	70f78793          	addi	a5,a5,1807 # 270f <_stack_size+0x230f>
  400854:	00c12703          	lw	a4,12(sp)
  400858:	20e7d663          	bge	a5,a4,400a64 <main+0x26c>
  40085c:	f31ff0ef          	jal	40078c <clearScreen>
  400860:	004017b7          	lui	a5,0x401
  400864:	cc078593          	addi	a1,a5,-832 # 400cc0 <main+0x4c8>
  400868:	00000613          	li	a2,0
  40086c:	09600513          	li	a0,150
  400870:	989ff0ef          	jal	4001f8 <printString>
  400874:	004017b7          	lui	a5,0x401
  400878:	00000613          	li	a2,0
  40087c:	cd878593          	addi	a1,a5,-808 # 400cd8 <main+0x4e0>
  400880:	25600513          	li	a0,598
  400884:	975ff0ef          	jal	4001f8 <printString>
  400888:	00007937          	lui	s2,0x7
  40088c:	d3a401a3          	sb	s10,-733(s0) # 400d23 <current_x>
  400890:	d2048123          	sb	zero,-734(s1) # 400d22 <current_y>
  400894:	00100c13          	li	s8,1
  400898:	00000d93          	li	s11,0
  40089c:	00f00993          	li	s3,15
  4008a0:	00300a13          	li	s4,3
  4008a4:	00200b13          	li	s6,2
  4008a8:	01200b93          	li	s7,18
  4008ac:	03f00c93          	li	s9,63
  4008b0:	52f90913          	addi	s2,s2,1327 # 752f <_stack_size+0x712f>
  4008b4:	8f1ff0ef          	jal	4001a4 <getButtonUp>
  4008b8:	1a050e63          	beqz	a0,400a74 <main+0x27c>
  4008bc:	ed1ff0ef          	jal	40078c <clearScreen>
  4008c0:	00400793          	li	a5,4
  4008c4:	d2f401a3          	sb	a5,-733(s0)
  4008c8:	d2f48123          	sb	a5,-734(s1)
  4008cc:	00012623          	sw	zero,12(sp)
  4008d0:	06300713          	li	a4,99
  4008d4:	ffa00693          	li	a3,-6
  4008d8:	00c12783          	lw	a5,12(sp)
  4008dc:	26f75e63          	bge	a4,a5,400b58 <main+0x360>
  4008e0:	00049b37          	lui	s6,0x49
  4008e4:	ffffabb7          	lui	s7,0xffffa
  4008e8:	00000a13          	li	s4,0
  4008ec:	16400913          	li	s2,356
  4008f0:	00100d93          	li	s11,1
  4008f4:	00400993          	li	s3,4
  4008f8:	00000c13          	li	s8,0
  4008fc:	3dfb0b13          	addi	s6,s6,991 # 493df <_stack_size+0x48fdf>
  400900:	00300c93          	li	s9,3
  400904:	a2ab8b93          	addi	s7,s7,-1494 # ffff9a2a <_stack_end+0xffbf7a2a>
  400908:	001a0a13          	addi	s4,s4,1
  40090c:	00012623          	sw	zero,12(sp)
  400910:	00c12683          	lw	a3,12(sp)
  400914:	26db5263          	bge	s6,a3,400b78 <main+0x380>
  400918:	260d9863          	bnez	s11,400b88 <main+0x390>
  40091c:	87dff0ef          	jal	400198 <getButtonDown>
  400920:	36051263          	bnez	a0,400c84 <main+0x48c>
  400924:	881ff0ef          	jal	4001a4 <getButtonUp>
  400928:	00050d93          	mv	s11,a0
  40092c:	36051863          	bnez	a0,400c9c <main+0x4a4>
  400930:	280c1c63          	bnez	s8,400bc8 <main+0x3d0>
  400934:	d2344783          	lbu	a5,-733(s0)
  400938:	03e00713          	li	a4,62
  40093c:	26e79463          	bne	a5,a4,400ba4 <main+0x3ac>
  400940:	d20401a3          	sb	zero,-733(s0)
  400944:	00000c13          	li	s8,0
  400948:	d2344683          	lbu	a3,-733(s0)
  40094c:	d224c603          	lbu	a2,-734(s1)
  400950:	00661613          	slli	a2,a2,0x6
  400954:	00c686b3          	add	a3,a3,a2
  400958:	02d91063          	bne	s2,a3,400978 <main+0x180>
  40095c:	001a1913          	slli	s2,s4,0x1
  400960:	01794933          	xor	s2,s2,s7
  400964:	3fe97913          	andi	s2,s2,1022
  400968:	01900793          	li	a5,25
  40096c:	001a0a13          	addi	s4,s4,1
  400970:	ff27f6e3          	bgeu	a5,s2,40095c <main+0x164>
  400974:	00198993          	addi	s3,s3,1
  400978:	00a00613          	li	a2,10
  40097c:	01000593          	li	a1,16
  400980:	00190513          	addi	a0,s2,1
  400984:	845ff0ef          	jal	4001c8 <putch>
  400988:	00a00613          	li	a2,10
  40098c:	01100593          	li	a1,17
  400990:	00090513          	mv	a0,s2
  400994:	835ff0ef          	jal	4001c8 <putch>
  400998:	01099513          	slli	a0,s3,0x10
  40099c:	01055513          	srli	a0,a0,0x10
  4009a0:	f6cff0ef          	jal	40010c <checkForCollision>
  4009a4:	2a050e63          	beqz	a0,400c60 <main+0x468>
  4009a8:	fff98913          	addi	s2,s3,-1
  4009ac:	00191913          	slli	s2,s2,0x1
  4009b0:	012a8933          	add	s2,s5,s2
  4009b4:	00091503          	lh	a0,0(s2)
  4009b8:	00100613          	li	a2,1
  4009bc:	07800593          	li	a1,120
  4009c0:	809ff0ef          	jal	4001c8 <putch>
  4009c4:	00091503          	lh	a0,0(s2)
  4009c8:	00100613          	li	a2,1
  4009cc:	07800593          	li	a1,120
  4009d0:	00150513          	addi	a0,a0,1
  4009d4:	ff4ff0ef          	jal	4001c8 <putch>
  4009d8:	000927b7          	lui	a5,0x92
  4009dc:	00012623          	sw	zero,12(sp)
  4009e0:	7bf78793          	addi	a5,a5,1983 # 927bf <_stack_size+0x923bf>
  4009e4:	00c12703          	lw	a4,12(sp)
  4009e8:	28e7d663          	bge	a5,a4,400c74 <main+0x47c>
  4009ec:	da1ff0ef          	jal	40078c <clearScreen>
  4009f0:	004015b7          	lui	a1,0x401
  4009f4:	00f00613          	li	a2,15
  4009f8:	cf058593          	addi	a1,a1,-784 # 400cf0 <main+0x4f8>
  4009fc:	01900513          	li	a0,25
  400a00:	ff8ff0ef          	jal	4001f8 <printString>
  400a04:	004015b7          	lui	a1,0x401
  400a08:	00f00613          	li	a2,15
  400a0c:	cfc58593          	addi	a1,a1,-772 # 400cfc <main+0x504>
  400a10:	15900513          	li	a0,345
  400a14:	fe4ff0ef          	jal	4001f8 <printString>
  400a18:	00098513          	mv	a0,s3
  400a1c:	0000c937          	lui	s2,0xc
  400a20:	dfcff0ef          	jal	40001c <printScore>
  400a24:	34f90913          	addi	s2,s2,847 # c34f <_stack_size+0xbf4f>
  400a28:	f7cff0ef          	jal	4001a4 <getButtonUp>
  400a2c:	e0051ce3          	bnez	a0,400844 <main+0x4c>
  400a30:	f68ff0ef          	jal	400198 <getButtonDown>
  400a34:	e00516e3          	bnez	a0,400840 <main+0x48>
  400a38:	f78ff0ef          	jal	4001b0 <getButtonLeft>
  400a3c:	e00512e3          	bnez	a0,400840 <main+0x48>
  400a40:	f7cff0ef          	jal	4001bc <getButtonRight>
  400a44:	de051ee3          	bnez	a0,400840 <main+0x48>
  400a48:	00012623          	sw	zero,12(sp)
  400a4c:	00c12783          	lw	a5,12(sp)
  400a50:	fcf94ce3          	blt	s2,a5,400a28 <main+0x230>
  400a54:	00c12783          	lw	a5,12(sp)
  400a58:	00178793          	addi	a5,a5,1
  400a5c:	00f12623          	sw	a5,12(sp)
  400a60:	fedff06f          	j	400a4c <main+0x254>
  400a64:	00c12703          	lw	a4,12(sp)
  400a68:	00170713          	addi	a4,a4,1
  400a6c:	00e12623          	sw	a4,12(sp)
  400a70:	de5ff06f          	j	400854 <main+0x5c>
  400a74:	f24ff0ef          	jal	400198 <getButtonDown>
  400a78:	e40512e3          	bnez	a0,4008bc <main+0xc4>
  400a7c:	0a0d9863          	bnez	s11,400b2c <main+0x334>
  400a80:	d2344703          	lbu	a4,-733(s0)
  400a84:	00170713          	addi	a4,a4,1
  400a88:	0ff77713          	zext.b	a4,a4
  400a8c:	d2e401a3          	sb	a4,-733(s0)
  400a90:	d2344703          	lbu	a4,-733(s0)
  400a94:	05971e63          	bne	a4,s9,400af0 <main+0x2f8>
  400a98:	d224c703          	lbu	a4,-734(s1)
  400a9c:	00100d93          	li	s11,1
  400aa0:	00170713          	addi	a4,a4,1
  400aa4:	0ff77713          	zext.b	a4,a4
  400aa8:	d2e48123          	sb	a4,-734(s1)
  400aac:	d224c703          	lbu	a4,-734(s1)
  400ab0:	05771063          	bne	a4,s7,400af0 <main+0x2f8>
  400ab4:	d2344703          	lbu	a4,-733(s0)
  400ab8:	00200d93          	li	s11,2
  400abc:	fff70713          	addi	a4,a4,-1
  400ac0:	0ff77713          	zext.b	a4,a4
  400ac4:	d2e401a3          	sb	a4,-733(s0)
  400ac8:	d2344703          	lbu	a4,-733(s0)
  400acc:	02071263          	bnez	a4,400af0 <main+0x2f8>
  400ad0:	d224c703          	lbu	a4,-734(s1)
  400ad4:	fff70713          	addi	a4,a4,-1
  400ad8:	0ff77713          	zext.b	a4,a4
  400adc:	d2e48123          	sb	a4,-734(s1)
  400ae0:	d224c703          	lbu	a4,-734(s1)
  400ae4:	0ff77d93          	zext.b	s11,a4
  400ae8:	04070c63          	beqz	a4,400b40 <main+0x348>
  400aec:	00300d93          	li	s11,3
  400af0:	d2344503          	lbu	a0,-733(s0)
  400af4:	d224c703          	lbu	a4,-734(s1)
  400af8:	004c1613          	slli	a2,s8,0x4
  400afc:	0f067613          	andi	a2,a2,240
  400b00:	00671713          	slli	a4,a4,0x6
  400b04:	02000593          	li	a1,32
  400b08:	00a70533          	add	a0,a4,a0
  400b0c:	ebcff0ef          	jal	4001c8 <putch>
  400b10:	00012623          	sw	zero,12(sp)
  400b14:	00c12703          	lw	a4,12(sp)
  400b18:	d8e94ee3          	blt	s2,a4,4008b4 <main+0xbc>
  400b1c:	00c12703          	lw	a4,12(sp)
  400b20:	00170713          	addi	a4,a4,1
  400b24:	00e12623          	sw	a4,12(sp)
  400b28:	fedff06f          	j	400b14 <main+0x31c>
  400b2c:	00100793          	li	a5,1
  400b30:	f6fd84e3          	beq	s11,a5,400a98 <main+0x2a0>
  400b34:	f96d80e3          	beq	s11,s6,400ab4 <main+0x2bc>
  400b38:	f94d8ce3          	beq	s11,s4,400ad0 <main+0x2d8>
  400b3c:	fb5ff06f          	j	400af0 <main+0x2f8>
  400b40:	001c0793          	addi	a5,s8,1
  400b44:	0ff7fc13          	zext.b	s8,a5
  400b48:	d3a401a3          	sb	s10,-733(s0)
  400b4c:	fb89f2e3          	bgeu	s3,s8,400af0 <main+0x2f8>
  400b50:	00100c13          	li	s8,1
  400b54:	f9dff06f          	j	400af0 <main+0x2f8>
  400b58:	00c12783          	lw	a5,12(sp)
  400b5c:	00179793          	slli	a5,a5,0x1
  400b60:	00fa87b3          	add	a5,s5,a5
  400b64:	00d79023          	sh	a3,0(a5)
  400b68:	00c12783          	lw	a5,12(sp)
  400b6c:	00178793          	addi	a5,a5,1
  400b70:	00f12623          	sw	a5,12(sp)
  400b74:	d65ff06f          	j	4008d8 <main+0xe0>
  400b78:	00c12683          	lw	a3,12(sp)
  400b7c:	00168693          	addi	a3,a3,1
  400b80:	00d12623          	sw	a3,12(sp)
  400b84:	d8dff06f          	j	400910 <main+0x118>
  400b88:	e1cff0ef          	jal	4001a4 <getButtonUp>
  400b8c:	da0512e3          	bnez	a0,400930 <main+0x138>
  400b90:	e08ff0ef          	jal	400198 <getButtonDown>
  400b94:	00a03db3          	snez	s11,a0
  400b98:	d99ff06f          	j	400930 <main+0x138>
  400b9c:	00100d93          	li	s11,1
  400ba0:	d95ff06f          	j	400934 <main+0x13c>
  400ba4:	d2344783          	lbu	a5,-733(s0)
  400ba8:	00178793          	addi	a5,a5,1
  400bac:	0ff7f793          	zext.b	a5,a5
  400bb0:	d2f401a3          	sb	a5,-733(s0)
  400bb4:	d2344783          	lbu	a5,-733(s0)
  400bb8:	00178793          	addi	a5,a5,1
  400bbc:	0ff7f793          	zext.b	a5,a5
  400bc0:	d2f401a3          	sb	a5,-733(s0)
  400bc4:	d81ff06f          	j	400944 <main+0x14c>
  400bc8:	00100793          	li	a5,1
  400bcc:	02fc1463          	bne	s8,a5,400bf4 <main+0x3fc>
  400bd0:	d224c683          	lbu	a3,-734(s1)
  400bd4:	00069863          	bnez	a3,400be4 <main+0x3ec>
  400bd8:	01200693          	li	a3,18
  400bdc:	d2d48123          	sb	a3,-734(s1)
  400be0:	d69ff06f          	j	400948 <main+0x150>
  400be4:	d224c683          	lbu	a3,-734(s1)
  400be8:	fff68693          	addi	a3,a3,-1
  400bec:	0ff6f693          	zext.b	a3,a3
  400bf0:	fedff06f          	j	400bdc <main+0x3e4>
  400bf4:	00200793          	li	a5,2
  400bf8:	02fc1c63          	bne	s8,a5,400c30 <main+0x438>
  400bfc:	d2344683          	lbu	a3,-733(s0)
  400c00:	00069863          	bnez	a3,400c10 <main+0x418>
  400c04:	03e00693          	li	a3,62
  400c08:	d2d401a3          	sb	a3,-733(s0)
  400c0c:	d3dff06f          	j	400948 <main+0x150>
  400c10:	d2344683          	lbu	a3,-733(s0)
  400c14:	fff68693          	addi	a3,a3,-1
  400c18:	0ff6f693          	zext.b	a3,a3
  400c1c:	d2d401a3          	sb	a3,-733(s0)
  400c20:	d2344683          	lbu	a3,-733(s0)
  400c24:	fff68693          	addi	a3,a3,-1
  400c28:	0ff6f693          	zext.b	a3,a3
  400c2c:	fddff06f          	j	400c08 <main+0x410>
  400c30:	d19c1ce3          	bne	s8,s9,400948 <main+0x150>
  400c34:	d224c683          	lbu	a3,-734(s1)
  400c38:	01200793          	li	a5,18
  400c3c:	00f69863          	bne	a3,a5,400c4c <main+0x454>
  400c40:	d2048123          	sb	zero,-734(s1)
  400c44:	00300c13          	li	s8,3
  400c48:	d01ff06f          	j	400948 <main+0x150>
  400c4c:	d224c783          	lbu	a5,-734(s1)
  400c50:	00178793          	addi	a5,a5,1
  400c54:	0ff7f793          	zext.b	a5,a5
  400c58:	d2f48123          	sb	a5,-734(s1)
  400c5c:	fe9ff06f          	j	400c44 <main+0x44c>
  400c60:	00098513          	mv	a0,s3
  400c64:	bb8ff0ef          	jal	40001c <printScore>
  400c68:	00098513          	mv	a0,s3
  400c6c:	bc8ff0ef          	jal	400034 <printSnake>
  400c70:	c99ff06f          	j	400908 <main+0x110>
  400c74:	00c12703          	lw	a4,12(sp)
  400c78:	00170713          	addi	a4,a4,1
  400c7c:	00e12623          	sw	a4,12(sp)
  400c80:	d65ff06f          	j	4009e4 <main+0x1ec>
  400c84:	001c0793          	addi	a5,s8,1
  400c88:	01079c13          	slli	s8,a5,0x10
  400c8c:	410c5c13          	srai	s8,s8,0x10
  400c90:	f18cc6e3          	blt	s9,s8,400b9c <main+0x3a4>
  400c94:	00100d93          	li	s11,1
  400c98:	c99ff06f          	j	400930 <main+0x138>
  400c9c:	fffc0793          	addi	a5,s8,-1
  400ca0:	01079c13          	slli	s8,a5,0x10
  400ca4:	410c5c13          	srai	s8,s8,0x10
  400ca8:	fe0c56e3          	bgez	s8,400c94 <main+0x49c>
  400cac:	00100d93          	li	s11,1
  400cb0:	f85ff06f          	j	400c34 <main+0x43c>
