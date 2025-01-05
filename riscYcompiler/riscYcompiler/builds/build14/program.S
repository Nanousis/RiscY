
builds/build14/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00400000 <_start>:
  400000:	00004117          	auipc	sp,0x4
  400004:	00010113          	mv	sp,sp
  400008:	ffc10113          	addi	sp,sp,-4 # 403ffc <_stack_bottom+0x7fc>
  40000c:	00112023          	sw	ra,0(sp)
  400010:	00000297          	auipc	t0,0x0
  400014:	06828293          	addi	t0,t0,104 # 400078 <trap_vector>
  400018:	30529073          	csrw	mtvec,t0
  40001c:	00800313          	li	t1,8
  400020:	30032073          	csrs	mstatus,t1
  400024:	00800313          	li	t1,8
  400028:	30432073          	csrs	mie,t1
  40002c:	00001337          	lui	t1,0x1
  400030:	80030313          	addi	t1,t1,-2048 # 800 <_stack_size>
  400034:	30432073          	csrs	mie,t1
  400038:	08000313          	li	t1,128
  40003c:	30432073          	csrs	mie,t1
  400040:	2fd000ef          	jal	400b3c <_etext>
  400044:	fff00313          	li	t1,-1
  400048:	020042b7          	lui	t0,0x2004
  40004c:	0062a023          	sw	t1,0(t0) # 2004000 <MTIMECMP>
  400050:	0062a223          	sw	t1,4(t0)
  400054:	00800313          	li	t1,8
  400058:	30433073          	csrc	mie,t1
  40005c:	00001337          	lui	t1,0x1
  400060:	80030313          	addi	t1,t1,-2048 # 800 <_stack_size>
  400064:	30433073          	csrc	mie,t1
  400068:	08000313          	li	t1,128
  40006c:	30433073          	csrc	mie,t1
  400070:	00012083          	lw	ra,0(sp)
  400074:	000080e7          	jalr	ra

00400078 <trap_vector>:
  400078:	f7010113          	addi	sp,sp,-144
  40007c:	08112623          	sw	ra,140(sp)
  400080:	08512423          	sw	t0,136(sp)
  400084:	08612223          	sw	t1,132(sp)
  400088:	08712023          	sw	t2,128(sp)
  40008c:	07c12e23          	sw	t3,124(sp)
  400090:	07d12c23          	sw	t4,120(sp)
  400094:	07e12a23          	sw	t5,116(sp)
  400098:	07f12823          	sw	t6,112(sp)
  40009c:	06a12623          	sw	a0,108(sp)
  4000a0:	06b12423          	sw	a1,104(sp)
  4000a4:	06c12223          	sw	a2,100(sp)
  4000a8:	06d12023          	sw	a3,96(sp)
  4000ac:	04e12e23          	sw	a4,92(sp)
  4000b0:	04f12c23          	sw	a5,88(sp)
  4000b4:	05012a23          	sw	a6,84(sp)
  4000b8:	05112823          	sw	a7,80(sp)
  4000bc:	04812623          	sw	s0,76(sp)
  4000c0:	04912423          	sw	s1,72(sp)
  4000c4:	05212223          	sw	s2,68(sp)
  4000c8:	05312023          	sw	s3,64(sp)
  4000cc:	03412e23          	sw	s4,60(sp)
  4000d0:	03512c23          	sw	s5,56(sp)
  4000d4:	03612a23          	sw	s6,52(sp)
  4000d8:	03712823          	sw	s7,48(sp)
  4000dc:	03812623          	sw	s8,44(sp)
  4000e0:	03912423          	sw	s9,40(sp)
  4000e4:	03a12223          	sw	s10,36(sp)
  4000e8:	03b12023          	sw	s11,32(sp)
  4000ec:	34202573          	csrr	a0,mcause
  4000f0:	341025f3          	csrr	a1,mepc
  4000f4:	34302673          	csrr	a2,mtval
  4000f8:	0c0000ef          	jal	4001b8 <c_trap_handler>
  4000fc:	02012d83          	lw	s11,32(sp)
  400100:	02412d03          	lw	s10,36(sp)
  400104:	02812c83          	lw	s9,40(sp)
  400108:	02c12c03          	lw	s8,44(sp)
  40010c:	03012b83          	lw	s7,48(sp)
  400110:	03412b03          	lw	s6,52(sp)
  400114:	03812a83          	lw	s5,56(sp)
  400118:	03c12a03          	lw	s4,60(sp)
  40011c:	04012983          	lw	s3,64(sp)
  400120:	04412903          	lw	s2,68(sp)
  400124:	04812483          	lw	s1,72(sp)
  400128:	04c12403          	lw	s0,76(sp)
  40012c:	05012883          	lw	a7,80(sp)
  400130:	05412803          	lw	a6,84(sp)
  400134:	05812783          	lw	a5,88(sp)
  400138:	05c12703          	lw	a4,92(sp)
  40013c:	06012683          	lw	a3,96(sp)
  400140:	06412603          	lw	a2,100(sp)
  400144:	06812583          	lw	a1,104(sp)
  400148:	06c12503          	lw	a0,108(sp)
  40014c:	07012f83          	lw	t6,112(sp)
  400150:	07412f03          	lw	t5,116(sp)
  400154:	07812e83          	lw	t4,120(sp)
  400158:	07c12e03          	lw	t3,124(sp)
  40015c:	08012383          	lw	t2,128(sp)
  400160:	08412303          	lw	t1,132(sp)
  400164:	08812283          	lw	t0,136(sp)
  400168:	08c12083          	lw	ra,140(sp)
  40016c:	09010113          	addi	sp,sp,144
  400170:	30200073          	mret
  400174:	00000013          	nop
  400178:	00000013          	nop
  40017c:	00000013          	nop
  400180:	00000013          	nop
  400184:	00000013          	nop
  400188:	00000013          	nop

0040018c <set_timer_interrupt>:
  40018c:	0200c7b7          	lui	a5,0x200c
  400190:	ff87a703          	lw	a4,-8(a5) # 200bff8 <MTIME>
  400194:	ffc7a783          	lw	a5,-4(a5)
  400198:	00e50533          	add	a0,a0,a4
  40019c:	00e536b3          	sltu	a3,a0,a4
  4001a0:	00f585b3          	add	a1,a1,a5
  4001a4:	00b687b3          	add	a5,a3,a1
  4001a8:	020046b7          	lui	a3,0x2004
  4001ac:	00a6a023          	sw	a0,0(a3) # 2004000 <MTIMECMP>
  4001b0:	00f6a223          	sw	a5,4(a3)
  4001b4:	00008067          	ret

004001b8 <c_trap_handler>:
  4001b8:	ff010113          	addi	sp,sp,-16
  4001bc:	00060793          	mv	a5,a2
  4001c0:	00401637          	lui	a2,0x401
  4001c4:	00812423          	sw	s0,8(sp)
  4001c8:	00058713          	mv	a4,a1
  4001cc:	00050413          	mv	s0,a0
  4001d0:	00050693          	mv	a3,a0
  4001d4:	b8060613          	addi	a2,a2,-1152 # 400b80 <_etext+0x44>
  4001d8:	00f00593          	li	a1,15
  4001dc:	04000513          	li	a0,64
  4001e0:	00112623          	sw	ra,12(sp)
  4001e4:	00912223          	sw	s1,4(sp)
  4001e8:	67c000ef          	jal	400864 <printfSCR>
  4001ec:	06045c63          	bgez	s0,400264 <c_trap_handler+0xac>
  4001f0:	004014b7          	lui	s1,0x401
  4001f4:	c704a683          	lw	a3,-912(s1) # 400c70 <intCount>
  4001f8:	00401637          	lui	a2,0x401
  4001fc:	ba460613          	addi	a2,a2,-1116 # 400ba4 <_etext+0x68>
  400200:	00f00593          	li	a1,15
  400204:	08000513          	li	a0,128
  400208:	65c000ef          	jal	400864 <printfSCR>
  40020c:	c704a783          	lw	a5,-912(s1)
  400210:	00178793          	addi	a5,a5,1
  400214:	c6f4a823          	sw	a5,-912(s1)
  400218:	800007b7          	lui	a5,0x80000
  40021c:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
  400220:	08f41e63          	bne	s0,a5,4002bc <c_trap_handler+0x104>
  400224:	0200c7b7          	lui	a5,0x200c
  400228:	02004737          	lui	a4,0x2004
  40022c:	00072703          	lw	a4,0(a4) # 2004000 <MTIMECMP>
  400230:	ff87a683          	lw	a3,-8(a5) # 200bff8 <MTIME>
  400234:	00401637          	lui	a2,0x401
  400238:	00f00593          	li	a1,15
  40023c:	bb460613          	addi	a2,a2,-1100 # 400bb4 <_etext+0x78>
  400240:	0c000513          	li	a0,192
  400244:	620000ef          	jal	400864 <printfSCR>
  400248:	00812403          	lw	s0,8(sp)
  40024c:	00c12083          	lw	ra,12(sp)
  400250:	00412483          	lw	s1,4(sp)
  400254:	06400513          	li	a0,100
  400258:	00000593          	li	a1,0
  40025c:	01010113          	addi	sp,sp,16
  400260:	f2dff06f          	j	40018c <set_timer_interrupt>
  400264:	00800793          	li	a5,8
  400268:	02f40863          	beq	s0,a5,400298 <c_trap_handler+0xe0>
  40026c:	00b00793          	li	a5,11
  400270:	02f40a63          	beq	s0,a5,4002a4 <c_trap_handler+0xec>
  400274:	00200793          	li	a5,2
  400278:	02f41c63          	bne	s0,a5,4002b0 <c_trap_handler+0xf8>
  40027c:	00401537          	lui	a0,0x401
  400280:	bd850513          	addi	a0,a0,-1064 # 400bd8 <_etext+0x9c>
  400284:	00812403          	lw	s0,8(sp)
  400288:	00c12083          	lw	ra,12(sp)
  40028c:	00412483          	lw	s1,4(sp)
  400290:	01010113          	addi	sp,sp,16
  400294:	4340006f          	j	4006c8 <printf>
  400298:	00401537          	lui	a0,0x401
  40029c:	bf050513          	addi	a0,a0,-1040 # 400bf0 <_etext+0xb4>
  4002a0:	fe5ff06f          	j	400284 <c_trap_handler+0xcc>
  4002a4:	00401537          	lui	a0,0x401
  4002a8:	c0c50513          	addi	a0,a0,-1012 # 400c0c <_etext+0xd0>
  4002ac:	fd9ff06f          	j	400284 <c_trap_handler+0xcc>
  4002b0:	00401537          	lui	a0,0x401
  4002b4:	c2850513          	addi	a0,a0,-984 # 400c28 <_etext+0xec>
  4002b8:	fcdff06f          	j	400284 <c_trap_handler+0xcc>
  4002bc:	00c12083          	lw	ra,12(sp)
  4002c0:	00812403          	lw	s0,8(sp)
  4002c4:	00412483          	lw	s1,4(sp)
  4002c8:	01010113          	addi	sp,sp,16
  4002cc:	00008067          	ret

004002d0 <getUSBint>:
  4002d0:	100007b7          	lui	a5,0x10000
  4002d4:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
  4002d8:	00008067          	ret

004002dc <USBParser>:
  4002dc:	01d00793          	li	a5,29
  4002e0:	00a7ee63          	bltu	a5,a0,4002fc <USBParser+0x20>
  4002e4:	00300793          	li	a5,3
  4002e8:	02a7ee63          	bltu	a5,a0,400324 <USBParser+0x48>
  4002ec:	00000513          	li	a0,0
  4002f0:	00008067          	ret
  4002f4:	01b00513          	li	a0,27
  4002f8:	00008067          	ret
  4002fc:	fe250793          	addi	a5,a0,-30
  400300:	0ff7f793          	zext.b	a5,a5
  400304:	03400713          	li	a4,52
  400308:	fef762e3          	bltu	a4,a5,4002ec <USBParser+0x10>
  40030c:	00401737          	lui	a4,0x401
  400310:	00279793          	slli	a5,a5,0x2
  400314:	a5470713          	addi	a4,a4,-1452 # 400a54 <resetScreenVector+0xc>
  400318:	00e787b3          	add	a5,a5,a4
  40031c:	0007a783          	lw	a5,0(a5)
  400320:	00078067          	jr	a5
  400324:	05d50513          	addi	a0,a0,93
  400328:	0ff57513          	zext.b	a0,a0
  40032c:	00008067          	ret
  400330:	01350513          	addi	a0,a0,19
  400334:	ff5ff06f          	j	400328 <USBParser+0x4c>
  400338:	00800513          	li	a0,8
  40033c:	00008067          	ret
  400340:	00900513          	li	a0,9
  400344:	00008067          	ret
  400348:	02000513          	li	a0,32
  40034c:	00008067          	ret
  400350:	03d00513          	li	a0,61
  400354:	00008067          	ret
  400358:	05b00513          	li	a0,91
  40035c:	00008067          	ret
  400360:	05d00513          	li	a0,93
  400364:	00008067          	ret
  400368:	05c00513          	li	a0,92
  40036c:	00008067          	ret
  400370:	03b00513          	li	a0,59
  400374:	00008067          	ret
  400378:	02700513          	li	a0,39
  40037c:	00008067          	ret
  400380:	06000513          	li	a0,96
  400384:	00008067          	ret
  400388:	02c00513          	li	a0,44
  40038c:	00008067          	ret
  400390:	02e00513          	li	a0,46
  400394:	00008067          	ret
  400398:	02f00513          	li	a0,47
  40039c:	00008067          	ret
  4003a0:	04600513          	li	a0,70
  4003a4:	00008067          	ret
  4003a8:	05200513          	li	a0,82
  4003ac:	00008067          	ret
  4003b0:	04c00513          	li	a0,76
  4003b4:	00008067          	ret
  4003b8:	04400513          	li	a0,68
  4003bc:	00008067          	ret
  4003c0:	05500513          	li	a0,85
  4003c4:	00008067          	ret
  4003c8:	00a00513          	li	a0,10
  4003cc:	00008067          	ret

004003d0 <memcpy>:
  4003d0:	00000793          	li	a5,0
  4003d4:	00c7c463          	blt	a5,a2,4003dc <memcpy+0xc>
  4003d8:	00008067          	ret
  4003dc:	00f58733          	add	a4,a1,a5
  4003e0:	00074683          	lbu	a3,0(a4)
  4003e4:	00f50733          	add	a4,a0,a5
  4003e8:	00178793          	addi	a5,a5,1
  4003ec:	00d70023          	sb	a3,0(a4)
  4003f0:	fe5ff06f          	j	4003d4 <memcpy+0x4>

004003f4 <memset>:
  4003f4:	00c50633          	add	a2,a0,a2
  4003f8:	00050793          	mv	a5,a0
  4003fc:	00c79463          	bne	a5,a2,400404 <memset+0x10>
  400400:	00008067          	ret
  400404:	00178793          	addi	a5,a5,1
  400408:	feb78fa3          	sb	a1,-1(a5)
  40040c:	ff1ff06f          	j	4003fc <memset+0x8>

00400410 <getButtonDown>:
  400410:	890007b7          	lui	a5,0x89000
  400414:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
  400418:	00008067          	ret

0040041c <getButtonUp>:
  40041c:	890007b7          	lui	a5,0x89000
  400420:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
  400424:	00008067          	ret

00400428 <getButtonLeft>:
  400428:	890007b7          	lui	a5,0x89000
  40042c:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
  400430:	00008067          	ret

00400434 <getButtonRight>:
  400434:	890007b7          	lui	a5,0x89000
  400438:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
  40043c:	00008067          	ret

00400440 <putch>:
  400440:	4c000793          	li	a5,1216
  400444:	02a7e263          	bltu	a5,a0,400468 <putch+0x28>
  400448:	00861613          	slli	a2,a2,0x8
  40044c:	880007b7          	lui	a5,0x88000
  400450:	00151513          	slli	a0,a0,0x1
  400454:	00f50533          	add	a0,a0,a5
  400458:	00b665b3          	or	a1,a2,a1
  40045c:	00b51023          	sh	a1,0(a0)
  400460:	00100513          	li	a0,1
  400464:	00008067          	ret
  400468:	00000513          	li	a0,0
  40046c:	00008067          	ret

00400470 <printString>:
  400470:	fe010113          	addi	sp,sp,-32
  400474:	01312623          	sw	s3,12(sp)
  400478:	01412423          	sw	s4,8(sp)
  40047c:	00112e23          	sw	ra,28(sp)
  400480:	00812c23          	sw	s0,24(sp)
  400484:	00912a23          	sw	s1,20(sp)
  400488:	01212823          	sw	s2,16(sp)
  40048c:	01512223          	sw	s5,4(sp)
  400490:	01612023          	sw	s6,0(sp)
  400494:	00050a13          	mv	s4,a0
  400498:	00058993          	mv	s3,a1
  40049c:	06060c63          	beqz	a2,400514 <printString+0xa4>
  4004a0:	00060413          	mv	s0,a2
  4004a4:	00000913          	li	s2,0
  4004a8:	00000493          	li	s1,0
  4004ac:	00100a93          	li	s5,1
  4004b0:	00f00b13          	li	s6,15
  4004b4:	0280006f          	j	4004dc <printString+0x6c>
  4004b8:	00040613          	mv	a2,s0
  4004bc:	009a0533          	add	a0,s4,s1
  4004c0:	f81ff0ef          	jal	400440 <putch>
  4004c4:	06050263          	beqz	a0,400528 <printString+0xb8>
  4004c8:	00148493          	addi	s1,s1,1
  4004cc:	01591863          	bne	s2,s5,4004dc <printString+0x6c>
  4004d0:	00140413          	addi	s0,s0,1
  4004d4:	0ff47413          	zext.b	s0,s0
  4004d8:	048b6463          	bltu	s6,s0,400520 <printString+0xb0>
  4004dc:	009987b3          	add	a5,s3,s1
  4004e0:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
  4004e4:	00048513          	mv	a0,s1
  4004e8:	fc0598e3          	bnez	a1,4004b8 <printString+0x48>
  4004ec:	01c12083          	lw	ra,28(sp)
  4004f0:	01812403          	lw	s0,24(sp)
  4004f4:	01412483          	lw	s1,20(sp)
  4004f8:	01012903          	lw	s2,16(sp)
  4004fc:	00c12983          	lw	s3,12(sp)
  400500:	00812a03          	lw	s4,8(sp)
  400504:	00412a83          	lw	s5,4(sp)
  400508:	00012b03          	lw	s6,0(sp)
  40050c:	02010113          	addi	sp,sp,32
  400510:	00008067          	ret
  400514:	00100913          	li	s2,1
  400518:	00090413          	mv	s0,s2
  40051c:	f8dff06f          	j	4004a8 <printString+0x38>
  400520:	00090413          	mv	s0,s2
  400524:	fb9ff06f          	j	4004dc <printString+0x6c>
  400528:	00000513          	li	a0,0
  40052c:	fc1ff06f          	j	4004ec <printString+0x7c>

00400530 <printHex>:
  400530:	fd010113          	addi	sp,sp,-48
  400534:	02812423          	sw	s0,40(sp)
  400538:	00058413          	mv	s0,a1
  40053c:	004015b7          	lui	a1,0x401
  400540:	02912223          	sw	s1,36(sp)
  400544:	03212023          	sw	s2,32(sp)
  400548:	c5458593          	addi	a1,a1,-940 # 400c54 <_etext+0x118>
  40054c:	00050493          	mv	s1,a0
  400550:	00060913          	mv	s2,a2
  400554:	00c10513          	addi	a0,sp,12
  400558:	01100613          	li	a2,17
  40055c:	02112623          	sw	ra,44(sp)
  400560:	e71ff0ef          	jal	4003d0 <memcpy>
  400564:	202027b7          	lui	a5,0x20202
  400568:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
  40056c:	00f12023          	sw	a5,0(sp)
  400570:	00f12223          	sw	a5,4(sp)
  400574:	00010423          	sb	zero,8(sp)
  400578:	00700793          	li	a5,7
  40057c:	00010593          	mv	a1,sp
  400580:	fff00693          	li	a3,-1
  400584:	00f47713          	andi	a4,s0,15
  400588:	02070713          	addi	a4,a4,32
  40058c:	00270733          	add	a4,a4,sp
  400590:	fec74703          	lbu	a4,-20(a4)
  400594:	00f58633          	add	a2,a1,a5
  400598:	fff78793          	addi	a5,a5,-1
  40059c:	00e60023          	sb	a4,0(a2)
  4005a0:	40445413          	srai	s0,s0,0x4
  4005a4:	fed790e3          	bne	a5,a3,400584 <printHex+0x54>
  4005a8:	00090613          	mv	a2,s2
  4005ac:	00048513          	mv	a0,s1
  4005b0:	ec1ff0ef          	jal	400470 <printString>
  4005b4:	02c12083          	lw	ra,44(sp)
  4005b8:	02812403          	lw	s0,40(sp)
  4005bc:	02412483          	lw	s1,36(sp)
  4005c0:	02012903          	lw	s2,32(sp)
  4005c4:	0ff57513          	zext.b	a0,a0
  4005c8:	03010113          	addi	sp,sp,48
  4005cc:	00008067          	ret

004005d0 <printDec>:
  4005d0:	fd010113          	addi	sp,sp,-48
  4005d4:	02812423          	sw	s0,40(sp)
  4005d8:	00058413          	mv	s0,a1
  4005dc:	004015b7          	lui	a1,0x401
  4005e0:	02912223          	sw	s1,36(sp)
  4005e4:	03212023          	sw	s2,32(sp)
  4005e8:	00050493          	mv	s1,a0
  4005ec:	00060913          	mv	s2,a2
  4005f0:	b2858593          	addi	a1,a1,-1240 # 400b28 <resetScreenVector+0xe0>
  4005f4:	01400613          	li	a2,20
  4005f8:	00c10513          	addi	a0,sp,12
  4005fc:	02112623          	sw	ra,44(sp)
  400600:	dd1ff0ef          	jal	4003d0 <memcpy>
  400604:	000187b7          	lui	a5,0x18
  400608:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  40060c:	0287fa63          	bgeu	a5,s0,400640 <printDec+0x70>
  400610:	004015b7          	lui	a1,0x401
  400614:	00090613          	mv	a2,s2
  400618:	c6858593          	addi	a1,a1,-920 # 400c68 <_etext+0x12c>
  40061c:	00048513          	mv	a0,s1
  400620:	e51ff0ef          	jal	400470 <printString>
  400624:	02c12083          	lw	ra,44(sp)
  400628:	02812403          	lw	s0,40(sp)
  40062c:	02412483          	lw	s1,36(sp)
  400630:	02012903          	lw	s2,32(sp)
  400634:	0ff57513          	zext.b	a0,a0
  400638:	03010113          	addi	sp,sp,48
  40063c:	00008067          	ret
  400640:	00100613          	li	a2,1
  400644:	00c10713          	addi	a4,sp,12
  400648:	00000793          	li	a5,0
  40064c:	00060513          	mv	a0,a2
  400650:	00072583          	lw	a1,0(a4)
  400654:	00000693          	li	a3,0
  400658:	06b47263          	bgeu	s0,a1,4006bc <printDec+0xec>
  40065c:	00069663          	bnez	a3,400668 <printDec+0x98>
  400660:	00a58463          	beq	a1,a0,400668 <printDec+0x98>
  400664:	00061e63          	bnez	a2,400680 <printDec+0xb0>
  400668:	02078613          	addi	a2,a5,32
  40066c:	00260633          	add	a2,a2,sp
  400670:	03068693          	addi	a3,a3,48
  400674:	fed60223          	sb	a3,-28(a2)
  400678:	00178793          	addi	a5,a5,1
  40067c:	00000613          	li	a2,0
  400680:	00470713          	addi	a4,a4,4
  400684:	02010693          	addi	a3,sp,32
  400688:	fcd714e3          	bne	a4,a3,400650 <printDec+0x80>
  40068c:	00060c63          	beqz	a2,4006a4 <printDec+0xd4>
  400690:	02078713          	addi	a4,a5,32
  400694:	00270733          	add	a4,a4,sp
  400698:	03000693          	li	a3,48
  40069c:	fed70223          	sb	a3,-28(a4)
  4006a0:	00178793          	addi	a5,a5,1
  4006a4:	02078793          	addi	a5,a5,32
  4006a8:	002787b3          	add	a5,a5,sp
  4006ac:	fe078223          	sb	zero,-28(a5)
  4006b0:	00090613          	mv	a2,s2
  4006b4:	00410593          	addi	a1,sp,4
  4006b8:	f65ff06f          	j	40061c <printDec+0x4c>
  4006bc:	40b40433          	sub	s0,s0,a1
  4006c0:	00168693          	addi	a3,a3,1
  4006c4:	f95ff06f          	j	400658 <printDec+0x88>

004006c8 <printf>:
  4006c8:	fa010113          	addi	sp,sp,-96
  4006cc:	04f12a23          	sw	a5,84(sp)
  4006d0:	04410793          	addi	a5,sp,68
  4006d4:	02812c23          	sw	s0,56(sp)
  4006d8:	02912a23          	sw	s1,52(sp)
  4006dc:	03212823          	sw	s2,48(sp)
  4006e0:	03312623          	sw	s3,44(sp)
  4006e4:	03412423          	sw	s4,40(sp)
  4006e8:	03512223          	sw	s5,36(sp)
  4006ec:	03612023          	sw	s6,32(sp)
  4006f0:	01812c23          	sw	s8,24(sp)
  4006f4:	02112e23          	sw	ra,60(sp)
  4006f8:	01712e23          	sw	s7,28(sp)
  4006fc:	00050493          	mv	s1,a0
  400700:	04b12223          	sw	a1,68(sp)
  400704:	04c12423          	sw	a2,72(sp)
  400708:	04d12623          	sw	a3,76(sp)
  40070c:	04e12823          	sw	a4,80(sp)
  400710:	05012c23          	sw	a6,88(sp)
  400714:	05112e23          	sw	a7,92(sp)
  400718:	00f12623          	sw	a5,12(sp)
  40071c:	00000c13          	li	s8,0
  400720:	00401437          	lui	s0,0x401
  400724:	00a00993          	li	s3,10
  400728:	02500913          	li	s2,37
  40072c:	07800a13          	li	s4,120
  400730:	06400a93          	li	s5,100
  400734:	06300b13          	li	s6,99
  400738:	018487b3          	add	a5,s1,s8
  40073c:	0007c583          	lbu	a1,0(a5)
  400740:	c7441503          	lh	a0,-908(s0) # 400c74 <screenPos>
  400744:	02059a63          	bnez	a1,400778 <printf+0xb0>
  400748:	03c12083          	lw	ra,60(sp)
  40074c:	03812403          	lw	s0,56(sp)
  400750:	03412483          	lw	s1,52(sp)
  400754:	03012903          	lw	s2,48(sp)
  400758:	02c12983          	lw	s3,44(sp)
  40075c:	02812a03          	lw	s4,40(sp)
  400760:	02412a83          	lw	s5,36(sp)
  400764:	02012b03          	lw	s6,32(sp)
  400768:	01c12b83          	lw	s7,28(sp)
  40076c:	01812c03          	lw	s8,24(sp)
  400770:	06010113          	addi	sp,sp,96
  400774:	00008067          	ret
  400778:	001c0b93          	addi	s7,s8,1
  40077c:	01359e63          	bne	a1,s3,400798 <printf+0xd0>
  400780:	fc057793          	andi	a5,a0,-64
  400784:	04078793          	addi	a5,a5,64
  400788:	01079793          	slli	a5,a5,0x10
  40078c:	4107d793          	srai	a5,a5,0x10
  400790:	000c0b93          	mv	s7,s8
  400794:	0380006f          	j	4007cc <printf+0x104>
  400798:	0d259263          	bne	a1,s2,40085c <printf+0x194>
  40079c:	0017c783          	lbu	a5,1(a5)
  4007a0:	03479c63          	bne	a5,s4,4007d8 <printf+0x110>
  4007a4:	00c12783          	lw	a5,12(sp)
  4007a8:	00f00613          	li	a2,15
  4007ac:	0007a583          	lw	a1,0(a5)
  4007b0:	00478713          	addi	a4,a5,4
  4007b4:	00e12623          	sw	a4,12(sp)
  4007b8:	d79ff0ef          	jal	400530 <printHex>
  4007bc:	c7445783          	lhu	a5,-908(s0)
  4007c0:	00f507b3          	add	a5,a0,a5
  4007c4:	01079793          	slli	a5,a5,0x10
  4007c8:	4107d793          	srai	a5,a5,0x10
  4007cc:	c6f41a23          	sh	a5,-908(s0)
  4007d0:	001b8c13          	addi	s8,s7,1
  4007d4:	f65ff06f          	j	400738 <printf+0x70>
  4007d8:	03579063          	bne	a5,s5,4007f8 <printf+0x130>
  4007dc:	00c12783          	lw	a5,12(sp)
  4007e0:	00f00613          	li	a2,15
  4007e4:	0007a583          	lw	a1,0(a5)
  4007e8:	00478713          	addi	a4,a5,4
  4007ec:	00e12623          	sw	a4,12(sp)
  4007f0:	de1ff0ef          	jal	4005d0 <printDec>
  4007f4:	fc9ff06f          	j	4007bc <printf+0xf4>
  4007f8:	03679463          	bne	a5,s6,400820 <printf+0x158>
  4007fc:	00c12783          	lw	a5,12(sp)
  400800:	00f00613          	li	a2,15
  400804:	0007c583          	lbu	a1,0(a5)
  400808:	00478713          	addi	a4,a5,4
  40080c:	00e12623          	sw	a4,12(sp)
  400810:	c31ff0ef          	jal	400440 <putch>
  400814:	c7445783          	lhu	a5,-908(s0)
  400818:	00178793          	addi	a5,a5,1
  40081c:	fa9ff06f          	j	4007c4 <printf+0xfc>
  400820:	07300713          	li	a4,115
  400824:	02e79063          	bne	a5,a4,400844 <printf+0x17c>
  400828:	00c12783          	lw	a5,12(sp)
  40082c:	00f00613          	li	a2,15
  400830:	0007a583          	lw	a1,0(a5)
  400834:	00478713          	addi	a4,a5,4
  400838:	00e12623          	sw	a4,12(sp)
  40083c:	c35ff0ef          	jal	400470 <printString>
  400840:	f7dff06f          	j	4007bc <printf+0xf4>
  400844:	00f00613          	li	a2,15
  400848:	00090593          	mv	a1,s2
  40084c:	bf5ff0ef          	jal	400440 <putch>
  400850:	c7445783          	lhu	a5,-908(s0)
  400854:	00178793          	addi	a5,a5,1
  400858:	f31ff06f          	j	400788 <printf+0xc0>
  40085c:	00f00613          	li	a2,15
  400860:	fedff06f          	j	40084c <printf+0x184>

00400864 <printfSCR>:
  400864:	f9010113          	addi	sp,sp,-112
  400868:	06f12223          	sw	a5,100(sp)
  40086c:	05c10793          	addi	a5,sp,92
  400870:	04812423          	sw	s0,72(sp)
  400874:	04912223          	sw	s1,68(sp)
  400878:	05212023          	sw	s2,64(sp)
  40087c:	03412c23          	sw	s4,56(sp)
  400880:	03512a23          	sw	s5,52(sp)
  400884:	03612823          	sw	s6,48(sp)
  400888:	03712623          	sw	s7,44(sp)
  40088c:	03812423          	sw	s8,40(sp)
  400890:	03912223          	sw	s9,36(sp)
  400894:	03a12023          	sw	s10,32(sp)
  400898:	01b12e23          	sw	s11,28(sp)
  40089c:	04112623          	sw	ra,76(sp)
  4008a0:	03312e23          	sw	s3,60(sp)
  4008a4:	00050a93          	mv	s5,a0
  4008a8:	00058493          	mv	s1,a1
  4008ac:	00060a13          	mv	s4,a2
  4008b0:	04d12e23          	sw	a3,92(sp)
  4008b4:	06e12023          	sw	a4,96(sp)
  4008b8:	07012423          	sw	a6,104(sp)
  4008bc:	07112623          	sw	a7,108(sp)
  4008c0:	00f12623          	sw	a5,12(sp)
  4008c4:	00000913          	li	s2,0
  4008c8:	00000413          	li	s0,0
  4008cc:	00a00b93          	li	s7,10
  4008d0:	02500b13          	li	s6,37
  4008d4:	07800c13          	li	s8,120
  4008d8:	06400c93          	li	s9,100
  4008dc:	06300d13          	li	s10,99
  4008e0:	07300d93          	li	s11,115
  4008e4:	012a07b3          	add	a5,s4,s2
  4008e8:	0007c583          	lbu	a1,0(a5)
  4008ec:	04059263          	bnez	a1,400930 <printfSCR+0xcc>
  4008f0:	04c12083          	lw	ra,76(sp)
  4008f4:	00040513          	mv	a0,s0
  4008f8:	04812403          	lw	s0,72(sp)
  4008fc:	04412483          	lw	s1,68(sp)
  400900:	04012903          	lw	s2,64(sp)
  400904:	03c12983          	lw	s3,60(sp)
  400908:	03812a03          	lw	s4,56(sp)
  40090c:	03412a83          	lw	s5,52(sp)
  400910:	03012b03          	lw	s6,48(sp)
  400914:	02c12b83          	lw	s7,44(sp)
  400918:	02812c03          	lw	s8,40(sp)
  40091c:	02412c83          	lw	s9,36(sp)
  400920:	02012d03          	lw	s10,32(sp)
  400924:	01c12d83          	lw	s11,28(sp)
  400928:	07010113          	addi	sp,sp,112
  40092c:	00008067          	ret
  400930:	00190993          	addi	s3,s2,1
  400934:	01759a63          	bne	a1,s7,400948 <printfSCR+0xe4>
  400938:	fc047413          	andi	s0,s0,-64
  40093c:	04040413          	addi	s0,s0,64
  400940:	00090993          	mv	s3,s2
  400944:	0740006f          	j	4009b8 <printfSCR+0x154>
  400948:	01540533          	add	a0,s0,s5
  40094c:	0b659463          	bne	a1,s6,4009f4 <printfSCR+0x190>
  400950:	0017c783          	lbu	a5,1(a5)
  400954:	03879263          	bne	a5,s8,400978 <printfSCR+0x114>
  400958:	00c12783          	lw	a5,12(sp)
  40095c:	00048613          	mv	a2,s1
  400960:	0007a583          	lw	a1,0(a5)
  400964:	00478713          	addi	a4,a5,4
  400968:	00e12623          	sw	a4,12(sp)
  40096c:	bc5ff0ef          	jal	400530 <printHex>
  400970:	00a40433          	add	s0,s0,a0
  400974:	0440006f          	j	4009b8 <printfSCR+0x154>
  400978:	03979063          	bne	a5,s9,400998 <printfSCR+0x134>
  40097c:	00c12783          	lw	a5,12(sp)
  400980:	00048613          	mv	a2,s1
  400984:	0007a583          	lw	a1,0(a5)
  400988:	00478713          	addi	a4,a5,4
  40098c:	00e12623          	sw	a4,12(sp)
  400990:	c41ff0ef          	jal	4005d0 <printDec>
  400994:	fddff06f          	j	400970 <printfSCR+0x10c>
  400998:	03a79463          	bne	a5,s10,4009c0 <printfSCR+0x15c>
  40099c:	00c12783          	lw	a5,12(sp)
  4009a0:	00048613          	mv	a2,s1
  4009a4:	00140413          	addi	s0,s0,1
  4009a8:	0007c583          	lbu	a1,0(a5)
  4009ac:	00478713          	addi	a4,a5,4
  4009b0:	00e12623          	sw	a4,12(sp)
  4009b4:	a8dff0ef          	jal	400440 <putch>
  4009b8:	00198913          	addi	s2,s3,1
  4009bc:	f29ff06f          	j	4008e4 <printfSCR+0x80>
  4009c0:	03b79063          	bne	a5,s11,4009e0 <printfSCR+0x17c>
  4009c4:	00c12783          	lw	a5,12(sp)
  4009c8:	00048613          	mv	a2,s1
  4009cc:	0007a583          	lw	a1,0(a5)
  4009d0:	00478713          	addi	a4,a5,4
  4009d4:	00e12623          	sw	a4,12(sp)
  4009d8:	a99ff0ef          	jal	400470 <printString>
  4009dc:	f95ff06f          	j	400970 <printfSCR+0x10c>
  4009e0:	00048613          	mv	a2,s1
  4009e4:	000b0593          	mv	a1,s6
  4009e8:	a59ff0ef          	jal	400440 <putch>
  4009ec:	00140413          	addi	s0,s0,1
  4009f0:	f51ff06f          	j	400940 <printfSCR+0xdc>
  4009f4:	00048613          	mv	a2,s1
  4009f8:	ff1ff06f          	j	4009e8 <printfSCR+0x184>

004009fc <clearScreen>:
  4009fc:	ff010113          	addi	sp,sp,-16
  400a00:	00812423          	sw	s0,8(sp)
  400a04:	00912223          	sw	s1,4(sp)
  400a08:	00112623          	sw	ra,12(sp)
  400a0c:	00000413          	li	s0,0
  400a10:	4c000493          	li	s1,1216
  400a14:	00040513          	mv	a0,s0
  400a18:	00f00613          	li	a2,15
  400a1c:	02000593          	li	a1,32
  400a20:	00140413          	addi	s0,s0,1
  400a24:	a1dff0ef          	jal	400440 <putch>
  400a28:	fe9416e3          	bne	s0,s1,400a14 <clearScreen+0x18>
  400a2c:	00c12083          	lw	ra,12(sp)
  400a30:	00812403          	lw	s0,8(sp)
  400a34:	004017b7          	lui	a5,0x401
  400a38:	c6079a23          	sh	zero,-908(a5) # 400c74 <screenPos>
  400a3c:	00412483          	lw	s1,4(sp)
  400a40:	01010113          	addi	sp,sp,16
  400a44:	00008067          	ret

00400a48 <resetScreenVector>:
  400a48:	004017b7          	lui	a5,0x401
  400a4c:	c6079a23          	sh	zero,-908(a5) # 400c74 <screenPos>
  400a50:	00008067          	ret
  400a54:	0330                	.insn	2, 0x0330
  400a56:	0040                	.insn	2, 0x0040
  400a58:	0330                	.insn	2, 0x0330
  400a5a:	0040                	.insn	2, 0x0040
  400a5c:	0330                	.insn	2, 0x0330
  400a5e:	0040                	.insn	2, 0x0040
  400a60:	0330                	.insn	2, 0x0330
  400a62:	0040                	.insn	2, 0x0040
  400a64:	0330                	.insn	2, 0x0330
  400a66:	0040                	.insn	2, 0x0040
  400a68:	0330                	.insn	2, 0x0330
  400a6a:	0040                	.insn	2, 0x0040
  400a6c:	0330                	.insn	2, 0x0330
  400a6e:	0040                	.insn	2, 0x0040
  400a70:	0330                	.insn	2, 0x0330
  400a72:	0040                	.insn	2, 0x0040
  400a74:	0330                	.insn	2, 0x0330
  400a76:	0040                	.insn	2, 0x0040
  400a78:	0330                	.insn	2, 0x0330
  400a7a:	0040                	.insn	2, 0x0040
  400a7c:	03c8                	.insn	2, 0x03c8
  400a7e:	0040                	.insn	2, 0x0040
  400a80:	02f4                	.insn	2, 0x02f4
  400a82:	0040                	.insn	2, 0x0040
  400a84:	0338                	.insn	2, 0x0338
  400a86:	0040                	.insn	2, 0x0040
  400a88:	0340                	.insn	2, 0x0340
  400a8a:	0040                	.insn	2, 0x0040
  400a8c:	0348                	.insn	2, 0x0348
  400a8e:	0040                	.insn	2, 0x0040
  400a90:	02f0                	.insn	2, 0x02f0
  400a92:	0040                	.insn	2, 0x0040
  400a94:	0350                	.insn	2, 0x0350
  400a96:	0040                	.insn	2, 0x0040
  400a98:	0358                	.insn	2, 0x0358
  400a9a:	0040                	.insn	2, 0x0040
  400a9c:	0360                	.insn	2, 0x0360
  400a9e:	0040                	.insn	2, 0x0040
  400aa0:	0368                	.insn	2, 0x0368
  400aa2:	0040                	.insn	2, 0x0040
  400aa4:	02ec                	.insn	2, 0x02ec
  400aa6:	0040                	.insn	2, 0x0040
  400aa8:	0370                	.insn	2, 0x0370
  400aaa:	0040                	.insn	2, 0x0040
  400aac:	0378                	.insn	2, 0x0378
  400aae:	0040                	.insn	2, 0x0040
  400ab0:	0380                	.insn	2, 0x0380
  400ab2:	0040                	.insn	2, 0x0040
  400ab4:	0388                	.insn	2, 0x0388
  400ab6:	0040                	.insn	2, 0x0040
  400ab8:	0390                	.insn	2, 0x0390
  400aba:	0040                	.insn	2, 0x0040
  400abc:	0398                	.insn	2, 0x0398
  400abe:	0040                	.insn	2, 0x0040
  400ac0:	02ec                	.insn	2, 0x02ec
  400ac2:	0040                	.insn	2, 0x0040
  400ac4:	03a0                	.insn	2, 0x03a0
  400ac6:	0040                	.insn	2, 0x0040
  400ac8:	03a0                	.insn	2, 0x03a0
  400aca:	0040                	.insn	2, 0x0040
  400acc:	03a0                	.insn	2, 0x03a0
  400ace:	0040                	.insn	2, 0x0040
  400ad0:	03a0                	.insn	2, 0x03a0
  400ad2:	0040                	.insn	2, 0x0040
  400ad4:	03a0                	.insn	2, 0x03a0
  400ad6:	0040                	.insn	2, 0x0040
  400ad8:	03a0                	.insn	2, 0x03a0
  400ada:	0040                	.insn	2, 0x0040
  400adc:	03a0                	.insn	2, 0x03a0
  400ade:	0040                	.insn	2, 0x0040
  400ae0:	03a0                	.insn	2, 0x03a0
  400ae2:	0040                	.insn	2, 0x0040
  400ae4:	03a0                	.insn	2, 0x03a0
  400ae6:	0040                	.insn	2, 0x0040
  400ae8:	03a0                	.insn	2, 0x03a0
  400aea:	0040                	.insn	2, 0x0040
  400aec:	03a0                	.insn	2, 0x03a0
  400aee:	0040                	.insn	2, 0x0040
  400af0:	03a0                	.insn	2, 0x03a0
  400af2:	0040                	.insn	2, 0x0040
  400af4:	02ec                	.insn	2, 0x02ec
  400af6:	0040                	.insn	2, 0x0040
  400af8:	02ec                	.insn	2, 0x02ec
  400afa:	0040                	.insn	2, 0x0040
  400afc:	02ec                	.insn	2, 0x02ec
  400afe:	0040                	.insn	2, 0x0040
  400b00:	02ec                	.insn	2, 0x02ec
  400b02:	0040                	.insn	2, 0x0040
  400b04:	02ec                	.insn	2, 0x02ec
  400b06:	0040                	.insn	2, 0x0040
  400b08:	02ec                	.insn	2, 0x02ec
  400b0a:	0040                	.insn	2, 0x0040
  400b0c:	02ec                	.insn	2, 0x02ec
  400b0e:	0040                	.insn	2, 0x0040
  400b10:	02ec                	.insn	2, 0x02ec
  400b12:	0040                	.insn	2, 0x0040
  400b14:	02ec                	.insn	2, 0x02ec
  400b16:	0040                	.insn	2, 0x0040
  400b18:	03a8                	.insn	2, 0x03a8
  400b1a:	0040                	.insn	2, 0x0040
  400b1c:	03b0                	.insn	2, 0x03b0
  400b1e:	0040                	.insn	2, 0x0040
  400b20:	03b8                	.insn	2, 0x03b8
  400b22:	0040                	.insn	2, 0x0040
  400b24:	03c0                	.insn	2, 0x03c0
  400b26:	0040                	.insn	2, 0x0040
  400b28:	2710                	.insn	2, 0x2710
  400b2a:	0000                	.insn	2, 0x
  400b2c:	03e8                	.insn	2, 0x03e8
  400b2e:	0000                	.insn	2, 0x
  400b30:	0064                	.insn	2, 0x0064
  400b32:	0000                	.insn	2, 0x
  400b34:	000a                	.insn	2, 0x000a
  400b36:	0000                	.insn	2, 0x
  400b38:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400b3c <main>:
  400b3c:	ff010113          	addi	sp,sp,-16
  400b40:	06400513          	li	a0,100
  400b44:	00000593          	li	a1,0
  400b48:	00812423          	sw	s0,8(sp)
  400b4c:	00912223          	sw	s1,4(sp)
  400b50:	00112623          	sw	ra,12(sp)
  400b54:	00000413          	li	s0,0
  400b58:	e34ff0ef          	jal	40018c <set_timer_interrupt>
  400b5c:	004014b7          	lui	s1,0x401
  400b60:	00140413          	addi	s0,s0,1
  400b64:	00141713          	slli	a4,s0,0x1
  400b68:	00040693          	mv	a3,s0
  400b6c:	c4048613          	addi	a2,s1,-960 # 400c40 <main+0x104>
  400b70:	00f00593          	li	a1,15
  400b74:	44000513          	li	a0,1088
  400b78:	cedff0ef          	jal	400864 <printfSCR>
  400b7c:	fe5ff06f          	j	400b60 <main+0x24>
