
builds/build0/program.elf:     file format elf32-littleriscv


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
  400040:	305000ef          	jal	400b44 <_etext>
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
  400078:	30200073          	mret
  40007c:	f7010113          	addi	sp,sp,-144
  400080:	08112623          	sw	ra,140(sp)
  400084:	08512423          	sw	t0,136(sp)
  400088:	08612223          	sw	t1,132(sp)
  40008c:	08712023          	sw	t2,128(sp)
  400090:	07c12e23          	sw	t3,124(sp)
  400094:	07d12c23          	sw	t4,120(sp)
  400098:	07e12a23          	sw	t5,116(sp)
  40009c:	07f12823          	sw	t6,112(sp)
  4000a0:	06a12623          	sw	a0,108(sp)
  4000a4:	06b12423          	sw	a1,104(sp)
  4000a8:	06c12223          	sw	a2,100(sp)
  4000ac:	06d12023          	sw	a3,96(sp)
  4000b0:	04e12e23          	sw	a4,92(sp)
  4000b4:	04f12c23          	sw	a5,88(sp)
  4000b8:	05012a23          	sw	a6,84(sp)
  4000bc:	05112823          	sw	a7,80(sp)
  4000c0:	04812623          	sw	s0,76(sp)
  4000c4:	04912423          	sw	s1,72(sp)
  4000c8:	05212223          	sw	s2,68(sp)
  4000cc:	05312023          	sw	s3,64(sp)
  4000d0:	03412e23          	sw	s4,60(sp)
  4000d4:	03512c23          	sw	s5,56(sp)
  4000d8:	03612a23          	sw	s6,52(sp)
  4000dc:	03712823          	sw	s7,48(sp)
  4000e0:	03812623          	sw	s8,44(sp)
  4000e4:	03912423          	sw	s9,40(sp)
  4000e8:	03a12223          	sw	s10,36(sp)
  4000ec:	03b12023          	sw	s11,32(sp)
  4000f0:	34202573          	csrr	a0,mcause
  4000f4:	341025f3          	csrr	a1,mepc
  4000f8:	34302673          	csrr	a2,mtval
  4000fc:	0c0000ef          	jal	4001bc <c_trap_handler>
  400100:	02012d83          	lw	s11,32(sp)
  400104:	02412d03          	lw	s10,36(sp)
  400108:	02812c83          	lw	s9,40(sp)
  40010c:	02c12c03          	lw	s8,44(sp)
  400110:	03012b83          	lw	s7,48(sp)
  400114:	03412b03          	lw	s6,52(sp)
  400118:	03812a83          	lw	s5,56(sp)
  40011c:	03c12a03          	lw	s4,60(sp)
  400120:	04012983          	lw	s3,64(sp)
  400124:	04412903          	lw	s2,68(sp)
  400128:	04812483          	lw	s1,72(sp)
  40012c:	04c12403          	lw	s0,76(sp)
  400130:	05012883          	lw	a7,80(sp)
  400134:	05412803          	lw	a6,84(sp)
  400138:	05812783          	lw	a5,88(sp)
  40013c:	05c12703          	lw	a4,92(sp)
  400140:	06012683          	lw	a3,96(sp)
  400144:	06412603          	lw	a2,100(sp)
  400148:	06812583          	lw	a1,104(sp)
  40014c:	06c12503          	lw	a0,108(sp)
  400150:	07012f83          	lw	t6,112(sp)
  400154:	07412f03          	lw	t5,116(sp)
  400158:	07812e83          	lw	t4,120(sp)
  40015c:	07c12e03          	lw	t3,124(sp)
  400160:	08012383          	lw	t2,128(sp)
  400164:	08412303          	lw	t1,132(sp)
  400168:	08812283          	lw	t0,136(sp)
  40016c:	08c12083          	lw	ra,140(sp)
  400170:	09010113          	addi	sp,sp,144
  400174:	30200073          	mret
  400178:	00000013          	nop
  40017c:	00000013          	nop
  400180:	00000013          	nop
  400184:	00000013          	nop
  400188:	00000013          	nop
  40018c:	00000013          	nop

00400190 <set_timer_interrupt>:
  400190:	0200c7b7          	lui	a5,0x200c
  400194:	ff87a703          	lw	a4,-8(a5) # 200bff8 <MTIME>
  400198:	ffc7a783          	lw	a5,-4(a5)
  40019c:	00e50533          	add	a0,a0,a4
  4001a0:	00e536b3          	sltu	a3,a0,a4
  4001a4:	00f585b3          	add	a1,a1,a5
  4001a8:	00b687b3          	add	a5,a3,a1
  4001ac:	020046b7          	lui	a3,0x2004
  4001b0:	00a6a023          	sw	a0,0(a3) # 2004000 <MTIMECMP>
  4001b4:	00f6a223          	sw	a5,4(a3)
  4001b8:	00008067          	ret

004001bc <c_trap_handler>:
  4001bc:	ff010113          	addi	sp,sp,-16
  4001c0:	00060793          	mv	a5,a2
  4001c4:	00401637          	lui	a2,0x401
  4001c8:	00812423          	sw	s0,8(sp)
  4001cc:	00058713          	mv	a4,a1
  4001d0:	00050413          	mv	s0,a0
  4001d4:	00050693          	mv	a3,a0
  4001d8:	b8c60613          	addi	a2,a2,-1140 # 400b8c <_etext+0x48>
  4001dc:	00f00593          	li	a1,15
  4001e0:	04000513          	li	a0,64
  4001e4:	00112623          	sw	ra,12(sp)
  4001e8:	00912223          	sw	s1,4(sp)
  4001ec:	680000ef          	jal	40086c <printfSCR>
  4001f0:	06045e63          	bgez	s0,40026c <c_trap_handler+0xb0>
  4001f4:	004014b7          	lui	s1,0x401
  4001f8:	c7c4a683          	lw	a3,-900(s1) # 400c7c <intCount>
  4001fc:	00401637          	lui	a2,0x401
  400200:	bb060613          	addi	a2,a2,-1104 # 400bb0 <_etext+0x6c>
  400204:	00f00593          	li	a1,15
  400208:	08000513          	li	a0,128
  40020c:	660000ef          	jal	40086c <printfSCR>
  400210:	c7c4a783          	lw	a5,-900(s1)
  400214:	00178793          	addi	a5,a5,1
  400218:	c6f4ae23          	sw	a5,-900(s1)
  40021c:	800007b7          	lui	a5,0x80000
  400220:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
  400224:	0af41063          	bne	s0,a5,4002c4 <c_trap_handler+0x108>
  400228:	0200c7b7          	lui	a5,0x200c
  40022c:	02004737          	lui	a4,0x2004
  400230:	00072703          	lw	a4,0(a4) # 2004000 <MTIMECMP>
  400234:	ff87a683          	lw	a3,-8(a5) # 200bff8 <MTIME>
  400238:	00401637          	lui	a2,0x401
  40023c:	00f00593          	li	a1,15
  400240:	bc060613          	addi	a2,a2,-1088 # 400bc0 <_etext+0x7c>
  400244:	0c000513          	li	a0,192
  400248:	624000ef          	jal	40086c <printfSCR>
  40024c:	00812403          	lw	s0,8(sp)
  400250:	00c12083          	lw	ra,12(sp)
  400254:	00412483          	lw	s1,4(sp)
  400258:	004c5537          	lui	a0,0x4c5
  40025c:	b4050513          	addi	a0,a0,-1216 # 4c4b40 <_stack_end+0xc0b40>
  400260:	00000593          	li	a1,0
  400264:	01010113          	addi	sp,sp,16
  400268:	f29ff06f          	j	400190 <set_timer_interrupt>
  40026c:	00800793          	li	a5,8
  400270:	02f40863          	beq	s0,a5,4002a0 <c_trap_handler+0xe4>
  400274:	00b00793          	li	a5,11
  400278:	02f40a63          	beq	s0,a5,4002ac <c_trap_handler+0xf0>
  40027c:	00200793          	li	a5,2
  400280:	02f41c63          	bne	s0,a5,4002b8 <c_trap_handler+0xfc>
  400284:	00401537          	lui	a0,0x401
  400288:	be450513          	addi	a0,a0,-1052 # 400be4 <_etext+0xa0>
  40028c:	00812403          	lw	s0,8(sp)
  400290:	00c12083          	lw	ra,12(sp)
  400294:	00412483          	lw	s1,4(sp)
  400298:	01010113          	addi	sp,sp,16
  40029c:	4340006f          	j	4006d0 <printf>
  4002a0:	00401537          	lui	a0,0x401
  4002a4:	bfc50513          	addi	a0,a0,-1028 # 400bfc <_etext+0xb8>
  4002a8:	fe5ff06f          	j	40028c <c_trap_handler+0xd0>
  4002ac:	00401537          	lui	a0,0x401
  4002b0:	c1850513          	addi	a0,a0,-1000 # 400c18 <_etext+0xd4>
  4002b4:	fd9ff06f          	j	40028c <c_trap_handler+0xd0>
  4002b8:	00401537          	lui	a0,0x401
  4002bc:	c3450513          	addi	a0,a0,-972 # 400c34 <_etext+0xf0>
  4002c0:	fcdff06f          	j	40028c <c_trap_handler+0xd0>
  4002c4:	00c12083          	lw	ra,12(sp)
  4002c8:	00812403          	lw	s0,8(sp)
  4002cc:	00412483          	lw	s1,4(sp)
  4002d0:	01010113          	addi	sp,sp,16
  4002d4:	00008067          	ret

004002d8 <getUSBint>:
  4002d8:	100007b7          	lui	a5,0x10000
  4002dc:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
  4002e0:	00008067          	ret

004002e4 <USBParser>:
  4002e4:	01d00793          	li	a5,29
  4002e8:	00a7ee63          	bltu	a5,a0,400304 <USBParser+0x20>
  4002ec:	00300793          	li	a5,3
  4002f0:	02a7ee63          	bltu	a5,a0,40032c <USBParser+0x48>
  4002f4:	00000513          	li	a0,0
  4002f8:	00008067          	ret
  4002fc:	01b00513          	li	a0,27
  400300:	00008067          	ret
  400304:	fe250793          	addi	a5,a0,-30
  400308:	0ff7f793          	zext.b	a5,a5
  40030c:	03400713          	li	a4,52
  400310:	fef762e3          	bltu	a4,a5,4002f4 <USBParser+0x10>
  400314:	00401737          	lui	a4,0x401
  400318:	00279793          	slli	a5,a5,0x2
  40031c:	a5c70713          	addi	a4,a4,-1444 # 400a5c <resetScreenVector+0xc>
  400320:	00e787b3          	add	a5,a5,a4
  400324:	0007a783          	lw	a5,0(a5)
  400328:	00078067          	jr	a5
  40032c:	05d50513          	addi	a0,a0,93
  400330:	0ff57513          	zext.b	a0,a0
  400334:	00008067          	ret
  400338:	01350513          	addi	a0,a0,19
  40033c:	ff5ff06f          	j	400330 <USBParser+0x4c>
  400340:	00800513          	li	a0,8
  400344:	00008067          	ret
  400348:	00900513          	li	a0,9
  40034c:	00008067          	ret
  400350:	02000513          	li	a0,32
  400354:	00008067          	ret
  400358:	03d00513          	li	a0,61
  40035c:	00008067          	ret
  400360:	05b00513          	li	a0,91
  400364:	00008067          	ret
  400368:	05d00513          	li	a0,93
  40036c:	00008067          	ret
  400370:	05c00513          	li	a0,92
  400374:	00008067          	ret
  400378:	03b00513          	li	a0,59
  40037c:	00008067          	ret
  400380:	02700513          	li	a0,39
  400384:	00008067          	ret
  400388:	06000513          	li	a0,96
  40038c:	00008067          	ret
  400390:	02c00513          	li	a0,44
  400394:	00008067          	ret
  400398:	02e00513          	li	a0,46
  40039c:	00008067          	ret
  4003a0:	02f00513          	li	a0,47
  4003a4:	00008067          	ret
  4003a8:	04600513          	li	a0,70
  4003ac:	00008067          	ret
  4003b0:	05200513          	li	a0,82
  4003b4:	00008067          	ret
  4003b8:	04c00513          	li	a0,76
  4003bc:	00008067          	ret
  4003c0:	04400513          	li	a0,68
  4003c4:	00008067          	ret
  4003c8:	05500513          	li	a0,85
  4003cc:	00008067          	ret
  4003d0:	00a00513          	li	a0,10
  4003d4:	00008067          	ret

004003d8 <memcpy>:
  4003d8:	00000793          	li	a5,0
  4003dc:	00c7c463          	blt	a5,a2,4003e4 <memcpy+0xc>
  4003e0:	00008067          	ret
  4003e4:	00f58733          	add	a4,a1,a5
  4003e8:	00074683          	lbu	a3,0(a4)
  4003ec:	00f50733          	add	a4,a0,a5
  4003f0:	00178793          	addi	a5,a5,1
  4003f4:	00d70023          	sb	a3,0(a4)
  4003f8:	fe5ff06f          	j	4003dc <memcpy+0x4>

004003fc <memset>:
  4003fc:	00c50633          	add	a2,a0,a2
  400400:	00050793          	mv	a5,a0
  400404:	00c79463          	bne	a5,a2,40040c <memset+0x10>
  400408:	00008067          	ret
  40040c:	00178793          	addi	a5,a5,1
  400410:	feb78fa3          	sb	a1,-1(a5)
  400414:	ff1ff06f          	j	400404 <memset+0x8>

00400418 <getButtonDown>:
  400418:	890007b7          	lui	a5,0x89000
  40041c:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
  400420:	00008067          	ret

00400424 <getButtonUp>:
  400424:	890007b7          	lui	a5,0x89000
  400428:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
  40042c:	00008067          	ret

00400430 <getButtonLeft>:
  400430:	890007b7          	lui	a5,0x89000
  400434:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
  400438:	00008067          	ret

0040043c <getButtonRight>:
  40043c:	890007b7          	lui	a5,0x89000
  400440:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
  400444:	00008067          	ret

00400448 <putch>:
  400448:	4c000793          	li	a5,1216
  40044c:	02a7e263          	bltu	a5,a0,400470 <putch+0x28>
  400450:	00861613          	slli	a2,a2,0x8
  400454:	880007b7          	lui	a5,0x88000
  400458:	00151513          	slli	a0,a0,0x1
  40045c:	00f50533          	add	a0,a0,a5
  400460:	00b665b3          	or	a1,a2,a1
  400464:	00b51023          	sh	a1,0(a0)
  400468:	00100513          	li	a0,1
  40046c:	00008067          	ret
  400470:	00000513          	li	a0,0
  400474:	00008067          	ret

00400478 <printString>:
  400478:	fe010113          	addi	sp,sp,-32
  40047c:	01312623          	sw	s3,12(sp)
  400480:	01412423          	sw	s4,8(sp)
  400484:	00112e23          	sw	ra,28(sp)
  400488:	00812c23          	sw	s0,24(sp)
  40048c:	00912a23          	sw	s1,20(sp)
  400490:	01212823          	sw	s2,16(sp)
  400494:	01512223          	sw	s5,4(sp)
  400498:	01612023          	sw	s6,0(sp)
  40049c:	00050a13          	mv	s4,a0
  4004a0:	00058993          	mv	s3,a1
  4004a4:	06060c63          	beqz	a2,40051c <printString+0xa4>
  4004a8:	00060413          	mv	s0,a2
  4004ac:	00000913          	li	s2,0
  4004b0:	00000493          	li	s1,0
  4004b4:	00100a93          	li	s5,1
  4004b8:	00f00b13          	li	s6,15
  4004bc:	0280006f          	j	4004e4 <printString+0x6c>
  4004c0:	00040613          	mv	a2,s0
  4004c4:	009a0533          	add	a0,s4,s1
  4004c8:	f81ff0ef          	jal	400448 <putch>
  4004cc:	06050263          	beqz	a0,400530 <printString+0xb8>
  4004d0:	00148493          	addi	s1,s1,1
  4004d4:	01591863          	bne	s2,s5,4004e4 <printString+0x6c>
  4004d8:	00140413          	addi	s0,s0,1
  4004dc:	0ff47413          	zext.b	s0,s0
  4004e0:	048b6463          	bltu	s6,s0,400528 <printString+0xb0>
  4004e4:	009987b3          	add	a5,s3,s1
  4004e8:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
  4004ec:	00048513          	mv	a0,s1
  4004f0:	fc0598e3          	bnez	a1,4004c0 <printString+0x48>
  4004f4:	01c12083          	lw	ra,28(sp)
  4004f8:	01812403          	lw	s0,24(sp)
  4004fc:	01412483          	lw	s1,20(sp)
  400500:	01012903          	lw	s2,16(sp)
  400504:	00c12983          	lw	s3,12(sp)
  400508:	00812a03          	lw	s4,8(sp)
  40050c:	00412a83          	lw	s5,4(sp)
  400510:	00012b03          	lw	s6,0(sp)
  400514:	02010113          	addi	sp,sp,32
  400518:	00008067          	ret
  40051c:	00100913          	li	s2,1
  400520:	00090413          	mv	s0,s2
  400524:	f8dff06f          	j	4004b0 <printString+0x38>
  400528:	00090413          	mv	s0,s2
  40052c:	fb9ff06f          	j	4004e4 <printString+0x6c>
  400530:	00000513          	li	a0,0
  400534:	fc1ff06f          	j	4004f4 <printString+0x7c>

00400538 <printHex>:
  400538:	fd010113          	addi	sp,sp,-48
  40053c:	02812423          	sw	s0,40(sp)
  400540:	00058413          	mv	s0,a1
  400544:	004015b7          	lui	a1,0x401
  400548:	02912223          	sw	s1,36(sp)
  40054c:	03212023          	sw	s2,32(sp)
  400550:	c6058593          	addi	a1,a1,-928 # 400c60 <_etext+0x11c>
  400554:	00050493          	mv	s1,a0
  400558:	00060913          	mv	s2,a2
  40055c:	00c10513          	addi	a0,sp,12
  400560:	01100613          	li	a2,17
  400564:	02112623          	sw	ra,44(sp)
  400568:	e71ff0ef          	jal	4003d8 <memcpy>
  40056c:	202027b7          	lui	a5,0x20202
  400570:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
  400574:	00f12023          	sw	a5,0(sp)
  400578:	00f12223          	sw	a5,4(sp)
  40057c:	00010423          	sb	zero,8(sp)
  400580:	00700793          	li	a5,7
  400584:	00010593          	mv	a1,sp
  400588:	fff00693          	li	a3,-1
  40058c:	00f47713          	andi	a4,s0,15
  400590:	02070713          	addi	a4,a4,32
  400594:	00270733          	add	a4,a4,sp
  400598:	fec74703          	lbu	a4,-20(a4)
  40059c:	00f58633          	add	a2,a1,a5
  4005a0:	fff78793          	addi	a5,a5,-1
  4005a4:	00e60023          	sb	a4,0(a2)
  4005a8:	40445413          	srai	s0,s0,0x4
  4005ac:	fed790e3          	bne	a5,a3,40058c <printHex+0x54>
  4005b0:	00090613          	mv	a2,s2
  4005b4:	00048513          	mv	a0,s1
  4005b8:	ec1ff0ef          	jal	400478 <printString>
  4005bc:	02c12083          	lw	ra,44(sp)
  4005c0:	02812403          	lw	s0,40(sp)
  4005c4:	02412483          	lw	s1,36(sp)
  4005c8:	02012903          	lw	s2,32(sp)
  4005cc:	0ff57513          	zext.b	a0,a0
  4005d0:	03010113          	addi	sp,sp,48
  4005d4:	00008067          	ret

004005d8 <printDec>:
  4005d8:	fd010113          	addi	sp,sp,-48
  4005dc:	02812423          	sw	s0,40(sp)
  4005e0:	00058413          	mv	s0,a1
  4005e4:	004015b7          	lui	a1,0x401
  4005e8:	02912223          	sw	s1,36(sp)
  4005ec:	03212023          	sw	s2,32(sp)
  4005f0:	00050493          	mv	s1,a0
  4005f4:	00060913          	mv	s2,a2
  4005f8:	b3058593          	addi	a1,a1,-1232 # 400b30 <resetScreenVector+0xe0>
  4005fc:	01400613          	li	a2,20
  400600:	00c10513          	addi	a0,sp,12
  400604:	02112623          	sw	ra,44(sp)
  400608:	dd1ff0ef          	jal	4003d8 <memcpy>
  40060c:	000187b7          	lui	a5,0x18
  400610:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  400614:	0287fa63          	bgeu	a5,s0,400648 <printDec+0x70>
  400618:	004015b7          	lui	a1,0x401
  40061c:	00090613          	mv	a2,s2
  400620:	c7458593          	addi	a1,a1,-908 # 400c74 <_etext+0x130>
  400624:	00048513          	mv	a0,s1
  400628:	e51ff0ef          	jal	400478 <printString>
  40062c:	02c12083          	lw	ra,44(sp)
  400630:	02812403          	lw	s0,40(sp)
  400634:	02412483          	lw	s1,36(sp)
  400638:	02012903          	lw	s2,32(sp)
  40063c:	0ff57513          	zext.b	a0,a0
  400640:	03010113          	addi	sp,sp,48
  400644:	00008067          	ret
  400648:	00100613          	li	a2,1
  40064c:	00c10713          	addi	a4,sp,12
  400650:	00000793          	li	a5,0
  400654:	00060513          	mv	a0,a2
  400658:	00072583          	lw	a1,0(a4)
  40065c:	00000693          	li	a3,0
  400660:	06b47263          	bgeu	s0,a1,4006c4 <printDec+0xec>
  400664:	00069663          	bnez	a3,400670 <printDec+0x98>
  400668:	00a58463          	beq	a1,a0,400670 <printDec+0x98>
  40066c:	00061e63          	bnez	a2,400688 <printDec+0xb0>
  400670:	02078613          	addi	a2,a5,32
  400674:	00260633          	add	a2,a2,sp
  400678:	03068693          	addi	a3,a3,48
  40067c:	fed60223          	sb	a3,-28(a2)
  400680:	00178793          	addi	a5,a5,1
  400684:	00000613          	li	a2,0
  400688:	00470713          	addi	a4,a4,4
  40068c:	02010693          	addi	a3,sp,32
  400690:	fcd714e3          	bne	a4,a3,400658 <printDec+0x80>
  400694:	00060c63          	beqz	a2,4006ac <printDec+0xd4>
  400698:	02078713          	addi	a4,a5,32
  40069c:	00270733          	add	a4,a4,sp
  4006a0:	03000693          	li	a3,48
  4006a4:	fed70223          	sb	a3,-28(a4)
  4006a8:	00178793          	addi	a5,a5,1
  4006ac:	02078793          	addi	a5,a5,32
  4006b0:	002787b3          	add	a5,a5,sp
  4006b4:	fe078223          	sb	zero,-28(a5)
  4006b8:	00090613          	mv	a2,s2
  4006bc:	00410593          	addi	a1,sp,4
  4006c0:	f65ff06f          	j	400624 <printDec+0x4c>
  4006c4:	40b40433          	sub	s0,s0,a1
  4006c8:	00168693          	addi	a3,a3,1
  4006cc:	f95ff06f          	j	400660 <printDec+0x88>

004006d0 <printf>:
  4006d0:	fa010113          	addi	sp,sp,-96
  4006d4:	04f12a23          	sw	a5,84(sp)
  4006d8:	04410793          	addi	a5,sp,68
  4006dc:	02812c23          	sw	s0,56(sp)
  4006e0:	02912a23          	sw	s1,52(sp)
  4006e4:	03212823          	sw	s2,48(sp)
  4006e8:	03312623          	sw	s3,44(sp)
  4006ec:	03412423          	sw	s4,40(sp)
  4006f0:	03512223          	sw	s5,36(sp)
  4006f4:	03612023          	sw	s6,32(sp)
  4006f8:	01812c23          	sw	s8,24(sp)
  4006fc:	02112e23          	sw	ra,60(sp)
  400700:	01712e23          	sw	s7,28(sp)
  400704:	00050493          	mv	s1,a0
  400708:	04b12223          	sw	a1,68(sp)
  40070c:	04c12423          	sw	a2,72(sp)
  400710:	04d12623          	sw	a3,76(sp)
  400714:	04e12823          	sw	a4,80(sp)
  400718:	05012c23          	sw	a6,88(sp)
  40071c:	05112e23          	sw	a7,92(sp)
  400720:	00f12623          	sw	a5,12(sp)
  400724:	00000c13          	li	s8,0
  400728:	00401437          	lui	s0,0x401
  40072c:	00a00993          	li	s3,10
  400730:	02500913          	li	s2,37
  400734:	07800a13          	li	s4,120
  400738:	06400a93          	li	s5,100
  40073c:	06300b13          	li	s6,99
  400740:	018487b3          	add	a5,s1,s8
  400744:	0007c583          	lbu	a1,0(a5)
  400748:	c8041503          	lh	a0,-896(s0) # 400c80 <screenPos>
  40074c:	02059a63          	bnez	a1,400780 <printf+0xb0>
  400750:	03c12083          	lw	ra,60(sp)
  400754:	03812403          	lw	s0,56(sp)
  400758:	03412483          	lw	s1,52(sp)
  40075c:	03012903          	lw	s2,48(sp)
  400760:	02c12983          	lw	s3,44(sp)
  400764:	02812a03          	lw	s4,40(sp)
  400768:	02412a83          	lw	s5,36(sp)
  40076c:	02012b03          	lw	s6,32(sp)
  400770:	01c12b83          	lw	s7,28(sp)
  400774:	01812c03          	lw	s8,24(sp)
  400778:	06010113          	addi	sp,sp,96
  40077c:	00008067          	ret
  400780:	001c0b93          	addi	s7,s8,1
  400784:	01359e63          	bne	a1,s3,4007a0 <printf+0xd0>
  400788:	fc057793          	andi	a5,a0,-64
  40078c:	04078793          	addi	a5,a5,64
  400790:	01079793          	slli	a5,a5,0x10
  400794:	4107d793          	srai	a5,a5,0x10
  400798:	000c0b93          	mv	s7,s8
  40079c:	0380006f          	j	4007d4 <printf+0x104>
  4007a0:	0d259263          	bne	a1,s2,400864 <printf+0x194>
  4007a4:	0017c783          	lbu	a5,1(a5)
  4007a8:	03479c63          	bne	a5,s4,4007e0 <printf+0x110>
  4007ac:	00c12783          	lw	a5,12(sp)
  4007b0:	00f00613          	li	a2,15
  4007b4:	0007a583          	lw	a1,0(a5)
  4007b8:	00478713          	addi	a4,a5,4
  4007bc:	00e12623          	sw	a4,12(sp)
  4007c0:	d79ff0ef          	jal	400538 <printHex>
  4007c4:	c8045783          	lhu	a5,-896(s0)
  4007c8:	00f507b3          	add	a5,a0,a5
  4007cc:	01079793          	slli	a5,a5,0x10
  4007d0:	4107d793          	srai	a5,a5,0x10
  4007d4:	c8f41023          	sh	a5,-896(s0)
  4007d8:	001b8c13          	addi	s8,s7,1
  4007dc:	f65ff06f          	j	400740 <printf+0x70>
  4007e0:	03579063          	bne	a5,s5,400800 <printf+0x130>
  4007e4:	00c12783          	lw	a5,12(sp)
  4007e8:	00f00613          	li	a2,15
  4007ec:	0007a583          	lw	a1,0(a5)
  4007f0:	00478713          	addi	a4,a5,4
  4007f4:	00e12623          	sw	a4,12(sp)
  4007f8:	de1ff0ef          	jal	4005d8 <printDec>
  4007fc:	fc9ff06f          	j	4007c4 <printf+0xf4>
  400800:	03679463          	bne	a5,s6,400828 <printf+0x158>
  400804:	00c12783          	lw	a5,12(sp)
  400808:	00f00613          	li	a2,15
  40080c:	0007c583          	lbu	a1,0(a5)
  400810:	00478713          	addi	a4,a5,4
  400814:	00e12623          	sw	a4,12(sp)
  400818:	c31ff0ef          	jal	400448 <putch>
  40081c:	c8045783          	lhu	a5,-896(s0)
  400820:	00178793          	addi	a5,a5,1
  400824:	fa9ff06f          	j	4007cc <printf+0xfc>
  400828:	07300713          	li	a4,115
  40082c:	02e79063          	bne	a5,a4,40084c <printf+0x17c>
  400830:	00c12783          	lw	a5,12(sp)
  400834:	00f00613          	li	a2,15
  400838:	0007a583          	lw	a1,0(a5)
  40083c:	00478713          	addi	a4,a5,4
  400840:	00e12623          	sw	a4,12(sp)
  400844:	c35ff0ef          	jal	400478 <printString>
  400848:	f7dff06f          	j	4007c4 <printf+0xf4>
  40084c:	00f00613          	li	a2,15
  400850:	00090593          	mv	a1,s2
  400854:	bf5ff0ef          	jal	400448 <putch>
  400858:	c8045783          	lhu	a5,-896(s0)
  40085c:	00178793          	addi	a5,a5,1
  400860:	f31ff06f          	j	400790 <printf+0xc0>
  400864:	00f00613          	li	a2,15
  400868:	fedff06f          	j	400854 <printf+0x184>

0040086c <printfSCR>:
  40086c:	f9010113          	addi	sp,sp,-112
  400870:	06f12223          	sw	a5,100(sp)
  400874:	05c10793          	addi	a5,sp,92
  400878:	04812423          	sw	s0,72(sp)
  40087c:	04912223          	sw	s1,68(sp)
  400880:	05212023          	sw	s2,64(sp)
  400884:	03412c23          	sw	s4,56(sp)
  400888:	03512a23          	sw	s5,52(sp)
  40088c:	03612823          	sw	s6,48(sp)
  400890:	03712623          	sw	s7,44(sp)
  400894:	03812423          	sw	s8,40(sp)
  400898:	03912223          	sw	s9,36(sp)
  40089c:	03a12023          	sw	s10,32(sp)
  4008a0:	01b12e23          	sw	s11,28(sp)
  4008a4:	04112623          	sw	ra,76(sp)
  4008a8:	03312e23          	sw	s3,60(sp)
  4008ac:	00050a93          	mv	s5,a0
  4008b0:	00058493          	mv	s1,a1
  4008b4:	00060a13          	mv	s4,a2
  4008b8:	04d12e23          	sw	a3,92(sp)
  4008bc:	06e12023          	sw	a4,96(sp)
  4008c0:	07012423          	sw	a6,104(sp)
  4008c4:	07112623          	sw	a7,108(sp)
  4008c8:	00f12623          	sw	a5,12(sp)
  4008cc:	00000913          	li	s2,0
  4008d0:	00000413          	li	s0,0
  4008d4:	00a00b93          	li	s7,10
  4008d8:	02500b13          	li	s6,37
  4008dc:	07800c13          	li	s8,120
  4008e0:	06400c93          	li	s9,100
  4008e4:	06300d13          	li	s10,99
  4008e8:	07300d93          	li	s11,115
  4008ec:	012a07b3          	add	a5,s4,s2
  4008f0:	0007c583          	lbu	a1,0(a5)
  4008f4:	04059263          	bnez	a1,400938 <printfSCR+0xcc>
  4008f8:	04c12083          	lw	ra,76(sp)
  4008fc:	00040513          	mv	a0,s0
  400900:	04812403          	lw	s0,72(sp)
  400904:	04412483          	lw	s1,68(sp)
  400908:	04012903          	lw	s2,64(sp)
  40090c:	03c12983          	lw	s3,60(sp)
  400910:	03812a03          	lw	s4,56(sp)
  400914:	03412a83          	lw	s5,52(sp)
  400918:	03012b03          	lw	s6,48(sp)
  40091c:	02c12b83          	lw	s7,44(sp)
  400920:	02812c03          	lw	s8,40(sp)
  400924:	02412c83          	lw	s9,36(sp)
  400928:	02012d03          	lw	s10,32(sp)
  40092c:	01c12d83          	lw	s11,28(sp)
  400930:	07010113          	addi	sp,sp,112
  400934:	00008067          	ret
  400938:	00190993          	addi	s3,s2,1
  40093c:	01759a63          	bne	a1,s7,400950 <printfSCR+0xe4>
  400940:	fc047413          	andi	s0,s0,-64
  400944:	04040413          	addi	s0,s0,64
  400948:	00090993          	mv	s3,s2
  40094c:	0740006f          	j	4009c0 <printfSCR+0x154>
  400950:	01540533          	add	a0,s0,s5
  400954:	0b659463          	bne	a1,s6,4009fc <printfSCR+0x190>
  400958:	0017c783          	lbu	a5,1(a5)
  40095c:	03879263          	bne	a5,s8,400980 <printfSCR+0x114>
  400960:	00c12783          	lw	a5,12(sp)
  400964:	00048613          	mv	a2,s1
  400968:	0007a583          	lw	a1,0(a5)
  40096c:	00478713          	addi	a4,a5,4
  400970:	00e12623          	sw	a4,12(sp)
  400974:	bc5ff0ef          	jal	400538 <printHex>
  400978:	00a40433          	add	s0,s0,a0
  40097c:	0440006f          	j	4009c0 <printfSCR+0x154>
  400980:	03979063          	bne	a5,s9,4009a0 <printfSCR+0x134>
  400984:	00c12783          	lw	a5,12(sp)
  400988:	00048613          	mv	a2,s1
  40098c:	0007a583          	lw	a1,0(a5)
  400990:	00478713          	addi	a4,a5,4
  400994:	00e12623          	sw	a4,12(sp)
  400998:	c41ff0ef          	jal	4005d8 <printDec>
  40099c:	fddff06f          	j	400978 <printfSCR+0x10c>
  4009a0:	03a79463          	bne	a5,s10,4009c8 <printfSCR+0x15c>
  4009a4:	00c12783          	lw	a5,12(sp)
  4009a8:	00048613          	mv	a2,s1
  4009ac:	00140413          	addi	s0,s0,1
  4009b0:	0007c583          	lbu	a1,0(a5)
  4009b4:	00478713          	addi	a4,a5,4
  4009b8:	00e12623          	sw	a4,12(sp)
  4009bc:	a8dff0ef          	jal	400448 <putch>
  4009c0:	00198913          	addi	s2,s3,1
  4009c4:	f29ff06f          	j	4008ec <printfSCR+0x80>
  4009c8:	03b79063          	bne	a5,s11,4009e8 <printfSCR+0x17c>
  4009cc:	00c12783          	lw	a5,12(sp)
  4009d0:	00048613          	mv	a2,s1
  4009d4:	0007a583          	lw	a1,0(a5)
  4009d8:	00478713          	addi	a4,a5,4
  4009dc:	00e12623          	sw	a4,12(sp)
  4009e0:	a99ff0ef          	jal	400478 <printString>
  4009e4:	f95ff06f          	j	400978 <printfSCR+0x10c>
  4009e8:	00048613          	mv	a2,s1
  4009ec:	000b0593          	mv	a1,s6
  4009f0:	a59ff0ef          	jal	400448 <putch>
  4009f4:	00140413          	addi	s0,s0,1
  4009f8:	f51ff06f          	j	400948 <printfSCR+0xdc>
  4009fc:	00048613          	mv	a2,s1
  400a00:	ff1ff06f          	j	4009f0 <printfSCR+0x184>

00400a04 <clearScreen>:
  400a04:	ff010113          	addi	sp,sp,-16
  400a08:	00812423          	sw	s0,8(sp)
  400a0c:	00912223          	sw	s1,4(sp)
  400a10:	00112623          	sw	ra,12(sp)
  400a14:	00000413          	li	s0,0
  400a18:	4c000493          	li	s1,1216
  400a1c:	00040513          	mv	a0,s0
  400a20:	00f00613          	li	a2,15
  400a24:	02000593          	li	a1,32
  400a28:	00140413          	addi	s0,s0,1
  400a2c:	a1dff0ef          	jal	400448 <putch>
  400a30:	fe9416e3          	bne	s0,s1,400a1c <clearScreen+0x18>
  400a34:	00c12083          	lw	ra,12(sp)
  400a38:	00812403          	lw	s0,8(sp)
  400a3c:	004017b7          	lui	a5,0x401
  400a40:	c8079023          	sh	zero,-896(a5) # 400c80 <screenPos>
  400a44:	00412483          	lw	s1,4(sp)
  400a48:	01010113          	addi	sp,sp,16
  400a4c:	00008067          	ret

00400a50 <resetScreenVector>:
  400a50:	004017b7          	lui	a5,0x401
  400a54:	c8079023          	sh	zero,-896(a5) # 400c80 <screenPos>
  400a58:	00008067          	ret
  400a5c:	0338                	.insn	2, 0x0338
  400a5e:	0040                	.insn	2, 0x0040
  400a60:	0338                	.insn	2, 0x0338
  400a62:	0040                	.insn	2, 0x0040
  400a64:	0338                	.insn	2, 0x0338
  400a66:	0040                	.insn	2, 0x0040
  400a68:	0338                	.insn	2, 0x0338
  400a6a:	0040                	.insn	2, 0x0040
  400a6c:	0338                	.insn	2, 0x0338
  400a6e:	0040                	.insn	2, 0x0040
  400a70:	0338                	.insn	2, 0x0338
  400a72:	0040                	.insn	2, 0x0040
  400a74:	0338                	.insn	2, 0x0338
  400a76:	0040                	.insn	2, 0x0040
  400a78:	0338                	.insn	2, 0x0338
  400a7a:	0040                	.insn	2, 0x0040
  400a7c:	0338                	.insn	2, 0x0338
  400a7e:	0040                	.insn	2, 0x0040
  400a80:	0338                	.insn	2, 0x0338
  400a82:	0040                	.insn	2, 0x0040
  400a84:	03d0                	.insn	2, 0x03d0
  400a86:	0040                	.insn	2, 0x0040
  400a88:	02fc                	.insn	2, 0x02fc
  400a8a:	0040                	.insn	2, 0x0040
  400a8c:	0340                	.insn	2, 0x0340
  400a8e:	0040                	.insn	2, 0x0040
  400a90:	0348                	.insn	2, 0x0348
  400a92:	0040                	.insn	2, 0x0040
  400a94:	0350                	.insn	2, 0x0350
  400a96:	0040                	.insn	2, 0x0040
  400a98:	02f8                	.insn	2, 0x02f8
  400a9a:	0040                	.insn	2, 0x0040
  400a9c:	0358                	.insn	2, 0x0358
  400a9e:	0040                	.insn	2, 0x0040
  400aa0:	0360                	.insn	2, 0x0360
  400aa2:	0040                	.insn	2, 0x0040
  400aa4:	0368                	.insn	2, 0x0368
  400aa6:	0040                	.insn	2, 0x0040
  400aa8:	0370                	.insn	2, 0x0370
  400aaa:	0040                	.insn	2, 0x0040
  400aac:	02f4                	.insn	2, 0x02f4
  400aae:	0040                	.insn	2, 0x0040
  400ab0:	0378                	.insn	2, 0x0378
  400ab2:	0040                	.insn	2, 0x0040
  400ab4:	0380                	.insn	2, 0x0380
  400ab6:	0040                	.insn	2, 0x0040
  400ab8:	0388                	.insn	2, 0x0388
  400aba:	0040                	.insn	2, 0x0040
  400abc:	0390                	.insn	2, 0x0390
  400abe:	0040                	.insn	2, 0x0040
  400ac0:	0398                	.insn	2, 0x0398
  400ac2:	0040                	.insn	2, 0x0040
  400ac4:	03a0                	.insn	2, 0x03a0
  400ac6:	0040                	.insn	2, 0x0040
  400ac8:	02f4                	.insn	2, 0x02f4
  400aca:	0040                	.insn	2, 0x0040
  400acc:	03a8                	.insn	2, 0x03a8
  400ace:	0040                	.insn	2, 0x0040
  400ad0:	03a8                	.insn	2, 0x03a8
  400ad2:	0040                	.insn	2, 0x0040
  400ad4:	03a8                	.insn	2, 0x03a8
  400ad6:	0040                	.insn	2, 0x0040
  400ad8:	03a8                	.insn	2, 0x03a8
  400ada:	0040                	.insn	2, 0x0040
  400adc:	03a8                	.insn	2, 0x03a8
  400ade:	0040                	.insn	2, 0x0040
  400ae0:	03a8                	.insn	2, 0x03a8
  400ae2:	0040                	.insn	2, 0x0040
  400ae4:	03a8                	.insn	2, 0x03a8
  400ae6:	0040                	.insn	2, 0x0040
  400ae8:	03a8                	.insn	2, 0x03a8
  400aea:	0040                	.insn	2, 0x0040
  400aec:	03a8                	.insn	2, 0x03a8
  400aee:	0040                	.insn	2, 0x0040
  400af0:	03a8                	.insn	2, 0x03a8
  400af2:	0040                	.insn	2, 0x0040
  400af4:	03a8                	.insn	2, 0x03a8
  400af6:	0040                	.insn	2, 0x0040
  400af8:	03a8                	.insn	2, 0x03a8
  400afa:	0040                	.insn	2, 0x0040
  400afc:	02f4                	.insn	2, 0x02f4
  400afe:	0040                	.insn	2, 0x0040
  400b00:	02f4                	.insn	2, 0x02f4
  400b02:	0040                	.insn	2, 0x0040
  400b04:	02f4                	.insn	2, 0x02f4
  400b06:	0040                	.insn	2, 0x0040
  400b08:	02f4                	.insn	2, 0x02f4
  400b0a:	0040                	.insn	2, 0x0040
  400b0c:	02f4                	.insn	2, 0x02f4
  400b0e:	0040                	.insn	2, 0x0040
  400b10:	02f4                	.insn	2, 0x02f4
  400b12:	0040                	.insn	2, 0x0040
  400b14:	02f4                	.insn	2, 0x02f4
  400b16:	0040                	.insn	2, 0x0040
  400b18:	02f4                	.insn	2, 0x02f4
  400b1a:	0040                	.insn	2, 0x0040
  400b1c:	02f4                	.insn	2, 0x02f4
  400b1e:	0040                	.insn	2, 0x0040
  400b20:	03b0                	.insn	2, 0x03b0
  400b22:	0040                	.insn	2, 0x0040
  400b24:	03b8                	.insn	2, 0x03b8
  400b26:	0040                	.insn	2, 0x0040
  400b28:	03c0                	.insn	2, 0x03c0
  400b2a:	0040                	.insn	2, 0x0040
  400b2c:	03c8                	.insn	2, 0x03c8
  400b2e:	0040                	.insn	2, 0x0040
  400b30:	2710                	.insn	2, 0x2710
  400b32:	0000                	.insn	2, 0x
  400b34:	03e8                	.insn	2, 0x03e8
  400b36:	0000                	.insn	2, 0x
  400b38:	0064                	.insn	2, 0x0064
  400b3a:	0000                	.insn	2, 0x
  400b3c:	000a                	.insn	2, 0x000a
  400b3e:	0000                	.insn	2, 0x
  400b40:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400b44 <main>:
  400b44:	004c5537          	lui	a0,0x4c5
  400b48:	ff010113          	addi	sp,sp,-16
  400b4c:	b4050513          	addi	a0,a0,-1216 # 4c4b40 <_stack_end+0xc0b40>
  400b50:	00000593          	li	a1,0
  400b54:	00812423          	sw	s0,8(sp)
  400b58:	00912223          	sw	s1,4(sp)
  400b5c:	00112623          	sw	ra,12(sp)
  400b60:	00000413          	li	s0,0
  400b64:	e2cff0ef          	jal	400190 <set_timer_interrupt>
  400b68:	004014b7          	lui	s1,0x401
  400b6c:	00140413          	addi	s0,s0,1
  400b70:	00141713          	slli	a4,s0,0x1
  400b74:	00040693          	mv	a3,s0
  400b78:	c4c48613          	addi	a2,s1,-948 # 400c4c <main+0x108>
  400b7c:	00f00593          	li	a1,15
  400b80:	44000513          	li	a0,1088
  400b84:	ce9ff0ef          	jal	40086c <printfSCR>
  400b88:	fe5ff06f          	j	400b6c <main+0x28>
