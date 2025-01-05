
builds/build1/program.elf:     file format elf32-littleriscv


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
  400040:	301000ef          	jal	400b40 <_etext>
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
  4001d4:	b7860613          	addi	a2,a2,-1160 # 400b78 <_etext+0x38>
  4001d8:	00f00593          	li	a1,15
  4001dc:	04000513          	li	a0,64
  4001e0:	00112623          	sw	ra,12(sp)
  4001e4:	00912223          	sw	s1,4(sp)
  4001e8:	680000ef          	jal	400868 <printfSCR>
  4001ec:	06045e63          	bgez	s0,400268 <c_trap_handler+0xb0>
  4001f0:	004014b7          	lui	s1,0x401
  4001f4:	c544a683          	lw	a3,-940(s1) # 400c54 <intCount>
  4001f8:	00401637          	lui	a2,0x401
  4001fc:	b9c60613          	addi	a2,a2,-1124 # 400b9c <_etext+0x5c>
  400200:	00f00593          	li	a1,15
  400204:	08000513          	li	a0,128
  400208:	660000ef          	jal	400868 <printfSCR>
  40020c:	c544a783          	lw	a5,-940(s1)
  400210:	00178793          	addi	a5,a5,1
  400214:	c4f4aa23          	sw	a5,-940(s1)
  400218:	800007b7          	lui	a5,0x80000
  40021c:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
  400220:	0af41063          	bne	s0,a5,4002c0 <c_trap_handler+0x108>
  400224:	0200c7b7          	lui	a5,0x200c
  400228:	02004737          	lui	a4,0x2004
  40022c:	00072703          	lw	a4,0(a4) # 2004000 <MTIMECMP>
  400230:	ff87a683          	lw	a3,-8(a5) # 200bff8 <MTIME>
  400234:	00401637          	lui	a2,0x401
  400238:	00f00593          	li	a1,15
  40023c:	bac60613          	addi	a2,a2,-1108 # 400bac <_etext+0x6c>
  400240:	0c000513          	li	a0,192
  400244:	624000ef          	jal	400868 <printfSCR>
  400248:	00812403          	lw	s0,8(sp)
  40024c:	00c12083          	lw	ra,12(sp)
  400250:	00412483          	lw	s1,4(sp)
  400254:	004c5537          	lui	a0,0x4c5
  400258:	b4050513          	addi	a0,a0,-1216 # 4c4b40 <_stack_end+0xc0b40>
  40025c:	00000593          	li	a1,0
  400260:	01010113          	addi	sp,sp,16
  400264:	f29ff06f          	j	40018c <set_timer_interrupt>
  400268:	00800793          	li	a5,8
  40026c:	02f40863          	beq	s0,a5,40029c <c_trap_handler+0xe4>
  400270:	00b00793          	li	a5,11
  400274:	02f40a63          	beq	s0,a5,4002a8 <c_trap_handler+0xf0>
  400278:	00200793          	li	a5,2
  40027c:	02f41c63          	bne	s0,a5,4002b4 <c_trap_handler+0xfc>
  400280:	00401537          	lui	a0,0x401
  400284:	bd050513          	addi	a0,a0,-1072 # 400bd0 <_etext+0x90>
  400288:	00812403          	lw	s0,8(sp)
  40028c:	00c12083          	lw	ra,12(sp)
  400290:	00412483          	lw	s1,4(sp)
  400294:	01010113          	addi	sp,sp,16
  400298:	4340006f          	j	4006cc <printf>
  40029c:	00401537          	lui	a0,0x401
  4002a0:	be850513          	addi	a0,a0,-1048 # 400be8 <_etext+0xa8>
  4002a4:	fe5ff06f          	j	400288 <c_trap_handler+0xd0>
  4002a8:	00401537          	lui	a0,0x401
  4002ac:	c0450513          	addi	a0,a0,-1020 # 400c04 <_etext+0xc4>
  4002b0:	fd9ff06f          	j	400288 <c_trap_handler+0xd0>
  4002b4:	00401537          	lui	a0,0x401
  4002b8:	c2050513          	addi	a0,a0,-992 # 400c20 <_etext+0xe0>
  4002bc:	fcdff06f          	j	400288 <c_trap_handler+0xd0>
  4002c0:	00c12083          	lw	ra,12(sp)
  4002c4:	00812403          	lw	s0,8(sp)
  4002c8:	00412483          	lw	s1,4(sp)
  4002cc:	01010113          	addi	sp,sp,16
  4002d0:	00008067          	ret

004002d4 <getUSBint>:
  4002d4:	100007b7          	lui	a5,0x10000
  4002d8:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
  4002dc:	00008067          	ret

004002e0 <USBParser>:
  4002e0:	01d00793          	li	a5,29
  4002e4:	00a7ee63          	bltu	a5,a0,400300 <USBParser+0x20>
  4002e8:	00300793          	li	a5,3
  4002ec:	02a7ee63          	bltu	a5,a0,400328 <USBParser+0x48>
  4002f0:	00000513          	li	a0,0
  4002f4:	00008067          	ret
  4002f8:	01b00513          	li	a0,27
  4002fc:	00008067          	ret
  400300:	fe250793          	addi	a5,a0,-30
  400304:	0ff7f793          	zext.b	a5,a5
  400308:	03400713          	li	a4,52
  40030c:	fef762e3          	bltu	a4,a5,4002f0 <USBParser+0x10>
  400310:	00401737          	lui	a4,0x401
  400314:	00279793          	slli	a5,a5,0x2
  400318:	a5870713          	addi	a4,a4,-1448 # 400a58 <resetScreenVector+0xc>
  40031c:	00e787b3          	add	a5,a5,a4
  400320:	0007a783          	lw	a5,0(a5)
  400324:	00078067          	jr	a5
  400328:	05d50513          	addi	a0,a0,93
  40032c:	0ff57513          	zext.b	a0,a0
  400330:	00008067          	ret
  400334:	01350513          	addi	a0,a0,19
  400338:	ff5ff06f          	j	40032c <USBParser+0x4c>
  40033c:	00800513          	li	a0,8
  400340:	00008067          	ret
  400344:	00900513          	li	a0,9
  400348:	00008067          	ret
  40034c:	02000513          	li	a0,32
  400350:	00008067          	ret
  400354:	03d00513          	li	a0,61
  400358:	00008067          	ret
  40035c:	05b00513          	li	a0,91
  400360:	00008067          	ret
  400364:	05d00513          	li	a0,93
  400368:	00008067          	ret
  40036c:	05c00513          	li	a0,92
  400370:	00008067          	ret
  400374:	03b00513          	li	a0,59
  400378:	00008067          	ret
  40037c:	02700513          	li	a0,39
  400380:	00008067          	ret
  400384:	06000513          	li	a0,96
  400388:	00008067          	ret
  40038c:	02c00513          	li	a0,44
  400390:	00008067          	ret
  400394:	02e00513          	li	a0,46
  400398:	00008067          	ret
  40039c:	02f00513          	li	a0,47
  4003a0:	00008067          	ret
  4003a4:	04600513          	li	a0,70
  4003a8:	00008067          	ret
  4003ac:	05200513          	li	a0,82
  4003b0:	00008067          	ret
  4003b4:	04c00513          	li	a0,76
  4003b8:	00008067          	ret
  4003bc:	04400513          	li	a0,68
  4003c0:	00008067          	ret
  4003c4:	05500513          	li	a0,85
  4003c8:	00008067          	ret
  4003cc:	00a00513          	li	a0,10
  4003d0:	00008067          	ret

004003d4 <memcpy>:
  4003d4:	00000793          	li	a5,0
  4003d8:	00c7c463          	blt	a5,a2,4003e0 <memcpy+0xc>
  4003dc:	00008067          	ret
  4003e0:	00f58733          	add	a4,a1,a5
  4003e4:	00074683          	lbu	a3,0(a4)
  4003e8:	00f50733          	add	a4,a0,a5
  4003ec:	00178793          	addi	a5,a5,1
  4003f0:	00d70023          	sb	a3,0(a4)
  4003f4:	fe5ff06f          	j	4003d8 <memcpy+0x4>

004003f8 <memset>:
  4003f8:	00c50633          	add	a2,a0,a2
  4003fc:	00050793          	mv	a5,a0
  400400:	00c79463          	bne	a5,a2,400408 <memset+0x10>
  400404:	00008067          	ret
  400408:	00178793          	addi	a5,a5,1
  40040c:	feb78fa3          	sb	a1,-1(a5)
  400410:	ff1ff06f          	j	400400 <memset+0x8>

00400414 <getButtonDown>:
  400414:	890007b7          	lui	a5,0x89000
  400418:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
  40041c:	00008067          	ret

00400420 <getButtonUp>:
  400420:	890007b7          	lui	a5,0x89000
  400424:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
  400428:	00008067          	ret

0040042c <getButtonLeft>:
  40042c:	890007b7          	lui	a5,0x89000
  400430:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
  400434:	00008067          	ret

00400438 <getButtonRight>:
  400438:	890007b7          	lui	a5,0x89000
  40043c:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
  400440:	00008067          	ret

00400444 <putch>:
  400444:	4c000793          	li	a5,1216
  400448:	02a7e263          	bltu	a5,a0,40046c <putch+0x28>
  40044c:	00861613          	slli	a2,a2,0x8
  400450:	880007b7          	lui	a5,0x88000
  400454:	00151513          	slli	a0,a0,0x1
  400458:	00f50533          	add	a0,a0,a5
  40045c:	00b665b3          	or	a1,a2,a1
  400460:	00b51023          	sh	a1,0(a0)
  400464:	00100513          	li	a0,1
  400468:	00008067          	ret
  40046c:	00000513          	li	a0,0
  400470:	00008067          	ret

00400474 <printString>:
  400474:	fe010113          	addi	sp,sp,-32
  400478:	01312623          	sw	s3,12(sp)
  40047c:	01412423          	sw	s4,8(sp)
  400480:	00112e23          	sw	ra,28(sp)
  400484:	00812c23          	sw	s0,24(sp)
  400488:	00912a23          	sw	s1,20(sp)
  40048c:	01212823          	sw	s2,16(sp)
  400490:	01512223          	sw	s5,4(sp)
  400494:	01612023          	sw	s6,0(sp)
  400498:	00050a13          	mv	s4,a0
  40049c:	00058993          	mv	s3,a1
  4004a0:	06060c63          	beqz	a2,400518 <printString+0xa4>
  4004a4:	00060413          	mv	s0,a2
  4004a8:	00000913          	li	s2,0
  4004ac:	00000493          	li	s1,0
  4004b0:	00100a93          	li	s5,1
  4004b4:	00f00b13          	li	s6,15
  4004b8:	0280006f          	j	4004e0 <printString+0x6c>
  4004bc:	00040613          	mv	a2,s0
  4004c0:	009a0533          	add	a0,s4,s1
  4004c4:	f81ff0ef          	jal	400444 <putch>
  4004c8:	06050263          	beqz	a0,40052c <printString+0xb8>
  4004cc:	00148493          	addi	s1,s1,1
  4004d0:	01591863          	bne	s2,s5,4004e0 <printString+0x6c>
  4004d4:	00140413          	addi	s0,s0,1
  4004d8:	0ff47413          	zext.b	s0,s0
  4004dc:	048b6463          	bltu	s6,s0,400524 <printString+0xb0>
  4004e0:	009987b3          	add	a5,s3,s1
  4004e4:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
  4004e8:	00048513          	mv	a0,s1
  4004ec:	fc0598e3          	bnez	a1,4004bc <printString+0x48>
  4004f0:	01c12083          	lw	ra,28(sp)
  4004f4:	01812403          	lw	s0,24(sp)
  4004f8:	01412483          	lw	s1,20(sp)
  4004fc:	01012903          	lw	s2,16(sp)
  400500:	00c12983          	lw	s3,12(sp)
  400504:	00812a03          	lw	s4,8(sp)
  400508:	00412a83          	lw	s5,4(sp)
  40050c:	00012b03          	lw	s6,0(sp)
  400510:	02010113          	addi	sp,sp,32
  400514:	00008067          	ret
  400518:	00100913          	li	s2,1
  40051c:	00090413          	mv	s0,s2
  400520:	f8dff06f          	j	4004ac <printString+0x38>
  400524:	00090413          	mv	s0,s2
  400528:	fb9ff06f          	j	4004e0 <printString+0x6c>
  40052c:	00000513          	li	a0,0
  400530:	fc1ff06f          	j	4004f0 <printString+0x7c>

00400534 <printHex>:
  400534:	fd010113          	addi	sp,sp,-48
  400538:	02812423          	sw	s0,40(sp)
  40053c:	00058413          	mv	s0,a1
  400540:	004015b7          	lui	a1,0x401
  400544:	02912223          	sw	s1,36(sp)
  400548:	03212023          	sw	s2,32(sp)
  40054c:	c3858593          	addi	a1,a1,-968 # 400c38 <_etext+0xf8>
  400550:	00050493          	mv	s1,a0
  400554:	00060913          	mv	s2,a2
  400558:	00c10513          	addi	a0,sp,12
  40055c:	01100613          	li	a2,17
  400560:	02112623          	sw	ra,44(sp)
  400564:	e71ff0ef          	jal	4003d4 <memcpy>
  400568:	202027b7          	lui	a5,0x20202
  40056c:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
  400570:	00f12023          	sw	a5,0(sp)
  400574:	00f12223          	sw	a5,4(sp)
  400578:	00010423          	sb	zero,8(sp)
  40057c:	00700793          	li	a5,7
  400580:	00010593          	mv	a1,sp
  400584:	fff00693          	li	a3,-1
  400588:	00f47713          	andi	a4,s0,15
  40058c:	02070713          	addi	a4,a4,32
  400590:	00270733          	add	a4,a4,sp
  400594:	fec74703          	lbu	a4,-20(a4)
  400598:	00f58633          	add	a2,a1,a5
  40059c:	fff78793          	addi	a5,a5,-1
  4005a0:	00e60023          	sb	a4,0(a2)
  4005a4:	40445413          	srai	s0,s0,0x4
  4005a8:	fed790e3          	bne	a5,a3,400588 <printHex+0x54>
  4005ac:	00090613          	mv	a2,s2
  4005b0:	00048513          	mv	a0,s1
  4005b4:	ec1ff0ef          	jal	400474 <printString>
  4005b8:	02c12083          	lw	ra,44(sp)
  4005bc:	02812403          	lw	s0,40(sp)
  4005c0:	02412483          	lw	s1,36(sp)
  4005c4:	02012903          	lw	s2,32(sp)
  4005c8:	0ff57513          	zext.b	a0,a0
  4005cc:	03010113          	addi	sp,sp,48
  4005d0:	00008067          	ret

004005d4 <printDec>:
  4005d4:	fd010113          	addi	sp,sp,-48
  4005d8:	02812423          	sw	s0,40(sp)
  4005dc:	00058413          	mv	s0,a1
  4005e0:	004015b7          	lui	a1,0x401
  4005e4:	02912223          	sw	s1,36(sp)
  4005e8:	03212023          	sw	s2,32(sp)
  4005ec:	00050493          	mv	s1,a0
  4005f0:	00060913          	mv	s2,a2
  4005f4:	b2c58593          	addi	a1,a1,-1236 # 400b2c <resetScreenVector+0xe0>
  4005f8:	01400613          	li	a2,20
  4005fc:	00c10513          	addi	a0,sp,12
  400600:	02112623          	sw	ra,44(sp)
  400604:	dd1ff0ef          	jal	4003d4 <memcpy>
  400608:	000187b7          	lui	a5,0x18
  40060c:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  400610:	0287fa63          	bgeu	a5,s0,400644 <printDec+0x70>
  400614:	004015b7          	lui	a1,0x401
  400618:	00090613          	mv	a2,s2
  40061c:	c4c58593          	addi	a1,a1,-948 # 400c4c <_etext+0x10c>
  400620:	00048513          	mv	a0,s1
  400624:	e51ff0ef          	jal	400474 <printString>
  400628:	02c12083          	lw	ra,44(sp)
  40062c:	02812403          	lw	s0,40(sp)
  400630:	02412483          	lw	s1,36(sp)
  400634:	02012903          	lw	s2,32(sp)
  400638:	0ff57513          	zext.b	a0,a0
  40063c:	03010113          	addi	sp,sp,48
  400640:	00008067          	ret
  400644:	00100613          	li	a2,1
  400648:	00c10713          	addi	a4,sp,12
  40064c:	00000793          	li	a5,0
  400650:	00060513          	mv	a0,a2
  400654:	00072583          	lw	a1,0(a4)
  400658:	00000693          	li	a3,0
  40065c:	06b47263          	bgeu	s0,a1,4006c0 <printDec+0xec>
  400660:	00069663          	bnez	a3,40066c <printDec+0x98>
  400664:	00a58463          	beq	a1,a0,40066c <printDec+0x98>
  400668:	00061e63          	bnez	a2,400684 <printDec+0xb0>
  40066c:	02078613          	addi	a2,a5,32
  400670:	00260633          	add	a2,a2,sp
  400674:	03068693          	addi	a3,a3,48
  400678:	fed60223          	sb	a3,-28(a2)
  40067c:	00178793          	addi	a5,a5,1
  400680:	00000613          	li	a2,0
  400684:	00470713          	addi	a4,a4,4
  400688:	02010693          	addi	a3,sp,32
  40068c:	fcd714e3          	bne	a4,a3,400654 <printDec+0x80>
  400690:	00060c63          	beqz	a2,4006a8 <printDec+0xd4>
  400694:	02078713          	addi	a4,a5,32
  400698:	00270733          	add	a4,a4,sp
  40069c:	03000693          	li	a3,48
  4006a0:	fed70223          	sb	a3,-28(a4)
  4006a4:	00178793          	addi	a5,a5,1
  4006a8:	02078793          	addi	a5,a5,32
  4006ac:	002787b3          	add	a5,a5,sp
  4006b0:	fe078223          	sb	zero,-28(a5)
  4006b4:	00090613          	mv	a2,s2
  4006b8:	00410593          	addi	a1,sp,4
  4006bc:	f65ff06f          	j	400620 <printDec+0x4c>
  4006c0:	40b40433          	sub	s0,s0,a1
  4006c4:	00168693          	addi	a3,a3,1
  4006c8:	f95ff06f          	j	40065c <printDec+0x88>

004006cc <printf>:
  4006cc:	fa010113          	addi	sp,sp,-96
  4006d0:	04f12a23          	sw	a5,84(sp)
  4006d4:	04410793          	addi	a5,sp,68
  4006d8:	02812c23          	sw	s0,56(sp)
  4006dc:	02912a23          	sw	s1,52(sp)
  4006e0:	03212823          	sw	s2,48(sp)
  4006e4:	03312623          	sw	s3,44(sp)
  4006e8:	03412423          	sw	s4,40(sp)
  4006ec:	03512223          	sw	s5,36(sp)
  4006f0:	03612023          	sw	s6,32(sp)
  4006f4:	01812c23          	sw	s8,24(sp)
  4006f8:	02112e23          	sw	ra,60(sp)
  4006fc:	01712e23          	sw	s7,28(sp)
  400700:	00050493          	mv	s1,a0
  400704:	04b12223          	sw	a1,68(sp)
  400708:	04c12423          	sw	a2,72(sp)
  40070c:	04d12623          	sw	a3,76(sp)
  400710:	04e12823          	sw	a4,80(sp)
  400714:	05012c23          	sw	a6,88(sp)
  400718:	05112e23          	sw	a7,92(sp)
  40071c:	00f12623          	sw	a5,12(sp)
  400720:	00000c13          	li	s8,0
  400724:	00401437          	lui	s0,0x401
  400728:	00a00993          	li	s3,10
  40072c:	02500913          	li	s2,37
  400730:	07800a13          	li	s4,120
  400734:	06400a93          	li	s5,100
  400738:	06300b13          	li	s6,99
  40073c:	018487b3          	add	a5,s1,s8
  400740:	0007c583          	lbu	a1,0(a5)
  400744:	c5841503          	lh	a0,-936(s0) # 400c58 <screenPos>
  400748:	02059a63          	bnez	a1,40077c <printf+0xb0>
  40074c:	03c12083          	lw	ra,60(sp)
  400750:	03812403          	lw	s0,56(sp)
  400754:	03412483          	lw	s1,52(sp)
  400758:	03012903          	lw	s2,48(sp)
  40075c:	02c12983          	lw	s3,44(sp)
  400760:	02812a03          	lw	s4,40(sp)
  400764:	02412a83          	lw	s5,36(sp)
  400768:	02012b03          	lw	s6,32(sp)
  40076c:	01c12b83          	lw	s7,28(sp)
  400770:	01812c03          	lw	s8,24(sp)
  400774:	06010113          	addi	sp,sp,96
  400778:	00008067          	ret
  40077c:	001c0b93          	addi	s7,s8,1
  400780:	01359e63          	bne	a1,s3,40079c <printf+0xd0>
  400784:	fc057793          	andi	a5,a0,-64
  400788:	04078793          	addi	a5,a5,64
  40078c:	01079793          	slli	a5,a5,0x10
  400790:	4107d793          	srai	a5,a5,0x10
  400794:	000c0b93          	mv	s7,s8
  400798:	0380006f          	j	4007d0 <printf+0x104>
  40079c:	0d259263          	bne	a1,s2,400860 <printf+0x194>
  4007a0:	0017c783          	lbu	a5,1(a5)
  4007a4:	03479c63          	bne	a5,s4,4007dc <printf+0x110>
  4007a8:	00c12783          	lw	a5,12(sp)
  4007ac:	00f00613          	li	a2,15
  4007b0:	0007a583          	lw	a1,0(a5)
  4007b4:	00478713          	addi	a4,a5,4
  4007b8:	00e12623          	sw	a4,12(sp)
  4007bc:	d79ff0ef          	jal	400534 <printHex>
  4007c0:	c5845783          	lhu	a5,-936(s0)
  4007c4:	00f507b3          	add	a5,a0,a5
  4007c8:	01079793          	slli	a5,a5,0x10
  4007cc:	4107d793          	srai	a5,a5,0x10
  4007d0:	c4f41c23          	sh	a5,-936(s0)
  4007d4:	001b8c13          	addi	s8,s7,1
  4007d8:	f65ff06f          	j	40073c <printf+0x70>
  4007dc:	03579063          	bne	a5,s5,4007fc <printf+0x130>
  4007e0:	00c12783          	lw	a5,12(sp)
  4007e4:	00f00613          	li	a2,15
  4007e8:	0007a583          	lw	a1,0(a5)
  4007ec:	00478713          	addi	a4,a5,4
  4007f0:	00e12623          	sw	a4,12(sp)
  4007f4:	de1ff0ef          	jal	4005d4 <printDec>
  4007f8:	fc9ff06f          	j	4007c0 <printf+0xf4>
  4007fc:	03679463          	bne	a5,s6,400824 <printf+0x158>
  400800:	00c12783          	lw	a5,12(sp)
  400804:	00f00613          	li	a2,15
  400808:	0007c583          	lbu	a1,0(a5)
  40080c:	00478713          	addi	a4,a5,4
  400810:	00e12623          	sw	a4,12(sp)
  400814:	c31ff0ef          	jal	400444 <putch>
  400818:	c5845783          	lhu	a5,-936(s0)
  40081c:	00178793          	addi	a5,a5,1
  400820:	fa9ff06f          	j	4007c8 <printf+0xfc>
  400824:	07300713          	li	a4,115
  400828:	02e79063          	bne	a5,a4,400848 <printf+0x17c>
  40082c:	00c12783          	lw	a5,12(sp)
  400830:	00f00613          	li	a2,15
  400834:	0007a583          	lw	a1,0(a5)
  400838:	00478713          	addi	a4,a5,4
  40083c:	00e12623          	sw	a4,12(sp)
  400840:	c35ff0ef          	jal	400474 <printString>
  400844:	f7dff06f          	j	4007c0 <printf+0xf4>
  400848:	00f00613          	li	a2,15
  40084c:	00090593          	mv	a1,s2
  400850:	bf5ff0ef          	jal	400444 <putch>
  400854:	c5845783          	lhu	a5,-936(s0)
  400858:	00178793          	addi	a5,a5,1
  40085c:	f31ff06f          	j	40078c <printf+0xc0>
  400860:	00f00613          	li	a2,15
  400864:	fedff06f          	j	400850 <printf+0x184>

00400868 <printfSCR>:
  400868:	f9010113          	addi	sp,sp,-112
  40086c:	06f12223          	sw	a5,100(sp)
  400870:	05c10793          	addi	a5,sp,92
  400874:	04812423          	sw	s0,72(sp)
  400878:	04912223          	sw	s1,68(sp)
  40087c:	05212023          	sw	s2,64(sp)
  400880:	03412c23          	sw	s4,56(sp)
  400884:	03512a23          	sw	s5,52(sp)
  400888:	03612823          	sw	s6,48(sp)
  40088c:	03712623          	sw	s7,44(sp)
  400890:	03812423          	sw	s8,40(sp)
  400894:	03912223          	sw	s9,36(sp)
  400898:	03a12023          	sw	s10,32(sp)
  40089c:	01b12e23          	sw	s11,28(sp)
  4008a0:	04112623          	sw	ra,76(sp)
  4008a4:	03312e23          	sw	s3,60(sp)
  4008a8:	00050a93          	mv	s5,a0
  4008ac:	00058493          	mv	s1,a1
  4008b0:	00060a13          	mv	s4,a2
  4008b4:	04d12e23          	sw	a3,92(sp)
  4008b8:	06e12023          	sw	a4,96(sp)
  4008bc:	07012423          	sw	a6,104(sp)
  4008c0:	07112623          	sw	a7,108(sp)
  4008c4:	00f12623          	sw	a5,12(sp)
  4008c8:	00000913          	li	s2,0
  4008cc:	00000413          	li	s0,0
  4008d0:	00a00b93          	li	s7,10
  4008d4:	02500b13          	li	s6,37
  4008d8:	07800c13          	li	s8,120
  4008dc:	06400c93          	li	s9,100
  4008e0:	06300d13          	li	s10,99
  4008e4:	07300d93          	li	s11,115
  4008e8:	012a07b3          	add	a5,s4,s2
  4008ec:	0007c583          	lbu	a1,0(a5)
  4008f0:	04059263          	bnez	a1,400934 <printfSCR+0xcc>
  4008f4:	04c12083          	lw	ra,76(sp)
  4008f8:	00040513          	mv	a0,s0
  4008fc:	04812403          	lw	s0,72(sp)
  400900:	04412483          	lw	s1,68(sp)
  400904:	04012903          	lw	s2,64(sp)
  400908:	03c12983          	lw	s3,60(sp)
  40090c:	03812a03          	lw	s4,56(sp)
  400910:	03412a83          	lw	s5,52(sp)
  400914:	03012b03          	lw	s6,48(sp)
  400918:	02c12b83          	lw	s7,44(sp)
  40091c:	02812c03          	lw	s8,40(sp)
  400920:	02412c83          	lw	s9,36(sp)
  400924:	02012d03          	lw	s10,32(sp)
  400928:	01c12d83          	lw	s11,28(sp)
  40092c:	07010113          	addi	sp,sp,112
  400930:	00008067          	ret
  400934:	00190993          	addi	s3,s2,1
  400938:	01759a63          	bne	a1,s7,40094c <printfSCR+0xe4>
  40093c:	fc047413          	andi	s0,s0,-64
  400940:	04040413          	addi	s0,s0,64
  400944:	00090993          	mv	s3,s2
  400948:	0740006f          	j	4009bc <printfSCR+0x154>
  40094c:	01540533          	add	a0,s0,s5
  400950:	0b659463          	bne	a1,s6,4009f8 <printfSCR+0x190>
  400954:	0017c783          	lbu	a5,1(a5)
  400958:	03879263          	bne	a5,s8,40097c <printfSCR+0x114>
  40095c:	00c12783          	lw	a5,12(sp)
  400960:	00048613          	mv	a2,s1
  400964:	0007a583          	lw	a1,0(a5)
  400968:	00478713          	addi	a4,a5,4
  40096c:	00e12623          	sw	a4,12(sp)
  400970:	bc5ff0ef          	jal	400534 <printHex>
  400974:	00a40433          	add	s0,s0,a0
  400978:	0440006f          	j	4009bc <printfSCR+0x154>
  40097c:	03979063          	bne	a5,s9,40099c <printfSCR+0x134>
  400980:	00c12783          	lw	a5,12(sp)
  400984:	00048613          	mv	a2,s1
  400988:	0007a583          	lw	a1,0(a5)
  40098c:	00478713          	addi	a4,a5,4
  400990:	00e12623          	sw	a4,12(sp)
  400994:	c41ff0ef          	jal	4005d4 <printDec>
  400998:	fddff06f          	j	400974 <printfSCR+0x10c>
  40099c:	03a79463          	bne	a5,s10,4009c4 <printfSCR+0x15c>
  4009a0:	00c12783          	lw	a5,12(sp)
  4009a4:	00048613          	mv	a2,s1
  4009a8:	00140413          	addi	s0,s0,1
  4009ac:	0007c583          	lbu	a1,0(a5)
  4009b0:	00478713          	addi	a4,a5,4
  4009b4:	00e12623          	sw	a4,12(sp)
  4009b8:	a8dff0ef          	jal	400444 <putch>
  4009bc:	00198913          	addi	s2,s3,1
  4009c0:	f29ff06f          	j	4008e8 <printfSCR+0x80>
  4009c4:	03b79063          	bne	a5,s11,4009e4 <printfSCR+0x17c>
  4009c8:	00c12783          	lw	a5,12(sp)
  4009cc:	00048613          	mv	a2,s1
  4009d0:	0007a583          	lw	a1,0(a5)
  4009d4:	00478713          	addi	a4,a5,4
  4009d8:	00e12623          	sw	a4,12(sp)
  4009dc:	a99ff0ef          	jal	400474 <printString>
  4009e0:	f95ff06f          	j	400974 <printfSCR+0x10c>
  4009e4:	00048613          	mv	a2,s1
  4009e8:	000b0593          	mv	a1,s6
  4009ec:	a59ff0ef          	jal	400444 <putch>
  4009f0:	00140413          	addi	s0,s0,1
  4009f4:	f51ff06f          	j	400944 <printfSCR+0xdc>
  4009f8:	00048613          	mv	a2,s1
  4009fc:	ff1ff06f          	j	4009ec <printfSCR+0x184>

00400a00 <clearScreen>:
  400a00:	ff010113          	addi	sp,sp,-16
  400a04:	00812423          	sw	s0,8(sp)
  400a08:	00912223          	sw	s1,4(sp)
  400a0c:	00112623          	sw	ra,12(sp)
  400a10:	00000413          	li	s0,0
  400a14:	4c000493          	li	s1,1216
  400a18:	00040513          	mv	a0,s0
  400a1c:	00f00613          	li	a2,15
  400a20:	02000593          	li	a1,32
  400a24:	00140413          	addi	s0,s0,1
  400a28:	a1dff0ef          	jal	400444 <putch>
  400a2c:	fe9416e3          	bne	s0,s1,400a18 <clearScreen+0x18>
  400a30:	00c12083          	lw	ra,12(sp)
  400a34:	00812403          	lw	s0,8(sp)
  400a38:	004017b7          	lui	a5,0x401
  400a3c:	c4079c23          	sh	zero,-936(a5) # 400c58 <screenPos>
  400a40:	00412483          	lw	s1,4(sp)
  400a44:	01010113          	addi	sp,sp,16
  400a48:	00008067          	ret

00400a4c <resetScreenVector>:
  400a4c:	004017b7          	lui	a5,0x401
  400a50:	c4079c23          	sh	zero,-936(a5) # 400c58 <screenPos>
  400a54:	00008067          	ret
  400a58:	0334                	.insn	2, 0x0334
  400a5a:	0040                	.insn	2, 0x0040
  400a5c:	0334                	.insn	2, 0x0334
  400a5e:	0040                	.insn	2, 0x0040
  400a60:	0334                	.insn	2, 0x0334
  400a62:	0040                	.insn	2, 0x0040
  400a64:	0334                	.insn	2, 0x0334
  400a66:	0040                	.insn	2, 0x0040
  400a68:	0334                	.insn	2, 0x0334
  400a6a:	0040                	.insn	2, 0x0040
  400a6c:	0334                	.insn	2, 0x0334
  400a6e:	0040                	.insn	2, 0x0040
  400a70:	0334                	.insn	2, 0x0334
  400a72:	0040                	.insn	2, 0x0040
  400a74:	0334                	.insn	2, 0x0334
  400a76:	0040                	.insn	2, 0x0040
  400a78:	0334                	.insn	2, 0x0334
  400a7a:	0040                	.insn	2, 0x0040
  400a7c:	0334                	.insn	2, 0x0334
  400a7e:	0040                	.insn	2, 0x0040
  400a80:	03cc                	.insn	2, 0x03cc
  400a82:	0040                	.insn	2, 0x0040
  400a84:	02f8                	.insn	2, 0x02f8
  400a86:	0040                	.insn	2, 0x0040
  400a88:	033c                	.insn	2, 0x033c
  400a8a:	0040                	.insn	2, 0x0040
  400a8c:	0344                	.insn	2, 0x0344
  400a8e:	0040                	.insn	2, 0x0040
  400a90:	034c                	.insn	2, 0x034c
  400a92:	0040                	.insn	2, 0x0040
  400a94:	02f4                	.insn	2, 0x02f4
  400a96:	0040                	.insn	2, 0x0040
  400a98:	0354                	.insn	2, 0x0354
  400a9a:	0040                	.insn	2, 0x0040
  400a9c:	035c                	.insn	2, 0x035c
  400a9e:	0040                	.insn	2, 0x0040
  400aa0:	0364                	.insn	2, 0x0364
  400aa2:	0040                	.insn	2, 0x0040
  400aa4:	036c                	.insn	2, 0x036c
  400aa6:	0040                	.insn	2, 0x0040
  400aa8:	02f0                	.insn	2, 0x02f0
  400aaa:	0040                	.insn	2, 0x0040
  400aac:	0374                	.insn	2, 0x0374
  400aae:	0040                	.insn	2, 0x0040
  400ab0:	037c                	.insn	2, 0x037c
  400ab2:	0040                	.insn	2, 0x0040
  400ab4:	0384                	.insn	2, 0x0384
  400ab6:	0040                	.insn	2, 0x0040
  400ab8:	038c                	.insn	2, 0x038c
  400aba:	0040                	.insn	2, 0x0040
  400abc:	0394                	.insn	2, 0x0394
  400abe:	0040                	.insn	2, 0x0040
  400ac0:	039c                	.insn	2, 0x039c
  400ac2:	0040                	.insn	2, 0x0040
  400ac4:	02f0                	.insn	2, 0x02f0
  400ac6:	0040                	.insn	2, 0x0040
  400ac8:	03a4                	.insn	2, 0x03a4
  400aca:	0040                	.insn	2, 0x0040
  400acc:	03a4                	.insn	2, 0x03a4
  400ace:	0040                	.insn	2, 0x0040
  400ad0:	03a4                	.insn	2, 0x03a4
  400ad2:	0040                	.insn	2, 0x0040
  400ad4:	03a4                	.insn	2, 0x03a4
  400ad6:	0040                	.insn	2, 0x0040
  400ad8:	03a4                	.insn	2, 0x03a4
  400ada:	0040                	.insn	2, 0x0040
  400adc:	03a4                	.insn	2, 0x03a4
  400ade:	0040                	.insn	2, 0x0040
  400ae0:	03a4                	.insn	2, 0x03a4
  400ae2:	0040                	.insn	2, 0x0040
  400ae4:	03a4                	.insn	2, 0x03a4
  400ae6:	0040                	.insn	2, 0x0040
  400ae8:	03a4                	.insn	2, 0x03a4
  400aea:	0040                	.insn	2, 0x0040
  400aec:	03a4                	.insn	2, 0x03a4
  400aee:	0040                	.insn	2, 0x0040
  400af0:	03a4                	.insn	2, 0x03a4
  400af2:	0040                	.insn	2, 0x0040
  400af4:	03a4                	.insn	2, 0x03a4
  400af6:	0040                	.insn	2, 0x0040
  400af8:	02f0                	.insn	2, 0x02f0
  400afa:	0040                	.insn	2, 0x0040
  400afc:	02f0                	.insn	2, 0x02f0
  400afe:	0040                	.insn	2, 0x0040
  400b00:	02f0                	.insn	2, 0x02f0
  400b02:	0040                	.insn	2, 0x0040
  400b04:	02f0                	.insn	2, 0x02f0
  400b06:	0040                	.insn	2, 0x0040
  400b08:	02f0                	.insn	2, 0x02f0
  400b0a:	0040                	.insn	2, 0x0040
  400b0c:	02f0                	.insn	2, 0x02f0
  400b0e:	0040                	.insn	2, 0x0040
  400b10:	02f0                	.insn	2, 0x02f0
  400b12:	0040                	.insn	2, 0x0040
  400b14:	02f0                	.insn	2, 0x02f0
  400b16:	0040                	.insn	2, 0x0040
  400b18:	02f0                	.insn	2, 0x02f0
  400b1a:	0040                	.insn	2, 0x0040
  400b1c:	03ac                	.insn	2, 0x03ac
  400b1e:	0040                	.insn	2, 0x0040
  400b20:	03b4                	.insn	2, 0x03b4
  400b22:	0040                	.insn	2, 0x0040
  400b24:	03bc                	.insn	2, 0x03bc
  400b26:	0040                	.insn	2, 0x0040
  400b28:	03c4                	.insn	2, 0x03c4
  400b2a:	0040                	.insn	2, 0x0040
  400b2c:	2710                	.insn	2, 0x2710
  400b2e:	0000                	.insn	2, 0x
  400b30:	03e8                	.insn	2, 0x03e8
  400b32:	0000                	.insn	2, 0x
  400b34:	0064                	.insn	2, 0x0064
  400b36:	0000                	.insn	2, 0x
  400b38:	000a                	.insn	2, 0x000a
  400b3a:	0000                	.insn	2, 0x
  400b3c:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400b40 <main>:
  400b40:	004c5537          	lui	a0,0x4c5
  400b44:	ff010113          	addi	sp,sp,-16
  400b48:	b4050513          	addi	a0,a0,-1216 # 4c4b40 <_stack_end+0xc0b40>
  400b4c:	00000593          	li	a1,0
  400b50:	00812423          	sw	s0,8(sp)
  400b54:	00112623          	sw	ra,12(sp)
  400b58:	00000413          	li	s0,0
  400b5c:	e30ff0ef          	jal	40018c <set_timer_interrupt>
  400b60:	00140413          	addi	s0,s0,1
  400b64:	00f00613          	li	a2,15
  400b68:	00040593          	mv	a1,s0
  400b6c:	44000513          	li	a0,1088
  400b70:	9c5ff0ef          	jal	400534 <printHex>
  400b74:	fedff06f          	j	400b60 <main+0x20>
