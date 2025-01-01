
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
  400040:	261000ef          	jal	400aa0 <_etext>
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
  400078:	f8010113          	addi	sp,sp,-128
  40007c:	06112e23          	sw	ra,124(sp)
  400080:	06512c23          	sw	t0,120(sp)
  400084:	06612a23          	sw	t1,116(sp)
  400088:	06712823          	sw	t2,112(sp)
  40008c:	07c12623          	sw	t3,108(sp)
  400090:	07d12423          	sw	t4,104(sp)
  400094:	07e12223          	sw	t5,100(sp)
  400098:	07f12023          	sw	t6,96(sp)
  40009c:	04a12e23          	sw	a0,92(sp)
  4000a0:	04b12c23          	sw	a1,88(sp)
  4000a4:	04c12a23          	sw	a2,84(sp)
  4000a8:	04d12823          	sw	a3,80(sp)
  4000ac:	04e12623          	sw	a4,76(sp)
  4000b0:	04f12423          	sw	a5,72(sp)
  4000b4:	05012223          	sw	a6,68(sp)
  4000b8:	05112023          	sw	a7,64(sp)
  4000bc:	34202573          	csrr	a0,mcause
  4000c0:	341025f3          	csrr	a1,mepc
  4000c4:	34302673          	csrr	a2,mtval
  4000c8:	078000ef          	jal	400140 <c_trap_handler>
  4000cc:	07c12083          	lw	ra,124(sp)
  4000d0:	07812283          	lw	t0,120(sp)
  4000d4:	07412303          	lw	t1,116(sp)
  4000d8:	07012383          	lw	t2,112(sp)
  4000dc:	06c12e03          	lw	t3,108(sp)
  4000e0:	06812e83          	lw	t4,104(sp)
  4000e4:	06412f03          	lw	t5,100(sp)
  4000e8:	06012f83          	lw	t6,96(sp)
  4000ec:	05c12503          	lw	a0,92(sp)
  4000f0:	05812583          	lw	a1,88(sp)
  4000f4:	05412603          	lw	a2,84(sp)
  4000f8:	05012683          	lw	a3,80(sp)
  4000fc:	04c12703          	lw	a4,76(sp)
  400100:	04812783          	lw	a5,72(sp)
  400104:	04412803          	lw	a6,68(sp)
  400108:	04012883          	lw	a7,64(sp)
  40010c:	08010113          	addi	sp,sp,128
  400110:	30200073          	mret

00400114 <set_timer_interrupt>:
  400114:	0200c7b7          	lui	a5,0x200c
  400118:	ff87a703          	lw	a4,-8(a5) # 200bff8 <MTIME>
  40011c:	ffc7a783          	lw	a5,-4(a5)
  400120:	00e50533          	add	a0,a0,a4
  400124:	00e536b3          	sltu	a3,a0,a4
  400128:	00f585b3          	add	a1,a1,a5
  40012c:	00b687b3          	add	a5,a3,a1
  400130:	020046b7          	lui	a3,0x2004
  400134:	00a6a023          	sw	a0,0(a3) # 2004000 <MTIMECMP>
  400138:	00f6a223          	sw	a5,4(a3)
  40013c:	00008067          	ret

00400140 <c_trap_handler>:
  400140:	ff010113          	addi	sp,sp,-16
  400144:	00060793          	mv	a5,a2
  400148:	00401637          	lui	a2,0x401
  40014c:	00812423          	sw	s0,8(sp)
  400150:	00058713          	mv	a4,a1
  400154:	00050413          	mv	s0,a0
  400158:	00050693          	mv	a3,a0
  40015c:	ae460613          	addi	a2,a2,-1308 # 400ae4 <_etext+0x44>
  400160:	00f00593          	li	a1,15
  400164:	04000513          	li	a0,64
  400168:	00112623          	sw	ra,12(sp)
  40016c:	00912223          	sw	s1,4(sp)
  400170:	658000ef          	jal	4007c8 <printfSCR>
  400174:	04045a63          	bgez	s0,4001c8 <c_trap_handler+0x88>
  400178:	004014b7          	lui	s1,0x401
  40017c:	bb04a683          	lw	a3,-1104(s1) # 400bb0 <intCount>
  400180:	00401637          	lui	a2,0x401
  400184:	b0860613          	addi	a2,a2,-1272 # 400b08 <_etext+0x68>
  400188:	00f00593          	li	a1,15
  40018c:	08000513          	li	a0,128
  400190:	638000ef          	jal	4007c8 <printfSCR>
  400194:	bb04a783          	lw	a5,-1104(s1)
  400198:	00178793          	addi	a5,a5,1
  40019c:	baf4a823          	sw	a5,-1104(s1)
  4001a0:	800007b7          	lui	a5,0x80000
  4001a4:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
  4001a8:	06f41c63          	bne	s0,a5,400220 <c_trap_handler+0xe0>
  4001ac:	00812403          	lw	s0,8(sp)
  4001b0:	00c12083          	lw	ra,12(sp)
  4001b4:	00412483          	lw	s1,4(sp)
  4001b8:	1f400513          	li	a0,500
  4001bc:	00000593          	li	a1,0
  4001c0:	01010113          	addi	sp,sp,16
  4001c4:	f51ff06f          	j	400114 <set_timer_interrupt>
  4001c8:	00800793          	li	a5,8
  4001cc:	02f40863          	beq	s0,a5,4001fc <c_trap_handler+0xbc>
  4001d0:	00b00793          	li	a5,11
  4001d4:	02f40a63          	beq	s0,a5,400208 <c_trap_handler+0xc8>
  4001d8:	00200793          	li	a5,2
  4001dc:	02f41c63          	bne	s0,a5,400214 <c_trap_handler+0xd4>
  4001e0:	00401537          	lui	a0,0x401
  4001e4:	b1850513          	addi	a0,a0,-1256 # 400b18 <_etext+0x78>
  4001e8:	00812403          	lw	s0,8(sp)
  4001ec:	00c12083          	lw	ra,12(sp)
  4001f0:	00412483          	lw	s1,4(sp)
  4001f4:	01010113          	addi	sp,sp,16
  4001f8:	4340006f          	j	40062c <printf>
  4001fc:	00401537          	lui	a0,0x401
  400200:	b3050513          	addi	a0,a0,-1232 # 400b30 <_etext+0x90>
  400204:	fe5ff06f          	j	4001e8 <c_trap_handler+0xa8>
  400208:	00401537          	lui	a0,0x401
  40020c:	b4c50513          	addi	a0,a0,-1204 # 400b4c <_etext+0xac>
  400210:	fd9ff06f          	j	4001e8 <c_trap_handler+0xa8>
  400214:	00401537          	lui	a0,0x401
  400218:	b6850513          	addi	a0,a0,-1176 # 400b68 <_etext+0xc8>
  40021c:	fcdff06f          	j	4001e8 <c_trap_handler+0xa8>
  400220:	00c12083          	lw	ra,12(sp)
  400224:	00812403          	lw	s0,8(sp)
  400228:	00412483          	lw	s1,4(sp)
  40022c:	01010113          	addi	sp,sp,16
  400230:	00008067          	ret

00400234 <getUSBint>:
  400234:	100007b7          	lui	a5,0x10000
  400238:	0007a503          	lw	a0,0(a5) # 10000000 <MTIME+0xdff4008>
  40023c:	00008067          	ret

00400240 <USBParser>:
  400240:	01d00793          	li	a5,29
  400244:	00a7ee63          	bltu	a5,a0,400260 <USBParser+0x20>
  400248:	00300793          	li	a5,3
  40024c:	02a7ee63          	bltu	a5,a0,400288 <USBParser+0x48>
  400250:	00000513          	li	a0,0
  400254:	00008067          	ret
  400258:	01b00513          	li	a0,27
  40025c:	00008067          	ret
  400260:	fe250793          	addi	a5,a0,-30
  400264:	0ff7f793          	zext.b	a5,a5
  400268:	03400713          	li	a4,52
  40026c:	fef762e3          	bltu	a4,a5,400250 <USBParser+0x10>
  400270:	00401737          	lui	a4,0x401
  400274:	00279793          	slli	a5,a5,0x2
  400278:	9b870713          	addi	a4,a4,-1608 # 4009b8 <resetScreenVector+0xc>
  40027c:	00e787b3          	add	a5,a5,a4
  400280:	0007a783          	lw	a5,0(a5)
  400284:	00078067          	jr	a5
  400288:	05d50513          	addi	a0,a0,93
  40028c:	0ff57513          	zext.b	a0,a0
  400290:	00008067          	ret
  400294:	01350513          	addi	a0,a0,19
  400298:	ff5ff06f          	j	40028c <USBParser+0x4c>
  40029c:	00800513          	li	a0,8
  4002a0:	00008067          	ret
  4002a4:	00900513          	li	a0,9
  4002a8:	00008067          	ret
  4002ac:	02000513          	li	a0,32
  4002b0:	00008067          	ret
  4002b4:	03d00513          	li	a0,61
  4002b8:	00008067          	ret
  4002bc:	05b00513          	li	a0,91
  4002c0:	00008067          	ret
  4002c4:	05d00513          	li	a0,93
  4002c8:	00008067          	ret
  4002cc:	05c00513          	li	a0,92
  4002d0:	00008067          	ret
  4002d4:	03b00513          	li	a0,59
  4002d8:	00008067          	ret
  4002dc:	02700513          	li	a0,39
  4002e0:	00008067          	ret
  4002e4:	06000513          	li	a0,96
  4002e8:	00008067          	ret
  4002ec:	02c00513          	li	a0,44
  4002f0:	00008067          	ret
  4002f4:	02e00513          	li	a0,46
  4002f8:	00008067          	ret
  4002fc:	02f00513          	li	a0,47
  400300:	00008067          	ret
  400304:	04600513          	li	a0,70
  400308:	00008067          	ret
  40030c:	05200513          	li	a0,82
  400310:	00008067          	ret
  400314:	04c00513          	li	a0,76
  400318:	00008067          	ret
  40031c:	04400513          	li	a0,68
  400320:	00008067          	ret
  400324:	05500513          	li	a0,85
  400328:	00008067          	ret
  40032c:	00a00513          	li	a0,10
  400330:	00008067          	ret

00400334 <memcpy>:
  400334:	00000793          	li	a5,0
  400338:	00c7c463          	blt	a5,a2,400340 <memcpy+0xc>
  40033c:	00008067          	ret
  400340:	00f58733          	add	a4,a1,a5
  400344:	00074683          	lbu	a3,0(a4)
  400348:	00f50733          	add	a4,a0,a5
  40034c:	00178793          	addi	a5,a5,1
  400350:	00d70023          	sb	a3,0(a4)
  400354:	fe5ff06f          	j	400338 <memcpy+0x4>

00400358 <memset>:
  400358:	00c50633          	add	a2,a0,a2
  40035c:	00050793          	mv	a5,a0
  400360:	00c79463          	bne	a5,a2,400368 <memset+0x10>
  400364:	00008067          	ret
  400368:	00178793          	addi	a5,a5,1
  40036c:	feb78fa3          	sb	a1,-1(a5)
  400370:	ff1ff06f          	j	400360 <memset+0x8>

00400374 <getButtonDown>:
  400374:	890007b7          	lui	a5,0x89000
  400378:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
  40037c:	00008067          	ret

00400380 <getButtonUp>:
  400380:	890007b7          	lui	a5,0x89000
  400384:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
  400388:	00008067          	ret

0040038c <getButtonLeft>:
  40038c:	890007b7          	lui	a5,0x89000
  400390:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
  400394:	00008067          	ret

00400398 <getButtonRight>:
  400398:	890007b7          	lui	a5,0x89000
  40039c:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
  4003a0:	00008067          	ret

004003a4 <putch>:
  4003a4:	4c000793          	li	a5,1216
  4003a8:	02a7e263          	bltu	a5,a0,4003cc <putch+0x28>
  4003ac:	00861613          	slli	a2,a2,0x8
  4003b0:	880007b7          	lui	a5,0x88000
  4003b4:	00151513          	slli	a0,a0,0x1
  4003b8:	00f50533          	add	a0,a0,a5
  4003bc:	00b665b3          	or	a1,a2,a1
  4003c0:	00b51023          	sh	a1,0(a0)
  4003c4:	00100513          	li	a0,1
  4003c8:	00008067          	ret
  4003cc:	00000513          	li	a0,0
  4003d0:	00008067          	ret

004003d4 <printString>:
  4003d4:	fe010113          	addi	sp,sp,-32
  4003d8:	01312623          	sw	s3,12(sp)
  4003dc:	01412423          	sw	s4,8(sp)
  4003e0:	00112e23          	sw	ra,28(sp)
  4003e4:	00812c23          	sw	s0,24(sp)
  4003e8:	00912a23          	sw	s1,20(sp)
  4003ec:	01212823          	sw	s2,16(sp)
  4003f0:	01512223          	sw	s5,4(sp)
  4003f4:	01612023          	sw	s6,0(sp)
  4003f8:	00050a13          	mv	s4,a0
  4003fc:	00058993          	mv	s3,a1
  400400:	06060c63          	beqz	a2,400478 <printString+0xa4>
  400404:	00060413          	mv	s0,a2
  400408:	00000913          	li	s2,0
  40040c:	00000493          	li	s1,0
  400410:	00100a93          	li	s5,1
  400414:	00f00b13          	li	s6,15
  400418:	0280006f          	j	400440 <printString+0x6c>
  40041c:	00040613          	mv	a2,s0
  400420:	009a0533          	add	a0,s4,s1
  400424:	f81ff0ef          	jal	4003a4 <putch>
  400428:	06050263          	beqz	a0,40048c <printString+0xb8>
  40042c:	00148493          	addi	s1,s1,1
  400430:	01591863          	bne	s2,s5,400440 <printString+0x6c>
  400434:	00140413          	addi	s0,s0,1
  400438:	0ff47413          	zext.b	s0,s0
  40043c:	048b6463          	bltu	s6,s0,400484 <printString+0xb0>
  400440:	009987b3          	add	a5,s3,s1
  400444:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
  400448:	00048513          	mv	a0,s1
  40044c:	fc0598e3          	bnez	a1,40041c <printString+0x48>
  400450:	01c12083          	lw	ra,28(sp)
  400454:	01812403          	lw	s0,24(sp)
  400458:	01412483          	lw	s1,20(sp)
  40045c:	01012903          	lw	s2,16(sp)
  400460:	00c12983          	lw	s3,12(sp)
  400464:	00812a03          	lw	s4,8(sp)
  400468:	00412a83          	lw	s5,4(sp)
  40046c:	00012b03          	lw	s6,0(sp)
  400470:	02010113          	addi	sp,sp,32
  400474:	00008067          	ret
  400478:	00100913          	li	s2,1
  40047c:	00090413          	mv	s0,s2
  400480:	f8dff06f          	j	40040c <printString+0x38>
  400484:	00090413          	mv	s0,s2
  400488:	fb9ff06f          	j	400440 <printString+0x6c>
  40048c:	00000513          	li	a0,0
  400490:	fc1ff06f          	j	400450 <printString+0x7c>

00400494 <printHex>:
  400494:	fd010113          	addi	sp,sp,-48
  400498:	02812423          	sw	s0,40(sp)
  40049c:	00058413          	mv	s0,a1
  4004a0:	004015b7          	lui	a1,0x401
  4004a4:	02912223          	sw	s1,36(sp)
  4004a8:	03212023          	sw	s2,32(sp)
  4004ac:	b9458593          	addi	a1,a1,-1132 # 400b94 <_etext+0xf4>
  4004b0:	00050493          	mv	s1,a0
  4004b4:	00060913          	mv	s2,a2
  4004b8:	00c10513          	addi	a0,sp,12
  4004bc:	01100613          	li	a2,17
  4004c0:	02112623          	sw	ra,44(sp)
  4004c4:	e71ff0ef          	jal	400334 <memcpy>
  4004c8:	202027b7          	lui	a5,0x20202
  4004cc:	02078793          	addi	a5,a5,32 # 20202020 <MTIME+0x1e1f6028>
  4004d0:	00f12023          	sw	a5,0(sp)
  4004d4:	00f12223          	sw	a5,4(sp)
  4004d8:	00010423          	sb	zero,8(sp)
  4004dc:	00700793          	li	a5,7
  4004e0:	00010593          	mv	a1,sp
  4004e4:	fff00693          	li	a3,-1
  4004e8:	00f47713          	andi	a4,s0,15
  4004ec:	02070713          	addi	a4,a4,32
  4004f0:	00270733          	add	a4,a4,sp
  4004f4:	fec74703          	lbu	a4,-20(a4)
  4004f8:	00f58633          	add	a2,a1,a5
  4004fc:	fff78793          	addi	a5,a5,-1
  400500:	00e60023          	sb	a4,0(a2)
  400504:	40445413          	srai	s0,s0,0x4
  400508:	fed790e3          	bne	a5,a3,4004e8 <printHex+0x54>
  40050c:	00090613          	mv	a2,s2
  400510:	00048513          	mv	a0,s1
  400514:	ec1ff0ef          	jal	4003d4 <printString>
  400518:	02c12083          	lw	ra,44(sp)
  40051c:	02812403          	lw	s0,40(sp)
  400520:	02412483          	lw	s1,36(sp)
  400524:	02012903          	lw	s2,32(sp)
  400528:	0ff57513          	zext.b	a0,a0
  40052c:	03010113          	addi	sp,sp,48
  400530:	00008067          	ret

00400534 <printDec>:
  400534:	fd010113          	addi	sp,sp,-48
  400538:	02812423          	sw	s0,40(sp)
  40053c:	00058413          	mv	s0,a1
  400540:	004015b7          	lui	a1,0x401
  400544:	02912223          	sw	s1,36(sp)
  400548:	03212023          	sw	s2,32(sp)
  40054c:	00050493          	mv	s1,a0
  400550:	00060913          	mv	s2,a2
  400554:	a8c58593          	addi	a1,a1,-1396 # 400a8c <resetScreenVector+0xe0>
  400558:	01400613          	li	a2,20
  40055c:	00c10513          	addi	a0,sp,12
  400560:	02112623          	sw	ra,44(sp)
  400564:	dd1ff0ef          	jal	400334 <memcpy>
  400568:	000187b7          	lui	a5,0x18
  40056c:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  400570:	0287fa63          	bgeu	a5,s0,4005a4 <printDec+0x70>
  400574:	004015b7          	lui	a1,0x401
  400578:	00090613          	mv	a2,s2
  40057c:	ba858593          	addi	a1,a1,-1112 # 400ba8 <_etext+0x108>
  400580:	00048513          	mv	a0,s1
  400584:	e51ff0ef          	jal	4003d4 <printString>
  400588:	02c12083          	lw	ra,44(sp)
  40058c:	02812403          	lw	s0,40(sp)
  400590:	02412483          	lw	s1,36(sp)
  400594:	02012903          	lw	s2,32(sp)
  400598:	0ff57513          	zext.b	a0,a0
  40059c:	03010113          	addi	sp,sp,48
  4005a0:	00008067          	ret
  4005a4:	00100613          	li	a2,1
  4005a8:	00c10713          	addi	a4,sp,12
  4005ac:	00000793          	li	a5,0
  4005b0:	00060513          	mv	a0,a2
  4005b4:	00072583          	lw	a1,0(a4)
  4005b8:	00000693          	li	a3,0
  4005bc:	06b47263          	bgeu	s0,a1,400620 <printDec+0xec>
  4005c0:	00069663          	bnez	a3,4005cc <printDec+0x98>
  4005c4:	00a58463          	beq	a1,a0,4005cc <printDec+0x98>
  4005c8:	00061e63          	bnez	a2,4005e4 <printDec+0xb0>
  4005cc:	02078613          	addi	a2,a5,32
  4005d0:	00260633          	add	a2,a2,sp
  4005d4:	03068693          	addi	a3,a3,48
  4005d8:	fed60223          	sb	a3,-28(a2)
  4005dc:	00178793          	addi	a5,a5,1
  4005e0:	00000613          	li	a2,0
  4005e4:	00470713          	addi	a4,a4,4
  4005e8:	02010693          	addi	a3,sp,32
  4005ec:	fcd714e3          	bne	a4,a3,4005b4 <printDec+0x80>
  4005f0:	00060c63          	beqz	a2,400608 <printDec+0xd4>
  4005f4:	02078713          	addi	a4,a5,32
  4005f8:	00270733          	add	a4,a4,sp
  4005fc:	03000693          	li	a3,48
  400600:	fed70223          	sb	a3,-28(a4)
  400604:	00178793          	addi	a5,a5,1
  400608:	02078793          	addi	a5,a5,32
  40060c:	002787b3          	add	a5,a5,sp
  400610:	fe078223          	sb	zero,-28(a5)
  400614:	00090613          	mv	a2,s2
  400618:	00410593          	addi	a1,sp,4
  40061c:	f65ff06f          	j	400580 <printDec+0x4c>
  400620:	40b40433          	sub	s0,s0,a1
  400624:	00168693          	addi	a3,a3,1
  400628:	f95ff06f          	j	4005bc <printDec+0x88>

0040062c <printf>:
  40062c:	fa010113          	addi	sp,sp,-96
  400630:	04f12a23          	sw	a5,84(sp)
  400634:	04410793          	addi	a5,sp,68
  400638:	02812c23          	sw	s0,56(sp)
  40063c:	02912a23          	sw	s1,52(sp)
  400640:	03212823          	sw	s2,48(sp)
  400644:	03312623          	sw	s3,44(sp)
  400648:	03412423          	sw	s4,40(sp)
  40064c:	03512223          	sw	s5,36(sp)
  400650:	03612023          	sw	s6,32(sp)
  400654:	01812c23          	sw	s8,24(sp)
  400658:	02112e23          	sw	ra,60(sp)
  40065c:	01712e23          	sw	s7,28(sp)
  400660:	00050493          	mv	s1,a0
  400664:	04b12223          	sw	a1,68(sp)
  400668:	04c12423          	sw	a2,72(sp)
  40066c:	04d12623          	sw	a3,76(sp)
  400670:	04e12823          	sw	a4,80(sp)
  400674:	05012c23          	sw	a6,88(sp)
  400678:	05112e23          	sw	a7,92(sp)
  40067c:	00f12623          	sw	a5,12(sp)
  400680:	00000c13          	li	s8,0
  400684:	00401437          	lui	s0,0x401
  400688:	00a00993          	li	s3,10
  40068c:	02500913          	li	s2,37
  400690:	07800a13          	li	s4,120
  400694:	06400a93          	li	s5,100
  400698:	06300b13          	li	s6,99
  40069c:	018487b3          	add	a5,s1,s8
  4006a0:	0007c583          	lbu	a1,0(a5)
  4006a4:	bb441503          	lh	a0,-1100(s0) # 400bb4 <screenPos>
  4006a8:	02059a63          	bnez	a1,4006dc <printf+0xb0>
  4006ac:	03c12083          	lw	ra,60(sp)
  4006b0:	03812403          	lw	s0,56(sp)
  4006b4:	03412483          	lw	s1,52(sp)
  4006b8:	03012903          	lw	s2,48(sp)
  4006bc:	02c12983          	lw	s3,44(sp)
  4006c0:	02812a03          	lw	s4,40(sp)
  4006c4:	02412a83          	lw	s5,36(sp)
  4006c8:	02012b03          	lw	s6,32(sp)
  4006cc:	01c12b83          	lw	s7,28(sp)
  4006d0:	01812c03          	lw	s8,24(sp)
  4006d4:	06010113          	addi	sp,sp,96
  4006d8:	00008067          	ret
  4006dc:	001c0b93          	addi	s7,s8,1
  4006e0:	01359e63          	bne	a1,s3,4006fc <printf+0xd0>
  4006e4:	fc057793          	andi	a5,a0,-64
  4006e8:	04078793          	addi	a5,a5,64
  4006ec:	01079793          	slli	a5,a5,0x10
  4006f0:	4107d793          	srai	a5,a5,0x10
  4006f4:	000c0b93          	mv	s7,s8
  4006f8:	0380006f          	j	400730 <printf+0x104>
  4006fc:	0d259263          	bne	a1,s2,4007c0 <printf+0x194>
  400700:	0017c783          	lbu	a5,1(a5)
  400704:	03479c63          	bne	a5,s4,40073c <printf+0x110>
  400708:	00c12783          	lw	a5,12(sp)
  40070c:	00f00613          	li	a2,15
  400710:	0007a583          	lw	a1,0(a5)
  400714:	00478713          	addi	a4,a5,4
  400718:	00e12623          	sw	a4,12(sp)
  40071c:	d79ff0ef          	jal	400494 <printHex>
  400720:	bb445783          	lhu	a5,-1100(s0)
  400724:	00f507b3          	add	a5,a0,a5
  400728:	01079793          	slli	a5,a5,0x10
  40072c:	4107d793          	srai	a5,a5,0x10
  400730:	baf41a23          	sh	a5,-1100(s0)
  400734:	001b8c13          	addi	s8,s7,1
  400738:	f65ff06f          	j	40069c <printf+0x70>
  40073c:	03579063          	bne	a5,s5,40075c <printf+0x130>
  400740:	00c12783          	lw	a5,12(sp)
  400744:	00f00613          	li	a2,15
  400748:	0007a583          	lw	a1,0(a5)
  40074c:	00478713          	addi	a4,a5,4
  400750:	00e12623          	sw	a4,12(sp)
  400754:	de1ff0ef          	jal	400534 <printDec>
  400758:	fc9ff06f          	j	400720 <printf+0xf4>
  40075c:	03679463          	bne	a5,s6,400784 <printf+0x158>
  400760:	00c12783          	lw	a5,12(sp)
  400764:	00f00613          	li	a2,15
  400768:	0007c583          	lbu	a1,0(a5)
  40076c:	00478713          	addi	a4,a5,4
  400770:	00e12623          	sw	a4,12(sp)
  400774:	c31ff0ef          	jal	4003a4 <putch>
  400778:	bb445783          	lhu	a5,-1100(s0)
  40077c:	00178793          	addi	a5,a5,1
  400780:	fa9ff06f          	j	400728 <printf+0xfc>
  400784:	07300713          	li	a4,115
  400788:	02e79063          	bne	a5,a4,4007a8 <printf+0x17c>
  40078c:	00c12783          	lw	a5,12(sp)
  400790:	00f00613          	li	a2,15
  400794:	0007a583          	lw	a1,0(a5)
  400798:	00478713          	addi	a4,a5,4
  40079c:	00e12623          	sw	a4,12(sp)
  4007a0:	c35ff0ef          	jal	4003d4 <printString>
  4007a4:	f7dff06f          	j	400720 <printf+0xf4>
  4007a8:	00f00613          	li	a2,15
  4007ac:	00090593          	mv	a1,s2
  4007b0:	bf5ff0ef          	jal	4003a4 <putch>
  4007b4:	bb445783          	lhu	a5,-1100(s0)
  4007b8:	00178793          	addi	a5,a5,1
  4007bc:	f31ff06f          	j	4006ec <printf+0xc0>
  4007c0:	00f00613          	li	a2,15
  4007c4:	fedff06f          	j	4007b0 <printf+0x184>

004007c8 <printfSCR>:
  4007c8:	f9010113          	addi	sp,sp,-112
  4007cc:	06f12223          	sw	a5,100(sp)
  4007d0:	05c10793          	addi	a5,sp,92
  4007d4:	04812423          	sw	s0,72(sp)
  4007d8:	04912223          	sw	s1,68(sp)
  4007dc:	05212023          	sw	s2,64(sp)
  4007e0:	03412c23          	sw	s4,56(sp)
  4007e4:	03512a23          	sw	s5,52(sp)
  4007e8:	03612823          	sw	s6,48(sp)
  4007ec:	03712623          	sw	s7,44(sp)
  4007f0:	03812423          	sw	s8,40(sp)
  4007f4:	03912223          	sw	s9,36(sp)
  4007f8:	03a12023          	sw	s10,32(sp)
  4007fc:	01b12e23          	sw	s11,28(sp)
  400800:	04112623          	sw	ra,76(sp)
  400804:	03312e23          	sw	s3,60(sp)
  400808:	00050a93          	mv	s5,a0
  40080c:	00058493          	mv	s1,a1
  400810:	00060a13          	mv	s4,a2
  400814:	04d12e23          	sw	a3,92(sp)
  400818:	06e12023          	sw	a4,96(sp)
  40081c:	07012423          	sw	a6,104(sp)
  400820:	07112623          	sw	a7,108(sp)
  400824:	00f12623          	sw	a5,12(sp)
  400828:	00000913          	li	s2,0
  40082c:	00000413          	li	s0,0
  400830:	00a00b93          	li	s7,10
  400834:	02500b13          	li	s6,37
  400838:	07800c13          	li	s8,120
  40083c:	06400c93          	li	s9,100
  400840:	06300d13          	li	s10,99
  400844:	07300d93          	li	s11,115
  400848:	012a07b3          	add	a5,s4,s2
  40084c:	0007c583          	lbu	a1,0(a5)
  400850:	04059263          	bnez	a1,400894 <printfSCR+0xcc>
  400854:	04c12083          	lw	ra,76(sp)
  400858:	00040513          	mv	a0,s0
  40085c:	04812403          	lw	s0,72(sp)
  400860:	04412483          	lw	s1,68(sp)
  400864:	04012903          	lw	s2,64(sp)
  400868:	03c12983          	lw	s3,60(sp)
  40086c:	03812a03          	lw	s4,56(sp)
  400870:	03412a83          	lw	s5,52(sp)
  400874:	03012b03          	lw	s6,48(sp)
  400878:	02c12b83          	lw	s7,44(sp)
  40087c:	02812c03          	lw	s8,40(sp)
  400880:	02412c83          	lw	s9,36(sp)
  400884:	02012d03          	lw	s10,32(sp)
  400888:	01c12d83          	lw	s11,28(sp)
  40088c:	07010113          	addi	sp,sp,112
  400890:	00008067          	ret
  400894:	00190993          	addi	s3,s2,1
  400898:	01759a63          	bne	a1,s7,4008ac <printfSCR+0xe4>
  40089c:	fc047413          	andi	s0,s0,-64
  4008a0:	04040413          	addi	s0,s0,64
  4008a4:	00090993          	mv	s3,s2
  4008a8:	0740006f          	j	40091c <printfSCR+0x154>
  4008ac:	01540533          	add	a0,s0,s5
  4008b0:	0b659463          	bne	a1,s6,400958 <printfSCR+0x190>
  4008b4:	0017c783          	lbu	a5,1(a5)
  4008b8:	03879263          	bne	a5,s8,4008dc <printfSCR+0x114>
  4008bc:	00c12783          	lw	a5,12(sp)
  4008c0:	00048613          	mv	a2,s1
  4008c4:	0007a583          	lw	a1,0(a5)
  4008c8:	00478713          	addi	a4,a5,4
  4008cc:	00e12623          	sw	a4,12(sp)
  4008d0:	bc5ff0ef          	jal	400494 <printHex>
  4008d4:	00a40433          	add	s0,s0,a0
  4008d8:	0440006f          	j	40091c <printfSCR+0x154>
  4008dc:	03979063          	bne	a5,s9,4008fc <printfSCR+0x134>
  4008e0:	00c12783          	lw	a5,12(sp)
  4008e4:	00048613          	mv	a2,s1
  4008e8:	0007a583          	lw	a1,0(a5)
  4008ec:	00478713          	addi	a4,a5,4
  4008f0:	00e12623          	sw	a4,12(sp)
  4008f4:	c41ff0ef          	jal	400534 <printDec>
  4008f8:	fddff06f          	j	4008d4 <printfSCR+0x10c>
  4008fc:	03a79463          	bne	a5,s10,400924 <printfSCR+0x15c>
  400900:	00c12783          	lw	a5,12(sp)
  400904:	00048613          	mv	a2,s1
  400908:	00140413          	addi	s0,s0,1
  40090c:	0007c583          	lbu	a1,0(a5)
  400910:	00478713          	addi	a4,a5,4
  400914:	00e12623          	sw	a4,12(sp)
  400918:	a8dff0ef          	jal	4003a4 <putch>
  40091c:	00198913          	addi	s2,s3,1
  400920:	f29ff06f          	j	400848 <printfSCR+0x80>
  400924:	03b79063          	bne	a5,s11,400944 <printfSCR+0x17c>
  400928:	00c12783          	lw	a5,12(sp)
  40092c:	00048613          	mv	a2,s1
  400930:	0007a583          	lw	a1,0(a5)
  400934:	00478713          	addi	a4,a5,4
  400938:	00e12623          	sw	a4,12(sp)
  40093c:	a99ff0ef          	jal	4003d4 <printString>
  400940:	f95ff06f          	j	4008d4 <printfSCR+0x10c>
  400944:	00048613          	mv	a2,s1
  400948:	000b0593          	mv	a1,s6
  40094c:	a59ff0ef          	jal	4003a4 <putch>
  400950:	00140413          	addi	s0,s0,1
  400954:	f51ff06f          	j	4008a4 <printfSCR+0xdc>
  400958:	00048613          	mv	a2,s1
  40095c:	ff1ff06f          	j	40094c <printfSCR+0x184>

00400960 <clearScreen>:
  400960:	ff010113          	addi	sp,sp,-16
  400964:	00812423          	sw	s0,8(sp)
  400968:	00912223          	sw	s1,4(sp)
  40096c:	00112623          	sw	ra,12(sp)
  400970:	00000413          	li	s0,0
  400974:	4c000493          	li	s1,1216
  400978:	00040513          	mv	a0,s0
  40097c:	00f00613          	li	a2,15
  400980:	02000593          	li	a1,32
  400984:	00140413          	addi	s0,s0,1
  400988:	a1dff0ef          	jal	4003a4 <putch>
  40098c:	fe9416e3          	bne	s0,s1,400978 <clearScreen+0x18>
  400990:	00c12083          	lw	ra,12(sp)
  400994:	00812403          	lw	s0,8(sp)
  400998:	004017b7          	lui	a5,0x401
  40099c:	ba079a23          	sh	zero,-1100(a5) # 400bb4 <screenPos>
  4009a0:	00412483          	lw	s1,4(sp)
  4009a4:	01010113          	addi	sp,sp,16
  4009a8:	00008067          	ret

004009ac <resetScreenVector>:
  4009ac:	004017b7          	lui	a5,0x401
  4009b0:	ba079a23          	sh	zero,-1100(a5) # 400bb4 <screenPos>
  4009b4:	00008067          	ret
  4009b8:	0294                	.insn	2, 0x0294
  4009ba:	0040                	.insn	2, 0x0040
  4009bc:	0294                	.insn	2, 0x0294
  4009be:	0040                	.insn	2, 0x0040
  4009c0:	0294                	.insn	2, 0x0294
  4009c2:	0040                	.insn	2, 0x0040
  4009c4:	0294                	.insn	2, 0x0294
  4009c6:	0040                	.insn	2, 0x0040
  4009c8:	0294                	.insn	2, 0x0294
  4009ca:	0040                	.insn	2, 0x0040
  4009cc:	0294                	.insn	2, 0x0294
  4009ce:	0040                	.insn	2, 0x0040
  4009d0:	0294                	.insn	2, 0x0294
  4009d2:	0040                	.insn	2, 0x0040
  4009d4:	0294                	.insn	2, 0x0294
  4009d6:	0040                	.insn	2, 0x0040
  4009d8:	0294                	.insn	2, 0x0294
  4009da:	0040                	.insn	2, 0x0040
  4009dc:	0294                	.insn	2, 0x0294
  4009de:	0040                	.insn	2, 0x0040
  4009e0:	032c                	.insn	2, 0x032c
  4009e2:	0040                	.insn	2, 0x0040
  4009e4:	0258                	.insn	2, 0x0258
  4009e6:	0040                	.insn	2, 0x0040
  4009e8:	029c                	.insn	2, 0x029c
  4009ea:	0040                	.insn	2, 0x0040
  4009ec:	02a4                	.insn	2, 0x02a4
  4009ee:	0040                	.insn	2, 0x0040
  4009f0:	02ac                	.insn	2, 0x02ac
  4009f2:	0040                	.insn	2, 0x0040
  4009f4:	0254                	.insn	2, 0x0254
  4009f6:	0040                	.insn	2, 0x0040
  4009f8:	02b4                	.insn	2, 0x02b4
  4009fa:	0040                	.insn	2, 0x0040
  4009fc:	02bc                	.insn	2, 0x02bc
  4009fe:	0040                	.insn	2, 0x0040
  400a00:	02c4                	.insn	2, 0x02c4
  400a02:	0040                	.insn	2, 0x0040
  400a04:	02cc                	.insn	2, 0x02cc
  400a06:	0040                	.insn	2, 0x0040
  400a08:	0250                	.insn	2, 0x0250
  400a0a:	0040                	.insn	2, 0x0040
  400a0c:	02d4                	.insn	2, 0x02d4
  400a0e:	0040                	.insn	2, 0x0040
  400a10:	02dc                	.insn	2, 0x02dc
  400a12:	0040                	.insn	2, 0x0040
  400a14:	02e4                	.insn	2, 0x02e4
  400a16:	0040                	.insn	2, 0x0040
  400a18:	02ec                	.insn	2, 0x02ec
  400a1a:	0040                	.insn	2, 0x0040
  400a1c:	02f4                	.insn	2, 0x02f4
  400a1e:	0040                	.insn	2, 0x0040
  400a20:	02fc                	.insn	2, 0x02fc
  400a22:	0040                	.insn	2, 0x0040
  400a24:	0250                	.insn	2, 0x0250
  400a26:	0040                	.insn	2, 0x0040
  400a28:	0304                	.insn	2, 0x0304
  400a2a:	0040                	.insn	2, 0x0040
  400a2c:	0304                	.insn	2, 0x0304
  400a2e:	0040                	.insn	2, 0x0040
  400a30:	0304                	.insn	2, 0x0304
  400a32:	0040                	.insn	2, 0x0040
  400a34:	0304                	.insn	2, 0x0304
  400a36:	0040                	.insn	2, 0x0040
  400a38:	0304                	.insn	2, 0x0304
  400a3a:	0040                	.insn	2, 0x0040
  400a3c:	0304                	.insn	2, 0x0304
  400a3e:	0040                	.insn	2, 0x0040
  400a40:	0304                	.insn	2, 0x0304
  400a42:	0040                	.insn	2, 0x0040
  400a44:	0304                	.insn	2, 0x0304
  400a46:	0040                	.insn	2, 0x0040
  400a48:	0304                	.insn	2, 0x0304
  400a4a:	0040                	.insn	2, 0x0040
  400a4c:	0304                	.insn	2, 0x0304
  400a4e:	0040                	.insn	2, 0x0040
  400a50:	0304                	.insn	2, 0x0304
  400a52:	0040                	.insn	2, 0x0040
  400a54:	0304                	.insn	2, 0x0304
  400a56:	0040                	.insn	2, 0x0040
  400a58:	0250                	.insn	2, 0x0250
  400a5a:	0040                	.insn	2, 0x0040
  400a5c:	0250                	.insn	2, 0x0250
  400a5e:	0040                	.insn	2, 0x0040
  400a60:	0250                	.insn	2, 0x0250
  400a62:	0040                	.insn	2, 0x0040
  400a64:	0250                	.insn	2, 0x0250
  400a66:	0040                	.insn	2, 0x0040
  400a68:	0250                	.insn	2, 0x0250
  400a6a:	0040                	.insn	2, 0x0040
  400a6c:	0250                	.insn	2, 0x0250
  400a6e:	0040                	.insn	2, 0x0040
  400a70:	0250                	.insn	2, 0x0250
  400a72:	0040                	.insn	2, 0x0040
  400a74:	0250                	.insn	2, 0x0250
  400a76:	0040                	.insn	2, 0x0040
  400a78:	0250                	.insn	2, 0x0250
  400a7a:	0040                	.insn	2, 0x0040
  400a7c:	030c                	.insn	2, 0x030c
  400a7e:	0040                	.insn	2, 0x0040
  400a80:	0314                	.insn	2, 0x0314
  400a82:	0040                	.insn	2, 0x0040
  400a84:	031c                	.insn	2, 0x031c
  400a86:	0040                	.insn	2, 0x0040
  400a88:	0324                	.insn	2, 0x0324
  400a8a:	0040                	.insn	2, 0x0040
  400a8c:	2710                	.insn	2, 0x2710
  400a8e:	0000                	.insn	2, 0x
  400a90:	03e8                	.insn	2, 0x03e8
  400a92:	0000                	.insn	2, 0x
  400a94:	0064                	.insn	2, 0x0064
  400a96:	0000                	.insn	2, 0x
  400a98:	000a                	.insn	2, 0x000a
  400a9a:	0000                	.insn	2, 0x
  400a9c:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00400aa0 <main>:
  400aa0:	ff010113          	addi	sp,sp,-16
  400aa4:	1f400513          	li	a0,500
  400aa8:	00000593          	li	a1,0
  400aac:	00812423          	sw	s0,8(sp)
  400ab0:	00912223          	sw	s1,4(sp)
  400ab4:	00112623          	sw	ra,12(sp)
  400ab8:	00000413          	li	s0,0
  400abc:	e58ff0ef          	jal	400114 <set_timer_interrupt>
  400ac0:	004014b7          	lui	s1,0x401
  400ac4:	00140413          	addi	s0,s0,1
  400ac8:	00141713          	slli	a4,s0,0x1
  400acc:	00040693          	mv	a3,s0
  400ad0:	b8048613          	addi	a2,s1,-1152 # 400b80 <main+0xe0>
  400ad4:	00f00593          	li	a1,15
  400ad8:	44000513          	li	a0,1088
  400adc:	cedff0ef          	jal	4007c8 <printfSCR>
  400ae0:	fe5ff06f          	j	400ac4 <main+0x24>
