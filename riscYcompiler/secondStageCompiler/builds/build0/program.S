
builds/build0/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

00800000 <_start>:
  800000:	00002117          	auipc	sp,0x2
  800004:	00010113          	mv	sp,sp
  800008:	6f5000ef          	jal	800efc <_etext>
  80000c:	0200006f          	j	80002c <_exit>

00800010 <_putc>:
  800010:	880003b7          	lui	t2,0x88000
  800014:	00a383b3          	add	t2,t2,a0
  800018:	00f00293          	li	t0,15
  80001c:	00829293          	slli	t0,t0,0x8
  800020:	00b2e2b3          	or	t0,t0,a1
  800024:	00539023          	sh	t0,0(t2) # 88000000 <_stack_end+0x877fe000>
  800028:	00008067          	ret

0080002c <_exit>:
  80002c:	00000513          	li	a0,0
  800030:	04500593          	li	a1,69
  800034:	fddff0ef          	jal	800010 <_putc>
  800038:	00250513          	addi	a0,a0,2
  80003c:	05800593          	li	a1,88
  800040:	fd1ff0ef          	jal	800010 <_putc>
  800044:	00250513          	addi	a0,a0,2
  800048:	04900593          	li	a1,73
  80004c:	fc5ff0ef          	jal	800010 <_putc>
  800050:	00250513          	addi	a0,a0,2
  800054:	05400593          	li	a1,84
  800058:	fb9ff0ef          	jal	800010 <_putc>
  80005c:	fd1ff06f          	j	80002c <_exit>

00800060 <__divsi3>:
  800060:	00050793          	mv	a5,a0
  800064:	00058513          	mv	a0,a1
  800068:	02058a63          	beqz	a1,80009c <__divsi3+0x3c>
  80006c:	00000713          	li	a4,0
  800070:	0007d663          	bgez	a5,80007c <__divsi3+0x1c>
  800074:	40f007b3          	neg	a5,a5
  800078:	00100713          	li	a4,1
  80007c:	00055663          	bgez	a0,800088 <__divsi3+0x28>
  800080:	40a00533          	neg	a0,a0
  800084:	00174713          	xori	a4,a4,1
  800088:	00000693          	li	a3,0
  80008c:	02a7f863          	bgeu	a5,a0,8000bc <__divsi3+0x5c>
  800090:	00068513          	mv	a0,a3
  800094:	00070463          	beqz	a4,80009c <__divsi3+0x3c>
  800098:	40d00533          	neg	a0,a3
  80009c:	00008067          	ret
  8000a0:	00161613          	slli	a2,a2,0x1
  8000a4:	00080593          	mv	a1,a6
  8000a8:	00159813          	slli	a6,a1,0x1
  8000ac:	ff07fae3          	bgeu	a5,a6,8000a0 <__divsi3+0x40>
  8000b0:	40b787b3          	sub	a5,a5,a1
  8000b4:	00c686b3          	add	a3,a3,a2
  8000b8:	fd5ff06f          	j	80008c <__divsi3+0x2c>
  8000bc:	00050593          	mv	a1,a0
  8000c0:	00100613          	li	a2,1
  8000c4:	fe5ff06f          	j	8000a8 <__divsi3+0x48>

008000c8 <__modsi3>:
  8000c8:	ff010113          	addi	sp,sp,-16 # 801ff0 <_stack_bottom+0x1f0>
  8000cc:	00112623          	sw	ra,12(sp)
  8000d0:	00812423          	sw	s0,8(sp)
  8000d4:	00912223          	sw	s1,4(sp)
  8000d8:	00050413          	mv	s0,a0
  8000dc:	00058493          	mv	s1,a1
  8000e0:	f81ff0ef          	jal	800060 <__divsi3>
  8000e4:	00050593          	mv	a1,a0
  8000e8:	00048513          	mv	a0,s1
  8000ec:	01c000ef          	jal	800108 <__mulsi3>
  8000f0:	00c12083          	lw	ra,12(sp)
  8000f4:	40a40533          	sub	a0,s0,a0
  8000f8:	00812403          	lw	s0,8(sp)
  8000fc:	00412483          	lw	s1,4(sp)
  800100:	01010113          	addi	sp,sp,16
  800104:	00008067          	ret

00800108 <__mulsi3>:
  800108:	00050793          	mv	a5,a0
  80010c:	00000693          	li	a3,0
  800110:	00055663          	bgez	a0,80011c <__mulsi3+0x14>
  800114:	40a007b3          	neg	a5,a0
  800118:	00100693          	li	a3,1
  80011c:	0005d663          	bgez	a1,800128 <__mulsi3+0x20>
  800120:	40b005b3          	neg	a1,a1
  800124:	0016c693          	xori	a3,a3,1
  800128:	00000513          	li	a0,0
  80012c:	01c0006f          	j	800148 <__mulsi3+0x40>
  800130:	0015f713          	andi	a4,a1,1
  800134:	40e00733          	neg	a4,a4
  800138:	00f77733          	and	a4,a4,a5
  80013c:	00e50533          	add	a0,a0,a4
  800140:	00179793          	slli	a5,a5,0x1
  800144:	4015d593          	srai	a1,a1,0x1
  800148:	fe0594e3          	bnez	a1,800130 <__mulsi3+0x28>
  80014c:	00068463          	beqz	a3,800154 <__mulsi3+0x4c>
  800150:	40a00533          	neg	a0,a0
  800154:	00008067          	ret

00800158 <check_value>:
  800158:	fe010113          	addi	sp,sp,-32
  80015c:	00112e23          	sw	ra,28(sp)
  800160:	00812c23          	sw	s0,24(sp)
  800164:	00c12623          	sw	a2,12(sp)
  800168:	02b50a63          	beq	a0,a1,80019c <check_value+0x44>
  80016c:	00050413          	mv	s0,a0
  800170:	00801537          	lui	a0,0x801
  800174:	33050513          	addi	a0,a0,816 # 801330 <_etext+0x434>
  800178:	049000ef          	jal	8009c0 <printf>
  80017c:	00040593          	mv	a1,s0
  800180:	01812403          	lw	s0,24(sp)
  800184:	00c12603          	lw	a2,12(sp)
  800188:	01c12083          	lw	ra,28(sp)
  80018c:	00801537          	lui	a0,0x801
  800190:	33c50513          	addi	a0,a0,828 # 80133c <_etext+0x440>
  800194:	02010113          	addi	sp,sp,32
  800198:	0290006f          	j	8009c0 <printf>
  80019c:	01c12083          	lw	ra,28(sp)
  8001a0:	01812403          	lw	s0,24(sp)
  8001a4:	02010113          	addi	sp,sp,32
  8001a8:	00008067          	ret

008001ac <readFlash>:
  8001ac:	8b0007b7          	lui	a5,0x8b000
  8001b0:	00100713          	li	a4,1
  8001b4:	ff010113          	addi	sp,sp,-16
  8001b8:	00e780a3          	sb	a4,1(a5) # 8b000001 <_stack_end+0x8a7fe001>
  8001bc:	00a7a223          	sw	a0,4(a5)
  8001c0:	00012623          	sw	zero,12(sp)
  8001c4:	0c700713          	li	a4,199
  8001c8:	00c12783          	lw	a5,12(sp)
  8001cc:	00f75c63          	bge	a4,a5,8001e4 <readFlash+0x38>
  8001d0:	8b0007b7          	lui	a5,0x8b000
  8001d4:	000780a3          	sb	zero,1(a5) # 8b000001 <_stack_end+0x8a7fe001>
  8001d8:	00c7a503          	lw	a0,12(a5)
  8001dc:	01010113          	addi	sp,sp,16
  8001e0:	00008067          	ret
  8001e4:	00c12783          	lw	a5,12(sp)
  8001e8:	00178793          	addi	a5,a5,1
  8001ec:	00f12623          	sw	a5,12(sp)
  8001f0:	fd9ff06f          	j	8001c8 <readFlash+0x1c>

008001f4 <getUSBint>:
  8001f4:	100007b7          	lui	a5,0x10000
  8001f8:	0007a503          	lw	a0,0(a5) # 10000000 <_stack_end+0xf7fe000>
  8001fc:	00008067          	ret

00800200 <WriteSprite>:
  800200:	880017b7          	lui	a5,0x88001
  800204:	00651513          	slli	a0,a0,0x6
  800208:	00f50533          	add	a0,a0,a5
  80020c:	02000713          	li	a4,32
  800210:	00000793          	li	a5,0
  800214:	00f586b3          	add	a3,a1,a5
  800218:	0006c683          	lbu	a3,0(a3)
  80021c:	00178793          	addi	a5,a5,1 # 88001001 <_stack_end+0x877ff001>
  800220:	00250513          	addi	a0,a0,2
  800224:	fed51f23          	sh	a3,-2(a0)
  800228:	fee796e3          	bne	a5,a4,800214 <WriteSprite+0x14>
  80022c:	00008067          	ret

00800230 <elfLoader>:
  800230:	f3010113          	addi	sp,sp,-208
  800234:	0c812423          	sw	s0,200(sp)
  800238:	0c112623          	sw	ra,204(sp)
  80023c:	0c912223          	sw	s1,196(sp)
  800240:	0d212023          	sw	s2,192(sp)
  800244:	0b312e23          	sw	s3,188(sp)
  800248:	0b412c23          	sw	s4,184(sp)
  80024c:	0b512a23          	sw	s5,180(sp)
  800250:	0b612823          	sw	s6,176(sp)
  800254:	0b712623          	sw	s7,172(sp)
  800258:	0b812423          	sw	s8,168(sp)
  80025c:	0b912223          	sw	s9,164(sp)
  800260:	0ba12023          	sw	s10,160(sp)
  800264:	09b12e23          	sw	s11,156(sp)
  800268:	00050413          	mv	s0,a0
  80026c:	425000ef          	jal	800e90 <clearScreen>
  800270:	00000793          	li	a5,0
  800274:	80000637          	lui	a2,0x80000
  800278:	0000c6b7          	lui	a3,0xc
  80027c:	ffc7f713          	andi	a4,a5,-4
  800280:	00e60733          	add	a4,a2,a4
  800284:	00072023          	sw	zero,0(a4)
  800288:	00478793          	addi	a5,a5,4
  80028c:	fed798e3          	bne	a5,a3,80027c <elfLoader+0x4c>
  800290:	00801537          	lui	a0,0x801
  800294:	03400593          	li	a1,52
  800298:	34c50513          	addi	a0,a0,844 # 80134c <_etext+0x450>
  80029c:	259000ef          	jal	800cf4 <uart_printf>
  8002a0:	00000493          	li	s1,0
  8002a4:	05c10993          	addi	s3,sp,92
  8002a8:	03400913          	li	s2,52
  8002ac:	00848533          	add	a0,s1,s0
  8002b0:	efdff0ef          	jal	8001ac <readFlash>
  8002b4:	009987b3          	add	a5,s3,s1
  8002b8:	00a7a023          	sw	a0,0(a5)
  8002bc:	00448493          	addi	s1,s1,4
  8002c0:	ff2496e3          	bne	s1,s2,8002ac <elfLoader+0x7c>
  8002c4:	00801537          	lui	a0,0x801
  8002c8:	36450513          	addi	a0,a0,868 # 801364 <_etext+0x468>
  8002cc:	229000ef          	jal	800cf4 <uart_printf>
  8002d0:	05c14503          	lbu	a0,92(sp)
  8002d4:	00000613          	li	a2,0
  8002d8:	07f00593          	li	a1,127
  8002dc:	e7dff0ef          	jal	800158 <check_value>
  8002e0:	05d14503          	lbu	a0,93(sp)
  8002e4:	00100613          	li	a2,1
  8002e8:	04500593          	li	a1,69
  8002ec:	e6dff0ef          	jal	800158 <check_value>
  8002f0:	05e14503          	lbu	a0,94(sp)
  8002f4:	00200613          	li	a2,2
  8002f8:	04c00593          	li	a1,76
  8002fc:	e5dff0ef          	jal	800158 <check_value>
  800300:	05f14503          	lbu	a0,95(sp)
  800304:	00300613          	li	a2,3
  800308:	04600593          	li	a1,70
  80030c:	e4dff0ef          	jal	800158 <check_value>
  800310:	06014503          	lbu	a0,96(sp)
  800314:	00400613          	li	a2,4
  800318:	00100593          	li	a1,1
  80031c:	e3dff0ef          	jal	800158 <check_value>
  800320:	08415503          	lhu	a0,132(sp)
  800324:	00048593          	mv	a1,s1
  800328:	00500613          	li	a2,5
  80032c:	e2dff0ef          	jal	800158 <check_value>
  800330:	06114503          	lbu	a0,97(sp)
  800334:	00600613          	li	a2,6
  800338:	00100593          	li	a1,1
  80033c:	e1dff0ef          	jal	800158 <check_value>
  800340:	06214503          	lbu	a0,98(sp)
  800344:	00700613          	li	a2,7
  800348:	00100593          	li	a1,1
  80034c:	e0dff0ef          	jal	800158 <check_value>
  800350:	06314503          	lbu	a0,99(sp)
  800354:	00800613          	li	a2,8
  800358:	00000593          	li	a1,0
  80035c:	dfdff0ef          	jal	800158 <check_value>
  800360:	06414503          	lbu	a0,100(sp)
  800364:	00900613          	li	a2,9
  800368:	00000593          	li	a1,0
  80036c:	dedff0ef          	jal	800158 <check_value>
  800370:	06c15503          	lhu	a0,108(sp)
  800374:	00a00613          	li	a2,10
  800378:	00200593          	li	a1,2
  80037c:	dddff0ef          	jal	800158 <check_value>
  800380:	06e15503          	lhu	a0,110(sp)
  800384:	00b00613          	li	a2,11
  800388:	0f300593          	li	a1,243
  80038c:	dcdff0ef          	jal	800158 <check_value>
  800390:	07012503          	lw	a0,112(sp)
  800394:	00c00613          	li	a2,12
  800398:	00100593          	li	a1,1
  80039c:	dbdff0ef          	jal	800158 <check_value>
  8003a0:	08615503          	lhu	a0,134(sp)
  8003a4:	00d00613          	li	a2,13
  8003a8:	02000593          	li	a1,32
  8003ac:	dadff0ef          	jal	800158 <check_value>
  8003b0:	08815783          	lhu	a5,136(sp)
  8003b4:	07412603          	lw	a2,116(sp)
  8003b8:	00801537          	lui	a0,0x801
  8003bc:	00078593          	mv	a1,a5
  8003c0:	36850513          	addi	a0,a0,872 # 801368 <_etext+0x46c>
  8003c4:	00f12623          	sw	a5,12(sp)
  8003c8:	00000493          	li	s1,0
  8003cc:	129000ef          	jal	800cf4 <uart_printf>
  8003d0:	01410b13          	addi	s6,sp,20
  8003d4:	02000b93          	li	s7,32
  8003d8:	00100c13          	li	s8,1
  8003dc:	00801cb7          	lui	s9,0x801
  8003e0:	01300d13          	li	s10,19
  8003e4:	00801db7          	lui	s11,0x801
  8003e8:	00c12783          	lw	a5,12(sp)
  8003ec:	06f4ca63          	blt	s1,a5,800460 <elfLoader+0x230>
  8003f0:	08c15a03          	lhu	s4,140(sp)
  8003f4:	00801537          	lui	a0,0x801
  8003f8:	3c450513          	addi	a0,a0,964 # 8013c4 <_etext+0x4c8>
  8003fc:	000a0593          	mv	a1,s4
  800400:	0f5000ef          	jal	800cf4 <uart_printf>
  800404:	00000993          	li	s3,0
  800408:	00000913          	li	s2,0
  80040c:	03410a93          	addi	s5,sp,52
  800410:	02800b13          	li	s6,40
  800414:	00800b93          	li	s7,8
  800418:	00801c37          	lui	s8,0x801
  80041c:	00801cb7          	lui	s9,0x801
  800420:	0f494863          	blt	s2,s4,800510 <elfLoader+0x2e0>
  800424:	0cc12083          	lw	ra,204(sp)
  800428:	0c812403          	lw	s0,200(sp)
  80042c:	0c412483          	lw	s1,196(sp)
  800430:	0c012903          	lw	s2,192(sp)
  800434:	0bc12983          	lw	s3,188(sp)
  800438:	0b812a03          	lw	s4,184(sp)
  80043c:	0b412a83          	lw	s5,180(sp)
  800440:	0b012b03          	lw	s6,176(sp)
  800444:	0ac12b83          	lw	s7,172(sp)
  800448:	0a812c03          	lw	s8,168(sp)
  80044c:	0a412c83          	lw	s9,164(sp)
  800450:	0a012d03          	lw	s10,160(sp)
  800454:	09c12d83          	lw	s11,156(sp)
  800458:	0d010113          	addi	sp,sp,208
  80045c:	00008067          	ret
  800460:	00549993          	slli	s3,s1,0x5
  800464:	00000913          	li	s2,0
  800468:	07812503          	lw	a0,120(sp)
  80046c:	00a40533          	add	a0,s0,a0
  800470:	01350533          	add	a0,a0,s3
  800474:	01250533          	add	a0,a0,s2
  800478:	d35ff0ef          	jal	8001ac <readFlash>
  80047c:	012b07b3          	add	a5,s6,s2
  800480:	00a7a023          	sw	a0,0(a5)
  800484:	00490913          	addi	s2,s2,4
  800488:	ff7910e3          	bne	s2,s7,800468 <elfLoader+0x238>
  80048c:	01412783          	lw	a5,20(sp)
  800490:	01878c63          	beq	a5,s8,8004a8 <elfLoader+0x278>
  800494:	00801537          	lui	a0,0x801
  800498:	38850513          	addi	a0,a0,904 # 801388 <_etext+0x48c>
  80049c:	059000ef          	jal	800cf4 <uart_printf>
  8004a0:	00148493          	addi	s1,s1,1
  8004a4:	f45ff06f          	j	8003e8 <elfLoader+0x1b8>
  8004a8:	02412983          	lw	s3,36(sp)
  8004ac:	00099863          	bnez	s3,8004bc <elfLoader+0x28c>
  8004b0:	00801537          	lui	a0,0x801
  8004b4:	39450513          	addi	a0,a0,916 # 801394 <_etext+0x498>
  8004b8:	fe5ff06f          	j	80049c <elfLoader+0x26c>
  8004bc:	01812903          	lw	s2,24(sp)
  8004c0:	01c12a83          	lw	s5,28(sp)
  8004c4:	00048593          	mv	a1,s1
  8004c8:	00090693          	mv	a3,s2
  8004cc:	000a8613          	mv	a2,s5
  8004d0:	39cc8513          	addi	a0,s9,924 # 80139c <_etext+0x4a0>
  8004d4:	021000ef          	jal	800cf4 <uart_printf>
  8004d8:	00000a13          	li	s4,0
  8004dc:	00890933          	add	s2,s2,s0
  8004e0:	01490533          	add	a0,s2,s4
  8004e4:	cc9ff0ef          	jal	8001ac <readFlash>
  8004e8:	014a8733          	add	a4,s5,s4
  8004ec:	00a70023          	sb	a0,0(a4)
  8004f0:	41498733          	sub	a4,s3,s4
  8004f4:	00ed6863          	bltu	s10,a4,800504 <elfLoader+0x2d4>
  8004f8:	0ff57593          	zext.b	a1,a0
  8004fc:	3c0d8513          	addi	a0,s11,960 # 8013c0 <_etext+0x4c4>
  800500:	7f4000ef          	jal	800cf4 <uart_printf>
  800504:	001a0a13          	addi	s4,s4,1
  800508:	fd3a1ce3          	bne	s4,s3,8004e0 <elfLoader+0x2b0>
  80050c:	f95ff06f          	j	8004a0 <elfLoader+0x270>
  800510:	00000493          	li	s1,0
  800514:	07c12503          	lw	a0,124(sp)
  800518:	00a40533          	add	a0,s0,a0
  80051c:	01350533          	add	a0,a0,s3
  800520:	00950533          	add	a0,a0,s1
  800524:	c89ff0ef          	jal	8001ac <readFlash>
  800528:	009a87b3          	add	a5,s5,s1
  80052c:	00a7a023          	sw	a0,0(a5)
  800530:	00448493          	addi	s1,s1,4
  800534:	ff6490e3          	bne	s1,s6,800514 <elfLoader+0x2e4>
  800538:	03812783          	lw	a5,56(sp)
  80053c:	01778c63          	beq	a5,s7,800554 <elfLoader+0x324>
  800540:	3d8c8513          	addi	a0,s9,984
  800544:	7b0000ef          	jal	800cf4 <uart_printf>
  800548:	00190913          	addi	s2,s2,1
  80054c:	02898993          	addi	s3,s3,40
  800550:	ed1ff06f          	j	800420 <elfLoader+0x1f0>
  800554:	04012d03          	lw	s10,64(sp)
  800558:	04812483          	lw	s1,72(sp)
  80055c:	3dcc0513          	addi	a0,s8,988 # 8013dc <_etext+0x4e0>
  800560:	000d0593          	mv	a1,s10
  800564:	00048613          	mv	a2,s1
  800568:	78c000ef          	jal	800cf4 <uart_printf>
  80056c:	00000793          	li	a5,0
  800570:	fc978ce3          	beq	a5,s1,800548 <elfLoader+0x318>
  800574:	01a78733          	add	a4,a5,s10
  800578:	00070023          	sb	zero,0(a4)
  80057c:	00178793          	addi	a5,a5,1
  800580:	ff1ff06f          	j	800570 <elfLoader+0x340>

00800584 <TestRAM>:
  800584:	00801537          	lui	a0,0x801
  800588:	fe010113          	addi	sp,sp,-32
  80058c:	3fc50513          	addi	a0,a0,1020 # 8013fc <_etext+0x500>
  800590:	00112e23          	sw	ra,28(sp)
  800594:	00812c23          	sw	s0,24(sp)
  800598:	00912a23          	sw	s1,20(sp)
  80059c:	01212823          	sw	s2,16(sp)
  8005a0:	01312623          	sw	s3,12(sp)
  8005a4:	750000ef          	jal	800cf4 <uart_printf>
  8005a8:	00000793          	li	a5,0
  8005ac:	80000637          	lui	a2,0x80000
  8005b0:	000036b7          	lui	a3,0x3
  8005b4:	00279713          	slli	a4,a5,0x2
  8005b8:	00e60733          	add	a4,a2,a4
  8005bc:	00f72023          	sw	a5,0(a4)
  8005c0:	00178793          	addi	a5,a5,1
  8005c4:	fed798e3          	bne	a5,a3,8005b4 <TestRAM+0x30>
  8005c8:	00000413          	li	s0,0
  8005cc:	80000737          	lui	a4,0x80000
  8005d0:	000037b7          	lui	a5,0x3
  8005d4:	00241493          	slli	s1,s0,0x2
  8005d8:	00e484b3          	add	s1,s1,a4
  8005dc:	0004a683          	lw	a3,0(s1)
  8005e0:	04868463          	beq	a3,s0,800628 <TestRAM+0xa4>
  8005e4:	008019b7          	lui	s3,0x801
  8005e8:	00040593          	mv	a1,s0
  8005ec:	41098513          	addi	a0,s3,1040 # 801410 <_etext+0x514>
  8005f0:	704000ef          	jal	800cf4 <uart_printf>
  8005f4:	0004a583          	lw	a1,0(s1)
  8005f8:	00801937          	lui	s2,0x801
  8005fc:	00040613          	mv	a2,s0
  800600:	42490513          	addi	a0,s2,1060 # 801424 <_etext+0x528>
  800604:	6f0000ef          	jal	800cf4 <uart_printf>
  800608:	00040593          	mv	a1,s0
  80060c:	41098513          	addi	a0,s3,1040
  800610:	3b0000ef          	jal	8009c0 <printf>
  800614:	0004a583          	lw	a1,0(s1)
  800618:	00040613          	mv	a2,s0
  80061c:	42490513          	addi	a0,s2,1060
  800620:	3a0000ef          	jal	8009c0 <printf>
  800624:	0000006f          	j	800624 <TestRAM+0xa0>
  800628:	00140413          	addi	s0,s0,1
  80062c:	faf414e3          	bne	s0,a5,8005d4 <TestRAM+0x50>
  800630:	01812403          	lw	s0,24(sp)
  800634:	01c12083          	lw	ra,28(sp)
  800638:	01412483          	lw	s1,20(sp)
  80063c:	01012903          	lw	s2,16(sp)
  800640:	00c12983          	lw	s3,12(sp)
  800644:	00801537          	lui	a0,0x801
  800648:	0000c5b7          	lui	a1,0xc
  80064c:	43c50513          	addi	a0,a0,1084 # 80143c <_etext+0x540>
  800650:	02010113          	addi	sp,sp,32
  800654:	6a00006f          	j	800cf4 <uart_printf>

00800658 <vOutNS16550>:
  800658:	10000737          	lui	a4,0x10000
  80065c:	00570713          	addi	a4,a4,5 # 10000005 <_stack_end+0xf7fe005>
  800660:	00074783          	lbu	a5,0(a4)
  800664:	0207f793          	andi	a5,a5,32
  800668:	fe078ce3          	beqz	a5,800660 <vOutNS16550+0x8>
  80066c:	100007b7          	lui	a5,0x10000
  800670:	00a78023          	sb	a0,0(a5) # 10000000 <_stack_end+0xf7fe000>
  800674:	00008067          	ret

00800678 <memcpy>:
  800678:	00000793          	li	a5,0
  80067c:	00c7c463          	blt	a5,a2,800684 <memcpy+0xc>
  800680:	00008067          	ret
  800684:	00f58733          	add	a4,a1,a5
  800688:	00074683          	lbu	a3,0(a4)
  80068c:	00f50733          	add	a4,a0,a5
  800690:	00178793          	addi	a5,a5,1
  800694:	00d70023          	sb	a3,0(a4)
  800698:	fe5ff06f          	j	80067c <memcpy+0x4>

0080069c <memset>:
  80069c:	00c50633          	add	a2,a0,a2
  8006a0:	00050793          	mv	a5,a0
  8006a4:	00c79463          	bne	a5,a2,8006ac <memset+0x10>
  8006a8:	00008067          	ret
  8006ac:	00178793          	addi	a5,a5,1
  8006b0:	feb78fa3          	sb	a1,-1(a5)
  8006b4:	ff1ff06f          	j	8006a4 <memset+0x8>

008006b8 <getButton>:
  8006b8:	890007b7          	lui	a5,0x89000
  8006bc:	00a787b3          	add	a5,a5,a0
  8006c0:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x887fe000>
  8006c4:	00008067          	ret

008006c8 <getButtonDown>:
  8006c8:	890007b7          	lui	a5,0x89000
  8006cc:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x887fe000>
  8006d0:	00008067          	ret

008006d4 <getButtonUp>:
  8006d4:	890007b7          	lui	a5,0x89000
  8006d8:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x887fe001>
  8006dc:	00008067          	ret

008006e0 <getButtonLeft>:
  8006e0:	890007b7          	lui	a5,0x89000
  8006e4:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x887fe002>
  8006e8:	00008067          	ret

008006ec <getButtonRight>:
  8006ec:	890007b7          	lui	a5,0x89000
  8006f0:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x887fe003>
  8006f4:	00008067          	ret

008006f8 <putch>:
  8006f8:	ff010113          	addi	sp,sp,-16
  8006fc:	00812423          	sw	s0,8(sp)
  800700:	00912223          	sw	s1,4(sp)
  800704:	01212023          	sw	s2,0(sp)
  800708:	00112623          	sw	ra,12(sp)
  80070c:	00050413          	mv	s0,a0
  800710:	00058913          	mv	s2,a1
  800714:	00060493          	mv	s1,a2
  800718:	02055663          	bgez	a0,800744 <putch+0x4c>
  80071c:	00058513          	mv	a0,a1
  800720:	f39ff0ef          	jal	800658 <vOutNS16550>
  800724:	00849493          	slli	s1,s1,0x8
  800728:	00141413          	slli	s0,s0,0x1
  80072c:	880007b7          	lui	a5,0x88000
  800730:	0124e4b3          	or	s1,s1,s2
  800734:	00f40433          	add	s0,s0,a5
  800738:	00941023          	sh	s1,0(s0)
  80073c:	00100513          	li	a0,1
  800740:	0100006f          	j	800750 <putch+0x58>
  800744:	4c000793          	li	a5,1216
  800748:	00000513          	li	a0,0
  80074c:	fc87dce3          	bge	a5,s0,800724 <putch+0x2c>
  800750:	00c12083          	lw	ra,12(sp)
  800754:	00812403          	lw	s0,8(sp)
  800758:	00412483          	lw	s1,4(sp)
  80075c:	00012903          	lw	s2,0(sp)
  800760:	01010113          	addi	sp,sp,16
  800764:	00008067          	ret

00800768 <printString>:
  800768:	fe010113          	addi	sp,sp,-32
  80076c:	01312623          	sw	s3,12(sp)
  800770:	01412423          	sw	s4,8(sp)
  800774:	00112e23          	sw	ra,28(sp)
  800778:	00812c23          	sw	s0,24(sp)
  80077c:	00912a23          	sw	s1,20(sp)
  800780:	01212823          	sw	s2,16(sp)
  800784:	01512223          	sw	s5,4(sp)
  800788:	01612023          	sw	s6,0(sp)
  80078c:	00050a13          	mv	s4,a0
  800790:	00058993          	mv	s3,a1
  800794:	06060c63          	beqz	a2,80080c <printString+0xa4>
  800798:	00060413          	mv	s0,a2
  80079c:	00000913          	li	s2,0
  8007a0:	00000493          	li	s1,0
  8007a4:	00100a93          	li	s5,1
  8007a8:	00f00b13          	li	s6,15
  8007ac:	0280006f          	j	8007d4 <printString+0x6c>
  8007b0:	00040613          	mv	a2,s0
  8007b4:	009a0533          	add	a0,s4,s1
  8007b8:	f41ff0ef          	jal	8006f8 <putch>
  8007bc:	06050263          	beqz	a0,800820 <printString+0xb8>
  8007c0:	00148493          	addi	s1,s1,1
  8007c4:	01591863          	bne	s2,s5,8007d4 <printString+0x6c>
  8007c8:	00140413          	addi	s0,s0,1
  8007cc:	0ff47413          	zext.b	s0,s0
  8007d0:	048b6463          	bltu	s6,s0,800818 <printString+0xb0>
  8007d4:	009987b3          	add	a5,s3,s1
  8007d8:	0007c583          	lbu	a1,0(a5) # 88000000 <_stack_end+0x877fe000>
  8007dc:	00048513          	mv	a0,s1
  8007e0:	fc0598e3          	bnez	a1,8007b0 <printString+0x48>
  8007e4:	01c12083          	lw	ra,28(sp)
  8007e8:	01812403          	lw	s0,24(sp)
  8007ec:	01412483          	lw	s1,20(sp)
  8007f0:	01012903          	lw	s2,16(sp)
  8007f4:	00c12983          	lw	s3,12(sp)
  8007f8:	00812a03          	lw	s4,8(sp)
  8007fc:	00412a83          	lw	s5,4(sp)
  800800:	00012b03          	lw	s6,0(sp)
  800804:	02010113          	addi	sp,sp,32
  800808:	00008067          	ret
  80080c:	00100913          	li	s2,1
  800810:	00090413          	mv	s0,s2
  800814:	f8dff06f          	j	8007a0 <printString+0x38>
  800818:	00090413          	mv	s0,s2
  80081c:	fb9ff06f          	j	8007d4 <printString+0x6c>
  800820:	00000513          	li	a0,0
  800824:	fc1ff06f          	j	8007e4 <printString+0x7c>

00800828 <printHex>:
  800828:	fd010113          	addi	sp,sp,-48
  80082c:	02812423          	sw	s0,40(sp)
  800830:	00058413          	mv	s0,a1
  800834:	008015b7          	lui	a1,0x801
  800838:	02912223          	sw	s1,36(sp)
  80083c:	03212023          	sw	s2,32(sp)
  800840:	4c458593          	addi	a1,a1,1220 # 8014c4 <_etext+0x5c8>
  800844:	00050493          	mv	s1,a0
  800848:	00060913          	mv	s2,a2
  80084c:	00c10513          	addi	a0,sp,12
  800850:	01100613          	li	a2,17
  800854:	02112623          	sw	ra,44(sp)
  800858:	e21ff0ef          	jal	800678 <memcpy>
  80085c:	202027b7          	lui	a5,0x20202
  800860:	02078793          	addi	a5,a5,32 # 20202020 <_stack_end+0x1fa00020>
  800864:	00f12023          	sw	a5,0(sp)
  800868:	00f12223          	sw	a5,4(sp)
  80086c:	00010423          	sb	zero,8(sp)
  800870:	00700793          	li	a5,7
  800874:	00010593          	mv	a1,sp
  800878:	fff00693          	li	a3,-1
  80087c:	00f47713          	andi	a4,s0,15
  800880:	02070713          	addi	a4,a4,32
  800884:	00270733          	add	a4,a4,sp
  800888:	fec74703          	lbu	a4,-20(a4)
  80088c:	00f58633          	add	a2,a1,a5
  800890:	fff78793          	addi	a5,a5,-1
  800894:	00e60023          	sb	a4,0(a2) # 80000000 <_stack_end+0x7f7fe000>
  800898:	40445413          	srai	s0,s0,0x4
  80089c:	fed790e3          	bne	a5,a3,80087c <printHex+0x54>
  8008a0:	00090613          	mv	a2,s2
  8008a4:	00048513          	mv	a0,s1
  8008a8:	ec1ff0ef          	jal	800768 <printString>
  8008ac:	02c12083          	lw	ra,44(sp)
  8008b0:	02812403          	lw	s0,40(sp)
  8008b4:	02412483          	lw	s1,36(sp)
  8008b8:	02012903          	lw	s2,32(sp)
  8008bc:	0ff57513          	zext.b	a0,a0
  8008c0:	03010113          	addi	sp,sp,48
  8008c4:	00008067          	ret

008008c8 <printDec>:
  8008c8:	fd010113          	addi	sp,sp,-48
  8008cc:	02812423          	sw	s0,40(sp)
  8008d0:	00058413          	mv	s0,a1
  8008d4:	008015b7          	lui	a1,0x801
  8008d8:	02912223          	sw	s1,36(sp)
  8008dc:	03212023          	sw	s2,32(sp)
  8008e0:	00050493          	mv	s1,a0
  8008e4:	00060913          	mv	s2,a2
  8008e8:	ee858593          	addi	a1,a1,-280 # 800ee8 <resetScreenVector+0xc>
  8008ec:	01400613          	li	a2,20
  8008f0:	00c10513          	addi	a0,sp,12
  8008f4:	02112623          	sw	ra,44(sp)
  8008f8:	d81ff0ef          	jal	800678 <memcpy>
  8008fc:	000187b7          	lui	a5,0x18
  800900:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1849f>
  800904:	0287fa63          	bgeu	a5,s0,800938 <printDec+0x70>
  800908:	008015b7          	lui	a1,0x801
  80090c:	00090613          	mv	a2,s2
  800910:	4d858593          	addi	a1,a1,1240 # 8014d8 <_etext+0x5dc>
  800914:	00048513          	mv	a0,s1
  800918:	e51ff0ef          	jal	800768 <printString>
  80091c:	02c12083          	lw	ra,44(sp)
  800920:	02812403          	lw	s0,40(sp)
  800924:	02412483          	lw	s1,36(sp)
  800928:	02012903          	lw	s2,32(sp)
  80092c:	0ff57513          	zext.b	a0,a0
  800930:	03010113          	addi	sp,sp,48
  800934:	00008067          	ret
  800938:	00100613          	li	a2,1
  80093c:	00c10713          	addi	a4,sp,12
  800940:	00000793          	li	a5,0
  800944:	00060513          	mv	a0,a2
  800948:	00072583          	lw	a1,0(a4)
  80094c:	00000693          	li	a3,0
  800950:	06b47263          	bgeu	s0,a1,8009b4 <printDec+0xec>
  800954:	00069663          	bnez	a3,800960 <printDec+0x98>
  800958:	00a58463          	beq	a1,a0,800960 <printDec+0x98>
  80095c:	00061e63          	bnez	a2,800978 <printDec+0xb0>
  800960:	02078613          	addi	a2,a5,32
  800964:	00260633          	add	a2,a2,sp
  800968:	03068693          	addi	a3,a3,48 # 3030 <_stack_size+0x2e30>
  80096c:	fed60223          	sb	a3,-28(a2)
  800970:	00178793          	addi	a5,a5,1
  800974:	00000613          	li	a2,0
  800978:	00470713          	addi	a4,a4,4
  80097c:	02010693          	addi	a3,sp,32
  800980:	fcd714e3          	bne	a4,a3,800948 <printDec+0x80>
  800984:	00060c63          	beqz	a2,80099c <printDec+0xd4>
  800988:	02078713          	addi	a4,a5,32
  80098c:	00270733          	add	a4,a4,sp
  800990:	03000693          	li	a3,48
  800994:	fed70223          	sb	a3,-28(a4)
  800998:	00178793          	addi	a5,a5,1
  80099c:	02078793          	addi	a5,a5,32
  8009a0:	002787b3          	add	a5,a5,sp
  8009a4:	fe078223          	sb	zero,-28(a5)
  8009a8:	00090613          	mv	a2,s2
  8009ac:	00410593          	addi	a1,sp,4
  8009b0:	f65ff06f          	j	800914 <printDec+0x4c>
  8009b4:	40b40433          	sub	s0,s0,a1
  8009b8:	00168693          	addi	a3,a3,1
  8009bc:	f95ff06f          	j	800950 <printDec+0x88>

008009c0 <printf>:
  8009c0:	fa010113          	addi	sp,sp,-96
  8009c4:	04f12a23          	sw	a5,84(sp)
  8009c8:	04410793          	addi	a5,sp,68
  8009cc:	02812c23          	sw	s0,56(sp)
  8009d0:	02912a23          	sw	s1,52(sp)
  8009d4:	03212823          	sw	s2,48(sp)
  8009d8:	03312623          	sw	s3,44(sp)
  8009dc:	03412423          	sw	s4,40(sp)
  8009e0:	03512223          	sw	s5,36(sp)
  8009e4:	03612023          	sw	s6,32(sp)
  8009e8:	01812c23          	sw	s8,24(sp)
  8009ec:	02112e23          	sw	ra,60(sp)
  8009f0:	01712e23          	sw	s7,28(sp)
  8009f4:	00050493          	mv	s1,a0
  8009f8:	04b12223          	sw	a1,68(sp)
  8009fc:	04c12423          	sw	a2,72(sp)
  800a00:	04d12623          	sw	a3,76(sp)
  800a04:	04e12823          	sw	a4,80(sp)
  800a08:	05012c23          	sw	a6,88(sp)
  800a0c:	05112e23          	sw	a7,92(sp)
  800a10:	00f12623          	sw	a5,12(sp)
  800a14:	00000c13          	li	s8,0
  800a18:	00801437          	lui	s0,0x801
  800a1c:	00a00993          	li	s3,10
  800a20:	02500913          	li	s2,37
  800a24:	07800a13          	li	s4,120
  800a28:	06400a93          	li	s5,100
  800a2c:	06300b13          	li	s6,99
  800a30:	018487b3          	add	a5,s1,s8
  800a34:	0007c583          	lbu	a1,0(a5)
  800a38:	4e441503          	lh	a0,1252(s0) # 8014e4 <screenPos>
  800a3c:	02059a63          	bnez	a1,800a70 <printf+0xb0>
  800a40:	03c12083          	lw	ra,60(sp)
  800a44:	03812403          	lw	s0,56(sp)
  800a48:	03412483          	lw	s1,52(sp)
  800a4c:	03012903          	lw	s2,48(sp)
  800a50:	02c12983          	lw	s3,44(sp)
  800a54:	02812a03          	lw	s4,40(sp)
  800a58:	02412a83          	lw	s5,36(sp)
  800a5c:	02012b03          	lw	s6,32(sp)
  800a60:	01c12b83          	lw	s7,28(sp)
  800a64:	01812c03          	lw	s8,24(sp)
  800a68:	06010113          	addi	sp,sp,96
  800a6c:	00008067          	ret
  800a70:	001c0b93          	addi	s7,s8,1
  800a74:	01359e63          	bne	a1,s3,800a90 <printf+0xd0>
  800a78:	fc057793          	andi	a5,a0,-64
  800a7c:	04078793          	addi	a5,a5,64
  800a80:	01079793          	slli	a5,a5,0x10
  800a84:	4107d793          	srai	a5,a5,0x10
  800a88:	000c0b93          	mv	s7,s8
  800a8c:	0380006f          	j	800ac4 <printf+0x104>
  800a90:	0d259263          	bne	a1,s2,800b54 <printf+0x194>
  800a94:	0017c783          	lbu	a5,1(a5)
  800a98:	03479c63          	bne	a5,s4,800ad0 <printf+0x110>
  800a9c:	00c12783          	lw	a5,12(sp)
  800aa0:	00f00613          	li	a2,15
  800aa4:	0007a583          	lw	a1,0(a5)
  800aa8:	00478713          	addi	a4,a5,4
  800aac:	00e12623          	sw	a4,12(sp)
  800ab0:	d79ff0ef          	jal	800828 <printHex>
  800ab4:	4e445783          	lhu	a5,1252(s0)
  800ab8:	00f507b3          	add	a5,a0,a5
  800abc:	01079793          	slli	a5,a5,0x10
  800ac0:	4107d793          	srai	a5,a5,0x10
  800ac4:	4ef41223          	sh	a5,1252(s0)
  800ac8:	001b8c13          	addi	s8,s7,1
  800acc:	f65ff06f          	j	800a30 <printf+0x70>
  800ad0:	03579063          	bne	a5,s5,800af0 <printf+0x130>
  800ad4:	00c12783          	lw	a5,12(sp)
  800ad8:	00f00613          	li	a2,15
  800adc:	0007a583          	lw	a1,0(a5)
  800ae0:	00478713          	addi	a4,a5,4
  800ae4:	00e12623          	sw	a4,12(sp)
  800ae8:	de1ff0ef          	jal	8008c8 <printDec>
  800aec:	fc9ff06f          	j	800ab4 <printf+0xf4>
  800af0:	03679463          	bne	a5,s6,800b18 <printf+0x158>
  800af4:	00c12783          	lw	a5,12(sp)
  800af8:	00f00613          	li	a2,15
  800afc:	0007c583          	lbu	a1,0(a5)
  800b00:	00478713          	addi	a4,a5,4
  800b04:	00e12623          	sw	a4,12(sp)
  800b08:	bf1ff0ef          	jal	8006f8 <putch>
  800b0c:	4e445783          	lhu	a5,1252(s0)
  800b10:	00178793          	addi	a5,a5,1
  800b14:	fa9ff06f          	j	800abc <printf+0xfc>
  800b18:	07300713          	li	a4,115
  800b1c:	02e79063          	bne	a5,a4,800b3c <printf+0x17c>
  800b20:	00c12783          	lw	a5,12(sp)
  800b24:	00f00613          	li	a2,15
  800b28:	0007a583          	lw	a1,0(a5)
  800b2c:	00478713          	addi	a4,a5,4
  800b30:	00e12623          	sw	a4,12(sp)
  800b34:	c35ff0ef          	jal	800768 <printString>
  800b38:	f7dff06f          	j	800ab4 <printf+0xf4>
  800b3c:	00f00613          	li	a2,15
  800b40:	00090593          	mv	a1,s2
  800b44:	bb5ff0ef          	jal	8006f8 <putch>
  800b48:	4e445783          	lhu	a5,1252(s0)
  800b4c:	00178793          	addi	a5,a5,1
  800b50:	f31ff06f          	j	800a80 <printf+0xc0>
  800b54:	00f00613          	li	a2,15
  800b58:	fedff06f          	j	800b44 <printf+0x184>

00800b5c <printfSCR>:
  800b5c:	f9010113          	addi	sp,sp,-112
  800b60:	06f12223          	sw	a5,100(sp)
  800b64:	05c10793          	addi	a5,sp,92
  800b68:	04812423          	sw	s0,72(sp)
  800b6c:	04912223          	sw	s1,68(sp)
  800b70:	05212023          	sw	s2,64(sp)
  800b74:	03412c23          	sw	s4,56(sp)
  800b78:	03512a23          	sw	s5,52(sp)
  800b7c:	03612823          	sw	s6,48(sp)
  800b80:	03712623          	sw	s7,44(sp)
  800b84:	03812423          	sw	s8,40(sp)
  800b88:	03912223          	sw	s9,36(sp)
  800b8c:	03a12023          	sw	s10,32(sp)
  800b90:	01b12e23          	sw	s11,28(sp)
  800b94:	04112623          	sw	ra,76(sp)
  800b98:	03312e23          	sw	s3,60(sp)
  800b9c:	00050a93          	mv	s5,a0
  800ba0:	00058493          	mv	s1,a1
  800ba4:	00060a13          	mv	s4,a2
  800ba8:	04d12e23          	sw	a3,92(sp)
  800bac:	06e12023          	sw	a4,96(sp)
  800bb0:	07012423          	sw	a6,104(sp)
  800bb4:	07112623          	sw	a7,108(sp)
  800bb8:	00f12623          	sw	a5,12(sp)
  800bbc:	00000913          	li	s2,0
  800bc0:	00000413          	li	s0,0
  800bc4:	00a00b93          	li	s7,10
  800bc8:	02500b13          	li	s6,37
  800bcc:	07800c13          	li	s8,120
  800bd0:	06400c93          	li	s9,100
  800bd4:	06300d13          	li	s10,99
  800bd8:	07300d93          	li	s11,115
  800bdc:	012a07b3          	add	a5,s4,s2
  800be0:	0007c583          	lbu	a1,0(a5)
  800be4:	04059263          	bnez	a1,800c28 <printfSCR+0xcc>
  800be8:	04c12083          	lw	ra,76(sp)
  800bec:	00040513          	mv	a0,s0
  800bf0:	04812403          	lw	s0,72(sp)
  800bf4:	04412483          	lw	s1,68(sp)
  800bf8:	04012903          	lw	s2,64(sp)
  800bfc:	03c12983          	lw	s3,60(sp)
  800c00:	03812a03          	lw	s4,56(sp)
  800c04:	03412a83          	lw	s5,52(sp)
  800c08:	03012b03          	lw	s6,48(sp)
  800c0c:	02c12b83          	lw	s7,44(sp)
  800c10:	02812c03          	lw	s8,40(sp)
  800c14:	02412c83          	lw	s9,36(sp)
  800c18:	02012d03          	lw	s10,32(sp)
  800c1c:	01c12d83          	lw	s11,28(sp)
  800c20:	07010113          	addi	sp,sp,112
  800c24:	00008067          	ret
  800c28:	00190993          	addi	s3,s2,1
  800c2c:	01759a63          	bne	a1,s7,800c40 <printfSCR+0xe4>
  800c30:	fc047413          	andi	s0,s0,-64
  800c34:	04040413          	addi	s0,s0,64
  800c38:	00090993          	mv	s3,s2
  800c3c:	0740006f          	j	800cb0 <printfSCR+0x154>
  800c40:	01540533          	add	a0,s0,s5
  800c44:	0b659463          	bne	a1,s6,800cec <printfSCR+0x190>
  800c48:	0017c783          	lbu	a5,1(a5)
  800c4c:	03879263          	bne	a5,s8,800c70 <printfSCR+0x114>
  800c50:	00c12783          	lw	a5,12(sp)
  800c54:	00048613          	mv	a2,s1
  800c58:	0007a583          	lw	a1,0(a5)
  800c5c:	00478713          	addi	a4,a5,4
  800c60:	00e12623          	sw	a4,12(sp)
  800c64:	bc5ff0ef          	jal	800828 <printHex>
  800c68:	00a40433          	add	s0,s0,a0
  800c6c:	0440006f          	j	800cb0 <printfSCR+0x154>
  800c70:	03979063          	bne	a5,s9,800c90 <printfSCR+0x134>
  800c74:	00c12783          	lw	a5,12(sp)
  800c78:	00048613          	mv	a2,s1
  800c7c:	0007a583          	lw	a1,0(a5)
  800c80:	00478713          	addi	a4,a5,4
  800c84:	00e12623          	sw	a4,12(sp)
  800c88:	c41ff0ef          	jal	8008c8 <printDec>
  800c8c:	fddff06f          	j	800c68 <printfSCR+0x10c>
  800c90:	03a79463          	bne	a5,s10,800cb8 <printfSCR+0x15c>
  800c94:	00c12783          	lw	a5,12(sp)
  800c98:	00048613          	mv	a2,s1
  800c9c:	00140413          	addi	s0,s0,1
  800ca0:	0007c583          	lbu	a1,0(a5)
  800ca4:	00478713          	addi	a4,a5,4
  800ca8:	00e12623          	sw	a4,12(sp)
  800cac:	a4dff0ef          	jal	8006f8 <putch>
  800cb0:	00198913          	addi	s2,s3,1
  800cb4:	f29ff06f          	j	800bdc <printfSCR+0x80>
  800cb8:	03b79063          	bne	a5,s11,800cd8 <printfSCR+0x17c>
  800cbc:	00c12783          	lw	a5,12(sp)
  800cc0:	00048613          	mv	a2,s1
  800cc4:	0007a583          	lw	a1,0(a5)
  800cc8:	00478713          	addi	a4,a5,4
  800ccc:	00e12623          	sw	a4,12(sp)
  800cd0:	a99ff0ef          	jal	800768 <printString>
  800cd4:	f95ff06f          	j	800c68 <printfSCR+0x10c>
  800cd8:	00048613          	mv	a2,s1
  800cdc:	000b0593          	mv	a1,s6
  800ce0:	a19ff0ef          	jal	8006f8 <putch>
  800ce4:	00140413          	addi	s0,s0,1
  800ce8:	f51ff06f          	j	800c38 <printfSCR+0xdc>
  800cec:	00048613          	mv	a2,s1
  800cf0:	ff1ff06f          	j	800ce0 <printfSCR+0x184>

00800cf4 <uart_printf>:
  800cf4:	fa010113          	addi	sp,sp,-96
  800cf8:	03312623          	sw	s3,44(sp)
  800cfc:	04f12a23          	sw	a5,84(sp)
  800d00:	880009b7          	lui	s3,0x88000
  800d04:	04410793          	addi	a5,sp,68
  800d08:	02812c23          	sw	s0,56(sp)
  800d0c:	02912a23          	sw	s1,52(sp)
  800d10:	03412423          	sw	s4,40(sp)
  800d14:	03512223          	sw	s5,36(sp)
  800d18:	01712e23          	sw	s7,28(sp)
  800d1c:	01812c23          	sw	s8,24(sp)
  800d20:	01912a23          	sw	s9,20(sp)
  800d24:	01a12823          	sw	s10,16(sp)
  800d28:	02112e23          	sw	ra,60(sp)
  800d2c:	03212823          	sw	s2,48(sp)
  800d30:	03612023          	sw	s6,32(sp)
  800d34:	00050a13          	mv	s4,a0
  800d38:	04b12223          	sw	a1,68(sp)
  800d3c:	04c12423          	sw	a2,72(sp)
  800d40:	04d12623          	sw	a3,76(sp)
  800d44:	04e12823          	sw	a4,80(sp)
  800d48:	05012c23          	sw	a6,88(sp)
  800d4c:	05112e23          	sw	a7,92(sp)
  800d50:	00f12623          	sw	a5,12(sp)
  800d54:	00000493          	li	s1,0
  800d58:	00000413          	li	s0,0
  800d5c:	02500a93          	li	s5,37
  800d60:	f3898993          	addi	s3,s3,-200 # 87ffff38 <_stack_end+0x877fdf38>
  800d64:	07800b93          	li	s7,120
  800d68:	06400c13          	li	s8,100
  800d6c:	06300c93          	li	s9,99
  800d70:	07300d13          	li	s10,115
  800d74:	009a07b3          	add	a5,s4,s1
  800d78:	0007c903          	lbu	s2,0(a5)
  800d7c:	04091063          	bnez	s2,800dbc <uart_printf+0xc8>
  800d80:	03c12083          	lw	ra,60(sp)
  800d84:	00040513          	mv	a0,s0
  800d88:	03812403          	lw	s0,56(sp)
  800d8c:	03412483          	lw	s1,52(sp)
  800d90:	03012903          	lw	s2,48(sp)
  800d94:	02c12983          	lw	s3,44(sp)
  800d98:	02812a03          	lw	s4,40(sp)
  800d9c:	02412a83          	lw	s5,36(sp)
  800da0:	02012b03          	lw	s6,32(sp)
  800da4:	01c12b83          	lw	s7,28(sp)
  800da8:	01812c03          	lw	s8,24(sp)
  800dac:	01412c83          	lw	s9,20(sp)
  800db0:	01012d03          	lw	s10,16(sp)
  800db4:	06010113          	addi	sp,sp,96
  800db8:	00008067          	ret
  800dbc:	00148b13          	addi	s6,s1,1
  800dc0:	0d591063          	bne	s2,s5,800e80 <uart_printf+0x18c>
  800dc4:	0017c783          	lbu	a5,1(a5)
  800dc8:	03779663          	bne	a5,s7,800df4 <uart_printf+0x100>
  800dcc:	00c12783          	lw	a5,12(sp)
  800dd0:	00000613          	li	a2,0
  800dd4:	f9c00513          	li	a0,-100
  800dd8:	0007a583          	lw	a1,0(a5)
  800ddc:	00478713          	addi	a4,a5,4
  800de0:	00e12623          	sw	a4,12(sp)
  800de4:	a45ff0ef          	jal	800828 <printHex>
  800de8:	00a40433          	add	s0,s0,a0
  800dec:	001b0493          	addi	s1,s6,1
  800df0:	f85ff06f          	j	800d74 <uart_printf+0x80>
  800df4:	03879263          	bne	a5,s8,800e18 <uart_printf+0x124>
  800df8:	00c12783          	lw	a5,12(sp)
  800dfc:	00000613          	li	a2,0
  800e00:	f9c00513          	li	a0,-100
  800e04:	0007a583          	lw	a1,0(a5)
  800e08:	00478713          	addi	a4,a5,4
  800e0c:	00e12623          	sw	a4,12(sp)
  800e10:	ab9ff0ef          	jal	8008c8 <printDec>
  800e14:	fd5ff06f          	j	800de8 <uart_printf+0xf4>
  800e18:	03979663          	bne	a5,s9,800e44 <uart_printf+0x150>
  800e1c:	00c12783          	lw	a5,12(sp)
  800e20:	00140413          	addi	s0,s0,1
  800e24:	0007c483          	lbu	s1,0(a5)
  800e28:	00478713          	addi	a4,a5,4
  800e2c:	00e12623          	sw	a4,12(sp)
  800e30:	00048513          	mv	a0,s1
  800e34:	825ff0ef          	jal	800658 <vOutNS16550>
  800e38:	880007b7          	lui	a5,0x88000
  800e3c:	f2979c23          	sh	s1,-200(a5) # 87ffff38 <_stack_end+0x877fdf38>
  800e40:	fadff06f          	j	800dec <uart_printf+0xf8>
  800e44:	03a79263          	bne	a5,s10,800e68 <uart_printf+0x174>
  800e48:	00c12783          	lw	a5,12(sp)
  800e4c:	00000613          	li	a2,0
  800e50:	f9c00513          	li	a0,-100
  800e54:	0007a583          	lw	a1,0(a5)
  800e58:	00478713          	addi	a4,a5,4
  800e5c:	00e12623          	sw	a4,12(sp)
  800e60:	909ff0ef          	jal	800768 <printString>
  800e64:	f85ff06f          	j	800de8 <uart_printf+0xf4>
  800e68:	000a8513          	mv	a0,s5
  800e6c:	fecff0ef          	jal	800658 <vOutNS16550>
  800e70:	01599023          	sh	s5,0(s3)
  800e74:	00140413          	addi	s0,s0,1
  800e78:	00048b13          	mv	s6,s1
  800e7c:	f71ff06f          	j	800dec <uart_printf+0xf8>
  800e80:	00090513          	mv	a0,s2
  800e84:	fd4ff0ef          	jal	800658 <vOutNS16550>
  800e88:	01299023          	sh	s2,0(s3)
  800e8c:	fe9ff06f          	j	800e74 <uart_printf+0x180>

00800e90 <clearScreen>:
  800e90:	ff010113          	addi	sp,sp,-16
  800e94:	00812423          	sw	s0,8(sp)
  800e98:	00912223          	sw	s1,4(sp)
  800e9c:	00112623          	sw	ra,12(sp)
  800ea0:	00000413          	li	s0,0
  800ea4:	4c000493          	li	s1,1216
  800ea8:	00040513          	mv	a0,s0
  800eac:	00f00613          	li	a2,15
  800eb0:	02000593          	li	a1,32
  800eb4:	00140413          	addi	s0,s0,1
  800eb8:	841ff0ef          	jal	8006f8 <putch>
  800ebc:	fe9416e3          	bne	s0,s1,800ea8 <clearScreen+0x18>
  800ec0:	00c12083          	lw	ra,12(sp)
  800ec4:	00812403          	lw	s0,8(sp)
  800ec8:	008017b7          	lui	a5,0x801
  800ecc:	4e079223          	sh	zero,1252(a5) # 8014e4 <screenPos>
  800ed0:	00412483          	lw	s1,4(sp)
  800ed4:	01010113          	addi	sp,sp,16
  800ed8:	00008067          	ret

00800edc <resetScreenVector>:
  800edc:	008017b7          	lui	a5,0x801
  800ee0:	4e079223          	sh	zero,1252(a5) # 8014e4 <screenPos>
  800ee4:	00008067          	ret
  800ee8:	2710                	.insn	2, 0x2710
  800eea:	0000                	.insn	2, 0x
  800eec:	03e8                	.insn	2, 0x03e8
  800eee:	0000                	.insn	2, 0x
  800ef0:	0064                	.insn	2, 0x0064
  800ef2:	0000                	.insn	2, 0x
  800ef4:	000a                	.insn	2, 0x000a
  800ef6:	0000                	.insn	2, 0x
  800ef8:	0001                	.insn	2, 0x0001
	...

Disassembly of section .text.startup:

00800efc <main>:
  800efc:	f7010113          	addi	sp,sp,-144
  800f00:	08112623          	sw	ra,140(sp)
  800f04:	08812423          	sw	s0,136(sp)
  800f08:	08912223          	sw	s1,132(sp)
  800f0c:	09212023          	sw	s2,128(sp)
  800f10:	07312e23          	sw	s3,124(sp)
  800f14:	07412c23          	sw	s4,120(sp)
  800f18:	07512a23          	sw	s5,116(sp)
  800f1c:	07612823          	sw	s6,112(sp)
  800f20:	07712623          	sw	s7,108(sp)
  800f24:	07812423          	sw	s8,104(sp)
  800f28:	07912223          	sw	s9,100(sp)
  800f2c:	07a12023          	sw	s10,96(sp)
  800f30:	05b12e23          	sw	s11,92(sp)
  800f34:	e50ff0ef          	jal	800584 <TestRAM>
  800f38:	435357b7          	lui	a5,0x43535
  800f3c:	95278793          	addi	a5,a5,-1710 # 43534952 <_stack_end+0x42d32952>
  800f40:	00f12c23          	sw	a5,24(sp)
  800f44:	534637b7          	lui	a5,0x53463
  800f48:	e5978793          	addi	a5,a5,-423 # 53462e59 <_stack_end+0x52c60e59>
  800f4c:	00f12e23          	sw	a5,28(sp)
  800f50:	01c00613          	li	a2,28
  800f54:	0ff00793          	li	a5,255
  800f58:	00000593          	li	a1,0
  800f5c:	03410513          	addi	a0,sp,52
  800f60:	02010023          	sb	zero,32(sp)
  800f64:	02f12823          	sw	a5,48(sp)
  800f68:	f34ff0ef          	jal	80069c <memset>
  800f6c:	f25ff0ef          	jal	800e90 <clearScreen>
  800f70:	00000513          	li	a0,0
  800f74:	02012223          	sw	zero,36(sp)
  800f78:	02012423          	sw	zero,40(sp)
  800f7c:	02010623          	sb	zero,44(sp)
  800f80:	a2cff0ef          	jal	8001ac <readFlash>
  800f84:	02a12223          	sw	a0,36(sp)
  800f88:	00400513          	li	a0,4
  800f8c:	a20ff0ef          	jal	8001ac <readFlash>
  800f90:	02a12423          	sw	a0,40(sp)
  800f94:	01810613          	addi	a2,sp,24
  800f98:	00000513          	li	a0,0
  800f9c:	02410593          	addi	a1,sp,36
  800fa0:	00800693          	li	a3,8
  800fa4:	00a60733          	add	a4,a2,a0
  800fa8:	00a587b3          	add	a5,a1,a0
  800fac:	00074703          	lbu	a4,0(a4)
  800fb0:	0007c783          	lbu	a5,0(a5)
  800fb4:	32f71863          	bne	a4,a5,8012e4 <main+0x3e8>
  800fb8:	00150513          	addi	a0,a0,1
  800fbc:	fed514e3          	bne	a0,a3,800fa4 <main+0xa8>
  800fc0:	9ecff0ef          	jal	8001ac <readFlash>
  800fc4:	00100c93          	li	s9,1
  800fc8:	00000413          	li	s0,0
  800fcc:	0ff57b13          	zext.b	s6,a0
  800fd0:	00300593          	li	a1,3
  800fd4:	00040513          	mv	a0,s0
  800fd8:	888ff0ef          	jal	800060 <__divsi3>
  800fdc:	00050913          	mv	s2,a0
  800fe0:	03950263          	beq	a0,s9,801004 <main+0x108>
  800fe4:	eadff0ef          	jal	800e90 <clearScreen>
  800fe8:	00801537          	lui	a0,0x801
  800fec:	000b0593          	mv	a1,s6
  800ff0:	47450513          	addi	a0,a0,1140 # 801474 <main+0x578>
  800ff4:	9cdff0ef          	jal	8009c0 <printf>
  800ff8:	00801537          	lui	a0,0x801
  800ffc:	48850513          	addi	a0,a0,1160 # 801488 <main+0x58c>
  801000:	9c1ff0ef          	jal	8009c0 <printf>
  801004:	00801637          	lui	a2,0x801
  801008:	49c60613          	addi	a2,a2,1180 # 80149c <main+0x5a0>
  80100c:	00f00593          	li	a1,15
  801010:	38000513          	li	a0,896
  801014:	0ff97c93          	zext.b	s9,s2
  801018:	b45ff0ef          	jal	800b5c <printfSCR>
  80101c:	0ff97913          	zext.b	s2,s2
  801020:	08000493          	li	s1,128
  801024:	00000a13          	li	s4,0
  801028:	00900993          	li	s3,9
  80102c:	00000a93          	li	s5,0
  801030:	03010d13          	addi	s10,sp,48
  801034:	02000d93          	li	s11,32
  801038:	00300593          	li	a1,3
  80103c:	000a0513          	mv	a0,s4
  801040:	888ff0ef          	jal	8000c8 <__modsi3>
  801044:	00151b93          	slli	s7,a0,0x1
  801048:	00ab8bb3          	add	s7,s7,a0
  80104c:	006b9b93          	slli	s7,s7,0x6
  801050:	149b8b93          	addi	s7,s7,329
  801054:	010b9b93          	slli	s7,s7,0x10
  801058:	010bdb93          	srli	s7,s7,0x10
  80105c:	05590a63          	beq	s2,s5,8010b0 <main+0x1b4>
  801060:	010b9b93          	slli	s7,s7,0x10
  801064:	410bdb93          	srai	s7,s7,0x10
  801068:	00f00793          	li	a5,15
  80106c:	01441463          	bne	s0,s4,801074 <main+0x178>
  801070:	05000793          	li	a5,80
  801074:	00f12223          	sw	a5,4(sp)
  801078:	413b8bb3          	sub	s7,s7,s3
  80107c:	00098513          	mv	a0,s3
  801080:	92cff0ef          	jal	8001ac <readFlash>
  801084:	0ff57593          	zext.b	a1,a0
  801088:	00198c13          	addi	s8,s3,1
  80108c:	04058263          	beqz	a1,8010d0 <main+0x1d4>
  801090:	01591c63          	bne	s2,s5,8010a8 <main+0x1ac>
  801094:	018b8533          	add	a0,s7,s8
  801098:	00412603          	lw	a2,4(sp)
  80109c:	01051513          	slli	a0,a0,0x10
  8010a0:	41055513          	srai	a0,a0,0x10
  8010a4:	e54ff0ef          	jal	8006f8 <putch>
  8010a8:	000c0993          	mv	s3,s8
  8010ac:	fd1ff06f          	j	80107c <main+0x180>
  8010b0:	008017b7          	lui	a5,0x801
  8010b4:	000b8513          	mv	a0,s7
  8010b8:	000a0693          	mv	a3,s4
  8010bc:	4a478613          	addi	a2,a5,1188 # 8014a4 <main+0x5a8>
  8010c0:	00f00593          	li	a1,15
  8010c4:	a99ff0ef          	jal	800b5c <printfSCR>
  8010c8:	00ab8bb3          	add	s7,s7,a0
  8010cc:	f95ff06f          	j	801060 <main+0x164>
  8010d0:	000c0513          	mv	a0,s8
  8010d4:	8d8ff0ef          	jal	8001ac <readFlash>
  8010d8:	00a12223          	sw	a0,4(sp)
  8010dc:	00598513          	addi	a0,s3,5
  8010e0:	00998b93          	addi	s7,s3,9
  8010e4:	8c8ff0ef          	jal	8001ac <readFlash>
  8010e8:	003a1c13          	slli	s8,s4,0x3
  8010ec:	10998993          	addi	s3,s3,265
  8010f0:	00000793          	li	a5,0
  8010f4:	01778533          	add	a0,a5,s7
  8010f8:	00f12623          	sw	a5,12(sp)
  8010fc:	8b0ff0ef          	jal	8001ac <readFlash>
  801100:	00c12783          	lw	a5,12(sp)
  801104:	00fd06b3          	add	a3,s10,a5
  801108:	00a68023          	sb	a0,0(a3)
  80110c:	00178793          	addi	a5,a5,1
  801110:	ffb792e3          	bne	a5,s11,8010f4 <main+0x1f8>
  801114:	020b8b93          	addi	s7,s7,32
  801118:	01591863          	bne	s2,s5,801128 <main+0x22c>
  80111c:	000d0593          	mv	a1,s10
  801120:	000c0513          	mv	a0,s8
  801124:	8dcff0ef          	jal	800200 <WriteSprite>
  801128:	001c0c13          	addi	s8,s8,1
  80112c:	fd7992e3          	bne	s3,s7,8010f0 <main+0x1f4>
  801130:	01591863          	bne	s2,s5,801140 <main+0x244>
  801134:	01441663          	bne	s0,s4,801140 <main+0x244>
  801138:	00412783          	lw	a5,4(sp)
  80113c:	00f12423          	sw	a5,8(sp)
  801140:	001a1a93          	slli	s5,s4,0x1
  801144:	015a0ab3          	add	s5,s4,s5
  801148:	006a9a93          	slli	s5,s5,0x6
  80114c:	144a8a93          	addi	s5,s5,324
  801150:	010a9a93          	slli	s5,s5,0x10
  801154:	410ada93          	srai	s5,s5,0x10
  801158:	00048593          	mv	a1,s1
  80115c:	00000613          	li	a2,0
  801160:	000a8513          	mv	a0,s5
  801164:	d94ff0ef          	jal	8006f8 <putch>
  801168:	00148593          	addi	a1,s1,1
  80116c:	00000613          	li	a2,0
  801170:	0ff5f593          	zext.b	a1,a1
  801174:	001a8513          	addi	a0,s5,1
  801178:	d80ff0ef          	jal	8006f8 <putch>
  80117c:	00248593          	addi	a1,s1,2
  801180:	00000613          	li	a2,0
  801184:	0ff5f593          	zext.b	a1,a1
  801188:	002a8513          	addi	a0,s5,2
  80118c:	d6cff0ef          	jal	8006f8 <putch>
  801190:	00348593          	addi	a1,s1,3
  801194:	00000613          	li	a2,0
  801198:	0ff5f593          	zext.b	a1,a1
  80119c:	003a8513          	addi	a0,s5,3
  8011a0:	d58ff0ef          	jal	8006f8 <putch>
  8011a4:	00448593          	addi	a1,s1,4
  8011a8:	00000613          	li	a2,0
  8011ac:	0ff5f593          	zext.b	a1,a1
  8011b0:	040a8513          	addi	a0,s5,64
  8011b4:	d44ff0ef          	jal	8006f8 <putch>
  8011b8:	00548593          	addi	a1,s1,5
  8011bc:	00000613          	li	a2,0
  8011c0:	0ff5f593          	zext.b	a1,a1
  8011c4:	041a8513          	addi	a0,s5,65
  8011c8:	d30ff0ef          	jal	8006f8 <putch>
  8011cc:	00648593          	addi	a1,s1,6
  8011d0:	00000613          	li	a2,0
  8011d4:	0ff5f593          	zext.b	a1,a1
  8011d8:	042a8513          	addi	a0,s5,66
  8011dc:	d1cff0ef          	jal	8006f8 <putch>
  8011e0:	00748593          	addi	a1,s1,7
  8011e4:	00000613          	li	a2,0
  8011e8:	0ff5f593          	zext.b	a1,a1
  8011ec:	043a8513          	addi	a0,s5,67
  8011f0:	d08ff0ef          	jal	8006f8 <putch>
  8011f4:	001a0a13          	addi	s4,s4,1
  8011f8:	00300593          	li	a1,3
  8011fc:	000a0513          	mv	a0,s4
  801200:	e61fe0ef          	jal	800060 <__divsi3>
  801204:	00848493          	addi	s1,s1,8
  801208:	00050a93          	mv	s5,a0
  80120c:	0ff4f493          	zext.b	s1,s1
  801210:	e2a954e3          	bge	s2,a0,801038 <main+0x13c>
  801214:	000184b7          	lui	s1,0x18
  801218:	00801937          	lui	s2,0x801
  80121c:	69f48493          	addi	s1,s1,1695 # 1869f <_stack_size+0x1849f>
  801220:	4ac90613          	addi	a2,s2,1196 # 8014ac <main+0x5b0>
  801224:	00f00593          	li	a1,15
  801228:	38000513          	li	a0,896
  80122c:	931ff0ef          	jal	800b5c <printfSCR>
  801230:	c98ff0ef          	jal	8006c8 <getButtonDown>
  801234:	05100793          	li	a5,81
  801238:	00051e63          	bnez	a0,801254 <main+0x358>
  80123c:	c98ff0ef          	jal	8006d4 <getButtonUp>
  801240:	05200793          	li	a5,82
  801244:	00051863          	bnez	a0,801254 <main+0x358>
  801248:	ca4ff0ef          	jal	8006ec <getButtonRight>
  80124c:	02050c63          	beqz	a0,801284 <main+0x388>
  801250:	02800793          	li	a5,40
  801254:	00012a23          	sw	zero,20(sp)
  801258:	01412703          	lw	a4,20(sp)
  80125c:	02e4dc63          	bge	s1,a4,801294 <main+0x398>
  801260:	00000713          	li	a4,0
  801264:	faf70ee3          	beq	a4,a5,801220 <main+0x324>
  801268:	05100713          	li	a4,81
  80126c:	02e79c63          	bne	a5,a4,8012a4 <main+0x3a8>
  801270:	00140413          	addi	s0,s0,1
  801274:	016427b3          	slt	a5,s0,s6
  801278:	40f007b3          	neg	a5,a5
  80127c:	00f47433          	and	s0,s0,a5
  801280:	d51ff06f          	j	800fd0 <main+0xd4>
  801284:	c5cff0ef          	jal	8006e0 <getButtonLeft>
  801288:	00050793          	mv	a5,a0
  80128c:	fc0512e3          	bnez	a0,801250 <main+0x354>
  801290:	fc5ff06f          	j	801254 <main+0x358>
  801294:	01412703          	lw	a4,20(sp)
  801298:	00170713          	addi	a4,a4,1
  80129c:	00e12a23          	sw	a4,20(sp)
  8012a0:	fb9ff06f          	j	801258 <main+0x35c>
  8012a4:	05200713          	li	a4,82
  8012a8:	00e79a63          	bne	a5,a4,8012bc <main+0x3c0>
  8012ac:	fff40413          	addi	s0,s0,-1
  8012b0:	d20450e3          	bgez	s0,800fd0 <main+0xd4>
  8012b4:	fffb0413          	addi	s0,s6,-1
  8012b8:	d19ff06f          	j	800fd0 <main+0xd4>
  8012bc:	02800713          	li	a4,40
  8012c0:	d0e798e3          	bne	a5,a4,800fd0 <main+0xd4>
  8012c4:	00812503          	lw	a0,8(sp)
  8012c8:	f69fe0ef          	jal	800230 <elfLoader>
  8012cc:	00801537          	lui	a0,0x801
  8012d0:	4b450513          	addi	a0,a0,1204 # 8014b4 <main+0x5b8>
  8012d4:	a21ff0ef          	jal	800cf4 <uart_printf>
  8012d8:	800007b7          	lui	a5,0x80000
  8012dc:	000780e7          	jalr	a5 # 80000000 <_stack_end+0x7f7fe000>
  8012e0:	c8dff06f          	j	800f6c <main+0x70>
  8012e4:	00801537          	lui	a0,0x801
  8012e8:	46450513          	addi	a0,a0,1124 # 801464 <main+0x568>
  8012ec:	ed4ff0ef          	jal	8009c0 <printf>
  8012f0:	08c12083          	lw	ra,140(sp)
  8012f4:	08812403          	lw	s0,136(sp)
  8012f8:	08412483          	lw	s1,132(sp)
  8012fc:	08012903          	lw	s2,128(sp)
  801300:	07c12983          	lw	s3,124(sp)
  801304:	07812a03          	lw	s4,120(sp)
  801308:	07412a83          	lw	s5,116(sp)
  80130c:	07012b03          	lw	s6,112(sp)
  801310:	06c12b83          	lw	s7,108(sp)
  801314:	06812c03          	lw	s8,104(sp)
  801318:	06412c83          	lw	s9,100(sp)
  80131c:	06012d03          	lw	s10,96(sp)
  801320:	05c12d83          	lw	s11,92(sp)
  801324:	00000513          	li	a0,0
  801328:	09010113          	addi	sp,sp,144
  80132c:	00008067          	ret
