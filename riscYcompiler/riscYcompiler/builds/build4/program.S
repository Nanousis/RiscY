
builds/build4/program.elf:     file format elf32-littleriscv


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
  400040:	321000ef          	jal	400b60 <_etext>
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
  4001c8:	00912223          	sw	s1,4(sp)
  4001cc:	00050413          	mv	s0,a0
  4001d0:	00058493          	mv	s1,a1
  4001d4:	00058713          	mv	a4,a1
  4001d8:	00050693          	mv	a3,a0
  4001dc:	bb860613          	addi	a2,a2,-1096 # 400bb8 <_etext+0x58>
  4001e0:	00f00593          	li	a1,15
  4001e4:	04000513          	li	a0,64
  4001e8:	00112623          	sw	ra,12(sp)
  4001ec:	01212023          	sw	s2,0(sp)
  4001f0:	698000ef          	jal	400888 <printfSCR>
  4001f4:	08045663          	bgez	s0,400280 <c_trap_handler+0xc8>
  4001f8:	00401937          	lui	s2,0x401
  4001fc:	cc092683          	lw	a3,-832(s2) # 400cc0 <intCount>
  400200:	00401637          	lui	a2,0x401
  400204:	bdc60613          	addi	a2,a2,-1060 # 400bdc <_etext+0x7c>
  400208:	00f00593          	li	a1,15
  40020c:	08000513          	li	a0,128
  400210:	678000ef          	jal	400888 <printfSCR>
  400214:	004007b7          	lui	a5,0x400
  400218:	00f4f463          	bgeu	s1,a5,400220 <c_trap_handler+0x68>
  40021c:	0000006f          	j	40021c <c_trap_handler+0x64>
  400220:	cc092783          	lw	a5,-832(s2)
  400224:	00178793          	addi	a5,a5,1 # 400001 <_start+0x1>
  400228:	ccf92023          	sw	a5,-832(s2)
  40022c:	800007b7          	lui	a5,0x80000
  400230:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
  400234:	0af41463          	bne	s0,a5,4002dc <c_trap_handler+0x124>
  400238:	0200c7b7          	lui	a5,0x200c
  40023c:	02004737          	lui	a4,0x2004
  400240:	00072703          	lw	a4,0(a4) # 2004000 <MTIMECMP>
  400244:	ff87a683          	lw	a3,-8(a5) # 200bff8 <MTIME>
  400248:	00401637          	lui	a2,0x401
  40024c:	00f00593          	li	a1,15
  400250:	bec60613          	addi	a2,a2,-1044 # 400bec <_etext+0x8c>
  400254:	0c000513          	li	a0,192
  400258:	630000ef          	jal	400888 <printfSCR>
  40025c:	00812403          	lw	s0,8(sp)
  400260:	00c12083          	lw	ra,12(sp)
  400264:	00412483          	lw	s1,4(sp)
  400268:	00012903          	lw	s2,0(sp)
  40026c:	004c5537          	lui	a0,0x4c5
  400270:	b4050513          	addi	a0,a0,-1216 # 4c4b40 <_stack_end+0xc0b40>
  400274:	00000593          	li	a1,0
  400278:	01010113          	addi	sp,sp,16
  40027c:	f11ff06f          	j	40018c <set_timer_interrupt>
  400280:	00800793          	li	a5,8
  400284:	02f40a63          	beq	s0,a5,4002b8 <c_trap_handler+0x100>
  400288:	00b00793          	li	a5,11
  40028c:	02f40c63          	beq	s0,a5,4002c4 <c_trap_handler+0x10c>
  400290:	00200793          	li	a5,2
  400294:	02f41e63          	bne	s0,a5,4002d0 <c_trap_handler+0x118>
  400298:	00401537          	lui	a0,0x401
  40029c:	c1050513          	addi	a0,a0,-1008 # 400c10 <_etext+0xb0>
  4002a0:	00812403          	lw	s0,8(sp)
  4002a4:	00c12083          	lw	ra,12(sp)
  4002a8:	00412483          	lw	s1,4(sp)
  4002ac:	00012903          	lw	s2,0(sp)
  4002b0:	01010113          	addi	sp,sp,16
  4002b4:	4380006f          	j	4006ec <printf>
  4002b8:	00401537          	lui	a0,0x401
  4002bc:	c2850513          	addi	a0,a0,-984 # 400c28 <_etext+0xc8>
  4002c0:	fe1ff06f          	j	4002a0 <c_trap_handler+0xe8>
  4002c4:	00401537          	lui	a0,0x401
  4002c8:	c4450513          	addi	a0,a0,-956 # 400c44 <_etext+0xe4>
  4002cc:	fd5ff06f          	j	4002a0 <c_trap_handler+0xe8>
  4002d0:	00401537          	lui	a0,0x401
  4002d4:	c6050513          	addi	a0,a0,-928 # 400c60 <_etext+0x100>
  4002d8:	fc9ff06f          	j	4002a0 <c_trap_handler+0xe8>
  4002dc:	00c12083          	lw	ra,12(sp)
  4002e0:	00812403          	lw	s0,8(sp)
  4002e4:	00412483          	lw	s1,4(sp)
  4002e8:	00012903          	lw	s2,0(sp)
  4002ec:	01010113          	addi	sp,sp,16
  4002f0:	00008067          	ret

004002f4 <getUSBint>:
  4002f4:	100007b7          	lui	a5,0x10000
  4002f8:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
  4002fc:	00008067          	ret

00400300 <USBParser>:
  400300:	01d00793          	li	a5,29
  400304:	00a7ee63          	bltu	a5,a0,400320 <USBParser+0x20>
  400308:	00300793          	li	a5,3
  40030c:	02a7ee63          	bltu	a5,a0,400348 <USBParser+0x48>
  400310:	00000513          	li	a0,0
  400314:	00008067          	ret
  400318:	01b00513          	li	a0,27
  40031c:	00008067          	ret
  400320:	fe250793          	addi	a5,a0,-30
  400324:	0ff7f793          	zext.b	a5,a5
  400328:	03400713          	li	a4,52
  40032c:	fef762e3          	bltu	a4,a5,400310 <USBParser+0x10>
  400330:	00401737          	lui	a4,0x401
  400334:	00279793          	slli	a5,a5,0x2
  400338:	a7870713          	addi	a4,a4,-1416 # 400a78 <resetScreenVector+0xc>
  40033c:	00e787b3          	add	a5,a5,a4
  400340:	0007a783          	lw	a5,0(a5)
  400344:	00078067          	jr	a5
  400348:	05d50513          	addi	a0,a0,93
  40034c:	0ff57513          	zext.b	a0,a0
  400350:	00008067          	ret
  400354:	01350513          	addi	a0,a0,19
  400358:	ff5ff06f          	j	40034c <USBParser+0x4c>
  40035c:	00800513          	li	a0,8
  400360:	00008067          	ret
  400364:	00900513          	li	a0,9
  400368:	00008067          	ret
  40036c:	02000513          	li	a0,32
  400370:	00008067          	ret
  400374:	03d00513          	li	a0,61
  400378:	00008067          	ret
  40037c:	05b00513          	li	a0,91
  400380:	00008067          	ret
  400384:	05d00513          	li	a0,93
  400388:	00008067          	ret
  40038c:	05c00513          	li	a0,92
  400390:	00008067          	ret
  400394:	03b00513          	li	a0,59
  400398:	00008067          	ret
  40039c:	02700513          	li	a0,39
  4003a0:	00008067          	ret
  4003a4:	06000513          	li	a0,96
  4003a8:	00008067          	ret
  4003ac:	02c00513          	li	a0,44
  4003b0:	00008067          	ret
  4003b4:	02e00513          	li	a0,46
  4003b8:	00008067          	ret
  4003bc:	02f00513          	li	a0,47
  4003c0:	00008067          	ret
  4003c4:	04600513          	li	a0,70
  4003c8:	00008067          	ret
  4003cc:	05200513          	li	a0,82
  4003d0:	00008067          	ret
  4003d4:	04c00513          	li	a0,76
  4003d8:	00008067          	ret
  4003dc:	04400513          	li	a0,68
  4003e0:	00008067          	ret
  4003e4:	05500513          	li	a0,85
  4003e8:	00008067          	ret
  4003ec:	00a00513          	li	a0,10
  4003f0:	00008067          	ret

004003f4 <memcpy>:
  4003f4:	00000793          	li	a5,0
  4003f8:	00c7c463          	blt	a5,a2,400400 <memcpy+0xc>
  4003fc:	00008067          	ret
  400400:	00f58733          	add	a4,a1,a5
  400404:	00074683          	lbu	a3,0(a4)
  400408:	00f50733          	add	a4,a0,a5
  40040c:	00178793          	addi	a5,a5,1
  400410:	00d70023          	sb	a3,0(a4)
  400414:	fe5ff06f          	j	4003f8 <memcpy+0x4>

00400418 <memset>:
  400418:	00c50633          	add	a2,a0,a2
  40041c:	00050793          	mv	a5,a0
  400420:	00c79463          	bne	a5,a2,400428 <memset+0x10>
  400424:	00008067          	ret
  400428:	00178793          	addi	a5,a5,1
  40042c:	feb78fa3          	sb	a1,-1(a5)
  400430:	ff1ff06f          	j	400420 <memset+0x8>

00400434 <getButtonDown>:
  400434:	890007b7          	lui	a5,0x89000
  400438:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
  40043c:	00008067          	ret

00400440 <getButtonUp>:
  400440:	890007b7          	lui	a5,0x89000
  400444:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
  400448:	00008067          	ret

0040044c <getButtonLeft>:
  40044c:	890007b7          	lui	a5,0x89000
  400450:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
  400454:	00008067          	ret

00400458 <getButtonRight>:
  400458:	890007b7          	lui	a5,0x89000
  40045c:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
  400460:	00008067          	ret

00400464 <putch>:
  400464:	4c000793          	li	a5,1216
  400468:	02a7e263          	bltu	a5,a0,40048c <putch+0x28>
  40046c:	00861613          	slli	a2,a2,0x8
  400470:	880007b7          	lui	a5,0x88000
  400474:	00151513          	slli	a0,a0,0x1
  400478:	00f50533          	add	a0,a0,a5
  40047c:	00b665b3          	or	a1,a2,a1
  400480:	00b51023          	sh	a1,0(a0)
  400484:	00100513          	li	a0,1
  400488:	00008067          	ret
  40048c:	00000513          	li	a0,0
  400490:	00008067          	ret

00400494 <printString>:
  400494:	fe010113          	addi	sp,sp,-32
  400498:	01312623          	sw	s3,12(sp)
  40049c:	01412423          	sw	s4,8(sp)
  4004a0:	00112e23          	sw	ra,28(sp)
  4004a4:	00812c23          	sw	s0,24(sp)
  4004a8:	00912a23          	sw	s1,20(sp)
  4004ac:	01212823          	sw	s2,16(sp)
  4004b0:	01512223          	sw	s5,4(sp)
  4004b4:	01612023          	sw	s6,0(sp)
  4004b8:	00050a13          	mv	s4,a0
  4004bc:	00058993          	mv	s3,a1
  4004c0:	06060c63          	beqz	a2,400538 <printString+0xa4>
  4004c4:	00060413          	mv	s0,a2
  4004c8:	00000913          	li	s2,0
  4004cc:	00000493          	li	s1,0
  4004d0:	00100a93          	li	s5,1
  4004d4:	00f00b13          	li	s6,15
  4004d8:	0280006f          	j	400500 <printString+0x6c>
  4004dc:	00040613          	mv	a2,s0
  4004e0:	009a0533          	add	a0,s4,s1
  4004e4:	f81ff0ef          	jal	400464 <putch>
  4004e8:	06050263          	beqz	a0,40054c <printString+0xb8>
  4004ec:	00148493          	addi	s1,s1,1
  4004f0:	01591863          	bne	s2,s5,400500 <printString+0x6c>
  4004f4:	00140413          	addi	s0,s0,1
  4004f8:	0ff47413          	zext.b	s0,s0
  4004fc:	048b6463          	bltu	s6,s0,400544 <printString+0xb0>
  400500:	009987b3          	add	a5,s3,s1
  400504:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
  400508:	00048513          	mv	a0,s1
  40050c:	fc0598e3          	bnez	a1,4004dc <printString+0x48>
  400510:	01c12083          	lw	ra,28(sp)
  400514:	01812403          	lw	s0,24(sp)
  400518:	01412483          	lw	s1,20(sp)
  40051c:	01012903          	lw	s2,16(sp)
  400520:	00c12983          	lw	s3,12(sp)
  400524:	00812a03          	lw	s4,8(sp)
  400528:	00412a83          	lw	s5,4(sp)
  40052c:	00012b03          	lw	s6,0(sp)
  400530:	02010113          	addi	sp,sp,32
  400534:	00008067          	ret
  400538:	00100913          	li	s2,1
  40053c:	00090413          	mv	s0,s2
  400540:	f8dff06f          	j	4004cc <printString+0x38>
  400544:	00090413          	mv	s0,s2
  400548:	fb9ff06f          	j	400500 <printString+0x6c>
  40054c:	00000513          	li	a0,0
  400550:	fc1ff06f          	j	400510 <printString+0x7c>

00400554 <printHex>:
  400554:	fd010113          	addi	sp,sp,-48
  400558:	02812423          	sw	s0,40(sp)
  40055c:	00058413          	mv	s0,a1
  400560:	004015b7          	lui	a1,0x401
  400564:	02912223          	sw	s1,36(sp)
  400568:	03212023          	sw	s2,32(sp)
  40056c:	ca458593          	addi	a1,a1,-860 # 400ca4 <_etext+0x144>
  400570:	00050493          	mv	s1,a0
  400574:	00060913          	mv	s2,a2
  400578:	00c10513          	addi	a0,sp,12
  40057c:	01100613          	li	a2,17
  400580:	02112623          	sw	ra,44(sp)
  400584:	e71ff0ef          	jal	4003f4 <memcpy>
  400588:	202027b7          	lui	a5,0x20202
  40058c:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
  400590:	00f12023          	sw	a5,0(sp)
  400594:	00f12223          	sw	a5,4(sp)
  400598:	00010423          	sb	zero,8(sp)
  40059c:	00700793          	li	a5,7
  4005a0:	00010593          	mv	a1,sp
  4005a4:	fff00693          	li	a3,-1
  4005a8:	00f47713          	andi	a4,s0,15
  4005ac:	02070713          	addi	a4,a4,32
  4005b0:	00270733          	add	a4,a4,sp
  4005b4:	fec74703          	lbu	a4,-20(a4)
  4005b8:	00f58633          	add	a2,a1,a5
  4005bc:	fff78793          	addi	a5,a5,-1
  4005c0:	00e60023          	sb	a4,0(a2)
  4005c4:	40445413          	srai	s0,s0,0x4
  4005c8:	fed790e3          	bne	a5,a3,4005a8 <printHex+0x54>
  4005cc:	00090613          	mv	a2,s2
  4005d0:	00048513          	mv	a0,s1
  4005d4:	ec1ff0ef          	jal	400494 <printString>
  4005d8:	02c12083          	lw	ra,44(sp)
  4005dc:	02812403          	lw	s0,40(sp)
  4005e0:	02412483          	lw	s1,36(sp)
  4005e4:	02012903          	lw	s2,32(sp)
  4005e8:	0ff57513          	zext.b	a0,a0
  4005ec:	03010113          	addi	sp,sp,48
  4005f0:	00008067          	ret

004005f4 <printDec>:
  4005f4:	fd010113          	addi	sp,sp,-48
  4005f8:	02812423          	sw	s0,40(sp)
  4005fc:	00058413          	mv	s0,a1
  400600:	004015b7          	lui	a1,0x401
  400604:	02912223          	sw	s1,36(sp)
  400608:	03212023          	sw	s2,32(sp)
  40060c:	00050493          	mv	s1,a0
  400610:	00060913          	mv	s2,a2
  400614:	b4c58593          	addi	a1,a1,-1204 # 400b4c <resetScreenVector+0xe0>
  400618:	01400613          	li	a2,20
  40061c:	00c10513          	addi	a0,sp,12
  400620:	02112623          	sw	ra,44(sp)
  400624:	dd1ff0ef          	jal	4003f4 <memcpy>
  400628:	000187b7          	lui	a5,0x18
  40062c:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  400630:	0287fa63          	bgeu	a5,s0,400664 <printDec+0x70>
  400634:	004015b7          	lui	a1,0x401
  400638:	00090613          	mv	a2,s2
  40063c:	cb858593          	addi	a1,a1,-840 # 400cb8 <_etext+0x158>
  400640:	00048513          	mv	a0,s1
  400644:	e51ff0ef          	jal	400494 <printString>
  400648:	02c12083          	lw	ra,44(sp)
  40064c:	02812403          	lw	s0,40(sp)
  400650:	02412483          	lw	s1,36(sp)
  400654:	02012903          	lw	s2,32(sp)
  400658:	0ff57513          	zext.b	a0,a0
  40065c:	03010113          	addi	sp,sp,48
  400660:	00008067          	ret
  400664:	00100613          	li	a2,1
  400668:	00c10713          	addi	a4,sp,12
  40066c:	00000793          	li	a5,0
  400670:	00060513          	mv	a0,a2
  400674:	00072583          	lw	a1,0(a4)
  400678:	00000693          	li	a3,0
  40067c:	06b47263          	bgeu	s0,a1,4006e0 <printDec+0xec>
  400680:	00069663          	bnez	a3,40068c <printDec+0x98>
  400684:	00a58463          	beq	a1,a0,40068c <printDec+0x98>
  400688:	00061e63          	bnez	a2,4006a4 <printDec+0xb0>
  40068c:	02078613          	addi	a2,a5,32
  400690:	00260633          	add	a2,a2,sp
  400694:	03068693          	addi	a3,a3,48
  400698:	fed60223          	sb	a3,-28(a2)
  40069c:	00178793          	addi	a5,a5,1
  4006a0:	00000613          	li	a2,0
  4006a4:	00470713          	addi	a4,a4,4
  4006a8:	02010693          	addi	a3,sp,32
  4006ac:	fcd714e3          	bne	a4,a3,400674 <printDec+0x80>
  4006b0:	00060c63          	beqz	a2,4006c8 <printDec+0xd4>
  4006b4:	02078713          	addi	a4,a5,32
  4006b8:	00270733          	add	a4,a4,sp
  4006bc:	03000693          	li	a3,48
  4006c0:	fed70223          	sb	a3,-28(a4)
  4006c4:	00178793          	addi	a5,a5,1
  4006c8:	02078793          	addi	a5,a5,32
  4006cc:	002787b3          	add	a5,a5,sp
  4006d0:	fe078223          	sb	zero,-28(a5)
  4006d4:	00090613          	mv	a2,s2
  4006d8:	00410593          	addi	a1,sp,4
  4006dc:	f65ff06f          	j	400640 <printDec+0x4c>
  4006e0:	40b40433          	sub	s0,s0,a1
  4006e4:	00168693          	addi	a3,a3,1
  4006e8:	f95ff06f          	j	40067c <printDec+0x88>

004006ec <printf>:
  4006ec:	fa010113          	addi	sp,sp,-96
  4006f0:	04f12a23          	sw	a5,84(sp)
  4006f4:	04410793          	addi	a5,sp,68
  4006f8:	02812c23          	sw	s0,56(sp)
  4006fc:	02912a23          	sw	s1,52(sp)
  400700:	03212823          	sw	s2,48(sp)
  400704:	03312623          	sw	s3,44(sp)
  400708:	03412423          	sw	s4,40(sp)
  40070c:	03512223          	sw	s5,36(sp)
  400710:	03612023          	sw	s6,32(sp)
  400714:	01812c23          	sw	s8,24(sp)
  400718:	02112e23          	sw	ra,60(sp)
  40071c:	01712e23          	sw	s7,28(sp)
  400720:	00050493          	mv	s1,a0
  400724:	04b12223          	sw	a1,68(sp)
  400728:	04c12423          	sw	a2,72(sp)
  40072c:	04d12623          	sw	a3,76(sp)
  400730:	04e12823          	sw	a4,80(sp)
  400734:	05012c23          	sw	a6,88(sp)
  400738:	05112e23          	sw	a7,92(sp)
  40073c:	00f12623          	sw	a5,12(sp)
  400740:	00000c13          	li	s8,0
  400744:	00401437          	lui	s0,0x401
  400748:	00a00993          	li	s3,10
  40074c:	02500913          	li	s2,37
  400750:	07800a13          	li	s4,120
  400754:	06400a93          	li	s5,100
  400758:	06300b13          	li	s6,99
  40075c:	018487b3          	add	a5,s1,s8
  400760:	0007c583          	lbu	a1,0(a5)
  400764:	cc441503          	lh	a0,-828(s0) # 400cc4 <screenPos>
  400768:	02059a63          	bnez	a1,40079c <printf+0xb0>
  40076c:	03c12083          	lw	ra,60(sp)
  400770:	03812403          	lw	s0,56(sp)
  400774:	03412483          	lw	s1,52(sp)
  400778:	03012903          	lw	s2,48(sp)
  40077c:	02c12983          	lw	s3,44(sp)
  400780:	02812a03          	lw	s4,40(sp)
  400784:	02412a83          	lw	s5,36(sp)
  400788:	02012b03          	lw	s6,32(sp)
  40078c:	01c12b83          	lw	s7,28(sp)
  400790:	01812c03          	lw	s8,24(sp)
  400794:	06010113          	addi	sp,sp,96
  400798:	00008067          	ret
  40079c:	001c0b93          	addi	s7,s8,1
  4007a0:	01359e63          	bne	a1,s3,4007bc <printf+0xd0>
  4007a4:	fc057793          	andi	a5,a0,-64
  4007a8:	04078793          	addi	a5,a5,64
  4007ac:	01079793          	slli	a5,a5,0x10
  4007b0:	4107d793          	srai	a5,a5,0x10
  4007b4:	000c0b93          	mv	s7,s8
  4007b8:	0380006f          	j	4007f0 <printf+0x104>
  4007bc:	0d259263          	bne	a1,s2,400880 <printf+0x194>
  4007c0:	0017c783          	lbu	a5,1(a5)
  4007c4:	03479c63          	bne	a5,s4,4007fc <printf+0x110>
  4007c8:	00c12783          	lw	a5,12(sp)
  4007cc:	00f00613          	li	a2,15
  4007d0:	0007a583          	lw	a1,0(a5)
  4007d4:	00478713          	addi	a4,a5,4
  4007d8:	00e12623          	sw	a4,12(sp)
  4007dc:	d79ff0ef          	jal	400554 <printHex>
  4007e0:	cc445783          	lhu	a5,-828(s0)
  4007e4:	00f507b3          	add	a5,a0,a5
  4007e8:	01079793          	slli	a5,a5,0x10
  4007ec:	4107d793          	srai	a5,a5,0x10
  4007f0:	ccf41223          	sh	a5,-828(s0)
  4007f4:	001b8c13          	addi	s8,s7,1
  4007f8:	f65ff06f          	j	40075c <printf+0x70>
  4007fc:	03579063          	bne	a5,s5,40081c <printf+0x130>
  400800:	00c12783          	lw	a5,12(sp)
  400804:	00f00613          	li	a2,15
  400808:	0007a583          	lw	a1,0(a5)
  40080c:	00478713          	addi	a4,a5,4
  400810:	00e12623          	sw	a4,12(sp)
  400814:	de1ff0ef          	jal	4005f4 <printDec>
  400818:	fc9ff06f          	j	4007e0 <printf+0xf4>
  40081c:	03679463          	bne	a5,s6,400844 <printf+0x158>
  400820:	00c12783          	lw	a5,12(sp)
  400824:	00f00613          	li	a2,15
  400828:	0007c583          	lbu	a1,0(a5)
  40082c:	00478713          	addi	a4,a5,4
  400830:	00e12623          	sw	a4,12(sp)
  400834:	c31ff0ef          	jal	400464 <putch>
  400838:	cc445783          	lhu	a5,-828(s0)
  40083c:	00178793          	addi	a5,a5,1
  400840:	fa9ff06f          	j	4007e8 <printf+0xfc>
  400844:	07300713          	li	a4,115
  400848:	02e79063          	bne	a5,a4,400868 <printf+0x17c>
  40084c:	00c12783          	lw	a5,12(sp)
  400850:	00f00613          	li	a2,15
  400854:	0007a583          	lw	a1,0(a5)
  400858:	00478713          	addi	a4,a5,4
  40085c:	00e12623          	sw	a4,12(sp)
  400860:	c35ff0ef          	jal	400494 <printString>
  400864:	f7dff06f          	j	4007e0 <printf+0xf4>
  400868:	00f00613          	li	a2,15
  40086c:	00090593          	mv	a1,s2
  400870:	bf5ff0ef          	jal	400464 <putch>
  400874:	cc445783          	lhu	a5,-828(s0)
  400878:	00178793          	addi	a5,a5,1
  40087c:	f31ff06f          	j	4007ac <printf+0xc0>
  400880:	00f00613          	li	a2,15
  400884:	fedff06f          	j	400870 <printf+0x184>

00400888 <printfSCR>:
  400888:	f9010113          	addi	sp,sp,-112
  40088c:	06f12223          	sw	a5,100(sp)
  400890:	05c10793          	addi	a5,sp,92
  400894:	04812423          	sw	s0,72(sp)
  400898:	04912223          	sw	s1,68(sp)
  40089c:	05212023          	sw	s2,64(sp)
  4008a0:	03412c23          	sw	s4,56(sp)
  4008a4:	03512a23          	sw	s5,52(sp)
  4008a8:	03612823          	sw	s6,48(sp)
  4008ac:	03712623          	sw	s7,44(sp)
  4008b0:	03812423          	sw	s8,40(sp)
  4008b4:	03912223          	sw	s9,36(sp)
  4008b8:	03a12023          	sw	s10,32(sp)
  4008bc:	01b12e23          	sw	s11,28(sp)
  4008c0:	04112623          	sw	ra,76(sp)
  4008c4:	03312e23          	sw	s3,60(sp)
  4008c8:	00050a93          	mv	s5,a0
  4008cc:	00058493          	mv	s1,a1
  4008d0:	00060a13          	mv	s4,a2
  4008d4:	04d12e23          	sw	a3,92(sp)
  4008d8:	06e12023          	sw	a4,96(sp)
  4008dc:	07012423          	sw	a6,104(sp)
  4008e0:	07112623          	sw	a7,108(sp)
  4008e4:	00f12623          	sw	a5,12(sp)
  4008e8:	00000913          	li	s2,0
  4008ec:	00000413          	li	s0,0
  4008f0:	00a00b93          	li	s7,10
  4008f4:	02500b13          	li	s6,37
  4008f8:	07800c13          	li	s8,120
  4008fc:	06400c93          	li	s9,100
  400900:	06300d13          	li	s10,99
  400904:	07300d93          	li	s11,115
  400908:	012a07b3          	add	a5,s4,s2
  40090c:	0007c583          	lbu	a1,0(a5)
  400910:	04059263          	bnez	a1,400954 <printfSCR+0xcc>
  400914:	04c12083          	lw	ra,76(sp)
  400918:	00040513          	mv	a0,s0
  40091c:	04812403          	lw	s0,72(sp)
  400920:	04412483          	lw	s1,68(sp)
  400924:	04012903          	lw	s2,64(sp)
  400928:	03c12983          	lw	s3,60(sp)
  40092c:	03812a03          	lw	s4,56(sp)
  400930:	03412a83          	lw	s5,52(sp)
  400934:	03012b03          	lw	s6,48(sp)
  400938:	02c12b83          	lw	s7,44(sp)
  40093c:	02812c03          	lw	s8,40(sp)
  400940:	02412c83          	lw	s9,36(sp)
  400944:	02012d03          	lw	s10,32(sp)
  400948:	01c12d83          	lw	s11,28(sp)
  40094c:	07010113          	addi	sp,sp,112
  400950:	00008067          	ret
  400954:	00190993          	addi	s3,s2,1
  400958:	01759a63          	bne	a1,s7,40096c <printfSCR+0xe4>
  40095c:	fc047413          	andi	s0,s0,-64
  400960:	04040413          	addi	s0,s0,64
  400964:	00090993          	mv	s3,s2
  400968:	0740006f          	j	4009dc <printfSCR+0x154>
  40096c:	01540533          	add	a0,s0,s5
  400970:	0b659463          	bne	a1,s6,400a18 <printfSCR+0x190>
  400974:	0017c783          	lbu	a5,1(a5)
  400978:	03879263          	bne	a5,s8,40099c <printfSCR+0x114>
  40097c:	00c12783          	lw	a5,12(sp)
  400980:	00048613          	mv	a2,s1
  400984:	0007a583          	lw	a1,0(a5)
  400988:	00478713          	addi	a4,a5,4
  40098c:	00e12623          	sw	a4,12(sp)
  400990:	bc5ff0ef          	jal	400554 <printHex>
  400994:	00a40433          	add	s0,s0,a0
  400998:	0440006f          	j	4009dc <printfSCR+0x154>
  40099c:	03979063          	bne	a5,s9,4009bc <printfSCR+0x134>
  4009a0:	00c12783          	lw	a5,12(sp)
  4009a4:	00048613          	mv	a2,s1
  4009a8:	0007a583          	lw	a1,0(a5)
  4009ac:	00478713          	addi	a4,a5,4
  4009b0:	00e12623          	sw	a4,12(sp)
  4009b4:	c41ff0ef          	jal	4005f4 <printDec>
  4009b8:	fddff06f          	j	400994 <printfSCR+0x10c>
  4009bc:	03a79463          	bne	a5,s10,4009e4 <printfSCR+0x15c>
  4009c0:	00c12783          	lw	a5,12(sp)
  4009c4:	00048613          	mv	a2,s1
  4009c8:	00140413          	addi	s0,s0,1
  4009cc:	0007c583          	lbu	a1,0(a5)
  4009d0:	00478713          	addi	a4,a5,4
  4009d4:	00e12623          	sw	a4,12(sp)
  4009d8:	a8dff0ef          	jal	400464 <putch>
  4009dc:	00198913          	addi	s2,s3,1
  4009e0:	f29ff06f          	j	400908 <printfSCR+0x80>
  4009e4:	03b79063          	bne	a5,s11,400a04 <printfSCR+0x17c>
  4009e8:	00c12783          	lw	a5,12(sp)
  4009ec:	00048613          	mv	a2,s1
  4009f0:	0007a583          	lw	a1,0(a5)
  4009f4:	00478713          	addi	a4,a5,4
  4009f8:	00e12623          	sw	a4,12(sp)
  4009fc:	a99ff0ef          	jal	400494 <printString>
  400a00:	f95ff06f          	j	400994 <printfSCR+0x10c>
  400a04:	00048613          	mv	a2,s1
  400a08:	000b0593          	mv	a1,s6
  400a0c:	a59ff0ef          	jal	400464 <putch>
  400a10:	00140413          	addi	s0,s0,1
  400a14:	f51ff06f          	j	400964 <printfSCR+0xdc>
  400a18:	00048613          	mv	a2,s1
  400a1c:	ff1ff06f          	j	400a0c <printfSCR+0x184>

00400a20 <clearScreen>:
  400a20:	ff010113          	addi	sp,sp,-16
  400a24:	00812423          	sw	s0,8(sp)
  400a28:	00912223          	sw	s1,4(sp)
  400a2c:	00112623          	sw	ra,12(sp)
  400a30:	00000413          	li	s0,0
  400a34:	4c000493          	li	s1,1216
  400a38:	00040513          	mv	a0,s0
  400a3c:	00f00613          	li	a2,15
  400a40:	02000593          	li	a1,32
  400a44:	00140413          	addi	s0,s0,1
  400a48:	a1dff0ef          	jal	400464 <putch>
  400a4c:	fe9416e3          	bne	s0,s1,400a38 <clearScreen+0x18>
  400a50:	00c12083          	lw	ra,12(sp)
  400a54:	00812403          	lw	s0,8(sp)
  400a58:	004017b7          	lui	a5,0x401
  400a5c:	cc079223          	sh	zero,-828(a5) # 400cc4 <screenPos>
  400a60:	00412483          	lw	s1,4(sp)
  400a64:	01010113          	addi	sp,sp,16
  400a68:	00008067          	ret

00400a6c <resetScreenVector>:
  400a6c:	004017b7          	lui	a5,0x401
  400a70:	cc079223          	sh	zero,-828(a5) # 400cc4 <screenPos>
  400a74:	00008067          	ret
  400a78:	0354                	.insn	2, 0x0354
  400a7a:	0040                	.insn	2, 0x0040
  400a7c:	0354                	.insn	2, 0x0354
  400a7e:	0040                	.insn	2, 0x0040
  400a80:	0354                	.insn	2, 0x0354
  400a82:	0040                	.insn	2, 0x0040
  400a84:	0354                	.insn	2, 0x0354
  400a86:	0040                	.insn	2, 0x0040
  400a88:	0354                	.insn	2, 0x0354
  400a8a:	0040                	.insn	2, 0x0040
  400a8c:	0354                	.insn	2, 0x0354
  400a8e:	0040                	.insn	2, 0x0040
  400a90:	0354                	.insn	2, 0x0354
  400a92:	0040                	.insn	2, 0x0040
  400a94:	0354                	.insn	2, 0x0354
  400a96:	0040                	.insn	2, 0x0040
  400a98:	0354                	.insn	2, 0x0354
  400a9a:	0040                	.insn	2, 0x0040
  400a9c:	0354                	.insn	2, 0x0354
  400a9e:	0040                	.insn	2, 0x0040
  400aa0:	03ec                	.insn	2, 0x03ec
  400aa2:	0040                	.insn	2, 0x0040
  400aa4:	0318                	.insn	2, 0x0318
  400aa6:	0040                	.insn	2, 0x0040
  400aa8:	035c                	.insn	2, 0x035c
  400aaa:	0040                	.insn	2, 0x0040
  400aac:	0364                	.insn	2, 0x0364
  400aae:	0040                	.insn	2, 0x0040
  400ab0:	036c                	.insn	2, 0x036c
  400ab2:	0040                	.insn	2, 0x0040
  400ab4:	0314                	.insn	2, 0x0314
  400ab6:	0040                	.insn	2, 0x0040
  400ab8:	0374                	.insn	2, 0x0374
  400aba:	0040                	.insn	2, 0x0040
  400abc:	037c                	.insn	2, 0x037c
  400abe:	0040                	.insn	2, 0x0040
  400ac0:	0384                	.insn	2, 0x0384
  400ac2:	0040                	.insn	2, 0x0040
  400ac4:	038c                	.insn	2, 0x038c
  400ac6:	0040                	.insn	2, 0x0040
  400ac8:	0310                	.insn	2, 0x0310
  400aca:	0040                	.insn	2, 0x0040
  400acc:	0394                	.insn	2, 0x0394
  400ace:	0040                	.insn	2, 0x0040
  400ad0:	039c                	.insn	2, 0x039c
  400ad2:	0040                	.insn	2, 0x0040
  400ad4:	03a4                	.insn	2, 0x03a4
  400ad6:	0040                	.insn	2, 0x0040
  400ad8:	03ac                	.insn	2, 0x03ac
  400ada:	0040                	.insn	2, 0x0040
  400adc:	03b4                	.insn	2, 0x03b4
  400ade:	0040                	.insn	2, 0x0040
  400ae0:	03bc                	.insn	2, 0x03bc
  400ae2:	0040                	.insn	2, 0x0040
  400ae4:	0310                	.insn	2, 0x0310
  400ae6:	0040                	.insn	2, 0x0040
  400ae8:	03c4                	.insn	2, 0x03c4
  400aea:	0040                	.insn	2, 0x0040
  400aec:	03c4                	.insn	2, 0x03c4
  400aee:	0040                	.insn	2, 0x0040
  400af0:	03c4                	.insn	2, 0x03c4
  400af2:	0040                	.insn	2, 0x0040
  400af4:	03c4                	.insn	2, 0x03c4
  400af6:	0040                	.insn	2, 0x0040
  400af8:	03c4                	.insn	2, 0x03c4
  400afa:	0040                	.insn	2, 0x0040
  400afc:	03c4                	.insn	2, 0x03c4
  400afe:	0040                	.insn	2, 0x0040
  400b00:	03c4                	.insn	2, 0x03c4
  400b02:	0040                	.insn	2, 0x0040
  400b04:	03c4                	.insn	2, 0x03c4
  400b06:	0040                	.insn	2, 0x0040
  400b08:	03c4                	.insn	2, 0x03c4
  400b0a:	0040                	.insn	2, 0x0040
  400b0c:	03c4                	.insn	2, 0x03c4
  400b0e:	0040                	.insn	2, 0x0040
  400b10:	03c4                	.insn	2, 0x03c4
  400b12:	0040                	.insn	2, 0x0040
  400b14:	03c4                	.insn	2, 0x03c4
  400b16:	0040                	.insn	2, 0x0040
  400b18:	0310                	.insn	2, 0x0310
  400b1a:	0040                	.insn	2, 0x0040
  400b1c:	0310                	.insn	2, 0x0310
  400b1e:	0040                	.insn	2, 0x0040
  400b20:	0310                	.insn	2, 0x0310
  400b22:	0040                	.insn	2, 0x0040
  400b24:	0310                	.insn	2, 0x0310
  400b26:	0040                	.insn	2, 0x0040
  400b28:	0310                	.insn	2, 0x0310
  400b2a:	0040                	.insn	2, 0x0040
  400b2c:	0310                	.insn	2, 0x0310
  400b2e:	0040                	.insn	2, 0x0040
  400b30:	0310                	.insn	2, 0x0310
  400b32:	0040                	.insn	2, 0x0040
  400b34:	0310                	.insn	2, 0x0310
  400b36:	0040                	.insn	2, 0x0040
  400b38:	0310                	.insn	2, 0x0310
  400b3a:	0040                	.insn	2, 0x0040
  400b3c:	03cc                	.insn	2, 0x03cc
  400b3e:	0040                	.insn	2, 0x0040
  400b40:	03d4                	.insn	2, 0x03d4
  400b42:	0040                	.insn	2, 0x0040
  400b44:	03dc                	.insn	2, 0x03dc
  400b46:	0040                	.insn	2, 0x0040
  400b48:	03e4                	.insn	2, 0x03e4
  400b4a:	0040                	.insn	2, 0x0040
  400b4c:	2710                	.insn	2, 0x2710
  400b4e:	0000                	.insn	2, 0x
  400b50:	03e8                	.insn	2, 0x03e8
  400b52:	0000                	.insn	2, 0x
  400b54:	0064                	.insn	2, 0x0064
  400b56:	0000                	.insn	2, 0x
  400b58:	000a                	.insn	2, 0x000a
  400b5a:	0000                	.insn	2, 0x
  400b5c:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400b60 <main>:
  400b60:	004c5537          	lui	a0,0x4c5
  400b64:	ff010113          	addi	sp,sp,-16
  400b68:	b4050513          	addi	a0,a0,-1216 # 4c4b40 <_stack_end+0xc0b40>
  400b6c:	00000593          	li	a1,0
  400b70:	00812423          	sw	s0,8(sp)
  400b74:	00912223          	sw	s1,4(sp)
  400b78:	00112623          	sw	ra,12(sp)
  400b7c:	00000413          	li	s0,0
  400b80:	e0cff0ef          	jal	40018c <set_timer_interrupt>
  400b84:	004014b7          	lui	s1,0x401
  400b88:	00140413          	addi	s0,s0,1
  400b8c:	00141693          	slli	a3,s0,0x1
  400b90:	c7848613          	addi	a2,s1,-904 # 400c78 <main+0x118>
  400b94:	40f6d693          	srai	a3,a3,0xf
  400b98:	00f00593          	li	a1,15
  400b9c:	40000513          	li	a0,1024
  400ba0:	ce9ff0ef          	jal	400888 <printfSCR>
  400ba4:	00f00613          	li	a2,15
  400ba8:	00040593          	mv	a1,s0
  400bac:	44000513          	li	a0,1088
  400bb0:	9a5ff0ef          	jal	400554 <printHex>
  400bb4:	fd5ff06f          	j	400b88 <main+0x28>
