
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
  400040:	73d000ef          	jal	ra,400f7c <_etext>
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
  4000f8:	6c8000ef          	jal	ra,4007c0 <c_trap_handler>
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

0040018c <readFlash>:
  40018c:	8b0007b7          	lui	a5,0x8b000
  400190:	00100713          	li	a4,1
  400194:	00e780a3          	sb	a4,1(a5) # 8b000001 <MTIME+0x88ff4009>
  400198:	ff010113          	addi	sp,sp,-16
  40019c:	00a7a223          	sw	a0,4(a5)
  4001a0:	00012623          	sw	zero,12(sp)
  4001a4:	0c700713          	li	a4,199
  4001a8:	00c12783          	lw	a5,12(sp)
  4001ac:	00f75c63          	bge	a4,a5,4001c4 <readFlash+0x38>
  4001b0:	8b0007b7          	lui	a5,0x8b000
  4001b4:	000780a3          	sb	zero,1(a5) # 8b000001 <MTIME+0x88ff4009>
  4001b8:	00c7a503          	lw	a0,12(a5)
  4001bc:	01010113          	addi	sp,sp,16
  4001c0:	00008067          	ret
  4001c4:	00c12783          	lw	a5,12(sp)
  4001c8:	00178793          	addi	a5,a5,1
  4001cc:	00f12623          	sw	a5,12(sp)
  4001d0:	fd9ff06f          	j	4001a8 <readFlash+0x1c>

004001d4 <GetFlashAddresFile>:
  4001d4:	fc010113          	addi	sp,sp,-64
  4001d8:	00800513          	li	a0,8
  4001dc:	02812c23          	sw	s0,56(sp)
  4001e0:	03212823          	sw	s2,48(sp)
  4001e4:	03412423          	sw	s4,40(sp)
  4001e8:	03612023          	sw	s6,32(sp)
  4001ec:	02112e23          	sw	ra,60(sp)
  4001f0:	02912a23          	sw	s1,52(sp)
  4001f4:	03312623          	sw	s3,44(sp)
  4001f8:	03512223          	sw	s5,36(sp)
  4001fc:	f91ff0ef          	jal	ra,40018c <readFlash>
  400200:	0ff57a13          	andi	s4,a0,255
  400204:	00000913          	li	s2,0
  400208:	00900413          	li	s0,9
  40020c:	00401b37          	lui	s6,0x401
  400210:	0b2a1463          	bne	s4,s2,4002b8 <GetFlashAddresFile+0xe4>
  400214:	00040513          	mv	a0,s0
  400218:	f75ff0ef          	jal	ra,40018c <readFlash>
  40021c:	03c12083          	lw	ra,60(sp)
  400220:	03812403          	lw	s0,56(sp)
  400224:	03412483          	lw	s1,52(sp)
  400228:	03012903          	lw	s2,48(sp)
  40022c:	02c12983          	lw	s3,44(sp)
  400230:	02812a03          	lw	s4,40(sp)
  400234:	02412a83          	lw	s5,36(sp)
  400238:	02012b03          	lw	s6,32(sp)
  40023c:	11750513          	addi	a0,a0,279
  400240:	04010113          	addi	sp,sp,64
  400244:	00008067          	ret
  400248:	00098413          	mv	s0,s3
  40024c:	00040513          	mv	a0,s0
  400250:	f3dff0ef          	jal	ra,40018c <readFlash>
  400254:	02010793          	addi	a5,sp,32
  400258:	009789b3          	add	s3,a5,s1
  40025c:	fea98023          	sb	a0,-32(s3)
  400260:	00040513          	mv	a0,s0
  400264:	f29ff0ef          	jal	ra,40018c <readFlash>
  400268:	0ff57513          	andi	a0,a0,255
  40026c:	fea98023          	sb	a0,-32(s3)
  400270:	00050463          	beqz	a0,400278 <GetFlashAddresFile+0xa4>
  400274:	00100a93          	li	s5,1
  400278:	00148493          	addi	s1,s1,1
  40027c:	0ff4f493          	andi	s1,s1,255
  400280:	02010793          	addi	a5,sp,32
  400284:	009787b3          	add	a5,a5,s1
  400288:	fdf7c783          	lbu	a5,-33(a5)
  40028c:	00140993          	addi	s3,s0,1
  400290:	fa079ce3          	bnez	a5,400248 <GetFlashAddresFile+0x74>
  400294:	00098613          	mv	a2,s3
  400298:	00010593          	mv	a1,sp
  40029c:	168b0513          	addi	a0,s6,360 # 401168 <_etext+0x1ec>
  4002a0:	13d000ef          	jal	ra,400bdc <printf>
  4002a4:	020a8063          	beqz	s5,4002c4 <GetFlashAddresFile+0xf0>
  4002a8:	00190913          	addi	s2,s2,1
  4002ac:	0ff97913          	andi	s2,s2,255
  4002b0:	10940413          	addi	s0,s0,265
  4002b4:	f5dff06f          	j	400210 <GetFlashAddresFile+0x3c>
  4002b8:	00000a93          	li	s5,0
  4002bc:	00000493          	li	s1,0
  4002c0:	f8dff06f          	j	40024c <GetFlashAddresFile+0x78>
  4002c4:	00098413          	mv	s0,s3
  4002c8:	f4dff06f          	j	400214 <GetFlashAddresFile+0x40>

004002cc <WriteSprite>:
  4002cc:	00651793          	slli	a5,a0,0x6
  4002d0:	88001537          	lui	a0,0x88001
  4002d4:	00f50533          	add	a0,a0,a5
  4002d8:	02000713          	li	a4,32
  4002dc:	00000793          	li	a5,0
  4002e0:	00f586b3          	add	a3,a1,a5
  4002e4:	0006c683          	lbu	a3,0(a3)
  4002e8:	00178793          	addi	a5,a5,1
  4002ec:	00250513          	addi	a0,a0,2 # 88001002 <MTIME+0x85ff500a>
  4002f0:	fed51f23          	sh	a3,-2(a0)
  4002f4:	fee796e3          	bne	a5,a4,4002e0 <WriteSprite+0x14>
  4002f8:	00008067          	ret

004002fc <LoadMapFromFile>:
  4002fc:	fd010113          	addi	sp,sp,-48
  400300:	02112623          	sw	ra,44(sp)
  400304:	02812423          	sw	s0,40(sp)
  400308:	02912223          	sw	s1,36(sp)
  40030c:	01312e23          	sw	s3,28(sp)
  400310:	01412c23          	sw	s4,24(sp)
  400314:	01512a23          	sw	s5,20(sp)
  400318:	01612823          	sw	s6,16(sp)
  40031c:	01712623          	sw	s7,12(sp)
  400320:	01812423          	sw	s8,8(sp)
  400324:	03212023          	sw	s2,32(sp)
  400328:	eadff0ef          	jal	ra,4001d4 <GetFlashAddresFile>
  40032c:	00050493          	mv	s1,a0
  400330:	00148493          	addi	s1,s1,1
  400334:	e59ff0ef          	jal	ra,40018c <readFlash>
  400338:	00401a37          	lui	s4,0x401
  40033c:	00048a93          	mv	s5,s1
  400340:	00000993          	li	s3,0
  400344:	0ff57413          	andi	s0,a0,255
  400348:	00401b37          	lui	s6,0x401
  40034c:	4e4a0a13          	addi	s4,s4,1252 # 4014e4 <sprite_temp>
  400350:	00401bb7          	lui	s7,0x401
  400354:	02000c13          	li	s8,32
  400358:	0689ce63          	blt	s3,s0,4003d4 <LoadMapFromFile+0xd8>
  40035c:	00541413          	slli	s0,s0,0x5
  400360:	00940433          	add	s0,s0,s1
  400364:	00000913          	li	s2,0
  400368:	03200993          	li	s3,50
  40036c:	3c000a13          	li	s4,960
  400370:	00000493          	li	s1,0
  400374:	00940533          	add	a0,s0,s1
  400378:	e15ff0ef          	jal	ra,40018c <readFlash>
  40037c:	f8050593          	addi	a1,a0,-128
  400380:	00f00613          	li	a2,15
  400384:	01248533          	add	a0,s1,s2
  400388:	0ff5f593          	andi	a1,a1,255
  40038c:	00148493          	addi	s1,s1,1
  400390:	5cc000ef          	jal	ra,40095c <putch>
  400394:	ff3490e3          	bne	s1,s3,400374 <LoadMapFromFile+0x78>
  400398:	04090913          	addi	s2,s2,64
  40039c:	03240413          	addi	s0,s0,50
  4003a0:	fd4918e3          	bne	s2,s4,400370 <LoadMapFromFile+0x74>
  4003a4:	02c12083          	lw	ra,44(sp)
  4003a8:	02812403          	lw	s0,40(sp)
  4003ac:	02412483          	lw	s1,36(sp)
  4003b0:	02012903          	lw	s2,32(sp)
  4003b4:	01c12983          	lw	s3,28(sp)
  4003b8:	01812a03          	lw	s4,24(sp)
  4003bc:	01412a83          	lw	s5,20(sp)
  4003c0:	01012b03          	lw	s6,16(sp)
  4003c4:	00c12b83          	lw	s7,12(sp)
  4003c8:	00812c03          	lw	s8,8(sp)
  4003cc:	03010113          	addi	sp,sp,48
  4003d0:	00008067          	ret
  4003d4:	00098593          	mv	a1,s3
  4003d8:	178b0513          	addi	a0,s6,376 # 401178 <_etext+0x1fc>
  4003dc:	001000ef          	jal	ra,400bdc <printf>
  4003e0:	00000913          	li	s2,0
  4003e4:	012a8533          	add	a0,s5,s2
  4003e8:	da5ff0ef          	jal	ra,40018c <readFlash>
  4003ec:	012a07b3          	add	a5,s4,s2
  4003f0:	00a78023          	sb	a0,0(a5)
  4003f4:	0ff57613          	andi	a2,a0,255
  4003f8:	00090593          	mv	a1,s2
  4003fc:	188b8513          	addi	a0,s7,392 # 401188 <_etext+0x20c>
  400400:	00190913          	addi	s2,s2,1
  400404:	7d8000ef          	jal	ra,400bdc <printf>
  400408:	fd891ee3          	bne	s2,s8,4003e4 <LoadMapFromFile+0xe8>
  40040c:	00098513          	mv	a0,s3
  400410:	000a0593          	mv	a1,s4
  400414:	020a8a93          	addi	s5,s5,32
  400418:	eb5ff0ef          	jal	ra,4002cc <WriteSprite>
  40041c:	00198993          	addi	s3,s3,1
  400420:	f39ff06f          	j	400358 <LoadMapFromFile+0x5c>

00400424 <set_timer_interrupt>:
  400424:	08000313          	li	t1,128
  400428:	30433073          	csrc	mie,t1
  40042c:	0200c7b7          	lui	a5,0x200c
  400430:	ff87a703          	lw	a4,-8(a5) # 200bff8 <MTIME>
  400434:	ffc7a783          	lw	a5,-4(a5)
  400438:	00a70533          	add	a0,a4,a0
  40043c:	00e536b3          	sltu	a3,a0,a4
  400440:	00b785b3          	add	a1,a5,a1
  400444:	00b687b3          	add	a5,a3,a1
  400448:	020046b7          	lui	a3,0x2004
  40044c:	00a6a023          	sw	a0,0(a3) # 2004000 <MTIMECMP>
  400450:	00f6a223          	sw	a5,4(a3)
  400454:	08000313          	li	t1,128
  400458:	30432073          	csrs	mie,t1
  40045c:	00008067          	ret

00400460 <disable_timer_interrupt>:
  400460:	020047b7          	lui	a5,0x2004
  400464:	fff00713          	li	a4,-1
  400468:	00e7a223          	sw	a4,4(a5) # 2004004 <MTIMECMP+0x4>
  40046c:	00e7a023          	sw	a4,0(a5)
  400470:	00008067          	ret

00400474 <SetAttributes>:
  400474:	00971713          	slli	a4,a4,0x9
  400478:	1ff67613          	andi	a2,a2,511
  40047c:	00d036b3          	snez	a3,a3
  400480:	1ff5f593          	andi	a1,a1,511
  400484:	00c76733          	or	a4,a4,a2
  400488:	00f69693          	slli	a3,a3,0xf
  40048c:	01071713          	slli	a4,a4,0x10
  400490:	00d5e5b3          	or	a1,a1,a3
  400494:	00251793          	slli	a5,a0,0x2
  400498:	01075713          	srli	a4,a4,0x10
  40049c:	88002537          	lui	a0,0x88002
  4004a0:	01059593          	slli	a1,a1,0x10
  4004a4:	00f50533          	add	a0,a0,a5
  4004a8:	00e5e5b3          	or	a1,a1,a4
  4004ac:	00b52023          	sw	a1,0(a0) # 88002000 <MTIME+0x85ff6008>
  4004b0:	00008067          	ret

004004b4 <renderFrame>:
  4004b4:	004017b7          	lui	a5,0x401
  4004b8:	5a57c783          	lbu	a5,1445(a5) # 4015a5 <direction>
  4004bc:	ff010113          	addi	sp,sp,-16
  4004c0:	00812423          	sw	s0,8(sp)
  4004c4:	00912223          	sw	s1,4(sp)
  4004c8:	00401437          	lui	s0,0x401
  4004cc:	004014b7          	lui	s1,0x401
  4004d0:	00112623          	sw	ra,12(sp)
  4004d4:	01212023          	sw	s2,0(sp)
  4004d8:	00100713          	li	a4,1
  4004dc:	4dc48493          	addi	s1,s1,1244 # 4014dc <character00>
  4004e0:	4d440413          	addi	s0,s0,1236 # 4014d4 <character01>
  4004e4:	0ee79463          	bne	a5,a4,4005cc <renderFrame+0x118>
  4004e8:	00401937          	lui	s2,0x401
  4004ec:	4e490713          	addi	a4,s2,1252 # 4014e4 <sprite_temp>
  4004f0:	03174783          	lbu	a5,49(a4)
  4004f4:	04574683          	lbu	a3,69(a4)
  4004f8:	4e490913          	addi	s2,s2,1252
  4004fc:	00178793          	addi	a5,a5,1
  400500:	0ff7f793          	andi	a5,a5,255
  400504:	00168693          	addi	a3,a3,1
  400508:	02f708a3          	sb	a5,49(a4)
  40050c:	04d702a3          	sb	a3,69(a4)
  400510:	03074703          	lbu	a4,48(a4)
  400514:	00e7e663          	bltu	a5,a4,400520 <renderFrame+0x6c>
  400518:	020908a3          	sb	zero,49(s2)
  40051c:	040902a3          	sb	zero,69(s2)
  400520:	03194783          	lbu	a5,49(s2)
  400524:	00401737          	lui	a4,0x401
  400528:	00445683          	lhu	a3,4(s0)
  40052c:	5af70223          	sb	a5,1444(a4) # 4015a4 <currentFrame>
  400530:	0044d703          	lhu	a4,4(s1)
  400534:	ffc68693          	addi	a3,a3,-4
  400538:	00d41223          	sh	a3,4(s0)
  40053c:	ffc70713          	addi	a4,a4,-4
  400540:	01071713          	slli	a4,a4,0x10
  400544:	41075713          	srai	a4,a4,0x10
  400548:	00e49223          	sh	a4,4(s1)
  40054c:	00075863          	bgez	a4,40055c <renderFrame+0xa8>
  400550:	12c00713          	li	a4,300
  400554:	00e49223          	sh	a4,4(s1)
  400558:	00e41223          	sh	a4,4(s0)
  40055c:	00279793          	slli	a5,a5,0x2
  400560:	00f907b3          	add	a5,s2,a5
  400564:	0207a583          	lw	a1,32(a5)
  400568:	0064c503          	lbu	a0,6(s1)
  40056c:	d61ff0ef          	jal	ra,4002cc <WriteSprite>
  400570:	04594783          	lbu	a5,69(s2)
  400574:	00279793          	slli	a5,a5,0x2
  400578:	00f90933          	add	s2,s2,a5
  40057c:	03492583          	lw	a1,52(s2)
  400580:	00644503          	lbu	a0,6(s0)
  400584:	d49ff0ef          	jal	ra,4002cc <WriteSprite>
  400588:	0064c703          	lbu	a4,6(s1)
  40058c:	0074c683          	lbu	a3,7(s1)
  400590:	00449603          	lh	a2,4(s1)
  400594:	00249583          	lh	a1,2(s1)
  400598:	0004c503          	lbu	a0,0(s1)
  40059c:	ed9ff0ef          	jal	ra,400474 <SetAttributes>
  4005a0:	00644703          	lbu	a4,6(s0)
  4005a4:	00744683          	lbu	a3,7(s0)
  4005a8:	00441603          	lh	a2,4(s0)
  4005ac:	00241583          	lh	a1,2(s0)
  4005b0:	00044503          	lbu	a0,0(s0)
  4005b4:	00812403          	lw	s0,8(sp)
  4005b8:	00c12083          	lw	ra,12(sp)
  4005bc:	00412483          	lw	s1,4(sp)
  4005c0:	00012903          	lw	s2,0(sp)
  4005c4:	01010113          	addi	sp,sp,16
  4005c8:	eadff06f          	j	400474 <SetAttributes>
  4005cc:	00200713          	li	a4,2
  4005d0:	0ae79063          	bne	a5,a4,400670 <renderFrame+0x1bc>
  4005d4:	00401937          	lui	s2,0x401
  4005d8:	4e490713          	addi	a4,s2,1252 # 4014e4 <sprite_temp>
  4005dc:	05974783          	lbu	a5,89(a4)
  4005e0:	06d74683          	lbu	a3,109(a4)
  4005e4:	4e490913          	addi	s2,s2,1252
  4005e8:	00178793          	addi	a5,a5,1
  4005ec:	0ff7f793          	andi	a5,a5,255
  4005f0:	00168693          	addi	a3,a3,1
  4005f4:	04f70ca3          	sb	a5,89(a4)
  4005f8:	06d706a3          	sb	a3,109(a4)
  4005fc:	05874703          	lbu	a4,88(a4)
  400600:	00e7e663          	bltu	a5,a4,40060c <renderFrame+0x158>
  400604:	04090ca3          	sb	zero,89(s2)
  400608:	060906a3          	sb	zero,109(s2)
  40060c:	05994783          	lbu	a5,89(s2)
  400610:	00401737          	lui	a4,0x401
  400614:	00445683          	lhu	a3,4(s0)
  400618:	5af70223          	sb	a5,1444(a4) # 4015a4 <currentFrame>
  40061c:	0044d703          	lhu	a4,4(s1)
  400620:	00468693          	addi	a3,a3,4
  400624:	00d41223          	sh	a3,4(s0)
  400628:	00470713          	addi	a4,a4,4
  40062c:	01071713          	slli	a4,a4,0x10
  400630:	41075713          	srai	a4,a4,0x10
  400634:	00e49223          	sh	a4,4(s1)
  400638:	12c00693          	li	a3,300
  40063c:	00e6d663          	bge	a3,a4,400648 <renderFrame+0x194>
  400640:	00049223          	sh	zero,4(s1)
  400644:	00041223          	sh	zero,4(s0)
  400648:	00279793          	slli	a5,a5,0x2
  40064c:	00f907b3          	add	a5,s2,a5
  400650:	0487a583          	lw	a1,72(a5)
  400654:	0064c503          	lbu	a0,6(s1)
  400658:	c75ff0ef          	jal	ra,4002cc <WriteSprite>
  40065c:	06d94783          	lbu	a5,109(s2)
  400660:	00279793          	slli	a5,a5,0x2
  400664:	00f90933          	add	s2,s2,a5
  400668:	05c92583          	lw	a1,92(s2)
  40066c:	f15ff06f          	j	400580 <renderFrame+0xcc>
  400670:	00300713          	li	a4,3
  400674:	0ae79263          	bne	a5,a4,400718 <renderFrame+0x264>
  400678:	00401937          	lui	s2,0x401
  40067c:	4e490713          	addi	a4,s2,1252 # 4014e4 <sprite_temp>
  400680:	08174783          	lbu	a5,129(a4)
  400684:	09574683          	lbu	a3,149(a4)
  400688:	4e490913          	addi	s2,s2,1252
  40068c:	00178793          	addi	a5,a5,1
  400690:	0ff7f793          	andi	a5,a5,255
  400694:	00168693          	addi	a3,a3,1
  400698:	08f700a3          	sb	a5,129(a4)
  40069c:	08d70aa3          	sb	a3,149(a4)
  4006a0:	08074703          	lbu	a4,128(a4)
  4006a4:	00e7e663          	bltu	a5,a4,4006b0 <renderFrame+0x1fc>
  4006a8:	080900a3          	sb	zero,129(s2)
  4006ac:	08090aa3          	sb	zero,149(s2)
  4006b0:	08194783          	lbu	a5,129(s2)
  4006b4:	00401737          	lui	a4,0x401
  4006b8:	00245683          	lhu	a3,2(s0)
  4006bc:	5af70223          	sb	a5,1444(a4) # 4015a4 <currentFrame>
  4006c0:	0024d703          	lhu	a4,2(s1)
  4006c4:	ffc68693          	addi	a3,a3,-4
  4006c8:	00d41123          	sh	a3,2(s0)
  4006cc:	ffc70713          	addi	a4,a4,-4
  4006d0:	01071713          	slli	a4,a4,0x10
  4006d4:	41075713          	srai	a4,a4,0x10
  4006d8:	00e49123          	sh	a4,2(s1)
  4006dc:	00075a63          	bgez	a4,4006f0 <renderFrame+0x23c>
  4006e0:	1f400713          	li	a4,500
  4006e4:	00e49123          	sh	a4,2(s1)
  4006e8:	1fc00713          	li	a4,508
  4006ec:	00e41123          	sh	a4,2(s0)
  4006f0:	00279793          	slli	a5,a5,0x2
  4006f4:	00f907b3          	add	a5,s2,a5
  4006f8:	0707a583          	lw	a1,112(a5)
  4006fc:	0064c503          	lbu	a0,6(s1)
  400700:	bcdff0ef          	jal	ra,4002cc <WriteSprite>
  400704:	09594783          	lbu	a5,149(s2)
  400708:	00279793          	slli	a5,a5,0x2
  40070c:	00f90933          	add	s2,s2,a5
  400710:	08492583          	lw	a1,132(s2)
  400714:	e6dff06f          	j	400580 <renderFrame+0xcc>
  400718:	00400713          	li	a4,4
  40071c:	e6e796e3          	bne	a5,a4,400588 <renderFrame+0xd4>
  400720:	00401937          	lui	s2,0x401
  400724:	4e490713          	addi	a4,s2,1252 # 4014e4 <sprite_temp>
  400728:	0a974783          	lbu	a5,169(a4)
  40072c:	0bd74683          	lbu	a3,189(a4)
  400730:	4e490913          	addi	s2,s2,1252
  400734:	00178793          	addi	a5,a5,1
  400738:	0ff7f793          	andi	a5,a5,255
  40073c:	00168693          	addi	a3,a3,1
  400740:	0af704a3          	sb	a5,169(a4)
  400744:	0ad70ea3          	sb	a3,189(a4)
  400748:	0a874703          	lbu	a4,168(a4)
  40074c:	00e7e663          	bltu	a5,a4,400758 <renderFrame+0x2a4>
  400750:	0a0904a3          	sb	zero,169(s2)
  400754:	0a090ea3          	sb	zero,189(s2)
  400758:	0a994783          	lbu	a5,169(s2)
  40075c:	00401737          	lui	a4,0x401
  400760:	00245683          	lhu	a3,2(s0)
  400764:	5af70223          	sb	a5,1444(a4) # 4015a4 <currentFrame>
  400768:	0024d703          	lhu	a4,2(s1)
  40076c:	00468693          	addi	a3,a3,4
  400770:	00d41123          	sh	a3,2(s0)
  400774:	00470713          	addi	a4,a4,4
  400778:	01071713          	slli	a4,a4,0x10
  40077c:	41075713          	srai	a4,a4,0x10
  400780:	00e49123          	sh	a4,2(s1)
  400784:	1fc00693          	li	a3,508
  400788:	00e6d863          	bge	a3,a4,400798 <renderFrame+0x2e4>
  40078c:	00800713          	li	a4,8
  400790:	00049123          	sh	zero,2(s1)
  400794:	00e41123          	sh	a4,2(s0)
  400798:	00279793          	slli	a5,a5,0x2
  40079c:	00f907b3          	add	a5,s2,a5
  4007a0:	0987a583          	lw	a1,152(a5)
  4007a4:	0064c503          	lbu	a0,6(s1)
  4007a8:	b25ff0ef          	jal	ra,4002cc <WriteSprite>
  4007ac:	0bd94783          	lbu	a5,189(s2)
  4007b0:	00279793          	slli	a5,a5,0x2
  4007b4:	00f90933          	add	s2,s2,a5
  4007b8:	0ac92583          	lw	a1,172(s2)
  4007bc:	dc5ff06f          	j	400580 <renderFrame+0xcc>

004007c0 <c_trap_handler>:
  4007c0:	ff010113          	addi	sp,sp,-16
  4007c4:	00112623          	sw	ra,12(sp)
  4007c8:	00812423          	sw	s0,8(sp)
  4007cc:	02055863          	bgez	a0,4007fc <c_trap_handler+0x3c>
  4007d0:	800007b7          	lui	a5,0x80000
  4007d4:	00778793          	addi	a5,a5,7 # 80000007 <MTIME+0x7dff400f>
  4007d8:	0ef51a63          	bne	a0,a5,4008cc <c_trap_handler+0x10c>
  4007dc:	00293537          	lui	a0,0x293
  4007e0:	2e050513          	addi	a0,a0,736 # 2932e0 <_stack_size+0x292ae0>
  4007e4:	00000593          	li	a1,0
  4007e8:	c3dff0ef          	jal	ra,400424 <set_timer_interrupt>
  4007ec:	00812403          	lw	s0,8(sp)
  4007f0:	00c12083          	lw	ra,12(sp)
  4007f4:	01010113          	addi	sp,sp,16
  4007f8:	cbdff06f          	j	4004b4 <renderFrame>
  4007fc:	00800793          	li	a5,8
  400800:	00058413          	mv	s0,a1
  400804:	0af50e63          	beq	a0,a5,4008c0 <c_trap_handler+0x100>
  400808:	02a7e063          	bltu	a5,a0,400828 <c_trap_handler+0x68>
  40080c:	00200793          	li	a5,2
  400810:	04f50063          	beq	a0,a5,400850 <c_trap_handler+0x90>
  400814:	00300793          	li	a5,3
  400818:	04f50863          	beq	a0,a5,400868 <c_trap_handler+0xa8>
  40081c:	00401637          	lui	a2,0x401
  400820:	1f860613          	addi	a2,a2,504 # 4011f8 <_etext+0x27c>
  400824:	0340006f          	j	400858 <c_trap_handler+0x98>
  400828:	00b00793          	li	a5,11
  40082c:	fef518e3          	bne	a0,a5,40081c <c_trap_handler+0x5c>
  400830:	00401637          	lui	a2,0x401
  400834:	1dc60613          	addi	a2,a2,476 # 4011dc <_etext+0x260>
  400838:	00f00593          	li	a1,15
  40083c:	38000513          	li	a0,896
  400840:	538000ef          	jal	ra,400d78 <printfSCR>
  400844:	0d8000ef          	jal	ra,40091c <getButtonDown>
  400848:	fe050ee3          	beqz	a0,400844 <c_trap_handler+0x84>
  40084c:	0380006f          	j	400884 <c_trap_handler+0xc4>
  400850:	00401637          	lui	a2,0x401
  400854:	19060613          	addi	a2,a2,400 # 401190 <_etext+0x214>
  400858:	00f00593          	li	a1,15
  40085c:	38000513          	li	a0,896
  400860:	518000ef          	jal	ra,400d78 <printfSCR>
  400864:	0200006f          	j	400884 <c_trap_handler+0xc4>
  400868:	00401637          	lui	a2,0x401
  40086c:	1a860613          	addi	a2,a2,424 # 4011a8 <_etext+0x22c>
  400870:	00f00593          	li	a1,15
  400874:	38000513          	li	a0,896
  400878:	500000ef          	jal	ra,400d78 <printfSCR>
  40087c:	0a0000ef          	jal	ra,40091c <getButtonDown>
  400880:	fe050ee3          	beqz	a0,40087c <c_trap_handler+0xbc>
  400884:	00045783          	lhu	a5,0(s0)
  400888:	00300713          	li	a4,3
  40088c:	00240693          	addi	a3,s0,2
  400890:	0037f793          	andi	a5,a5,3
  400894:	00e79463          	bne	a5,a4,40089c <c_trap_handler+0xdc>
  400898:	00440693          	addi	a3,s0,4
  40089c:	34169073          	csrw	mepc,a3
  4008a0:	00812403          	lw	s0,8(sp)
  4008a4:	00c12083          	lw	ra,12(sp)
  4008a8:	00401637          	lui	a2,0x401
  4008ac:	21060613          	addi	a2,a2,528 # 401210 <_etext+0x294>
  4008b0:	00f00593          	li	a1,15
  4008b4:	2c000513          	li	a0,704
  4008b8:	01010113          	addi	sp,sp,16
  4008bc:	4bc0006f          	j	400d78 <printfSCR>
  4008c0:	00401637          	lui	a2,0x401
  4008c4:	1c060613          	addi	a2,a2,448 # 4011c0 <_etext+0x244>
  4008c8:	f91ff06f          	j	400858 <c_trap_handler+0x98>
  4008cc:	00c12083          	lw	ra,12(sp)
  4008d0:	00812403          	lw	s0,8(sp)
  4008d4:	01010113          	addi	sp,sp,16
  4008d8:	00008067          	ret

004008dc <memcpy>:
  4008dc:	00000793          	li	a5,0
  4008e0:	00c7c463          	blt	a5,a2,4008e8 <memcpy+0xc>
  4008e4:	00008067          	ret
  4008e8:	00f58733          	add	a4,a1,a5
  4008ec:	00074683          	lbu	a3,0(a4)
  4008f0:	00f50733          	add	a4,a0,a5
  4008f4:	00178793          	addi	a5,a5,1
  4008f8:	00d70023          	sb	a3,0(a4)
  4008fc:	fe5ff06f          	j	4008e0 <memcpy+0x4>

00400900 <memset>:
  400900:	00c50633          	add	a2,a0,a2
  400904:	00050793          	mv	a5,a0
  400908:	00c79463          	bne	a5,a2,400910 <memset+0x10>
  40090c:	00008067          	ret
  400910:	00178793          	addi	a5,a5,1
  400914:	feb78fa3          	sb	a1,-1(a5)
  400918:	ff1ff06f          	j	400908 <memset+0x8>

0040091c <getButtonDown>:
  40091c:	890007b7          	lui	a5,0x89000
  400920:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
  400924:	00008067          	ret

00400928 <getButton>:
  400928:	890007b7          	lui	a5,0x89000
  40092c:	00a787b3          	add	a5,a5,a0
  400930:	0007c503          	lbu	a0,0(a5) # 89000000 <MTIME+0x86ff4008>
  400934:	00008067          	ret

00400938 <getButtonUp>:
  400938:	890007b7          	lui	a5,0x89000
  40093c:	0017c503          	lbu	a0,1(a5) # 89000001 <MTIME+0x86ff4009>
  400940:	00008067          	ret

00400944 <getButtonLeft>:
  400944:	890007b7          	lui	a5,0x89000
  400948:	0027c503          	lbu	a0,2(a5) # 89000002 <MTIME+0x86ff400a>
  40094c:	00008067          	ret

00400950 <getButtonRight>:
  400950:	890007b7          	lui	a5,0x89000
  400954:	0037c503          	lbu	a0,3(a5) # 89000003 <MTIME+0x86ff400b>
  400958:	00008067          	ret

0040095c <putch>:
  40095c:	4c000793          	li	a5,1216
  400960:	02a7e263          	bltu	a5,a0,400984 <putch+0x28>
  400964:	00861613          	slli	a2,a2,0x8
  400968:	880007b7          	lui	a5,0x88000
  40096c:	00151513          	slli	a0,a0,0x1
  400970:	00a78533          	add	a0,a5,a0
  400974:	00b665b3          	or	a1,a2,a1
  400978:	00b51023          	sh	a1,0(a0)
  40097c:	00100513          	li	a0,1
  400980:	00008067          	ret
  400984:	00000513          	li	a0,0
  400988:	00008067          	ret

0040098c <printString>:
  40098c:	fe010113          	addi	sp,sp,-32
  400990:	01212823          	sw	s2,16(sp)
  400994:	01312623          	sw	s3,12(sp)
  400998:	00112e23          	sw	ra,28(sp)
  40099c:	00812c23          	sw	s0,24(sp)
  4009a0:	00912a23          	sw	s1,20(sp)
  4009a4:	01412423          	sw	s4,8(sp)
  4009a8:	01512223          	sw	s5,4(sp)
  4009ac:	01612023          	sw	s6,0(sp)
  4009b0:	00050993          	mv	s3,a0
  4009b4:	00058913          	mv	s2,a1
  4009b8:	06061e63          	bnez	a2,400a34 <printString+0xa8>
  4009bc:	00100a13          	li	s4,1
  4009c0:	00100413          	li	s0,1
  4009c4:	00000493          	li	s1,0
  4009c8:	00100a93          	li	s5,1
  4009cc:	00f00b13          	li	s6,15
  4009d0:	02c0006f          	j	4009fc <printString+0x70>
  4009d4:	00040613          	mv	a2,s0
  4009d8:	00998533          	add	a0,s3,s1
  4009dc:	f81ff0ef          	jal	ra,40095c <putch>
  4009e0:	06050063          	beqz	a0,400a40 <printString+0xb4>
  4009e4:	00148493          	addi	s1,s1,1
  4009e8:	015a1a63          	bne	s4,s5,4009fc <printString+0x70>
  4009ec:	00140413          	addi	s0,s0,1
  4009f0:	0ff47413          	andi	s0,s0,255
  4009f4:	008b7463          	bgeu	s6,s0,4009fc <printString+0x70>
  4009f8:	00100413          	li	s0,1
  4009fc:	009907b3          	add	a5,s2,s1
  400a00:	0007c583          	lbu	a1,0(a5) # 88000000 <MTIME+0x85ff4008>
  400a04:	00048513          	mv	a0,s1
  400a08:	fc0596e3          	bnez	a1,4009d4 <printString+0x48>
  400a0c:	01c12083          	lw	ra,28(sp)
  400a10:	01812403          	lw	s0,24(sp)
  400a14:	01412483          	lw	s1,20(sp)
  400a18:	01012903          	lw	s2,16(sp)
  400a1c:	00c12983          	lw	s3,12(sp)
  400a20:	00812a03          	lw	s4,8(sp)
  400a24:	00412a83          	lw	s5,4(sp)
  400a28:	00012b03          	lw	s6,0(sp)
  400a2c:	02010113          	addi	sp,sp,32
  400a30:	00008067          	ret
  400a34:	00060413          	mv	s0,a2
  400a38:	00000a13          	li	s4,0
  400a3c:	f89ff06f          	j	4009c4 <printString+0x38>
  400a40:	00000513          	li	a0,0
  400a44:	fc9ff06f          	j	400a0c <printString+0x80>

00400a48 <printHex>:
  400a48:	fd010113          	addi	sp,sp,-48
  400a4c:	02812423          	sw	s0,40(sp)
  400a50:	00058413          	mv	s0,a1
  400a54:	004015b7          	lui	a1,0x401
  400a58:	02912223          	sw	s1,36(sp)
  400a5c:	03212023          	sw	s2,32(sp)
  400a60:	22c58593          	addi	a1,a1,556 # 40122c <_etext+0x2b0>
  400a64:	00050493          	mv	s1,a0
  400a68:	00060913          	mv	s2,a2
  400a6c:	00c10513          	addi	a0,sp,12
  400a70:	01100613          	li	a2,17
  400a74:	02112623          	sw	ra,44(sp)
  400a78:	e65ff0ef          	jal	ra,4008dc <memcpy>
  400a7c:	004015b7          	lui	a1,0x401
  400a80:	00900613          	li	a2,9
  400a84:	24058593          	addi	a1,a1,576 # 401240 <_etext+0x2c4>
  400a88:	00010513          	mv	a0,sp
  400a8c:	e51ff0ef          	jal	ra,4008dc <memcpy>
  400a90:	00700793          	li	a5,7
  400a94:	fff00693          	li	a3,-1
  400a98:	00f47713          	andi	a4,s0,15
  400a9c:	02010593          	addi	a1,sp,32
  400aa0:	00e58733          	add	a4,a1,a4
  400aa4:	fec74703          	lbu	a4,-20(a4)
  400aa8:	00f10633          	add	a2,sp,a5
  400aac:	fff78793          	addi	a5,a5,-1
  400ab0:	00e60023          	sb	a4,0(a2)
  400ab4:	40445413          	srai	s0,s0,0x4
  400ab8:	fed790e3          	bne	a5,a3,400a98 <printHex+0x50>
  400abc:	00090613          	mv	a2,s2
  400ac0:	00010593          	mv	a1,sp
  400ac4:	00048513          	mv	a0,s1
  400ac8:	ec5ff0ef          	jal	ra,40098c <printString>
  400acc:	02c12083          	lw	ra,44(sp)
  400ad0:	02812403          	lw	s0,40(sp)
  400ad4:	02412483          	lw	s1,36(sp)
  400ad8:	02012903          	lw	s2,32(sp)
  400adc:	0ff57513          	andi	a0,a0,255
  400ae0:	03010113          	addi	sp,sp,48
  400ae4:	00008067          	ret

00400ae8 <printDec>:
  400ae8:	fd010113          	addi	sp,sp,-48
  400aec:	02812423          	sw	s0,40(sp)
  400af0:	00058413          	mv	s0,a1
  400af4:	004015b7          	lui	a1,0x401
  400af8:	02912223          	sw	s1,36(sp)
  400afc:	03212023          	sw	s2,32(sp)
  400b00:	00050493          	mv	s1,a0
  400b04:	00060913          	mv	s2,a2
  400b08:	f6858593          	addi	a1,a1,-152 # 400f68 <resetScreenVector+0xc>
  400b0c:	01400613          	li	a2,20
  400b10:	00c10513          	addi	a0,sp,12
  400b14:	02112623          	sw	ra,44(sp)
  400b18:	dc5ff0ef          	jal	ra,4008dc <memcpy>
  400b1c:	000187b7          	lui	a5,0x18
  400b20:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x17e9f>
  400b24:	0287fa63          	bgeu	a5,s0,400b58 <printDec+0x70>
  400b28:	004015b7          	lui	a1,0x401
  400b2c:	00090613          	mv	a2,s2
  400b30:	24c58593          	addi	a1,a1,588 # 40124c <_etext+0x2d0>
  400b34:	00048513          	mv	a0,s1
  400b38:	e55ff0ef          	jal	ra,40098c <printString>
  400b3c:	02c12083          	lw	ra,44(sp)
  400b40:	02812403          	lw	s0,40(sp)
  400b44:	02412483          	lw	s1,36(sp)
  400b48:	02012903          	lw	s2,32(sp)
  400b4c:	0ff57513          	andi	a0,a0,255
  400b50:	03010113          	addi	sp,sp,48
  400b54:	00008067          	ret
  400b58:	00c10713          	addi	a4,sp,12
  400b5c:	00100613          	li	a2,1
  400b60:	00000793          	li	a5,0
  400b64:	00100513          	li	a0,1
  400b68:	00072583          	lw	a1,0(a4)
  400b6c:	00000693          	li	a3,0
  400b70:	06b47063          	bgeu	s0,a1,400bd0 <printDec+0xe8>
  400b74:	00069663          	bnez	a3,400b80 <printDec+0x98>
  400b78:	00a58463          	beq	a1,a0,400b80 <printDec+0x98>
  400b7c:	00061e63          	bnez	a2,400b98 <printDec+0xb0>
  400b80:	02010613          	addi	a2,sp,32
  400b84:	00f60633          	add	a2,a2,a5
  400b88:	03068693          	addi	a3,a3,48
  400b8c:	fed60223          	sb	a3,-28(a2)
  400b90:	00178793          	addi	a5,a5,1
  400b94:	00000613          	li	a2,0
  400b98:	00470713          	addi	a4,a4,4
  400b9c:	02010693          	addi	a3,sp,32
  400ba0:	fcd714e3          	bne	a4,a3,400b68 <printDec+0x80>
  400ba4:	00060a63          	beqz	a2,400bb8 <printDec+0xd0>
  400ba8:	00f68733          	add	a4,a3,a5
  400bac:	03000693          	li	a3,48
  400bb0:	fed70223          	sb	a3,-28(a4)
  400bb4:	00178793          	addi	a5,a5,1
  400bb8:	02010713          	addi	a4,sp,32
  400bbc:	00f707b3          	add	a5,a4,a5
  400bc0:	fe078223          	sb	zero,-28(a5)
  400bc4:	00090613          	mv	a2,s2
  400bc8:	00410593          	addi	a1,sp,4
  400bcc:	f69ff06f          	j	400b34 <printDec+0x4c>
  400bd0:	40b40433          	sub	s0,s0,a1
  400bd4:	00168693          	addi	a3,a3,1
  400bd8:	f99ff06f          	j	400b70 <printDec+0x88>

00400bdc <printf>:
  400bdc:	fa010113          	addi	sp,sp,-96
  400be0:	04f12a23          	sw	a5,84(sp)
  400be4:	04410793          	addi	a5,sp,68
  400be8:	02812c23          	sw	s0,56(sp)
  400bec:	02912a23          	sw	s1,52(sp)
  400bf0:	03212823          	sw	s2,48(sp)
  400bf4:	03312623          	sw	s3,44(sp)
  400bf8:	03412423          	sw	s4,40(sp)
  400bfc:	03512223          	sw	s5,36(sp)
  400c00:	03612023          	sw	s6,32(sp)
  400c04:	01712e23          	sw	s7,28(sp)
  400c08:	01812c23          	sw	s8,24(sp)
  400c0c:	02112e23          	sw	ra,60(sp)
  400c10:	01912a23          	sw	s9,20(sp)
  400c14:	00050913          	mv	s2,a0
  400c18:	04b12223          	sw	a1,68(sp)
  400c1c:	04c12423          	sw	a2,72(sp)
  400c20:	04d12623          	sw	a3,76(sp)
  400c24:	04e12823          	sw	a4,80(sp)
  400c28:	05012c23          	sw	a6,88(sp)
  400c2c:	05112e23          	sw	a7,92(sp)
  400c30:	00f12623          	sw	a5,12(sp)
  400c34:	00000493          	li	s1,0
  400c38:	00401437          	lui	s0,0x401
  400c3c:	00a00993          	li	s3,10
  400c40:	02500a13          	li	s4,37
  400c44:	07800a93          	li	s5,120
  400c48:	06400b13          	li	s6,100
  400c4c:	06300b93          	li	s7,99
  400c50:	07300c13          	li	s8,115
  400c54:	009907b3          	add	a5,s2,s1
  400c58:	0007c583          	lbu	a1,0(a5)
  400c5c:	5a641503          	lh	a0,1446(s0) # 4015a6 <screenPos>
  400c60:	02059c63          	bnez	a1,400c98 <printf+0xbc>
  400c64:	03c12083          	lw	ra,60(sp)
  400c68:	03812403          	lw	s0,56(sp)
  400c6c:	03412483          	lw	s1,52(sp)
  400c70:	03012903          	lw	s2,48(sp)
  400c74:	02c12983          	lw	s3,44(sp)
  400c78:	02812a03          	lw	s4,40(sp)
  400c7c:	02412a83          	lw	s5,36(sp)
  400c80:	02012b03          	lw	s6,32(sp)
  400c84:	01c12b83          	lw	s7,28(sp)
  400c88:	01812c03          	lw	s8,24(sp)
  400c8c:	01412c83          	lw	s9,20(sp)
  400c90:	06010113          	addi	sp,sp,96
  400c94:	00008067          	ret
  400c98:	00148c93          	addi	s9,s1,1
  400c9c:	01359c63          	bne	a1,s3,400cb4 <printf+0xd8>
  400ca0:	fc057793          	andi	a5,a0,-64
  400ca4:	04078793          	addi	a5,a5,64
  400ca8:	5af41323          	sh	a5,1446(s0)
  400cac:	00048c93          	mv	s9,s1
  400cb0:	0800006f          	j	400d30 <printf+0x154>
  400cb4:	0b459e63          	bne	a1,s4,400d70 <printf+0x194>
  400cb8:	0017c783          	lbu	a5,1(a5)
  400cbc:	03579663          	bne	a5,s5,400ce8 <printf+0x10c>
  400cc0:	00c12783          	lw	a5,12(sp)
  400cc4:	00f00613          	li	a2,15
  400cc8:	0007a583          	lw	a1,0(a5)
  400ccc:	00478713          	addi	a4,a5,4
  400cd0:	00e12623          	sw	a4,12(sp)
  400cd4:	d75ff0ef          	jal	ra,400a48 <printHex>
  400cd8:	5a645783          	lhu	a5,1446(s0)
  400cdc:	00f50533          	add	a0,a0,a5
  400ce0:	5aa41323          	sh	a0,1446(s0)
  400ce4:	04c0006f          	j	400d30 <printf+0x154>
  400ce8:	03679063          	bne	a5,s6,400d08 <printf+0x12c>
  400cec:	00c12783          	lw	a5,12(sp)
  400cf0:	00f00613          	li	a2,15
  400cf4:	0007a583          	lw	a1,0(a5)
  400cf8:	00478713          	addi	a4,a5,4
  400cfc:	00e12623          	sw	a4,12(sp)
  400d00:	de9ff0ef          	jal	ra,400ae8 <printDec>
  400d04:	fd5ff06f          	j	400cd8 <printf+0xfc>
  400d08:	03779863          	bne	a5,s7,400d38 <printf+0x15c>
  400d0c:	00c12783          	lw	a5,12(sp)
  400d10:	00f00613          	li	a2,15
  400d14:	0007c583          	lbu	a1,0(a5)
  400d18:	00478713          	addi	a4,a5,4
  400d1c:	00e12623          	sw	a4,12(sp)
  400d20:	c3dff0ef          	jal	ra,40095c <putch>
  400d24:	5a645783          	lhu	a5,1446(s0)
  400d28:	00178793          	addi	a5,a5,1
  400d2c:	5af41323          	sh	a5,1446(s0)
  400d30:	001c8493          	addi	s1,s9,1
  400d34:	f21ff06f          	j	400c54 <printf+0x78>
  400d38:	03879063          	bne	a5,s8,400d58 <printf+0x17c>
  400d3c:	00c12783          	lw	a5,12(sp)
  400d40:	00f00613          	li	a2,15
  400d44:	0007a583          	lw	a1,0(a5)
  400d48:	00478713          	addi	a4,a5,4
  400d4c:	00e12623          	sw	a4,12(sp)
  400d50:	c3dff0ef          	jal	ra,40098c <printString>
  400d54:	f85ff06f          	j	400cd8 <printf+0xfc>
  400d58:	00f00613          	li	a2,15
  400d5c:	02500593          	li	a1,37
  400d60:	bfdff0ef          	jal	ra,40095c <putch>
  400d64:	5a645783          	lhu	a5,1446(s0)
  400d68:	00178793          	addi	a5,a5,1
  400d6c:	f3dff06f          	j	400ca8 <printf+0xcc>
  400d70:	00f00613          	li	a2,15
  400d74:	fedff06f          	j	400d60 <printf+0x184>

00400d78 <printfSCR>:
  400d78:	f9010113          	addi	sp,sp,-112
  400d7c:	06f12223          	sw	a5,100(sp)
  400d80:	05c10793          	addi	a5,sp,92
  400d84:	04812423          	sw	s0,72(sp)
  400d88:	04912223          	sw	s1,68(sp)
  400d8c:	05212023          	sw	s2,64(sp)
  400d90:	03412c23          	sw	s4,56(sp)
  400d94:	03512a23          	sw	s5,52(sp)
  400d98:	03612823          	sw	s6,48(sp)
  400d9c:	03712623          	sw	s7,44(sp)
  400da0:	03812423          	sw	s8,40(sp)
  400da4:	03912223          	sw	s9,36(sp)
  400da8:	03a12023          	sw	s10,32(sp)
  400dac:	01b12e23          	sw	s11,28(sp)
  400db0:	04112623          	sw	ra,76(sp)
  400db4:	03312e23          	sw	s3,60(sp)
  400db8:	00050a93          	mv	s5,a0
  400dbc:	00058493          	mv	s1,a1
  400dc0:	00060a13          	mv	s4,a2
  400dc4:	04d12e23          	sw	a3,92(sp)
  400dc8:	06e12023          	sw	a4,96(sp)
  400dcc:	07012423          	sw	a6,104(sp)
  400dd0:	07112623          	sw	a7,108(sp)
  400dd4:	00f12623          	sw	a5,12(sp)
  400dd8:	00000913          	li	s2,0
  400ddc:	00000413          	li	s0,0
  400de0:	00a00b13          	li	s6,10
  400de4:	02500b93          	li	s7,37
  400de8:	07800c13          	li	s8,120
  400dec:	06400c93          	li	s9,100
  400df0:	06300d13          	li	s10,99
  400df4:	07300d93          	li	s11,115
  400df8:	012a07b3          	add	a5,s4,s2
  400dfc:	0007c583          	lbu	a1,0(a5)
  400e00:	04059263          	bnez	a1,400e44 <printfSCR+0xcc>
  400e04:	04c12083          	lw	ra,76(sp)
  400e08:	00040513          	mv	a0,s0
  400e0c:	04812403          	lw	s0,72(sp)
  400e10:	04412483          	lw	s1,68(sp)
  400e14:	04012903          	lw	s2,64(sp)
  400e18:	03c12983          	lw	s3,60(sp)
  400e1c:	03812a03          	lw	s4,56(sp)
  400e20:	03412a83          	lw	s5,52(sp)
  400e24:	03012b03          	lw	s6,48(sp)
  400e28:	02c12b83          	lw	s7,44(sp)
  400e2c:	02812c03          	lw	s8,40(sp)
  400e30:	02412c83          	lw	s9,36(sp)
  400e34:	02012d03          	lw	s10,32(sp)
  400e38:	01c12d83          	lw	s11,28(sp)
  400e3c:	07010113          	addi	sp,sp,112
  400e40:	00008067          	ret
  400e44:	00190993          	addi	s3,s2,1
  400e48:	01659a63          	bne	a1,s6,400e5c <printfSCR+0xe4>
  400e4c:	fc047413          	andi	s0,s0,-64
  400e50:	04040413          	addi	s0,s0,64
  400e54:	00090993          	mv	s3,s2
  400e58:	0740006f          	j	400ecc <printfSCR+0x154>
  400e5c:	01540533          	add	a0,s0,s5
  400e60:	0b759463          	bne	a1,s7,400f08 <printfSCR+0x190>
  400e64:	0017c783          	lbu	a5,1(a5)
  400e68:	03879263          	bne	a5,s8,400e8c <printfSCR+0x114>
  400e6c:	00c12783          	lw	a5,12(sp)
  400e70:	00048613          	mv	a2,s1
  400e74:	0007a583          	lw	a1,0(a5)
  400e78:	00478713          	addi	a4,a5,4
  400e7c:	00e12623          	sw	a4,12(sp)
  400e80:	bc9ff0ef          	jal	ra,400a48 <printHex>
  400e84:	00a40433          	add	s0,s0,a0
  400e88:	0440006f          	j	400ecc <printfSCR+0x154>
  400e8c:	03979063          	bne	a5,s9,400eac <printfSCR+0x134>
  400e90:	00c12783          	lw	a5,12(sp)
  400e94:	00048613          	mv	a2,s1
  400e98:	0007a583          	lw	a1,0(a5)
  400e9c:	00478713          	addi	a4,a5,4
  400ea0:	00e12623          	sw	a4,12(sp)
  400ea4:	c45ff0ef          	jal	ra,400ae8 <printDec>
  400ea8:	fddff06f          	j	400e84 <printfSCR+0x10c>
  400eac:	03a79463          	bne	a5,s10,400ed4 <printfSCR+0x15c>
  400eb0:	00c12783          	lw	a5,12(sp)
  400eb4:	00048613          	mv	a2,s1
  400eb8:	00140413          	addi	s0,s0,1
  400ebc:	0007c583          	lbu	a1,0(a5)
  400ec0:	00478713          	addi	a4,a5,4
  400ec4:	00e12623          	sw	a4,12(sp)
  400ec8:	a95ff0ef          	jal	ra,40095c <putch>
  400ecc:	00198913          	addi	s2,s3,1
  400ed0:	f29ff06f          	j	400df8 <printfSCR+0x80>
  400ed4:	03b79063          	bne	a5,s11,400ef4 <printfSCR+0x17c>
  400ed8:	00c12783          	lw	a5,12(sp)
  400edc:	00048613          	mv	a2,s1
  400ee0:	0007a583          	lw	a1,0(a5)
  400ee4:	00478713          	addi	a4,a5,4
  400ee8:	00e12623          	sw	a4,12(sp)
  400eec:	aa1ff0ef          	jal	ra,40098c <printString>
  400ef0:	f95ff06f          	j	400e84 <printfSCR+0x10c>
  400ef4:	00048613          	mv	a2,s1
  400ef8:	02500593          	li	a1,37
  400efc:	a61ff0ef          	jal	ra,40095c <putch>
  400f00:	00140413          	addi	s0,s0,1
  400f04:	f51ff06f          	j	400e54 <printfSCR+0xdc>
  400f08:	00048613          	mv	a2,s1
  400f0c:	ff1ff06f          	j	400efc <printfSCR+0x184>

00400f10 <clearScreen>:
  400f10:	ff010113          	addi	sp,sp,-16
  400f14:	00812423          	sw	s0,8(sp)
  400f18:	00912223          	sw	s1,4(sp)
  400f1c:	00112623          	sw	ra,12(sp)
  400f20:	00000413          	li	s0,0
  400f24:	4c000493          	li	s1,1216
  400f28:	00040513          	mv	a0,s0
  400f2c:	00f00613          	li	a2,15
  400f30:	02000593          	li	a1,32
  400f34:	00140413          	addi	s0,s0,1
  400f38:	a25ff0ef          	jal	ra,40095c <putch>
  400f3c:	fe9416e3          	bne	s0,s1,400f28 <clearScreen+0x18>
  400f40:	00c12083          	lw	ra,12(sp)
  400f44:	00812403          	lw	s0,8(sp)
  400f48:	004017b7          	lui	a5,0x401
  400f4c:	5a079323          	sh	zero,1446(a5) # 4015a6 <screenPos>
  400f50:	00412483          	lw	s1,4(sp)
  400f54:	01010113          	addi	sp,sp,16
  400f58:	00008067          	ret

00400f5c <resetScreenVector>:
  400f5c:	004017b7          	lui	a5,0x401
  400f60:	5a079323          	sh	zero,1446(a5) # 4015a6 <screenPos>
  400f64:	00008067          	ret
  400f68:	2710                	fld	fa2,8(a4)
  400f6a:	0000                	unimp
  400f6c:	03e8                	addi	a0,sp,460
  400f6e:	0000                	unimp
  400f70:	0064                	addi	s1,sp,12
  400f72:	0000                	unimp
  400f74:	000a                	c.slli	zero,0x2
  400f76:	0000                	unimp
  400f78:	0001                	nop
	...

Disassembly of section .text.startup:

00400f7c <main>:
  400f7c:	fe010113          	addi	sp,sp,-32
  400f80:	004015b7          	lui	a1,0x401
  400f84:	00812c23          	sw	s0,24(sp)
  400f88:	25458793          	addi	a5,a1,596 # 401254 <characterdown2_00>
  400f8c:	00401437          	lui	s0,0x401
  400f90:	4e440413          	addi	s0,s0,1252 # 4014e4 <sprite_temp>
  400f94:	00112e23          	sw	ra,28(sp)
  400f98:	00912a23          	sw	s1,20(sp)
  400f9c:	01212823          	sw	s2,16(sp)
  400fa0:	01312623          	sw	s3,12(sp)
  400fa4:	01412423          	sw	s4,8(sp)
  400fa8:	01512223          	sw	s5,4(sp)
  400fac:	06078693          	addi	a3,a5,96
  400fb0:	10078513          	addi	a0,a5,256
  400fb4:	04d42e23          	sw	a3,92(s0)
  400fb8:	06d42223          	sw	a3,100(s0)
  400fbc:	08a42223          	sw	a0,132(s0)
  400fc0:	0a078693          	addi	a3,a5,160
  400fc4:	12078513          	addi	a0,a5,288
  400fc8:	02078713          	addi	a4,a5,32
  400fcc:	06d42423          	sw	a3,104(s0)
  400fd0:	08a42423          	sw	a0,136(s0)
  400fd4:	0c078693          	addi	a3,a5,192
  400fd8:	14078513          	addi	a0,a5,320
  400fdc:	04e42623          	sw	a4,76(s0)
  400fe0:	08078613          	addi	a2,a5,128
  400fe4:	04078713          	addi	a4,a5,64
  400fe8:	06d42823          	sw	a3,112(s0)
  400fec:	08a42c23          	sw	a0,152(s0)
  400ff0:	0e078693          	addi	a3,a5,224
  400ff4:	16078513          	addi	a0,a5,352
  400ff8:	04e42a23          	sw	a4,84(s0)
  400ffc:	06c42023          	sw	a2,96(s0)
  401000:	00400713          	li	a4,4
  401004:	10200613          	li	a2,258
  401008:	06d42a23          	sw	a3,116(s0)
  40100c:	08a42e23          	sw	a0,156(s0)
  401010:	00100693          	li	a3,1
  401014:	18078513          	addi	a0,a5,384
  401018:	04e41c23          	sh	a4,88(s0)
  40101c:	06e41623          	sh	a4,108(s0)
  401020:	04f42423          	sw	a5,72(s0)
  401024:	04f42823          	sw	a5,80(s0)
  401028:	08c41023          	sh	a2,128(s0)
  40102c:	08d40123          	sb	a3,130(s0)
  401030:	08c41a23          	sh	a2,148(s0)
  401034:	08d40b23          	sb	a3,150(s0)
  401038:	0ac41423          	sh	a2,168(s0)
  40103c:	0ad40523          	sb	a3,170(s0)
  401040:	0aa42623          	sw	a0,172(s0)
  401044:	04040d23          	sb	zero,90(s0)
  401048:	1a078513          	addi	a0,a5,416
  40104c:	06040723          	sb	zero,110(s0)
  401050:	0aa42823          	sw	a0,176(s0)
  401054:	0ad40f23          	sb	a3,190(s0)
  401058:	1c078693          	addi	a3,a5,448
  40105c:	0ac41e23          	sh	a2,188(s0)
  401060:	02d42023          	sw	a3,32(s0)
  401064:	1e078613          	addi	a2,a5,480
  401068:	02d42423          	sw	a3,40(s0)
  40106c:	20078693          	addi	a3,a5,512
  401070:	02c42223          	sw	a2,36(s0)
  401074:	02d42623          	sw	a3,44(s0)
  401078:	24078613          	addi	a2,a5,576
  40107c:	22078693          	addi	a3,a5,544
  401080:	26078793          	addi	a5,a5,608
  401084:	04f42023          	sw	a5,64(s0)
  401088:	004017b7          	lui	a5,0x401
  40108c:	4e27c503          	lbu	a0,1250(a5) # 4014e2 <character00+0x6>
  401090:	02e41823          	sh	a4,48(s0)
  401094:	02d42a23          	sw	a3,52(s0)
  401098:	02c42c23          	sw	a2,56(s0)
  40109c:	02d42e23          	sw	a3,60(s0)
  4010a0:	04e41223          	sh	a4,68(s0)
  4010a4:	25458593          	addi	a1,a1,596
  4010a8:	02040923          	sb	zero,50(s0)
  4010ac:	04040323          	sb	zero,70(s0)
  4010b0:	a1cff0ef          	jal	ra,4002cc <WriteSprite>
  4010b4:	06d44783          	lbu	a5,109(s0)
  4010b8:	00401937          	lui	s2,0x401
  4010bc:	00f00493          	li	s1,15
  4010c0:	00279793          	slli	a5,a5,0x2
  4010c4:	00f40433          	add	s0,s0,a5
  4010c8:	004017b7          	lui	a5,0x401
  4010cc:	05c42583          	lw	a1,92(s0)
  4010d0:	4da7c503          	lbu	a0,1242(a5) # 4014da <character01+0x6>
  4010d4:	00401437          	lui	s0,0x401
  4010d8:	00300993          	li	s3,3
  4010dc:	9f0ff0ef          	jal	ra,4002cc <WriteSprite>
  4010e0:	00401537          	lui	a0,0x401
  4010e4:	22050513          	addi	a0,a0,544 # 401220 <main+0x2a4>
  4010e8:	a14ff0ef          	jal	ra,4002fc <LoadMapFromFile>
  4010ec:	00293537          	lui	a0,0x293
  4010f0:	2e050513          	addi	a0,a0,736 # 2932e0 <_stack_size+0x292ae0>
  4010f4:	00000593          	li	a1,0
  4010f8:	b2cff0ef          	jal	ra,400424 <set_timer_interrupt>
  4010fc:	00100a13          	li	s4,1
  401100:	00200a93          	li	s5,2
  401104:	00400513          	li	a0,4
  401108:	821ff0ef          	jal	ra,400928 <getButton>
  40110c:	00050663          	beqz	a0,401118 <main+0x19c>
  401110:	5b5402a3          	sb	s5,1445(s0) # 4015a5 <direction>
  401114:	ff1ff06f          	j	401104 <main+0x188>
  401118:	00500513          	li	a0,5
  40111c:	80dff0ef          	jal	ra,400928 <getButton>
  401120:	00050663          	beqz	a0,40112c <main+0x1b0>
  401124:	5b4402a3          	sb	s4,1445(s0)
  401128:	fddff06f          	j	401104 <main+0x188>
  40112c:	00600513          	li	a0,6
  401130:	ff8ff0ef          	jal	ra,400928 <getButton>
  401134:	00050663          	beqz	a0,401140 <main+0x1c4>
  401138:	5b3402a3          	sb	s3,1445(s0)
  40113c:	fc9ff06f          	j	401104 <main+0x188>
  401140:	00700513          	li	a0,7
  401144:	fe4ff0ef          	jal	ra,400928 <getButton>
  401148:	00050863          	beqz	a0,401158 <main+0x1dc>
  40114c:	00400793          	li	a5,4
  401150:	5af402a3          	sb	a5,1445(s0)
  401154:	fb1ff06f          	j	401104 <main+0x188>
  401158:	5a494783          	lbu	a5,1444(s2) # 4015a4 <currentFrame>
  40115c:	fa0794e3          	bnez	a5,401104 <main+0x188>
  401160:	5a9402a3          	sb	s1,1445(s0)
  401164:	fa1ff06f          	j	401104 <main+0x188>
