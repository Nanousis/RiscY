
builds/build5/program.elf:     file format elf32-littleriscv


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
  400040:	31d000ef          	jal	400b5c <_etext>
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
  4001dc:	bb060613          	addi	a2,a2,-1104 # 400bb0 <_etext+0x54>
  4001e0:	00f00593          	li	a1,15
  4001e4:	04000513          	li	a0,64
  4001e8:	00112623          	sw	ra,12(sp)
  4001ec:	01212023          	sw	s2,0(sp)
  4001f0:	694000ef          	jal	400884 <printfSCR>
  4001f4:	08045463          	bgez	s0,40027c <c_trap_handler+0xc4>
  4001f8:	00401937          	lui	s2,0x401
  4001fc:	cb892683          	lw	a3,-840(s2) # 400cb8 <intCount>
  400200:	00401637          	lui	a2,0x401
  400204:	bd460613          	addi	a2,a2,-1068 # 400bd4 <_etext+0x78>
  400208:	00f00593          	li	a1,15
  40020c:	08000513          	li	a0,128
  400210:	674000ef          	jal	400884 <printfSCR>
  400214:	004007b7          	lui	a5,0x400
  400218:	00f4f463          	bgeu	s1,a5,400220 <c_trap_handler+0x68>
  40021c:	0000006f          	j	40021c <c_trap_handler+0x64>
  400220:	cb892783          	lw	a5,-840(s2)
  400224:	00178793          	addi	a5,a5,1 # 400001 <_start+0x1>
  400228:	caf92c23          	sw	a5,-840(s2)
  40022c:	800007b7          	lui	a5,0x80000
  400230:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
  400234:	0af41263          	bne	s0,a5,4002d8 <c_trap_handler+0x120>
  400238:	0200c7b7          	lui	a5,0x200c
  40023c:	02004737          	lui	a4,0x2004
  400240:	00072703          	lw	a4,0(a4) # 2004000 <MTIMECMP>
  400244:	ff87a683          	lw	a3,-8(a5) # 200bff8 <MTIME>
  400248:	00401637          	lui	a2,0x401
  40024c:	00f00593          	li	a1,15
  400250:	be460613          	addi	a2,a2,-1052 # 400be4 <_etext+0x88>
  400254:	0c000513          	li	a0,192
  400258:	62c000ef          	jal	400884 <printfSCR>
  40025c:	00812403          	lw	s0,8(sp)
  400260:	00c12083          	lw	ra,12(sp)
  400264:	00412483          	lw	s1,4(sp)
  400268:	00012903          	lw	s2,0(sp)
  40026c:	7d000513          	li	a0,2000
  400270:	00000593          	li	a1,0
  400274:	01010113          	addi	sp,sp,16
  400278:	f15ff06f          	j	40018c <set_timer_interrupt>
  40027c:	00800793          	li	a5,8
  400280:	02f40a63          	beq	s0,a5,4002b4 <c_trap_handler+0xfc>
  400284:	00b00793          	li	a5,11
  400288:	02f40c63          	beq	s0,a5,4002c0 <c_trap_handler+0x108>
  40028c:	00200793          	li	a5,2
  400290:	02f41e63          	bne	s0,a5,4002cc <c_trap_handler+0x114>
  400294:	00401537          	lui	a0,0x401
  400298:	c0850513          	addi	a0,a0,-1016 # 400c08 <_etext+0xac>
  40029c:	00812403          	lw	s0,8(sp)
  4002a0:	00c12083          	lw	ra,12(sp)
  4002a4:	00412483          	lw	s1,4(sp)
  4002a8:	00012903          	lw	s2,0(sp)
  4002ac:	01010113          	addi	sp,sp,16
  4002b0:	4380006f          	j	4006e8 <printf>
  4002b4:	00401537          	lui	a0,0x401
  4002b8:	c2050513          	addi	a0,a0,-992 # 400c20 <_etext+0xc4>
  4002bc:	fe1ff06f          	j	40029c <c_trap_handler+0xe4>
  4002c0:	00401537          	lui	a0,0x401
  4002c4:	c3c50513          	addi	a0,a0,-964 # 400c3c <_etext+0xe0>
  4002c8:	fd5ff06f          	j	40029c <c_trap_handler+0xe4>
  4002cc:	00401537          	lui	a0,0x401
  4002d0:	c5850513          	addi	a0,a0,-936 # 400c58 <_etext+0xfc>
  4002d4:	fc9ff06f          	j	40029c <c_trap_handler+0xe4>
  4002d8:	00c12083          	lw	ra,12(sp)
  4002dc:	00812403          	lw	s0,8(sp)
  4002e0:	00412483          	lw	s1,4(sp)
  4002e4:	00012903          	lw	s2,0(sp)
  4002e8:	01010113          	addi	sp,sp,16
  4002ec:	00008067          	ret

004002f0 <getUSBint>:
  4002f0:	100007b7          	lui	a5,0x10000
  4002f4:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
  4002f8:	00008067          	ret

004002fc <USBParser>:
  4002fc:	01d00793          	li	a5,29
  400300:	00a7ee63          	bltu	a5,a0,40031c <USBParser+0x20>
  400304:	00300793          	li	a5,3
  400308:	02a7ee63          	bltu	a5,a0,400344 <USBParser+0x48>
  40030c:	00000513          	li	a0,0
  400310:	00008067          	ret
  400314:	01b00513          	li	a0,27
  400318:	00008067          	ret
  40031c:	fe250793          	addi	a5,a0,-30
  400320:	0ff7f793          	zext.b	a5,a5
  400324:	03400713          	li	a4,52
  400328:	fef762e3          	bltu	a4,a5,40030c <USBParser+0x10>
  40032c:	00401737          	lui	a4,0x401
  400330:	00279793          	slli	a5,a5,0x2
  400334:	a7470713          	addi	a4,a4,-1420 # 400a74 <resetScreenVector+0xc>
  400338:	00e787b3          	add	a5,a5,a4
  40033c:	0007a783          	lw	a5,0(a5)
  400340:	00078067          	jr	a5
  400344:	05d50513          	addi	a0,a0,93
  400348:	0ff57513          	zext.b	a0,a0
  40034c:	00008067          	ret
  400350:	01350513          	addi	a0,a0,19
  400354:	ff5ff06f          	j	400348 <USBParser+0x4c>
  400358:	00800513          	li	a0,8
  40035c:	00008067          	ret
  400360:	00900513          	li	a0,9
  400364:	00008067          	ret
  400368:	02000513          	li	a0,32
  40036c:	00008067          	ret
  400370:	03d00513          	li	a0,61
  400374:	00008067          	ret
  400378:	05b00513          	li	a0,91
  40037c:	00008067          	ret
  400380:	05d00513          	li	a0,93
  400384:	00008067          	ret
  400388:	05c00513          	li	a0,92
  40038c:	00008067          	ret
  400390:	03b00513          	li	a0,59
  400394:	00008067          	ret
  400398:	02700513          	li	a0,39
  40039c:	00008067          	ret
  4003a0:	06000513          	li	a0,96
  4003a4:	00008067          	ret
  4003a8:	02c00513          	li	a0,44
  4003ac:	00008067          	ret
  4003b0:	02e00513          	li	a0,46
  4003b4:	00008067          	ret
  4003b8:	02f00513          	li	a0,47
  4003bc:	00008067          	ret
  4003c0:	04600513          	li	a0,70
  4003c4:	00008067          	ret
  4003c8:	05200513          	li	a0,82
  4003cc:	00008067          	ret
  4003d0:	04c00513          	li	a0,76
  4003d4:	00008067          	ret
  4003d8:	04400513          	li	a0,68
  4003dc:	00008067          	ret
  4003e0:	05500513          	li	a0,85
  4003e4:	00008067          	ret
  4003e8:	00a00513          	li	a0,10
  4003ec:	00008067          	ret

004003f0 <memcpy>:
  4003f0:	00000793          	li	a5,0
  4003f4:	00c7c463          	blt	a5,a2,4003fc <memcpy+0xc>
  4003f8:	00008067          	ret
  4003fc:	00f58733          	add	a4,a1,a5
  400400:	00074683          	lbu	a3,0(a4)
  400404:	00f50733          	add	a4,a0,a5
  400408:	00178793          	addi	a5,a5,1
  40040c:	00d70023          	sb	a3,0(a4)
  400410:	fe5ff06f          	j	4003f4 <memcpy+0x4>

00400414 <memset>:
  400414:	00c50633          	add	a2,a0,a2
  400418:	00050793          	mv	a5,a0
  40041c:	00c79463          	bne	a5,a2,400424 <memset+0x10>
  400420:	00008067          	ret
  400424:	00178793          	addi	a5,a5,1
  400428:	feb78fa3          	sb	a1,-1(a5)
  40042c:	ff1ff06f          	j	40041c <memset+0x8>

00400430 <getButtonDown>:
  400430:	890007b7          	lui	a5,0x89000
  400434:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
  400438:	00008067          	ret

0040043c <getButtonUp>:
  40043c:	890007b7          	lui	a5,0x89000
  400440:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
  400444:	00008067          	ret

00400448 <getButtonLeft>:
  400448:	890007b7          	lui	a5,0x89000
  40044c:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
  400450:	00008067          	ret

00400454 <getButtonRight>:
  400454:	890007b7          	lui	a5,0x89000
  400458:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
  40045c:	00008067          	ret

00400460 <putch>:
  400460:	4c000793          	li	a5,1216
  400464:	02a7e263          	bltu	a5,a0,400488 <putch+0x28>
  400468:	00861613          	slli	a2,a2,0x8
  40046c:	880007b7          	lui	a5,0x88000
  400470:	00151513          	slli	a0,a0,0x1
  400474:	00f50533          	add	a0,a0,a5
  400478:	00b665b3          	or	a1,a2,a1
  40047c:	00b51023          	sh	a1,0(a0)
  400480:	00100513          	li	a0,1
  400484:	00008067          	ret
  400488:	00000513          	li	a0,0
  40048c:	00008067          	ret

00400490 <printString>:
  400490:	fe010113          	addi	sp,sp,-32
  400494:	01312623          	sw	s3,12(sp)
  400498:	01412423          	sw	s4,8(sp)
  40049c:	00112e23          	sw	ra,28(sp)
  4004a0:	00812c23          	sw	s0,24(sp)
  4004a4:	00912a23          	sw	s1,20(sp)
  4004a8:	01212823          	sw	s2,16(sp)
  4004ac:	01512223          	sw	s5,4(sp)
  4004b0:	01612023          	sw	s6,0(sp)
  4004b4:	00050a13          	mv	s4,a0
  4004b8:	00058993          	mv	s3,a1
  4004bc:	06060c63          	beqz	a2,400534 <printString+0xa4>
  4004c0:	00060413          	mv	s0,a2
  4004c4:	00000913          	li	s2,0
  4004c8:	00000493          	li	s1,0
  4004cc:	00100a93          	li	s5,1
  4004d0:	00f00b13          	li	s6,15
  4004d4:	0280006f          	j	4004fc <printString+0x6c>
  4004d8:	00040613          	mv	a2,s0
  4004dc:	009a0533          	add	a0,s4,s1
  4004e0:	f81ff0ef          	jal	400460 <putch>
  4004e4:	06050263          	beqz	a0,400548 <printString+0xb8>
  4004e8:	00148493          	addi	s1,s1,1
  4004ec:	01591863          	bne	s2,s5,4004fc <printString+0x6c>
  4004f0:	00140413          	addi	s0,s0,1
  4004f4:	0ff47413          	zext.b	s0,s0
  4004f8:	048b6463          	bltu	s6,s0,400540 <printString+0xb0>
  4004fc:	009987b3          	add	a5,s3,s1
  400500:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
  400504:	00048513          	mv	a0,s1
  400508:	fc0598e3          	bnez	a1,4004d8 <printString+0x48>
  40050c:	01c12083          	lw	ra,28(sp)
  400510:	01812403          	lw	s0,24(sp)
  400514:	01412483          	lw	s1,20(sp)
  400518:	01012903          	lw	s2,16(sp)
  40051c:	00c12983          	lw	s3,12(sp)
  400520:	00812a03          	lw	s4,8(sp)
  400524:	00412a83          	lw	s5,4(sp)
  400528:	00012b03          	lw	s6,0(sp)
  40052c:	02010113          	addi	sp,sp,32
  400530:	00008067          	ret
  400534:	00100913          	li	s2,1
  400538:	00090413          	mv	s0,s2
  40053c:	f8dff06f          	j	4004c8 <printString+0x38>
  400540:	00090413          	mv	s0,s2
  400544:	fb9ff06f          	j	4004fc <printString+0x6c>
  400548:	00000513          	li	a0,0
  40054c:	fc1ff06f          	j	40050c <printString+0x7c>

00400550 <printHex>:
  400550:	fd010113          	addi	sp,sp,-48
  400554:	02812423          	sw	s0,40(sp)
  400558:	00058413          	mv	s0,a1
  40055c:	004015b7          	lui	a1,0x401
  400560:	02912223          	sw	s1,36(sp)
  400564:	03212023          	sw	s2,32(sp)
  400568:	c9c58593          	addi	a1,a1,-868 # 400c9c <_etext+0x140>
  40056c:	00050493          	mv	s1,a0
  400570:	00060913          	mv	s2,a2
  400574:	00c10513          	addi	a0,sp,12
  400578:	01100613          	li	a2,17
  40057c:	02112623          	sw	ra,44(sp)
  400580:	e71ff0ef          	jal	4003f0 <memcpy>
  400584:	202027b7          	lui	a5,0x20202
  400588:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
  40058c:	00f12023          	sw	a5,0(sp)
  400590:	00f12223          	sw	a5,4(sp)
  400594:	00010423          	sb	zero,8(sp)
  400598:	00700793          	li	a5,7
  40059c:	00010593          	mv	a1,sp
  4005a0:	fff00693          	li	a3,-1
  4005a4:	00f47713          	andi	a4,s0,15
  4005a8:	02070713          	addi	a4,a4,32
  4005ac:	00270733          	add	a4,a4,sp
  4005b0:	fec74703          	lbu	a4,-20(a4)
  4005b4:	00f58633          	add	a2,a1,a5
  4005b8:	fff78793          	addi	a5,a5,-1
  4005bc:	00e60023          	sb	a4,0(a2)
  4005c0:	40445413          	srai	s0,s0,0x4
  4005c4:	fed790e3          	bne	a5,a3,4005a4 <printHex+0x54>
  4005c8:	00090613          	mv	a2,s2
  4005cc:	00048513          	mv	a0,s1
  4005d0:	ec1ff0ef          	jal	400490 <printString>
  4005d4:	02c12083          	lw	ra,44(sp)
  4005d8:	02812403          	lw	s0,40(sp)
  4005dc:	02412483          	lw	s1,36(sp)
  4005e0:	02012903          	lw	s2,32(sp)
  4005e4:	0ff57513          	zext.b	a0,a0
  4005e8:	03010113          	addi	sp,sp,48
  4005ec:	00008067          	ret

004005f0 <printDec>:
  4005f0:	fd010113          	addi	sp,sp,-48
  4005f4:	02812423          	sw	s0,40(sp)
  4005f8:	00058413          	mv	s0,a1
  4005fc:	004015b7          	lui	a1,0x401
  400600:	02912223          	sw	s1,36(sp)
  400604:	03212023          	sw	s2,32(sp)
  400608:	00050493          	mv	s1,a0
  40060c:	00060913          	mv	s2,a2
  400610:	b4858593          	addi	a1,a1,-1208 # 400b48 <resetScreenVector+0xe0>
  400614:	01400613          	li	a2,20
  400618:	00c10513          	addi	a0,sp,12
  40061c:	02112623          	sw	ra,44(sp)
  400620:	dd1ff0ef          	jal	4003f0 <memcpy>
  400624:	000187b7          	lui	a5,0x18
  400628:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  40062c:	0287fa63          	bgeu	a5,s0,400660 <printDec+0x70>
  400630:	004015b7          	lui	a1,0x401
  400634:	00090613          	mv	a2,s2
  400638:	cb058593          	addi	a1,a1,-848 # 400cb0 <_etext+0x154>
  40063c:	00048513          	mv	a0,s1
  400640:	e51ff0ef          	jal	400490 <printString>
  400644:	02c12083          	lw	ra,44(sp)
  400648:	02812403          	lw	s0,40(sp)
  40064c:	02412483          	lw	s1,36(sp)
  400650:	02012903          	lw	s2,32(sp)
  400654:	0ff57513          	zext.b	a0,a0
  400658:	03010113          	addi	sp,sp,48
  40065c:	00008067          	ret
  400660:	00100613          	li	a2,1
  400664:	00c10713          	addi	a4,sp,12
  400668:	00000793          	li	a5,0
  40066c:	00060513          	mv	a0,a2
  400670:	00072583          	lw	a1,0(a4)
  400674:	00000693          	li	a3,0
  400678:	06b47263          	bgeu	s0,a1,4006dc <printDec+0xec>
  40067c:	00069663          	bnez	a3,400688 <printDec+0x98>
  400680:	00a58463          	beq	a1,a0,400688 <printDec+0x98>
  400684:	00061e63          	bnez	a2,4006a0 <printDec+0xb0>
  400688:	02078613          	addi	a2,a5,32
  40068c:	00260633          	add	a2,a2,sp
  400690:	03068693          	addi	a3,a3,48
  400694:	fed60223          	sb	a3,-28(a2)
  400698:	00178793          	addi	a5,a5,1
  40069c:	00000613          	li	a2,0
  4006a0:	00470713          	addi	a4,a4,4
  4006a4:	02010693          	addi	a3,sp,32
  4006a8:	fcd714e3          	bne	a4,a3,400670 <printDec+0x80>
  4006ac:	00060c63          	beqz	a2,4006c4 <printDec+0xd4>
  4006b0:	02078713          	addi	a4,a5,32
  4006b4:	00270733          	add	a4,a4,sp
  4006b8:	03000693          	li	a3,48
  4006bc:	fed70223          	sb	a3,-28(a4)
  4006c0:	00178793          	addi	a5,a5,1
  4006c4:	02078793          	addi	a5,a5,32
  4006c8:	002787b3          	add	a5,a5,sp
  4006cc:	fe078223          	sb	zero,-28(a5)
  4006d0:	00090613          	mv	a2,s2
  4006d4:	00410593          	addi	a1,sp,4
  4006d8:	f65ff06f          	j	40063c <printDec+0x4c>
  4006dc:	40b40433          	sub	s0,s0,a1
  4006e0:	00168693          	addi	a3,a3,1
  4006e4:	f95ff06f          	j	400678 <printDec+0x88>

004006e8 <printf>:
  4006e8:	fa010113          	addi	sp,sp,-96
  4006ec:	04f12a23          	sw	a5,84(sp)
  4006f0:	04410793          	addi	a5,sp,68
  4006f4:	02812c23          	sw	s0,56(sp)
  4006f8:	02912a23          	sw	s1,52(sp)
  4006fc:	03212823          	sw	s2,48(sp)
  400700:	03312623          	sw	s3,44(sp)
  400704:	03412423          	sw	s4,40(sp)
  400708:	03512223          	sw	s5,36(sp)
  40070c:	03612023          	sw	s6,32(sp)
  400710:	01812c23          	sw	s8,24(sp)
  400714:	02112e23          	sw	ra,60(sp)
  400718:	01712e23          	sw	s7,28(sp)
  40071c:	00050493          	mv	s1,a0
  400720:	04b12223          	sw	a1,68(sp)
  400724:	04c12423          	sw	a2,72(sp)
  400728:	04d12623          	sw	a3,76(sp)
  40072c:	04e12823          	sw	a4,80(sp)
  400730:	05012c23          	sw	a6,88(sp)
  400734:	05112e23          	sw	a7,92(sp)
  400738:	00f12623          	sw	a5,12(sp)
  40073c:	00000c13          	li	s8,0
  400740:	00401437          	lui	s0,0x401
  400744:	00a00993          	li	s3,10
  400748:	02500913          	li	s2,37
  40074c:	07800a13          	li	s4,120
  400750:	06400a93          	li	s5,100
  400754:	06300b13          	li	s6,99
  400758:	018487b3          	add	a5,s1,s8
  40075c:	0007c583          	lbu	a1,0(a5)
  400760:	cbc41503          	lh	a0,-836(s0) # 400cbc <screenPos>
  400764:	02059a63          	bnez	a1,400798 <printf+0xb0>
  400768:	03c12083          	lw	ra,60(sp)
  40076c:	03812403          	lw	s0,56(sp)
  400770:	03412483          	lw	s1,52(sp)
  400774:	03012903          	lw	s2,48(sp)
  400778:	02c12983          	lw	s3,44(sp)
  40077c:	02812a03          	lw	s4,40(sp)
  400780:	02412a83          	lw	s5,36(sp)
  400784:	02012b03          	lw	s6,32(sp)
  400788:	01c12b83          	lw	s7,28(sp)
  40078c:	01812c03          	lw	s8,24(sp)
  400790:	06010113          	addi	sp,sp,96
  400794:	00008067          	ret
  400798:	001c0b93          	addi	s7,s8,1
  40079c:	01359e63          	bne	a1,s3,4007b8 <printf+0xd0>
  4007a0:	fc057793          	andi	a5,a0,-64
  4007a4:	04078793          	addi	a5,a5,64
  4007a8:	01079793          	slli	a5,a5,0x10
  4007ac:	4107d793          	srai	a5,a5,0x10
  4007b0:	000c0b93          	mv	s7,s8
  4007b4:	0380006f          	j	4007ec <printf+0x104>
  4007b8:	0d259263          	bne	a1,s2,40087c <printf+0x194>
  4007bc:	0017c783          	lbu	a5,1(a5)
  4007c0:	03479c63          	bne	a5,s4,4007f8 <printf+0x110>
  4007c4:	00c12783          	lw	a5,12(sp)
  4007c8:	00f00613          	li	a2,15
  4007cc:	0007a583          	lw	a1,0(a5)
  4007d0:	00478713          	addi	a4,a5,4
  4007d4:	00e12623          	sw	a4,12(sp)
  4007d8:	d79ff0ef          	jal	400550 <printHex>
  4007dc:	cbc45783          	lhu	a5,-836(s0)
  4007e0:	00f507b3          	add	a5,a0,a5
  4007e4:	01079793          	slli	a5,a5,0x10
  4007e8:	4107d793          	srai	a5,a5,0x10
  4007ec:	caf41e23          	sh	a5,-836(s0)
  4007f0:	001b8c13          	addi	s8,s7,1
  4007f4:	f65ff06f          	j	400758 <printf+0x70>
  4007f8:	03579063          	bne	a5,s5,400818 <printf+0x130>
  4007fc:	00c12783          	lw	a5,12(sp)
  400800:	00f00613          	li	a2,15
  400804:	0007a583          	lw	a1,0(a5)
  400808:	00478713          	addi	a4,a5,4
  40080c:	00e12623          	sw	a4,12(sp)
  400810:	de1ff0ef          	jal	4005f0 <printDec>
  400814:	fc9ff06f          	j	4007dc <printf+0xf4>
  400818:	03679463          	bne	a5,s6,400840 <printf+0x158>
  40081c:	00c12783          	lw	a5,12(sp)
  400820:	00f00613          	li	a2,15
  400824:	0007c583          	lbu	a1,0(a5)
  400828:	00478713          	addi	a4,a5,4
  40082c:	00e12623          	sw	a4,12(sp)
  400830:	c31ff0ef          	jal	400460 <putch>
  400834:	cbc45783          	lhu	a5,-836(s0)
  400838:	00178793          	addi	a5,a5,1
  40083c:	fa9ff06f          	j	4007e4 <printf+0xfc>
  400840:	07300713          	li	a4,115
  400844:	02e79063          	bne	a5,a4,400864 <printf+0x17c>
  400848:	00c12783          	lw	a5,12(sp)
  40084c:	00f00613          	li	a2,15
  400850:	0007a583          	lw	a1,0(a5)
  400854:	00478713          	addi	a4,a5,4
  400858:	00e12623          	sw	a4,12(sp)
  40085c:	c35ff0ef          	jal	400490 <printString>
  400860:	f7dff06f          	j	4007dc <printf+0xf4>
  400864:	00f00613          	li	a2,15
  400868:	00090593          	mv	a1,s2
  40086c:	bf5ff0ef          	jal	400460 <putch>
  400870:	cbc45783          	lhu	a5,-836(s0)
  400874:	00178793          	addi	a5,a5,1
  400878:	f31ff06f          	j	4007a8 <printf+0xc0>
  40087c:	00f00613          	li	a2,15
  400880:	fedff06f          	j	40086c <printf+0x184>

00400884 <printfSCR>:
  400884:	f9010113          	addi	sp,sp,-112
  400888:	06f12223          	sw	a5,100(sp)
  40088c:	05c10793          	addi	a5,sp,92
  400890:	04812423          	sw	s0,72(sp)
  400894:	04912223          	sw	s1,68(sp)
  400898:	05212023          	sw	s2,64(sp)
  40089c:	03412c23          	sw	s4,56(sp)
  4008a0:	03512a23          	sw	s5,52(sp)
  4008a4:	03612823          	sw	s6,48(sp)
  4008a8:	03712623          	sw	s7,44(sp)
  4008ac:	03812423          	sw	s8,40(sp)
  4008b0:	03912223          	sw	s9,36(sp)
  4008b4:	03a12023          	sw	s10,32(sp)
  4008b8:	01b12e23          	sw	s11,28(sp)
  4008bc:	04112623          	sw	ra,76(sp)
  4008c0:	03312e23          	sw	s3,60(sp)
  4008c4:	00050a93          	mv	s5,a0
  4008c8:	00058493          	mv	s1,a1
  4008cc:	00060a13          	mv	s4,a2
  4008d0:	04d12e23          	sw	a3,92(sp)
  4008d4:	06e12023          	sw	a4,96(sp)
  4008d8:	07012423          	sw	a6,104(sp)
  4008dc:	07112623          	sw	a7,108(sp)
  4008e0:	00f12623          	sw	a5,12(sp)
  4008e4:	00000913          	li	s2,0
  4008e8:	00000413          	li	s0,0
  4008ec:	00a00b93          	li	s7,10
  4008f0:	02500b13          	li	s6,37
  4008f4:	07800c13          	li	s8,120
  4008f8:	06400c93          	li	s9,100
  4008fc:	06300d13          	li	s10,99
  400900:	07300d93          	li	s11,115
  400904:	012a07b3          	add	a5,s4,s2
  400908:	0007c583          	lbu	a1,0(a5)
  40090c:	04059263          	bnez	a1,400950 <printfSCR+0xcc>
  400910:	04c12083          	lw	ra,76(sp)
  400914:	00040513          	mv	a0,s0
  400918:	04812403          	lw	s0,72(sp)
  40091c:	04412483          	lw	s1,68(sp)
  400920:	04012903          	lw	s2,64(sp)
  400924:	03c12983          	lw	s3,60(sp)
  400928:	03812a03          	lw	s4,56(sp)
  40092c:	03412a83          	lw	s5,52(sp)
  400930:	03012b03          	lw	s6,48(sp)
  400934:	02c12b83          	lw	s7,44(sp)
  400938:	02812c03          	lw	s8,40(sp)
  40093c:	02412c83          	lw	s9,36(sp)
  400940:	02012d03          	lw	s10,32(sp)
  400944:	01c12d83          	lw	s11,28(sp)
  400948:	07010113          	addi	sp,sp,112
  40094c:	00008067          	ret
  400950:	00190993          	addi	s3,s2,1
  400954:	01759a63          	bne	a1,s7,400968 <printfSCR+0xe4>
  400958:	fc047413          	andi	s0,s0,-64
  40095c:	04040413          	addi	s0,s0,64
  400960:	00090993          	mv	s3,s2
  400964:	0740006f          	j	4009d8 <printfSCR+0x154>
  400968:	01540533          	add	a0,s0,s5
  40096c:	0b659463          	bne	a1,s6,400a14 <printfSCR+0x190>
  400970:	0017c783          	lbu	a5,1(a5)
  400974:	03879263          	bne	a5,s8,400998 <printfSCR+0x114>
  400978:	00c12783          	lw	a5,12(sp)
  40097c:	00048613          	mv	a2,s1
  400980:	0007a583          	lw	a1,0(a5)
  400984:	00478713          	addi	a4,a5,4
  400988:	00e12623          	sw	a4,12(sp)
  40098c:	bc5ff0ef          	jal	400550 <printHex>
  400990:	00a40433          	add	s0,s0,a0
  400994:	0440006f          	j	4009d8 <printfSCR+0x154>
  400998:	03979063          	bne	a5,s9,4009b8 <printfSCR+0x134>
  40099c:	00c12783          	lw	a5,12(sp)
  4009a0:	00048613          	mv	a2,s1
  4009a4:	0007a583          	lw	a1,0(a5)
  4009a8:	00478713          	addi	a4,a5,4
  4009ac:	00e12623          	sw	a4,12(sp)
  4009b0:	c41ff0ef          	jal	4005f0 <printDec>
  4009b4:	fddff06f          	j	400990 <printfSCR+0x10c>
  4009b8:	03a79463          	bne	a5,s10,4009e0 <printfSCR+0x15c>
  4009bc:	00c12783          	lw	a5,12(sp)
  4009c0:	00048613          	mv	a2,s1
  4009c4:	00140413          	addi	s0,s0,1
  4009c8:	0007c583          	lbu	a1,0(a5)
  4009cc:	00478713          	addi	a4,a5,4
  4009d0:	00e12623          	sw	a4,12(sp)
  4009d4:	a8dff0ef          	jal	400460 <putch>
  4009d8:	00198913          	addi	s2,s3,1
  4009dc:	f29ff06f          	j	400904 <printfSCR+0x80>
  4009e0:	03b79063          	bne	a5,s11,400a00 <printfSCR+0x17c>
  4009e4:	00c12783          	lw	a5,12(sp)
  4009e8:	00048613          	mv	a2,s1
  4009ec:	0007a583          	lw	a1,0(a5)
  4009f0:	00478713          	addi	a4,a5,4
  4009f4:	00e12623          	sw	a4,12(sp)
  4009f8:	a99ff0ef          	jal	400490 <printString>
  4009fc:	f95ff06f          	j	400990 <printfSCR+0x10c>
  400a00:	00048613          	mv	a2,s1
  400a04:	000b0593          	mv	a1,s6
  400a08:	a59ff0ef          	jal	400460 <putch>
  400a0c:	00140413          	addi	s0,s0,1
  400a10:	f51ff06f          	j	400960 <printfSCR+0xdc>
  400a14:	00048613          	mv	a2,s1
  400a18:	ff1ff06f          	j	400a08 <printfSCR+0x184>

00400a1c <clearScreen>:
  400a1c:	ff010113          	addi	sp,sp,-16
  400a20:	00812423          	sw	s0,8(sp)
  400a24:	00912223          	sw	s1,4(sp)
  400a28:	00112623          	sw	ra,12(sp)
  400a2c:	00000413          	li	s0,0
  400a30:	4c000493          	li	s1,1216
  400a34:	00040513          	mv	a0,s0
  400a38:	00f00613          	li	a2,15
  400a3c:	02000593          	li	a1,32
  400a40:	00140413          	addi	s0,s0,1
  400a44:	a1dff0ef          	jal	400460 <putch>
  400a48:	fe9416e3          	bne	s0,s1,400a34 <clearScreen+0x18>
  400a4c:	00c12083          	lw	ra,12(sp)
  400a50:	00812403          	lw	s0,8(sp)
  400a54:	004017b7          	lui	a5,0x401
  400a58:	ca079e23          	sh	zero,-836(a5) # 400cbc <screenPos>
  400a5c:	00412483          	lw	s1,4(sp)
  400a60:	01010113          	addi	sp,sp,16
  400a64:	00008067          	ret

00400a68 <resetScreenVector>:
  400a68:	004017b7          	lui	a5,0x401
  400a6c:	ca079e23          	sh	zero,-836(a5) # 400cbc <screenPos>
  400a70:	00008067          	ret
  400a74:	0350                	.insn	2, 0x0350
  400a76:	0040                	.insn	2, 0x0040
  400a78:	0350                	.insn	2, 0x0350
  400a7a:	0040                	.insn	2, 0x0040
  400a7c:	0350                	.insn	2, 0x0350
  400a7e:	0040                	.insn	2, 0x0040
  400a80:	0350                	.insn	2, 0x0350
  400a82:	0040                	.insn	2, 0x0040
  400a84:	0350                	.insn	2, 0x0350
  400a86:	0040                	.insn	2, 0x0040
  400a88:	0350                	.insn	2, 0x0350
  400a8a:	0040                	.insn	2, 0x0040
  400a8c:	0350                	.insn	2, 0x0350
  400a8e:	0040                	.insn	2, 0x0040
  400a90:	0350                	.insn	2, 0x0350
  400a92:	0040                	.insn	2, 0x0040
  400a94:	0350                	.insn	2, 0x0350
  400a96:	0040                	.insn	2, 0x0040
  400a98:	0350                	.insn	2, 0x0350
  400a9a:	0040                	.insn	2, 0x0040
  400a9c:	03e8                	.insn	2, 0x03e8
  400a9e:	0040                	.insn	2, 0x0040
  400aa0:	0314                	.insn	2, 0x0314
  400aa2:	0040                	.insn	2, 0x0040
  400aa4:	0358                	.insn	2, 0x0358
  400aa6:	0040                	.insn	2, 0x0040
  400aa8:	0360                	.insn	2, 0x0360
  400aaa:	0040                	.insn	2, 0x0040
  400aac:	0368                	.insn	2, 0x0368
  400aae:	0040                	.insn	2, 0x0040
  400ab0:	0310                	.insn	2, 0x0310
  400ab2:	0040                	.insn	2, 0x0040
  400ab4:	0370                	.insn	2, 0x0370
  400ab6:	0040                	.insn	2, 0x0040
  400ab8:	0378                	.insn	2, 0x0378
  400aba:	0040                	.insn	2, 0x0040
  400abc:	0380                	.insn	2, 0x0380
  400abe:	0040                	.insn	2, 0x0040
  400ac0:	0388                	.insn	2, 0x0388
  400ac2:	0040                	.insn	2, 0x0040
  400ac4:	030c                	.insn	2, 0x030c
  400ac6:	0040                	.insn	2, 0x0040
  400ac8:	0390                	.insn	2, 0x0390
  400aca:	0040                	.insn	2, 0x0040
  400acc:	0398                	.insn	2, 0x0398
  400ace:	0040                	.insn	2, 0x0040
  400ad0:	03a0                	.insn	2, 0x03a0
  400ad2:	0040                	.insn	2, 0x0040
  400ad4:	03a8                	.insn	2, 0x03a8
  400ad6:	0040                	.insn	2, 0x0040
  400ad8:	03b0                	.insn	2, 0x03b0
  400ada:	0040                	.insn	2, 0x0040
  400adc:	03b8                	.insn	2, 0x03b8
  400ade:	0040                	.insn	2, 0x0040
  400ae0:	030c                	.insn	2, 0x030c
  400ae2:	0040                	.insn	2, 0x0040
  400ae4:	03c0                	.insn	2, 0x03c0
  400ae6:	0040                	.insn	2, 0x0040
  400ae8:	03c0                	.insn	2, 0x03c0
  400aea:	0040                	.insn	2, 0x0040
  400aec:	03c0                	.insn	2, 0x03c0
  400aee:	0040                	.insn	2, 0x0040
  400af0:	03c0                	.insn	2, 0x03c0
  400af2:	0040                	.insn	2, 0x0040
  400af4:	03c0                	.insn	2, 0x03c0
  400af6:	0040                	.insn	2, 0x0040
  400af8:	03c0                	.insn	2, 0x03c0
  400afa:	0040                	.insn	2, 0x0040
  400afc:	03c0                	.insn	2, 0x03c0
  400afe:	0040                	.insn	2, 0x0040
  400b00:	03c0                	.insn	2, 0x03c0
  400b02:	0040                	.insn	2, 0x0040
  400b04:	03c0                	.insn	2, 0x03c0
  400b06:	0040                	.insn	2, 0x0040
  400b08:	03c0                	.insn	2, 0x03c0
  400b0a:	0040                	.insn	2, 0x0040
  400b0c:	03c0                	.insn	2, 0x03c0
  400b0e:	0040                	.insn	2, 0x0040
  400b10:	03c0                	.insn	2, 0x03c0
  400b12:	0040                	.insn	2, 0x0040
  400b14:	030c                	.insn	2, 0x030c
  400b16:	0040                	.insn	2, 0x0040
  400b18:	030c                	.insn	2, 0x030c
  400b1a:	0040                	.insn	2, 0x0040
  400b1c:	030c                	.insn	2, 0x030c
  400b1e:	0040                	.insn	2, 0x0040
  400b20:	030c                	.insn	2, 0x030c
  400b22:	0040                	.insn	2, 0x0040
  400b24:	030c                	.insn	2, 0x030c
  400b26:	0040                	.insn	2, 0x0040
  400b28:	030c                	.insn	2, 0x030c
  400b2a:	0040                	.insn	2, 0x0040
  400b2c:	030c                	.insn	2, 0x030c
  400b2e:	0040                	.insn	2, 0x0040
  400b30:	030c                	.insn	2, 0x030c
  400b32:	0040                	.insn	2, 0x0040
  400b34:	030c                	.insn	2, 0x030c
  400b36:	0040                	.insn	2, 0x0040
  400b38:	03c8                	.insn	2, 0x03c8
  400b3a:	0040                	.insn	2, 0x0040
  400b3c:	03d0                	.insn	2, 0x03d0
  400b3e:	0040                	.insn	2, 0x0040
  400b40:	03d8                	.insn	2, 0x03d8
  400b42:	0040                	.insn	2, 0x0040
  400b44:	03e0                	.insn	2, 0x03e0
  400b46:	0040                	.insn	2, 0x0040
  400b48:	2710                	.insn	2, 0x2710
  400b4a:	0000                	.insn	2, 0x
  400b4c:	03e8                	.insn	2, 0x03e8
  400b4e:	0000                	.insn	2, 0x
  400b50:	0064                	.insn	2, 0x0064
  400b52:	0000                	.insn	2, 0x
  400b54:	000a                	.insn	2, 0x000a
  400b56:	0000                	.insn	2, 0x
  400b58:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400b5c <main>:
  400b5c:	ff010113          	addi	sp,sp,-16
  400b60:	7d000513          	li	a0,2000
  400b64:	00000593          	li	a1,0
  400b68:	00812423          	sw	s0,8(sp)
  400b6c:	00912223          	sw	s1,4(sp)
  400b70:	00112623          	sw	ra,12(sp)
  400b74:	00000413          	li	s0,0
  400b78:	e14ff0ef          	jal	40018c <set_timer_interrupt>
  400b7c:	004014b7          	lui	s1,0x401
  400b80:	00140413          	addi	s0,s0,1
  400b84:	00141693          	slli	a3,s0,0x1
  400b88:	c7048613          	addi	a2,s1,-912 # 400c70 <main+0x114>
  400b8c:	40f6d693          	srai	a3,a3,0xf
  400b90:	00f00593          	li	a1,15
  400b94:	40000513          	li	a0,1024
  400b98:	cedff0ef          	jal	400884 <printfSCR>
  400b9c:	00f00613          	li	a2,15
  400ba0:	00040593          	mv	a1,s0
  400ba4:	44000513          	li	a0,1088
  400ba8:	9a9ff0ef          	jal	400550 <printHex>
  400bac:	fd5ff06f          	j	400b80 <main+0x24>
