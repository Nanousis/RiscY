
builds/build0/program.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
.section .text
.global _start

_start:
    li x1, 0
80000000:	00000093          	li	ra,0
    li x2, 0
80000004:	00000113          	li	sp,0
    li x3, 0
80000008:	00000193          	li	gp,0
    li x4, 0
8000000c:	00000213          	li	tp,0
    li x5, 0
80000010:	00000293          	li	t0,0
    li x6, 0
80000014:	00000313          	li	t1,0
    li x7, 0
80000018:	00000393          	li	t2,0
    li x8, 0
8000001c:	00000413          	li	s0,0
    li x9, 0
80000020:	00000493          	li	s1,0
    li x10, 0
80000024:	00000513          	li	a0,0
    li x11, 0
80000028:	00000593          	li	a1,0
    li x12, 0
8000002c:	00000613          	li	a2,0
    li x13, 0
80000030:	00000693          	li	a3,0
    li x14, 0
80000034:	00000713          	li	a4,0
    li x15, 0
80000038:	00000793          	li	a5,0
    li x16, 0
8000003c:	00000813          	li	a6,0
    li x17, 0
80000040:	00000893          	li	a7,0
    li x18, 0
80000044:	00000913          	li	s2,0
    li x19, 0
80000048:	00000993          	li	s3,0
    li x20, 0
8000004c:	00000a13          	li	s4,0
    li x21, 0
80000050:	00000a93          	li	s5,0
    li x22, 0
80000054:	00000b13          	li	s6,0
    li x23, 0
80000058:	00000b93          	li	s7,0
    li x24, 0
8000005c:	00000c13          	li	s8,0
    li x25, 0
80000060:	00000c93          	li	s9,0
    li x26, 0
80000064:	00000d13          	li	s10,0
    li x27, 0
80000068:	00000d93          	li	s11,0
    li x28, 0
8000006c:	00000e13          	li	t3,0
    li x29, 0
80000070:	00000e93          	li	t4,0
    li x30, 0
80000074:	00000f13          	li	t5,0
    li x31, 0
80000078:	00000f93          	li	t6,0
    la sp, _stack_top    # Initialize stack pointer to top of RAM
8000007c:	00400117          	auipc	sp,0x400
80000080:	f8410113          	addi	sp,sp,-124 # 80400000 <_stack_end>
    addi sp, sp, -4      # Adjust stack pointer
80000084:	ffc10113          	addi	sp,sp,-4
    sw ra, 0(sp)         # Save return address
80000088:	00112023          	sw	ra,0(sp)
    call main            # Call main function
8000008c:	10c010ef          	jal	80001198 <main>
    lw ra, 0(sp)         # Restore return address
80000090:	00012083          	lw	ra,0(sp)
80000094:	000080e7          	jalr	ra

80000098 <_ZL8tfp_putcPvc>:
    fixed32 xpix = fixed_mul_trunc(x01, fixed_from_int(WIDTH));
    fixed32 ypix = fixed_mul_trunc(y01, fixed_from_int(HEIGHT));

    // Convert to int at the end (round is nicer than trunc)
    int sx = fixed_to_int_round(xpix);
    int sy = fixed_to_int_round(ypix);
80000098:	00058513          	mv	a0,a1
8000009c:	0310206f          	j	800028cc <_Z11vOutNS16550h>

800000a0 <_Z7rotateYRK4Vec3IfEf>:

typedef Vec2<float> Vec2f;
typedef Vec2<int>   Vec2i;
typedef Vec3<float> Vec3f;
typedef Vec3<int>   Vec3i;
Vec3f rotateY(const Vec3f &v, float angle) {
800000a0:	fe010113          	addi	sp,sp,-32
800000a4:	00812c23          	sw	s0,24(sp)
800000a8:	00050413          	mv	s0,a0
  using ::cos;

#ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
  inline _GLIBCXX_CONSTEXPR float
  cos(float __x)
  { return __builtin_cosf(__x); }
800000ac:	00060513          	mv	a0,a2
800000b0:	00112e23          	sw	ra,28(sp)
800000b4:	00912a23          	sw	s1,20(sp)
800000b8:	01212823          	sw	s2,16(sp)
800000bc:	01312623          	sw	s3,12(sp)
800000c0:	01412423          	sw	s4,8(sp)
800000c4:	01512223          	sw	s5,4(sp)
800000c8:	01612023          	sw	s6,0(sp)
800000cc:	00060913          	mv	s2,a2
800000d0:	00058493          	mv	s1,a1
800000d4:	091060ef          	jal	80006964 <cosf>
800000d8:	00050993          	mv	s3,a0
  using ::sin;

#ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
  inline _GLIBCXX_CONSTEXPR float
  sin(float __x)
  { return __builtin_sinf(__x); }
800000dc:	00090513          	mv	a0,s2
800000e0:	131060ef          	jal	80006a10 <sinf>
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x * ca + v.z * sa,
800000e4:	0004aa03          	lw	s4,0(s1)
800000e8:	0084aa83          	lw	s5,8(s1)
800000ec:	00050913          	mv	s2,a0
800000f0:	00098593          	mv	a1,s3
800000f4:	000a0513          	mv	a0,s4
800000f8:	215090ef          	jal	80009b0c <__mulsf3>
        v.y,
800000fc:	0044ab03          	lw	s6,4(s1)
        v.x * ca + v.z * sa,
80000100:	00090593          	mv	a1,s2
80000104:	00050493          	mv	s1,a0
80000108:	000a8513          	mv	a0,s5
8000010c:	201090ef          	jal	80009b0c <__mulsf3>
80000110:	00050593          	mv	a1,a0
        -v.x * sa + v.z * ca
    );
80000114:	00048513          	mv	a0,s1
80000118:	148090ef          	jal	80009260 <__addsf3>
        -v.x * sa + v.z * ca
8000011c:	00098593          	mv	a1,s3
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
80000120:	01642223          	sw	s6,4(s0)
80000124:	00a42023          	sw	a0,0(s0)
        -v.x * sa + v.z * ca
80000128:	000a8513          	mv	a0,s5
8000012c:	1e1090ef          	jal	80009b0c <__mulsf3>
80000130:	00050493          	mv	s1,a0
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
80000134:	00090593          	mv	a1,s2
80000138:	000a0513          	mv	a0,s4
8000013c:	1d1090ef          	jal	80009b0c <__mulsf3>
80000140:	00050593          	mv	a1,a0
80000144:	00048513          	mv	a0,s1
80000148:	511090ef          	jal	80009e58 <__subsf3>
8000014c:	00a42423          	sw	a0,8(s0)
}
80000150:	01c12083          	lw	ra,28(sp)
80000154:	00040513          	mv	a0,s0
80000158:	01812403          	lw	s0,24(sp)
8000015c:	01412483          	lw	s1,20(sp)
80000160:	01012903          	lw	s2,16(sp)
80000164:	00c12983          	lw	s3,12(sp)
80000168:	00812a03          	lw	s4,8(sp)
8000016c:	00412a83          	lw	s5,4(sp)
80000170:	00012b03          	lw	s6,0(sp)
80000174:	02010113          	addi	sp,sp,32
80000178:	00008067          	ret

8000017c <_Z7rotateXRK4Vec3IfEf>:

Vec3f rotateX(const Vec3f &v, float angle) {
8000017c:	fe010113          	addi	sp,sp,-32
80000180:	00812c23          	sw	s0,24(sp)
80000184:	00050413          	mv	s0,a0
  { return __builtin_cosf(__x); }
80000188:	00060513          	mv	a0,a2
8000018c:	00112e23          	sw	ra,28(sp)
80000190:	00912a23          	sw	s1,20(sp)
80000194:	01212823          	sw	s2,16(sp)
80000198:	01312623          	sw	s3,12(sp)
8000019c:	01412423          	sw	s4,8(sp)
800001a0:	01512223          	sw	s5,4(sp)
800001a4:	00060993          	mv	s3,a2
800001a8:	00058493          	mv	s1,a1
800001ac:	7b8060ef          	jal	80006964 <cosf>
800001b0:	00050913          	mv	s2,a0
  { return __builtin_sinf(__x); }
800001b4:	00098513          	mv	a0,s3
800001b8:	059060ef          	jal	80006a10 <sinf>
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x,
800001bc:	0004a783          	lw	a5,0(s1)
        v.y * ca - v.z * sa,
800001c0:	0044aa83          	lw	s5,4(s1)
800001c4:	0084aa03          	lw	s4,8(s1)
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800001c8:	00f42023          	sw	a5,0(s0)
800001cc:	00050993          	mv	s3,a0
        v.y * ca - v.z * sa,
800001d0:	00090593          	mv	a1,s2
800001d4:	000a8513          	mv	a0,s5
800001d8:	135090ef          	jal	80009b0c <__mulsf3>
800001dc:	00050493          	mv	s1,a0
800001e0:	00098593          	mv	a1,s3
800001e4:	000a0513          	mv	a0,s4
800001e8:	125090ef          	jal	80009b0c <__mulsf3>
800001ec:	00050593          	mv	a1,a0
        v.y * sa + v.z * ca
    );
800001f0:	00048513          	mv	a0,s1
800001f4:	465090ef          	jal	80009e58 <__subsf3>
        v.y * sa + v.z * ca
800001f8:	00098593          	mv	a1,s3
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800001fc:	00a42223          	sw	a0,4(s0)
        v.y * sa + v.z * ca
80000200:	000a8513          	mv	a0,s5
80000204:	109090ef          	jal	80009b0c <__mulsf3>
80000208:	00050493          	mv	s1,a0
8000020c:	00090593          	mv	a1,s2
80000210:	000a0513          	mv	a0,s4
80000214:	0f9090ef          	jal	80009b0c <__mulsf3>
80000218:	00050593          	mv	a1,a0
    );
8000021c:	00048513          	mv	a0,s1
80000220:	040090ef          	jal	80009260 <__addsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
80000224:	00a42423          	sw	a0,8(s0)
}
80000228:	01c12083          	lw	ra,28(sp)
8000022c:	00040513          	mv	a0,s0
80000230:	01812403          	lw	s0,24(sp)
80000234:	01412483          	lw	s1,20(sp)
80000238:	01012903          	lw	s2,16(sp)
8000023c:	00c12983          	lw	s3,12(sp)
80000240:	00812a03          	lw	s4,8(sp)
80000244:	00412a83          	lw	s5,4(sp)
80000248:	02010113          	addi	sp,sp,32
8000024c:	00008067          	ret

80000250 <_Z7rotateZRK4Vec3IfEf>:

Vec3f rotateZ(const Vec3f &v, float angle) {
80000250:	fe010113          	addi	sp,sp,-32
80000254:	00812c23          	sw	s0,24(sp)
80000258:	00050413          	mv	s0,a0
  { return __builtin_cosf(__x); }
8000025c:	00060513          	mv	a0,a2
80000260:	00112e23          	sw	ra,28(sp)
80000264:	00912a23          	sw	s1,20(sp)
80000268:	01212823          	sw	s2,16(sp)
8000026c:	01312623          	sw	s3,12(sp)
80000270:	01412423          	sw	s4,8(sp)
80000274:	01512223          	sw	s5,4(sp)
80000278:	01612023          	sw	s6,0(sp)
8000027c:	00060993          	mv	s3,a2
80000280:	00058493          	mv	s1,a1
80000284:	6e0060ef          	jal	80006964 <cosf>
80000288:	00050913          	mv	s2,a0
  { return __builtin_sinf(__x); }
8000028c:	00098513          	mv	a0,s3
80000290:	780060ef          	jal	80006a10 <sinf>
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x * ca - v.y * sa,
80000294:	0004aa83          	lw	s5,0(s1)
80000298:	0044aa03          	lw	s4,4(s1)
8000029c:	00050993          	mv	s3,a0
800002a0:	00090593          	mv	a1,s2
800002a4:	000a8513          	mv	a0,s5
800002a8:	065090ef          	jal	80009b0c <__mulsf3>
        v.x * sa + v.y * ca,
        v.z
800002ac:	0084ab03          	lw	s6,8(s1)
        v.x * ca - v.y * sa,
800002b0:	00098593          	mv	a1,s3
800002b4:	00050493          	mv	s1,a0
800002b8:	000a0513          	mv	a0,s4
800002bc:	051090ef          	jal	80009b0c <__mulsf3>
800002c0:	00050593          	mv	a1,a0
    );
800002c4:	00048513          	mv	a0,s1
800002c8:	391090ef          	jal	80009e58 <__subsf3>
        v.x * sa + v.y * ca,
800002cc:	00098593          	mv	a1,s3
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800002d0:	00a42023          	sw	a0,0(s0)
        v.x * sa + v.y * ca,
800002d4:	000a8513          	mv	a0,s5
800002d8:	035090ef          	jal	80009b0c <__mulsf3>
800002dc:	00050493          	mv	s1,a0
800002e0:	00090593          	mv	a1,s2
800002e4:	000a0513          	mv	a0,s4
800002e8:	025090ef          	jal	80009b0c <__mulsf3>
800002ec:	00050593          	mv	a1,a0
    );
800002f0:	00048513          	mv	a0,s1
800002f4:	76d080ef          	jal	80009260 <__addsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800002f8:	00a42223          	sw	a0,4(s0)
800002fc:	01642423          	sw	s6,8(s0)
}
80000300:	01c12083          	lw	ra,28(sp)
80000304:	00040513          	mv	a0,s0
80000308:	01812403          	lw	s0,24(sp)
8000030c:	01412483          	lw	s1,20(sp)
80000310:	01012903          	lw	s2,16(sp)
80000314:	00c12983          	lw	s3,12(sp)
80000318:	00812a03          	lw	s4,8(sp)
8000031c:	00412a83          	lw	s5,4(sp)
80000320:	00012b03          	lw	s6,0(sp)
80000324:	02010113          	addi	sp,sp,32
80000328:	00008067          	ret

8000032c <_Z10draw_pixelPtii5color>:
	unsigned int triangleCount;
};
struct matrix4f{
	fixed32 m[4][4]={0};
};
void draw_pixel(uint16_t* pixels, int x, int y, color col) {
8000032c:	ff010113          	addi	sp,sp,-16
80000330:	00d12623          	sw	a3,12(sp)
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000334:	31f00793          	li	a5,799
80000338:	06b7e063          	bltu	a5,a1,80000398 <_Z10draw_pixelPtii5color+0x6c>
8000033c:	1df00793          	li	a5,479
80000340:	04c7ec63          	bltu	a5,a2,80000398 <_Z10draw_pixelPtii5color+0x6c>
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000344:	1e100793          	li	a5,481
80000348:	40c78633          	sub	a2,a5,a2
    pixels[y * WIDTH + x] = color;
8000034c:	00161793          	slli	a5,a2,0x1
80000350:	00c787b3          	add	a5,a5,a2
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
80000354:	00c14703          	lbu	a4,12(sp)
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
80000358:	00d14683          	lbu	a3,13(sp)
    pixels[y * WIDTH + x] = color;
8000035c:	00379793          	slli	a5,a5,0x3
80000360:	00c787b3          	add	a5,a5,a2
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
80000364:	00e14603          	lbu	a2,14(sp)
    pixels[y * WIDTH + x] = color;
80000368:	00579793          	slli	a5,a5,0x5
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
8000036c:	00375713          	srli	a4,a4,0x3
80000370:	0026d693          	srli	a3,a3,0x2
80000374:	00569693          	slli	a3,a3,0x5
    pixels[y * WIDTH + x] = color;
80000378:	00b785b3          	add	a1,a5,a1
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
8000037c:	00b71713          	slli	a4,a4,0xb
    pixels[y * WIDTH + x] = color;
80000380:	00159793          	slli	a5,a1,0x1
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000384:	00d76733          	or	a4,a4,a3
80000388:	00365693          	srli	a3,a2,0x3
    pixels[y * WIDTH + x] = color;
8000038c:	00f50533          	add	a0,a0,a5
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000390:	00d767b3          	or	a5,a4,a3
    pixels[y * WIDTH + x] = color;
80000394:	00f51023          	sh	a5,0(a0)
    return;
}
80000398:	01010113          	addi	sp,sp,16
8000039c:	00008067          	ret

800003a0 <_Z17draw_pixel_doublePtii5color>:
void draw_pixel_double(uint16_t* pixels, int x, int y, color col) {
800003a0:	ff010113          	addi	sp,sp,-16
800003a4:	00d12623          	sw	a3,12(sp)
    uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    if(x<0 || x>=WIDTH>>1 || y<0 || y>=HEIGHT) return;
800003a8:	18f00793          	li	a5,399
800003ac:	06b7ea63          	bltu	a5,a1,80000420 <_Z17draw_pixel_doublePtii5color+0x80>
800003b0:	1df00793          	li	a5,479
800003b4:	06c7e663          	bltu	a5,a2,80000420 <_Z17draw_pixel_doublePtii5color+0x80>
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
800003b8:	1e100793          	li	a5,481
800003bc:	40c78633          	sub	a2,a5,a2
    uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
800003c0:	00c14703          	lbu	a4,12(sp)
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
800003c4:	00d14683          	lbu	a3,13(sp)
    uint32_t *base_addr = (uint32_t *)pixels;
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003c8:	00161793          	slli	a5,a2,0x1
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800003cc:	00e14803          	lbu	a6,14(sp)
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003d0:	00c787b3          	add	a5,a5,a2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800003d4:	00375713          	srli	a4,a4,0x3
800003d8:	0026d693          	srli	a3,a3,0x2
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003dc:	00379793          	slli	a5,a5,0x3
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800003e0:	00569693          	slli	a3,a3,0x5
800003e4:	00b71713          	slli	a4,a4,0xb
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003e8:	00c787b3          	add	a5,a5,a2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800003ec:	00d76733          	or	a4,a4,a3
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003f0:	00579793          	slli	a5,a5,0x5
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800003f4:	00385693          	srli	a3,a6,0x3
800003f8:	00d76733          	or	a4,a4,a3
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003fc:	4017d793          	srai	a5,a5,0x1
80000400:	01071693          	slli	a3,a4,0x10
80000404:	00b785b3          	add	a1,a5,a1
80000408:	0106d693          	srli	a3,a3,0x10
8000040c:	00259593          	slli	a1,a1,0x2
80000410:	01071713          	slli	a4,a4,0x10
80000414:	00b50533          	add	a0,a0,a1
80000418:	00d70733          	add	a4,a4,a3
8000041c:	00e52023          	sw	a4,0(a0)
    return;
}
80000420:	01010113          	addi	sp,sp,16
80000424:	00008067          	ret

80000428 <_Z12clear_screenPt5color>:
void clear_screen(uint16_t* pixels, color col) {
80000428:	00058793          	mv	a5,a1
    uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
8000042c:	0037d793          	srli	a5,a5,0x3
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
80000430:	0055d693          	srli	a3,a1,0x5
void clear_screen(uint16_t* pixels, color col) {
80000434:	00058713          	mv	a4,a1
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000438:	01f7f793          	andi	a5,a5,31
8000043c:	7e06f693          	andi	a3,a3,2016
80000440:	00b79793          	slli	a5,a5,0xb
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
80000444:	01375713          	srli	a4,a4,0x13
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000448:	00d7e7b3          	or	a5,a5,a3
8000044c:	01f77713          	andi	a4,a4,31
80000450:	00e7e7b3          	or	a5,a5,a4
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80000454:	01079713          	slli	a4,a5,0x10
80000458:	01075713          	srli	a4,a4,0x10
8000045c:	01079793          	slli	a5,a5,0x10
80000460:	0005e637          	lui	a2,0x5e
void clear_screen(uint16_t* pixels, color col) {
80000464:	00050593          	mv	a1,a0
80000468:	64050813          	addi	a6,a0,1600
8000046c:	ff010113          	addi	sp,sp,-16
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80000470:	00e786b3          	add	a3,a5,a4
80000474:	f2060613          	addi	a2,a2,-224 # 5df20 <_stack_size+0x55f20>
    for(int j=0; j<HEIGHT; j++) {
80000478:	32000513          	li	a0,800
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
8000047c:	40165713          	srai	a4,a2,0x1
80000480:	00271713          	slli	a4,a4,0x2
80000484:	00e587b3          	add	a5,a1,a4
80000488:	00e80733          	add	a4,a6,a4
8000048c:	00d7a023          	sw	a3,0(a5)
	    for(int i=0; i<WIDTH>>1; i++) {
80000490:	00478793          	addi	a5,a5,4
80000494:	fee79ce3          	bne	a5,a4,8000048c <_Z12clear_screenPt5color+0x64>
    for(int j=0; j<HEIGHT; j++) {
80000498:	ce060613          	addi	a2,a2,-800
8000049c:	fea610e3          	bne	a2,a0,8000047c <_Z12clear_screenPt5color+0x54>
			draw_pixel_double(pixels, i, j, col);
		}
	}
}
800004a0:	01010113          	addi	sp,sp,16
800004a4:	00008067          	ret

800004a8 <_Z9draw_linePtiiiihhh>:
// Midpoint (Bresenham) Line Drawing Algorithm
void draw_line(uint16_t* pixels, int x0, int y0, int x1, int y1,
               uint8_t r, uint8_t g, uint8_t b) {
    int dx = abs(x1 - x0);
800004a8:	40b68333          	sub	t1,a3,a1
    int dy = abs(y1 - y0);
800004ac:	40c70fb3          	sub	t6,a4,a2
               uint8_t r, uint8_t g, uint8_t b) {
800004b0:	ff010113          	addi	sp,sp,-16
    int dx = abs(x1 - x0);
800004b4:	41f35e93          	srai	t4,t1,0x1f
    int dy = abs(y1 - y0);
800004b8:	41ffde13          	srai	t3,t6,0x1f
    int dx = abs(x1 - x0);
800004bc:	006ec333          	xor	t1,t4,t1
    int dy = abs(y1 - y0);
800004c0:	01fe4fb3          	xor	t6,t3,t6
               uint8_t r, uint8_t g, uint8_t b) {
800004c4:	00812623          	sw	s0,12(sp)
800004c8:	00912423          	sw	s1,8(sp)
    int dx = abs(x1 - x0);
800004cc:	41d30333          	sub	t1,t1,t4
    int dy = abs(y1 - y0);
800004d0:	41cf8fb3          	sub	t6,t6,t3
    int sx = (x0 < x1) ? 1 : -1;
800004d4:	00100393          	li	t2,1
800004d8:	00d5c463          	blt	a1,a3,800004e0 <_Z9draw_linePtiiiihhh+0x38>
800004dc:	fff00393          	li	t2,-1
    int sy = (y0 < y1) ? 1 : -1;
800004e0:	fff00413          	li	s0,-1
800004e4:	00e65463          	bge	a2,a4,800004ec <_Z9draw_linePtiiiihhh+0x44>
800004e8:	00100413          	li	s0,1
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
800004ec:	00285813          	srli	a6,a6,0x2
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800004f0:	0038d893          	srli	a7,a7,0x3
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800004f4:	00581293          	slli	t0,a6,0x5
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
800004f8:	0037d793          	srli	a5,a5,0x3
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800004fc:	0112e2b3          	or	t0,t0,a7
80000500:	00b79793          	slli	a5,a5,0xb
80000504:	00f2e2b3          	or	t0,t0,a5
    int err = dx - dy;
80000508:	41f308b3          	sub	a7,t1,t6
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
8000050c:	31f00e93          	li	t4,799
80000510:	1df00493          	li	s1,479
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000514:	1e100e13          	li	t3,481
    while (1) {
        draw_pixel(pixels, x0, y0, (color){r, g, b});
        if (x0 == x1 && y0 == y1) break;
        int e2 = 2 * err;
        if (e2 > -dy) {
80000518:	41f00f33          	neg	t5,t6
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
8000051c:	40ce0833          	sub	a6,t3,a2
    pixels[y * WIDTH + x] = color;
80000520:	00181793          	slli	a5,a6,0x1
80000524:	010787b3          	add	a5,a5,a6
80000528:	00379793          	slli	a5,a5,0x3
8000052c:	010787b3          	add	a5,a5,a6
80000530:	00579793          	slli	a5,a5,0x5
80000534:	00b787b3          	add	a5,a5,a1
80000538:	00179793          	slli	a5,a5,0x1
        int e2 = 2 * err;
8000053c:	00189813          	slli	a6,a7,0x1
    pixels[y * WIDTH + x] = color;
80000540:	00f507b3          	add	a5,a0,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000544:	00bee663          	bltu	t4,a1,80000550 <_Z9draw_linePtiiiihhh+0xa8>
80000548:	00c4e463          	bltu	s1,a2,80000550 <_Z9draw_linePtiiiihhh+0xa8>
    pixels[y * WIDTH + x] = color;
8000054c:	00579023          	sh	t0,0(a5)
        if (x0 == x1 && y0 == y1) break;
80000550:	02d58063          	beq	a1,a3,80000570 <_Z9draw_linePtiiiihhh+0xc8>
        if (e2 > -dy) {
80000554:	010f5663          	bge	t5,a6,80000560 <_Z9draw_linePtiiiihhh+0xb8>
            err -= dy;
80000558:	41f888b3          	sub	a7,a7,t6
            x0 += sx;
8000055c:	007585b3          	add	a1,a1,t2
        }
        if (e2 < dx) {
80000560:	fa685ee3          	bge	a6,t1,8000051c <_Z9draw_linePtiiiihhh+0x74>
            err += dx;
80000564:	006888b3          	add	a7,a7,t1
            y0 += sy;
80000568:	00860633          	add	a2,a2,s0
8000056c:	fb1ff06f          	j	8000051c <_Z9draw_linePtiiiihhh+0x74>
        if (x0 == x1 && y0 == y1) break;
80000570:	fee612e3          	bne	a2,a4,80000554 <_Z9draw_linePtiiiihhh+0xac>
        }
    }
}
80000574:	00c12403          	lw	s0,12(sp)
80000578:	00812483          	lw	s1,8(sp)
8000057c:	01010113          	addi	sp,sp,16
80000580:	00008067          	ret

80000584 <_Z8trianglePt4Vec2IiES1_S1_5color>:

void triangle(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
80000584:	f7010113          	addi	sp,sp,-144
80000588:	08912223          	sw	s1,132(sp)
8000058c:	09212023          	sw	s2,128(sp)
80000590:	07312e23          	sw	s3,124(sp)
80000594:	07512a23          	sw	s5,116(sp)
80000598:	07812423          	sw	s8,104(sp)
8000059c:	07912223          	sw	s9,100(sp)
800005a0:	08112623          	sw	ra,140(sp)
800005a4:	05b12e23          	sw	s11,92(sp)
800005a8:	03112a23          	sw	a7,52(sp)
800005ac:	00a12623          	sw	a0,12(sp)
800005b0:	00060913          	mv	s2,a2
800005b4:	00070c93          	mv	s9,a4
800005b8:	00058a93          	mv	s5,a1
800005bc:	00068993          	mv	s3,a3
800005c0:	00078493          	mv	s1,a5
800005c4:	00080c13          	mv	s8,a6
    // Finding the top two vertices
    if (t0.y > t1.y) {
800005c8:	32c75e63          	bge	a4,a2,80000904 <_Z8trianglePt4Vec2IiES1_S1_5color+0x380>
        Vec2i temp = t0;
        t0 = t1;
        t1 = temp;
    }
    if (t0.y > t2.y) {
800005cc:	36e85263          	bge	a6,a4,80000930 <_Z8trianglePt4Vec2IiES1_S1_5color+0x3ac>
    if (t1.y > t2.y) {
        Vec2i temp = t1;
        t1 = t2;
        t2 = temp;
    }
    int total_height = t2.y-t0.y; 
800005d0:	41890db3          	sub	s11,s2,s8
    for (int i=0; i<total_height; i++) { 
800005d4:	31b05463          	blez	s11,800008dc <_Z8trianglePt4Vec2IiES1_S1_5color+0x358>
800005d8:	08812423          	sw	s0,136(sp)
800005dc:	07412c23          	sw	s4,120(sp)
800005e0:	07612823          	sw	s6,112(sp)
800005e4:	07712623          	sw	s7,108(sp)
800005e8:	07a12023          	sw	s10,96(sp)
        char second_half = i>t1.y-t0.y || t1.y==t0.y; 
        int segment_height = second_half ? t2.y-t1.y : t1.y-t0.y; 
        float alpha = (float)i/total_height; 
800005ec:	000d8513          	mv	a0,s11
800005f0:	519090ef          	jal	8000a308 <__floatsisf>
800005f4:	00050593          	mv	a1,a0
800005f8:	0000b517          	auipc	a0,0xb
800005fc:	81c52503          	lw	a0,-2020(a0) # 8000ae14 <_etext>
        char second_half = i>t1.y-t0.y || t1.y==t0.y; 
80000600:	418c8433          	sub	s0,s9,s8
80000604:	08c090ef          	jal	80009690 <__divsf3>
80000608:	00050b93          	mv	s7,a0
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
8000060c:	41990533          	sub	a0,s2,s9
80000610:	01712023          	sw	s7,0(sp)
80000614:	4f5090ef          	jal	8000a308 <__floatsisf>
80000618:	00050593          	mv	a1,a0
8000061c:	0000a517          	auipc	a0,0xa
80000620:	7f852503          	lw	a0,2040(a0) # 8000ae14 <_etext>
80000624:	06c090ef          	jal	80009690 <__divsf3>
80000628:	00050793          	mv	a5,a0
8000062c:	00f12423          	sw	a5,8(sp)
80000630:	03414783          	lbu	a5,52(sp)
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000634:	409a8533          	sub	a0,s5,s1
80000638:	00f12e23          	sw	a5,28(sp)
8000063c:	03514783          	lbu	a5,53(sp)
80000640:	02f12023          	sw	a5,32(sp)
80000644:	03614783          	lbu	a5,54(sp)
80000648:	02f12223          	sw	a5,36(sp)
8000064c:	4bd090ef          	jal	8000a308 <__floatsisf>
80000650:	00a12223          	sw	a0,4(sp)
80000654:	2c044a63          	bltz	s0,80000928 <_Z8trianglePt4Vec2IiES1_S1_5color+0x3a4>
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
80000658:	00040513          	mv	a0,s0
8000065c:	4ad090ef          	jal	8000a308 <__floatsisf>
80000660:	00050593          	mv	a1,a0
80000664:	0000a517          	auipc	a0,0xa
80000668:	7b052503          	lw	a0,1968(a0) # 8000ae14 <_etext>
8000066c:	024090ef          	jal	80009690 <__divsf3>
80000670:	fffd8313          	addi	t1,s11,-1
80000674:	00a12a23          	sw	a0,20(sp)
80000678:	00645463          	bge	s0,t1,80000680 <_Z8trianglePt4Vec2IiES1_S1_5color+0xfc>
8000067c:	00040313          	mv	t1,s0
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
80000680:	01c12703          	lw	a4,28(sp)
80000684:	001c1793          	slli	a5,s8,0x1
80000688:	018787b3          	add	a5,a5,s8
8000068c:	00375a13          	srli	s4,a4,0x3
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
80000690:	02012703          	lw	a4,32(sp)
80000694:	00379793          	slli	a5,a5,0x3
80000698:	018787b3          	add	a5,a5,s8
8000069c:	00275693          	srli	a3,a4,0x2
800006a0:	0005e937          	lui	s2,0x5e
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800006a4:	02412703          	lw	a4,36(sp)
800006a8:	00579793          	slli	a5,a5,0x5
800006ac:	f2090913          	addi	s2,s2,-224 # 5df20 <_stack_size+0x55f20>
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800006b0:	00569693          	slli	a3,a3,0x5
800006b4:	00ba1a13          	slli	s4,s4,0xb
800006b8:	40f90933          	sub	s2,s2,a5
	inline Vec2<t> operator -(const Vec2<t> &V) const { return Vec2<t>(u-V.u, v-V.v); }
800006bc:	413a87b3          	sub	a5,s5,s3
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800006c0:	00da6a33          	or	s4,s4,a3
    for (int i=0; i<total_height; i++) { 
800006c4:	00000d13          	li	s10,0
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800006c8:	00375693          	srli	a3,a4,0x3
	inline Vec2<t> operator -(const Vec2<t> &V) const { return Vec2<t>(u-V.u, v-V.v); }
800006cc:	00f12823          	sw	a5,16(sp)
800006d0:	409987b3          	sub	a5,s3,s1
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
800006d4:	03b12623          	sw	s11,44(sp)
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800006d8:	00da6a33          	or	s4,s4,a3
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
800006dc:	000d0d93          	mv	s11,s10
800006e0:	40800b33          	neg	s6,s0
	inline Vec2<t> operator -(const Vec2<t> &V) const { return Vec2<t>(u-V.u, v-V.v); }
800006e4:	00f12c23          	sw	a5,24(sp)
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
800006e8:	31f00b93          	li	s7,799
800006ec:	02812423          	sw	s0,40(sp)
800006f0:	03512823          	sw	s5,48(sp)
800006f4:	00030d13          	mv	s10,t1
        float alpha = (float)i/total_height; 
800006f8:	000d8513          	mv	a0,s11
800006fc:	40d090ef          	jal	8000a308 <__floatsisf>
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000700:	00412583          	lw	a1,4(sp)
        float alpha = (float)i/total_height; 
80000704:	00050413          	mv	s0,a0
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000708:	00012503          	lw	a0,0(sp)
8000070c:	400090ef          	jal	80009b0c <__mulsf3>
80000710:	00040593          	mv	a1,s0
80000714:	3f8090ef          	jal	80009b0c <__mulsf3>
80000718:	381090ef          	jal	8000a298 <__fixsfsi>
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
8000071c:	00950ab3          	add	s5,a0,s1
        char second_half = i>t1.y-t0.y || t1.y==t0.y; 
80000720:	278c8263          	beq	s9,s8,80000984 <_Z8trianglePt4Vec2IiES1_S1_5color+0x400>
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000724:	01812503          	lw	a0,24(sp)
80000728:	3e1090ef          	jal	8000a308 <__floatsisf>
8000072c:	01412583          	lw	a1,20(sp)
80000730:	3dc090ef          	jal	80009b0c <__mulsf3>
80000734:	00040593          	mv	a1,s0
80000738:	3d4090ef          	jal	80009b0c <__mulsf3>
8000073c:	35d090ef          	jal	8000a298 <__fixsfsi>
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
80000740:	00950533          	add	a0,a0,s1
        Vec2i A = t0 + (t2 - t0)*alpha; 
        Vec2i B = second_half ? t1 + (t2 - t1)*beta : t0 + (t1 - t0)*beta; 
        if (A.x > B.x) {
80000744:	01554863          	blt	a0,s5,80000754 <_Z8trianglePt4Vec2IiES1_S1_5color+0x1d0>
80000748:	00050793          	mv	a5,a0
8000074c:	000a8513          	mv	a0,s5
80000750:	00078a93          	mv	s5,a5
            Vec2i temp = A;
            A = B;
            B = temp;
        }
        for (int j=A.x; j<=B.x; j++) { 
80000754:	018d87b3          	add	a5,s11,s8
80000758:	1df00713          	li	a4,479
8000075c:	02f76663          	bltu	a4,a5,80000788 <_Z8trianglePt4Vec2IiES1_S1_5color+0x204>
80000760:	00c12683          	lw	a3,12(sp)
80000764:	012507b3          	add	a5,a0,s2
80000768:	00179793          	slli	a5,a5,0x1
8000076c:	001a8713          	addi	a4,s5,1
80000770:	00f687b3          	add	a5,a3,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000774:	00abe463          	bltu	s7,a0,8000077c <_Z8trianglePt4Vec2IiES1_S1_5color+0x1f8>
    pixels[y * WIDTH + x] = color;
80000778:	01479023          	sh	s4,0(a5)
        for (int j=A.x; j<=B.x; j++) { 
8000077c:	00150513          	addi	a0,a0,1
80000780:	00278793          	addi	a5,a5,2
80000784:	fee518e3          	bne	a0,a4,80000774 <_Z8trianglePt4Vec2IiES1_S1_5color+0x1f0>
    for (int i=0; i<total_height; i++) { 
80000788:	001d8d93          	addi	s11,s11,1
8000078c:	ce090913          	addi	s2,s2,-800
80000790:	001b0b13          	addi	s6,s6,1
80000794:	f7bd52e3          	bge	s10,s11,800006f8 <_Z8trianglePt4Vec2IiES1_S1_5color+0x174>
80000798:	02c12d83          	lw	s11,44(sp)
8000079c:	001d0c93          	addi	s9,s10,1
800007a0:	02812403          	lw	s0,40(sp)
800007a4:	03012a83          	lw	s5,48(sp)
800007a8:	13bcd063          	bge	s9,s11,800008c8 <_Z8trianglePt4Vec2IiES1_S1_5color+0x344>
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
800007ac:	01c12783          	lw	a5,28(sp)
800007b0:	018c8d33          	add	s10,s9,s8
800007b4:	001d1713          	slli	a4,s10,0x1
800007b8:	0037d893          	srli	a7,a5,0x3
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
800007bc:	02012783          	lw	a5,32(sp)
800007c0:	01a70733          	add	a4,a4,s10
800007c4:	00371713          	slli	a4,a4,0x3
800007c8:	0027d613          	srli	a2,a5,0x2
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800007cc:	02412783          	lw	a5,36(sp)
800007d0:	01a70733          	add	a4,a4,s10
800007d4:	0005e337          	lui	t1,0x5e
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800007d8:	00561613          	slli	a2,a2,0x5
800007dc:	00b89893          	slli	a7,a7,0xb
800007e0:	00571713          	slli	a4,a4,0x5
800007e4:	f2030313          	addi	t1,t1,-224 # 5df20 <_stack_size+0x55f20>
800007e8:	00c8e8b3          	or	a7,a7,a2
800007ec:	40e30933          	sub	s2,t1,a4
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800007f0:	0037d613          	srli	a2,a5,0x3
800007f4:	413a87b3          	sub	a5,s5,s3
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
800007f8:	00090b13          	mv	s6,s2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800007fc:	00c8ebb3          	or	s7,a7,a2
80000800:	408c8433          	sub	s0,s9,s0
80000804:	00f12823          	sw	a5,16(sp)
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000808:	31f00a93          	li	s5,799
8000080c:	000c8913          	mv	s2,s9
        float alpha = (float)i/total_height; 
80000810:	00090513          	mv	a0,s2
80000814:	2f5090ef          	jal	8000a308 <__floatsisf>
80000818:	00050a13          	mv	s4,a0
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
8000081c:	00412583          	lw	a1,4(sp)
80000820:	00012503          	lw	a0,0(sp)
80000824:	2e8090ef          	jal	80009b0c <__mulsf3>
80000828:	00050593          	mv	a1,a0
8000082c:	000a0513          	mv	a0,s4
80000830:	2dc090ef          	jal	80009b0c <__mulsf3>
80000834:	265090ef          	jal	8000a298 <__fixsfsi>
80000838:	00050c93          	mv	s9,a0
8000083c:	01012503          	lw	a0,16(sp)
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
80000840:	009c8cb3          	add	s9,s9,s1
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000844:	2c5090ef          	jal	8000a308 <__floatsisf>
80000848:	00812583          	lw	a1,8(sp)
8000084c:	2c0090ef          	jal	80009b0c <__mulsf3>
80000850:	00050a13          	mv	s4,a0
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
80000854:	00040513          	mv	a0,s0
80000858:	2b1090ef          	jal	8000a308 <__floatsisf>
8000085c:	00050593          	mv	a1,a0
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000860:	000a0513          	mv	a0,s4
80000864:	2a8090ef          	jal	80009b0c <__mulsf3>
80000868:	231090ef          	jal	8000a298 <__fixsfsi>
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
8000086c:	01350533          	add	a0,a0,s3
        if (A.x > B.x) {
80000870:	01954863          	blt	a0,s9,80000880 <_Z8trianglePt4Vec2IiES1_S1_5color+0x2fc>
80000874:	00050793          	mv	a5,a0
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
80000878:	000c8513          	mv	a0,s9
        if (A.x > B.x) {
8000087c:	00078c93          	mv	s9,a5
        for (int j=A.x; j<=B.x; j++) { 
80000880:	1df00793          	li	a5,479
80000884:	03a7e663          	bltu	a5,s10,800008b0 <_Z8trianglePt4Vec2IiES1_S1_5color+0x32c>
80000888:	00c12683          	lw	a3,12(sp)
8000088c:	016507b3          	add	a5,a0,s6
80000890:	00179793          	slli	a5,a5,0x1
80000894:	001c8713          	addi	a4,s9,1
80000898:	00f687b3          	add	a5,a3,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
8000089c:	00aae463          	bltu	s5,a0,800008a4 <_Z8trianglePt4Vec2IiES1_S1_5color+0x320>
    pixels[y * WIDTH + x] = color;
800008a0:	01779023          	sh	s7,0(a5)
        for (int j=A.x; j<=B.x; j++) { 
800008a4:	00150513          	addi	a0,a0,1
800008a8:	00278793          	addi	a5,a5,2
800008ac:	fee518e3          	bne	a0,a4,8000089c <_Z8trianglePt4Vec2IiES1_S1_5color+0x318>
    for (int i=0; i<total_height; i++) { 
800008b0:	00190913          	addi	s2,s2,1
800008b4:	00140413          	addi	s0,s0,1
800008b8:	ce0b0b13          	addi	s6,s6,-800
800008bc:	01b95663          	bge	s2,s11,800008c8 <_Z8trianglePt4Vec2IiES1_S1_5color+0x344>
800008c0:	01890d33          	add	s10,s2,s8
800008c4:	f4dff06f          	j	80000810 <_Z8trianglePt4Vec2IiES1_S1_5color+0x28c>
800008c8:	08812403          	lw	s0,136(sp)
800008cc:	07812a03          	lw	s4,120(sp)
800008d0:	07012b03          	lw	s6,112(sp)
800008d4:	06c12b83          	lw	s7,108(sp)
800008d8:	06012d03          	lw	s10,96(sp)
            draw_pixel(pixels, j, t0.y+i, col);
        } 
    } 
}
800008dc:	08c12083          	lw	ra,140(sp)
800008e0:	08412483          	lw	s1,132(sp)
800008e4:	08012903          	lw	s2,128(sp)
800008e8:	07c12983          	lw	s3,124(sp)
800008ec:	07412a83          	lw	s5,116(sp)
800008f0:	06812c03          	lw	s8,104(sp)
800008f4:	06412c83          	lw	s9,100(sp)
800008f8:	05c12d83          	lw	s11,92(sp)
800008fc:	09010113          	addi	sp,sp,144
80000900:	00008067          	ret
    if (t0.y > t2.y) {
80000904:	04c85e63          	bge	a6,a2,80000960 <_Z8trianglePt4Vec2IiES1_S1_5color+0x3dc>
    if (t1.y > t2.y) {
80000908:	0ce64e63          	blt	a2,a4,800009e4 <_Z8trianglePt4Vec2IiES1_S1_5color+0x460>
8000090c:	08812423          	sw	s0,136(sp)
80000910:	07412c23          	sw	s4,120(sp)
80000914:	07612823          	sw	s6,112(sp)
80000918:	07712623          	sw	s7,108(sp)
8000091c:	07a12023          	sw	s10,96(sp)
    int total_height = t2.y-t0.y; 
80000920:	41060db3          	sub	s11,a2,a6
    for (int i=0; i<total_height; i++) { 
80000924:	cc9ff06f          	j	800005ec <_Z8trianglePt4Vec2IiES1_S1_5color+0x68>
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000928:	00000c93          	li	s9,0
8000092c:	e81ff06f          	j	800007ac <_Z8trianglePt4Vec2IiES1_S1_5color+0x228>
    if (t1.y > t2.y) {
80000930:	08c84463          	blt	a6,a2,800009b8 <_Z8trianglePt4Vec2IiES1_S1_5color+0x434>
        t0 = t1;
80000934:	00098a93          	mv	s5,s3
80000938:	00070913          	mv	s2,a4
        t1 = temp;
8000093c:	00060c93          	mv	s9,a2
80000940:	00058993          	mv	s3,a1
80000944:	00090693          	mv	a3,s2
80000948:	000a8793          	mv	a5,s5
8000094c:	000c0913          	mv	s2,s8
80000950:	00048a93          	mv	s5,s1
80000954:	00068c13          	mv	s8,a3
80000958:	00078493          	mv	s1,a5
8000095c:	c75ff06f          	j	800005d0 <_Z8trianglePt4Vec2IiES1_S1_5color+0x4c>
    if (t1.y > t2.y) {
80000960:	fee852e3          	bge	a6,a4,80000944 <_Z8trianglePt4Vec2IiES1_S1_5color+0x3c0>
80000964:	00098793          	mv	a5,s3
80000968:	00080c93          	mv	s9,a6
8000096c:	00048993          	mv	s3,s1
80000970:	00060c13          	mv	s8,a2
80000974:	00058493          	mv	s1,a1
80000978:	00070913          	mv	s2,a4
8000097c:	00078a93          	mv	s5,a5
80000980:	c51ff06f          	j	800005d0 <_Z8trianglePt4Vec2IiES1_S1_5color+0x4c>
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000984:	01012503          	lw	a0,16(sp)
80000988:	181090ef          	jal	8000a308 <__floatsisf>
8000098c:	00812583          	lw	a1,8(sp)
80000990:	17c090ef          	jal	80009b0c <__mulsf3>
80000994:	00050413          	mv	s0,a0
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
80000998:	000b0513          	mv	a0,s6
8000099c:	16d090ef          	jal	8000a308 <__floatsisf>
800009a0:	00050593          	mv	a1,a0
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
800009a4:	00040513          	mv	a0,s0
800009a8:	164090ef          	jal	80009b0c <__mulsf3>
800009ac:	0ed090ef          	jal	8000a298 <__fixsfsi>
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
800009b0:	01350533          	add	a0,a0,s3
800009b4:	d91ff06f          	j	80000744 <_Z8trianglePt4Vec2IiES1_S1_5color+0x1c0>
    int total_height = t2.y-t0.y; 
800009b8:	00048993          	mv	s3,s1
800009bc:	08812423          	sw	s0,136(sp)
800009c0:	07412c23          	sw	s4,120(sp)
800009c4:	07612823          	sw	s6,112(sp)
800009c8:	07712623          	sw	s7,108(sp)
800009cc:	07a12023          	sw	s10,96(sp)
800009d0:	40e60db3          	sub	s11,a2,a4
        t0 = t1;
800009d4:	00068493          	mv	s1,a3
    int total_height = t2.y-t0.y; 
800009d8:	00080c93          	mv	s9,a6
        t0 = t1;
800009dc:	00070c13          	mv	s8,a4
800009e0:	c0dff06f          	j	800005ec <_Z8trianglePt4Vec2IiES1_S1_5color+0x68>
    if (t1.y > t2.y) {
800009e4:	00098793          	mv	a5,s3
        t2 = temp;
800009e8:	00060c93          	mv	s9,a2
800009ec:	00058993          	mv	s3,a1
    if (t1.y > t2.y) {
800009f0:	00070913          	mv	s2,a4
800009f4:	00078a93          	mv	s5,a5
800009f8:	bd9ff06f          	j	800005d0 <_Z8trianglePt4Vec2IiES1_S1_5color+0x4c>

800009fc <_Z18triangle_wireframePt4Vec2IiES1_S1_5color>:


void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
800009fc:	fb010113          	addi	sp,sp,-80
80000a00:	04812423          	sw	s0,72(sp)
80000a04:	05212023          	sw	s2,64(sp)
80000a08:	0108d413          	srli	s0,a7,0x10
80000a0c:	0088d913          	srli	s2,a7,0x8
80000a10:	04912223          	sw	s1,68(sp)
80000a14:	0ff97913          	zext.b	s2,s2
80000a18:	0ff8f493          	zext.b	s1,a7
80000a1c:	0ff47413          	zext.b	s0,s0
80000a20:	03412c23          	sw	s4,56(sp)
80000a24:	03512a23          	sw	s5,52(sp)
80000a28:	00078a13          	mv	s4,a5
80000a2c:	00080a93          	mv	s5,a6
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
80000a30:	00040893          	mv	a7,s0
80000a34:	00090813          	mv	a6,s2
80000a38:	00048793          	mv	a5,s1
void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
80000a3c:	04112623          	sw	ra,76(sp)
80000a40:	03312e23          	sw	s3,60(sp)
80000a44:	03612823          	sw	s6,48(sp)
80000a48:	03712623          	sw	s7,44(sp)
80000a4c:	03812423          	sw	s8,40(sp)
80000a50:	03912223          	sw	s9,36(sp)
80000a54:	00050993          	mv	s3,a0
80000a58:	00058b13          	mv	s6,a1
80000a5c:	00060b93          	mv	s7,a2
80000a60:	00068c13          	mv	s8,a3
80000a64:	00070c93          	mv	s9,a4
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
80000a68:	a41ff0ef          	jal	800004a8 <_Z9draw_linePtiiiihhh>
    draw_line(pixels, t1.x, t1.y, t2.x, t2.y, col.r, col.g, col.b);
80000a6c:	00040893          	mv	a7,s0
80000a70:	00090813          	mv	a6,s2
80000a74:	00048793          	mv	a5,s1
80000a78:	000a8713          	mv	a4,s5
80000a7c:	000a0693          	mv	a3,s4
80000a80:	000c8613          	mv	a2,s9
80000a84:	000c0593          	mv	a1,s8
80000a88:	00098513          	mv	a0,s3
80000a8c:	a1dff0ef          	jal	800004a8 <_Z9draw_linePtiiiihhh>
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
80000a90:	00040893          	mv	a7,s0
}
80000a94:	04812403          	lw	s0,72(sp)
80000a98:	04c12083          	lw	ra,76(sp)
80000a9c:	02812c03          	lw	s8,40(sp)
80000aa0:	02412c83          	lw	s9,36(sp)
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
80000aa4:	00090813          	mv	a6,s2
80000aa8:	00048793          	mv	a5,s1
}
80000aac:	04012903          	lw	s2,64(sp)
80000ab0:	04412483          	lw	s1,68(sp)
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
80000ab4:	000b8713          	mv	a4,s7
80000ab8:	000b0693          	mv	a3,s6
}
80000abc:	02c12b83          	lw	s7,44(sp)
80000ac0:	03012b03          	lw	s6,48(sp)
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
80000ac4:	000a8613          	mv	a2,s5
80000ac8:	000a0593          	mv	a1,s4
}
80000acc:	03412a83          	lw	s5,52(sp)
80000ad0:	03812a03          	lw	s4,56(sp)
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
80000ad4:	00098513          	mv	a0,s3
}
80000ad8:	03c12983          	lw	s3,60(sp)
80000adc:	05010113          	addi	sp,sp,80
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
80000ae0:	9c9ff06f          	j	800004a8 <_Z9draw_linePtiiiihhh>

80000ae4 <_Z19switch_frame_bufferv>:
    if (cur_frame_buffer == 0) {
80000ae4:	0000a797          	auipc	a5,0xa
80000ae8:	4dc7c783          	lbu	a5,1244(a5) # 8000afc0 <cur_frame_buffer>
80000aec:	02078863          	beqz	a5,80000b1c <_Z19switch_frame_bufferv+0x38>
80000af0:	8005e7b7          	lui	a5,0x8005e
80000af4:	00000713          	li	a4,0
80000af8:	c0078793          	addi	a5,a5,-1024 # 8005dc00 <_heap_start+0x52920>
80000afc:	802ee537          	lui	a0,0x802ee
        cur_frame_buffer = 1;
80000b00:	0000a697          	auipc	a3,0xa
80000b04:	4ce68023          	sb	a4,1216(a3) # 8000afc0 <cur_frame_buffer>
        frame_buffer = ( uint16_t *) RAM_LOCATION;
80000b08:	0000a717          	auipc	a4,0xa
80000b0c:	4ca72023          	sw	a0,1216(a4) # 8000afc8 <frame_buffer>
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION2;
80000b10:	0000a717          	auipc	a4,0xa
80000b14:	4af72a23          	sw	a5,1204(a4) # 8000afc4 <frame_buffer_to_use>
}
80000b18:	00008067          	ret
80000b1c:	8005e537          	lui	a0,0x8005e
80000b20:	00100713          	li	a4,1
80000b24:	c0050513          	addi	a0,a0,-1024 # 8005dc00 <_heap_start+0x52920>
80000b28:	802ee7b7          	lui	a5,0x802ee
        cur_frame_buffer = 1;
80000b2c:	0000a697          	auipc	a3,0xa
80000b30:	48e68a23          	sb	a4,1172(a3) # 8000afc0 <cur_frame_buffer>
        frame_buffer = ( uint16_t *) RAM_LOCATION;
80000b34:	0000a717          	auipc	a4,0xa
80000b38:	48a72a23          	sw	a0,1172(a4) # 8000afc8 <frame_buffer>
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION2;
80000b3c:	0000a717          	auipc	a4,0xa
80000b40:	48f72423          	sw	a5,1160(a4) # 8000afc4 <frame_buffer_to_use>
}
80000b44:	00008067          	ret

80000b48 <_Z19cross_product_fixed10triangle3f>:
    return (Vec2i){ sx, sy };
}


Vec3fixed cross_product_fixed(triangle3f triangle)
{
80000b48:	fb010113          	addi	sp,sp,-80
80000b4c:	03312e23          	sw	s3,60(sp)
80000b50:	03812423          	sw	s8,40(sp)
80000b54:	0045a603          	lw	a2,4(a1)
80000b58:	0085a683          	lw	a3,8(a1)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
static inline float   fixed_to_float(fixed32 x)        { return (float)x / (float)(1 << FIXED_Q); }

// ----- Basic ops (same Q) -----
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000b5c:	0105a983          	lw	s3,16(a1)
80000b60:	0205ac03          	lw	s8,32(a1)
80000b64:	03512a23          	sw	s5,52(sp)
80000b68:	03712623          	sw	s7,44(sp)
80000b6c:	01c5aa83          	lw	s5,28(a1)
80000b70:	0145ab83          	lw	s7,20(a1)
80000b74:	05212023          	sw	s2,64(sp)
80000b78:	03412c23          	sw	s4,56(sp)
80000b7c:	0005a783          	lw	a5,0(a1)
80000b80:	40c989b3          	sub	s3,s3,a2
80000b84:	40dc0c33          	sub	s8,s8,a3
80000b88:	00c5aa03          	lw	s4,12(a1)
80000b8c:	0185a903          	lw	s2,24(a1)
80000b90:	03a12023          	sw	s10,32(sp)

// Multiply with 64-bit intermediate; truncating and rounded variants
static inline fixed32 fixed_mul_trunc(fixed32 a, fixed32 b) {
    int64_t t = (int64_t)a * (int64_t)b;
80000b94:	41fc5713          	srai	a4,s8,0x1f
80000b98:	41f9dd13          	srai	s10,s3,0x1f
80000b9c:	04912223          	sw	s1,68(sp)
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000ba0:	40ca8ab3          	sub	s5,s5,a2
80000ba4:	00050493          	mv	s1,a0
80000ba8:	40db8bb3          	sub	s7,s7,a3
    int64_t t = (int64_t)a * (int64_t)b;
80000bac:	000c0613          	mv	a2,s8
80000bb0:	00070693          	mv	a3,a4
80000bb4:	000d0593          	mv	a1,s10
80000bb8:	00098513          	mv	a0,s3
80000bbc:	04112623          	sw	ra,76(sp)
80000bc0:	04812423          	sw	s0,72(sp)
80000bc4:	03612823          	sw	s6,48(sp)
80000bc8:	03912223          	sw	s9,36(sp)
80000bcc:	01b12e23          	sw	s11,28(sp)
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000bd0:	40fa0a33          	sub	s4,s4,a5
80000bd4:	40f90933          	sub	s2,s2,a5
    int64_t t = (int64_t)a * (int64_t)b;
80000bd8:	00e12623          	sw	a4,12(sp)
80000bdc:	41fbdc93          	srai	s9,s7,0x1f
80000be0:	05d090ef          	jal	8000a43c <__muldi3>
80000be4:	41fadb13          	srai	s6,s5,0x1f
    return (fixed32)(t >> FIXED_Q);
80000be8:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000bec:	000a8613          	mv	a2,s5
80000bf0:	000b0693          	mv	a3,s6
    return (fixed32)(t >> FIXED_Q);
80000bf4:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000bf8:	000c8593          	mv	a1,s9
80000bfc:	000b8513          	mv	a0,s7
    return (fixed32)(t >> FIXED_Q);
80000c00:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80000c04:	039090ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000c08:	01059593          	slli	a1,a1,0x10
80000c0c:	01055513          	srli	a0,a0,0x10
80000c10:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80000c14:	41f95d93          	srai	s11,s2,0x1f
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000c18:	40a40433          	sub	s0,s0,a0
    int64_t t = (int64_t)a * (int64_t)b;
80000c1c:	000b8613          	mv	a2,s7
80000c20:	000c8693          	mv	a3,s9

        line2.x = fixed_sub(triangle.p[2].x, triangle.p[0].x);
        line2.y = fixed_sub(triangle.p[2].y, triangle.p[0].y);
        line2.z = fixed_sub(triangle.p[2].z, triangle.p[0].z);
        
        normal.x = fixed_sub(fixed_mul_trunc(line1.y, line2.z), fixed_mul_trunc(line1.z, line2.y));
80000c24:	0084a023          	sw	s0,0(s1)
80000c28:	000d8593          	mv	a1,s11
80000c2c:	00090513          	mv	a0,s2
80000c30:	00d090ef          	jal	8000a43c <__muldi3>
80000c34:	00c12703          	lw	a4,12(sp)
80000c38:	41fa5b93          	srai	s7,s4,0x1f
    return (fixed32)(t >> FIXED_Q);
80000c3c:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000c40:	00070693          	mv	a3,a4
80000c44:	000c0613          	mv	a2,s8
    return (fixed32)(t >> FIXED_Q);
80000c48:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000c4c:	000b8593          	mv	a1,s7
80000c50:	000a0513          	mv	a0,s4
    return (fixed32)(t >> FIXED_Q);
80000c54:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80000c58:	7e4090ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000c5c:	01059593          	slli	a1,a1,0x10
80000c60:	01055513          	srli	a0,a0,0x10
80000c64:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000c68:	40a40433          	sub	s0,s0,a0
    int64_t t = (int64_t)a * (int64_t)b;
80000c6c:	000a8613          	mv	a2,s5
80000c70:	000b0693          	mv	a3,s6
        normal.y = fixed_sub(fixed_mul_trunc(line1.z, line2.x), fixed_mul_trunc(line1.x, line2.z));
80000c74:	0084a223          	sw	s0,4(s1)
80000c78:	000a0513          	mv	a0,s4
80000c7c:	000b8593          	mv	a1,s7
80000c80:	7bc090ef          	jal	8000a43c <__muldi3>
80000c84:	00050413          	mv	s0,a0
80000c88:	00058793          	mv	a5,a1
80000c8c:	00098613          	mv	a2,s3
80000c90:	000d0693          	mv	a3,s10
80000c94:	00090513          	mv	a0,s2
80000c98:	000d8593          	mv	a1,s11
    return (fixed32)(t >> FIXED_Q);
80000c9c:	01079793          	slli	a5,a5,0x10
80000ca0:	01045413          	srli	s0,s0,0x10
80000ca4:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80000ca8:	794090ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000cac:	01055513          	srli	a0,a0,0x10
80000cb0:	01059593          	slli	a1,a1,0x10
80000cb4:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000cb8:	40a40433          	sub	s0,s0,a0
        normal.z = fixed_sub(fixed_mul_trunc(line1.x, line2.y), fixed_mul_trunc(line1.y, line2.x));
80000cbc:	0084a423          	sw	s0,8(s1)
        return normal;
}
80000cc0:	04c12083          	lw	ra,76(sp)
80000cc4:	04812403          	lw	s0,72(sp)
80000cc8:	04012903          	lw	s2,64(sp)
80000ccc:	03c12983          	lw	s3,60(sp)
80000cd0:	03812a03          	lw	s4,56(sp)
80000cd4:	03412a83          	lw	s5,52(sp)
80000cd8:	03012b03          	lw	s6,48(sp)
80000cdc:	02c12b83          	lw	s7,44(sp)
80000ce0:	02812c03          	lw	s8,40(sp)
80000ce4:	02412c83          	lw	s9,36(sp)
80000ce8:	02012d03          	lw	s10,32(sp)
80000cec:	01c12d83          	lw	s11,28(sp)
80000cf0:	00048513          	mv	a0,s1
80000cf4:	04412483          	lw	s1,68(sp)
80000cf8:	05010113          	addi	sp,sp,80
80000cfc:	00008067          	ret

80000d00 <_Z15normalize_fixed9Vec3fixed>:
Vec3fixed normalize_fixed(Vec3fixed normal)
{
80000d00:	fd010113          	addi	sp,sp,-48
80000d04:	01612823          	sw	s6,16(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80000d08:	0045ab03          	lw	s6,4(a1)
80000d0c:	01812423          	sw	s8,8(sp)
80000d10:	0005ac03          	lw	s8,0(a1)
80000d14:	01712623          	sw	s7,12(sp)
80000d18:	41fb5b93          	srai	s7,s6,0x1f
80000d1c:	01312e23          	sw	s3,28(sp)
80000d20:	01412c23          	sw	s4,24(sp)
80000d24:	000b8693          	mv	a3,s7
80000d28:	0085aa03          	lw	s4,8(a1)
80000d2c:	000b0613          	mv	a2,s6
80000d30:	00050993          	mv	s3,a0
80000d34:	000b8593          	mv	a1,s7
80000d38:	000b0513          	mv	a0,s6
80000d3c:	02112623          	sw	ra,44(sp)
80000d40:	02812423          	sw	s0,40(sp)
80000d44:	01512a23          	sw	s5,20(sp)
80000d48:	01912223          	sw	s9,4(sp)
80000d4c:	02912223          	sw	s1,36(sp)
80000d50:	41fc5c93          	srai	s9,s8,0x1f
80000d54:	6e8090ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000d58:	01059793          	slli	a5,a1,0x10
80000d5c:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000d60:	000c0613          	mv	a2,s8
80000d64:	000c8693          	mv	a3,s9
80000d68:	000c0513          	mv	a0,s8
80000d6c:	000c8593          	mv	a1,s9
    return (fixed32)(t >> FIXED_Q);
80000d70:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80000d74:	6c8090ef          	jal	8000a43c <__muldi3>
80000d78:	41fa5a93          	srai	s5,s4,0x1f
    return (fixed32)(t >> FIXED_Q);
80000d7c:	01055793          	srli	a5,a0,0x10
80000d80:	01059593          	slli	a1,a1,0x10
80000d84:	00f5e7b3          	or	a5,a1,a5
    int64_t t = (int64_t)a * (int64_t)b;
80000d88:	000a0613          	mv	a2,s4
80000d8c:	000a8693          	mv	a3,s5
80000d90:	000a0513          	mv	a0,s4
80000d94:	000a8593          	mv	a1,s5
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80000d98:	00f40433          	add	s0,s0,a5
    int64_t t = (int64_t)a * (int64_t)b;
80000d9c:	6a0090ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000da0:	01055513          	srli	a0,a0,0x10
80000da4:	01059593          	slli	a1,a1,0x10
80000da8:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80000dac:	00a407b3          	add	a5,s0,a0
//     if ((n ^ b) >= 0) n += llabs((int64_t)b) >> 1; // sign-aware rounding
//     else              n -= llabs((int64_t)b) >> 1;
//     return (fixed32)(n / b);
// }
static inline fixed32 fixed_sqrt(fixed32 x) {
    if (x <= 0) return 0;
80000db0:	3cf05e63          	blez	a5,8000118c <_Z15normalize_fixed9Vec3fixed+0x48c>
    // Newton–Raphson on integer domain. Start guess ~ scaled.
    int64_t xn = x;
    int64_t g  = (int64_t)1 << (FIXED_Q); // start at 1.0
    for (int i = 0; i < 16; ++i) {
        // g = 0.5 * (g + x/g)
        int64_t t = (xn << FIXED_Q) / g;
80000db4:	01079493          	slli	s1,a5,0x10
80000db8:	03212023          	sw	s2,32(sp)
80000dbc:	4107d913          	srai	s2,a5,0x10
        g = (g + t) >> 1;
80000dc0:	00f91693          	slli	a3,s2,0xf
80000dc4:	0114d713          	srli	a4,s1,0x11
80000dc8:	00e6e733          	or	a4,a3,a4
80000dcc:	00008437          	lui	s0,0x8
80000dd0:	00870433          	add	s0,a4,s0
80000dd4:	00e43733          	sltu	a4,s0,a4
80000dd8:	41f7d793          	srai	a5,a5,0x1f
80000ddc:	01a12023          	sw	s10,0(sp)
80000de0:	00f70d33          	add	s10,a4,a5
        int64_t t = (xn << FIXED_Q) / g;
80000de4:	000d0693          	mv	a3,s10
80000de8:	00040613          	mv	a2,s0
80000dec:	00048513          	mv	a0,s1
80000df0:	00090593          	mv	a1,s2
80000df4:	3c4070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000df8:	00850433          	add	s0,a0,s0
80000dfc:	01a585b3          	add	a1,a1,s10
80000e00:	00a43d33          	sltu	s10,s0,a0
80000e04:	00bd0d33          	add	s10,s10,a1
80000e08:	01fd1793          	slli	a5,s10,0x1f
80000e0c:	00145413          	srli	s0,s0,0x1
80000e10:	0087e433          	or	s0,a5,s0
80000e14:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000e18:	00040613          	mv	a2,s0
80000e1c:	000d0693          	mv	a3,s10
80000e20:	00048513          	mv	a0,s1
80000e24:	00090593          	mv	a1,s2
80000e28:	390070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000e2c:	00850433          	add	s0,a0,s0
80000e30:	01a585b3          	add	a1,a1,s10
80000e34:	00a43d33          	sltu	s10,s0,a0
80000e38:	00bd0d33          	add	s10,s10,a1
80000e3c:	01fd1793          	slli	a5,s10,0x1f
80000e40:	00145413          	srli	s0,s0,0x1
80000e44:	0087e433          	or	s0,a5,s0
80000e48:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000e4c:	00040613          	mv	a2,s0
80000e50:	000d0693          	mv	a3,s10
80000e54:	00048513          	mv	a0,s1
80000e58:	00090593          	mv	a1,s2
80000e5c:	35c070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000e60:	00850433          	add	s0,a0,s0
80000e64:	01a585b3          	add	a1,a1,s10
80000e68:	00a43d33          	sltu	s10,s0,a0
80000e6c:	00bd0d33          	add	s10,s10,a1
80000e70:	01fd1793          	slli	a5,s10,0x1f
80000e74:	00145413          	srli	s0,s0,0x1
80000e78:	0087e433          	or	s0,a5,s0
80000e7c:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000e80:	00040613          	mv	a2,s0
80000e84:	000d0693          	mv	a3,s10
80000e88:	00048513          	mv	a0,s1
80000e8c:	00090593          	mv	a1,s2
80000e90:	328070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000e94:	00850433          	add	s0,a0,s0
80000e98:	01a585b3          	add	a1,a1,s10
80000e9c:	00a43d33          	sltu	s10,s0,a0
80000ea0:	00bd0d33          	add	s10,s10,a1
80000ea4:	01fd1793          	slli	a5,s10,0x1f
80000ea8:	00145413          	srli	s0,s0,0x1
80000eac:	0087e433          	or	s0,a5,s0
80000eb0:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000eb4:	00040613          	mv	a2,s0
80000eb8:	000d0693          	mv	a3,s10
80000ebc:	00048513          	mv	a0,s1
80000ec0:	00090593          	mv	a1,s2
80000ec4:	2f4070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000ec8:	00850433          	add	s0,a0,s0
80000ecc:	01a585b3          	add	a1,a1,s10
80000ed0:	00a43d33          	sltu	s10,s0,a0
80000ed4:	00bd0d33          	add	s10,s10,a1
80000ed8:	01fd1793          	slli	a5,s10,0x1f
80000edc:	00145413          	srli	s0,s0,0x1
80000ee0:	0087e433          	or	s0,a5,s0
80000ee4:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000ee8:	00040613          	mv	a2,s0
80000eec:	000d0693          	mv	a3,s10
80000ef0:	00048513          	mv	a0,s1
80000ef4:	00090593          	mv	a1,s2
80000ef8:	2c0070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000efc:	00850433          	add	s0,a0,s0
80000f00:	01a585b3          	add	a1,a1,s10
80000f04:	00a43d33          	sltu	s10,s0,a0
80000f08:	00bd0d33          	add	s10,s10,a1
80000f0c:	01fd1793          	slli	a5,s10,0x1f
80000f10:	00145413          	srli	s0,s0,0x1
80000f14:	0087e433          	or	s0,a5,s0
80000f18:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000f1c:	00040613          	mv	a2,s0
80000f20:	000d0693          	mv	a3,s10
80000f24:	00048513          	mv	a0,s1
80000f28:	00090593          	mv	a1,s2
80000f2c:	28c070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000f30:	00850433          	add	s0,a0,s0
80000f34:	01a585b3          	add	a1,a1,s10
80000f38:	00a43d33          	sltu	s10,s0,a0
80000f3c:	00bd0d33          	add	s10,s10,a1
80000f40:	01fd1793          	slli	a5,s10,0x1f
80000f44:	00145413          	srli	s0,s0,0x1
80000f48:	0087e433          	or	s0,a5,s0
80000f4c:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000f50:	00040613          	mv	a2,s0
80000f54:	000d0693          	mv	a3,s10
80000f58:	00048513          	mv	a0,s1
80000f5c:	00090593          	mv	a1,s2
80000f60:	258070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000f64:	00850433          	add	s0,a0,s0
80000f68:	01a585b3          	add	a1,a1,s10
80000f6c:	00a43d33          	sltu	s10,s0,a0
80000f70:	00bd0d33          	add	s10,s10,a1
80000f74:	01fd1793          	slli	a5,s10,0x1f
80000f78:	00145413          	srli	s0,s0,0x1
80000f7c:	0087e433          	or	s0,a5,s0
80000f80:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000f84:	00040613          	mv	a2,s0
80000f88:	000d0693          	mv	a3,s10
80000f8c:	00048513          	mv	a0,s1
80000f90:	00090593          	mv	a1,s2
80000f94:	224070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000f98:	00850433          	add	s0,a0,s0
80000f9c:	01a585b3          	add	a1,a1,s10
80000fa0:	00a43d33          	sltu	s10,s0,a0
80000fa4:	00bd0d33          	add	s10,s10,a1
80000fa8:	01fd1793          	slli	a5,s10,0x1f
80000fac:	00145413          	srli	s0,s0,0x1
80000fb0:	0087e433          	or	s0,a5,s0
80000fb4:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000fb8:	00040613          	mv	a2,s0
80000fbc:	000d0693          	mv	a3,s10
80000fc0:	00048513          	mv	a0,s1
80000fc4:	00090593          	mv	a1,s2
80000fc8:	1f0070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80000fcc:	00850433          	add	s0,a0,s0
80000fd0:	01a585b3          	add	a1,a1,s10
80000fd4:	00a43d33          	sltu	s10,s0,a0
80000fd8:	00bd0d33          	add	s10,s10,a1
80000fdc:	01fd1793          	slli	a5,s10,0x1f
80000fe0:	00145413          	srli	s0,s0,0x1
80000fe4:	0087e433          	or	s0,a5,s0
80000fe8:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000fec:	00040613          	mv	a2,s0
80000ff0:	000d0693          	mv	a3,s10
80000ff4:	00048513          	mv	a0,s1
80000ff8:	00090593          	mv	a1,s2
80000ffc:	1bc070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001000:	00850433          	add	s0,a0,s0
80001004:	01a585b3          	add	a1,a1,s10
80001008:	00a43d33          	sltu	s10,s0,a0
8000100c:	00bd0d33          	add	s10,s10,a1
80001010:	01fd1793          	slli	a5,s10,0x1f
80001014:	00145413          	srli	s0,s0,0x1
80001018:	0087e433          	or	s0,a5,s0
8000101c:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001020:	00040613          	mv	a2,s0
80001024:	000d0693          	mv	a3,s10
80001028:	00048513          	mv	a0,s1
8000102c:	00090593          	mv	a1,s2
80001030:	188070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001034:	00850433          	add	s0,a0,s0
80001038:	01a585b3          	add	a1,a1,s10
8000103c:	00a43d33          	sltu	s10,s0,a0
80001040:	00bd0d33          	add	s10,s10,a1
80001044:	01fd1793          	slli	a5,s10,0x1f
80001048:	00145413          	srli	s0,s0,0x1
8000104c:	0087e433          	or	s0,a5,s0
80001050:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001054:	00040613          	mv	a2,s0
80001058:	000d0693          	mv	a3,s10
8000105c:	00048513          	mv	a0,s1
80001060:	00090593          	mv	a1,s2
80001064:	154070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001068:	00850433          	add	s0,a0,s0
8000106c:	01a585b3          	add	a1,a1,s10
80001070:	00a43d33          	sltu	s10,s0,a0
80001074:	00bd0d33          	add	s10,s10,a1
80001078:	01fd1793          	slli	a5,s10,0x1f
8000107c:	00145413          	srli	s0,s0,0x1
80001080:	0087e433          	or	s0,a5,s0
80001084:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001088:	00040613          	mv	a2,s0
8000108c:	000d0693          	mv	a3,s10
80001090:	00048513          	mv	a0,s1
80001094:	00090593          	mv	a1,s2
80001098:	120070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
8000109c:	00850433          	add	s0,a0,s0
800010a0:	01a585b3          	add	a1,a1,s10
800010a4:	00a43d33          	sltu	s10,s0,a0
800010a8:	00bd0d33          	add	s10,s10,a1
800010ac:	01fd1793          	slli	a5,s10,0x1f
800010b0:	00145413          	srli	s0,s0,0x1
800010b4:	0087e433          	or	s0,a5,s0
800010b8:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
800010bc:	00090593          	mv	a1,s2
800010c0:	00048513          	mv	a0,s1
800010c4:	00040613          	mv	a2,s0
800010c8:	000d0693          	mv	a3,s10
800010cc:	0ec070ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
800010d0:	00850433          	add	s0,a0,s0
800010d4:	01a585b3          	add	a1,a1,s10
800010d8:	00a437b3          	sltu	a5,s0,a0
800010dc:	00b787b3          	add	a5,a5,a1
800010e0:	01f79793          	slli	a5,a5,0x1f
800010e4:	00145413          	srli	s0,s0,0x1
    }
    return (fixed32)g;
800010e8:	02012903          	lw	s2,32(sp)
800010ec:	00012d03          	lw	s10,0(sp)
        g = (g + t) >> 1;
800010f0:	0087e433          	or	s0,a5,s0
    return (fixed32)(n / b);
800010f4:	41f45493          	srai	s1,s0,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
800010f8:	010c9c93          	slli	s9,s9,0x10
800010fc:	010c5593          	srli	a1,s8,0x10
    return (fixed32)(n / b);
80001100:	00040613          	mv	a2,s0
80001104:	00048693          	mv	a3,s1
80001108:	0195e5b3          	or	a1,a1,s9
8000110c:	010c1513          	slli	a0,s8,0x10
80001110:	0a8070ef          	jal	800081b8 <__divdi3>
    int64_t n = ((int64_t)a) << FIXED_Q;
80001114:	010b9b93          	slli	s7,s7,0x10
80001118:	010b5593          	srli	a1,s6,0x10
    return (fixed32)(n / b);
8000111c:	00a9a023          	sw	a0,0(s3)
80001120:	00040613          	mv	a2,s0
80001124:	00048693          	mv	a3,s1
80001128:	0175e5b3          	or	a1,a1,s7
8000112c:	010b1513          	slli	a0,s6,0x10
80001130:	088070ef          	jal	800081b8 <__divdi3>
    int64_t n = ((int64_t)a) << FIXED_Q;
80001134:	010a9a93          	slli	s5,s5,0x10
80001138:	010a5593          	srli	a1,s4,0x10
    return (fixed32)(n / b);
8000113c:	00a9a223          	sw	a0,4(s3)
80001140:	00040613          	mv	a2,s0
80001144:	00048693          	mv	a3,s1
80001148:	0155e5b3          	or	a1,a1,s5
8000114c:	010a1513          	slli	a0,s4,0x10
80001150:	068070ef          	jal	800081b8 <__divdi3>
                                        fixed_mul_trunc(normal.z, normal.z)));
        normal.x = fixed_div_trunc(normal.x, l);
        normal.y = fixed_div_trunc(normal.y, l);
        normal.z = fixed_div_trunc(normal.z, l);
        return normal;
}
80001154:	02c12083          	lw	ra,44(sp)
80001158:	02812403          	lw	s0,40(sp)
8000115c:	00a9a423          	sw	a0,8(s3)
80001160:	02412483          	lw	s1,36(sp)
80001164:	01812a03          	lw	s4,24(sp)
80001168:	01412a83          	lw	s5,20(sp)
8000116c:	01012b03          	lw	s6,16(sp)
80001170:	00c12b83          	lw	s7,12(sp)
80001174:	00812c03          	lw	s8,8(sp)
80001178:	00412c83          	lw	s9,4(sp)
8000117c:	00098513          	mv	a0,s3
80001180:	01c12983          	lw	s3,28(sp)
80001184:	03010113          	addi	sp,sp,48
80001188:	00008067          	ret
8000118c:	00000413          	li	s0,0
80001190:	00000493          	li	s1,0
80001194:	f65ff06f          	j	800010f8 <_Z15normalize_fixed9Vec3fixed+0x3f8>

80001198 <main>:
                               fixed_mul_trunc(a.y, b.y)),
                     fixed_mul_trunc(a.z, b.z));
}


int main() {
80001198:	d1010113          	addi	sp,sp,-752
    init_printf(NULL, tfp_putc);      // set output sink
8000119c:	fffff597          	auipc	a1,0xfffff
800011a0:	efc58593          	addi	a1,a1,-260 # 80000098 <_ZL8tfp_putcPvc>
800011a4:	00000513          	li	a0,0
int main() {
800011a8:	2e112623          	sw	ra,748(sp)
800011ac:	2e812423          	sw	s0,744(sp)
800011b0:	2e912223          	sw	s1,740(sp)
800011b4:	2f212023          	sw	s2,736(sp)
800011b8:	2d312e23          	sw	s3,732(sp)
800011bc:	2d412c23          	sw	s4,728(sp)
800011c0:	2d512a23          	sw	s5,724(sp)
800011c4:	2d612823          	sw	s6,720(sp)
800011c8:	2d712623          	sw	s7,716(sp)
800011cc:	2d812423          	sw	s8,712(sp)
800011d0:	2d912223          	sw	s9,708(sp)
800011d4:	2da12023          	sw	s10,704(sp)
800011d8:	2bb12e23          	sw	s11,700(sp)
    init_printf(NULL, tfp_putc);      // set output sink
800011dc:	71c050ef          	jal	800068f8 <init_printf>
    uint16_t *pixels = ( uint16_t *) (RAM_LOCATION);
    unsigned int *screenChange= ( unsigned int *) 0x88002800;
    unsigned int *frame_buffer_addr= ( unsigned int *) 0x88002804;
    asm volatile ("nop");
800011e0:	00000013          	nop
    asm volatile ("nop");
800011e4:	00000013          	nop
    asm volatile ("nop");
800011e8:	00000013          	nop
    frame_buffer_addr[0] = (uint32_t)frame_buffer; // Set frame buffer address
800011ec:	0000a797          	auipc	a5,0xa
800011f0:	ddc78793          	addi	a5,a5,-548 # 8000afc8 <frame_buffer>
800011f4:	0007a703          	lw	a4,0(a5)
800011f8:	880037b7          	lui	a5,0x88003
800011fc:	80e7a223          	sw	a4,-2044(a5) # 88002804 <_stack_end+0x7c02804>
    frame_buffer_addr[0] = (uint32_t)frame_buffer; // Set frame buffer address
    frame_buffer_addr[0] = (uint32_t)frame_buffer; // Set frame buffer address
    asm volatile ("nop");
80001200:	00000013          	nop
    asm volatile ("nop");
80001204:	00000013          	nop
    asm volatile ("nop");
80001208:	00000013          	nop
    *screenChange = 0x00000001; // Trigger screen change
8000120c:	880037b7          	lui	a5,0x88003
80001210:	00100713          	li	a4,1
80001214:	80e7a023          	sw	a4,-2048(a5) # 88002800 <_stack_end+0x7c02800>
    *screenChange = 0x00000001; // Trigger screen change
    *screenChange = 0x00000001; // Trigger screen change
    asm volatile ("nop");
80001218:	00000013          	nop
    asm volatile ("nop");
8000121c:	00000013          	nop
    asm volatile ("nop");
80001220:	00000013          	nop
        { F(0.0f), F(1.0f), F(0.0f) }, // 3
        { F(0.0f), F(0.0f), F(1.0f) }, // 4
        { F(1.0f), F(0.0f), F(1.0f) }, // 5
        { F(1.0f), F(1.0f), F(1.0f) }, // 6
        { F(0.0f), F(1.0f), F(1.0f) }, // 7
    };
80001224:	000107b7          	lui	a5,0x10
80001228:	0af12623          	sw	a5,172(sp)
8000122c:	0af12c23          	sw	a5,184(sp)
80001230:	0af12e23          	sw	a5,188(sp)
80001234:	0cf12423          	sw	a5,200(sp)
80001238:	0cf12c23          	sw	a5,216(sp)
8000123c:	0cf12e23          	sw	a5,220(sp)
80001240:	0ef12223          	sw	a5,228(sp)
80001244:	0ef12423          	sw	a5,232(sp)
80001248:	0ef12623          	sw	a5,236(sp)
8000124c:	0ef12823          	sw	a5,240(sp)
80001250:	0ef12c23          	sw	a5,248(sp)
80001254:	0ef12e23          	sw	a5,252(sp)
    };
    triangle3f cube_triangles[cube_size];
    // triangle3f *cube_triangles = (triangle3f *) riscy_malloc(sizeof(triangle3f) * 120);
    for (int i = 0; i < 12; ++i) {
        cube_triangles[i].p[0] = v[idx[i][0]];
        cube_triangles[i].p[1] = v[idx[i][1]];
80001258:	10f12823          	sw	a5,272(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000125c:	10f12c23          	sw	a5,280(sp)
80001260:	10f12e23          	sw	a5,284(sp)
    };
80001264:	0a012023          	sw	zero,160(sp)
80001268:	0a012223          	sw	zero,164(sp)
8000126c:	0a012423          	sw	zero,168(sp)
80001270:	0a012823          	sw	zero,176(sp)
80001274:	0a012a23          	sw	zero,180(sp)
80001278:	0c012023          	sw	zero,192(sp)
8000127c:	0c012223          	sw	zero,196(sp)
80001280:	0c012623          	sw	zero,204(sp)
80001284:	0c012823          	sw	zero,208(sp)
80001288:	0c012a23          	sw	zero,212(sp)
8000128c:	0e012023          	sw	zero,224(sp)
80001290:	0e012a23          	sw	zero,244(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001294:	10012023          	sw	zero,256(sp)
80001298:	10012223          	sw	zero,260(sp)
8000129c:	10012423          	sw	zero,264(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800012a0:	10012623          	sw	zero,268(sp)
800012a4:	10012a23          	sw	zero,276(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800012a8:	12012023          	sw	zero,288(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800012ac:	12f12823          	sw	a5,304(sp)
800012b0:	12f12a23          	sw	a5,308(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800012b4:	12f12e23          	sw	a5,316(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800012b8:	14f12423          	sw	a5,328(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800012bc:	14f12a23          	sw	a5,340(sp)
800012c0:	14f12c23          	sw	a5,344(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800012c4:	16f12023          	sw	a5,352(sp)
800012c8:	16f12223          	sw	a5,356(sp)
800012cc:	16f12423          	sw	a5,360(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800012d0:	16f12623          	sw	a5,364(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800012d4:	16f12c23          	sw	a5,376(sp)
800012d8:	16f12e23          	sw	a5,380(sp)
800012dc:	18f12023          	sw	a5,384(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800012e0:	18f12223          	sw	a5,388(sp)
800012e4:	18f12623          	sw	a5,396(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800012e8:	18f12823          	sw	a5,400(sp)
800012ec:	18f12c23          	sw	a5,408(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800012f0:	18f12e23          	sw	a5,412(sp)
800012f4:	1af12023          	sw	a5,416(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800012f8:	12012223          	sw	zero,292(sp)
800012fc:	12012423          	sw	zero,296(sp)
80001300:	12012623          	sw	zero,300(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001304:	12012c23          	sw	zero,312(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001308:	14012023          	sw	zero,320(sp)
8000130c:	14012223          	sw	zero,324(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001310:	14012623          	sw	zero,332(sp)
80001314:	14012823          	sw	zero,336(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001318:	14012e23          	sw	zero,348(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
8000131c:	16012823          	sw	zero,368(sp)
80001320:	16012a23          	sw	zero,372(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001324:	18012423          	sw	zero,392(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001328:	18012a23          	sw	zero,404(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
8000132c:	1af12223          	sw	a5,420(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001330:	1af12623          	sw	a5,428(sp)
80001334:	1af12823          	sw	a5,432(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001338:	1af12a23          	sw	a5,436(sp)
8000133c:	1af12e23          	sw	a5,444(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001340:	1cf12223          	sw	a5,452(sp)
80001344:	1cf12423          	sw	a5,456(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001348:	1cf12a23          	sw	a5,468(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
8000134c:	1ef12023          	sw	a5,480(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001350:	1ef12423          	sw	a5,488(sp)
80001354:	1ef12623          	sw	a5,492(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001358:	1ef12a23          	sw	a5,500(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
8000135c:	20f12223          	sw	a5,516(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001360:	20f12623          	sw	a5,524(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001364:	22f12223          	sw	a5,548(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001368:	1a012423          	sw	zero,424(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
8000136c:	1a012c23          	sw	zero,440(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001370:	1c012023          	sw	zero,448(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001374:	1c012623          	sw	zero,460(sp)
80001378:	1c012823          	sw	zero,464(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
8000137c:	1c012c23          	sw	zero,472(sp)
80001380:	1c012e23          	sw	zero,476(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001384:	1e012223          	sw	zero,484(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001388:	1e012823          	sw	zero,496(sp)
8000138c:	1e012c23          	sw	zero,504(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001390:	1e012e23          	sw	zero,508(sp)
80001394:	20012023          	sw	zero,512(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001398:	20012423          	sw	zero,520(sp)
8000139c:	20012823          	sw	zero,528(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013a0:	20012a23          	sw	zero,532(sp)
800013a4:	20012c23          	sw	zero,536(sp)
800013a8:	20012e23          	sw	zero,540(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013ac:	22012023          	sw	zero,544(sp)
800013b0:	22012423          	sw	zero,552(sp)
    }
    mesh cube = { cube_triangles, cube_size };


    tfp_printf("Starting Frame Buffer Test\r\n");
800013b4:	00009517          	auipc	a0,0x9
800013b8:	21450513          	addi	a0,a0,532 # 8000a5c8 <__clzsi2+0x4c>
        cube_triangles[i].p[1] = v[idx[i][1]];
800013bc:	22f12823          	sw	a5,560(sp)
800013c0:	22f12a23          	sw	a5,564(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013c4:	22f12c23          	sw	a5,568(sp)
800013c8:	22f12e23          	sw	a5,572(sp)
800013cc:	24f12023          	sw	a5,576(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013d0:	24f12423          	sw	a5,584(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800013d4:	24f12823          	sw	a5,592(sp)
800013d8:	24f12a23          	sw	a5,596(sp)
800013dc:	24f12c23          	sw	a5,600(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013e0:	24f12e23          	sw	a5,604(sp)
800013e4:	26f12023          	sw	a5,608(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013e8:	26f12423          	sw	a5,616(sp)
800013ec:	26f12823          	sw	a5,624(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800013f0:	26f12e23          	sw	a5,636(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013f4:	28f12623          	sw	a5,652(sp)
800013f8:	28f12a23          	sw	a5,660(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013fc:	2af12223          	sw	a5,676(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001400:	22012623          	sw	zero,556(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001404:	24012223          	sw	zero,580(sp)
80001408:	24012623          	sw	zero,588(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000140c:	26012223          	sw	zero,612(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001410:	26012623          	sw	zero,620(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001414:	26012a23          	sw	zero,628(sp)
80001418:	26012c23          	sw	zero,632(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000141c:	28012023          	sw	zero,640(sp)
80001420:	28012223          	sw	zero,644(sp)
80001424:	28012423          	sw	zero,648(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001428:	28012823          	sw	zero,656(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
8000142c:	28012c23          	sw	zero,664(sp)
80001430:	28012e23          	sw	zero,668(sp)
80001434:	2a012023          	sw	zero,672(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001438:	2a012423          	sw	zero,680(sp)
8000143c:	2a012623          	sw	zero,684(sp)
    tfp_printf("Starting Frame Buffer Test\r\n");
80001440:	4cc050ef          	jal	8000690c <tfp_printf>

    tfp_printf("Screen change triggered ON\r\n");
80001444:	00009517          	auipc	a0,0x9
80001448:	1a450513          	addi	a0,a0,420 # 8000a5e8 <__clzsi2+0x6c>
8000144c:	4c0050ef          	jal	8000690c <tfp_printf>

    tfp_printf("Screen filled with blue\r\n");
80001450:	00009517          	auipc	a0,0x9
80001454:	1b850513          	addi	a0,a0,440 # 8000a608 <__clzsi2+0x8c>
80001458:	4b4050ef          	jal	8000690c <tfp_printf>
8000145c:	0000a417          	auipc	s0,0xa
80001460:	9bc42403          	lw	s0,-1604(s0) # 8000ae18 <_etext+0x4>
80001464:	0000a497          	auipc	s1,0xa
80001468:	9b84a483          	lw	s1,-1608(s1) # 8000ae1c <_etext+0x8>
8000146c:	0000a917          	auipc	s2,0xa
80001470:	9b492903          	lw	s2,-1612(s2) # 8000ae20 <_etext+0xc>
80001474:	0000a997          	auipc	s3,0xa
80001478:	9b09a983          	lw	s3,-1616(s3) # 8000ae24 <_etext+0x10>
    matProj.m[3][3] = F(0.0f);

    matrix4f matRotZ = {0};
    matrix4f matRotX = {0};
    float frame_time = 0.0f;
    int frame_num = 0;
8000147c:	00000a13          	li	s4,0
    float frame_time = 0.0f;
80001480:	00000a93          	li	s5,0
80001484:	000a8b93          	mv	s7,s5
80001488:	000a0b13          	mv	s6,s4

    Vec3fixed vCamera = {0, 0, 0};
    while(1){
        // clear_screen(frame_buffer_to_use, (color){15,15,35});

        frame_time += 0.03f;
8000148c:	0000a797          	auipc	a5,0xa
80001490:	99c78793          	addi	a5,a5,-1636 # 8000ae28 <_etext+0x14>
80001494:	0007a583          	lw	a1,0(a5)
80001498:	000b8513          	mv	a0,s7
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
8000149c:	0000aa17          	auipc	s4,0xa
800014a0:	990a0a13          	addi	s4,s4,-1648 # 8000ae2c <_etext+0x18>
800014a4:	5bd070ef          	jal	80009260 <__addsf3>
800014a8:	000a2583          	lw	a1,0(s4)
800014ac:	00050d13          	mv	s10,a0
800014b0:	00090513          	mv	a0,s2
800014b4:	658080ef          	jal	80009b0c <__mulsf3>
800014b8:	000a2583          	lw	a1,0(s4)
800014bc:	00050913          	mv	s2,a0
800014c0:	00040513          	mv	a0,s0
800014c4:	648080ef          	jal	80009b0c <__mulsf3>
800014c8:	000a2583          	lw	a1,0(s4)
800014cc:	00050413          	mv	s0,a0
800014d0:	00098513          	mv	a0,s3
800014d4:	638080ef          	jal	80009b0c <__mulsf3>
800014d8:	5c1080ef          	jal	8000a298 <__fixsfsi>
800014dc:	800009b7          	lui	s3,0x80000
800014e0:	00050793          	mv	a5,a0
    int64_t t = (int64_t)a * (int64_t)b;
800014e4:	41f7d793          	srai	a5,a5,0x1f
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
800014e8:	00a12423          	sw	a0,8(sp)
800014ec:	0129c533          	xor	a0,s3,s2
    int64_t t = (int64_t)a * (int64_t)b;
800014f0:	00f12623          	sw	a5,12(sp)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
800014f4:	5a5080ef          	jal	8000a298 <__fixsfsi>
800014f8:	00050793          	mv	a5,a0
    int64_t t = (int64_t)a * (int64_t)b;
800014fc:	41f7d793          	srai	a5,a5,0x1f
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
80001500:	00a12a23          	sw	a0,20(sp)
80001504:	00090513          	mv	a0,s2
    int64_t t = (int64_t)a * (int64_t)b;
80001508:	00f12c23          	sw	a5,24(sp)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
8000150c:	58d080ef          	jal	8000a298 <__fixsfsi>
80001510:	000a2583          	lw	a1,0(s4)
80001514:	00050793          	mv	a5,a0
    int64_t t = (int64_t)a * (int64_t)b;
80001518:	41f7d793          	srai	a5,a5,0x1f
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
8000151c:	00a12e23          	sw	a0,28(sp)
80001520:	00048513          	mv	a0,s1
    int64_t t = (int64_t)a * (int64_t)b;
80001524:	00f12823          	sw	a5,16(sp)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
80001528:	5e4080ef          	jal	80009b0c <__mulsf3>
8000152c:	56d080ef          	jal	8000a298 <__fixsfsi>
80001530:	00050793          	mv	a5,a0
    int64_t t = (int64_t)a * (int64_t)b;
80001534:	41f7d793          	srai	a5,a5,0x1f
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
80001538:	00a12023          	sw	a0,0(sp)
8000153c:	0089c533          	xor	a0,s3,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001540:	00f12223          	sw	a5,4(sp)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
80001544:	555080ef          	jal	8000a298 <__fixsfsi>
80001548:	00050793          	mv	a5,a0
    int64_t t = (int64_t)a * (int64_t)b;
8000154c:	41f7d793          	srai	a5,a5,0x1f
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
80001550:	02a12023          	sw	a0,32(sp)
80001554:	00040513          	mv	a0,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001558:	02f12223          	sw	a5,36(sp)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
8000155c:	53d080ef          	jal	8000a298 <__fixsfsi>
    int64_t t = (int64_t)a * (int64_t)b;
80001560:	41f55793          	srai	a5,a0,0x1f
80001564:	10010a13          	addi	s4,sp,256
80001568:	02f12423          	sw	a5,40(sp)
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
8000156c:	07712a23          	sw	s7,116(sp)
80001570:	07612c23          	sw	s6,120(sp)
80001574:	07a12e23          	sw	s10,124(sp)
80001578:	02a12623          	sw	a0,44(sp)
8000157c:	0140006f          	j	80001590 <main+0x3f8>
        matRotX.m[1][2] = fixed_from_float(sinf(fTheta * 0.5f));
        matRotX.m[2][1] = fixed_from_float(-sinf(fTheta * 0.5f));
        matRotX.m[2][2] = fixed_from_float(cosf(fTheta * 0.5f));
        matRotX.m[3][3] = fixed_from_float(1.0f);
        // Render
        for (int i = 0; i < cube_size; i++) {
80001580:	024a0a13          	addi	s4,s4,36
80001584:	2b010793          	addi	a5,sp,688
80001588:	01479463          	bne	a5,s4,80001590 <main+0x3f8>
8000158c:	16c0106f          	j	800026f8 <main+0x1560>
    int64_t t = (int64_t)a * (int64_t)b;
80001590:	000a2a83          	lw	s5,0(s4)
80001594:	00812c83          	lw	s9,8(sp)
80001598:	00c12b83          	lw	s7,12(sp)
8000159c:	41fad993          	srai	s3,s5,0x1f
800015a0:	004a2403          	lw	s0,4(s4)
800015a4:	000c8613          	mv	a2,s9
800015a8:	000b8693          	mv	a3,s7
800015ac:	00098593          	mv	a1,s3
800015b0:	000a8513          	mv	a0,s5
800015b4:	689080ef          	jal	8000a43c <__muldi3>
800015b8:	01412603          	lw	a2,20(sp)
800015bc:	01812683          	lw	a3,24(sp)
800015c0:	41f45493          	srai	s1,s0,0x1f
    return (fixed32)(t >> FIXED_Q);
800015c4:	01059793          	slli	a5,a1,0x10
800015c8:	01055913          	srli	s2,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800015cc:	00048593          	mv	a1,s1
800015d0:	00040513          	mv	a0,s0
    return (fixed32)(t >> FIXED_Q);
800015d4:	0127e933          	or	s2,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
800015d8:	665080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800015dc:	01059593          	slli	a1,a1,0x10
800015e0:	01055513          	srli	a0,a0,0x10
800015e4:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800015e8:	00a90933          	add	s2,s2,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800015ec:	41f95713          	srai	a4,s2,0x1f
800015f0:	01095793          	srli	a5,s2,0x10
800015f4:	01071713          	slli	a4,a4,0x10
800015f8:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
800015fc:	41f75793          	srai	a5,a4,0x1f
80001600:	01079793          	slli	a5,a5,0x10
80001604:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001608:	01091913          	slli	s2,s2,0x10
    return (fixed32)(n / b);
8000160c:	01278933          	add	s2,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
80001610:	01012d83          	lw	s11,16(sp)
    return (fixed32)(n / b);
80001614:	00f937b3          	sltu	a5,s2,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001618:	01c12603          	lw	a2,28(sp)
    return (fixed32)(n / b);
8000161c:	00e787b3          	add	a5,a5,a4
80001620:	01095713          	srli	a4,s2,0x10
80001624:	00070813          	mv	a6,a4
80001628:	01079713          	slli	a4,a5,0x10
8000162c:	01076d33          	or	s10,a4,a6
    int64_t t = (int64_t)a * (int64_t)b;
80001630:	000d8693          	mv	a3,s11
    return (fixed32)(n / b);
80001634:	4107d793          	srai	a5,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001638:	000a8513          	mv	a0,s5
8000163c:	00098593          	mv	a1,s3
    return (fixed32)(n / b);
80001640:	03a12a23          	sw	s10,52(sp)
80001644:	02f12c23          	sw	a5,56(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001648:	5f5080ef          	jal	8000a43c <__muldi3>
8000164c:	00058713          	mv	a4,a1
80001650:	00050793          	mv	a5,a0
80001654:	000c8613          	mv	a2,s9
80001658:	000b8693          	mv	a3,s7
8000165c:	00040513          	mv	a0,s0
80001660:	00048593          	mv	a1,s1
    return (fixed32)(t >> FIXED_Q);
80001664:	0107d413          	srli	s0,a5,0x10
80001668:	01071793          	slli	a5,a4,0x10
8000166c:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001670:	5cd080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001674:	01059593          	slli	a1,a1,0x10
80001678:	01055513          	srli	a0,a0,0x10
8000167c:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001680:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001684:	41f45793          	srai	a5,s0,0x1f
80001688:	01045713          	srli	a4,s0,0x10
8000168c:	01079793          	slli	a5,a5,0x10
80001690:	00f767b3          	or	a5,a4,a5
    return (fixed32)(n / b);
80001694:	41f7d993          	srai	s3,a5,0x1f
80001698:	01099993          	slli	s3,s3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000169c:	00ca2b03          	lw	s6,12(s4)
    return (fixed32)(n / b);
800016a0:	0109d993          	srli	s3,s3,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
800016a4:	01041413          	slli	s0,s0,0x10
    return (fixed32)(n / b);
800016a8:	00898c33          	add	s8,s3,s0
800016ac:	013c39b3          	sltu	s3,s8,s3
    int64_t t = (int64_t)a * (int64_t)b;
800016b0:	41fb5a93          	srai	s5,s6,0x1f
    return (fixed32)(n / b);
800016b4:	00f989b3          	add	s3,s3,a5
    int64_t t = (int64_t)a * (int64_t)b;
800016b8:	010a2403          	lw	s0,16(s4)
    return (fixed32)(n / b);
800016bc:	01099793          	slli	a5,s3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800016c0:	000c8613          	mv	a2,s9
800016c4:	000b8693          	mv	a3,s7
800016c8:	000a8593          	mv	a1,s5
800016cc:	000b0513          	mv	a0,s6
    return (fixed32)(n / b);
800016d0:	010c5c13          	srli	s8,s8,0x10
800016d4:	0187ec33          	or	s8,a5,s8
    int64_t t = (int64_t)a * (int64_t)b;
800016d8:	565080ef          	jal	8000a43c <__muldi3>
800016dc:	01412603          	lw	a2,20(sp)
800016e0:	01812683          	lw	a3,24(sp)
800016e4:	41f45493          	srai	s1,s0,0x1f
    return (fixed32)(t >> FIXED_Q);
800016e8:	01059793          	slli	a5,a1,0x10
800016ec:	01055913          	srli	s2,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800016f0:	00048593          	mv	a1,s1
800016f4:	00040513          	mv	a0,s0
    return (fixed32)(t >> FIXED_Q);
800016f8:	0127e933          	or	s2,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
800016fc:	541080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001700:	01059593          	slli	a1,a1,0x10
80001704:	01055513          	srli	a0,a0,0x10
80001708:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
8000170c:	00a90933          	add	s2,s2,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001710:	41f95713          	srai	a4,s2,0x1f
80001714:	01095793          	srli	a5,s2,0x10
80001718:	01071713          	slli	a4,a4,0x10
8000171c:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
80001720:	41f75793          	srai	a5,a4,0x1f
80001724:	01079793          	slli	a5,a5,0x10
80001728:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
8000172c:	01091913          	slli	s2,s2,0x10
    return (fixed32)(n / b);
80001730:	01278933          	add	s2,a5,s2
80001734:	00f937b3          	sltu	a5,s2,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001738:	01c12603          	lw	a2,28(sp)
    return (fixed32)(n / b);
8000173c:	00e787b3          	add	a5,a5,a4
80001740:	01095813          	srli	a6,s2,0x10
80001744:	01079713          	slli	a4,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001748:	000d8693          	mv	a3,s11
    return (fixed32)(n / b);
8000174c:	4107d793          	srai	a5,a5,0x10
80001750:	01076db3          	or	s11,a4,a6
    int64_t t = (int64_t)a * (int64_t)b;
80001754:	000b0513          	mv	a0,s6
80001758:	000a8593          	mv	a1,s5
    return (fixed32)(n / b);
8000175c:	07b12023          	sw	s11,96(sp)
80001760:	06f12223          	sw	a5,100(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001764:	4d9080ef          	jal	8000a43c <__muldi3>
80001768:	00058713          	mv	a4,a1
8000176c:	00050793          	mv	a5,a0
80001770:	000c8613          	mv	a2,s9
80001774:	000b8693          	mv	a3,s7
80001778:	00040513          	mv	a0,s0
8000177c:	00048593          	mv	a1,s1
    return (fixed32)(t >> FIXED_Q);
80001780:	0107d413          	srli	s0,a5,0x10
80001784:	01071793          	slli	a5,a4,0x10
80001788:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
8000178c:	4b1080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001790:	01059593          	slli	a1,a1,0x10
80001794:	01055513          	srli	a0,a0,0x10
80001798:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
8000179c:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800017a0:	41f45793          	srai	a5,s0,0x1f
800017a4:	01045713          	srli	a4,s0,0x10
800017a8:	01079793          	slli	a5,a5,0x10
800017ac:	00f767b3          	or	a5,a4,a5
    return (fixed32)(n / b);
800017b0:	41f7da93          	srai	s5,a5,0x1f
800017b4:	010a9a93          	slli	s5,s5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800017b8:	000b8493          	mv	s1,s7
    return (fixed32)(n / b);
800017bc:	010ada93          	srli	s5,s5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800017c0:	018a2b83          	lw	s7,24(s4)
    int64_t n = ((int64_t)a) << FIXED_Q;
800017c4:	01041413          	slli	s0,s0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800017c8:	000c8913          	mv	s2,s9
    return (fixed32)(n / b);
800017cc:	008a8cb3          	add	s9,s5,s0
800017d0:	015cbab3          	sltu	s5,s9,s5
    int64_t t = (int64_t)a * (int64_t)b;
800017d4:	41fbdb13          	srai	s6,s7,0x1f
    return (fixed32)(n / b);
800017d8:	00fa8ab3          	add	s5,s5,a5
    int64_t t = (int64_t)a * (int64_t)b;
800017dc:	01ca2403          	lw	s0,28(s4)
    return (fixed32)(n / b);
800017e0:	010a9793          	slli	a5,s5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800017e4:	00090613          	mv	a2,s2
800017e8:	00048693          	mv	a3,s1
800017ec:	000b0593          	mv	a1,s6
800017f0:	000b8513          	mv	a0,s7
    return (fixed32)(n / b);
800017f4:	010cdc93          	srli	s9,s9,0x10
800017f8:	0197ecb3          	or	s9,a5,s9
    int64_t t = (int64_t)a * (int64_t)b;
800017fc:	441080ef          	jal	8000a43c <__muldi3>
80001800:	01412603          	lw	a2,20(sp)
80001804:	01812683          	lw	a3,24(sp)
80001808:	41f45493          	srai	s1,s0,0x1f
    return (fixed32)(t >> FIXED_Q);
8000180c:	01059793          	slli	a5,a1,0x10
80001810:	01055913          	srli	s2,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001814:	00048593          	mv	a1,s1
80001818:	00040513          	mv	a0,s0
    return (fixed32)(t >> FIXED_Q);
8000181c:	0127e933          	or	s2,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
80001820:	41d080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001824:	01059593          	slli	a1,a1,0x10
80001828:	01055513          	srli	a0,a0,0x10
8000182c:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001830:	00a90933          	add	s2,s2,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001834:	41f95713          	srai	a4,s2,0x1f
80001838:	01095793          	srli	a5,s2,0x10
8000183c:	01071713          	slli	a4,a4,0x10
80001840:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
80001844:	41f75793          	srai	a5,a4,0x1f
80001848:	01079793          	slli	a5,a5,0x10
8000184c:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001850:	01091913          	slli	s2,s2,0x10
    return (fixed32)(n / b);
80001854:	01278933          	add	s2,a5,s2
80001858:	00f937b3          	sltu	a5,s2,a5
8000185c:	00e787b3          	add	a5,a5,a4
    int64_t t = (int64_t)a * (int64_t)b;
80001860:	01c12603          	lw	a2,28(sp)
80001864:	01012683          	lw	a3,16(sp)
    return (fixed32)(n / b);
80001868:	01095713          	srli	a4,s2,0x10
8000186c:	00070813          	mv	a6,a4
80001870:	01079713          	slli	a4,a5,0x10
80001874:	01076733          	or	a4,a4,a6
    int64_t t = (int64_t)a * (int64_t)b;
80001878:	000b8513          	mv	a0,s7
    return (fixed32)(n / b);
8000187c:	4107d813          	srai	a6,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001880:	000b0593          	mv	a1,s6
    return (fixed32)(n / b);
80001884:	07012423          	sw	a6,104(sp)
80001888:	02e12e23          	sw	a4,60(sp)
    int64_t t = (int64_t)a * (int64_t)b;
8000188c:	3b1080ef          	jal	8000a43c <__muldi3>
80001890:	00812603          	lw	a2,8(sp)
80001894:	00c12683          	lw	a3,12(sp)
80001898:	00058713          	mv	a4,a1
8000189c:	00050793          	mv	a5,a0
800018a0:	00048593          	mv	a1,s1
800018a4:	00040513          	mv	a0,s0
    return (fixed32)(t >> FIXED_Q);
800018a8:	0107d413          	srli	s0,a5,0x10
800018ac:	01071793          	slli	a5,a4,0x10
800018b0:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
800018b4:	389080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800018b8:	01059593          	slli	a1,a1,0x10
800018bc:	01055513          	srli	a0,a0,0x10
800018c0:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800018c4:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800018c8:	41f45793          	srai	a5,s0,0x1f
800018cc:	01045713          	srli	a4,s0,0x10
800018d0:	01079793          	slli	a5,a5,0x10
800018d4:	00f767b3          	or	a5,a4,a5
    return (fixed32)(n / b);
800018d8:	41f7db13          	srai	s6,a5,0x1f
800018dc:	010b1b13          	slli	s6,s6,0x10
800018e0:	010b5b13          	srli	s6,s6,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
800018e4:	01041413          	slli	s0,s0,0x10
    return (fixed32)(n / b);
800018e8:	008b0bb3          	add	s7,s6,s0
    int64_t t = (int64_t)a * (int64_t)b;
800018ec:	00012603          	lw	a2,0(sp)
800018f0:	00412683          	lw	a3,4(sp)
    return (fixed32)(n / b);
800018f4:	016bbb33          	sltu	s6,s7,s6
800018f8:	4109d993          	srai	s3,s3,0x10
800018fc:	00fb0b33          	add	s6,s6,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001900:	008a2483          	lw	s1,8(s4)
    return (fixed32)(n / b);
80001904:	010b1793          	slli	a5,s6,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001908:	000c0513          	mv	a0,s8
8000190c:	00098593          	mv	a1,s3
    return (fixed32)(n / b);
80001910:	010bdb93          	srli	s7,s7,0x10
80001914:	0177ebb3          	or	s7,a5,s7
    int64_t t = (int64_t)a * (int64_t)b;
80001918:	325080ef          	jal	8000a43c <__muldi3>
8000191c:	02012603          	lw	a2,32(sp)
80001920:	02412683          	lw	a3,36(sp)
80001924:	41f4d913          	srai	s2,s1,0x1f
    return (fixed32)(t >> FIXED_Q);
80001928:	01059793          	slli	a5,a1,0x10
8000192c:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001930:	00090593          	mv	a1,s2
80001934:	00048513          	mv	a0,s1
    return (fixed32)(t >> FIXED_Q);
80001938:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
8000193c:	301080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001940:	01059593          	slli	a1,a1,0x10
80001944:	01055513          	srli	a0,a0,0x10
80001948:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
8000194c:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001950:	41f45713          	srai	a4,s0,0x1f
80001954:	01045793          	srli	a5,s0,0x10
80001958:	01071713          	slli	a4,a4,0x10
8000195c:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
80001960:	41f75793          	srai	a5,a4,0x1f
80001964:	01079793          	slli	a5,a5,0x10
80001968:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
8000196c:	01041413          	slli	s0,s0,0x10
    return (fixed32)(n / b);
80001970:	00878433          	add	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001974:	02c12603          	lw	a2,44(sp)
80001978:	02812683          	lw	a3,40(sp)
    return (fixed32)(n / b);
8000197c:	00f437b3          	sltu	a5,s0,a5
80001980:	00e787b3          	add	a5,a5,a4
80001984:	4107d813          	srai	a6,a5,0x10
80001988:	01079713          	slli	a4,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000198c:	000c0513          	mv	a0,s8
80001990:	00098593          	mv	a1,s3
    return (fixed32)(n / b);
80001994:	01045413          	srli	s0,s0,0x10
80001998:	05012023          	sw	a6,64(sp)
8000199c:	00876433          	or	s0,a4,s0
    int64_t t = (int64_t)a * (int64_t)b;
800019a0:	29d080ef          	jal	8000a43c <__muldi3>
800019a4:	00058713          	mv	a4,a1
800019a8:	00012983          	lw	s3,0(sp)
800019ac:	00090593          	mv	a1,s2
800019b0:	00412903          	lw	s2,4(sp)
800019b4:	00050793          	mv	a5,a0
800019b8:	00098613          	mv	a2,s3
800019bc:	00090693          	mv	a3,s2
800019c0:	00048513          	mv	a0,s1
    return (fixed32)(t >> FIXED_Q);
800019c4:	0107d493          	srli	s1,a5,0x10
800019c8:	01071793          	slli	a5,a4,0x10
800019cc:	0097e4b3          	or	s1,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
800019d0:	26d080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800019d4:	01059593          	slli	a1,a1,0x10
800019d8:	01055513          	srli	a0,a0,0x10
800019dc:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800019e0:	00a484b3          	add	s1,s1,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800019e4:	41f4d713          	srai	a4,s1,0x1f
800019e8:	0104d793          	srli	a5,s1,0x10
800019ec:	01071713          	slli	a4,a4,0x10
800019f0:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
800019f4:	41f75793          	srai	a5,a4,0x1f
800019f8:	01079793          	slli	a5,a5,0x10
800019fc:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001a00:	01049c13          	slli	s8,s1,0x10
    return (fixed32)(n / b);
80001a04:	01878c33          	add	s8,a5,s8
80001a08:	00fc37b3          	sltu	a5,s8,a5
80001a0c:	00e787b3          	add	a5,a5,a4
80001a10:	410ada93          	srai	s5,s5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001a14:	014a2483          	lw	s1,20(s4)
    return (fixed32)(n / b);
80001a18:	01079793          	slli	a5,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001a1c:	00098613          	mv	a2,s3
80001a20:	00090693          	mv	a3,s2
80001a24:	000c8513          	mv	a0,s9
80001a28:	000a8593          	mv	a1,s5
    return (fixed32)(n / b);
80001a2c:	010c5c13          	srli	s8,s8,0x10
80001a30:	0187ec33          	or	s8,a5,s8
    int64_t t = (int64_t)a * (int64_t)b;
80001a34:	209080ef          	jal	8000a43c <__muldi3>
80001a38:	02012603          	lw	a2,32(sp)
80001a3c:	02412683          	lw	a3,36(sp)
80001a40:	41f4d993          	srai	s3,s1,0x1f
    return (fixed32)(t >> FIXED_Q);
80001a44:	01059793          	slli	a5,a1,0x10
80001a48:	01055913          	srli	s2,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001a4c:	00098593          	mv	a1,s3
80001a50:	00048513          	mv	a0,s1
    return (fixed32)(t >> FIXED_Q);
80001a54:	0127e933          	or	s2,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
80001a58:	1e5080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001a5c:	01059593          	slli	a1,a1,0x10
80001a60:	01055513          	srli	a0,a0,0x10
80001a64:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001a68:	00a90933          	add	s2,s2,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001a6c:	41f95713          	srai	a4,s2,0x1f
80001a70:	01095793          	srli	a5,s2,0x10
80001a74:	01071713          	slli	a4,a4,0x10
80001a78:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
80001a7c:	41f75793          	srai	a5,a4,0x1f
80001a80:	01079793          	slli	a5,a5,0x10
80001a84:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001a88:	01091913          	slli	s2,s2,0x10
    return (fixed32)(n / b);
80001a8c:	01278933          	add	s2,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
80001a90:	02c12603          	lw	a2,44(sp)
80001a94:	02812683          	lw	a3,40(sp)
    return (fixed32)(n / b);
80001a98:	00f937b3          	sltu	a5,s2,a5
80001a9c:	00e787b3          	add	a5,a5,a4
80001aa0:	4107d813          	srai	a6,a5,0x10
80001aa4:	01079713          	slli	a4,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001aa8:	000c8513          	mv	a0,s9
80001aac:	000a8593          	mv	a1,s5
    return (fixed32)(n / b);
80001ab0:	01095913          	srli	s2,s2,0x10
80001ab4:	07012623          	sw	a6,108(sp)
80001ab8:	01276933          	or	s2,a4,s2
    int64_t t = (int64_t)a * (int64_t)b;
80001abc:	181080ef          	jal	8000a43c <__muldi3>
80001ac0:	00012c83          	lw	s9,0(sp)
80001ac4:	00412a83          	lw	s5,4(sp)
80001ac8:	00058713          	mv	a4,a1
80001acc:	00050793          	mv	a5,a0
80001ad0:	000c8613          	mv	a2,s9
80001ad4:	000a8693          	mv	a3,s5
80001ad8:	00048513          	mv	a0,s1
80001adc:	00098593          	mv	a1,s3
    return (fixed32)(t >> FIXED_Q);
80001ae0:	0107d493          	srli	s1,a5,0x10
80001ae4:	01071793          	slli	a5,a4,0x10
80001ae8:	0097e4b3          	or	s1,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
80001aec:	151080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001af0:	01059593          	slli	a1,a1,0x10
80001af4:	01055513          	srli	a0,a0,0x10
80001af8:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001afc:	00a484b3          	add	s1,s1,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001b00:	41f4d713          	srai	a4,s1,0x1f
80001b04:	0104d793          	srli	a5,s1,0x10
80001b08:	01071713          	slli	a4,a4,0x10
80001b0c:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
80001b10:	41f75793          	srai	a5,a4,0x1f
80001b14:	01079793          	slli	a5,a5,0x10
80001b18:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001b1c:	01049493          	slli	s1,s1,0x10
    return (fixed32)(n / b);
80001b20:	009784b3          	add	s1,a5,s1
80001b24:	00f4b7b3          	sltu	a5,s1,a5
80001b28:	00e787b3          	add	a5,a5,a4
80001b2c:	410b5b13          	srai	s6,s6,0x10
80001b30:	01079793          	slli	a5,a5,0x10
80001b34:	0104d493          	srli	s1,s1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001b38:	020a2983          	lw	s3,32(s4)
80001b3c:	000c8613          	mv	a2,s9
80001b40:	000a8693          	mv	a3,s5
    return (fixed32)(n / b);
80001b44:	0097ecb3          	or	s9,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
80001b48:	000b8513          	mv	a0,s7
80001b4c:	000b0593          	mv	a1,s6
    return (fixed32)(n / b);
80001b50:	05912e23          	sw	s9,92(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001b54:	0e9080ef          	jal	8000a43c <__muldi3>
80001b58:	02012603          	lw	a2,32(sp)
80001b5c:	02412683          	lw	a3,36(sp)
80001b60:	41f9da93          	srai	s5,s3,0x1f
    return (fixed32)(t >> FIXED_Q);
80001b64:	01059793          	slli	a5,a1,0x10
80001b68:	01055493          	srli	s1,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001b6c:	000a8593          	mv	a1,s5
80001b70:	00098513          	mv	a0,s3
    return (fixed32)(t >> FIXED_Q);
80001b74:	0097e4b3          	or	s1,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
80001b78:	0c5080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001b7c:	01059593          	slli	a1,a1,0x10
80001b80:	01055513          	srli	a0,a0,0x10
80001b84:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001b88:	00a484b3          	add	s1,s1,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001b8c:	41f4d713          	srai	a4,s1,0x1f
80001b90:	0104d793          	srli	a5,s1,0x10
80001b94:	01071713          	slli	a4,a4,0x10
80001b98:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
80001b9c:	41f75793          	srai	a5,a4,0x1f
80001ba0:	01079793          	slli	a5,a5,0x10
80001ba4:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001ba8:	01049493          	slli	s1,s1,0x10
    return (fixed32)(n / b);
80001bac:	009784b3          	add	s1,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
80001bb0:	02c12603          	lw	a2,44(sp)
80001bb4:	02812683          	lw	a3,40(sp)
    return (fixed32)(n / b);
80001bb8:	00f4b7b3          	sltu	a5,s1,a5
80001bbc:	00e787b3          	add	a5,a5,a4
80001bc0:	4107d813          	srai	a6,a5,0x10
80001bc4:	01079713          	slli	a4,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001bc8:	000b8513          	mv	a0,s7
80001bcc:	000b0593          	mv	a1,s6
    return (fixed32)(n / b);
80001bd0:	0104d493          	srli	s1,s1,0x10
80001bd4:	009764b3          	or	s1,a4,s1
80001bd8:	07012823          	sw	a6,112(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001bdc:	061080ef          	jal	8000a43c <__muldi3>
80001be0:	00012603          	lw	a2,0(sp)
80001be4:	00412683          	lw	a3,4(sp)
80001be8:	00058713          	mv	a4,a1
80001bec:	00050793          	mv	a5,a0
80001bf0:	000a8593          	mv	a1,s5
80001bf4:	00098513          	mv	a0,s3
    return (fixed32)(t >> FIXED_Q);
80001bf8:	0107d993          	srli	s3,a5,0x10
80001bfc:	01071793          	slli	a5,a4,0x10
80001c00:	0137e9b3          	or	s3,a5,s3
    int64_t t = (int64_t)a * (int64_t)b;
80001c04:	039080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001c08:	01059593          	slli	a1,a1,0x10
80001c0c:	01055513          	srli	a0,a0,0x10
80001c10:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001c14:	00a989b3          	add	s3,s3,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001c18:	41f9d713          	srai	a4,s3,0x1f
80001c1c:	0109d793          	srli	a5,s3,0x10
80001c20:	01071713          	slli	a4,a4,0x10
80001c24:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
80001c28:	41f75793          	srai	a5,a4,0x1f
80001c2c:	01079793          	slli	a5,a5,0x10
80001c30:	0107d793          	srli	a5,a5,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001c34:	01099993          	slli	s3,s3,0x10
    return (fixed32)(n / b);
80001c38:	013789b3          	add	s3,a5,s3
80001c3c:	00f9b7b3          	sltu	a5,s3,a5
80001c40:	00e787b3          	add	a5,a5,a4
80001c44:	01079793          	slli	a5,a5,0x10
80001c48:	0109d993          	srli	s3,s3,0x10
80001c4c:	0137e6b3          	or	a3,a5,s3
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001c50:	03c12783          	lw	a5,60(sp)
80001c54:	40890833          	sub	a6,s2,s0
80001c58:	41868e33          	sub	t3,a3,s8
    int64_t t = (int64_t)a * (int64_t)b;
80001c5c:	41f85893          	srai	a7,a6,0x1f
80001c60:	41fe5313          	srai	t1,t3,0x1f
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001c64:	41a789b3          	sub	s3,a5,s10
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001c68:	000307b7          	lui	a5,0x30
    int64_t t = (int64_t)a * (int64_t)b;
80001c6c:	00088593          	mv	a1,a7
80001c70:	00080513          	mv	a0,a6
80001c74:	000e0613          	mv	a2,t3
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001c78:	00fc07b3          	add	a5,s8,a5
    return (fixed32)(n / b);
80001c7c:	04d12c23          	sw	a3,88(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001c80:	00030693          	mv	a3,t1
80001c84:	05112623          	sw	a7,76(sp)
80001c88:	05012423          	sw	a6,72(sp)
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001c8c:	418c8bb3          	sub	s7,s9,s8
    int64_t t = (int64_t)a * (int64_t)b;
80001c90:	04612a23          	sw	t1,84(sp)
80001c94:	05c12823          	sw	t3,80(sp)
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001c98:	40848ab3          	sub	s5,s1,s0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001c9c:	02f12823          	sw	a5,48(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001ca0:	79c080ef          	jal	8000a43c <__muldi3>
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001ca4:	41ad8b33          	sub	s6,s11,s10
    return (fixed32)(t >> FIXED_Q);
80001ca8:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001cac:	41fbdd93          	srai	s11,s7,0x1f
80001cb0:	41fadc93          	srai	s9,s5,0x1f
    return (fixed32)(t >> FIXED_Q);
80001cb4:	01055713          	srli	a4,a0,0x10
80001cb8:	00e7e733          	or	a4,a5,a4
    int64_t t = (int64_t)a * (int64_t)b;
80001cbc:	000a8613          	mv	a2,s5
80001cc0:	000c8693          	mv	a3,s9
80001cc4:	000b8513          	mv	a0,s7
80001cc8:	000d8593          	mv	a1,s11
    return (fixed32)(t >> FIXED_Q);
80001ccc:	04e12223          	sw	a4,68(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001cd0:	76c080ef          	jal	8000a43c <__muldi3>
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001cd4:	04412703          	lw	a4,68(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001cd8:	41f9dc13          	srai	s8,s3,0x1f
    return (fixed32)(t >> FIXED_Q);
80001cdc:	01055793          	srli	a5,a0,0x10
80001ce0:	01059593          	slli	a1,a1,0x10
80001ce4:	00f5e7b3          	or	a5,a1,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001ce8:	00098613          	mv	a2,s3
80001cec:	000c0693          	mv	a3,s8
80001cf0:	000b8513          	mv	a0,s7
80001cf4:	000d8593          	mv	a1,s11
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001cf8:	40f70bb3          	sub	s7,a4,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001cfc:	740080ef          	jal	8000a43c <__muldi3>
80001d00:	05012e03          	lw	t3,80(sp)
80001d04:	05412303          	lw	t1,84(sp)
80001d08:	00050713          	mv	a4,a0
80001d0c:	00058793          	mv	a5,a1
80001d10:	41fb5d13          	srai	s10,s6,0x1f
    return (fixed32)(t >> FIXED_Q);
80001d14:	01079793          	slli	a5,a5,0x10
80001d18:	01075713          	srli	a4,a4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001d1c:	000e0513          	mv	a0,t3
80001d20:	00030593          	mv	a1,t1
    return (fixed32)(t >> FIXED_Q);
80001d24:	00e7e733          	or	a4,a5,a4
    int64_t t = (int64_t)a * (int64_t)b;
80001d28:	000b0613          	mv	a2,s6
80001d2c:	000d0693          	mv	a3,s10
    return (fixed32)(t >> FIXED_Q);
80001d30:	04e12223          	sw	a4,68(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001d34:	708080ef          	jal	8000a43c <__muldi3>
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001d38:	04412703          	lw	a4,68(sp)
    return (fixed32)(t >> FIXED_Q);
80001d3c:	01055793          	srli	a5,a0,0x10
80001d40:	01059593          	slli	a1,a1,0x10
80001d44:	00f5e7b3          	or	a5,a1,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001d48:	000b0613          	mv	a2,s6
80001d4c:	000d0693          	mv	a3,s10
80001d50:	000a8513          	mv	a0,s5
80001d54:	000c8593          	mv	a1,s9
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001d58:	40f70ab3          	sub	s5,a4,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001d5c:	6e0080ef          	jal	8000a43c <__muldi3>
80001d60:	04812803          	lw	a6,72(sp)
80001d64:	04c12883          	lw	a7,76(sp)
80001d68:	00050b13          	mv	s6,a0
80001d6c:	00058793          	mv	a5,a1
80001d70:	00080513          	mv	a0,a6
80001d74:	00088593          	mv	a1,a7
    return (fixed32)(t >> FIXED_Q);
80001d78:	01079793          	slli	a5,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001d7c:	00098613          	mv	a2,s3
80001d80:	000c0693          	mv	a3,s8
    return (fixed32)(t >> FIXED_Q);
80001d84:	010b5b13          	srli	s6,s6,0x10
80001d88:	0167eb33          	or	s6,a5,s6
    int64_t t = (int64_t)a * (int64_t)b;
80001d8c:	6b0080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001d90:	01059593          	slli	a1,a1,0x10
80001d94:	01055513          	srli	a0,a0,0x10
80001d98:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80001d9c:	41fbdd93          	srai	s11,s7,0x1f
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001da0:	40ab0b33          	sub	s6,s6,a0
    int64_t t = (int64_t)a * (int64_t)b;
80001da4:	000b8613          	mv	a2,s7
80001da8:	000d8693          	mv	a3,s11
80001dac:	000b8513          	mv	a0,s7
80001db0:	000d8593          	mv	a1,s11
80001db4:	688080ef          	jal	8000a43c <__muldi3>
80001db8:	41fadd13          	srai	s10,s5,0x1f
    return (fixed32)(t >> FIXED_Q);
80001dbc:	01059793          	slli	a5,a1,0x10
80001dc0:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001dc4:	000a8613          	mv	a2,s5
80001dc8:	000d0693          	mv	a3,s10
80001dcc:	000a8513          	mv	a0,s5
80001dd0:	000d0593          	mv	a1,s10
    return (fixed32)(t >> FIXED_Q);
80001dd4:	0137e9b3          	or	s3,a5,s3
    int64_t t = (int64_t)a * (int64_t)b;
80001dd8:	664080ef          	jal	8000a43c <__muldi3>
80001ddc:	41fb5c13          	srai	s8,s6,0x1f
    return (fixed32)(t >> FIXED_Q);
80001de0:	01055793          	srli	a5,a0,0x10
80001de4:	01059593          	slli	a1,a1,0x10
80001de8:	00f5e7b3          	or	a5,a1,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001dec:	000b0613          	mv	a2,s6
80001df0:	000c0693          	mv	a3,s8
80001df4:	000b0513          	mv	a0,s6
80001df8:	000c0593          	mv	a1,s8
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001dfc:	00f989b3          	add	s3,s3,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001e00:	63c080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001e04:	01055513          	srli	a0,a0,0x10
80001e08:	01059593          	slli	a1,a1,0x10
80001e0c:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001e10:	00a987b3          	add	a5,s3,a0
    if (x <= 0) return 0;
80001e14:	1af05ae3          	blez	a5,800027c8 <main+0x1630>
        int64_t t = (xn << FIXED_Q) / g;
80001e18:	4107dc93          	srai	s9,a5,0x10
80001e1c:	01079993          	slli	s3,a5,0x10
        g = (g + t) >> 1;
80001e20:	00fc9693          	slli	a3,s9,0xf
80001e24:	0119d713          	srli	a4,s3,0x11
80001e28:	00e6e733          	or	a4,a3,a4
80001e2c:	000086b7          	lui	a3,0x8
80001e30:	00d70633          	add	a2,a4,a3
80001e34:	00e63733          	sltu	a4,a2,a4
80001e38:	41f7d793          	srai	a5,a5,0x1f
80001e3c:	00f706b3          	add	a3,a4,a5
        int64_t t = (xn << FIXED_Q) / g;
80001e40:	00098513          	mv	a0,s3
80001e44:	000c8593          	mv	a1,s9
80001e48:	04d12423          	sw	a3,72(sp)
80001e4c:	04c12223          	sw	a2,68(sp)
80001e50:	368060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001e54:	04412603          	lw	a2,68(sp)
80001e58:	04812683          	lw	a3,72(sp)
80001e5c:	00c50633          	add	a2,a0,a2
80001e60:	00d585b3          	add	a1,a1,a3
80001e64:	00a636b3          	sltu	a3,a2,a0
80001e68:	00b686b3          	add	a3,a3,a1
80001e6c:	01f69793          	slli	a5,a3,0x1f
80001e70:	00165613          	srli	a2,a2,0x1
80001e74:	00c7e633          	or	a2,a5,a2
80001e78:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001e7c:	00098513          	mv	a0,s3
80001e80:	000c8593          	mv	a1,s9
80001e84:	04c12423          	sw	a2,72(sp)
80001e88:	04d12223          	sw	a3,68(sp)
80001e8c:	32c060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001e90:	04812603          	lw	a2,72(sp)
80001e94:	04412683          	lw	a3,68(sp)
80001e98:	00c50633          	add	a2,a0,a2
80001e9c:	00d585b3          	add	a1,a1,a3
80001ea0:	00a636b3          	sltu	a3,a2,a0
80001ea4:	00b686b3          	add	a3,a3,a1
80001ea8:	01f69793          	slli	a5,a3,0x1f
80001eac:	00165613          	srli	a2,a2,0x1
80001eb0:	00c7e633          	or	a2,a5,a2
80001eb4:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001eb8:	00098513          	mv	a0,s3
80001ebc:	000c8593          	mv	a1,s9
80001ec0:	04c12423          	sw	a2,72(sp)
80001ec4:	04d12223          	sw	a3,68(sp)
80001ec8:	2f0060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001ecc:	04812603          	lw	a2,72(sp)
80001ed0:	04412683          	lw	a3,68(sp)
80001ed4:	00c50633          	add	a2,a0,a2
80001ed8:	00d585b3          	add	a1,a1,a3
80001edc:	00a636b3          	sltu	a3,a2,a0
80001ee0:	00b686b3          	add	a3,a3,a1
80001ee4:	01f69793          	slli	a5,a3,0x1f
80001ee8:	00165613          	srli	a2,a2,0x1
80001eec:	00c7e633          	or	a2,a5,a2
80001ef0:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001ef4:	00098513          	mv	a0,s3
80001ef8:	000c8593          	mv	a1,s9
80001efc:	04c12423          	sw	a2,72(sp)
80001f00:	04d12223          	sw	a3,68(sp)
80001f04:	2b4060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001f08:	04812603          	lw	a2,72(sp)
80001f0c:	04412683          	lw	a3,68(sp)
80001f10:	00c50633          	add	a2,a0,a2
80001f14:	00d585b3          	add	a1,a1,a3
80001f18:	00a636b3          	sltu	a3,a2,a0
80001f1c:	00b686b3          	add	a3,a3,a1
80001f20:	01f69793          	slli	a5,a3,0x1f
80001f24:	00165613          	srli	a2,a2,0x1
80001f28:	00c7e633          	or	a2,a5,a2
80001f2c:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001f30:	00098513          	mv	a0,s3
80001f34:	000c8593          	mv	a1,s9
80001f38:	04c12423          	sw	a2,72(sp)
80001f3c:	04d12223          	sw	a3,68(sp)
80001f40:	278060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001f44:	04812603          	lw	a2,72(sp)
80001f48:	04412683          	lw	a3,68(sp)
80001f4c:	00c50633          	add	a2,a0,a2
80001f50:	00d585b3          	add	a1,a1,a3
80001f54:	00a636b3          	sltu	a3,a2,a0
80001f58:	00b686b3          	add	a3,a3,a1
80001f5c:	01f69793          	slli	a5,a3,0x1f
80001f60:	00165613          	srli	a2,a2,0x1
80001f64:	00c7e633          	or	a2,a5,a2
80001f68:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001f6c:	00098513          	mv	a0,s3
80001f70:	000c8593          	mv	a1,s9
80001f74:	04c12423          	sw	a2,72(sp)
80001f78:	04d12223          	sw	a3,68(sp)
80001f7c:	23c060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001f80:	04812603          	lw	a2,72(sp)
80001f84:	04412683          	lw	a3,68(sp)
80001f88:	00c50633          	add	a2,a0,a2
80001f8c:	00d585b3          	add	a1,a1,a3
80001f90:	00a636b3          	sltu	a3,a2,a0
80001f94:	00b686b3          	add	a3,a3,a1
80001f98:	01f69793          	slli	a5,a3,0x1f
80001f9c:	00165613          	srli	a2,a2,0x1
80001fa0:	00c7e633          	or	a2,a5,a2
80001fa4:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001fa8:	00098513          	mv	a0,s3
80001fac:	000c8593          	mv	a1,s9
80001fb0:	04c12423          	sw	a2,72(sp)
80001fb4:	04d12223          	sw	a3,68(sp)
80001fb8:	200060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001fbc:	04812603          	lw	a2,72(sp)
80001fc0:	04412683          	lw	a3,68(sp)
80001fc4:	00c50633          	add	a2,a0,a2
80001fc8:	00d585b3          	add	a1,a1,a3
80001fcc:	00a636b3          	sltu	a3,a2,a0
80001fd0:	00b686b3          	add	a3,a3,a1
80001fd4:	01f69793          	slli	a5,a3,0x1f
80001fd8:	00165613          	srli	a2,a2,0x1
80001fdc:	00c7e633          	or	a2,a5,a2
80001fe0:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001fe4:	00098513          	mv	a0,s3
80001fe8:	000c8593          	mv	a1,s9
80001fec:	04c12423          	sw	a2,72(sp)
80001ff0:	04d12223          	sw	a3,68(sp)
80001ff4:	1c4060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80001ff8:	04812603          	lw	a2,72(sp)
80001ffc:	04412683          	lw	a3,68(sp)
80002000:	00c50633          	add	a2,a0,a2
80002004:	00d585b3          	add	a1,a1,a3
80002008:	00a636b3          	sltu	a3,a2,a0
8000200c:	00b686b3          	add	a3,a3,a1
80002010:	01f69793          	slli	a5,a3,0x1f
80002014:	00165613          	srli	a2,a2,0x1
80002018:	00c7e633          	or	a2,a5,a2
8000201c:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80002020:	00098513          	mv	a0,s3
80002024:	000c8593          	mv	a1,s9
80002028:	04c12423          	sw	a2,72(sp)
8000202c:	04d12223          	sw	a3,68(sp)
80002030:	188060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80002034:	04812603          	lw	a2,72(sp)
80002038:	04412683          	lw	a3,68(sp)
8000203c:	00c50633          	add	a2,a0,a2
80002040:	00d585b3          	add	a1,a1,a3
80002044:	00a636b3          	sltu	a3,a2,a0
80002048:	00b686b3          	add	a3,a3,a1
8000204c:	01f69793          	slli	a5,a3,0x1f
80002050:	00165613          	srli	a2,a2,0x1
80002054:	00c7e633          	or	a2,a5,a2
80002058:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
8000205c:	00098513          	mv	a0,s3
80002060:	000c8593          	mv	a1,s9
80002064:	04c12423          	sw	a2,72(sp)
80002068:	04d12223          	sw	a3,68(sp)
8000206c:	14c060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80002070:	04812603          	lw	a2,72(sp)
80002074:	04412683          	lw	a3,68(sp)
80002078:	00c50633          	add	a2,a0,a2
8000207c:	00d585b3          	add	a1,a1,a3
80002080:	00a636b3          	sltu	a3,a2,a0
80002084:	00b686b3          	add	a3,a3,a1
80002088:	01f69793          	slli	a5,a3,0x1f
8000208c:	00165613          	srli	a2,a2,0x1
80002090:	00c7e633          	or	a2,a5,a2
80002094:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80002098:	00098513          	mv	a0,s3
8000209c:	000c8593          	mv	a1,s9
800020a0:	04c12423          	sw	a2,72(sp)
800020a4:	04d12223          	sw	a3,68(sp)
800020a8:	110060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
800020ac:	04812603          	lw	a2,72(sp)
800020b0:	04412683          	lw	a3,68(sp)
800020b4:	00c50633          	add	a2,a0,a2
800020b8:	00d585b3          	add	a1,a1,a3
800020bc:	00a636b3          	sltu	a3,a2,a0
800020c0:	00b686b3          	add	a3,a3,a1
800020c4:	01f69793          	slli	a5,a3,0x1f
800020c8:	00165613          	srli	a2,a2,0x1
800020cc:	00c7e633          	or	a2,a5,a2
800020d0:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
800020d4:	00098513          	mv	a0,s3
800020d8:	000c8593          	mv	a1,s9
800020dc:	04c12423          	sw	a2,72(sp)
800020e0:	04d12223          	sw	a3,68(sp)
800020e4:	0d4060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
800020e8:	04812603          	lw	a2,72(sp)
800020ec:	04412683          	lw	a3,68(sp)
800020f0:	00c50633          	add	a2,a0,a2
800020f4:	00d585b3          	add	a1,a1,a3
800020f8:	00a636b3          	sltu	a3,a2,a0
800020fc:	00b686b3          	add	a3,a3,a1
80002100:	01f69793          	slli	a5,a3,0x1f
80002104:	00165613          	srli	a2,a2,0x1
80002108:	00c7e633          	or	a2,a5,a2
8000210c:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80002110:	00098513          	mv	a0,s3
80002114:	000c8593          	mv	a1,s9
80002118:	04c12423          	sw	a2,72(sp)
8000211c:	04d12223          	sw	a3,68(sp)
80002120:	098060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80002124:	04812603          	lw	a2,72(sp)
80002128:	04412683          	lw	a3,68(sp)
8000212c:	00c50633          	add	a2,a0,a2
80002130:	00d585b3          	add	a1,a1,a3
80002134:	00a636b3          	sltu	a3,a2,a0
80002138:	00b686b3          	add	a3,a3,a1
8000213c:	01f69793          	slli	a5,a3,0x1f
80002140:	00165613          	srli	a2,a2,0x1
80002144:	00c7e633          	or	a2,a5,a2
80002148:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
8000214c:	00098513          	mv	a0,s3
80002150:	000c8593          	mv	a1,s9
80002154:	04c12423          	sw	a2,72(sp)
80002158:	04d12223          	sw	a3,68(sp)
8000215c:	05c060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
80002160:	04812603          	lw	a2,72(sp)
80002164:	04412683          	lw	a3,68(sp)
80002168:	00c50633          	add	a2,a0,a2
8000216c:	00d585b3          	add	a1,a1,a3
80002170:	00a636b3          	sltu	a3,a2,a0
80002174:	00b686b3          	add	a3,a3,a1
80002178:	01f69793          	slli	a5,a3,0x1f
8000217c:	00165613          	srli	a2,a2,0x1
80002180:	00c7e633          	or	a2,a5,a2
80002184:	4016d693          	srai	a3,a3,0x1
        int64_t t = (xn << FIXED_Q) / g;
80002188:	000c8593          	mv	a1,s9
8000218c:	00098513          	mv	a0,s3
80002190:	04c12423          	sw	a2,72(sp)
80002194:	04d12223          	sw	a3,68(sp)
80002198:	020060ef          	jal	800081b8 <__divdi3>
        g = (g + t) >> 1;
8000219c:	04812603          	lw	a2,72(sp)
800021a0:	04412683          	lw	a3,68(sp)
800021a4:	00c50633          	add	a2,a0,a2
800021a8:	00a639b3          	sltu	s3,a2,a0
800021ac:	00d585b3          	add	a1,a1,a3
800021b0:	00b989b3          	add	s3,s3,a1
800021b4:	01f99993          	slli	s3,s3,0x1f
800021b8:	00165613          	srli	a2,a2,0x1
800021bc:	00c9e9b3          	or	s3,s3,a2
    return (fixed32)(n / b);
800021c0:	41f9dc93          	srai	s9,s3,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
800021c4:	010c1c13          	slli	s8,s8,0x10
800021c8:	010b5593          	srli	a1,s6,0x10
    return (fixed32)(n / b);
800021cc:	00098613          	mv	a2,s3
800021d0:	0185e5b3          	or	a1,a1,s8
800021d4:	010b1513          	slli	a0,s6,0x10
800021d8:	000c8693          	mv	a3,s9
800021dc:	7dd050ef          	jal	800081b8 <__divdi3>
    int64_t n = ((int64_t)a) << FIXED_Q;
800021e0:	010d9d93          	slli	s11,s11,0x10
800021e4:	010bd593          	srli	a1,s7,0x10
    return (fixed32)(n / b);
800021e8:	00050b13          	mv	s6,a0
800021ec:	00098613          	mv	a2,s3
800021f0:	01b5e5b3          	or	a1,a1,s11
800021f4:	010b9513          	slli	a0,s7,0x10
800021f8:	000c8693          	mv	a3,s9
800021fc:	7bd050ef          	jal	800081b8 <__divdi3>
    int64_t t = (int64_t)a * (int64_t)b;
80002200:	03412603          	lw	a2,52(sp)
80002204:	03812683          	lw	a3,56(sp)
80002208:	41f55593          	srai	a1,a0,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
8000220c:	010d1d13          	slli	s10,s10,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80002210:	22c080ef          	jal	8000a43c <__muldi3>
    int64_t n = ((int64_t)a) << FIXED_Q;
80002214:	010ad713          	srli	a4,s5,0x10
    return (fixed32)(t >> FIXED_Q);
80002218:	01059793          	slli	a5,a1,0x10
    return (fixed32)(n / b);
8000221c:	00098613          	mv	a2,s3
80002220:	01a765b3          	or	a1,a4,s10
80002224:	000c8693          	mv	a3,s9
    return (fixed32)(t >> FIXED_Q);
80002228:	01055993          	srli	s3,a0,0x10
    return (fixed32)(n / b);
8000222c:	010a9513          	slli	a0,s5,0x10
    return (fixed32)(t >> FIXED_Q);
80002230:	0137e9b3          	or	s3,a5,s3
    return (fixed32)(n / b);
80002234:	785050ef          	jal	800081b8 <__divdi3>
    int64_t t = (int64_t)a * (int64_t)b;
80002238:	04012683          	lw	a3,64(sp)
8000223c:	03012d83          	lw	s11,48(sp)
80002240:	00040613          	mv	a2,s0
80002244:	41f55593          	srai	a1,a0,0x1f
80002248:	1f4080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000224c:	01059713          	slli	a4,a1,0x10
80002250:	01055793          	srli	a5,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80002254:	41fddb93          	srai	s7,s11,0x1f
80002258:	41fb5c13          	srai	s8,s6,0x1f
    return (fixed32)(t >> FIXED_Q);
8000225c:	00f767b3          	or	a5,a4,a5
    int64_t t = (int64_t)a * (int64_t)b;
80002260:	000c0593          	mv	a1,s8
80002264:	000d8613          	mv	a2,s11
80002268:	000b8693          	mv	a3,s7
8000226c:	000b0513          	mv	a0,s6
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002270:	00f989b3          	add	s3,s3,a5
    int64_t t = (int64_t)a * (int64_t)b;
80002274:	1c8080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80002278:	01055513          	srli	a0,a0,0x10
8000227c:	01059593          	slli	a1,a1,0x10
80002280:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002284:	00a989b3          	add	s3,s3,a0

            Vec3fixed normal = cross_product_fixed(triTranslated);
            normal = normalize_fixed(normal);

            // if(normal.z < 0) {
            if (dot_product_fixed(normal, 
80002288:	ae09dc63          	bgez	s3,80001580 <main+0x3e8>
    int64_t t = (int64_t)a * (int64_t)b;
8000228c:	008b1793          	slli	a5,s6,0x8
    return (fixed32)(t >> FIXED_Q);
80002290:	40fb0b33          	sub	s6,s6,a5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002294:	ffff87b7          	lui	a5,0xffff8
80002298:	000b4463          	bltz	s6,800022a0 <main+0x1108>
8000229c:	000087b7          	lui	a5,0x8
800022a0:	016789b3          	add	s3,a5,s6
    int64_t t = (int64_t)a * (int64_t)b;
800022a4:	03412503          	lw	a0,52(sp)
800022a8:	03812583          	lw	a1,56(sp)
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800022ac:	4109d993          	srai	s3,s3,0x10
                    fixed_from_float(-1.0f)
                };
                // Not needed if light_dir is already normalized
                // light_dir = normalize_fixed(light_dir);
                fixed32 dp = dot_product_fixed(normal, light_dir);
                char light_intensity = fixed_to_int_round(fixed_mul_trunc(dp, F(255.0f)));
800022b0:	0ff9f993          	zext.b	s3,s3
    int64_t t = (int64_t)a * (int64_t)b;
800022b4:	0001b637          	lui	a2,0x1b
800022b8:	00899793          	slli	a5,s3,0x8
800022bc:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
800022c0:	00000693          	li	a3,0
800022c4:	00f9ecb3          	or	s9,s3,a5
800022c8:	174080ef          	jal	8000a43c <__muldi3>
800022cc:	03012703          	lw	a4,48(sp)
800022d0:	010b9b93          	slli	s7,s7,0x10
    return (fixed32)(t >> FIXED_Q);
800022d4:	01055513          	srli	a0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800022d8:	01075793          	srli	a5,a4,0x10
    return (fixed32)(t >> FIXED_Q);
800022dc:	01071c13          	slli	s8,a4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800022e0:	04012703          	lw	a4,64(sp)
800022e4:	0177ebb3          	or	s7,a5,s7
    return (fixed32)(t >> FIXED_Q);
800022e8:	010b9793          	slli	a5,s7,0x10
800022ec:	010c5c13          	srli	s8,s8,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800022f0:	01071b13          	slli	s6,a4,0x10
    return (fixed32)(t >> FIXED_Q);
800022f4:	01059593          	slli	a1,a1,0x10
800022f8:	0187ec33          	or	s8,a5,s8
    int64_t t = (int64_t)a * (int64_t)b;
800022fc:	01045793          	srli	a5,s0,0x10
    return (fixed32)(t >> FIXED_Q);
80002300:	00a5eab3          	or	s5,a1,a0
80002304:	410bdb93          	srai	s7,s7,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80002308:	0167eb33          	or	s6,a5,s6
8000230c:	01041413          	slli	s0,s0,0x10
    if (w != 0) {
80002310:	540c1263          	bnez	s8,80002854 <main+0x16bc>
    return (fixed32)(t >> FIXED_Q);
80002314:	010b1b13          	slli	s6,s6,0x10
80002318:	01045413          	srli	s0,s0,0x10
8000231c:	008b6433          	or	s0,s6,s0
    int64_t t = (int64_t)a * (int64_t)b;
80002320:	06012503          	lw	a0,96(sp)
80002324:	06412583          	lw	a1,100(sp)
80002328:	0001b637          	lui	a2,0x1b
8000232c:	00000693          	li	a3,0
80002330:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
80002334:	108080ef          	jal	8000a43c <__muldi3>
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002338:	05c12783          	lw	a5,92(sp)
8000233c:	00030737          	lui	a4,0x30
    return (fixed32)(t >> FIXED_Q);
80002340:	01055513          	srli	a0,a0,0x10
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002344:	00e78bb3          	add	s7,a5,a4
    int64_t t = (int64_t)a * (int64_t)b;
80002348:	41fbd693          	srai	a3,s7,0x1f
8000234c:	010bd793          	srli	a5,s7,0x10
80002350:	06c12703          	lw	a4,108(sp)
80002354:	01069693          	slli	a3,a3,0x10
80002358:	00d7e6b3          	or	a3,a5,a3
    return (fixed32)(t >> FIXED_Q);
8000235c:	010b9b93          	slli	s7,s7,0x10
80002360:	01069793          	slli	a5,a3,0x10
80002364:	010bdb93          	srli	s7,s7,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80002368:	01071d13          	slli	s10,a4,0x10
    return (fixed32)(t >> FIXED_Q);
8000236c:	01059593          	slli	a1,a1,0x10
80002370:	0177ebb3          	or	s7,a5,s7
    int64_t t = (int64_t)a * (int64_t)b;
80002374:	01095793          	srli	a5,s2,0x10
    return (fixed32)(t >> FIXED_Q);
80002378:	00a5eb33          	or	s6,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
8000237c:	01a7ed33          	or	s10,a5,s10
80002380:	01091913          	slli	s2,s2,0x10
    return (fixed32)(t >> FIXED_Q);
80002384:	4106dc13          	srai	s8,a3,0x10
80002388:	480b9663          	bnez	s7,80002814 <main+0x167c>
8000238c:	010d1d13          	slli	s10,s10,0x10
80002390:	01095913          	srli	s2,s2,0x10
80002394:	012d6933          	or	s2,s10,s2
    int64_t t = (int64_t)a * (int64_t)b;
80002398:	03c12503          	lw	a0,60(sp)
8000239c:	06812583          	lw	a1,104(sp)
800023a0:	0001b637          	lui	a2,0x1b
800023a4:	00000693          	li	a3,0
800023a8:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
800023ac:	090080ef          	jal	8000a43c <__muldi3>
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800023b0:	05812783          	lw	a5,88(sp)
800023b4:	00030737          	lui	a4,0x30
    return (fixed32)(t >> FIXED_Q);
800023b8:	01055513          	srli	a0,a0,0x10
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800023bc:	00e78c33          	add	s8,a5,a4
    int64_t t = (int64_t)a * (int64_t)b;
800023c0:	41fc5693          	srai	a3,s8,0x1f
800023c4:	010c5793          	srli	a5,s8,0x10
800023c8:	07012703          	lw	a4,112(sp)
800023cc:	01069693          	slli	a3,a3,0x10
800023d0:	00d7e6b3          	or	a3,a5,a3
    return (fixed32)(t >> FIXED_Q);
800023d4:	010c1c13          	slli	s8,s8,0x10
800023d8:	01069793          	slli	a5,a3,0x10
800023dc:	010c5c13          	srli	s8,s8,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800023e0:	01071d93          	slli	s11,a4,0x10
    return (fixed32)(t >> FIXED_Q);
800023e4:	01059593          	slli	a1,a1,0x10
800023e8:	0187ec33          	or	s8,a5,s8
    int64_t t = (int64_t)a * (int64_t)b;
800023ec:	0104d793          	srli	a5,s1,0x10
    return (fixed32)(t >> FIXED_Q);
800023f0:	00a5ebb3          	or	s7,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
800023f4:	01b7edb3          	or	s11,a5,s11
800023f8:	01049493          	slli	s1,s1,0x10
    return (fixed32)(t >> FIXED_Q);
800023fc:	4106dd13          	srai	s10,a3,0x10
80002400:	3c0c1a63          	bnez	s8,800027d4 <main+0x163c>
80002404:	010d9d93          	slli	s11,s11,0x10
80002408:	0104d493          	srli	s1,s1,0x10
8000240c:	009de4b3          	or	s1,s11,s1
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002410:	00010c37          	lui	s8,0x10
80002414:	018a8533          	add	a0,s5,s8
    int64_t t = (int64_t)a * (int64_t)b;
80002418:	00005637          	lui	a2,0x5
8000241c:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
80002420:	00000693          	li	a3,0
80002424:	41f55593          	srai	a1,a0,0x1f
80002428:	014080ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000242c:	01059593          	slli	a1,a1,0x10
80002430:	01055513          	srli	a0,a0,0x10
80002434:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80002438:	00151793          	slli	a5,a0,0x1
8000243c:	00a787b3          	add	a5,a5,a0
80002440:	00379793          	slli	a5,a5,0x3
80002444:	00a787b3          	add	a5,a5,a0
80002448:	00b7da93          	srli	s5,a5,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
8000244c:	01840533          	add	a0,s0,s8
    int64_t t = (int64_t)a * (int64_t)b;
80002450:	01579793          	slli	a5,a5,0x15
80002454:	0000b637          	lui	a2,0xb
    return (fixed32)(t >> FIXED_Q);
80002458:	0107d793          	srli	a5,a5,0x10
8000245c:	010a9a93          	slli	s5,s5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80002460:	41f55593          	srai	a1,a0,0x1f
80002464:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
80002468:	00000693          	li	a3,0
    return (fixed32)(t >> FIXED_Q);
8000246c:	00faeab3          	or	s5,s5,a5
    int64_t t = (int64_t)a * (int64_t)b;
80002470:	7cd070ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80002474:	01055513          	srli	a0,a0,0x10
80002478:	01059593          	slli	a1,a1,0x10
8000247c:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80002480:	00451793          	slli	a5,a0,0x4
80002484:	40a787b3          	sub	a5,a5,a0
80002488:	00b7dc13          	srli	s8,a5,0xb
8000248c:	01579793          	slli	a5,a5,0x15
    return (fixed32)(t >> FIXED_Q);
80002490:	0107d793          	srli	a5,a5,0x10
80002494:	010c1c13          	slli	s8,s8,0x10
80002498:	00fc6c33          	or	s8,s8,a5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
8000249c:	ffff87b7          	lui	a5,0xffff8
800024a0:	000ac463          	bltz	s5,800024a8 <main+0x1310>
800024a4:	000087b7          	lui	a5,0x8
800024a8:	00fa8ab3          	add	s5,s5,a5
800024ac:	410ada93          	srai	s5,s5,0x10
800024b0:	ffff87b7          	lui	a5,0xffff8
800024b4:	000c4463          	bltz	s8,800024bc <main+0x1324>
800024b8:	000087b7          	lui	a5,0x8
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800024bc:	00010437          	lui	s0,0x10
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800024c0:	00fc0c33          	add	s8,s8,a5
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800024c4:	008b0533          	add	a0,s6,s0
    int64_t t = (int64_t)a * (int64_t)b;
800024c8:	00005637          	lui	a2,0x5
800024cc:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
800024d0:	00000693          	li	a3,0
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800024d4:	410c5c13          	srai	s8,s8,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800024d8:	41f55593          	srai	a1,a0,0x1f
800024dc:	09812623          	sw	s8,140(sp)
    return (fixed32)(t >> FIXED_Q);
800024e0:	09512423          	sw	s5,136(sp)
    int64_t t = (int64_t)a * (int64_t)b;
800024e4:	759070ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800024e8:	01059593          	slli	a1,a1,0x10
800024ec:	01055513          	srli	a0,a0,0x10
800024f0:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
800024f4:	00151793          	slli	a5,a0,0x1
800024f8:	00a787b3          	add	a5,a5,a0
800024fc:	00379793          	slli	a5,a5,0x3
80002500:	00a787b3          	add	a5,a5,a0
80002504:	0000b637          	lui	a2,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002508:	00890533          	add	a0,s2,s0
    int64_t t = (int64_t)a * (int64_t)b;
8000250c:	00b7d913          	srli	s2,a5,0xb
80002510:	01579793          	slli	a5,a5,0x15
    return (fixed32)(t >> FIXED_Q);
80002514:	0107d793          	srli	a5,a5,0x10
80002518:	01091913          	slli	s2,s2,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000251c:	41f55593          	srai	a1,a0,0x1f
80002520:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
80002524:	00000693          	li	a3,0
    return (fixed32)(t >> FIXED_Q);
80002528:	00f96933          	or	s2,s2,a5
    int64_t t = (int64_t)a * (int64_t)b;
8000252c:	711070ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80002530:	01055513          	srli	a0,a0,0x10
80002534:	01059593          	slli	a1,a1,0x10
80002538:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
8000253c:	00451793          	slli	a5,a0,0x4
80002540:	40a787b3          	sub	a5,a5,a0
80002544:	00b7db13          	srli	s6,a5,0xb
80002548:	01579793          	slli	a5,a5,0x15
    return (fixed32)(t >> FIXED_Q);
8000254c:	0107d793          	srli	a5,a5,0x10
80002550:	010b1b13          	slli	s6,s6,0x10
80002554:	00fb6b33          	or	s6,s6,a5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002558:	ffff87b7          	lui	a5,0xffff8
8000255c:	00094463          	bltz	s2,80002564 <main+0x13cc>
80002560:	000087b7          	lui	a5,0x8
80002564:	00f90933          	add	s2,s2,a5
80002568:	41095913          	srai	s2,s2,0x10
8000256c:	ffff87b7          	lui	a5,0xffff8
80002570:	000b4463          	bltz	s6,80002578 <main+0x13e0>
80002574:	000087b7          	lui	a5,0x8
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002578:	00010437          	lui	s0,0x10
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
8000257c:	00fb0b33          	add	s6,s6,a5
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002580:	008b8533          	add	a0,s7,s0
    int64_t t = (int64_t)a * (int64_t)b;
80002584:	00005637          	lui	a2,0x5
80002588:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
8000258c:	00000693          	li	a3,0
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002590:	410b5b13          	srai	s6,s6,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80002594:	41f55593          	srai	a1,a0,0x1f
80002598:	09612a23          	sw	s6,148(sp)
    return (fixed32)(t >> FIXED_Q);
8000259c:	09212823          	sw	s2,144(sp)
    int64_t t = (int64_t)a * (int64_t)b;
800025a0:	69d070ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800025a4:	01059593          	slli	a1,a1,0x10
800025a8:	01055513          	srli	a0,a0,0x10
800025ac:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
800025b0:	00151793          	slli	a5,a0,0x1
800025b4:	00a787b3          	add	a5,a5,a0
800025b8:	00379793          	slli	a5,a5,0x3
800025bc:	00a787b3          	add	a5,a5,a0
800025c0:	0000b637          	lui	a2,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800025c4:	00848533          	add	a0,s1,s0
    int64_t t = (int64_t)a * (int64_t)b;
800025c8:	00b7d413          	srli	s0,a5,0xb
800025cc:	01579793          	slli	a5,a5,0x15
    return (fixed32)(t >> FIXED_Q);
800025d0:	0107d793          	srli	a5,a5,0x10
800025d4:	01041413          	slli	s0,s0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800025d8:	41f55593          	srai	a1,a0,0x1f
800025dc:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
800025e0:	00000693          	li	a3,0
    return (fixed32)(t >> FIXED_Q);
800025e4:	00f46433          	or	s0,s0,a5
    int64_t t = (int64_t)a * (int64_t)b;
800025e8:	655070ef          	jal	8000a43c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800025ec:	01055513          	srli	a0,a0,0x10
800025f0:	01059593          	slli	a1,a1,0x10
800025f4:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
800025f8:	00451793          	slli	a5,a0,0x4
800025fc:	40a787b3          	sub	a5,a5,a0
80002600:	00b7d493          	srli	s1,a5,0xb
80002604:	01579793          	slli	a5,a5,0x15
    return (fixed32)(t >> FIXED_Q);
80002608:	0107d793          	srli	a5,a5,0x10
8000260c:	01049493          	slli	s1,s1,0x10
80002610:	00f4e4b3          	or	s1,s1,a5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002614:	ffff87b7          	lui	a5,0xffff8
80002618:	00044463          	bltz	s0,80002620 <main+0x1488>
8000261c:	000087b7          	lui	a5,0x8
80002620:	00f40433          	add	s0,s0,a5
80002624:	41045413          	srai	s0,s0,0x10
80002628:	ffff87b7          	lui	a5,0xffff8
8000262c:	0004c463          	bltz	s1,80002634 <main+0x149c>
80002630:	000087b7          	lui	a5,0x8
                Vec2i s1 = to_screen_fixed(&triProj.p[1]);
                Vec2i s2 = to_screen_fixed(&triProj.p[2]);

                // tfp_printf("Triangle %d: Screen Coords: (%d,%d), (%d,%d), (%d,%d)\r\n",
                    // i, s0.x, s0.y, s1.x, s1.y, s2.x, s2.y);
                triangle(frame_buffer_to_use, s0, s1, s2, (color){light_intensity,light_intensity,light_intensity});
80002634:	00009717          	auipc	a4,0x9
80002638:	99070713          	addi	a4,a4,-1648 # 8000afc4 <frame_buffer_to_use>
8000263c:	09310323          	sb	s3,134(sp)
80002640:	09911223          	sh	s9,132(sp)
80002644:	00072983          	lw	s3,0(a4)
80002648:	08412883          	lw	a7,132(sp)
8000264c:	09012683          	lw	a3,144(sp)
80002650:	09412703          	lw	a4,148(sp)
80002654:	08812583          	lw	a1,136(sp)
80002658:	08c12603          	lw	a2,140(sp)
8000265c:	00f484b3          	add	s1,s1,a5
80002660:	4104d493          	srai	s1,s1,0x10
80002664:	00048813          	mv	a6,s1
80002668:	00098513          	mv	a0,s3
8000266c:	00040793          	mv	a5,s0
80002670:	08912e23          	sw	s1,156(sp)
80002674:	08812c23          	sw	s0,152(sp)
80002678:	f0dfd0ef          	jal	80000584 <_Z8trianglePt4Vec2IiES1_S1_5color>
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
8000267c:	000b0713          	mv	a4,s6
80002680:	00090693          	mv	a3,s2
80002684:	000c0613          	mv	a2,s8
80002688:	000a8593          	mv	a1,s5
8000268c:	00098513          	mv	a0,s3
80002690:	00000893          	li	a7,0
80002694:	00000813          	li	a6,0
80002698:	00000793          	li	a5,0
8000269c:	e0dfd0ef          	jal	800004a8 <_Z9draw_linePtiiiihhh>
    draw_line(pixels, t1.x, t1.y, t2.x, t2.y, col.r, col.g, col.b);
800026a0:	000b0613          	mv	a2,s6
800026a4:	00090593          	mv	a1,s2
800026a8:	00048713          	mv	a4,s1
800026ac:	00040693          	mv	a3,s0
800026b0:	00098513          	mv	a0,s3
800026b4:	00000893          	li	a7,0
800026b8:	00000813          	li	a6,0
800026bc:	00000793          	li	a5,0
800026c0:	de9fd0ef          	jal	800004a8 <_Z9draw_linePtiiiihhh>
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
800026c4:	00000793          	li	a5,0
800026c8:	000c0713          	mv	a4,s8
800026cc:	000a8693          	mv	a3,s5
800026d0:	00048613          	mv	a2,s1
800026d4:	00040593          	mv	a1,s0
800026d8:	00098513          	mv	a0,s3
800026dc:	00000893          	li	a7,0
800026e0:	00000813          	li	a6,0
800026e4:	dc5fd0ef          	jal	800004a8 <_Z9draw_linePtiiiihhh>
        for (int i = 0; i < cube_size; i++) {
800026e8:	024a0a13          	addi	s4,s4,36
800026ec:	2b010793          	addi	a5,sp,688
800026f0:	01478463          	beq	a5,s4,800026f8 <main+0x1560>
800026f4:	e9dfe06f          	j	80001590 <main+0x3f8>
    if (cur_frame_buffer == 0) {
800026f8:	00009797          	auipc	a5,0x9
800026fc:	8c87c783          	lbu	a5,-1848(a5) # 8000afc0 <cur_frame_buffer>
80002700:	07412b83          	lw	s7,116(sp)
80002704:	07812b03          	lw	s6,120(sp)
80002708:	07c12a83          	lw	s5,124(sp)
8000270c:	18078463          	beqz	a5,80002894 <main+0x16fc>
80002710:	802ee737          	lui	a4,0x802ee
80002714:	8005e6b7          	lui	a3,0x8005e
80002718:	00070613          	mv	a2,a4
8000271c:	c0068693          	addi	a3,a3,-1024 # 8005dc00 <_heap_start+0x52920>
80002720:	00000593          	li	a1,0
        cur_frame_buffer = 1;
80002724:	00009517          	auipc	a0,0x9
80002728:	89c50513          	addi	a0,a0,-1892 # 8000afc0 <cur_frame_buffer>
8000272c:	00b50023          	sb	a1,0(a0)
        frame_buffer = ( uint16_t *) RAM_LOCATION;
80002730:	00009597          	auipc	a1,0x9
80002734:	89858593          	addi	a1,a1,-1896 # 8000afc8 <frame_buffer>
80002738:	00e5a023          	sw	a4,0(a1)
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION2;
8000273c:	00009717          	auipc	a4,0x9
80002740:	88870713          	addi	a4,a4,-1912 # 8000afc4 <frame_buffer_to_use>
80002744:	00d72023          	sw	a3,0(a4)
                triangle_wireframe(frame_buffer_to_use, s0, s1, s2, (color){0,0,0});
            }
        }
        frame_buffer_addr[0] = (uint32_t)switch_frame_buffer();
80002748:	880037b7          	lui	a5,0x88003
8000274c:	80c7a223          	sw	a2,-2044(a5) # 88002804 <_stack_end+0x7c02804>
        // tfp_printf("Current Frame Buffer: %x\r\n", frame_buffer_to_use);
        // for(volatile int k=0; k<100000; k++); // Simple delay
        tfp_printf("Frame %d\r\n", frame_num++);
80002750:	000b0593          	mv	a1,s6
80002754:	00008517          	auipc	a0,0x8
80002758:	ed050513          	addi	a0,a0,-304 # 8000a624 <__clzsi2+0xa8>
8000275c:	1b0040ef          	jal	8000690c <tfp_printf>
        frame_time += 0.03f;
80002760:	00008797          	auipc	a5,0x8
80002764:	6d078793          	addi	a5,a5,1744 # 8000ae30 <_etext+0x1c>
80002768:	0007a583          	lw	a1,0(a5)
8000276c:	000b8513          	mv	a0,s7
        tfp_printf("Frame %d\r\n", frame_num++);
80002770:	001b0a13          	addi	s4,s6,1
        frame_time += 0.03f;
80002774:	2ed060ef          	jal	80009260 <__addsf3>
80002778:	00050413          	mv	s0,a0
        matRotZ.m[0][0] = fixed_from_float(cosf(fTheta));
8000277c:	1e8040ef          	jal	80006964 <cosf>
80002780:	00050993          	mv	s3,a0
        matRotZ.m[0][1] = fixed_from_float(sinf(fTheta));
80002784:	00040513          	mv	a0,s0
80002788:	288040ef          	jal	80006a10 <sinf>
        matRotX.m[1][1] = fixed_from_float(cosf(fTheta * 0.5f));
8000278c:	00008797          	auipc	a5,0x8
80002790:	6a878793          	addi	a5,a5,1704 # 8000ae34 <_etext+0x20>
80002794:	0007a583          	lw	a1,0(a5)
        matRotZ.m[0][1] = fixed_from_float(sinf(fTheta));
80002798:	00050913          	mv	s2,a0
        matRotX.m[1][1] = fixed_from_float(cosf(fTheta * 0.5f));
8000279c:	00040513          	mv	a0,s0
800027a0:	36c070ef          	jal	80009b0c <__mulsf3>
800027a4:	00050413          	mv	s0,a0
800027a8:	1bc040ef          	jal	80006964 <cosf>
800027ac:	00050493          	mv	s1,a0
        matRotX.m[1][2] = fixed_from_float(sinf(fTheta * 0.5f));
800027b0:	00040513          	mv	a0,s0
800027b4:	25c040ef          	jal	80006a10 <sinf>
        tfp_printf("Frame %d\r\n", frame_num++);
800027b8:	000a0b13          	mv	s6,s4
        frame_time += 0.03f;
800027bc:	000a8b93          	mv	s7,s5
        matRotX.m[1][2] = fixed_from_float(sinf(fTheta * 0.5f));
800027c0:	00050413          	mv	s0,a0
    }
800027c4:	cc9fe06f          	j	8000148c <main+0x2f4>
800027c8:	00000993          	li	s3,0
800027cc:	00000c93          	li	s9,0
800027d0:	9f5ff06f          	j	800021c4 <main+0x102c>
    int64_t n = ((int64_t)a) << FIXED_Q;
800027d4:	41fbd793          	srai	a5,s7,0x1f
800027d8:	01079793          	slli	a5,a5,0x10
800027dc:	010bd593          	srli	a1,s7,0x10
    return (fixed32)(n / b);
800027e0:	00f5e5b3          	or	a1,a1,a5
800027e4:	010b9513          	slli	a0,s7,0x10
800027e8:	000c0613          	mv	a2,s8
800027ec:	000d0693          	mv	a3,s10
800027f0:	1c9050ef          	jal	800081b8 <__divdi3>
800027f4:	00050b93          	mv	s7,a0
800027f8:	000c0613          	mv	a2,s8
800027fc:	00048513          	mv	a0,s1
80002800:	000d0693          	mv	a3,s10
80002804:	000d8593          	mv	a1,s11
80002808:	1b1050ef          	jal	800081b8 <__divdi3>
8000280c:	00050493          	mv	s1,a0
        o->z = fixed_div_trunc(z, w);
80002810:	c01ff06f          	j	80002410 <main+0x1278>
    int64_t n = ((int64_t)a) << FIXED_Q;
80002814:	41fb5793          	srai	a5,s6,0x1f
80002818:	01079793          	slli	a5,a5,0x10
8000281c:	010b5593          	srli	a1,s6,0x10
    return (fixed32)(n / b);
80002820:	00f5e5b3          	or	a1,a1,a5
80002824:	010b1513          	slli	a0,s6,0x10
80002828:	000b8613          	mv	a2,s7
8000282c:	000c0693          	mv	a3,s8
80002830:	189050ef          	jal	800081b8 <__divdi3>
80002834:	00050b13          	mv	s6,a0
80002838:	000b8613          	mv	a2,s7
8000283c:	00090513          	mv	a0,s2
80002840:	000c0693          	mv	a3,s8
80002844:	000d0593          	mv	a1,s10
80002848:	171050ef          	jal	800081b8 <__divdi3>
8000284c:	00050913          	mv	s2,a0
80002850:	b49ff06f          	j	80002398 <main+0x1200>
    int64_t n = ((int64_t)a) << FIXED_Q;
80002854:	41fad793          	srai	a5,s5,0x1f
80002858:	01079793          	slli	a5,a5,0x10
8000285c:	010ad593          	srli	a1,s5,0x10
    return (fixed32)(n / b);
80002860:	00f5e5b3          	or	a1,a1,a5
80002864:	010a9513          	slli	a0,s5,0x10
80002868:	000c0613          	mv	a2,s8
8000286c:	000b8693          	mv	a3,s7
80002870:	149050ef          	jal	800081b8 <__divdi3>
80002874:	00050a93          	mv	s5,a0
80002878:	000c0613          	mv	a2,s8
8000287c:	00040513          	mv	a0,s0
80002880:	000b8693          	mv	a3,s7
80002884:	000b0593          	mv	a1,s6
80002888:	131050ef          	jal	800081b8 <__divdi3>
8000288c:	00050413          	mv	s0,a0
80002890:	a91ff06f          	j	80002320 <main+0x1188>
80002894:	8005e737          	lui	a4,0x8005e
80002898:	c0070713          	addi	a4,a4,-1024 # 8005dc00 <_heap_start+0x52920>
8000289c:	00070613          	mv	a2,a4
800028a0:	00100593          	li	a1,1
800028a4:	802ee6b7          	lui	a3,0x802ee
800028a8:	e7dff06f          	j	80002724 <main+0x158c>

800028ac <_Z14uart_read_bytev>:

#define LSR_DR          0x01

uint8_t uart_read_byte() {
    // Wait until data is ready
    while ((*(volatile uint8_t *)UART_REG_LSR & LSR_DR) == 0);
800028ac:	10000737          	lui	a4,0x10000
800028b0:	00570713          	addi	a4,a4,5 # 10000005 <_stack_size+0xfff8005>
800028b4:	100006b7          	lui	a3,0x10000
800028b8:	00074783          	lbu	a5,0(a4)
800028bc:	0017f793          	andi	a5,a5,1
800028c0:	fe078ce3          	beqz	a5,800028b8 <_Z14uart_read_bytev+0xc>
    // Read received byte
    return *(volatile uint8_t *)UART_REG_RBR;
800028c4:	0006c503          	lbu	a0,0(a3) # 10000000 <_stack_size+0xfff8000>
}
800028c8:	00008067          	ret

800028cc <_Z11vOutNS16550h>:

static uint8_t readb( uintptr_t addr )
{
	return *( (volatile uint8_t *) addr );
800028cc:	10000737          	lui	a4,0x10000
800028d0:	00570713          	addi	a4,a4,5 # 10000005 <_stack_size+0xfff8005>
800028d4:	100006b7          	lui	a3,0x10000
800028d8:	00074783          	lbu	a5,0(a4)

    // uintptr_t *ptr = (uintptr_t *) UART_ADDRESS;
    // ptr[0] = c;
    // putch(129,'T', 15);
    // uintptr_t ptr = (uintptr_t *)UART_ADDRESS;
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800028dc:	0207f793          	andi	a5,a5,32
800028e0:	fe078ce3          	beqz	a5,800028d8 <_Z11vOutNS16550h+0xc>
	*( (uint8_t *) addr ) = b;
800028e4:	00a68023          	sb	a0,0(a3) # 10000000 <_stack_size+0xfff8000>
		/* busy wait */
	}
	writeb( c, UART_ADDRESS + REG_THR );
}
800028e8:	00008067          	ret

800028ec <_Z8get_timev>:

long get_time() {
    // Read the current time from the mtime register
    volatile unsigned long *mtime = (volatile unsigned long *)MTIME_ADDR;
    return *mtime;
800028ec:	0200c7b7          	lui	a5,0x200c
800028f0:	ff87a503          	lw	a0,-8(a5) # 200bff8 <_stack_size+0x2003ff8>
}
800028f4:	00008067          	ret

800028f8 <_Z9getButtonc>:
// }
// *****************************************************************************
// returns 1 if the button is pressed, 0 otherwise
char getButton(char btn){
    char *buttons = (char *)BUTTONS;
    return buttons[btn];
800028f8:	890007b7          	lui	a5,0x89000
800028fc:	00a787b3          	add	a5,a5,a0
}
80002900:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x8c00000>
80002904:	00008067          	ret

80002908 <_Z13getButtonDownv>:
char getButtonDown(){
    char *buttons = (char *)BUTTONS;
    return buttons[0];
80002908:	890007b7          	lui	a5,0x89000
}
8000290c:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_end+0x8c00000>
80002910:	00008067          	ret

80002914 <_Z11getButtonUpv>:
char getButtonUp(){
    char *buttons = (char *)BUTTONS;
    return buttons[1];
80002914:	890007b7          	lui	a5,0x89000
}
80002918:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_end+0x8c00001>
8000291c:	00008067          	ret

80002920 <_Z13getButtonLeftv>:
char getButtonLeft(){
    char *buttons = (char *)BUTTONS;
    return buttons[2];
80002920:	890007b7          	lui	a5,0x89000
}
80002924:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_end+0x8c00002>
80002928:	00008067          	ret

8000292c <_Z14getButtonRightv>:
char getButtonRight(){
    char *buttons = (char *)BUTTONS;
    return buttons[3];
8000292c:	890007b7          	lui	a5,0x89000
}
80002930:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_end+0x8c00003>
80002934:	00008067          	ret

80002938 <_Z5putchicc>:

// *****************************************************************************
// Puts a character at the specified location with the specified color.
// The colors are as the Text Mode format in https://en.wikipedia.org/wiki/VGA_text_mode
unsigned char putch(int location, char c, char color) {
    if(location<0){
80002938:	02054663          	bltz	a0,80002964 <_Z5putchicc+0x2c>
        vOutNS16550(c);
        return 0;
    }
    if(location>SCREEN_SIZE){
8000293c:	4c000793          	li	a5,1216
80002940:	04a7c063          	blt	a5,a0,80002980 <_Z5putchicc+0x48>
        return 0;
    }
    // for the big screen
    volatile unsigned short *screen = (unsigned short *)SCREEN_LOCATION;
    unsigned short buffer = (color << 8) | c;
80002944:	00861613          	slli	a2,a2,0x8
    screen[location] = buffer;
80002948:	880007b7          	lui	a5,0x88000
8000294c:	00151513          	slli	a0,a0,0x1
80002950:	00f50533          	add	a0,a0,a5
    unsigned short buffer = (color << 8) | c;
80002954:	00b665b3          	or	a1,a2,a1
    screen[location] = buffer;
80002958:	00b51023          	sh	a1,0(a0)
    return 1;
8000295c:	00100513          	li	a0,1
}
80002960:	00008067          	ret
	return *( (volatile uint8_t *) addr );
80002964:	10000737          	lui	a4,0x10000
80002968:	00570713          	addi	a4,a4,5 # 10000005 <_stack_size+0xfff8005>
8000296c:	100006b7          	lui	a3,0x10000
80002970:	00074783          	lbu	a5,0(a4)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80002974:	0207f793          	andi	a5,a5,32
80002978:	fe078ce3          	beqz	a5,80002970 <_Z5putchicc+0x38>
	*( (uint8_t *) addr ) = b;
8000297c:	00b68023          	sb	a1,0(a3) # 10000000 <_stack_size+0xfff8000>
        return 0;
80002980:	00000513          	li	a0,0
80002984:	00008067          	ret

80002988 <_Z11printStringiPcc>:

// *****************************************************************************
// Prints the string. If color is 0, it will print in rainbow colors
// If this returns 0, there was an error
unsigned int printString(int location, char *string, char color){
80002988:	00050693          	mv	a3,a0
    char rainbow=0;
    if(color==0){
        rainbow=1;
        color=1;
    }
    while(string[i] != '\0'){
8000298c:	0005c703          	lbu	a4,0(a1)
80002990:	00100513          	li	a0,1
    if(color==0){
80002994:	0a061263          	bnez	a2,80002a38 <_Z11printStringiPcc+0xb0>
        color=1;
80002998:	00050793          	mv	a5,a0
        if(string[i]=='\n'){
8000299c:	00a00313          	li	t1,10
    while(string[i] != '\0'){
800029a0:	08070863          	beqz	a4,80002a30 <_Z11printStringiPcc+0xa8>
    if(location>SCREEN_SIZE){
800029a4:	fff50613          	addi	a2,a0,-1
800029a8:	4c000e93          	li	t4,1216
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
            i++;
            continue;
        }
        if(!putch(location + i, string[i],color)){
800029ac:	00c68633          	add	a2,a3,a2
        if(string[i]=='\n'){
800029b0:	04670c63          	beq	a4,t1,80002a08 <_Z11printStringiPcc+0x80>
    unsigned short buffer = (color << 8) | c;
800029b4:	00879893          	slli	a7,a5,0x8
    screen[location] = buffer;
800029b8:	88000e37          	lui	t3,0x88000
800029bc:	00161813          	slli	a6,a2,0x1
            return 0;
        }
        i++;
        if(rainbow==1){
            color++;
800029c0:	00178793          	addi	a5,a5,1 # 88000001 <_stack_end+0x7c00001>
    screen[location] = buffer;
800029c4:	01c80833          	add	a6,a6,t3
    unsigned short buffer = (color << 8) | c;
800029c8:	00e8e8b3          	or	a7,a7,a4
            color++;
800029cc:	0ff7f793          	zext.b	a5,a5
            if(color>15){
800029d0:	00f00e13          	li	t3,15
    if(location<0){
800029d4:	04064063          	bltz	a2,80002a14 <_Z11printStringiPcc+0x8c>
    if(location>SCREEN_SIZE){
800029d8:	04cecc63          	blt	t4,a2,80002a30 <_Z11printStringiPcc+0xa8>
    screen[location] = buffer;
800029dc:	01181023          	sh	a7,0(a6)
            if(color>15){
800029e0:	0afe6e63          	bltu	t3,a5,80002a9c <_Z11printStringiPcc+0x114>
    while(string[i] != '\0'){
800029e4:	00150613          	addi	a2,a0,1
800029e8:	00c58733          	add	a4,a1,a2
800029ec:	fff74703          	lbu	a4,-1(a4)
800029f0:	0a070c63          	beqz	a4,80002aa8 <_Z11printStringiPcc+0x120>
800029f4:	00060513          	mv	a0,a2
    if(location>SCREEN_SIZE){
800029f8:	fff50613          	addi	a2,a0,-1
800029fc:	4c000e93          	li	t4,1216
        if(!putch(location + i, string[i],color)){
80002a00:	00c68633          	add	a2,a3,a2
        if(string[i]=='\n'){
80002a04:	fa6718e3          	bne	a4,t1,800029b4 <_Z11printStringiPcc+0x2c>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002a08:	fc06f693          	andi	a3,a3,-64
80002a0c:	04068693          	addi	a3,a3,64
            continue;
80002a10:	fd5ff06f          	j	800029e4 <_Z11printStringiPcc+0x5c>
	return *( (volatile uint8_t *) addr );
80002a14:	100006b7          	lui	a3,0x10000
80002a18:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
80002a1c:	10000637          	lui	a2,0x10000
80002a20:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80002a24:	0207f793          	andi	a5,a5,32
80002a28:	fe078ce3          	beqz	a5,80002a20 <_Z11printStringiPcc+0x98>
	*( (uint8_t *) addr ) = b;
80002a2c:	00e60023          	sb	a4,0(a2) # 10000000 <_stack_size+0xfff8000>
            return 0;
80002a30:	00000513          	li	a0,0
                color=1;
            }
        }
    }
    return i;
}
80002a34:	00008067          	ret
    while(string[i] != '\0'){
80002a38:	fe070ce3          	beqz	a4,80002a30 <_Z11printStringiPcc+0xa8>
80002a3c:	fff50793          	addi	a5,a0,-1
        if(string[i]=='\n'){
80002a40:	00a00893          	li	a7,10
    unsigned short buffer = (color << 8) | c;
80002a44:	00861613          	slli	a2,a2,0x8
    if(location>SCREEN_SIZE){
80002a48:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80002a4c:	88000e37          	lui	t3,0x88000
        if(!putch(location + i, string[i],color)){
80002a50:	00d787b3          	add	a5,a5,a3
        if(string[i]=='\n'){
80002a54:	03170e63          	beq	a4,a7,80002a90 <_Z11printStringiPcc+0x108>
    screen[location] = buffer;
80002a58:	00179813          	slli	a6,a5,0x1
    unsigned short buffer = (color << 8) | c;
80002a5c:	00e66333          	or	t1,a2,a4
    screen[location] = buffer;
80002a60:	01c80833          	add	a6,a6,t3
    if(location<0){
80002a64:	fa07c8e3          	bltz	a5,80002a14 <_Z11printStringiPcc+0x8c>
    if(location>SCREEN_SIZE){
80002a68:	fcfec4e3          	blt	t4,a5,80002a30 <_Z11printStringiPcc+0xa8>
    screen[location] = buffer;
80002a6c:	00681023          	sh	t1,0(a6)
    while(string[i] != '\0'){
80002a70:	00150793          	addi	a5,a0,1
80002a74:	00f58733          	add	a4,a1,a5
80002a78:	fff74703          	lbu	a4,-1(a4)
80002a7c:	02070463          	beqz	a4,80002aa4 <_Z11printStringiPcc+0x11c>
80002a80:	00078513          	mv	a0,a5
    if(location>SCREEN_SIZE){
80002a84:	fff50793          	addi	a5,a0,-1
        if(!putch(location + i, string[i],color)){
80002a88:	00d787b3          	add	a5,a5,a3
        if(string[i]=='\n'){
80002a8c:	fd1716e3          	bne	a4,a7,80002a58 <_Z11printStringiPcc+0xd0>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002a90:	fc06f693          	andi	a3,a3,-64
80002a94:	04068693          	addi	a3,a3,64
            continue;
80002a98:	fd9ff06f          	j	80002a70 <_Z11printStringiPcc+0xe8>
                color=1;
80002a9c:	00100793          	li	a5,1
80002aa0:	f45ff06f          	j	800029e4 <_Z11printStringiPcc+0x5c>
80002aa4:	00008067          	ret
80002aa8:	00008067          	ret

80002aac <_Z8printHexiic>:

// *****************************************************************************
// Prints the hex value at the specified location. If color is 0, it will print in rainbow colors
unsigned char printHex(int location, int value, char color) {
    char hexChars[] = "0123456789ABCDEF";
80002aac:	00008797          	auipc	a5,0x8
80002ab0:	dc478793          	addi	a5,a5,-572 # 8000a870 <__clzsi2+0x2f4>
80002ab4:	00c7af03          	lw	t5,12(a5)
80002ab8:	0007a383          	lw	t2,0(a5)
80002abc:	0047a283          	lw	t0,4(a5)
80002ac0:	0087af83          	lw	t6,8(a5)
80002ac4:	00008e97          	auipc	t4,0x8
80002ac8:	dbcece83          	lbu	t4,-580(t4) # 8000a880 <__clzsi2+0x304>
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
    buffer[8] = '\0'; // Null-terminate the string
    
    for(int i = 7; i >= 0; i--) {
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80002acc:	4045d313          	srai	t1,a1,0x4
80002ad0:	4085d893          	srai	a7,a1,0x8
80002ad4:	40c5d813          	srai	a6,a1,0xc
80002ad8:	4105d693          	srai	a3,a1,0x10
80002adc:	4145d713          	srai	a4,a1,0x14
80002ae0:	4185d793          	srai	a5,a1,0x18
unsigned char printHex(int location, int value, char color) {
80002ae4:	fe010113          	addi	sp,sp,-32
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002ae8:	00f5fe13          	andi	t3,a1,15
80002aec:	00f37313          	andi	t1,t1,15
80002af0:	00f8f893          	andi	a7,a7,15
80002af4:	00f87813          	andi	a6,a6,15
80002af8:	00f6f693          	andi	a3,a3,15
80002afc:	00f77713          	andi	a4,a4,15
80002b00:	00f7f793          	andi	a5,a5,15
80002b04:	01c5d593          	srli	a1,a1,0x1c
    char hexChars[] = "0123456789ABCDEF";
80002b08:	00712623          	sw	t2,12(sp)
80002b0c:	00512823          	sw	t0,16(sp)
80002b10:	01f12a23          	sw	t6,20(sp)
80002b14:	01e12c23          	sw	t5,24(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002b18:	00230333          	add	t1,t1,sp
80002b1c:	002888b3          	add	a7,a7,sp
80002b20:	00280833          	add	a6,a6,sp
80002b24:	002686b3          	add	a3,a3,sp
80002b28:	00270733          	add	a4,a4,sp
80002b2c:	002787b3          	add	a5,a5,sp
    char hexChars[] = "0123456789ABCDEF";
80002b30:	01d10e23          	sb	t4,28(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002b34:	002e0e33          	add	t3,t3,sp
80002b38:	002585b3          	add	a1,a1,sp
80002b3c:	00c34f03          	lbu	t5,12(t1)
80002b40:	00c8ce83          	lbu	t4,12(a7)
80002b44:	00c84303          	lbu	t1,12(a6)
80002b48:	00c6c883          	lbu	a7,12(a3)
80002b4c:	00c74803          	lbu	a6,12(a4)
80002b50:	00c7c683          	lbu	a3,12(a5)
80002b54:	00c5c703          	lbu	a4,12(a1)
80002b58:	00ce4783          	lbu	a5,12(t3) # 8800000c <_stack_end+0x7c0000c>
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80002b5c:	00010423          	sb	zero,8(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002b60:	01e10323          	sb	t5,6(sp)
80002b64:	01d102a3          	sb	t4,5(sp)
80002b68:	00610223          	sb	t1,4(sp)
80002b6c:	011101a3          	sb	a7,3(sp)
80002b70:	01010123          	sb	a6,2(sp)
80002b74:	00d100a3          	sb	a3,1(sp)
80002b78:	00f103a3          	sb	a5,7(sp)
80002b7c:	00e10023          	sb	a4,0(sp)
    if(color==0){
80002b80:	08061463          	bnez	a2,80002c08 <_Z8printHexiic+0x15c>
    while(string[i] != '\0'){
80002b84:	00100793          	li	a5,1
        color=1;
80002b88:	00078693          	mv	a3,a5
80002b8c:	00f108b3          	add	a7,sp,a5
        if(string[i]=='\n'){
80002b90:	00a00313          	li	t1,10
    while(string[i] != '\0'){
80002b94:	0e070e63          	beqz	a4,80002c90 <_Z8printHexiic+0x1e4>
    if(location>SCREEN_SIZE){
80002b98:	fff78613          	addi	a2,a5,-1
80002b9c:	4c000e93          	li	t4,1216
        if(!putch(location + i, string[i],color)){
80002ba0:	00c50633          	add	a2,a0,a2
        if(string[i]=='\n'){
80002ba4:	04670c63          	beq	a4,t1,80002bfc <_Z8printHexiic+0x150>
    unsigned short buffer = (color << 8) | c;
80002ba8:	00869813          	slli	a6,a3,0x8
    screen[location] = buffer;
80002bac:	88000e37          	lui	t3,0x88000
80002bb0:	00161593          	slli	a1,a2,0x1
            color++;
80002bb4:	00168693          	addi	a3,a3,1
    screen[location] = buffer;
80002bb8:	01c585b3          	add	a1,a1,t3
    unsigned short buffer = (color << 8) | c;
80002bbc:	00e86833          	or	a6,a6,a4
            color++;
80002bc0:	0ff6f693          	zext.b	a3,a3
            if(color>15){
80002bc4:	00f00e13          	li	t3,15
    if(location<0){
80002bc8:	0a064663          	bltz	a2,80002c74 <_Z8printHexiic+0x1c8>
    if(location>SCREEN_SIZE){
80002bcc:	0ccec263          	blt	t4,a2,80002c90 <_Z8printHexiic+0x1e4>
    screen[location] = buffer;
80002bd0:	01059023          	sh	a6,0(a1)
            if(color>15){
80002bd4:	0cde6463          	bltu	t3,a3,80002c9c <_Z8printHexiic+0x1f0>
    while(string[i] != '\0'){
80002bd8:	0008c703          	lbu	a4,0(a7)
80002bdc:	00178613          	addi	a2,a5,1
80002be0:	00188893          	addi	a7,a7,1
80002be4:	0c070063          	beqz	a4,80002ca4 <_Z8printHexiic+0x1f8>
80002be8:	00060793          	mv	a5,a2
    if(location>SCREEN_SIZE){
80002bec:	fff78613          	addi	a2,a5,-1
80002bf0:	4c000e93          	li	t4,1216
        if(!putch(location + i, string[i],color)){
80002bf4:	00c50633          	add	a2,a0,a2
        if(string[i]=='\n'){
80002bf8:	fa6718e3          	bne	a4,t1,80002ba8 <_Z8printHexiic+0xfc>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002bfc:	fc057513          	andi	a0,a0,-64
80002c00:	04050513          	addi	a0,a0,64
            continue;
80002c04:	fd5ff06f          	j	80002bd8 <_Z8printHexiic+0x12c>
    while(string[i] != '\0'){
80002c08:	00110813          	addi	a6,sp,1
80002c0c:	00100793          	li	a5,1
80002c10:	08070063          	beqz	a4,80002c90 <_Z8printHexiic+0x1e4>
80002c14:	fff78693          	addi	a3,a5,-1
        if(string[i]=='\n'){
80002c18:	00a00893          	li	a7,10
    unsigned short buffer = (color << 8) | c;
80002c1c:	00861613          	slli	a2,a2,0x8
    if(location>SCREEN_SIZE){
80002c20:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80002c24:	88000e37          	lui	t3,0x88000
        if(!putch(location + i, string[i],color)){
80002c28:	00a686b3          	add	a3,a3,a0
        if(string[i]=='\n'){
80002c2c:	03170e63          	beq	a4,a7,80002c68 <_Z8printHexiic+0x1bc>
    screen[location] = buffer;
80002c30:	00169593          	slli	a1,a3,0x1
    unsigned short buffer = (color << 8) | c;
80002c34:	00e66333          	or	t1,a2,a4
    screen[location] = buffer;
80002c38:	01c585b3          	add	a1,a1,t3
    if(location<0){
80002c3c:	0206cc63          	bltz	a3,80002c74 <_Z8printHexiic+0x1c8>
    if(location>SCREEN_SIZE){
80002c40:	04dec863          	blt	t4,a3,80002c90 <_Z8printHexiic+0x1e4>
    screen[location] = buffer;
80002c44:	00659023          	sh	t1,0(a1)
    while(string[i] != '\0'){
80002c48:	00084703          	lbu	a4,0(a6)
80002c4c:	00178693          	addi	a3,a5,1
80002c50:	00180813          	addi	a6,a6,1
80002c54:	04070863          	beqz	a4,80002ca4 <_Z8printHexiic+0x1f8>
80002c58:	00068793          	mv	a5,a3
    if(location>SCREEN_SIZE){
80002c5c:	fff78693          	addi	a3,a5,-1
        if(!putch(location + i, string[i],color)){
80002c60:	00a686b3          	add	a3,a3,a0
        if(string[i]=='\n'){
80002c64:	fd1716e3          	bne	a4,a7,80002c30 <_Z8printHexiic+0x184>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002c68:	fc057513          	andi	a0,a0,-64
80002c6c:	04050513          	addi	a0,a0,64
            continue;
80002c70:	fd9ff06f          	j	80002c48 <_Z8printHexiic+0x19c>
	return *( (volatile uint8_t *) addr );
80002c74:	100006b7          	lui	a3,0x10000
80002c78:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
80002c7c:	10000637          	lui	a2,0x10000
80002c80:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80002c84:	0207f793          	andi	a5,a5,32
80002c88:	fe078ce3          	beqz	a5,80002c80 <_Z8printHexiic+0x1d4>
	*( (uint8_t *) addr ) = b;
80002c8c:	00e60023          	sb	a4,0(a2) # 10000000 <_stack_size+0xfff8000>
                color=1;
80002c90:	00000513          	li	a0,0
    }
    return printString(location, buffer, color);
}
80002c94:	02010113          	addi	sp,sp,32
80002c98:	00008067          	ret
                color=1;
80002c9c:	00100693          	li	a3,1
80002ca0:	f39ff06f          	j	80002bd8 <_Z8printHexiic+0x12c>
    return printString(location, buffer, color);
80002ca4:	0ff7f513          	zext.b	a0,a5
80002ca8:	fedff06f          	j	80002c94 <_Z8printHexiic+0x1e8>

80002cac <_Z8printDeciic>:

// *****************************************************************************
// Prints the decimal value at the specified location. If color is 0, it will print in rainbow colors
unsigned char printDec(int location, int num, char color) {
80002cac:	fd010113          	addi	sp,sp,-48
80002cb0:	02812423          	sw	s0,40(sp)
80002cb4:	03212023          	sw	s2,32(sp)
80002cb8:	02112623          	sw	ra,44(sp)
80002cbc:	00050413          	mv	s0,a0
80002cc0:	00060913          	mv	s2,a2
    char digits[12]; // Enough for -2147483648 + null terminator
    int index = 0;
    int isNegative = 0;

    // Handle zero explicitly
    if (num == 0) {
80002cc4:	3a058863          	beqz	a1,80003074 <_Z8printDeciic+0x3c8>
80002cc8:	02912223          	sw	s1,36(sp)
80002ccc:	01312e23          	sw	s3,28(sp)
80002cd0:	01412c23          	sw	s4,24(sp)
80002cd4:	01512a23          	sw	s5,20(sp)
80002cd8:	01612823          	sw	s6,16(sp)
80002cdc:	00058493          	mv	s1,a1
        digits[index] = '\0';
        return printString(location, digits, color);
    }

    // Handle negative numbers
    if (num < 0) {
80002ce0:	2a05c863          	bltz	a1,80002f90 <_Z8printDeciic+0x2e4>
    }

    // Convert number to string in reverse
    unsigned int absNum = (unsigned int)num;
    while (absNum > 0) {
        digits[index++] = '0' + (absNum % 10);
80002ce4:	00a00593          	li	a1,10
80002ce8:	00048513          	mv	a0,s1
80002cec:	02d070ef          	jal	8000a518 <__umodsi3>
80002cf0:	03050993          	addi	s3,a0,48
80002cf4:	0ff9f993          	zext.b	s3,s3
        absNum /= 10;
80002cf8:	00048513          	mv	a0,s1
80002cfc:	00a00593          	li	a1,10
        digits[index++] = '0' + (absNum % 10);
80002d00:	01310223          	sb	s3,4(sp)
        absNum /= 10;
80002d04:	7cc070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002d08:	00900793          	li	a5,9
    unsigned int absNum = (unsigned int)num;
80002d0c:	00048a13          	mv	s4,s1
        absNum /= 10;
80002d10:	00050a93          	mv	s5,a0
    while (absNum > 0) {
80002d14:	4c97f463          	bgeu	a5,s1,800031dc <_Z8printDeciic+0x530>
        digits[index++] = '0' + (absNum % 10);
80002d18:	00a00593          	li	a1,10
80002d1c:	7fc070ef          	jal	8000a518 <__umodsi3>
80002d20:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002d24:	00a00593          	li	a1,10
80002d28:	000a8513          	mv	a0,s5
        digits[index++] = '0' + (absNum % 10);
80002d2c:	00f102a3          	sb	a5,5(sp)
        absNum /= 10;
80002d30:	7a0070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002d34:	06300793          	li	a5,99
        absNum /= 10;
80002d38:	00050a93          	mv	s5,a0
    while (absNum > 0) {
80002d3c:	00000b13          	li	s6,0
80002d40:	4c97f063          	bgeu	a5,s1,80003200 <_Z8printDeciic+0x554>
        digits[index++] = '0' + (absNum % 10);
80002d44:	00a00593          	li	a1,10
80002d48:	000a8513          	mv	a0,s5
80002d4c:	7cc070ef          	jal	8000a518 <__umodsi3>
80002d50:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002d54:	00a00593          	li	a1,10
80002d58:	000a8513          	mv	a0,s5
        digits[index++] = '0' + (absNum % 10);
80002d5c:	00f10323          	sb	a5,6(sp)
        absNum /= 10;
80002d60:	770070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002d64:	3e700793          	li	a5,999
        absNum /= 10;
80002d68:	00050493          	mv	s1,a0
    while (absNum > 0) {
80002d6c:	3f47f863          	bgeu	a5,s4,8000315c <_Z8printDeciic+0x4b0>
        digits[index++] = '0' + (absNum % 10);
80002d70:	00a00593          	li	a1,10
80002d74:	7a4070ef          	jal	8000a518 <__umodsi3>
80002d78:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002d7c:	00a00593          	li	a1,10
80002d80:	00048513          	mv	a0,s1
        digits[index++] = '0' + (absNum % 10);
80002d84:	00f103a3          	sb	a5,7(sp)
        absNum /= 10;
80002d88:	748070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002d8c:	000027b7          	lui	a5,0x2
80002d90:	70f78793          	addi	a5,a5,1807 # 270f <_stack_size-0x58f1>
        absNum /= 10;
80002d94:	00050493          	mv	s1,a0
    while (absNum > 0) {
80002d98:	3f47f263          	bgeu	a5,s4,8000317c <_Z8printDeciic+0x4d0>
        digits[index++] = '0' + (absNum % 10);
80002d9c:	00a00593          	li	a1,10
80002da0:	778070ef          	jal	8000a518 <__umodsi3>
80002da4:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002da8:	00a00593          	li	a1,10
80002dac:	00048513          	mv	a0,s1
        digits[index++] = '0' + (absNum % 10);
80002db0:	00f10423          	sb	a5,8(sp)
        absNum /= 10;
80002db4:	71c070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002db8:	000187b7          	lui	a5,0x18
80002dbc:	69f78793          	addi	a5,a5,1695 # 1869f <_stack_size+0x1069f>
        absNum /= 10;
80002dc0:	00050493          	mv	s1,a0
    while (absNum > 0) {
80002dc4:	4147f263          	bgeu	a5,s4,800031c8 <_Z8printDeciic+0x51c>
        digits[index++] = '0' + (absNum % 10);
80002dc8:	00a00593          	li	a1,10
80002dcc:	74c070ef          	jal	8000a518 <__umodsi3>
80002dd0:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002dd4:	00a00593          	li	a1,10
80002dd8:	00048513          	mv	a0,s1
        digits[index++] = '0' + (absNum % 10);
80002ddc:	00f104a3          	sb	a5,9(sp)
        absNum /= 10;
80002de0:	6f0070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002de4:	000f47b7          	lui	a5,0xf4
80002de8:	23f78793          	addi	a5,a5,575 # f423f <_stack_size+0xec23f>
        absNum /= 10;
80002dec:	00050493          	mv	s1,a0
    while (absNum > 0) {
80002df0:	3f47fe63          	bgeu	a5,s4,800031ec <_Z8printDeciic+0x540>
        digits[index++] = '0' + (absNum % 10);
80002df4:	00a00593          	li	a1,10
80002df8:	720070ef          	jal	8000a518 <__umodsi3>
80002dfc:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002e00:	00a00593          	li	a1,10
80002e04:	00048513          	mv	a0,s1
        digits[index++] = '0' + (absNum % 10);
80002e08:	00f10523          	sb	a5,10(sp)
        absNum /= 10;
80002e0c:	6c4070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002e10:	009897b7          	lui	a5,0x989
80002e14:	67f78793          	addi	a5,a5,1663 # 98967f <_stack_size+0x98167f>
        absNum /= 10;
80002e18:	00050493          	mv	s1,a0
    while (absNum > 0) {
80002e1c:	3f47f863          	bgeu	a5,s4,8000320c <_Z8printDeciic+0x560>
        digits[index++] = '0' + (absNum % 10);
80002e20:	00a00593          	li	a1,10
80002e24:	6f4070ef          	jal	8000a518 <__umodsi3>
80002e28:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002e2c:	00a00593          	li	a1,10
80002e30:	00048513          	mv	a0,s1
        digits[index++] = '0' + (absNum % 10);
80002e34:	00f105a3          	sb	a5,11(sp)
        absNum /= 10;
80002e38:	698070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002e3c:	05f5e7b7          	lui	a5,0x5f5e
80002e40:	0ff78793          	addi	a5,a5,255 # 5f5e0ff <_stack_size+0x5f560ff>
        absNum /= 10;
80002e44:	00050493          	mv	s1,a0
    while (absNum > 0) {
80002e48:	3f47f663          	bgeu	a5,s4,80003234 <_Z8printDeciic+0x588>
        digits[index++] = '0' + (absNum % 10);
80002e4c:	00a00593          	li	a1,10
80002e50:	6c8070ef          	jal	8000a518 <__umodsi3>
80002e54:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002e58:	00a00593          	li	a1,10
80002e5c:	00048513          	mv	a0,s1
        digits[index++] = '0' + (absNum % 10);
80002e60:	00f10623          	sb	a5,12(sp)
        absNum /= 10;
80002e64:	66c070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002e68:	3b9ad7b7          	lui	a5,0x3b9ad
80002e6c:	9ff78793          	addi	a5,a5,-1537 # 3b9ac9ff <_stack_size+0x3b9a49ff>
80002e70:	3f47f063          	bgeu	a5,s4,80003250 <_Z8printDeciic+0x5a4>
        digits[index++] = '0' + (absNum % 10);
80002e74:	03050513          	addi	a0,a0,48
80002e78:	00a106a3          	sb	a0,13(sp)
    }

    if (isNegative) {
80002e7c:	240b1263          	bnez	s6,800030c0 <_Z8printDeciic+0x414>
        digits[index++] = '-';
    }

    digits[index] = '\0';
80002e80:	00010723          	sb	zero,14(sp)

    // Reverse the string
    for (int i = 0; i < index / 2; i++) {
80002e84:	00500693          	li	a3,5
        digits[index++] = '0' + (absNum % 10);
80002e88:	00900793          	li	a5,9
        char tmp = digits[i];
        digits[i] = digits[index - 1 - i];
80002e8c:	00278733          	add	a4,a5,sp
80002e90:	00474603          	lbu	a2,4(a4)
        digits[index - 1 - i] = tmp;
80002e94:	01370223          	sb	s3,4(a4)
        digits[i] = digits[index - 1 - i];
80002e98:	00c10223          	sb	a2,4(sp)
80002e9c:	00278733          	add	a4,a5,sp
80002ea0:	00374503          	lbu	a0,3(a4)
        char tmp = digits[i];
80002ea4:	00514583          	lbu	a1,5(sp)
    for (int i = 0; i < index / 2; i++) {
80002ea8:	00200613          	li	a2,2
        digits[i] = digits[index - 1 - i];
80002eac:	00a102a3          	sb	a0,5(sp)
        digits[index - 1 - i] = tmp;
80002eb0:	00b701a3          	sb	a1,3(a4)
    for (int i = 0; i < index / 2; i++) {
80002eb4:	04c68863          	beq	a3,a2,80002f04 <_Z8printDeciic+0x258>
        digits[i] = digits[index - 1 - i];
80002eb8:	00278733          	add	a4,a5,sp
80002ebc:	00274503          	lbu	a0,2(a4)
        char tmp = digits[i];
80002ec0:	00614583          	lbu	a1,6(sp)
    for (int i = 0; i < index / 2; i++) {
80002ec4:	00300613          	li	a2,3
        digits[i] = digits[index - 1 - i];
80002ec8:	00a10323          	sb	a0,6(sp)
        digits[index - 1 - i] = tmp;
80002ecc:	00b70123          	sb	a1,2(a4)
    for (int i = 0; i < index / 2; i++) {
80002ed0:	02c68a63          	beq	a3,a2,80002f04 <_Z8printDeciic+0x258>
        digits[i] = digits[index - 1 - i];
80002ed4:	00278733          	add	a4,a5,sp
80002ed8:	00174503          	lbu	a0,1(a4)
        char tmp = digits[i];
80002edc:	00714583          	lbu	a1,7(sp)
    for (int i = 0; i < index / 2; i++) {
80002ee0:	00500613          	li	a2,5
        digits[i] = digits[index - 1 - i];
80002ee4:	00a103a3          	sb	a0,7(sp)
        digits[index - 1 - i] = tmp;
80002ee8:	00b700a3          	sb	a1,1(a4)
    for (int i = 0; i < index / 2; i++) {
80002eec:	00c69c63          	bne	a3,a2,80002f04 <_Z8printDeciic+0x258>
        digits[i] = digits[index - 1 - i];
80002ef0:	002787b3          	add	a5,a5,sp
80002ef4:	0007c683          	lbu	a3,0(a5)
        char tmp = digits[i];
80002ef8:	00814703          	lbu	a4,8(sp)
        digits[i] = digits[index - 1 - i];
80002efc:	00d10423          	sb	a3,8(sp)
        digits[index - 1 - i] = tmp;
80002f00:	00e78023          	sb	a4,0(a5)
    if(color==0){
80002f04:	10091063          	bnez	s2,80003004 <_Z8printDeciic+0x358>
    while(string[i] != '\0'){
80002f08:	00414703          	lbu	a4,4(sp)
80002f0c:	1e070663          	beqz	a4,800030f8 <_Z8printDeciic+0x44c>
80002f10:	00100793          	li	a5,1
80002f14:	fff78693          	addi	a3,a5,-1
        if(string[i]=='\n'){
80002f18:	00a00313          	li	t1,10
        color=1;
80002f1c:	00078613          	mv	a2,a5
80002f20:	00510813          	addi	a6,sp,5
    if(location>SCREEN_SIZE){
80002f24:	4c000e13          	li	t3,1216
        if(!putch(location + i, string[i],color)){
80002f28:	00d406b3          	add	a3,s0,a3
        if(string[i]=='\n'){
80002f2c:	04670c63          	beq	a4,t1,80002f84 <_Z8printDeciic+0x2d8>
    unsigned short buffer = (color << 8) | c;
80002f30:	00861513          	slli	a0,a2,0x8
    screen[location] = buffer;
80002f34:	880008b7          	lui	a7,0x88000
80002f38:	00169593          	slli	a1,a3,0x1
            color++;
80002f3c:	00160613          	addi	a2,a2,1
    screen[location] = buffer;
80002f40:	011585b3          	add	a1,a1,a7
    unsigned short buffer = (color << 8) | c;
80002f44:	00e56533          	or	a0,a0,a4
            color++;
80002f48:	0ff67613          	zext.b	a2,a2
            if(color>15){
80002f4c:	00f00893          	li	a7,15
    if(location<0){
80002f50:	1806c663          	bltz	a3,800030dc <_Z8printDeciic+0x430>
    if(location>SCREEN_SIZE){
80002f54:	1ade4263          	blt	t3,a3,800030f8 <_Z8printDeciic+0x44c>
    screen[location] = buffer;
80002f58:	00a59023          	sh	a0,0(a1)
            if(color>15){
80002f5c:	00c8f463          	bgeu	a7,a2,80002f64 <_Z8printDeciic+0x2b8>
                color=1;
80002f60:	00100613          	li	a2,1
    while(string[i] != '\0'){
80002f64:	00084703          	lbu	a4,0(a6)
80002f68:	00178693          	addi	a3,a5,1
80002f6c:	00180813          	addi	a6,a6,1
80002f70:	2c070c63          	beqz	a4,80003248 <_Z8printDeciic+0x59c>
80002f74:	00068793          	mv	a5,a3
    if(location>SCREEN_SIZE){
80002f78:	fff78693          	addi	a3,a5,-1
        if(!putch(location + i, string[i],color)){
80002f7c:	00d406b3          	add	a3,s0,a3
        if(string[i]=='\n'){
80002f80:	fa6718e3          	bne	a4,t1,80002f30 <_Z8printDeciic+0x284>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002f84:	fc047413          	andi	s0,s0,-64
80002f88:	04040413          	addi	s0,s0,64 # 10040 <_stack_size+0x8040>
            continue;
80002f8c:	fd9ff06f          	j	80002f64 <_Z8printDeciic+0x2b8>
        unsigned int absNum = (unsigned int)(-((long)num));
80002f90:	40b00a33          	neg	s4,a1
        digits[index++] = '0' + (absNum % 10);
80002f94:	000a0513          	mv	a0,s4
80002f98:	00a00593          	li	a1,10
80002f9c:	57c070ef          	jal	8000a518 <__umodsi3>
80002fa0:	03050993          	addi	s3,a0,48
80002fa4:	0ff9f993          	zext.b	s3,s3
        absNum /= 10;
80002fa8:	000a0513          	mv	a0,s4
80002fac:	00a00593          	li	a1,10
        digits[index++] = '0' + (absNum % 10);
80002fb0:	01310223          	sb	s3,4(sp)
        absNum /= 10;
80002fb4:	51c070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002fb8:	ff700793          	li	a5,-9
        absNum /= 10;
80002fbc:	00050a93          	mv	s5,a0
    while (absNum > 0) {
80002fc0:	26f4d063          	bge	s1,a5,80003220 <_Z8printDeciic+0x574>
        digits[index++] = '0' + (absNum % 10);
80002fc4:	00a00593          	li	a1,10
80002fc8:	550070ef          	jal	8000a518 <__umodsi3>
80002fcc:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002fd0:	00a00593          	li	a1,10
80002fd4:	000a8513          	mv	a0,s5
        digits[index++] = '0' + (absNum % 10);
80002fd8:	00f102a3          	sb	a5,5(sp)
        absNum /= 10;
80002fdc:	4f4070ef          	jal	8000a4d0 <__hidden___udivsi3>
    while (absNum > 0) {
80002fe0:	06300793          	li	a5,99
        absNum /= 10;
80002fe4:	00050a93          	mv	s5,a0
        isNegative = 1;
80002fe8:	00100b13          	li	s6,1
    while (absNum > 0) {
80002fec:	d547ece3          	bltu	a5,s4,80002d44 <_Z8printDeciic+0x98>
        digits[index++] = '-';
80002ff0:	02d00793          	li	a5,45
80002ff4:	00f11323          	sh	a5,6(sp)
        digits[i] = digits[index - 1 - i];
80002ff8:	00f10223          	sb	a5,4(sp)
        digits[index - 1 - i] = tmp;
80002ffc:	01310323          	sb	s3,6(sp)
    if(color==0){
80003000:	f00904e3          	beqz	s2,80002f08 <_Z8printDeciic+0x25c>
    while(string[i] != '\0'){
80003004:	00414703          	lbu	a4,4(sp)
80003008:	00510593          	addi	a1,sp,5
8000300c:	00100793          	li	a5,1
80003010:	0e070463          	beqz	a4,800030f8 <_Z8printDeciic+0x44c>
80003014:	fff78693          	addi	a3,a5,-1
        if(string[i]=='\n'){
80003018:	00a00513          	li	a0,10
    unsigned short buffer = (color << 8) | c;
8000301c:	00891913          	slli	s2,s2,0x8
    if(location>SCREEN_SIZE){
80003020:	4c000313          	li	t1,1216
    screen[location] = buffer;
80003024:	880008b7          	lui	a7,0x88000
        if(!putch(location + i, string[i],color)){
80003028:	008686b3          	add	a3,a3,s0
        if(string[i]=='\n'){
8000302c:	02a70e63          	beq	a4,a0,80003068 <_Z8printDeciic+0x3bc>
    screen[location] = buffer;
80003030:	00169613          	slli	a2,a3,0x1
    unsigned short buffer = (color << 8) | c;
80003034:	00e96833          	or	a6,s2,a4
    screen[location] = buffer;
80003038:	01160633          	add	a2,a2,a7
    if(location<0){
8000303c:	0a06c063          	bltz	a3,800030dc <_Z8printDeciic+0x430>
    if(location>SCREEN_SIZE){
80003040:	0ad34c63          	blt	t1,a3,800030f8 <_Z8printDeciic+0x44c>
    screen[location] = buffer;
80003044:	01061023          	sh	a6,0(a2)
    while(string[i] != '\0'){
80003048:	0005c703          	lbu	a4,0(a1)
8000304c:	00178693          	addi	a3,a5,1
80003050:	00158593          	addi	a1,a1,1
80003054:	1e070a63          	beqz	a4,80003248 <_Z8printDeciic+0x59c>
80003058:	00068793          	mv	a5,a3
    if(location>SCREEN_SIZE){
8000305c:	fff78693          	addi	a3,a5,-1
        if(!putch(location + i, string[i],color)){
80003060:	008686b3          	add	a3,a3,s0
        if(string[i]=='\n'){
80003064:	fca716e3          	bne	a4,a0,80003030 <_Z8printDeciic+0x384>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003068:	fc047413          	andi	s0,s0,-64
8000306c:	04040413          	addi	s0,s0,64
            continue;
80003070:	fd9ff06f          	j	80003048 <_Z8printDeciic+0x39c>
    if(color==0){
80003074:	0ff67793          	zext.b	a5,a2
80003078:	04060063          	beqz	a2,800030b8 <_Z8printDeciic+0x40c>
    if(location<0){
8000307c:	0a044463          	bltz	s0,80003124 <_Z8printDeciic+0x478>
    if(location>SCREEN_SIZE){
80003080:	4c000713          	li	a4,1216
80003084:	0c874063          	blt	a4,s0,80003144 <_Z8printDeciic+0x498>
    unsigned short buffer = (color << 8) | c;
80003088:	00879793          	slli	a5,a5,0x8
    screen[location] = buffer;
8000308c:	00141413          	slli	s0,s0,0x1
80003090:	88000737          	lui	a4,0x88000
80003094:	00e40433          	add	s0,s0,a4
    unsigned short buffer = (color << 8) | c;
80003098:	0307e793          	ori	a5,a5,48
    }

    return printString(location, digits, color);
}
8000309c:	02c12083          	lw	ra,44(sp)
    screen[location] = buffer;
800030a0:	00f41023          	sh	a5,0(s0)
}
800030a4:	02812403          	lw	s0,40(sp)
800030a8:	02012903          	lw	s2,32(sp)
    screen[location] = buffer;
800030ac:	00100513          	li	a0,1
}
800030b0:	03010113          	addi	sp,sp,48
800030b4:	00008067          	ret
    if(color==0){
800030b8:	00100793          	li	a5,1
800030bc:	fc1ff06f          	j	8000307c <_Z8printDeciic+0x3d0>
        digits[index++] = '-';
800030c0:	02d00793          	li	a5,45
800030c4:	00f11723          	sh	a5,14(sp)
        digits[i] = digits[index - 1 - i];
800030c8:	00f10223          	sb	a5,4(sp)
        digits[index - 1 - i] = tmp;
800030cc:	01310723          	sb	s3,14(sp)
    for (int i = 0; i < index / 2; i++) {
800030d0:	00500693          	li	a3,5
        digits[index++] = '0' + (absNum % 10);
800030d4:	00a00793          	li	a5,10
800030d8:	dc5ff06f          	j	80002e9c <_Z8printDeciic+0x1f0>
	return *( (volatile uint8_t *) addr );
800030dc:	100006b7          	lui	a3,0x10000
800030e0:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
800030e4:	10000637          	lui	a2,0x10000
800030e8:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800030ec:	0207f793          	andi	a5,a5,32
800030f0:	fe078ce3          	beqz	a5,800030e8 <_Z8printDeciic+0x43c>
	*( (uint8_t *) addr ) = b;
800030f4:	00e60023          	sb	a4,0(a2) # 10000000 <_stack_size+0xfff8000>
                color=1;
800030f8:	00000513          	li	a0,0
}
800030fc:	02c12083          	lw	ra,44(sp)
80003100:	02812403          	lw	s0,40(sp)
    return printString(location, digits, color);
80003104:	02412483          	lw	s1,36(sp)
80003108:	01c12983          	lw	s3,28(sp)
8000310c:	01812a03          	lw	s4,24(sp)
80003110:	01412a83          	lw	s5,20(sp)
80003114:	01012b03          	lw	s6,16(sp)
}
80003118:	02012903          	lw	s2,32(sp)
8000311c:	03010113          	addi	sp,sp,48
80003120:	00008067          	ret
	return *( (volatile uint8_t *) addr );
80003124:	10000737          	lui	a4,0x10000
80003128:	00570713          	addi	a4,a4,5 # 10000005 <_stack_size+0xfff8005>
8000312c:	100006b7          	lui	a3,0x10000
80003130:	00074783          	lbu	a5,0(a4)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003134:	0207f793          	andi	a5,a5,32
80003138:	fe078ce3          	beqz	a5,80003130 <_Z8printDeciic+0x484>
	*( (uint8_t *) addr ) = b;
8000313c:	03000793          	li	a5,48
80003140:	00f68023          	sb	a5,0(a3) # 10000000 <_stack_size+0xfff8000>
}
80003144:	02c12083          	lw	ra,44(sp)
80003148:	02812403          	lw	s0,40(sp)
8000314c:	02012903          	lw	s2,32(sp)
unsigned char printDec(int location, int num, char color) {
80003150:	00000513          	li	a0,0
}
80003154:	03010113          	addi	sp,sp,48
80003158:	00008067          	ret
    if (isNegative) {
8000315c:	020b1a63          	bnez	s6,80003190 <_Z8printDeciic+0x4e4>
    digits[index] = '\0';
80003160:	000103a3          	sb	zero,7(sp)
        digits[index++] = '0' + (absNum % 10);
80003164:	00200793          	li	a5,2
        digits[i] = digits[index - 1 - i];
80003168:	002787b3          	add	a5,a5,sp
8000316c:	0047c703          	lbu	a4,4(a5)
        digits[index - 1 - i] = tmp;
80003170:	01378223          	sb	s3,4(a5)
        digits[i] = digits[index - 1 - i];
80003174:	00e10223          	sb	a4,4(sp)
    for (int i = 0; i < index / 2; i++) {
80003178:	d8dff06f          	j	80002f04 <_Z8printDeciic+0x258>
    if (isNegative) {
8000317c:	020b1863          	bnez	s6,800031ac <_Z8printDeciic+0x500>
    digits[index] = '\0';
80003180:	00010423          	sb	zero,8(sp)
    for (int i = 0; i < index / 2; i++) {
80003184:	00200693          	li	a3,2
        digits[index++] = '0' + (absNum % 10);
80003188:	00300793          	li	a5,3
8000318c:	d01ff06f          	j	80002e8c <_Z8printDeciic+0x1e0>
        digits[index++] = '-';
80003190:	02d00793          	li	a5,45
        digits[i] = digits[index - 1 - i];
80003194:	00f10223          	sb	a5,4(sp)
    digits[index] = '\0';
80003198:	00010423          	sb	zero,8(sp)
        digits[index - 1 - i] = tmp;
8000319c:	013103a3          	sb	s3,7(sp)
    for (int i = 0; i < index / 2; i++) {
800031a0:	00200693          	li	a3,2
        digits[index++] = '0' + (absNum % 10);
800031a4:	00300793          	li	a5,3
800031a8:	cf5ff06f          	j	80002e9c <_Z8printDeciic+0x1f0>
        digits[index++] = '-';
800031ac:	02d00793          	li	a5,45
800031b0:	00f11423          	sh	a5,8(sp)
        digits[i] = digits[index - 1 - i];
800031b4:	00f10223          	sb	a5,4(sp)
        digits[index - 1 - i] = tmp;
800031b8:	01310423          	sb	s3,8(sp)
    for (int i = 0; i < index / 2; i++) {
800031bc:	00200693          	li	a3,2
        digits[index++] = '0' + (absNum % 10);
800031c0:	00400793          	li	a5,4
800031c4:	cd9ff06f          	j	80002e9c <_Z8printDeciic+0x1f0>
    if (isNegative) {
800031c8:	080b1e63          	bnez	s6,80003264 <_Z8printDeciic+0x5b8>
    digits[index] = '\0';
800031cc:	000104a3          	sb	zero,9(sp)
    for (int i = 0; i < index / 2; i++) {
800031d0:	00200693          	li	a3,2
        digits[index++] = '0' + (absNum % 10);
800031d4:	00400793          	li	a5,4
800031d8:	cb5ff06f          	j	80002e8c <_Z8printDeciic+0x1e0>
    digits[index] = '\0';
800031dc:	000102a3          	sb	zero,5(sp)
    if(color==0){
800031e0:	e20912e3          	bnez	s2,80003004 <_Z8printDeciic+0x358>
    while(string[i] != '\0'){
800031e4:	00414703          	lbu	a4,4(sp)
800031e8:	d29ff06f          	j	80002f10 <_Z8printDeciic+0x264>
    if (isNegative) {
800031ec:	080b1a63          	bnez	s6,80003280 <_Z8printDeciic+0x5d4>
    digits[index] = '\0';
800031f0:	00010523          	sb	zero,10(sp)
    for (int i = 0; i < index / 2; i++) {
800031f4:	00300693          	li	a3,3
        digits[index++] = '0' + (absNum % 10);
800031f8:	00500793          	li	a5,5
800031fc:	c91ff06f          	j	80002e8c <_Z8printDeciic+0x1e0>
    digits[index] = '\0';
80003200:	00010323          	sb	zero,6(sp)
        digits[index++] = '0' + (absNum % 10);
80003204:	00100793          	li	a5,1
80003208:	f61ff06f          	j	80003168 <_Z8printDeciic+0x4bc>
    if (isNegative) {
8000320c:	080b1863          	bnez	s6,8000329c <_Z8printDeciic+0x5f0>
    digits[index] = '\0';
80003210:	000105a3          	sb	zero,11(sp)
    for (int i = 0; i < index / 2; i++) {
80003214:	00300693          	li	a3,3
        digits[index++] = '0' + (absNum % 10);
80003218:	00600793          	li	a5,6
8000321c:	c71ff06f          	j	80002e8c <_Z8printDeciic+0x1e0>
        digits[index++] = '-';
80003220:	02d00793          	li	a5,45
    digits[index] = '\0';
80003224:	00010323          	sb	zero,6(sp)
        digits[index - 1 - i] = tmp;
80003228:	013102a3          	sb	s3,5(sp)
        digits[i] = digits[index - 1 - i];
8000322c:	00f10223          	sb	a5,4(sp)
    for (int i = 0; i < index / 2; i++) {
80003230:	cd5ff06f          	j	80002f04 <_Z8printDeciic+0x258>
    if (isNegative) {
80003234:	080b1263          	bnez	s6,800032b8 <_Z8printDeciic+0x60c>
    digits[index] = '\0';
80003238:	00010623          	sb	zero,12(sp)
    for (int i = 0; i < index / 2; i++) {
8000323c:	00400693          	li	a3,4
        digits[index++] = '0' + (absNum % 10);
80003240:	00700793          	li	a5,7
80003244:	c49ff06f          	j	80002e8c <_Z8printDeciic+0x1e0>
    return printString(location, digits, color);
80003248:	0ff7f513          	zext.b	a0,a5
8000324c:	eb1ff06f          	j	800030fc <_Z8printDeciic+0x450>
    if (isNegative) {
80003250:	080b1263          	bnez	s6,800032d4 <_Z8printDeciic+0x628>
    digits[index] = '\0';
80003254:	000106a3          	sb	zero,13(sp)
    for (int i = 0; i < index / 2; i++) {
80003258:	00400693          	li	a3,4
        digits[index++] = '0' + (absNum % 10);
8000325c:	00800793          	li	a5,8
80003260:	c2dff06f          	j	80002e8c <_Z8printDeciic+0x1e0>
        digits[index++] = '-';
80003264:	02d00793          	li	a5,45
        digits[i] = digits[index - 1 - i];
80003268:	00f10223          	sb	a5,4(sp)
    digits[index] = '\0';
8000326c:	00010523          	sb	zero,10(sp)
        digits[index - 1 - i] = tmp;
80003270:	013104a3          	sb	s3,9(sp)
    for (int i = 0; i < index / 2; i++) {
80003274:	00300693          	li	a3,3
        digits[index++] = '0' + (absNum % 10);
80003278:	00500793          	li	a5,5
8000327c:	c21ff06f          	j	80002e9c <_Z8printDeciic+0x1f0>
        digits[index++] = '-';
80003280:	02d00793          	li	a5,45
80003284:	00f11523          	sh	a5,10(sp)
        digits[i] = digits[index - 1 - i];
80003288:	00f10223          	sb	a5,4(sp)
        digits[index - 1 - i] = tmp;
8000328c:	01310523          	sb	s3,10(sp)
    for (int i = 0; i < index / 2; i++) {
80003290:	00300693          	li	a3,3
        digits[index++] = '0' + (absNum % 10);
80003294:	00600793          	li	a5,6
80003298:	c05ff06f          	j	80002e9c <_Z8printDeciic+0x1f0>
        digits[index++] = '-';
8000329c:	02d00793          	li	a5,45
        digits[i] = digits[index - 1 - i];
800032a0:	00f10223          	sb	a5,4(sp)
    digits[index] = '\0';
800032a4:	00010623          	sb	zero,12(sp)
        digits[index - 1 - i] = tmp;
800032a8:	013105a3          	sb	s3,11(sp)
    for (int i = 0; i < index / 2; i++) {
800032ac:	00400693          	li	a3,4
        digits[index++] = '0' + (absNum % 10);
800032b0:	00700793          	li	a5,7
800032b4:	be9ff06f          	j	80002e9c <_Z8printDeciic+0x1f0>
        digits[index++] = '-';
800032b8:	02d00793          	li	a5,45
800032bc:	00f11623          	sh	a5,12(sp)
        digits[i] = digits[index - 1 - i];
800032c0:	00f10223          	sb	a5,4(sp)
        digits[index - 1 - i] = tmp;
800032c4:	01310623          	sb	s3,12(sp)
    for (int i = 0; i < index / 2; i++) {
800032c8:	00400693          	li	a3,4
        digits[index++] = '0' + (absNum % 10);
800032cc:	00800793          	li	a5,8
800032d0:	bcdff06f          	j	80002e9c <_Z8printDeciic+0x1f0>
        digits[index++] = '-';
800032d4:	02d00793          	li	a5,45
        digits[i] = digits[index - 1 - i];
800032d8:	00f10223          	sb	a5,4(sp)
    digits[index] = '\0';
800032dc:	00010723          	sb	zero,14(sp)
        digits[index - 1 - i] = tmp;
800032e0:	013106a3          	sb	s3,13(sp)
    for (int i = 0; i < index / 2; i++) {
800032e4:	00500693          	li	a3,5
        digits[index++] = '0' + (absNum % 10);
800032e8:	00900793          	li	a5,9
800032ec:	bb1ff06f          	j	80002e9c <_Z8printDeciic+0x1f0>

800032f0 <_Z6printfPKcz>:
// It returns the location of the next character to be printed

// General purpose variable to track where to print on the screen
short screenPos;
int printf(const char* str, ...) 
{ 
800032f0:	f8010113          	addi	sp,sp,-128
800032f4:	04912a23          	sw	s1,84(sp)
800032f8:	04112e23          	sw	ra,92(sp)
    char color=15;
    // initializing list pointer 
    va_list ptr; 
    va_start(ptr, str);  
    int i=0;
    for (i = 0; str[i] != '\0'; i++) {
800032fc:	00054303          	lbu	t1,0(a0)
{ 
80003300:	00050493          	mv	s1,a0
    va_start(ptr, str);  
80003304:	06410513          	addi	a0,sp,100
80003308:	00a12623          	sw	a0,12(sp)
{ 
8000330c:	06b12223          	sw	a1,100(sp)
80003310:	06c12423          	sw	a2,104(sp)
80003314:	06d12623          	sw	a3,108(sp)
80003318:	06e12823          	sw	a4,112(sp)
8000331c:	06f12a23          	sw	a5,116(sp)
80003320:	07012c23          	sw	a6,120(sp)
80003324:	07112e23          	sw	a7,124(sp)
        }
    } 
  
    // ending traversal 
    va_end(ptr); 
    return screenPos; 
80003328:	00008517          	auipc	a0,0x8
8000332c:	fae51503          	lh	a0,-82(a0) # 8000b2d6 <screenPos>
    for (i = 0; str[i] != '\0'; i++) {
80003330:	16030863          	beqz	t1,800034a0 <_Z6printfPKcz+0x1b0>
80003334:	05212823          	sw	s2,80(sp)
80003338:	05612023          	sw	s6,64(sp)
	return *( (volatile uint8_t *) addr );
8000333c:	10000937          	lui	s2,0x10000
    unsigned short buffer = (color << 8) | c;
80003340:	00001b37          	lui	s6,0x1
80003344:	04812c23          	sw	s0,88(sp)
80003348:	05312623          	sw	s3,76(sp)
8000334c:	05412423          	sw	s4,72(sp)
80003350:	05512223          	sw	s5,68(sp)
80003354:	03712e23          	sw	s7,60(sp)
80003358:	03812c23          	sw	s8,56(sp)
8000335c:	03912a23          	sw	s9,52(sp)
	return *( (volatile uint8_t *) addr );
80003360:	00590913          	addi	s2,s2,5 # 10000005 <_stack_size+0xfff8005>
    unsigned short buffer = (color << 8) | c;
80003364:	f00b0b13          	addi	s6,s6,-256 # f00 <_stack_size-0x7100>
    for (i = 0; str[i] != '\0'; i++) {
80003368:	00000413          	li	s0,0
8000336c:	00000793          	li	a5,0
80003370:	00008a17          	auipc	s4,0x8
80003374:	f66a0a13          	addi	s4,s4,-154 # 8000b2d6 <screenPos>
        if(str[i]=='\n'){
80003378:	00a00993          	li	s3,10
        if(str[i]=='%'){
8000337c:	02500a93          	li	s5,37
	return *( (volatile uint8_t *) addr );
80003380:	10000cb7          	lui	s9,0x10000
    if(location>SCREEN_SIZE){
80003384:	4c000b93          	li	s7,1216
    screen[location] = buffer;
80003388:	88000c37          	lui	s8,0x88000
8000338c:	0480006f          	j	800033d4 <_Z6printfPKcz+0xe4>
    if(location<0){
80003390:	0a054463          	bltz	a0,80003438 <_Z6printfPKcz+0x148>
    if(location>SCREEN_SIZE){
80003394:	00abce63          	blt	s7,a0,800033b0 <_Z6printfPKcz+0xc0>
    screen[location] = buffer;
80003398:	00151793          	slli	a5,a0,0x1
8000339c:	018787b3          	add	a5,a5,s8
    unsigned short buffer = (color << 8) | c;
800033a0:	01636333          	or	t1,t1,s6
    screen[location] = buffer;
800033a4:	00679023          	sh	t1,0(a5)
            screenPos++;
800033a8:	00008517          	auipc	a0,0x8
800033ac:	f2e51503          	lh	a0,-210(a0) # 8000b2d6 <screenPos>
800033b0:	00150513          	addi	a0,a0,1
800033b4:	01051513          	slli	a0,a0,0x10
800033b8:	41055513          	srai	a0,a0,0x10
    for (i = 0; str[i] != '\0'; i++) {
800033bc:	00e487b3          	add	a5,s1,a4
            screenPos++;
800033c0:	00aa1023          	sh	a0,0(s4)
    for (i = 0; str[i] != '\0'; i++) {
800033c4:	0007c303          	lbu	t1,0(a5)
800033c8:	00070413          	mv	s0,a4
800033cc:	00070793          	mv	a5,a4
800033d0:	0a030663          	beqz	t1,8000347c <_Z6printfPKcz+0x18c>
                i++;
800033d4:	00140713          	addi	a4,s0,1
        if(str[i]=='\n'){
800033d8:	07330e63          	beq	t1,s3,80003454 <_Z6printfPKcz+0x164>
        if(str[i]=='%'){
800033dc:	fb531ae3          	bne	t1,s5,80003390 <_Z6printfPKcz+0xa0>
            if(str[i+1]=='x'){
800033e0:	00f487b3          	add	a5,s1,a5
800033e4:	0017c783          	lbu	a5,1(a5)
800033e8:	07800693          	li	a3,120
800033ec:	10d78e63          	beq	a5,a3,80003508 <_Z6printfPKcz+0x218>
            else if(str[i+1]=='d'){
800033f0:	06400693          	li	a3,100
800033f4:	26d78463          	beq	a5,a3,8000365c <_Z6printfPKcz+0x36c>
            else if(str[i+1]=='c'){
800033f8:	06300693          	li	a3,99
800033fc:	0ad78a63          	beq	a5,a3,800034b0 <_Z6printfPKcz+0x1c0>
            else if (str[i+1]=='s')
80003400:	07300693          	li	a3,115
80003404:	30d78263          	beq	a5,a3,80003708 <_Z6printfPKcz+0x418>
    if(location<0){
80003408:	2c054a63          	bltz	a0,800036dc <_Z6printfPKcz+0x3ec>
    if(location>SCREEN_SIZE){
8000340c:	4c000793          	li	a5,1216
80003410:	faa7c0e3          	blt	a5,a0,800033b0 <_Z6printfPKcz+0xc0>
    screen[location] = buffer;
80003414:	00151513          	slli	a0,a0,0x1
80003418:	880006b7          	lui	a3,0x88000
8000341c:	000017b7          	lui	a5,0x1
80003420:	00d50533          	add	a0,a0,a3
80003424:	f2578793          	addi	a5,a5,-219 # f25 <_stack_size-0x70db>
80003428:	00f51023          	sh	a5,0(a0)
                screenPos++;
8000342c:	00008517          	auipc	a0,0x8
80003430:	eaa51503          	lh	a0,-342(a0) # 8000b2d6 <screenPos>
    return 1;
80003434:	f7dff06f          	j	800033b0 <_Z6printfPKcz+0xc0>
	return *( (volatile uint8_t *) addr );
80003438:	00094783          	lbu	a5,0(s2)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
8000343c:	0207f793          	andi	a5,a5,32
80003440:	fe078ce3          	beqz	a5,80003438 <_Z6printfPKcz+0x148>
	*( (uint8_t *) addr ) = b;
80003444:	006c8023          	sb	t1,0(s9) # 10000000 <_stack_size+0xfff8000>
            screenPos++;
80003448:	00008517          	auipc	a0,0x8
8000344c:	e8e51503          	lh	a0,-370(a0) # 8000b2d6 <screenPos>
        return 0;
80003450:	f61ff06f          	j	800033b0 <_Z6printfPKcz+0xc0>
            screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
80003454:	fc057513          	andi	a0,a0,-64
80003458:	04050513          	addi	a0,a0,64
8000345c:	01051513          	slli	a0,a0,0x10
80003460:	41055513          	srai	a0,a0,0x10
    for (i = 0; str[i] != '\0'; i++) {
80003464:	00e487b3          	add	a5,s1,a4
            screenPos++;
80003468:	00aa1023          	sh	a0,0(s4)
    for (i = 0; str[i] != '\0'; i++) {
8000346c:	0007c303          	lbu	t1,0(a5)
80003470:	00070413          	mv	s0,a4
80003474:	00070793          	mv	a5,a4
80003478:	f4031ee3          	bnez	t1,800033d4 <_Z6printfPKcz+0xe4>
8000347c:	05812403          	lw	s0,88(sp)
80003480:	05012903          	lw	s2,80(sp)
80003484:	04c12983          	lw	s3,76(sp)
80003488:	04812a03          	lw	s4,72(sp)
8000348c:	04412a83          	lw	s5,68(sp)
80003490:	04012b03          	lw	s6,64(sp)
80003494:	03c12b83          	lw	s7,60(sp)
80003498:	03812c03          	lw	s8,56(sp)
8000349c:	03412c83          	lw	s9,52(sp)
}
800034a0:	05c12083          	lw	ra,92(sp)
800034a4:	05412483          	lw	s1,84(sp)
800034a8:	08010113          	addi	sp,sp,128
800034ac:	00008067          	ret
                char value=va_arg(ptr, int);
800034b0:	00c12783          	lw	a5,12(sp)
800034b4:	0007c683          	lbu	a3,0(a5)
800034b8:	00478793          	addi	a5,a5,4
800034bc:	00f12623          	sw	a5,12(sp)
                if(value=='\n'){
800034c0:	2f368863          	beq	a3,s3,800037b0 <_Z6printfPKcz+0x4c0>
    if(location<0){
800034c4:	2c054263          	bltz	a0,80003788 <_Z6printfPKcz+0x498>
    if(location>SCREEN_SIZE){
800034c8:	4c000793          	li	a5,1216
800034cc:	02a7c463          	blt	a5,a0,800034f4 <_Z6printfPKcz+0x204>
    unsigned short buffer = (color << 8) | c;
800034d0:	000017b7          	lui	a5,0x1
    screen[location] = buffer;
800034d4:	00151513          	slli	a0,a0,0x1
800034d8:	88000637          	lui	a2,0x88000
    unsigned short buffer = (color << 8) | c;
800034dc:	f0078793          	addi	a5,a5,-256 # f00 <_stack_size-0x7100>
    screen[location] = buffer;
800034e0:	00c50533          	add	a0,a0,a2
    unsigned short buffer = (color << 8) | c;
800034e4:	00f6e6b3          	or	a3,a3,a5
    screen[location] = buffer;
800034e8:	00d51023          	sh	a3,0(a0)
                screenPos++;
800034ec:	00008517          	auipc	a0,0x8
800034f0:	dea51503          	lh	a0,-534(a0) # 8000b2d6 <screenPos>
800034f4:	00150513          	addi	a0,a0,1
800034f8:	01051513          	slli	a0,a0,0x10
800034fc:	41055513          	srai	a0,a0,0x10
80003500:	00170713          	addi	a4,a4,1
80003504:	eb9ff06f          	j	800033bc <_Z6printfPKcz+0xcc>
                int value=va_arg(ptr, int);
80003508:	00c12883          	lw	a7,12(sp)
    char hexChars[] = "0123456789ABCDEF";
8000350c:	00007697          	auipc	a3,0x7
80003510:	36468693          	addi	a3,a3,868 # 8000a870 <__clzsi2+0x2f4>
80003514:	0006a803          	lw	a6,0(a3)
                int value=va_arg(ptr, int);
80003518:	0008a783          	lw	a5,0(a7) # 88000000 <_stack_end+0x7c00000>
    char hexChars[] = "0123456789ABCDEF";
8000351c:	0046a583          	lw	a1,4(a3)
80003520:	0086a603          	lw	a2,8(a3)
80003524:	00c6a683          	lw	a3,12(a3)
80003528:	01012e23          	sw	a6,28(sp)
8000352c:	02b12023          	sw	a1,32(sp)
80003530:	02d12423          	sw	a3,40(sp)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003534:	4147d693          	srai	a3,a5,0x14
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003538:	00f6f693          	andi	a3,a3,15
    char hexChars[] = "0123456789ABCDEF";
8000353c:	02c12223          	sw	a2,36(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003540:	002686b3          	add	a3,a3,sp
80003544:	01c6ce03          	lbu	t3,28(a3)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003548:	4187d693          	srai	a3,a5,0x18
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
8000354c:	00f6f693          	andi	a3,a3,15
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003550:	4047d313          	srai	t1,a5,0x4
80003554:	4087d813          	srai	a6,a5,0x8
80003558:	40c7d593          	srai	a1,a5,0xc
8000355c:	4107d613          	srai	a2,a5,0x10
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003560:	002686b3          	add	a3,a3,sp
80003564:	01c6ce83          	lbu	t4,28(a3)
80003568:	00f37313          	andi	t1,t1,15
8000356c:	00f7f693          	andi	a3,a5,15
80003570:	00f87813          	andi	a6,a6,15
80003574:	00f5f593          	andi	a1,a1,15
80003578:	00f67613          	andi	a2,a2,15
8000357c:	01c7d793          	srli	a5,a5,0x1c
                int value=va_arg(ptr, int);
80003580:	00488893          	addi	a7,a7,4
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003584:	002686b3          	add	a3,a3,sp
80003588:	002787b3          	add	a5,a5,sp
8000358c:	00230333          	add	t1,t1,sp
80003590:	00280833          	add	a6,a6,sp
80003594:	002585b3          	add	a1,a1,sp
80003598:	00260633          	add	a2,a2,sp
8000359c:	01c84803          	lbu	a6,28(a6)
800035a0:	01c34303          	lbu	t1,28(t1)
800035a4:	01c5c583          	lbu	a1,28(a1)
800035a8:	01c64603          	lbu	a2,28(a2) # 8800001c <_stack_end+0x7c0001c>
                int value=va_arg(ptr, int);
800035ac:	01112623          	sw	a7,12(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
800035b0:	01c6c883          	lbu	a7,28(a3)
800035b4:	01c7c683          	lbu	a3,28(a5)
    char hexChars[] = "0123456789ABCDEF";
800035b8:	00007797          	auipc	a5,0x7
800035bc:	2c87c783          	lbu	a5,712(a5) # 8000a880 <__clzsi2+0x304>
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
800035c0:	01010aa3          	sb	a6,21(sp)
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
800035c4:	00010c23          	sb	zero,24(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
800035c8:	00610b23          	sb	t1,22(sp)
800035cc:	00b10a23          	sb	a1,20(sp)
800035d0:	00c109a3          	sb	a2,19(sp)
800035d4:	01c10923          	sb	t3,18(sp)
800035d8:	01d108a3          	sb	t4,17(sp)
800035dc:	01110ba3          	sb	a7,23(sp)
800035e0:	00d10823          	sb	a3,16(sp)
    char hexChars[] = "0123456789ABCDEF";
800035e4:	02f10623          	sb	a5,44(sp)
                screenPos+=printHex(screenPos,value,color);
800035e8:	00050813          	mv	a6,a0
    while(string[i] != '\0'){
800035ec:	22068c63          	beqz	a3,80003824 <_Z6printfPKcz+0x534>
800035f0:	00100613          	li	a2,1
800035f4:	fff60793          	addi	a5,a2,-1
        if(string[i]=='\n'){
800035f8:	00a00e13          	li	t3,10
800035fc:	01110893          	addi	a7,sp,17
    if(location>SCREEN_SIZE){
80003600:	4c000e93          	li	t4,1216
        if(!putch(location + i, string[i],color)){
80003604:	00f807b3          	add	a5,a6,a5
        if(string[i]=='\n'){
80003608:	05c68463          	beq	a3,t3,80003650 <_Z6printfPKcz+0x360>
    unsigned short buffer = (color << 8) | c;
8000360c:	000015b7          	lui	a1,0x1
80003610:	f0058593          	addi	a1,a1,-256 # f00 <_stack_size-0x7100>
    screen[location] = buffer;
80003614:	00179513          	slli	a0,a5,0x1
80003618:	88000337          	lui	t1,0x88000
    unsigned short buffer = (color << 8) | c;
8000361c:	00b6e5b3          	or	a1,a3,a1
    screen[location] = buffer;
80003620:	00650533          	add	a0,a0,t1
    if(location<0){
80003624:	0607c663          	bltz	a5,80003690 <_Z6printfPKcz+0x3a0>
    if(location>SCREEN_SIZE){
80003628:	0afec263          	blt	t4,a5,800036cc <_Z6printfPKcz+0x3dc>
    screen[location] = buffer;
8000362c:	00b51023          	sh	a1,0(a0)
    while(string[i] != '\0'){
80003630:	0008c683          	lbu	a3,0(a7)
80003634:	00160793          	addi	a5,a2,1
80003638:	00188893          	addi	a7,a7,1
8000363c:	1c068c63          	beqz	a3,80003814 <_Z6printfPKcz+0x524>
80003640:	00078613          	mv	a2,a5
    if(location>SCREEN_SIZE){
80003644:	fff60793          	addi	a5,a2,-1
        if(!putch(location + i, string[i],color)){
80003648:	00f807b3          	add	a5,a6,a5
        if(string[i]=='\n'){
8000364c:	fdc690e3          	bne	a3,t3,8000360c <_Z6printfPKcz+0x31c>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003650:	fc087813          	andi	a6,a6,-64
80003654:	04080813          	addi	a6,a6,64
            continue;
80003658:	fd9ff06f          	j	80003630 <_Z6printfPKcz+0x340>
                unsigned int value=va_arg(ptr, unsigned int);
8000365c:	00c12783          	lw	a5,12(sp)
                screenPos+=printDec(screenPos,value,color);
80003660:	00f00613          	li	a2,15
80003664:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
80003668:	00478793          	addi	a5,a5,4
8000366c:	00f12623          	sw	a5,12(sp)
                screenPos+=printDec(screenPos,value,color);
80003670:	e3cff0ef          	jal	80002cac <_Z8printDeciic>
80003674:	00008797          	auipc	a5,0x8
80003678:	c627d783          	lhu	a5,-926(a5) # 8000b2d6 <screenPos>
8000367c:	00240713          	addi	a4,s0,2
80003680:	00f50533          	add	a0,a0,a5
80003684:	01051513          	slli	a0,a0,0x10
80003688:	41055513          	srai	a0,a0,0x10
8000368c:	d31ff06f          	j	800033bc <_Z6printfPKcz+0xcc>
	return *( (volatile uint8_t *) addr );
80003690:	10000637          	lui	a2,0x10000
80003694:	00560613          	addi	a2,a2,5 # 10000005 <_stack_size+0xfff8005>
80003698:	100005b7          	lui	a1,0x10000
8000369c:	00064783          	lbu	a5,0(a2)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800036a0:	0207f793          	andi	a5,a5,32
800036a4:	fe078ce3          	beqz	a5,8000369c <_Z6printfPKcz+0x3ac>
	*( (uint8_t *) addr ) = b;
800036a8:	00d58023          	sb	a3,0(a1) # 10000000 <_stack_size+0xfff8000>
                screenPos+=printHex(screenPos,value,color);
800036ac:	00008517          	auipc	a0,0x8
800036b0:	c2a51503          	lh	a0,-982(a0) # 8000b2d6 <screenPos>
        return 0;
800036b4:	00000613          	li	a2,0
                screenPos+=printHex(screenPos,value,color);
800036b8:	00a60633          	add	a2,a2,a0
800036bc:	01061513          	slli	a0,a2,0x10
800036c0:	41055513          	srai	a0,a0,0x10
800036c4:	00170713          	addi	a4,a4,1
800036c8:	cf5ff06f          	j	800033bc <_Z6printfPKcz+0xcc>
800036cc:	00008517          	auipc	a0,0x8
800036d0:	c0a51503          	lh	a0,-1014(a0) # 8000b2d6 <screenPos>
800036d4:	00000613          	li	a2,0
800036d8:	fe1ff06f          	j	800036b8 <_Z6printfPKcz+0x3c8>
	return *( (volatile uint8_t *) addr );
800036dc:	100006b7          	lui	a3,0x10000
800036e0:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
800036e4:	10000637          	lui	a2,0x10000
800036e8:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800036ec:	0207f793          	andi	a5,a5,32
800036f0:	fe078ce3          	beqz	a5,800036e8 <_Z6printfPKcz+0x3f8>
	*( (uint8_t *) addr ) = b;
800036f4:	02500793          	li	a5,37
800036f8:	00f60023          	sb	a5,0(a2) # 10000000 <_stack_size+0xfff8000>
                screenPos++;
800036fc:	00008517          	auipc	a0,0x8
80003700:	bda51503          	lh	a0,-1062(a0) # 8000b2d6 <screenPos>
        return 0;
80003704:	cadff06f          	j	800033b0 <_Z6printfPKcz+0xc0>
                char *value=va_arg(ptr, char*);
80003708:	00c12783          	lw	a5,12(sp)
8000370c:	0007a303          	lw	t1,0(a5)
80003710:	00478793          	addi	a5,a5,4
80003714:	00f12623          	sw	a5,12(sp)
    while(string[i] != '\0'){
80003718:	00034583          	lbu	a1,0(t1) # 88000000 <_stack_end+0x7c00000>
8000371c:	12058263          	beqz	a1,80003840 <_Z6printfPKcz+0x550>
                screenPos+=printString(screenPos,value,color);
80003720:	00100693          	li	a3,1
80003724:	fff68793          	addi	a5,a3,-1
        if(string[i]=='\n'){
80003728:	00a00e13          	li	t3,10
    if(location>SCREEN_SIZE){
8000372c:	4c000e93          	li	t4,1216
        if(!putch(location + i, string[i],color)){
80003730:	00f507b3          	add	a5,a0,a5
        if(string[i]=='\n'){
80003734:	05c58463          	beq	a1,t3,8000377c <_Z6printfPKcz+0x48c>
    unsigned short buffer = (color << 8) | c;
80003738:	00001637          	lui	a2,0x1
8000373c:	f0060613          	addi	a2,a2,-256 # f00 <_stack_size-0x7100>
    screen[location] = buffer;
80003740:	00179813          	slli	a6,a5,0x1
80003744:	880008b7          	lui	a7,0x88000
    unsigned short buffer = (color << 8) | c;
80003748:	00c5e633          	or	a2,a1,a2
    screen[location] = buffer;
8000374c:	01180833          	add	a6,a6,a7
    if(location<0){
80003750:	0607cc63          	bltz	a5,800037c8 <_Z6printfPKcz+0x4d8>
    if(location>SCREEN_SIZE){
80003754:	0afec863          	blt	t4,a5,80003804 <_Z6printfPKcz+0x514>
    screen[location] = buffer;
80003758:	00c81023          	sh	a2,0(a6)
    while(string[i] != '\0'){
8000375c:	00168793          	addi	a5,a3,1
80003760:	00f30633          	add	a2,t1,a5
80003764:	fff64583          	lbu	a1,-1(a2)
80003768:	0c058263          	beqz	a1,8000382c <_Z6printfPKcz+0x53c>
8000376c:	00078693          	mv	a3,a5
    if(location>SCREEN_SIZE){
80003770:	fff68793          	addi	a5,a3,-1
        if(!putch(location + i, string[i],color)){
80003774:	00f507b3          	add	a5,a0,a5
        if(string[i]=='\n'){
80003778:	fdc590e3          	bne	a1,t3,80003738 <_Z6printfPKcz+0x448>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
8000377c:	fc057513          	andi	a0,a0,-64
80003780:	04050513          	addi	a0,a0,64
            continue;
80003784:	fd9ff06f          	j	8000375c <_Z6printfPKcz+0x46c>
	return *( (volatile uint8_t *) addr );
80003788:	10000637          	lui	a2,0x10000
8000378c:	00560613          	addi	a2,a2,5 # 10000005 <_stack_size+0xfff8005>
80003790:	100005b7          	lui	a1,0x10000
80003794:	00064783          	lbu	a5,0(a2)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003798:	0207f793          	andi	a5,a5,32
8000379c:	fe078ce3          	beqz	a5,80003794 <_Z6printfPKcz+0x4a4>
	*( (uint8_t *) addr ) = b;
800037a0:	00d58023          	sb	a3,0(a1) # 10000000 <_stack_size+0xfff8000>
                screenPos++;
800037a4:	00008517          	auipc	a0,0x8
800037a8:	b3251503          	lh	a0,-1230(a0) # 8000b2d6 <screenPos>
        return 0;
800037ac:	d49ff06f          	j	800034f4 <_Z6printfPKcz+0x204>
                    screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
800037b0:	fc057513          	andi	a0,a0,-64
800037b4:	04050513          	addi	a0,a0,64
800037b8:	01051513          	slli	a0,a0,0x10
800037bc:	41055513          	srai	a0,a0,0x10
                    continue;    
800037c0:	00240713          	addi	a4,s0,2
800037c4:	bf9ff06f          	j	800033bc <_Z6printfPKcz+0xcc>
	return *( (volatile uint8_t *) addr );
800037c8:	100006b7          	lui	a3,0x10000
800037cc:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
800037d0:	10000637          	lui	a2,0x10000
800037d4:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800037d8:	0207f793          	andi	a5,a5,32
800037dc:	fe078ce3          	beqz	a5,800037d4 <_Z6printfPKcz+0x4e4>
	*( (uint8_t *) addr ) = b;
800037e0:	00b60023          	sb	a1,0(a2) # 10000000 <_stack_size+0xfff8000>
                screenPos+=printString(screenPos,value,color);
800037e4:	00008517          	auipc	a0,0x8
800037e8:	af251503          	lh	a0,-1294(a0) # 8000b2d6 <screenPos>
        return 0;
800037ec:	00000693          	li	a3,0
                screenPos+=printString(screenPos,value,color);
800037f0:	00a686b3          	add	a3,a3,a0
800037f4:	01069513          	slli	a0,a3,0x10
800037f8:	41055513          	srai	a0,a0,0x10
800037fc:	00170713          	addi	a4,a4,1
80003800:	bbdff06f          	j	800033bc <_Z6printfPKcz+0xcc>
80003804:	00008517          	auipc	a0,0x8
80003808:	ad251503          	lh	a0,-1326(a0) # 8000b2d6 <screenPos>
8000380c:	00000693          	li	a3,0
80003810:	fe1ff06f          	j	800037f0 <_Z6printfPKcz+0x500>
                screenPos+=printHex(screenPos,value,color);
80003814:	00008517          	auipc	a0,0x8
80003818:	ac251503          	lh	a0,-1342(a0) # 8000b2d6 <screenPos>
8000381c:	0ff67613          	zext.b	a2,a2
80003820:	e99ff06f          	j	800036b8 <_Z6printfPKcz+0x3c8>
    while(string[i] != '\0'){
80003824:	00000613          	li	a2,0
80003828:	e91ff06f          	j	800036b8 <_Z6printfPKcz+0x3c8>
                screenPos+=printString(screenPos,value,color);
8000382c:	01069693          	slli	a3,a3,0x10
80003830:	00008517          	auipc	a0,0x8
80003834:	aa651503          	lh	a0,-1370(a0) # 8000b2d6 <screenPos>
80003838:	0106d693          	srli	a3,a3,0x10
8000383c:	fb5ff06f          	j	800037f0 <_Z6printfPKcz+0x500>
    while(string[i] != '\0'){
80003840:	00000693          	li	a3,0
80003844:	fadff06f          	j	800037f0 <_Z6printfPKcz+0x500>

80003848 <_Z9printfSCRicPKcz>:

// *****************************************************************************
// Same as printf but you can set the color and the location on the screen
// It returns the size of the string printed
int printfSCR(int location, char color,const char* str, ...) 
{ 
80003848:	f7010113          	addi	sp,sp,-144
8000384c:	07212023          	sw	s2,96(sp)
80003850:	06112623          	sw	ra,108(sp)
80003854:	06912223          	sw	s1,100(sp)
    // index of where to store the characters of str in 
    // token 
    int strPos=0;
    // parsing the formatted string 
    int i=0;
    for (i = 0; str[i] != '\0'; i++) { 
80003858:	00064303          	lbu	t1,0(a2)
{ 
8000385c:	00060913          	mv	s2,a2
    va_start(ptr, str);  
80003860:	07c10613          	addi	a2,sp,124
{ 
80003864:	06d12e23          	sw	a3,124(sp)
80003868:	08e12023          	sw	a4,128(sp)
8000386c:	08f12223          	sw	a5,132(sp)
80003870:	09012423          	sw	a6,136(sp)
80003874:	09112623          	sw	a7,140(sp)
    va_start(ptr, str);  
80003878:	00c12623          	sw	a2,12(sp)
    for (i = 0; str[i] != '\0'; i++) { 
8000387c:	48030463          	beqz	t1,80003d04 <_Z9printfSCRicPKcz+0x4bc>
80003880:	05312e23          	sw	s3,92(sp)
	return *( (volatile uint8_t *) addr );
80003884:	100009b7          	lui	s3,0x10000
80003888:	06812423          	sw	s0,104(sp)
8000388c:	05412c23          	sw	s4,88(sp)
80003890:	05512a23          	sw	s5,84(sp)
80003894:	05612823          	sw	s6,80(sp)
80003898:	05712623          	sw	s7,76(sp)
8000389c:	05812423          	sw	s8,72(sp)
800038a0:	05912223          	sw	s9,68(sp)
800038a4:	05a12023          	sw	s10,64(sp)
800038a8:	03b12e23          	sw	s11,60(sp)
800038ac:	00050a13          	mv	s4,a0
800038b0:	00058d93          	mv	s11,a1
800038b4:	00598993          	addi	s3,s3,5 # 10000005 <_stack_size+0xfff8005>
    for (i = 0; str[i] != '\0'; i++) { 
800038b8:	00000413          	li	s0,0
    int strPos=0;
800038bc:	00000493          	li	s1,0
    for (i = 0; str[i] != '\0'; i++) { 
800038c0:	00000693          	li	a3,0
        if(str[i]=='\n'){
800038c4:	00a00a93          	li	s5,10
            strPos = (strPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
            continue;    
        }
        if(str[i]=='%'){
800038c8:	02500b13          	li	s6,37
	return *( (volatile uint8_t *) addr );
800038cc:	10000d37          	lui	s10,0x10000
    if(location>SCREEN_SIZE){
800038d0:	4c000b93          	li	s7,1216
    unsigned short buffer = (color << 8) | c;
800038d4:	00859c93          	slli	s9,a1,0x8
    screen[location] = buffer;
800038d8:	88000c37          	lui	s8,0x88000
            if(str[i+1]=='x'){
                i++;
800038dc:	00140713          	addi	a4,s0,1
        if(str[i]=='\n'){
800038e0:	0f530063          	beq	t1,s5,800039c0 <_Z9printfSCRicPKcz+0x178>
                int value=va_arg(ptr, int);
                strPos+=printHex(location+strPos,value,color);
800038e4:	009a0533          	add	a0,s4,s1
        if(str[i]=='%'){
800038e8:	09630463          	beq	t1,s6,80003970 <_Z9printfSCRicPKcz+0x128>
    if(location<0){
800038ec:	06054863          	bltz	a0,8000395c <_Z9printfSCRicPKcz+0x114>
    if(location>SCREEN_SIZE){
800038f0:	00abca63          	blt	s7,a0,80003904 <_Z9printfSCRicPKcz+0xbc>
    screen[location] = buffer;
800038f4:	00151793          	slli	a5,a0,0x1
800038f8:	018787b3          	add	a5,a5,s8
    unsigned short buffer = (color << 8) | c;
800038fc:	006ce333          	or	t1,s9,t1
    screen[location] = buffer;
80003900:	00679023          	sh	t1,0(a5)
                strPos++;
            }
        }
        else{
            putch(location+strPos,str[i],color);
            strPos++;
80003904:	00148493          	addi	s1,s1,1
    for (i = 0; str[i] != '\0'; i++) { 
80003908:	00e907b3          	add	a5,s2,a4
8000390c:	0007c303          	lbu	t1,0(a5)
80003910:	00070413          	mv	s0,a4
80003914:	00070693          	mv	a3,a4
80003918:	fc0312e3          	bnez	t1,800038dc <_Z9printfSCRicPKcz+0x94>
8000391c:	06812403          	lw	s0,104(sp)
    } 
  
    // ending traversal 
    va_end(ptr); 
    return strPos; 
} 
80003920:	06c12083          	lw	ra,108(sp)
80003924:	05c12983          	lw	s3,92(sp)
80003928:	05812a03          	lw	s4,88(sp)
8000392c:	05412a83          	lw	s5,84(sp)
80003930:	05012b03          	lw	s6,80(sp)
80003934:	04c12b83          	lw	s7,76(sp)
80003938:	04812c03          	lw	s8,72(sp)
8000393c:	04412c83          	lw	s9,68(sp)
80003940:	04012d03          	lw	s10,64(sp)
80003944:	03c12d83          	lw	s11,60(sp)
80003948:	06012903          	lw	s2,96(sp)
8000394c:	00048513          	mv	a0,s1
80003950:	06412483          	lw	s1,100(sp)
80003954:	09010113          	addi	sp,sp,144
80003958:	00008067          	ret
	return *( (volatile uint8_t *) addr );
8000395c:	0009c783          	lbu	a5,0(s3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003960:	0207f793          	andi	a5,a5,32
80003964:	fe078ce3          	beqz	a5,8000395c <_Z9printfSCRicPKcz+0x114>
	*( (uint8_t *) addr ) = b;
80003968:	006d0023          	sb	t1,0(s10) # 10000000 <_stack_size+0xfff8000>
        return 0;
8000396c:	f99ff06f          	j	80003904 <_Z9printfSCRicPKcz+0xbc>
            if(str[i+1]=='x'){
80003970:	00d906b3          	add	a3,s2,a3
80003974:	0016c683          	lbu	a3,1(a3)
80003978:	07800613          	li	a2,120
8000397c:	08c68863          	beq	a3,a2,80003a0c <_Z9printfSCRicPKcz+0x1c4>
            else if(str[i+1]=='d'){
80003980:	06400793          	li	a5,100
80003984:	20f68063          	beq	a3,a5,80003b84 <_Z9printfSCRicPKcz+0x33c>
            else if(str[i+1]=='c'){
80003988:	06300793          	li	a5,99
8000398c:	04f68063          	beq	a3,a5,800039cc <_Z9printfSCRicPKcz+0x184>
            else if (str[i+1]=='s')
80003990:	07300793          	li	a5,115
80003994:	2af68263          	beq	a3,a5,80003c38 <_Z9printfSCRicPKcz+0x3f0>
    if(location<0){
80003998:	26054e63          	bltz	a0,80003c14 <_Z9printfSCRicPKcz+0x3cc>
    if(location>SCREEN_SIZE){
8000399c:	4c000793          	li	a5,1216
800039a0:	f6a7c2e3          	blt	a5,a0,80003904 <_Z9printfSCRicPKcz+0xbc>
    screen[location] = buffer;
800039a4:	00151793          	slli	a5,a0,0x1
800039a8:	88000637          	lui	a2,0x88000
    unsigned short buffer = (color << 8) | c;
800039ac:	008d9693          	slli	a3,s11,0x8
    screen[location] = buffer;
800039b0:	00c787b3          	add	a5,a5,a2
    unsigned short buffer = (color << 8) | c;
800039b4:	0256e693          	ori	a3,a3,37
    screen[location] = buffer;
800039b8:	00d79023          	sh	a3,0(a5)
    return 1;
800039bc:	f49ff06f          	j	80003904 <_Z9printfSCRicPKcz+0xbc>
            strPos = (strPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
800039c0:	fc04f493          	andi	s1,s1,-64
800039c4:	04048493          	addi	s1,s1,64
            continue;    
800039c8:	f41ff06f          	j	80003908 <_Z9printfSCRicPKcz+0xc0>
                char value=va_arg(ptr, int);
800039cc:	00c12783          	lw	a5,12(sp)
800039d0:	00478693          	addi	a3,a5,4
800039d4:	00d12623          	sw	a3,12(sp)
800039d8:	0007c603          	lbu	a2,0(a5)
    if(location<0){
800039dc:	30054463          	bltz	a0,80003ce4 <_Z9printfSCRicPKcz+0x49c>
    if(location>SCREEN_SIZE){
800039e0:	4c000793          	li	a5,1216
800039e4:	00a7ce63          	blt	a5,a0,80003a00 <_Z9printfSCRicPKcz+0x1b8>
    screen[location] = buffer;
800039e8:	00151793          	slli	a5,a0,0x1
800039ec:	880005b7          	lui	a1,0x88000
    unsigned short buffer = (color << 8) | c;
800039f0:	008d9693          	slli	a3,s11,0x8
    screen[location] = buffer;
800039f4:	00b787b3          	add	a5,a5,a1
    unsigned short buffer = (color << 8) | c;
800039f8:	00c6e6b3          	or	a3,a3,a2
    screen[location] = buffer;
800039fc:	00d79023          	sh	a3,0(a5)
                strPos++;
80003a00:	00148493          	addi	s1,s1,1
80003a04:	00170713          	addi	a4,a4,1
80003a08:	f01ff06f          	j	80003908 <_Z9printfSCRicPKcz+0xc0>
                int value=va_arg(ptr, int);
80003a0c:	00c12803          	lw	a6,12(sp)
    char hexChars[] = "0123456789ABCDEF";
80003a10:	00007797          	auipc	a5,0x7
80003a14:	e6078793          	addi	a5,a5,-416 # 8000a870 <__clzsi2+0x2f4>
80003a18:	0007a883          	lw	a7,0(a5)
                int value=va_arg(ptr, int);
80003a1c:	00082683          	lw	a3,0(a6)
    char hexChars[] = "0123456789ABCDEF";
80003a20:	0047a583          	lw	a1,4(a5)
80003a24:	0087a603          	lw	a2,8(a5)
80003a28:	00c7a783          	lw	a5,12(a5)
80003a2c:	01112e23          	sw	a7,28(sp)
80003a30:	02b12023          	sw	a1,32(sp)
80003a34:	02f12423          	sw	a5,40(sp)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003a38:	4146d793          	srai	a5,a3,0x14
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a3c:	00f7f793          	andi	a5,a5,15
    char hexChars[] = "0123456789ABCDEF";
80003a40:	02c12223          	sw	a2,36(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a44:	002787b3          	add	a5,a5,sp
80003a48:	01c7ce03          	lbu	t3,28(a5)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003a4c:	4186d793          	srai	a5,a3,0x18
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a50:	00f7f793          	andi	a5,a5,15
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003a54:	4046d313          	srai	t1,a3,0x4
80003a58:	4086d893          	srai	a7,a3,0x8
80003a5c:	40c6d593          	srai	a1,a3,0xc
80003a60:	4106d613          	srai	a2,a3,0x10
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a64:	002787b3          	add	a5,a5,sp
80003a68:	01c7ce83          	lbu	t4,28(a5)
80003a6c:	00f37313          	andi	t1,t1,15
80003a70:	00f6f793          	andi	a5,a3,15
80003a74:	00f8f893          	andi	a7,a7,15
80003a78:	00f5f593          	andi	a1,a1,15
80003a7c:	00f67613          	andi	a2,a2,15
80003a80:	01c6d693          	srli	a3,a3,0x1c
                int value=va_arg(ptr, int);
80003a84:	00480813          	addi	a6,a6,4
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a88:	002787b3          	add	a5,a5,sp
80003a8c:	00230333          	add	t1,t1,sp
80003a90:	002888b3          	add	a7,a7,sp
80003a94:	002585b3          	add	a1,a1,sp
80003a98:	00260633          	add	a2,a2,sp
80003a9c:	002686b3          	add	a3,a3,sp
80003aa0:	01c34303          	lbu	t1,28(t1)
80003aa4:	01c8c883          	lbu	a7,28(a7) # 8800001c <_stack_end+0x7c0001c>
80003aa8:	01c5c583          	lbu	a1,28(a1) # 8800001c <_stack_end+0x7c0001c>
80003aac:	01c64603          	lbu	a2,28(a2) # 8800001c <_stack_end+0x7c0001c>
80003ab0:	01c6c683          	lbu	a3,28(a3)
                int value=va_arg(ptr, int);
80003ab4:	01012623          	sw	a6,12(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003ab8:	01c7c803          	lbu	a6,28(a5)
    char hexChars[] = "0123456789ABCDEF";
80003abc:	00007797          	auipc	a5,0x7
80003ac0:	dc47c783          	lbu	a5,-572(a5) # 8000a880 <__clzsi2+0x304>
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80003ac4:	00010c23          	sb	zero,24(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003ac8:	00610b23          	sb	t1,22(sp)
80003acc:	01110aa3          	sb	a7,21(sp)
80003ad0:	00b10a23          	sb	a1,20(sp)
80003ad4:	00c109a3          	sb	a2,19(sp)
80003ad8:	01c10923          	sb	t3,18(sp)
80003adc:	01d108a3          	sb	t4,17(sp)
80003ae0:	01010ba3          	sb	a6,23(sp)
80003ae4:	00d10823          	sb	a3,16(sp)
    char hexChars[] = "0123456789ABCDEF";
80003ae8:	02f10623          	sb	a5,44(sp)
    if(color==0){
80003aec:	0a0d9e63          	bnez	s11,80003ba8 <_Z9printfSCRicPKcz+0x360>
    while(string[i] != '\0'){
80003af0:	00100613          	li	a2,1
        color=1;
80003af4:	00060593          	mv	a1,a2
80003af8:	01110313          	addi	t1,sp,17
        if(string[i]=='\n'){
80003afc:	00a00e13          	li	t3,10
    while(string[i] != '\0'){
80003b00:	06068e63          	beqz	a3,80003b7c <_Z9printfSCRicPKcz+0x334>
    if(location>SCREEN_SIZE){
80003b04:	fff60793          	addi	a5,a2,-1
80003b08:	4c000e93          	li	t4,1216
        if(!putch(location + i, string[i],color)){
80003b0c:	00f507b3          	add	a5,a0,a5
        if(string[i]=='\n'){
80003b10:	27c68a63          	beq	a3,t3,80003d84 <_Z9printfSCRicPKcz+0x53c>
    unsigned short buffer = (color << 8) | c;
80003b14:	00859893          	slli	a7,a1,0x8
    screen[location] = buffer;
80003b18:	88000f37          	lui	t5,0x88000
80003b1c:	00179813          	slli	a6,a5,0x1
            color++;
80003b20:	00158593          	addi	a1,a1,1
    screen[location] = buffer;
80003b24:	01e80833          	add	a6,a6,t5
    unsigned short buffer = (color << 8) | c;
80003b28:	00d8e8b3          	or	a7,a7,a3
            color++;
80003b2c:	0ff5f593          	zext.b	a1,a1
            if(color>15){
80003b30:	00f00f13          	li	t5,15
    if(location<0){
80003b34:	0207c663          	bltz	a5,80003b60 <_Z9printfSCRicPKcz+0x318>
    if(location>SCREEN_SIZE){
80003b38:	04fec263          	blt	t4,a5,80003b7c <_Z9printfSCRicPKcz+0x334>
    screen[location] = buffer;
80003b3c:	01181023          	sh	a7,0(a6)
            if(color>15){
80003b40:	00bf7463          	bgeu	t5,a1,80003b48 <_Z9printfSCRicPKcz+0x300>
                color=1;
80003b44:	00100593          	li	a1,1
    while(string[i] != '\0'){
80003b48:	00034683          	lbu	a3,0(t1)
80003b4c:	00160793          	addi	a5,a2,1
80003b50:	00130313          	addi	t1,t1,1
80003b54:	24068863          	beqz	a3,80003da4 <_Z9printfSCRicPKcz+0x55c>
80003b58:	00078613          	mv	a2,a5
80003b5c:	fa9ff06f          	j	80003b04 <_Z9printfSCRicPKcz+0x2bc>
	return *( (volatile uint8_t *) addr );
80003b60:	10000637          	lui	a2,0x10000
80003b64:	00560613          	addi	a2,a2,5 # 10000005 <_stack_size+0xfff8005>
80003b68:	100005b7          	lui	a1,0x10000
80003b6c:	00064783          	lbu	a5,0(a2)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003b70:	0207f793          	andi	a5,a5,32
80003b74:	fe078ce3          	beqz	a5,80003b6c <_Z9printfSCRicPKcz+0x324>
	*( (uint8_t *) addr ) = b;
80003b78:	00d58023          	sb	a3,0(a1) # 10000000 <_stack_size+0xfff8000>
        return 0;
80003b7c:	00170713          	addi	a4,a4,1
80003b80:	d89ff06f          	j	80003908 <_Z9printfSCRicPKcz+0xc0>
                unsigned int value=va_arg(ptr, unsigned int);
80003b84:	00c12783          	lw	a5,12(sp)
                strPos+=printDec(location+strPos,value,color);
80003b88:	000d8613          	mv	a2,s11
80003b8c:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
80003b90:	00478793          	addi	a5,a5,4
80003b94:	00f12623          	sw	a5,12(sp)
                strPos+=printDec(location+strPos,value,color);
80003b98:	914ff0ef          	jal	80002cac <_Z8printDeciic>
80003b9c:	00240713          	addi	a4,s0,2
80003ba0:	00a484b3          	add	s1,s1,a0
80003ba4:	d65ff06f          	j	80003908 <_Z9printfSCRicPKcz+0xc0>
    while(string[i] != '\0'){
80003ba8:	01110813          	addi	a6,sp,17
80003bac:	00100613          	li	a2,1
80003bb0:	fc0686e3          	beqz	a3,80003b7c <_Z9printfSCRicPKcz+0x334>
80003bb4:	fff60793          	addi	a5,a2,-1
        if(string[i]=='\n'){
80003bb8:	00a00893          	li	a7,10
    if(location>SCREEN_SIZE){
80003bbc:	4c000f13          	li	t5,1216
    unsigned short buffer = (color << 8) | c;
80003bc0:	008d9e93          	slli	t4,s11,0x8
    screen[location] = buffer;
80003bc4:	88000e37          	lui	t3,0x88000
        if(!putch(location + i, string[i],color)){
80003bc8:	00a787b3          	add	a5,a5,a0
        if(string[i]=='\n'){
80003bcc:	03168e63          	beq	a3,a7,80003c08 <_Z9printfSCRicPKcz+0x3c0>
    screen[location] = buffer;
80003bd0:	00179593          	slli	a1,a5,0x1
    unsigned short buffer = (color << 8) | c;
80003bd4:	00dee333          	or	t1,t4,a3
    screen[location] = buffer;
80003bd8:	01c585b3          	add	a1,a1,t3
    if(location<0){
80003bdc:	f807c2e3          	bltz	a5,80003b60 <_Z9printfSCRicPKcz+0x318>
    if(location>SCREEN_SIZE){
80003be0:	f8ff4ee3          	blt	t5,a5,80003b7c <_Z9printfSCRicPKcz+0x334>
    screen[location] = buffer;
80003be4:	00659023          	sh	t1,0(a1)
    while(string[i] != '\0'){
80003be8:	00084683          	lbu	a3,0(a6)
80003bec:	00160793          	addi	a5,a2,1
80003bf0:	00180813          	addi	a6,a6,1
80003bf4:	1a068863          	beqz	a3,80003da4 <_Z9printfSCRicPKcz+0x55c>
80003bf8:	00078613          	mv	a2,a5
    if(location>SCREEN_SIZE){
80003bfc:	fff60793          	addi	a5,a2,-1
        if(!putch(location + i, string[i],color)){
80003c00:	00a787b3          	add	a5,a5,a0
        if(string[i]=='\n'){
80003c04:	fd1696e3          	bne	a3,a7,80003bd0 <_Z9printfSCRicPKcz+0x388>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003c08:	fc057793          	andi	a5,a0,-64
80003c0c:	04078513          	addi	a0,a5,64
            continue;
80003c10:	fd9ff06f          	j	80003be8 <_Z9printfSCRicPKcz+0x3a0>
	return *( (volatile uint8_t *) addr );
80003c14:	100006b7          	lui	a3,0x10000
80003c18:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
80003c1c:	10000637          	lui	a2,0x10000
80003c20:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003c24:	0207f793          	andi	a5,a5,32
80003c28:	fe078ce3          	beqz	a5,80003c20 <_Z9printfSCRicPKcz+0x3d8>
	*( (uint8_t *) addr ) = b;
80003c2c:	02500793          	li	a5,37
80003c30:	00f60023          	sb	a5,0(a2) # 10000000 <_stack_size+0xfff8000>
        return 0;
80003c34:	cd1ff06f          	j	80003904 <_Z9printfSCRicPKcz+0xbc>
                char *value=va_arg(ptr, char*);
80003c38:	00c12783          	lw	a5,12(sp)
    while(string[i] != '\0'){
80003c3c:	00100593          	li	a1,1
                char *value=va_arg(ptr, char*);
80003c40:	0007a803          	lw	a6,0(a5)
80003c44:	00478693          	addi	a3,a5,4
80003c48:	00d12623          	sw	a3,12(sp)
    while(string[i] != '\0'){
80003c4c:	00084603          	lbu	a2,0(a6)
    if(color==0){
80003c50:	0c0d9863          	bnez	s11,80003d20 <_Z9printfSCRicPKcz+0x4d8>
        color=1;
80003c54:	00058693          	mv	a3,a1
        if(string[i]=='\n'){
80003c58:	00a00e13          	li	t3,10
    while(string[i] != '\0'){
80003c5c:	06060c63          	beqz	a2,80003cd4 <_Z9printfSCRicPKcz+0x48c>
    if(location>SCREEN_SIZE){
80003c60:	fff58793          	addi	a5,a1,-1
80003c64:	4c000f13          	li	t5,1216
        if(!putch(location + i, string[i],color)){
80003c68:	00f507b3          	add	a5,a0,a5
        if(string[i]=='\n'){
80003c6c:	13c60663          	beq	a2,t3,80003d98 <_Z9printfSCRicPKcz+0x550>
    unsigned short buffer = (color << 8) | c;
80003c70:	00869313          	slli	t1,a3,0x8
    screen[location] = buffer;
80003c74:	88000eb7          	lui	t4,0x88000
80003c78:	00179893          	slli	a7,a5,0x1
            color++;
80003c7c:	00168693          	addi	a3,a3,1
    screen[location] = buffer;
80003c80:	01d888b3          	add	a7,a7,t4
    unsigned short buffer = (color << 8) | c;
80003c84:	00c36333          	or	t1,t1,a2
            color++;
80003c88:	0ff6f693          	zext.b	a3,a3
            if(color>15){
80003c8c:	00f00e93          	li	t4,15
    if(location<0){
80003c90:	0207c463          	bltz	a5,80003cb8 <_Z9printfSCRicPKcz+0x470>
    if(location>SCREEN_SIZE){
80003c94:	04ff4063          	blt	t5,a5,80003cd4 <_Z9printfSCRicPKcz+0x48c>
    screen[location] = buffer;
80003c98:	00689023          	sh	t1,0(a7)
            if(color>15){
80003c9c:	0edeea63          	bltu	t4,a3,80003d90 <_Z9printfSCRicPKcz+0x548>
    while(string[i] != '\0'){
80003ca0:	00158793          	addi	a5,a1,1
80003ca4:	00f80633          	add	a2,a6,a5
80003ca8:	fff64603          	lbu	a2,-1(a2)
80003cac:	02060663          	beqz	a2,80003cd8 <_Z9printfSCRicPKcz+0x490>
80003cb0:	00078593          	mv	a1,a5
80003cb4:	fadff06f          	j	80003c60 <_Z9printfSCRicPKcz+0x418>
	return *( (volatile uint8_t *) addr );
80003cb8:	100006b7          	lui	a3,0x10000
80003cbc:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
80003cc0:	100005b7          	lui	a1,0x10000
80003cc4:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003cc8:	0207f793          	andi	a5,a5,32
80003ccc:	fe078ce3          	beqz	a5,80003cc4 <_Z9printfSCRicPKcz+0x47c>
	*( (uint8_t *) addr ) = b;
80003cd0:	00c58023          	sb	a2,0(a1) # 10000000 <_stack_size+0xfff8000>
            return 0;
80003cd4:	00000593          	li	a1,0
                strPos+=printString(location+strPos,value,color);
80003cd8:	00b484b3          	add	s1,s1,a1
80003cdc:	00170713          	addi	a4,a4,1
80003ce0:	c29ff06f          	j	80003908 <_Z9printfSCRicPKcz+0xc0>
	return *( (volatile uint8_t *) addr );
80003ce4:	100006b7          	lui	a3,0x10000
80003ce8:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
80003cec:	100005b7          	lui	a1,0x10000
80003cf0:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003cf4:	0207f793          	andi	a5,a5,32
80003cf8:	fe078ce3          	beqz	a5,80003cf0 <_Z9printfSCRicPKcz+0x4a8>
	*( (uint8_t *) addr ) = b;
80003cfc:	00c58023          	sb	a2,0(a1) # 10000000 <_stack_size+0xfff8000>
        return 0;
80003d00:	d01ff06f          	j	80003a00 <_Z9printfSCRicPKcz+0x1b8>
} 
80003d04:	06c12083          	lw	ra,108(sp)
    int strPos=0;
80003d08:	00000493          	li	s1,0
} 
80003d0c:	06012903          	lw	s2,96(sp)
80003d10:	00048513          	mv	a0,s1
80003d14:	06412483          	lw	s1,100(sp)
80003d18:	09010113          	addi	sp,sp,144
80003d1c:	00008067          	ret
    while(string[i] != '\0'){
80003d20:	fa060ae3          	beqz	a2,80003cd4 <_Z9printfSCRicPKcz+0x48c>
80003d24:	fff58793          	addi	a5,a1,-1
        if(string[i]=='\n'){
80003d28:	00a00893          	li	a7,10
    if(location>SCREEN_SIZE){
80003d2c:	4c000f13          	li	t5,1216
    unsigned short buffer = (color << 8) | c;
80003d30:	008d9e93          	slli	t4,s11,0x8
    screen[location] = buffer;
80003d34:	88000e37          	lui	t3,0x88000
        if(!putch(location + i, string[i],color)){
80003d38:	00a787b3          	add	a5,a5,a0
        if(string[i]=='\n'){
80003d3c:	03160e63          	beq	a2,a7,80003d78 <_Z9printfSCRicPKcz+0x530>
    screen[location] = buffer;
80003d40:	00179693          	slli	a3,a5,0x1
    unsigned short buffer = (color << 8) | c;
80003d44:	00cee333          	or	t1,t4,a2
    screen[location] = buffer;
80003d48:	01c686b3          	add	a3,a3,t3
    if(location<0){
80003d4c:	f607c6e3          	bltz	a5,80003cb8 <_Z9printfSCRicPKcz+0x470>
    if(location>SCREEN_SIZE){
80003d50:	f8ff42e3          	blt	t5,a5,80003cd4 <_Z9printfSCRicPKcz+0x48c>
    screen[location] = buffer;
80003d54:	00669023          	sh	t1,0(a3)
    while(string[i] != '\0'){
80003d58:	00158793          	addi	a5,a1,1
80003d5c:	00f806b3          	add	a3,a6,a5
80003d60:	fff6c603          	lbu	a2,-1(a3)
80003d64:	f6060ae3          	beqz	a2,80003cd8 <_Z9printfSCRicPKcz+0x490>
80003d68:	00078593          	mv	a1,a5
    if(location>SCREEN_SIZE){
80003d6c:	fff58793          	addi	a5,a1,-1
        if(!putch(location + i, string[i],color)){
80003d70:	00a787b3          	add	a5,a5,a0
        if(string[i]=='\n'){
80003d74:	fd1616e3          	bne	a2,a7,80003d40 <_Z9printfSCRicPKcz+0x4f8>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003d78:	fc057793          	andi	a5,a0,-64
80003d7c:	04078513          	addi	a0,a5,64
            continue;
80003d80:	fd9ff06f          	j	80003d58 <_Z9printfSCRicPKcz+0x510>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003d84:	fc057793          	andi	a5,a0,-64
80003d88:	04078513          	addi	a0,a5,64
            continue;
80003d8c:	dbdff06f          	j	80003b48 <_Z9printfSCRicPKcz+0x300>
                color=1;
80003d90:	00100693          	li	a3,1
80003d94:	f0dff06f          	j	80003ca0 <_Z9printfSCRicPKcz+0x458>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003d98:	fc057793          	andi	a5,a0,-64
80003d9c:	04078513          	addi	a0,a5,64
            continue;
80003da0:	f01ff06f          	j	80003ca0 <_Z9printfSCRicPKcz+0x458>
                strPos+=printHex(location+strPos,value,color);
80003da4:	0ff67613          	zext.b	a2,a2
80003da8:	00c484b3          	add	s1,s1,a2
80003dac:	00170713          	addi	a4,a4,1
80003db0:	b59ff06f          	j	80003908 <_Z9printfSCRicPKcz+0xc0>

80003db4 <_Z11uart_printfPKcz>:

// same as all the other printfs but sends the data to uart
int uart_printf(const char* str, ...) 
{ 
80003db4:	f9010113          	addi	sp,sp,-112
80003db8:	05212023          	sw	s2,64(sp)
80003dbc:	04112623          	sw	ra,76(sp)
80003dc0:	03312e23          	sw	s3,60(sp)
    // index of where to store the characters of str in 
    // token 
    int strPos=0;
    // parsing the formatted string 
    int i=0;
    for (i = 0; str[i] != '\0'; i++) { 
80003dc4:	00054303          	lbu	t1,0(a0)
{ 
80003dc8:	00050913          	mv	s2,a0
    va_start(ptr, str);  
80003dcc:	05410513          	addi	a0,sp,84
{ 
80003dd0:	04b12a23          	sw	a1,84(sp)
80003dd4:	04c12c23          	sw	a2,88(sp)
80003dd8:	04d12e23          	sw	a3,92(sp)
80003ddc:	06e12023          	sw	a4,96(sp)
80003de0:	06f12223          	sw	a5,100(sp)
80003de4:	07012423          	sw	a6,104(sp)
80003de8:	07112623          	sw	a7,108(sp)
    va_start(ptr, str);  
80003dec:	00a12623          	sw	a0,12(sp)
    for (i = 0; str[i] != '\0'; i++) { 
80003df0:	38030c63          	beqz	t1,80004188 <_Z11uart_printfPKcz+0x3d4>
80003df4:	04812423          	sw	s0,72(sp)
	return *( (volatile uint8_t *) addr );
80003df8:	10000437          	lui	s0,0x10000
80003dfc:	04912223          	sw	s1,68(sp)
80003e00:	03412c23          	sw	s4,56(sp)
80003e04:	03512a23          	sw	s5,52(sp)
80003e08:	03612823          	sw	s6,48(sp)
80003e0c:	00540413          	addi	s0,s0,5 # 10000005 <_stack_size+0xfff8005>
    for (i = 0; str[i] != '\0'; i++) { 
80003e10:	00000493          	li	s1,0
    int strPos=0;
80003e14:	00000993          	li	s3,0
    for (i = 0; str[i] != '\0'; i++) { 
80003e18:	00000793          	li	a5,0
        if(str[i]=='%'){
80003e1c:	02500a13          	li	s4,37
	return *( (volatile uint8_t *) addr );
80003e20:	10000ab7          	lui	s5,0x10000
    if(location>SCREEN_SIZE){
80003e24:	4c000b13          	li	s6,1216
            if(str[i+1]=='x'){
                i++;
80003e28:	00148713          	addi	a4,s1,1
        if(str[i]=='%'){
80003e2c:	09431063          	bne	t1,s4,80003eac <_Z11uart_printfPKcz+0xf8>
            if(str[i+1]=='x'){
80003e30:	00f907b3          	add	a5,s2,a5
80003e34:	0017c783          	lbu	a5,1(a5)
80003e38:	07800693          	li	a3,120
80003e3c:	14d78c63          	beq	a5,a3,80003f94 <_Z11uart_printfPKcz+0x1e0>
                int value=va_arg(ptr, int);
                strPos+=printHex(-100,value,0);
            }
            else if(str[i+1]=='d'){
80003e40:	06400693          	li	a3,100
80003e44:	2ad78863          	beq	a5,a3,800040f4 <_Z11uart_printfPKcz+0x340>
                i++;
                unsigned int value=va_arg(ptr, unsigned int);
                strPos+=printDec(-100,value,0);
            }
            else if(str[i+1]=='c'){
80003e48:	06300693          	li	a3,99
80003e4c:	2ed78063          	beq	a5,a3,8000412c <_Z11uart_printfPKcz+0x378>
                i++;
                char value=va_arg(ptr, int);
                putch(-100,value,0);
                strPos++;
            }
            else if (str[i+1]=='s')
80003e50:	07300693          	li	a3,115
80003e54:	08d78263          	beq	a5,a3,80003ed8 <_Z11uart_printfPKcz+0x124>
	return *( (volatile uint8_t *) addr );
80003e58:	00044783          	lbu	a5,0(s0)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003e5c:	0207f793          	andi	a5,a5,32
80003e60:	fe078ce3          	beqz	a5,80003e58 <_Z11uart_printfPKcz+0xa4>
    for (i = 0; str[i] != '\0'; i++) { 
80003e64:	00e907b3          	add	a5,s2,a4
	*( (uint8_t *) addr ) = b;
80003e68:	014a8023          	sb	s4,0(s5) # 10000000 <_stack_size+0xfff8000>
    for (i = 0; str[i] != '\0'; i++) { 
80003e6c:	0007c303          	lbu	t1,0(a5)
                char *value=va_arg(ptr, char*);
                strPos+=printString(-100,value,0);
            }
            else{
                putch(-100,str[i],0);
                strPos++;
80003e70:	00198993          	addi	s3,s3,1
    for (i = 0; str[i] != '\0'; i++) { 
80003e74:	00070493          	mv	s1,a4
80003e78:	00070793          	mv	a5,a4
80003e7c:	fa0316e3          	bnez	t1,80003e28 <_Z11uart_printfPKcz+0x74>
80003e80:	04812403          	lw	s0,72(sp)
    } 
  
    // ending traversal 
    va_end(ptr); 
    return strPos; 
} 
80003e84:	04c12083          	lw	ra,76(sp)
80003e88:	04412483          	lw	s1,68(sp)
80003e8c:	03812a03          	lw	s4,56(sp)
80003e90:	03412a83          	lw	s5,52(sp)
80003e94:	03012b03          	lw	s6,48(sp)
80003e98:	04012903          	lw	s2,64(sp)
80003e9c:	00098513          	mv	a0,s3
80003ea0:	03c12983          	lw	s3,60(sp)
80003ea4:	07010113          	addi	sp,sp,112
80003ea8:	00008067          	ret
	return *( (volatile uint8_t *) addr );
80003eac:	00044783          	lbu	a5,0(s0)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003eb0:	0207f793          	andi	a5,a5,32
80003eb4:	fe078ce3          	beqz	a5,80003eac <_Z11uart_printfPKcz+0xf8>
	*( (uint8_t *) addr ) = b;
80003eb8:	006a8023          	sb	t1,0(s5)
            strPos++;
80003ebc:	00198993          	addi	s3,s3,1
    for (i = 0; str[i] != '\0'; i++) { 
80003ec0:	00e907b3          	add	a5,s2,a4
80003ec4:	0007c303          	lbu	t1,0(a5)
80003ec8:	00070493          	mv	s1,a4
80003ecc:	00070793          	mv	a5,a4
80003ed0:	f4031ce3          	bnez	t1,80003e28 <_Z11uart_printfPKcz+0x74>
80003ed4:	fadff06f          	j	80003e80 <_Z11uart_printfPKcz+0xcc>
                char *value=va_arg(ptr, char*);
80003ed8:	00c12783          	lw	a5,12(sp)
    while(string[i] != '\0'){
80003edc:	00100593          	li	a1,1
80003ee0:	00058693          	mv	a3,a1
                char *value=va_arg(ptr, char*);
80003ee4:	0007ae03          	lw	t3,0(a5)
80003ee8:	00478793          	addi	a5,a5,4
80003eec:	00f12623          	sw	a5,12(sp)
    while(string[i] != '\0'){
80003ef0:	000e4603          	lbu	a2,0(t3) # 88000000 <_stack_end+0x7c00000>
80003ef4:	f9c00893          	li	a7,-100
        if(string[i]=='\n'){
80003ef8:	00a00e93          	li	t4,10
    while(string[i] != '\0'){
80003efc:	08060463          	beqz	a2,80003f84 <_Z11uart_printfPKcz+0x1d0>
    if(location>SCREEN_SIZE){
80003f00:	fff58793          	addi	a5,a1,-1
        if(!putch(location + i, string[i],color)){
80003f04:	00f887b3          	add	a5,a7,a5
        if(string[i]=='\n'){
80003f08:	05d60a63          	beq	a2,t4,80003f5c <_Z11uart_printfPKcz+0x1a8>
    unsigned short buffer = (color << 8) | c;
80003f0c:	00869813          	slli	a6,a3,0x8
    screen[location] = buffer;
80003f10:	88000337          	lui	t1,0x88000
80003f14:	00179513          	slli	a0,a5,0x1
            color++;
80003f18:	00168693          	addi	a3,a3,1
    screen[location] = buffer;
80003f1c:	00650533          	add	a0,a0,t1
    unsigned short buffer = (color << 8) | c;
80003f20:	00c86833          	or	a6,a6,a2
            color++;
80003f24:	0ff6f693          	zext.b	a3,a3
            if(color>15){
80003f28:	00f00313          	li	t1,15
    if(location<0){
80003f2c:	0207ce63          	bltz	a5,80003f68 <_Z11uart_printfPKcz+0x1b4>
    if(location>SCREEN_SIZE){
80003f30:	04fb4a63          	blt	s6,a5,80003f84 <_Z11uart_printfPKcz+0x1d0>
    screen[location] = buffer;
80003f34:	01051023          	sh	a6,0(a0)
            if(color>15){
80003f38:	1ed36263          	bltu	t1,a3,8000411c <_Z11uart_printfPKcz+0x368>
    while(string[i] != '\0'){
80003f3c:	00158793          	addi	a5,a1,1
80003f40:	00fe0633          	add	a2,t3,a5
80003f44:	fff64603          	lbu	a2,-1(a2)
80003f48:	04060063          	beqz	a2,80003f88 <_Z11uart_printfPKcz+0x1d4>
80003f4c:	00078593          	mv	a1,a5
    if(location>SCREEN_SIZE){
80003f50:	fff58793          	addi	a5,a1,-1
        if(!putch(location + i, string[i],color)){
80003f54:	00f887b3          	add	a5,a7,a5
        if(string[i]=='\n'){
80003f58:	fbd61ae3          	bne	a2,t4,80003f0c <_Z11uart_printfPKcz+0x158>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003f5c:	fc08f893          	andi	a7,a7,-64
80003f60:	04088893          	addi	a7,a7,64
            continue;
80003f64:	fd9ff06f          	j	80003f3c <_Z11uart_printfPKcz+0x188>
	return *( (volatile uint8_t *) addr );
80003f68:	100006b7          	lui	a3,0x10000
80003f6c:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
80003f70:	100005b7          	lui	a1,0x10000
80003f74:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003f78:	0207f793          	andi	a5,a5,32
80003f7c:	fe078ce3          	beqz	a5,80003f74 <_Z11uart_printfPKcz+0x1c0>
	*( (uint8_t *) addr ) = b;
80003f80:	00c58023          	sb	a2,0(a1) # 10000000 <_stack_size+0xfff8000>
    return i;
80003f84:	00000593          	li	a1,0
                strPos+=printHex(-100,value,0);
80003f88:	00b989b3          	add	s3,s3,a1
80003f8c:	00170713          	addi	a4,a4,1
80003f90:	f31ff06f          	j	80003ec0 <_Z11uart_printfPKcz+0x10c>
                int value=va_arg(ptr, int);
80003f94:	00c12883          	lw	a7,12(sp)
    char hexChars[] = "0123456789ABCDEF";
80003f98:	00007697          	auipc	a3,0x7
80003f9c:	8d868693          	addi	a3,a3,-1832 # 8000a870 <__clzsi2+0x2f4>
80003fa0:	0006a503          	lw	a0,0(a3)
                int value=va_arg(ptr, int);
80003fa4:	0008a783          	lw	a5,0(a7)
    char hexChars[] = "0123456789ABCDEF";
80003fa8:	0046a583          	lw	a1,4(a3)
80003fac:	0086a603          	lw	a2,8(a3)
80003fb0:	00c6a683          	lw	a3,12(a3)
80003fb4:	00a12e23          	sw	a0,28(sp)
80003fb8:	02b12023          	sw	a1,32(sp)
80003fbc:	02c12223          	sw	a2,36(sp)
80003fc0:	02d12423          	sw	a3,40(sp)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003fc4:	4047d313          	srai	t1,a5,0x4
80003fc8:	4087d813          	srai	a6,a5,0x8
80003fcc:	40c7d513          	srai	a0,a5,0xc
80003fd0:	4107d593          	srai	a1,a5,0x10
80003fd4:	4147d613          	srai	a2,a5,0x14
80003fd8:	4187d693          	srai	a3,a5,0x18
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003fdc:	00f7fe13          	andi	t3,a5,15
80003fe0:	00f37313          	andi	t1,t1,15
80003fe4:	00f87813          	andi	a6,a6,15
80003fe8:	00f57513          	andi	a0,a0,15
80003fec:	00f5f593          	andi	a1,a1,15
80003ff0:	00f67613          	andi	a2,a2,15
80003ff4:	00f6f693          	andi	a3,a3,15
80003ff8:	01c7d793          	srli	a5,a5,0x1c
80003ffc:	00230333          	add	t1,t1,sp
80004000:	00280833          	add	a6,a6,sp
80004004:	00250533          	add	a0,a0,sp
80004008:	002585b3          	add	a1,a1,sp
8000400c:	00260633          	add	a2,a2,sp
80004010:	002686b3          	add	a3,a3,sp
80004014:	002787b3          	add	a5,a5,sp
80004018:	002e0e33          	add	t3,t3,sp
8000401c:	01c34f03          	lbu	t5,28(t1) # 8800001c <_stack_end+0x7c0001c>
80004020:	01c84e83          	lbu	t4,28(a6)
80004024:	01c54303          	lbu	t1,28(a0)
80004028:	01c5c803          	lbu	a6,28(a1)
8000402c:	01c64503          	lbu	a0,28(a2)
80004030:	01c6c583          	lbu	a1,28(a3)
80004034:	01c7c603          	lbu	a2,28(a5)
80004038:	01ce4683          	lbu	a3,28(t3)
    char hexChars[] = "0123456789ABCDEF";
8000403c:	00007797          	auipc	a5,0x7
80004040:	8447c783          	lbu	a5,-1980(a5) # 8000a880 <__clzsi2+0x304>
                int value=va_arg(ptr, int);
80004044:	00488893          	addi	a7,a7,4
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80004048:	00010c23          	sb	zero,24(sp)
                int value=va_arg(ptr, int);
8000404c:	01112623          	sw	a7,12(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80004050:	01e10b23          	sb	t5,22(sp)
80004054:	01d10aa3          	sb	t4,21(sp)
80004058:	00610a23          	sb	t1,20(sp)
8000405c:	010109a3          	sb	a6,19(sp)
80004060:	00a10923          	sb	a0,18(sp)
80004064:	00b108a3          	sb	a1,17(sp)
80004068:	00d10ba3          	sb	a3,23(sp)
8000406c:	00c10823          	sb	a2,16(sp)
    char hexChars[] = "0123456789ABCDEF";
80004070:	02f10623          	sb	a5,44(sp)
    while(string[i] != '\0'){
80004074:	f0060ce3          	beqz	a2,80003f8c <_Z11uart_printfPKcz+0x1d8>
80004078:	00100593          	li	a1,1
8000407c:	f9c00893          	li	a7,-100
80004080:	fff58793          	addi	a5,a1,-1
        if(string[i]=='\n'){
80004084:	00a00e93          	li	t4,10
    while(string[i] != '\0'){
80004088:	00058693          	mv	a3,a1
        if(string[i]=='\n'){
8000408c:	01110313          	addi	t1,sp,17
        if(!putch(location + i, string[i],color)){
80004090:	00f887b3          	add	a5,a7,a5
        if(string[i]=='\n'){
80004094:	05d60a63          	beq	a2,t4,800040e8 <_Z11uart_printfPKcz+0x334>
    unsigned short buffer = (color << 8) | c;
80004098:	00869813          	slli	a6,a3,0x8
    screen[location] = buffer;
8000409c:	88000e37          	lui	t3,0x88000
800040a0:	00179513          	slli	a0,a5,0x1
            color++;
800040a4:	00168693          	addi	a3,a3,1
    screen[location] = buffer;
800040a8:	01c50533          	add	a0,a0,t3
    unsigned short buffer = (color << 8) | c;
800040ac:	00c86833          	or	a6,a6,a2
            color++;
800040b0:	0ff6f693          	zext.b	a3,a3
            if(color>15){
800040b4:	00f00e13          	li	t3,15
    if(location<0){
800040b8:	0a07c663          	bltz	a5,80004164 <_Z11uart_printfPKcz+0x3b0>
    if(location>SCREEN_SIZE){
800040bc:	ecfb48e3          	blt	s6,a5,80003f8c <_Z11uart_printfPKcz+0x1d8>
    screen[location] = buffer;
800040c0:	01051023          	sh	a6,0(a0)
            if(color>15){
800040c4:	06de6063          	bltu	t3,a3,80004124 <_Z11uart_printfPKcz+0x370>
    while(string[i] != '\0'){
800040c8:	00034603          	lbu	a2,0(t1)
800040cc:	00158793          	addi	a5,a1,1
800040d0:	00130313          	addi	t1,t1,1
800040d4:	0c060863          	beqz	a2,800041a4 <_Z11uart_printfPKcz+0x3f0>
800040d8:	00078593          	mv	a1,a5
    if(location>SCREEN_SIZE){
800040dc:	fff58793          	addi	a5,a1,-1
        if(!putch(location + i, string[i],color)){
800040e0:	00f887b3          	add	a5,a7,a5
        if(string[i]=='\n'){
800040e4:	fbd61ae3          	bne	a2,t4,80004098 <_Z11uart_printfPKcz+0x2e4>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
800040e8:	fc08f893          	andi	a7,a7,-64
800040ec:	04088893          	addi	a7,a7,64
            continue;
800040f0:	fd9ff06f          	j	800040c8 <_Z11uart_printfPKcz+0x314>
                unsigned int value=va_arg(ptr, unsigned int);
800040f4:	00c12783          	lw	a5,12(sp)
                strPos+=printDec(-100,value,0);
800040f8:	00000613          	li	a2,0
800040fc:	f9c00513          	li	a0,-100
80004100:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
80004104:	00478793          	addi	a5,a5,4
80004108:	00f12623          	sw	a5,12(sp)
                strPos+=printDec(-100,value,0);
8000410c:	ba1fe0ef          	jal	80002cac <_Z8printDeciic>
80004110:	00248713          	addi	a4,s1,2
80004114:	00a989b3          	add	s3,s3,a0
80004118:	da9ff06f          	j	80003ec0 <_Z11uart_printfPKcz+0x10c>
                color=1;
8000411c:	00100693          	li	a3,1
80004120:	e1dff06f          	j	80003f3c <_Z11uart_printfPKcz+0x188>
80004124:	00100693          	li	a3,1
80004128:	fa1ff06f          	j	800040c8 <_Z11uart_printfPKcz+0x314>
                char value=va_arg(ptr, int);
8000412c:	00c12783          	lw	a5,12(sp)
	return *( (volatile uint8_t *) addr );
80004130:	100006b7          	lui	a3,0x10000
80004134:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
                char value=va_arg(ptr, int);
80004138:	0007c583          	lbu	a1,0(a5)
8000413c:	00478793          	addi	a5,a5,4
80004140:	00f12623          	sw	a5,12(sp)
	return *( (volatile uint8_t *) addr );
80004144:	10000637          	lui	a2,0x10000
80004148:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
8000414c:	0207f793          	andi	a5,a5,32
80004150:	fe078ce3          	beqz	a5,80004148 <_Z11uart_printfPKcz+0x394>
	*( (uint8_t *) addr ) = b;
80004154:	00b60023          	sb	a1,0(a2) # 10000000 <_stack_size+0xfff8000>
                strPos++;
80004158:	00198993          	addi	s3,s3,1
8000415c:	00170713          	addi	a4,a4,1
80004160:	d61ff06f          	j	80003ec0 <_Z11uart_printfPKcz+0x10c>
	return *( (volatile uint8_t *) addr );
80004164:	100006b7          	lui	a3,0x10000
80004168:	00568693          	addi	a3,a3,5 # 10000005 <_stack_size+0xfff8005>
8000416c:	100005b7          	lui	a1,0x10000
80004170:	0006c783          	lbu	a5,0(a3)
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80004174:	0207f793          	andi	a5,a5,32
80004178:	fe078ce3          	beqz	a5,80004170 <_Z11uart_printfPKcz+0x3bc>
	*( (uint8_t *) addr ) = b;
8000417c:	00c58023          	sb	a2,0(a1) # 10000000 <_stack_size+0xfff8000>
        return 0;
80004180:	00170713          	addi	a4,a4,1
80004184:	d3dff06f          	j	80003ec0 <_Z11uart_printfPKcz+0x10c>
} 
80004188:	04c12083          	lw	ra,76(sp)
    int strPos=0;
8000418c:	00000993          	li	s3,0
} 
80004190:	04012903          	lw	s2,64(sp)
80004194:	00098513          	mv	a0,s3
80004198:	03c12983          	lw	s3,60(sp)
8000419c:	07010113          	addi	sp,sp,112
800041a0:	00008067          	ret
                strPos+=printHex(-100,value,0);
800041a4:	0ff5f593          	zext.b	a1,a1
800041a8:	00b989b3          	add	s3,s3,a1
800041ac:	de1ff06f          	j	80003f8c <_Z11uart_printfPKcz+0x1d8>

800041b0 <_Z11clearScreenv>:
    screen[location] = buffer;
800041b0:	000016b7          	lui	a3,0x1

// *****************************************************************************
// Clears the screen and resets the screenPos
void clearScreen(){
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
800041b4:	88001737          	lui	a4,0x88001
    screen[location] = buffer;
800041b8:	f2068693          	addi	a3,a3,-224 # f20 <_stack_size-0x70e0>
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
800041bc:	98070713          	addi	a4,a4,-1664 # 88000980 <_stack_end+0x7c00980>
void clearScreen(){
800041c0:	880007b7          	lui	a5,0x88000
    screen[location] = buffer;
800041c4:	00d79023          	sh	a3,0(a5) # 88000000 <_stack_end+0x7c00000>
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
800041c8:	00278793          	addi	a5,a5,2
800041cc:	fee79ce3          	bne	a5,a4,800041c4 <_Z11clearScreenv+0x14>
        putch(i,' ',15);
    }
    screenPos=0;
800041d0:	00007797          	auipc	a5,0x7
800041d4:	10079323          	sh	zero,262(a5) # 8000b2d6 <screenPos>
}
800041d8:	00008067          	ret

800041dc <_Z17resetScreenVectorv>:
void resetScreenVector(){
    screenPos=0;
800041dc:	00007797          	auipc	a5,0x7
800041e0:	0e079d23          	sh	zero,250(a5) # 8000b2d6 <screenPos>
}
800041e4:	00008067          	ret

800041e8 <_Z9readFlashj>:
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C
__attribute__((optimize("O0")))
unsigned int readFlash(unsigned int adress){
800041e8:	fc010113          	addi	sp,sp,-64
800041ec:	02112e23          	sw	ra,60(sp)
800041f0:	02812c23          	sw	s0,56(sp)
800041f4:	04010413          	addi	s0,sp,64
800041f8:	fca42623          	sw	a0,-52(s0)
    volatile char *flashReady = (char *)FLASH_READY;
800041fc:	8b0007b7          	lui	a5,0x8b000
80004200:	fef42623          	sw	a5,-20(s0)
    volatile char *flashRen = (char *)FLASH_REN;
80004204:	8b0007b7          	lui	a5,0x8b000
80004208:	00178793          	addi	a5,a5,1 # 8b000001 <_stack_end+0xac00001>
8000420c:	fef42423          	sw	a5,-24(s0)
    volatile unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
80004210:	8b0007b7          	lui	a5,0x8b000
80004214:	00478793          	addi	a5,a5,4 # 8b000004 <_stack_end+0xac00004>
80004218:	fef42223          	sw	a5,-28(s0)
    volatile unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
8000421c:	8b0007b7          	lui	a5,0x8b000
80004220:	00c78793          	addi	a5,a5,12 # 8b00000c <_stack_end+0xac0000c>
80004224:	fef42023          	sw	a5,-32(s0)
    volatile unsigned int data = 0;
80004228:	fc042e23          	sw	zero,-36(s0)
    *flashAdress = adress;
8000422c:	fe442783          	lw	a5,-28(s0)
80004230:	fcc42703          	lw	a4,-52(s0)
80004234:	00e7a023          	sw	a4,0(a5)
    *flashRen = 1;
80004238:	fe842783          	lw	a5,-24(s0)
8000423c:	00100713          	li	a4,1
80004240:	00e78023          	sb	a4,0(a5)
    // FML it get stuck if you dont do the nop here
    asm volatile ("nop");
80004244:	00000013          	nop
    asm volatile ("nop");
80004248:	00000013          	nop
    asm volatile ("nop");
8000424c:	00000013          	nop
    while(1){
        if(*flashReady != 0) {
80004250:	fec42783          	lw	a5,-20(s0)
80004254:	0007c783          	lbu	a5,0(a5)
80004258:	0ff7f793          	zext.b	a5,a5
8000425c:	00f037b3          	snez	a5,a5
80004260:	0ff7f793          	zext.b	a5,a5
80004264:	00079463          	bnez	a5,8000426c <_Z9readFlashj+0x84>
80004268:	fe9ff06f          	j	80004250 <_Z9readFlashj+0x68>
            break; // Wait until flash is ready
8000426c:	00000013          	nop
        }
    }
    data = *flashData;
80004270:	fe042783          	lw	a5,-32(s0)
80004274:	0007a783          	lw	a5,0(a5)
80004278:	fcf42e23          	sw	a5,-36(s0)
    return data;
8000427c:	fdc42783          	lw	a5,-36(s0)
}
80004280:	00078513          	mv	a0,a5
80004284:	03c12083          	lw	ra,60(sp)
80004288:	03812403          	lw	s0,56(sp)
8000428c:	04010113          	addi	sp,sp,64
80004290:	00008067          	ret

80004294 <_Z25getFileStartAddressByNamePKcPmS1_>:

__attribute__((optimize("O0")))
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
80004294:	fa010113          	addi	sp,sp,-96
80004298:	04112e23          	sw	ra,92(sp)
8000429c:	04812c23          	sw	s0,88(sp)
800042a0:	06010413          	addi	s0,sp,96
800042a4:	faa42623          	sw	a0,-84(s0)
800042a8:	fab42423          	sw	a1,-88(s0)
800042ac:	fac42223          	sw	a2,-92(s0)
    volatile uint32_t tempAddress = 0;
800042b0:	fc042023          	sw	zero,-64(s0)
    volatile uint32_t readData;

    // Check magic number
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
800042b4:	435357b7          	lui	a5,0x43535
800042b8:	95278793          	addi	a5,a5,-1710 # 43534952 <_stack_size+0x4352c952>
800042bc:	faf42a23          	sw	a5,-76(s0)
800042c0:	534637b7          	lui	a5,0x53463
800042c4:	e5978793          	addi	a5,a5,-423 # 53462e59 <_stack_size+0x5345ae59>
800042c8:	faf42c23          	sw	a5,-72(s0)
    for (int i = 0; i < 2; i++) {
800042cc:	fe042623          	sw	zero,-20(s0)
800042d0:	0b00006f          	j	80004380 <_Z25getFileStartAddressByNamePKcPmS1_+0xec>
        readData = readFlash(tempAddress);
800042d4:	fc042783          	lw	a5,-64(s0)
800042d8:	00078513          	mv	a0,a5
800042dc:	f0dff0ef          	jal	800041e8 <_Z9readFlashj>
800042e0:	00050793          	mv	a5,a0
800042e4:	faf42e23          	sw	a5,-68(s0)
        for (int j = 0; j < 4; j++) {
800042e8:	fe042423          	sw	zero,-24(s0)
800042ec:	0700006f          	j	8000435c <_Z25getFileStartAddressByNamePKcPmS1_+0xc8>
            char c = (readData >> (8 * j)) & 0xFF;
800042f0:	fbc42703          	lw	a4,-68(s0)
800042f4:	fe842783          	lw	a5,-24(s0)
800042f8:	00379793          	slli	a5,a5,0x3
800042fc:	00f757b3          	srl	a5,a4,a5
80004300:	fcf403a3          	sb	a5,-57(s0)
            // uart_printf("Magic[%d] = %c\r\n", i * 4 + j, c);
            if (c != expectedMagic[i * 4 + j]) {
80004304:	fec42783          	lw	a5,-20(s0)
80004308:	00279713          	slli	a4,a5,0x2
8000430c:	fe842783          	lw	a5,-24(s0)
80004310:	00f707b3          	add	a5,a4,a5
80004314:	ff078793          	addi	a5,a5,-16
80004318:	008787b3          	add	a5,a5,s0
8000431c:	fc47c783          	lbu	a5,-60(a5)
80004320:	fc744703          	lbu	a4,-57(s0)
80004324:	02f70663          	beq	a4,a5,80004350 <_Z25getFileStartAddressByNamePKcPmS1_+0xbc>
                tfp_printf("Invalid magic number at position %d\r\n", i * 4 + j);
80004328:	fec42783          	lw	a5,-20(s0)
8000432c:	00279713          	slli	a4,a5,0x2
80004330:	fe842783          	lw	a5,-24(s0)
80004334:	00f707b3          	add	a5,a4,a5
80004338:	00078593          	mv	a1,a5
8000433c:	00006517          	auipc	a0,0x6
80004340:	2f450513          	addi	a0,a0,756 # 8000a630 <__clzsi2+0xb4>
80004344:	5c8020ef          	jal	8000690c <tfp_printf>
                return 0xFFFFFFFF;
80004348:	fff00793          	li	a5,-1
8000434c:	1b80006f          	j	80004504 <_Z25getFileStartAddressByNamePKcPmS1_+0x270>
        for (int j = 0; j < 4; j++) {
80004350:	fe842783          	lw	a5,-24(s0)
80004354:	00178793          	addi	a5,a5,1
80004358:	fef42423          	sw	a5,-24(s0)
8000435c:	fe842703          	lw	a4,-24(s0)
80004360:	00300793          	li	a5,3
80004364:	f8e7d6e3          	bge	a5,a4,800042f0 <_Z25getFileStartAddressByNamePKcPmS1_+0x5c>
            }
        }
        tempAddress += 4;
80004368:	fc042783          	lw	a5,-64(s0)
8000436c:	00478793          	addi	a5,a5,4
80004370:	fcf42023          	sw	a5,-64(s0)
    for (int i = 0; i < 2; i++) {
80004374:	fec42783          	lw	a5,-20(s0)
80004378:	00178793          	addi	a5,a5,1
8000437c:	fef42623          	sw	a5,-20(s0)
80004380:	fec42703          	lw	a4,-20(s0)
80004384:	00100793          	li	a5,1
80004388:	f4e7d6e3          	bge	a5,a4,800042d4 <_Z25getFileStartAddressByNamePKcPmS1_+0x40>
    }

    // Read program count
    unsigned char programCount = readFlash(tempAddress)& 0xFF;
8000438c:	fc042783          	lw	a5,-64(s0)
80004390:	00078513          	mv	a0,a5
80004394:	e55ff0ef          	jal	800041e8 <_Z9readFlashj>
80004398:	00050793          	mv	a5,a0
8000439c:	fef403a3          	sb	a5,-25(s0)
    tfp_printf("Program count: %d\r\n", programCount);
800043a0:	fe744783          	lbu	a5,-25(s0)
800043a4:	00078593          	mv	a1,a5
800043a8:	00006517          	auipc	a0,0x6
800043ac:	2b050513          	addi	a0,a0,688 # 8000a658 <__clzsi2+0xdc>
800043b0:	55c020ef          	jal	8000690c <tfp_printf>
    // signed char programCount = 2;

    tempAddress += 1;
800043b4:	fc042783          	lw	a5,-64(s0)
800043b8:	00178793          	addi	a5,a5,1
800043bc:	fcf42023          	sw	a5,-64(s0)
    uint32_t headersAddress = 0;
800043c0:	fc042a23          	sw	zero,-44(s0)
    // For each program
    while(programCount--) {
800043c4:	1240006f          	j	800044e8 <_Z25getFileStartAddressByNamePKcPmS1_+0x254>
        tfp_printf("Checking program %d...\r\n", programCount+1);
800043c8:	fe744783          	lbu	a5,-25(s0)
800043cc:	00178793          	addi	a5,a5,1
800043d0:	00078593          	mv	a1,a5
800043d4:	00006517          	auipc	a0,0x6
800043d8:	29850513          	addi	a0,a0,664 # 8000a66c <__clzsi2+0xf0>
800043dc:	530020ef          	jal	8000690c <tfp_printf>

        // Compare filename
        int match = 1;
800043e0:	00100793          	li	a5,1
800043e4:	fef42023          	sw	a5,-32(s0)
        int pos = 0;
800043e8:	fc042e23          	sw	zero,-36(s0)
        char c_flash = 1, c_input = 1;
800043ec:	00100793          	li	a5,1
800043f0:	fcf40da3          	sb	a5,-37(s0)
800043f4:	00100793          	li	a5,1
800043f8:	fcf409a3          	sb	a5,-45(s0)

        headersAddress = tempAddress;
800043fc:	fc042783          	lw	a5,-64(s0)
80004400:	fcf42a23          	sw	a5,-44(s0)
        while (c_flash != 0) {
80004404:	05c0006f          	j	80004460 <_Z25getFileStartAddressByNamePKcPmS1_+0x1cc>
            readData = readFlash(tempAddress); 
80004408:	fc042783          	lw	a5,-64(s0)
8000440c:	00078513          	mv	a0,a5
80004410:	dd9ff0ef          	jal	800041e8 <_Z9readFlashj>
80004414:	00050793          	mv	a5,a0
80004418:	faf42e23          	sw	a5,-68(s0)
            c_flash = readData & 0xFF;
8000441c:	fbc42783          	lw	a5,-68(s0)
80004420:	fcf40da3          	sb	a5,-37(s0)
            c_input = filename[pos];
80004424:	fdc42783          	lw	a5,-36(s0)
80004428:	fac42703          	lw	a4,-84(s0)
8000442c:	00f707b3          	add	a5,a4,a5
80004430:	0007c783          	lbu	a5,0(a5)
80004434:	fcf409a3          	sb	a5,-45(s0)
            // tfp_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);

            if (c_flash != c_input) {
80004438:	fdb44703          	lbu	a4,-37(s0)
8000443c:	fd344783          	lbu	a5,-45(s0)
80004440:	00f70463          	beq	a4,a5,80004448 <_Z25getFileStartAddressByNamePKcPmS1_+0x1b4>
                match = 0;
80004444:	fe042023          	sw	zero,-32(s0)
            }

            tempAddress += 1;
80004448:	fc042783          	lw	a5,-64(s0)
8000444c:	00178793          	addi	a5,a5,1
80004450:	fcf42023          	sw	a5,-64(s0)
            pos++;
80004454:	fdc42783          	lw	a5,-36(s0)
80004458:	00178793          	addi	a5,a5,1
8000445c:	fcf42e23          	sw	a5,-36(s0)
        while (c_flash != 0) {
80004460:	fdb44783          	lbu	a5,-37(s0)
80004464:	fa0792e3          	bnez	a5,80004408 <_Z25getFileStartAddressByNamePKcPmS1_+0x174>
          }
          // Found match
          if (match) {
80004468:	fe042783          	lw	a5,-32(s0)
8000446c:	04078c63          	beqz	a5,800044c4 <_Z25getFileStartAddressByNamePKcPmS1_+0x230>
            asm volatile ("nop");
80004470:	00000013          	nop
            asm volatile ("nop");
80004474:	00000013          	nop
            uint32_t start_address = readFlash(tempAddress);
80004478:	fc042783          	lw	a5,-64(s0)
8000447c:	00078513          	mv	a0,a5
80004480:	d69ff0ef          	jal	800041e8 <_Z9readFlashj>
80004484:	fca42623          	sw	a0,-52(s0)
            // tfp_printf("  Match found! Start address: 0x%x\r\n", start_address);
            tempAddress += 4; // Move past start address
80004488:	fc042783          	lw	a5,-64(s0)
8000448c:	00478793          	addi	a5,a5,4
80004490:	fcf42023          	sw	a5,-64(s0)
            uint32_t end_address = readFlash(tempAddress);
80004494:	fc042783          	lw	a5,-64(s0)
80004498:	00078513          	mv	a0,a5
8000449c:	d4dff0ef          	jal	800041e8 <_Z9readFlashj>
800044a0:	fca42423          	sw	a0,-56(s0)
            // tfp_printf("  End address: 0x%x\r\n", end_address);
            *file_start = start_address;
800044a4:	fa842783          	lw	a5,-88(s0)
800044a8:	fcc42703          	lw	a4,-52(s0)
800044ac:	00e7a023          	sw	a4,0(a5)
            *file_end = end_address;
800044b0:	fa442783          	lw	a5,-92(s0)
800044b4:	fc842703          	lw	a4,-56(s0)
800044b8:	00e7a023          	sw	a4,0(a5)
            // Returns the headers address
            return headersAddress;
800044bc:	fd442783          	lw	a5,-44(s0)
800044c0:	0440006f          	j	80004504 <_Z25getFileStartAddressByNamePKcPmS1_+0x270>
          }
          
          // Skip start and end addresses
          tempAddress += 4; // start
800044c4:	fc042783          	lw	a5,-64(s0)
800044c8:	00478793          	addi	a5,a5,4
800044cc:	fcf42023          	sw	a5,-64(s0)
          tempAddress += 4; // end
800044d0:	fc042783          	lw	a5,-64(s0)
800044d4:	00478793          	addi	a5,a5,4
800044d8:	fcf42023          	sw	a5,-64(s0)
          
          // Skip 256 bytes of sprite
          tempAddress += 256;
800044dc:	fc042783          	lw	a5,-64(s0)
800044e0:	10078793          	addi	a5,a5,256
800044e4:	fcf42023          	sw	a5,-64(s0)
    while(programCount--) {
800044e8:	fe744783          	lbu	a5,-25(s0)
800044ec:	fff78713          	addi	a4,a5,-1
800044f0:	fee403a3          	sb	a4,-25(s0)
800044f4:	00f037b3          	snez	a5,a5
800044f8:	0ff7f793          	zext.b	a5,a5
800044fc:	ec0796e3          	bnez	a5,800043c8 <_Z25getFileStartAddressByNamePKcPmS1_+0x134>
        }
    // tfp_printf("File not found: %s\r\n", filename);
    return 0xFFFFFFFF;
80004500:	fff00793          	li	a5,-1
}
80004504:	00078513          	mv	a0,a5
80004508:	05c12083          	lw	ra,92(sp)
8000450c:	05812403          	lw	s0,88(sp)
80004510:	06010113          	addi	sp,sp,96
80004514:	00008067          	ret

80004518 <_Z11riscy_fopenPKc>:
} file_t;

file_t files[MAX_FILES];
unsigned int fileCount = 0;
__attribute__((optimize("O0")))
int16_t riscy_fopen(const char* filename) {
80004518:	fc010113          	addi	sp,sp,-64
8000451c:	02112e23          	sw	ra,60(sp)
80004520:	02812c23          	sw	s0,56(sp)
80004524:	04010413          	addi	s0,sp,64
80004528:	fca42623          	sw	a0,-52(s0)
    uint32_t startAddress = 0;
8000452c:	fe042023          	sw	zero,-32(s0)
    uint32_t endAddress = 0;
80004530:	fc042e23          	sw	zero,-36(s0)
    
    // Look up the file by its name
    uint32_t headerAddress = getFileStartAddressByName(filename, &startAddress, &endAddress);
80004534:	fdc40713          	addi	a4,s0,-36
80004538:	fe040793          	addi	a5,s0,-32
8000453c:	00070613          	mv	a2,a4
80004540:	00078593          	mv	a1,a5
80004544:	fcc42503          	lw	a0,-52(s0)
80004548:	d4dff0ef          	jal	80004294 <_Z25getFileStartAddressByNamePKcPmS1_>
8000454c:	fea42423          	sw	a0,-24(s0)
    
    if (headerAddress == 0xFFFFFFFF) {
80004550:	fe842703          	lw	a4,-24(s0)
80004554:	fff00793          	li	a5,-1
80004558:	00f71e63          	bne	a4,a5,80004574 <_Z11riscy_fopenPKc+0x5c>
        // File not found
        tfp_printf("Error: File not found - %s\r\n", filename);
8000455c:	fcc42583          	lw	a1,-52(s0)
80004560:	00006517          	auipc	a0,0x6
80004564:	12850513          	addi	a0,a0,296 # 8000a688 <__clzsi2+0x10c>
80004568:	3a4020ef          	jal	8000690c <tfp_printf>
        return 0;
8000456c:	00000793          	li	a5,0
80004570:	16c0006f          	j	800046dc <_Z11riscy_fopenPKc+0x1c4>
    }

    // If file is found, initialize the file structure
    if (fileCount < MAX_FILES) {
80004574:	00007797          	auipc	a5,0x7
80004578:	d5c78793          	addi	a5,a5,-676 # 8000b2d0 <fileCount>
8000457c:	0007a703          	lw	a4,0(a5)
80004580:	00f00793          	li	a5,15
80004584:	14e7e463          	bltu	a5,a4,800046cc <_Z11riscy_fopenPKc+0x1b4>
        file_t* newFile = &files[fileCount];
80004588:	00007797          	auipc	a5,0x7
8000458c:	d4878793          	addi	a5,a5,-696 # 8000b2d0 <fileCount>
80004590:	0007a703          	lw	a4,0(a5)
80004594:	00070793          	mv	a5,a4
80004598:	00179793          	slli	a5,a5,0x1
8000459c:	00e787b3          	add	a5,a5,a4
800045a0:	00479793          	slli	a5,a5,0x4
800045a4:	00007717          	auipc	a4,0x7
800045a8:	a2870713          	addi	a4,a4,-1496 # 8000afcc <files>
800045ac:	00e787b3          	add	a5,a5,a4
800045b0:	fef42223          	sw	a5,-28(s0)
        newFile->startAddress = startAddress;
800045b4:	fe042703          	lw	a4,-32(s0)
800045b8:	fe442783          	lw	a5,-28(s0)
800045bc:	00e7a023          	sw	a4,0(a5)
        newFile->endAddress = endAddress+1;
800045c0:	fdc42783          	lw	a5,-36(s0)
800045c4:	00178713          	addi	a4,a5,1
800045c8:	fe442783          	lw	a5,-28(s0)
800045cc:	00e7a223          	sw	a4,4(a5)
        newFile->currentAddress = startAddress;
800045d0:	fe042703          	lw	a4,-32(s0)
800045d4:	fe442783          	lw	a5,-28(s0)
800045d8:	00e7a423          	sw	a4,8(a5)
        newFile->valid = 1; // Mark the file as valid
800045dc:	fe442783          	lw	a5,-28(s0)
800045e0:	00100713          	li	a4,1
800045e4:	00e78623          	sb	a4,12(a5)
        tfp_printf("    0x%x to 0x%x\r\n",newFile->startAddress, newFile->endAddress);
800045e8:	fe442783          	lw	a5,-28(s0)
800045ec:	0007a703          	lw	a4,0(a5)
800045f0:	fe442783          	lw	a5,-28(s0)
800045f4:	0047a783          	lw	a5,4(a5)
800045f8:	00078613          	mv	a2,a5
800045fc:	00070593          	mv	a1,a4
80004600:	00006517          	auipc	a0,0x6
80004604:	0a850513          	addi	a0,a0,168 # 8000a6a8 <__clzsi2+0x12c>
80004608:	304020ef          	jal	8000690c <tfp_printf>

        short fileNameLength = 0;
8000460c:	fe041723          	sh	zero,-18(s0)
        while(*filename && fileNameLength < MAX_FILE_NAME_LENGTH) {
80004610:	03c0006f          	j	8000464c <_Z11riscy_fopenPKc+0x134>
            newFile->name[fileNameLength++] = filename[fileNameLength];
80004614:	fee41783          	lh	a5,-18(s0)
80004618:	fcc42703          	lw	a4,-52(s0)
8000461c:	00f707b3          	add	a5,a4,a5
80004620:	0007c703          	lbu	a4,0(a5)
80004624:	fee41683          	lh	a3,-18(s0)
80004628:	01069793          	slli	a5,a3,0x10
8000462c:	0107d793          	srli	a5,a5,0x10
80004630:	00178793          	addi	a5,a5,1
80004634:	01079793          	slli	a5,a5,0x10
80004638:	0107d793          	srli	a5,a5,0x10
8000463c:	fef41723          	sh	a5,-18(s0)
80004640:	fe442783          	lw	a5,-28(s0)
80004644:	00d787b3          	add	a5,a5,a3
80004648:	00e786a3          	sb	a4,13(a5)
        while(*filename && fileNameLength < MAX_FILE_NAME_LENGTH) {
8000464c:	fcc42783          	lw	a5,-52(s0)
80004650:	0007c783          	lbu	a5,0(a5)
80004654:	00078863          	beqz	a5,80004664 <_Z11riscy_fopenPKc+0x14c>
80004658:	fee41703          	lh	a4,-18(s0)
8000465c:	01f00793          	li	a5,31
80004660:	fae7dae3          	bge	a5,a4,80004614 <_Z11riscy_fopenPKc+0xfc>
        }
        fileCount ++;
80004664:	00007797          	auipc	a5,0x7
80004668:	c6c78793          	addi	a5,a5,-916 # 8000b2d0 <fileCount>
8000466c:	0007a783          	lw	a5,0(a5)
80004670:	00178713          	addi	a4,a5,1
80004674:	00007797          	auipc	a5,0x7
80004678:	c5c78793          	addi	a5,a5,-932 # 8000b2d0 <fileCount>
8000467c:	00e7a023          	sw	a4,0(a5)
        tfp_printf("    File opened: %s (Handle: %d) (size: %d bytes)\r\n", filename, fileCount, newFile->endAddress - newFile->startAddress);
80004680:	00007797          	auipc	a5,0x7
80004684:	c5078793          	addi	a5,a5,-944 # 8000b2d0 <fileCount>
80004688:	0007a603          	lw	a2,0(a5)
8000468c:	fe442783          	lw	a5,-28(s0)
80004690:	0047a703          	lw	a4,4(a5)
80004694:	fe442783          	lw	a5,-28(s0)
80004698:	0007a783          	lw	a5,0(a5)
8000469c:	40f707b3          	sub	a5,a4,a5
800046a0:	00078693          	mv	a3,a5
800046a4:	fcc42583          	lw	a1,-52(s0)
800046a8:	00006517          	auipc	a0,0x6
800046ac:	01450513          	addi	a0,a0,20 # 8000a6bc <__clzsi2+0x140>
800046b0:	25c020ef          	jal	8000690c <tfp_printf>
        return fileCount;
800046b4:	00007797          	auipc	a5,0x7
800046b8:	c1c78793          	addi	a5,a5,-996 # 8000b2d0 <fileCount>
800046bc:	0007a783          	lw	a5,0(a5)
800046c0:	01079793          	slli	a5,a5,0x10
800046c4:	4107d793          	srai	a5,a5,0x10
800046c8:	0140006f          	j	800046dc <_Z11riscy_fopenPKc+0x1c4>
    }

    // If there is no space left for new files
    tfp_printf("Error: Maximum file count reached.\r\n");
800046cc:	00006517          	auipc	a0,0x6
800046d0:	02450513          	addi	a0,a0,36 # 8000a6f0 <__clzsi2+0x174>
800046d4:	238020ef          	jal	8000690c <tfp_printf>
    return 0;
800046d8:	00000793          	li	a5,0
}
800046dc:	00078513          	mv	a0,a5
800046e0:	03c12083          	lw	ra,60(sp)
800046e4:	03812403          	lw	s0,56(sp)
800046e8:	04010113          	addi	sp,sp,64
800046ec:	00008067          	ret

800046f0 <_Z11riscy_freadsPvm>:
__attribute__((optimize("O0")))
int32_t riscy_fread(int16_t fileHandle, void* buffer, uint32_t size) {
800046f0:	fc010113          	addi	sp,sp,-64
800046f4:	02112e23          	sw	ra,60(sp)
800046f8:	02812c23          	sw	s0,56(sp)
800046fc:	04010413          	addi	s0,sp,64
80004700:	00050793          	mv	a5,a0
80004704:	fcb42423          	sw	a1,-56(s0)
80004708:	fcc42223          	sw	a2,-60(s0)
8000470c:	fcf41723          	sh	a5,-50(s0)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004710:	fce41783          	lh	a5,-50(s0)
80004714:	04078263          	beqz	a5,80004758 <_Z11riscy_freadsPvm+0x68>
80004718:	fce41703          	lh	a4,-50(s0)
8000471c:	00007797          	auipc	a5,0x7
80004720:	bb478793          	addi	a5,a5,-1100 # 8000b2d0 <fileCount>
80004724:	0007a783          	lw	a5,0(a5)
80004728:	02e7e863          	bltu	a5,a4,80004758 <_Z11riscy_freadsPvm+0x68>
8000472c:	fce41783          	lh	a5,-50(s0)
80004730:	fff78713          	addi	a4,a5,-1
80004734:	00007697          	auipc	a3,0x7
80004738:	89868693          	addi	a3,a3,-1896 # 8000afcc <files>
8000473c:	00070793          	mv	a5,a4
80004740:	00179793          	slli	a5,a5,0x1
80004744:	00e787b3          	add	a5,a5,a4
80004748:	00479793          	slli	a5,a5,0x4
8000474c:	00f687b3          	add	a5,a3,a5
80004750:	00c7c783          	lbu	a5,12(a5)
80004754:	02079063          	bnez	a5,80004774 <_Z11riscy_freadsPvm+0x84>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004758:	fce41783          	lh	a5,-50(s0)
8000475c:	00078593          	mv	a1,a5
80004760:	00006517          	auipc	a0,0x6
80004764:	fb850513          	addi	a0,a0,-72 # 8000a718 <__clzsi2+0x19c>
80004768:	e4cff0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return 0;
8000476c:	00000793          	li	a5,0
80004770:	1d40006f          	j	80004944 <_Z11riscy_freadsPvm+0x254>
    }
    fileHandle -= 1; // Adjust for 0-based index
80004774:	fce45783          	lhu	a5,-50(s0)
80004778:	fff78793          	addi	a5,a5,-1
8000477c:	01079793          	slli	a5,a5,0x10
80004780:	0107d793          	srli	a5,a5,0x10
80004784:	fcf41723          	sh	a5,-50(s0)
    file_t* file = &files[fileHandle];
80004788:	fce41703          	lh	a4,-50(s0)
8000478c:	00070793          	mv	a5,a4
80004790:	00179793          	slli	a5,a5,0x1
80004794:	00e787b3          	add	a5,a5,a4
80004798:	00479793          	slli	a5,a5,0x4
8000479c:	00007717          	auipc	a4,0x7
800047a0:	83070713          	addi	a4,a4,-2000 # 8000afcc <files>
800047a4:	00e787b3          	add	a5,a5,a4
800047a8:	fef42223          	sw	a5,-28(s0)
    if (file->currentAddress + size > file->endAddress) {
800047ac:	fe442783          	lw	a5,-28(s0)
800047b0:	0087a703          	lw	a4,8(a5)
800047b4:	fc442783          	lw	a5,-60(s0)
800047b8:	00f70733          	add	a4,a4,a5
800047bc:	fe442783          	lw	a5,-28(s0)
800047c0:	0047a783          	lw	a5,4(a5)
800047c4:	00e7fc63          	bgeu	a5,a4,800047dc <_Z11riscy_freadsPvm+0xec>
        uart_printf("Error: Read exceeds file end address.\r\n");
800047c8:	00006517          	auipc	a0,0x6
800047cc:	f7050513          	addi	a0,a0,-144 # 8000a738 <__clzsi2+0x1bc>
800047d0:	de4ff0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return 0;
800047d4:	00000793          	li	a5,0
800047d8:	16c0006f          	j	80004944 <_Z11riscy_freadsPvm+0x254>
    }

    // Read data from flash into the buffer
    for (uint32_t i = 0; i < size/4; i ++) {
800047dc:	fe042623          	sw	zero,-20(s0)
800047e0:	0b80006f          	j	80004898 <_Z11riscy_freadsPvm+0x1a8>
        unsigned int data = readFlash(file->currentAddress + i*4);
800047e4:	fe442783          	lw	a5,-28(s0)
800047e8:	0087a703          	lw	a4,8(a5)
800047ec:	fec42783          	lw	a5,-20(s0)
800047f0:	00279793          	slli	a5,a5,0x2
800047f4:	00f707b3          	add	a5,a4,a5
800047f8:	00078513          	mv	a0,a5
800047fc:	9edff0ef          	jal	800041e8 <_Z9readFlashj>
80004800:	fca42e23          	sw	a0,-36(s0)
        ((uint8_t*)buffer)[i*4] = data & 0xFF;
80004804:	fec42783          	lw	a5,-20(s0)
80004808:	00279793          	slli	a5,a5,0x2
8000480c:	fc842703          	lw	a4,-56(s0)
80004810:	00f707b3          	add	a5,a4,a5
80004814:	fdc42703          	lw	a4,-36(s0)
80004818:	0ff77713          	zext.b	a4,a4
8000481c:	00e78023          	sb	a4,0(a5)
        ((uint8_t*)buffer)[i*4 + 1] = (data >> 8) & 0xFF;
80004820:	fdc42783          	lw	a5,-36(s0)
80004824:	0087d693          	srli	a3,a5,0x8
80004828:	fec42783          	lw	a5,-20(s0)
8000482c:	00279793          	slli	a5,a5,0x2
80004830:	00178793          	addi	a5,a5,1
80004834:	fc842703          	lw	a4,-56(s0)
80004838:	00f707b3          	add	a5,a4,a5
8000483c:	0ff6f713          	zext.b	a4,a3
80004840:	00e78023          	sb	a4,0(a5)
        ((uint8_t*)buffer)[i*4 + 2] = (data >> 16) & 0xFF;
80004844:	fdc42783          	lw	a5,-36(s0)
80004848:	0107d693          	srli	a3,a5,0x10
8000484c:	fec42783          	lw	a5,-20(s0)
80004850:	00279793          	slli	a5,a5,0x2
80004854:	00278793          	addi	a5,a5,2
80004858:	fc842703          	lw	a4,-56(s0)
8000485c:	00f707b3          	add	a5,a4,a5
80004860:	0ff6f713          	zext.b	a4,a3
80004864:	00e78023          	sb	a4,0(a5)
        ((uint8_t*)buffer)[i*4 + 3] = (data >> 24) & 0xFF;
80004868:	fdc42783          	lw	a5,-36(s0)
8000486c:	0187d693          	srli	a3,a5,0x18
80004870:	fec42783          	lw	a5,-20(s0)
80004874:	00279793          	slli	a5,a5,0x2
80004878:	00378793          	addi	a5,a5,3
8000487c:	fc842703          	lw	a4,-56(s0)
80004880:	00f707b3          	add	a5,a4,a5
80004884:	0ff6f713          	zext.b	a4,a3
80004888:	00e78023          	sb	a4,0(a5)
    for (uint32_t i = 0; i < size/4; i ++) {
8000488c:	fec42783          	lw	a5,-20(s0)
80004890:	00178793          	addi	a5,a5,1
80004894:	fef42623          	sw	a5,-20(s0)
80004898:	fc442783          	lw	a5,-60(s0)
8000489c:	0027d793          	srli	a5,a5,0x2
800048a0:	fec42703          	lw	a4,-20(s0)
800048a4:	f4f760e3          	bltu	a4,a5,800047e4 <_Z11riscy_freadsPvm+0xf4>
    }
    // if the size is not a multiple of 4, read the remaining bytes
    if (size % 4 != 0) {
800048a8:	fc442783          	lw	a5,-60(s0)
800048ac:	0037f793          	andi	a5,a5,3
800048b0:	06078c63          	beqz	a5,80004928 <_Z11riscy_freadsPvm+0x238>
        unsigned int data = readFlash(file->currentAddress + (size/4)*4);
800048b4:	fe442783          	lw	a5,-28(s0)
800048b8:	0087a703          	lw	a4,8(a5)
800048bc:	fc442783          	lw	a5,-60(s0)
800048c0:	ffc7f793          	andi	a5,a5,-4
800048c4:	00f707b3          	add	a5,a4,a5
800048c8:	00078513          	mv	a0,a5
800048cc:	91dff0ef          	jal	800041e8 <_Z9readFlashj>
800048d0:	fea42023          	sw	a0,-32(s0)
        for (uint32_t i = 0; i < size % 4; i++) {
800048d4:	fe042423          	sw	zero,-24(s0)
800048d8:	0400006f          	j	80004918 <_Z11riscy_freadsPvm+0x228>
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
800048dc:	fe842783          	lw	a5,-24(s0)
800048e0:	00379793          	slli	a5,a5,0x3
800048e4:	fe042703          	lw	a4,-32(s0)
800048e8:	00f756b3          	srl	a3,a4,a5
800048ec:	fc442783          	lw	a5,-60(s0)
800048f0:	ffc7f713          	andi	a4,a5,-4
800048f4:	fe842783          	lw	a5,-24(s0)
800048f8:	00f707b3          	add	a5,a4,a5
800048fc:	fc842703          	lw	a4,-56(s0)
80004900:	00f707b3          	add	a5,a4,a5
80004904:	0ff6f713          	zext.b	a4,a3
80004908:	00e78023          	sb	a4,0(a5)
        for (uint32_t i = 0; i < size % 4; i++) {
8000490c:	fe842783          	lw	a5,-24(s0)
80004910:	00178793          	addi	a5,a5,1
80004914:	fef42423          	sw	a5,-24(s0)
80004918:	fc442783          	lw	a5,-60(s0)
8000491c:	0037f793          	andi	a5,a5,3
80004920:	fe842703          	lw	a4,-24(s0)
80004924:	faf76ce3          	bltu	a4,a5,800048dc <_Z11riscy_freadsPvm+0x1ec>
        }
    }
    // Update current address
    file->currentAddress += size;
80004928:	fe442783          	lw	a5,-28(s0)
8000492c:	0087a703          	lw	a4,8(a5)
80004930:	fc442783          	lw	a5,-60(s0)
80004934:	00f70733          	add	a4,a4,a5
80004938:	fe442783          	lw	a5,-28(s0)
8000493c:	00e7a423          	sw	a4,8(a5)

    return size;
80004940:	fc442783          	lw	a5,-60(s0)
}
80004944:	00078513          	mv	a0,a5
80004948:	03c12083          	lw	ra,60(sp)
8000494c:	03812403          	lw	s0,56(sp)
80004950:	04010113          	addi	sp,sp,64
80004954:	00008067          	ret

80004958 <_Z11riscy_fgetcs>:
__attribute__((optimize("O0")))
char riscy_fgetc(int16_t fileHandle) {
80004958:	fd010113          	addi	sp,sp,-48
8000495c:	02112623          	sw	ra,44(sp)
80004960:	02812423          	sw	s0,40(sp)
80004964:	03010413          	addi	s0,sp,48
80004968:	00050793          	mv	a5,a0
8000496c:	fcf41f23          	sh	a5,-34(s0)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004970:	fde41783          	lh	a5,-34(s0)
80004974:	04078263          	beqz	a5,800049b8 <_Z11riscy_fgetcs+0x60>
80004978:	fde41703          	lh	a4,-34(s0)
8000497c:	00007797          	auipc	a5,0x7
80004980:	95478793          	addi	a5,a5,-1708 # 8000b2d0 <fileCount>
80004984:	0007a783          	lw	a5,0(a5)
80004988:	02e7e863          	bltu	a5,a4,800049b8 <_Z11riscy_fgetcs+0x60>
8000498c:	fde41783          	lh	a5,-34(s0)
80004990:	fff78713          	addi	a4,a5,-1
80004994:	00006697          	auipc	a3,0x6
80004998:	63868693          	addi	a3,a3,1592 # 8000afcc <files>
8000499c:	00070793          	mv	a5,a4
800049a0:	00179793          	slli	a5,a5,0x1
800049a4:	00e787b3          	add	a5,a5,a4
800049a8:	00479793          	slli	a5,a5,0x4
800049ac:	00f687b3          	add	a5,a3,a5
800049b0:	00c7c783          	lbu	a5,12(a5)
800049b4:	02079063          	bnez	a5,800049d4 <_Z11riscy_fgetcs+0x7c>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
800049b8:	fde41783          	lh	a5,-34(s0)
800049bc:	00078593          	mv	a1,a5
800049c0:	00006517          	auipc	a0,0x6
800049c4:	d5850513          	addi	a0,a0,-680 # 8000a718 <__clzsi2+0x19c>
800049c8:	becff0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return 0;
800049cc:	00000793          	li	a5,0
800049d0:	0980006f          	j	80004a68 <_Z11riscy_fgetcs+0x110>
    }
    fileHandle -= 1; // Adjust for 0-based index
800049d4:	fde45783          	lhu	a5,-34(s0)
800049d8:	fff78793          	addi	a5,a5,-1
800049dc:	01079793          	slli	a5,a5,0x10
800049e0:	0107d793          	srli	a5,a5,0x10
800049e4:	fcf41f23          	sh	a5,-34(s0)
    file_t* file = &files[fileHandle];
800049e8:	fde41703          	lh	a4,-34(s0)
800049ec:	00070793          	mv	a5,a4
800049f0:	00179793          	slli	a5,a5,0x1
800049f4:	00e787b3          	add	a5,a5,a4
800049f8:	00479793          	slli	a5,a5,0x4
800049fc:	00006717          	auipc	a4,0x6
80004a00:	5d070713          	addi	a4,a4,1488 # 8000afcc <files>
80004a04:	00e787b3          	add	a5,a5,a4
80004a08:	fef42623          	sw	a5,-20(s0)
    if (file->currentAddress >= file->endAddress) {
80004a0c:	fec42783          	lw	a5,-20(s0)
80004a10:	0087a703          	lw	a4,8(a5)
80004a14:	fec42783          	lw	a5,-20(s0)
80004a18:	0047a783          	lw	a5,4(a5)
80004a1c:	00f76c63          	bltu	a4,a5,80004a34 <_Z11riscy_fgetcs+0xdc>
        uart_printf("Error: End of file reached.\r\n");
80004a20:	00006517          	auipc	a0,0x6
80004a24:	d4050513          	addi	a0,a0,-704 # 8000a760 <__clzsi2+0x1e4>
80004a28:	b8cff0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return 0;
80004a2c:	00000793          	li	a5,0
80004a30:	0380006f          	j	80004a68 <_Z11riscy_fgetcs+0x110>
    }

    // Read a single byte from flash
    unsigned int data = readFlash(file->currentAddress);
80004a34:	fec42783          	lw	a5,-20(s0)
80004a38:	0087a783          	lw	a5,8(a5)
80004a3c:	00078513          	mv	a0,a5
80004a40:	fa8ff0ef          	jal	800041e8 <_Z9readFlashj>
80004a44:	fea42423          	sw	a0,-24(s0)
    char byte = data & 0xFF; // Get the first byte
80004a48:	fe842783          	lw	a5,-24(s0)
80004a4c:	fef403a3          	sb	a5,-25(s0)
    file->currentAddress += 1; // Move to the next byte
80004a50:	fec42783          	lw	a5,-20(s0)
80004a54:	0087a783          	lw	a5,8(a5)
80004a58:	00178713          	addi	a4,a5,1
80004a5c:	fec42783          	lw	a5,-20(s0)
80004a60:	00e7a423          	sw	a4,8(a5)
    return byte;
80004a64:	fe744783          	lbu	a5,-25(s0)
}
80004a68:	00078513          	mv	a0,a5
80004a6c:	02c12083          	lw	ra,44(sp)
80004a70:	02812403          	lw	s0,40(sp)
80004a74:	03010113          	addi	sp,sp,48
80004a78:	00008067          	ret

80004a7c <_Z12riscy_fcloses>:
__attribute__((optimize("O0")))
uint8_t riscy_fclose(int16_t fileHandle) {
80004a7c:	fe010113          	addi	sp,sp,-32
80004a80:	00112e23          	sw	ra,28(sp)
80004a84:	00812c23          	sw	s0,24(sp)
80004a88:	02010413          	addi	s0,sp,32
80004a8c:	00050793          	mv	a5,a0
80004a90:	fef41723          	sh	a5,-18(s0)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004a94:	fee41783          	lh	a5,-18(s0)
80004a98:	04078263          	beqz	a5,80004adc <_Z12riscy_fcloses+0x60>
80004a9c:	fee41703          	lh	a4,-18(s0)
80004aa0:	00007797          	auipc	a5,0x7
80004aa4:	83078793          	addi	a5,a5,-2000 # 8000b2d0 <fileCount>
80004aa8:	0007a783          	lw	a5,0(a5)
80004aac:	02e7e863          	bltu	a5,a4,80004adc <_Z12riscy_fcloses+0x60>
80004ab0:	fee41783          	lh	a5,-18(s0)
80004ab4:	fff78713          	addi	a4,a5,-1
80004ab8:	00006697          	auipc	a3,0x6
80004abc:	51468693          	addi	a3,a3,1300 # 8000afcc <files>
80004ac0:	00070793          	mv	a5,a4
80004ac4:	00179793          	slli	a5,a5,0x1
80004ac8:	00e787b3          	add	a5,a5,a4
80004acc:	00479793          	slli	a5,a5,0x4
80004ad0:	00f687b3          	add	a5,a3,a5
80004ad4:	00c7c783          	lbu	a5,12(a5)
80004ad8:	02079063          	bnez	a5,80004af8 <_Z12riscy_fcloses+0x7c>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004adc:	fee41783          	lh	a5,-18(s0)
80004ae0:	00078593          	mv	a1,a5
80004ae4:	00006517          	auipc	a0,0x6
80004ae8:	c3450513          	addi	a0,a0,-972 # 8000a718 <__clzsi2+0x19c>
80004aec:	ac8ff0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return 1; // Error
80004af0:	00100793          	li	a5,1
80004af4:	0400006f          	j	80004b34 <_Z12riscy_fcloses+0xb8>
    }
    fileHandle -= 1; // Adjust for 0-based index
80004af8:	fee45783          	lhu	a5,-18(s0)
80004afc:	fff78793          	addi	a5,a5,-1
80004b00:	01079793          	slli	a5,a5,0x10
80004b04:	0107d793          	srli	a5,a5,0x10
80004b08:	fef41723          	sh	a5,-18(s0)
    // Mark the file as invalid
    files[fileHandle].valid = 0;
80004b0c:	fee41703          	lh	a4,-18(s0)
80004b10:	00006697          	auipc	a3,0x6
80004b14:	4bc68693          	addi	a3,a3,1212 # 8000afcc <files>
80004b18:	00070793          	mv	a5,a4
80004b1c:	00179793          	slli	a5,a5,0x1
80004b20:	00e787b3          	add	a5,a5,a4
80004b24:	00479793          	slli	a5,a5,0x4
80004b28:	00f687b3          	add	a5,a3,a5
80004b2c:	00078623          	sb	zero,12(a5)
    return 0; // Success
80004b30:	00000793          	li	a5,0
}
80004b34:	00078513          	mv	a0,a5
80004b38:	01c12083          	lw	ra,28(sp)
80004b3c:	01812403          	lw	s0,24(sp)
80004b40:	02010113          	addi	sp,sp,32
80004b44:	00008067          	ret

80004b48 <_Z15riscy_heap_initv>:

// ====================================================
// Simple heap allocator
// ====================================================
__attribute__((optimize("O0")))
void riscy_heap_init(void) {
80004b48:	fe010113          	addi	sp,sp,-32
80004b4c:	00112e23          	sw	ra,28(sp)
80004b50:	00812c23          	sw	s0,24(sp)
80004b54:	02010413          	addi	s0,sp,32
    uintptr_t start = (uintptr_t)&_heap_start;
80004b58:	00006797          	auipc	a5,0x6
80004b5c:	78878793          	addi	a5,a5,1928 # 8000b2e0 <_heap_start>
80004b60:	fef42623          	sw	a5,-20(s0)
    // current_heap = (uint8_t *)ALIGN_UP(start, MALLOC_ALIGNMENT);
    current_heap = (uint8_t *)start;
80004b64:	fec42703          	lw	a4,-20(s0)
80004b68:	00006797          	auipc	a5,0x6
80004b6c:	76478793          	addi	a5,a5,1892 # 8000b2cc <_ZL12current_heap>
80004b70:	00e7a023          	sw	a4,0(a5)
}
80004b74:	00000013          	nop
80004b78:	01c12083          	lw	ra,28(sp)
80004b7c:	01812403          	lw	s0,24(sp)
80004b80:	02010113          	addi	sp,sp,32
80004b84:	00008067          	ret

80004b88 <_Z12riscy_mallocj>:
__attribute__((optimize("O0")))
void* riscy_malloc(size_t size) {
80004b88:	fd010113          	addi	sp,sp,-48
80004b8c:	02112623          	sw	ra,44(sp)
80004b90:	02812423          	sw	s0,40(sp)
80004b94:	03010413          	addi	s0,sp,48
80004b98:	fca42e23          	sw	a0,-36(s0)
    asm volatile ("nop");
80004b9c:	00000013          	nop
    asm volatile ("nop");
80004ba0:	00000013          	nop
    asm volatile ("nop");
80004ba4:	00000013          	nop
    if (!current_heap)
80004ba8:	00006797          	auipc	a5,0x6
80004bac:	72478793          	addi	a5,a5,1828 # 8000b2cc <_ZL12current_heap>
80004bb0:	0007a783          	lw	a5,0(a5)
80004bb4:	00079463          	bnez	a5,80004bbc <_Z12riscy_mallocj+0x34>
        riscy_heap_init(); // lazy init
80004bb8:	f91ff0ef          	jal	80004b48 <_Z15riscy_heap_initv>

    // tfp_printf("    malloc: Requested size: %d bytes\r\n", (unsigned)size);
    // tfp_printf("    malloc: HEAPSIZE: %dKB\r\n", (unsigned)((uintptr_t)&_heap_end - (uintptr_t)&_heap_start)/1024);
    // Round up size and pointer to MALLOC_ALIGNMENT
    size = ALIGN_UP(size, MALLOC_ALIGNMENT);
80004bbc:	fdc42783          	lw	a5,-36(s0)
80004bc0:	1ff78793          	addi	a5,a5,511
80004bc4:	e007f793          	andi	a5,a5,-512
80004bc8:	fcf42e23          	sw	a5,-36(s0)
    uintptr_t ptr_aligned = ALIGN_UP((uintptr_t)current_heap, MALLOC_ALIGNMENT);
80004bcc:	00006797          	auipc	a5,0x6
80004bd0:	70078793          	addi	a5,a5,1792 # 8000b2cc <_ZL12current_heap>
80004bd4:	0007a783          	lw	a5,0(a5)
80004bd8:	1ff78793          	addi	a5,a5,511
80004bdc:	e007f793          	andi	a5,a5,-512
80004be0:	fef42623          	sw	a5,-20(s0)

    // tfp_printf("    malloc: Current heap used: %dKB\r\n", (unsigned)(ptr_aligned - (uintptr_t)&_heap_start)/1024);
    // Check for overflow
    if ((ptr_aligned + size) > (uintptr_t)&_heap_end) {
80004be4:	fec42703          	lw	a4,-20(s0)
80004be8:	fdc42783          	lw	a5,-36(s0)
80004bec:	00f70733          	add	a4,a4,a5
80004bf0:	00326797          	auipc	a5,0x326
80004bf4:	6f078793          	addi	a5,a5,1776 # 8032b2e0 <_heap_end>
80004bf8:	00e7f663          	bgeu	a5,a4,80004c04 <_Z12riscy_mallocj+0x7c>
        // uart_printf("Heap overflow! Requested %d bytes, current heap used: %d\r\n", (unsigned)size, (unsigned)(ptr_aligned - (uintptr_t)&_heap_start));
        return NULL;
80004bfc:	00000793          	li	a5,0
80004c00:	02c0006f          	j	80004c2c <_Z12riscy_mallocj+0xa4>
    }

    void *ptr = (void *)ptr_aligned;
80004c04:	fec42783          	lw	a5,-20(s0)
80004c08:	fef42423          	sw	a5,-24(s0)
    current_heap = (uint8_t *)(ptr_aligned + size);
80004c0c:	fec42703          	lw	a4,-20(s0)
80004c10:	fdc42783          	lw	a5,-36(s0)
80004c14:	00f707b3          	add	a5,a4,a5
80004c18:	00078713          	mv	a4,a5
80004c1c:	00006797          	auipc	a5,0x6
80004c20:	6b078793          	addi	a5,a5,1712 # 8000b2cc <_ZL12current_heap>
80004c24:	00e7a023          	sw	a4,0(a5)

    return ptr;
80004c28:	fe842783          	lw	a5,-24(s0)
}
80004c2c:	00078513          	mv	a0,a5
80004c30:	02c12083          	lw	ra,44(sp)
80004c34:	02812403          	lw	s0,40(sp)
80004c38:	03010113          	addi	sp,sp,48
80004c3c:	00008067          	ret

80004c40 <_Z11riscy_fseeksli>:
__attribute__((optimize("O0")))
int riscy_fseek(int16_t fileHandle, long offset, int whence) {
80004c40:	fd010113          	addi	sp,sp,-48
80004c44:	02112623          	sw	ra,44(sp)
80004c48:	02812423          	sw	s0,40(sp)
80004c4c:	03010413          	addi	s0,sp,48
80004c50:	00050793          	mv	a5,a0
80004c54:	fcb42c23          	sw	a1,-40(s0)
80004c58:	fcc42a23          	sw	a2,-44(s0)
80004c5c:	fcf41f23          	sh	a5,-34(s0)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004c60:	fde41783          	lh	a5,-34(s0)
80004c64:	04078263          	beqz	a5,80004ca8 <_Z11riscy_fseeksli+0x68>
80004c68:	fde41703          	lh	a4,-34(s0)
80004c6c:	00006797          	auipc	a5,0x6
80004c70:	66478793          	addi	a5,a5,1636 # 8000b2d0 <fileCount>
80004c74:	0007a783          	lw	a5,0(a5)
80004c78:	02e7e863          	bltu	a5,a4,80004ca8 <_Z11riscy_fseeksli+0x68>
80004c7c:	fde41783          	lh	a5,-34(s0)
80004c80:	fff78713          	addi	a4,a5,-1
80004c84:	00006697          	auipc	a3,0x6
80004c88:	34868693          	addi	a3,a3,840 # 8000afcc <files>
80004c8c:	00070793          	mv	a5,a4
80004c90:	00179793          	slli	a5,a5,0x1
80004c94:	00e787b3          	add	a5,a5,a4
80004c98:	00479793          	slli	a5,a5,0x4
80004c9c:	00f687b3          	add	a5,a3,a5
80004ca0:	00c7c783          	lbu	a5,12(a5)
80004ca4:	02079063          	bnez	a5,80004cc4 <_Z11riscy_fseeksli+0x84>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004ca8:	fde41783          	lh	a5,-34(s0)
80004cac:	00078593          	mv	a1,a5
80004cb0:	00006517          	auipc	a0,0x6
80004cb4:	a6850513          	addi	a0,a0,-1432 # 8000a718 <__clzsi2+0x19c>
80004cb8:	8fcff0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return -1;  // Error
80004cbc:	fff00793          	li	a5,-1
80004cc0:	1840006f          	j	80004e44 <_Z11riscy_fseeksli+0x204>
    }

    fileHandle -= 1;  // Adjust for 0-based index
80004cc4:	fde45783          	lhu	a5,-34(s0)
80004cc8:	fff78793          	addi	a5,a5,-1
80004ccc:	01079793          	slli	a5,a5,0x10
80004cd0:	0107d793          	srli	a5,a5,0x10
80004cd4:	fcf41f23          	sh	a5,-34(s0)
    file_t* file = &files[fileHandle];
80004cd8:	fde41703          	lh	a4,-34(s0)
80004cdc:	00070793          	mv	a5,a4
80004ce0:	00179793          	slli	a5,a5,0x1
80004ce4:	00e787b3          	add	a5,a5,a4
80004ce8:	00479793          	slli	a5,a5,0x4
80004cec:	00006717          	auipc	a4,0x6
80004cf0:	2e070713          	addi	a4,a4,736 # 8000afcc <files>
80004cf4:	00e787b3          	add	a5,a5,a4
80004cf8:	fef42623          	sw	a5,-20(s0)

    if (whence == SEEK_SET) {
80004cfc:	fd442783          	lw	a5,-44(s0)
80004d00:	04079c63          	bnez	a5,80004d58 <_Z11riscy_fseeksli+0x118>
        // Set position from the start of the file
        if (offset < 0 || offset > (file->endAddress - file->startAddress)) {
80004d04:	fd842783          	lw	a5,-40(s0)
80004d08:	0207c063          	bltz	a5,80004d28 <_Z11riscy_fseeksli+0xe8>
80004d0c:	fec42783          	lw	a5,-20(s0)
80004d10:	0047a703          	lw	a4,4(a5)
80004d14:	fec42783          	lw	a5,-20(s0)
80004d18:	0007a783          	lw	a5,0(a5)
80004d1c:	40f70733          	sub	a4,a4,a5
80004d20:	fd842783          	lw	a5,-40(s0)
80004d24:	00f77c63          	bgeu	a4,a5,80004d3c <_Z11riscy_fseeksli+0xfc>
            uart_printf("Error: Invalid offset for SEEK_SET\r\n");
80004d28:	00006517          	auipc	a0,0x6
80004d2c:	a5850513          	addi	a0,a0,-1448 # 8000a780 <__clzsi2+0x204>
80004d30:	884ff0ef          	jal	80003db4 <_Z11uart_printfPKcz>
            return -1;
80004d34:	fff00793          	li	a5,-1
80004d38:	10c0006f          	j	80004e44 <_Z11riscy_fseeksli+0x204>
        }
        file->currentAddress = file->startAddress + offset;
80004d3c:	fec42783          	lw	a5,-20(s0)
80004d40:	0007a703          	lw	a4,0(a5)
80004d44:	fd842783          	lw	a5,-40(s0)
80004d48:	00f70733          	add	a4,a4,a5
80004d4c:	fec42783          	lw	a5,-20(s0)
80004d50:	00e7a423          	sw	a4,8(a5)
80004d54:	0ec0006f          	j	80004e40 <_Z11riscy_fseeksli+0x200>
    } else if (whence == SEEK_CUR) {
80004d58:	fd442703          	lw	a4,-44(s0)
80004d5c:	00100793          	li	a5,1
80004d60:	06f71663          	bne	a4,a5,80004dcc <_Z11riscy_fseeksli+0x18c>
        // Set position from the current position
        if (file->currentAddress + offset < file->startAddress || file->currentAddress + offset > file->endAddress) {
80004d64:	fec42783          	lw	a5,-20(s0)
80004d68:	0087a703          	lw	a4,8(a5)
80004d6c:	fd842783          	lw	a5,-40(s0)
80004d70:	00f70733          	add	a4,a4,a5
80004d74:	fec42783          	lw	a5,-20(s0)
80004d78:	0007a783          	lw	a5,0(a5)
80004d7c:	02f76063          	bltu	a4,a5,80004d9c <_Z11riscy_fseeksli+0x15c>
80004d80:	fec42783          	lw	a5,-20(s0)
80004d84:	0087a703          	lw	a4,8(a5)
80004d88:	fd842783          	lw	a5,-40(s0)
80004d8c:	00f70733          	add	a4,a4,a5
80004d90:	fec42783          	lw	a5,-20(s0)
80004d94:	0047a783          	lw	a5,4(a5)
80004d98:	00e7fc63          	bgeu	a5,a4,80004db0 <_Z11riscy_fseeksli+0x170>
            uart_printf("Error: Invalid offset for SEEK_CUR\r\n");
80004d9c:	00006517          	auipc	a0,0x6
80004da0:	a0c50513          	addi	a0,a0,-1524 # 8000a7a8 <__clzsi2+0x22c>
80004da4:	810ff0ef          	jal	80003db4 <_Z11uart_printfPKcz>
            return -1;
80004da8:	fff00793          	li	a5,-1
80004dac:	0980006f          	j	80004e44 <_Z11riscy_fseeksli+0x204>
        }
        file->currentAddress += offset;
80004db0:	fec42783          	lw	a5,-20(s0)
80004db4:	0087a703          	lw	a4,8(a5)
80004db8:	fd842783          	lw	a5,-40(s0)
80004dbc:	00f70733          	add	a4,a4,a5
80004dc0:	fec42783          	lw	a5,-20(s0)
80004dc4:	00e7a423          	sw	a4,8(a5)
80004dc8:	0780006f          	j	80004e40 <_Z11riscy_fseeksli+0x200>
    } else if (whence == SEEK_END) {
80004dcc:	fd442703          	lw	a4,-44(s0)
80004dd0:	00200793          	li	a5,2
80004dd4:	04f71c63          	bne	a4,a5,80004e2c <_Z11riscy_fseeksli+0x1ec>
        // Set position from the end of the file
        if (offset > 0 || file->endAddress + offset < file->startAddress) {
80004dd8:	fd842783          	lw	a5,-40(s0)
80004ddc:	02f04063          	bgtz	a5,80004dfc <_Z11riscy_fseeksli+0x1bc>
80004de0:	fec42783          	lw	a5,-20(s0)
80004de4:	0047a703          	lw	a4,4(a5)
80004de8:	fd842783          	lw	a5,-40(s0)
80004dec:	00f70733          	add	a4,a4,a5
80004df0:	fec42783          	lw	a5,-20(s0)
80004df4:	0007a783          	lw	a5,0(a5)
80004df8:	00f77c63          	bgeu	a4,a5,80004e10 <_Z11riscy_fseeksli+0x1d0>
            uart_printf("Error: Invalid offset for SEEK_END\r\n");
80004dfc:	00006517          	auipc	a0,0x6
80004e00:	9d450513          	addi	a0,a0,-1580 # 8000a7d0 <__clzsi2+0x254>
80004e04:	fb1fe0ef          	jal	80003db4 <_Z11uart_printfPKcz>
            return -1;
80004e08:	fff00793          	li	a5,-1
80004e0c:	0380006f          	j	80004e44 <_Z11riscy_fseeksli+0x204>
        }
        file->currentAddress = file->endAddress + offset;
80004e10:	fec42783          	lw	a5,-20(s0)
80004e14:	0047a703          	lw	a4,4(a5)
80004e18:	fd842783          	lw	a5,-40(s0)
80004e1c:	00f70733          	add	a4,a4,a5
80004e20:	fec42783          	lw	a5,-20(s0)
80004e24:	00e7a423          	sw	a4,8(a5)
80004e28:	0180006f          	j	80004e40 <_Z11riscy_fseeksli+0x200>
    } else {
        uart_printf("Error: Invalid whence value\r\n");
80004e2c:	00006517          	auipc	a0,0x6
80004e30:	9cc50513          	addi	a0,a0,-1588 # 8000a7f8 <__clzsi2+0x27c>
80004e34:	f81fe0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return -1;
80004e38:	fff00793          	li	a5,-1
80004e3c:	0080006f          	j	80004e44 <_Z11riscy_fseeksli+0x204>
    }

    return 0;  // Success
80004e40:	00000793          	li	a5,0
}
80004e44:	00078513          	mv	a0,a5
80004e48:	02c12083          	lw	ra,44(sp)
80004e4c:	02812403          	lw	s0,40(sp)
80004e50:	03010113          	addi	sp,sp,48
80004e54:	00008067          	ret

80004e58 <_Z11riscy_ftells>:
__attribute__((optimize("O0")))
int riscy_ftell(int16_t fileHandle) {
80004e58:	fd010113          	addi	sp,sp,-48
80004e5c:	02112623          	sw	ra,44(sp)
80004e60:	02812423          	sw	s0,40(sp)
80004e64:	03010413          	addi	s0,sp,48
80004e68:	00050793          	mv	a5,a0
80004e6c:	fcf41f23          	sh	a5,-34(s0)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004e70:	fde41783          	lh	a5,-34(s0)
80004e74:	04078263          	beqz	a5,80004eb8 <_Z11riscy_ftells+0x60>
80004e78:	fde41703          	lh	a4,-34(s0)
80004e7c:	00006797          	auipc	a5,0x6
80004e80:	45478793          	addi	a5,a5,1108 # 8000b2d0 <fileCount>
80004e84:	0007a783          	lw	a5,0(a5)
80004e88:	02e7e863          	bltu	a5,a4,80004eb8 <_Z11riscy_ftells+0x60>
80004e8c:	fde41783          	lh	a5,-34(s0)
80004e90:	fff78713          	addi	a4,a5,-1
80004e94:	00006697          	auipc	a3,0x6
80004e98:	13868693          	addi	a3,a3,312 # 8000afcc <files>
80004e9c:	00070793          	mv	a5,a4
80004ea0:	00179793          	slli	a5,a5,0x1
80004ea4:	00e787b3          	add	a5,a5,a4
80004ea8:	00479793          	slli	a5,a5,0x4
80004eac:	00f687b3          	add	a5,a3,a5
80004eb0:	00c7c783          	lbu	a5,12(a5)
80004eb4:	02079063          	bnez	a5,80004ed4 <_Z11riscy_ftells+0x7c>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004eb8:	fde41783          	lh	a5,-34(s0)
80004ebc:	00078593          	mv	a1,a5
80004ec0:	00006517          	auipc	a0,0x6
80004ec4:	85850513          	addi	a0,a0,-1960 # 8000a718 <__clzsi2+0x19c>
80004ec8:	eedfe0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return -1;  // Error
80004ecc:	fff00793          	li	a5,-1
80004ed0:	0500006f          	j	80004f20 <_Z11riscy_ftells+0xc8>
    }

    fileHandle -= 1;  // Adjust for 0-based index
80004ed4:	fde45783          	lhu	a5,-34(s0)
80004ed8:	fff78793          	addi	a5,a5,-1
80004edc:	01079793          	slli	a5,a5,0x10
80004ee0:	0107d793          	srli	a5,a5,0x10
80004ee4:	fcf41f23          	sh	a5,-34(s0)
    file_t* file = &files[fileHandle];
80004ee8:	fde41703          	lh	a4,-34(s0)
80004eec:	00070793          	mv	a5,a4
80004ef0:	00179793          	slli	a5,a5,0x1
80004ef4:	00e787b3          	add	a5,a5,a4
80004ef8:	00479793          	slli	a5,a5,0x4
80004efc:	00006717          	auipc	a4,0x6
80004f00:	0d070713          	addi	a4,a4,208 # 8000afcc <files>
80004f04:	00e787b3          	add	a5,a5,a4
80004f08:	fef42623          	sw	a5,-20(s0)

    // Return the current position relative to the beginning of the file
    return file->currentAddress - file->startAddress;
80004f0c:	fec42783          	lw	a5,-20(s0)
80004f10:	0087a703          	lw	a4,8(a5)
80004f14:	fec42783          	lw	a5,-20(s0)
80004f18:	0007a783          	lw	a5,0(a5)
80004f1c:	40f707b3          	sub	a5,a4,a5
}
80004f20:	00078513          	mv	a0,a5
80004f24:	02c12083          	lw	ra,44(sp)
80004f28:	02812403          	lw	s0,40(sp)
80004f2c:	03010113          	addi	sp,sp,48
80004f30:	00008067          	ret

80004f34 <_Z10riscy_feofs>:
__attribute__((optimize("O0")))
int riscy_feof(int16_t fileHandle) {
80004f34:	fd010113          	addi	sp,sp,-48
80004f38:	02112623          	sw	ra,44(sp)
80004f3c:	02812423          	sw	s0,40(sp)
80004f40:	03010413          	addi	s0,sp,48
80004f44:	00050793          	mv	a5,a0
80004f48:	fcf41f23          	sh	a5,-34(s0)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004f4c:	fde41783          	lh	a5,-34(s0)
80004f50:	04078263          	beqz	a5,80004f94 <_Z10riscy_feofs+0x60>
80004f54:	fde41703          	lh	a4,-34(s0)
80004f58:	00006797          	auipc	a5,0x6
80004f5c:	37878793          	addi	a5,a5,888 # 8000b2d0 <fileCount>
80004f60:	0007a783          	lw	a5,0(a5)
80004f64:	02e7e863          	bltu	a5,a4,80004f94 <_Z10riscy_feofs+0x60>
80004f68:	fde41783          	lh	a5,-34(s0)
80004f6c:	fff78713          	addi	a4,a5,-1
80004f70:	00006697          	auipc	a3,0x6
80004f74:	05c68693          	addi	a3,a3,92 # 8000afcc <files>
80004f78:	00070793          	mv	a5,a4
80004f7c:	00179793          	slli	a5,a5,0x1
80004f80:	00e787b3          	add	a5,a5,a4
80004f84:	00479793          	slli	a5,a5,0x4
80004f88:	00f687b3          	add	a5,a3,a5
80004f8c:	00c7c783          	lbu	a5,12(a5)
80004f90:	02079063          	bnez	a5,80004fb0 <_Z10riscy_feofs+0x7c>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004f94:	fde41783          	lh	a5,-34(s0)
80004f98:	00078593          	mv	a1,a5
80004f9c:	00005517          	auipc	a0,0x5
80004fa0:	77c50513          	addi	a0,a0,1916 # 8000a718 <__clzsi2+0x19c>
80004fa4:	e11fe0ef          	jal	80003db4 <_Z11uart_printfPKcz>
        return -1;  // Error
80004fa8:	fff00793          	li	a5,-1
80004fac:	05c0006f          	j	80005008 <_Z10riscy_feofs+0xd4>
    }

    fileHandle -= 1;  // Adjust for 0-based index
80004fb0:	fde45783          	lhu	a5,-34(s0)
80004fb4:	fff78793          	addi	a5,a5,-1
80004fb8:	01079793          	slli	a5,a5,0x10
80004fbc:	0107d793          	srli	a5,a5,0x10
80004fc0:	fcf41f23          	sh	a5,-34(s0)
    file_t* file = &files[fileHandle];
80004fc4:	fde41703          	lh	a4,-34(s0)
80004fc8:	00070793          	mv	a5,a4
80004fcc:	00179793          	slli	a5,a5,0x1
80004fd0:	00e787b3          	add	a5,a5,a4
80004fd4:	00479793          	slli	a5,a5,0x4
80004fd8:	00006717          	auipc	a4,0x6
80004fdc:	ff470713          	addi	a4,a4,-12 # 8000afcc <files>
80004fe0:	00e787b3          	add	a5,a5,a4
80004fe4:	fef42623          	sw	a5,-20(s0)

    // Check if the current address is at or beyond the end of the file
    if (file->currentAddress >= file->endAddress) {
80004fe8:	fec42783          	lw	a5,-20(s0)
80004fec:	0087a703          	lw	a4,8(a5)
80004ff0:	fec42783          	lw	a5,-20(s0)
80004ff4:	0047a783          	lw	a5,4(a5)
80004ff8:	00f76663          	bltu	a4,a5,80005004 <_Z10riscy_feofs+0xd0>
        return 1;  // EOF reached
80004ffc:	00100793          	li	a5,1
80005000:	0080006f          	j	80005008 <_Z10riscy_feofs+0xd4>
    }
    
    return 0;  // Not EOF
80005004:	00000793          	li	a5,0
}
80005008:	00078513          	mv	a0,a5
8000500c:	02c12083          	lw	ra,44(sp)
80005010:	02812403          	lw	s0,40(sp)
80005014:	03010113          	addi	sp,sp,48
80005018:	00008067          	ret

8000501c <_Z16riscy_list_filesv>:


// Lists all files found in the RISCY.FS header table
__attribute__((optimize("O0")))
void riscy_list_files(void) {
8000501c:	f9010113          	addi	sp,sp,-112
80005020:	06112623          	sw	ra,108(sp)
80005024:	06812423          	sw	s0,104(sp)
80005028:	07010413          	addi	s0,sp,112
    uint32_t addr = 0;
8000502c:	fe042623          	sw	zero,-20(s0)
    uint32_t w;

    // Verify magic "RISCY.FS"
    const char magic[8] = {'R','I','S','C','Y','.','F','S'};
80005030:	435357b7          	lui	a5,0x43535
80005034:	95278793          	addi	a5,a5,-1710 # 43534952 <_stack_size+0x4352c952>
80005038:	faf42c23          	sw	a5,-72(s0)
8000503c:	534637b7          	lui	a5,0x53463
80005040:	e5978793          	addi	a5,a5,-423 # 53462e59 <_stack_size+0x5345ae59>
80005044:	faf42e23          	sw	a5,-68(s0)
    for (int k = 0; k < 2; k++) { // two 32-bit reads = 8 bytes
80005048:	fe042423          	sw	zero,-24(s0)
8000504c:	0c80006f          	j	80005114 <_Z16riscy_list_filesv+0xf8>
        w = readFlash(addr);
80005050:	fec42503          	lw	a0,-20(s0)
80005054:	994ff0ef          	jal	800041e8 <_Z9readFlashj>
80005058:	fca42823          	sw	a0,-48(s0)
        for (int j = 0; j < 4; j++) {
8000505c:	fe042223          	sw	zero,-28(s0)
80005060:	0900006f          	j	800050f0 <_Z16riscy_list_filesv+0xd4>
            char c = (w >> (8 * j)) & 0xFF;
80005064:	fe442783          	lw	a5,-28(s0)
80005068:	00379793          	slli	a5,a5,0x3
8000506c:	fd042703          	lw	a4,-48(s0)
80005070:	00f757b3          	srl	a5,a4,a5
80005074:	fcf401a3          	sb	a5,-61(s0)
            if (c != magic[k * 4 + j]) {
80005078:	fe842783          	lw	a5,-24(s0)
8000507c:	00279713          	slli	a4,a5,0x2
80005080:	fe442783          	lw	a5,-28(s0)
80005084:	00f707b3          	add	a5,a4,a5
80005088:	ff078793          	addi	a5,a5,-16
8000508c:	008787b3          	add	a5,a5,s0
80005090:	fc87c783          	lbu	a5,-56(a5)
80005094:	fc344703          	lbu	a4,-61(s0)
80005098:	04f70663          	beq	a4,a5,800050e4 <_Z16riscy_list_filesv+0xc8>
                uart_printf("Error: bad magic at %u (got '%c', expected '%c')\r\n",
                            (unsigned)(k * 4 + j), c, magic[k * 4 + j]);
8000509c:	fe842783          	lw	a5,-24(s0)
800050a0:	00279713          	slli	a4,a5,0x2
800050a4:	fe442783          	lw	a5,-28(s0)
800050a8:	00f707b3          	add	a5,a4,a5
                uart_printf("Error: bad magic at %u (got '%c', expected '%c')\r\n",
800050ac:	00078593          	mv	a1,a5
800050b0:	fc344603          	lbu	a2,-61(s0)
                            (unsigned)(k * 4 + j), c, magic[k * 4 + j]);
800050b4:	fe842783          	lw	a5,-24(s0)
800050b8:	00279713          	slli	a4,a5,0x2
800050bc:	fe442783          	lw	a5,-28(s0)
800050c0:	00f707b3          	add	a5,a4,a5
800050c4:	ff078793          	addi	a5,a5,-16
800050c8:	008787b3          	add	a5,a5,s0
800050cc:	fc87c783          	lbu	a5,-56(a5)
                uart_printf("Error: bad magic at %u (got '%c', expected '%c')\r\n",
800050d0:	00078693          	mv	a3,a5
800050d4:	00005517          	auipc	a0,0x5
800050d8:	74450513          	addi	a0,a0,1860 # 8000a818 <__clzsi2+0x29c>
800050dc:	cd9fe0ef          	jal	80003db4 <_Z11uart_printfPKcz>
800050e0:	1740006f          	j	80005254 <_Z16riscy_list_filesv+0x238>
        for (int j = 0; j < 4; j++) {
800050e4:	fe442783          	lw	a5,-28(s0)
800050e8:	00178793          	addi	a5,a5,1
800050ec:	fef42223          	sw	a5,-28(s0)
800050f0:	fe442703          	lw	a4,-28(s0)
800050f4:	00300793          	li	a5,3
800050f8:	f6e7d6e3          	bge	a5,a4,80005064 <_Z16riscy_list_filesv+0x48>
                return;
            }
        }
        addr += 4;
800050fc:	fec42783          	lw	a5,-20(s0)
80005100:	00478793          	addi	a5,a5,4
80005104:	fef42623          	sw	a5,-20(s0)
    for (int k = 0; k < 2; k++) { // two 32-bit reads = 8 bytes
80005108:	fe842783          	lw	a5,-24(s0)
8000510c:	00178793          	addi	a5,a5,1
80005110:	fef42423          	sw	a5,-24(s0)
80005114:	fe842703          	lw	a4,-24(s0)
80005118:	00100793          	li	a5,1
8000511c:	f2e7dae3          	bge	a5,a4,80005050 <_Z16riscy_list_filesv+0x34>
    }

    // Read program count (1 byte)
    unsigned int programCount = readFlash(addr) & 0xFF;
80005120:	fec42503          	lw	a0,-20(s0)
80005124:	8c4ff0ef          	jal	800041e8 <_Z9readFlashj>
80005128:	00050793          	mv	a5,a0
8000512c:	0ff7f793          	zext.b	a5,a5
80005130:	fcf42a23          	sw	a5,-44(s0)
    addr += 1;
80005134:	fec42783          	lw	a5,-20(s0)
80005138:	00178793          	addi	a5,a5,1
8000513c:	fef42623          	sw	a5,-20(s0)

    uart_printf("Files: %d\r\n", programCount);
80005140:	fd442583          	lw	a1,-44(s0)
80005144:	00005517          	auipc	a0,0x5
80005148:	70850513          	addi	a0,a0,1800 # 8000a84c <__clzsi2+0x2d0>
8000514c:	c69fe0ef          	jal	80003db4 <_Z11uart_printfPKcz>

    for (unsigned int i = 0; i < programCount; i++) {
80005150:	fe042023          	sw	zero,-32(s0)
80005154:	0f40006f          	j	80005248 <_Z16riscy_list_filesv+0x22c>
        // Read NUL-terminated name
        char name[MAX_FILE_NAME_LENGTH + 1];
        unsigned int pos = 0;
80005158:	fc042e23          	sw	zero,-36(s0)
        char c = 1;
8000515c:	00100793          	li	a5,1
80005160:	fcf40da3          	sb	a5,-37(s0)

        while (c != 0 && pos < MAX_FILE_NAME_LENGTH) {
80005164:	0400006f          	j	800051a4 <_Z16riscy_list_filesv+0x188>
            w = readFlash(addr);
80005168:	fec42503          	lw	a0,-20(s0)
8000516c:	87cff0ef          	jal	800041e8 <_Z9readFlashj>
80005170:	fca42823          	sw	a0,-48(s0)
            c = (char)(w & 0xFF);
80005174:	fd042783          	lw	a5,-48(s0)
80005178:	fcf40da3          	sb	a5,-37(s0)
            name[pos++] = c;
8000517c:	fdb44703          	lbu	a4,-37(s0)
80005180:	fdc42783          	lw	a5,-36(s0)
80005184:	00178693          	addi	a3,a5,1
80005188:	fcd42e23          	sw	a3,-36(s0)
8000518c:	ff078793          	addi	a5,a5,-16
80005190:	008787b3          	add	a5,a5,s0
80005194:	fae78223          	sb	a4,-92(a5)
            addr += 1;
80005198:	fec42783          	lw	a5,-20(s0)
8000519c:	00178793          	addi	a5,a5,1
800051a0:	fef42623          	sw	a5,-20(s0)
        while (c != 0 && pos < MAX_FILE_NAME_LENGTH) {
800051a4:	fdb44783          	lbu	a5,-37(s0)
800051a8:	00078863          	beqz	a5,800051b8 <_Z16riscy_list_filesv+0x19c>
800051ac:	fdc42703          	lw	a4,-36(s0)
800051b0:	01f00793          	li	a5,31
800051b4:	fae7fae3          	bgeu	a5,a4,80005168 <_Z16riscy_list_filesv+0x14c>
        }
        // Read start/end, skip sprite image
        uint32_t start = readFlash(addr); addr += 4;
800051b8:	fec42503          	lw	a0,-20(s0)
800051bc:	82cff0ef          	jal	800041e8 <_Z9readFlashj>
800051c0:	fca42623          	sw	a0,-52(s0)
800051c4:	fec42783          	lw	a5,-20(s0)
800051c8:	00478793          	addi	a5,a5,4
800051cc:	fef42623          	sw	a5,-20(s0)
        uint32_t end   = readFlash(addr); addr += 4;
800051d0:	fec42503          	lw	a0,-20(s0)
800051d4:	814ff0ef          	jal	800041e8 <_Z9readFlashj>
800051d8:	fca42423          	sw	a0,-56(s0)
800051dc:	fec42783          	lw	a5,-20(s0)
800051e0:	00478793          	addi	a5,a5,4
800051e4:	fef42623          	sw	a5,-20(s0)
        addr += 256; // skip 256-byte image
800051e8:	fec42783          	lw	a5,-20(s0)
800051ec:	10078793          	addi	a5,a5,256
800051f0:	fef42623          	sw	a5,-20(s0)
        
        uint32_t size = (end >= start) ? (end - start) : 0;
800051f4:	fc842703          	lw	a4,-56(s0)
800051f8:	fcc42783          	lw	a5,-52(s0)
800051fc:	00f76a63          	bltu	a4,a5,80005210 <_Z16riscy_list_filesv+0x1f4>
80005200:	fc842703          	lw	a4,-56(s0)
80005204:	fcc42783          	lw	a5,-52(s0)
80005208:	40f707b3          	sub	a5,a4,a5
8000520c:	0080006f          	j	80005214 <_Z16riscy_list_filesv+0x1f8>
80005210:	00000793          	li	a5,0
80005214:	fcf42223          	sw	a5,-60(s0)
        printf("%d) %s  [0x%x - 0x%x]\n",
80005218:	fe042783          	lw	a5,-32(s0)
8000521c:	00178793          	addi	a5,a5,1
80005220:	f9440613          	addi	a2,s0,-108
80005224:	fc842703          	lw	a4,-56(s0)
80005228:	fcc42683          	lw	a3,-52(s0)
8000522c:	00078593          	mv	a1,a5
80005230:	00005517          	auipc	a0,0x5
80005234:	62850513          	addi	a0,a0,1576 # 8000a858 <__clzsi2+0x2dc>
80005238:	8b8fe0ef          	jal	800032f0 <_Z6printfPKcz>
    for (unsigned int i = 0; i < programCount; i++) {
8000523c:	fe042783          	lw	a5,-32(s0)
80005240:	00178793          	addi	a5,a5,1
80005244:	fef42023          	sw	a5,-32(s0)
80005248:	fe042703          	lw	a4,-32(s0)
8000524c:	fd442783          	lw	a5,-44(s0)
80005250:	f0f764e3          	bltu	a4,a5,80005158 <_Z16riscy_list_filesv+0x13c>
            i + 1, name, start, end);
    }
}
80005254:	06c12083          	lw	ra,108(sp)
80005258:	06812403          	lw	s0,104(sp)
8000525c:	07010113          	addi	sp,sp,112
80005260:	00008067          	ret

80005264 <_Z12riscy_rewinds>:

int riscy_rewind(int16_t fileHandle) {
    return riscy_fseek(fileHandle, 0, SEEK_SET);
80005264:	00000613          	li	a2,0
80005268:	00000593          	li	a1,0
8000526c:	9d5ff06f          	j	80004c40 <_Z11riscy_fseeksli>

80005270 <_ZL6ulli2ayP5param>:


#ifdef PRINTF_LONG_LONG_SUPPORT
static void _TFP_GCC_NO_INLINE_ ulli2a(
    unsigned long long int num, struct param *p)
{
80005270:	fc010113          	addi	sp,sp,-64
80005274:	03212823          	sw	s2,48(sp)
80005278:	03312623          	sw	s3,44(sp)
8000527c:	03412423          	sw	s4,40(sp)
80005280:	03512223          	sw	s5,36(sp)
80005284:	03612023          	sw	s6,32(sp)
80005288:	01912a23          	sw	s9,20(sp)
8000528c:	02112e23          	sw	ra,60(sp)
80005290:	02812c23          	sw	s0,56(sp)
80005294:	02912a23          	sw	s1,52(sp)
80005298:	01a12823          	sw	s10,16(sp)
8000529c:	01b12623          	sw	s11,12(sp)
    int n = 0;
    unsigned long long int d = 1;
    char *bf = p->bf;
800052a0:	01062c83          	lw	s9,16(a2)
    while (num / d >= p->base)
800052a4:	00c62a03          	lw	s4,12(a2)
{
800052a8:	00060b13          	mv	s6,a2
800052ac:	00058913          	mv	s2,a1
800052b0:	00050993          	mv	s3,a0
    while (num / d >= p->base)
800052b4:	00000a93          	li	s5,0
800052b8:	20058863          	beqz	a1,800054c8 <_ZL6ulli2ayP5param+0x258>
    unsigned long long int d = 1;
800052bc:	00100d93          	li	s11,1
800052c0:	00000d13          	li	s10,0
        d *= p->base;
800052c4:	000d8513          	mv	a0,s11
800052c8:	000d0593          	mv	a1,s10
800052cc:	000a0613          	mv	a2,s4
800052d0:	00000693          	li	a3,0
800052d4:	168050ef          	jal	8000a43c <__muldi3>
800052d8:	00050493          	mv	s1,a0
800052dc:	00058413          	mv	s0,a1
    while (num / d >= p->base)
800052e0:	00050613          	mv	a2,a0
800052e4:	00058693          	mv	a3,a1
800052e8:	00098513          	mv	a0,s3
800052ec:	00090593          	mv	a1,s2
        d *= p->base;
800052f0:	00048d93          	mv	s11,s1
800052f4:	00040d13          	mv	s10,s0
    while (num / d >= p->base)
800052f8:	4d0030ef          	jal	800087c8 <__udivdi3>
800052fc:	fcba94e3          	bne	s5,a1,800052c4 <_ZL6ulli2ayP5param+0x54>
80005300:	fd4572e3          	bgeu	a0,s4,800052c4 <_ZL6ulli2ayP5param+0x54>
    while (d != 0) {
80005304:	00946533          	or	a0,s0,s1
80005308:	10050463          	beqz	a0,80005410 <_ZL6ulli2ayP5param+0x1a0>
8000530c:	01712e23          	sw	s7,28(sp)
80005310:	01812c23          	sw	s8,24(sp)
        int dgt = num / d;
80005314:	000d8613          	mv	a2,s11
80005318:	000d0693          	mv	a3,s10
8000531c:	00098513          	mv	a0,s3
80005320:	00090593          	mv	a1,s2
80005324:	4a4030ef          	jal	800087c8 <__udivdi3>
80005328:	00050c13          	mv	s8,a0
        num %= d;
8000532c:	00090593          	mv	a1,s2
80005330:	00098513          	mv	a0,s3
80005334:	000d8613          	mv	a2,s11
80005338:	000d0693          	mv	a3,s10
8000533c:	255030ef          	jal	80008d90 <__umoddi3>
80005340:	00050413          	mv	s0,a0
80005344:	00058493          	mv	s1,a1
        d /= p->base;
80005348:	000a0613          	mv	a2,s4
8000534c:	000d8513          	mv	a0,s11
80005350:	000d0593          	mv	a1,s10
80005354:	00000693          	li	a3,0
80005358:	470030ef          	jal	800087c8 <__udivdi3>
        int dgt = num / d;
8000535c:	000c0b93          	mv	s7,s8
        d /= p->base;
80005360:	00050913          	mv	s2,a0
80005364:	00058993          	mv	s3,a1
        if (n || dgt > 0 || d == 0) {
80005368:	05704e63          	bgtz	s7,800053c4 <_ZL6ulli2ayP5param+0x154>
8000536c:	0dc0006f          	j	80005448 <_ZL6ulli2ayP5param+0x1d8>
        int dgt = num / d;
80005370:	458030ef          	jal	800087c8 <__udivdi3>
        num %= d;
80005374:	00090613          	mv	a2,s2
80005378:	00098693          	mv	a3,s3
        int dgt = num / d;
8000537c:	00050c13          	mv	s8,a0
        num %= d;
80005380:	00048593          	mv	a1,s1
80005384:	00040513          	mv	a0,s0
80005388:	209030ef          	jal	80008d90 <__umoddi3>
        d /= p->base;
8000538c:	00cb2a03          	lw	s4,12(s6)
        num %= d;
80005390:	00050413          	mv	s0,a0
80005394:	00058493          	mv	s1,a1
        d /= p->base;
80005398:	00090513          	mv	a0,s2
8000539c:	00098593          	mv	a1,s3
800053a0:	000a0613          	mv	a2,s4
800053a4:	00000693          	li	a3,0
800053a8:	420030ef          	jal	800087c8 <__udivdi3>
800053ac:	00090d93          	mv	s11,s2
800053b0:	00098d13          	mv	s10,s3
        int dgt = num / d;
800053b4:	000c0b93          	mv	s7,s8
        d /= p->base;
800053b8:	00000a93          	li	s5,0
800053bc:	00050913          	mv	s2,a0
800053c0:	00058993          	mv	s3,a1
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800053c4:	00900713          	li	a4,9
        int dgt = num / d;
800053c8:	00090613          	mv	a2,s2
800053cc:	00098693          	mv	a3,s3
800053d0:	00040513          	mv	a0,s0
800053d4:	00048593          	mv	a1,s1
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800053d8:	03000793          	li	a5,48
800053dc:	01775c63          	bge	a4,s7,800053f4 <_ZL6ulli2ayP5param+0x184>
800053e0:	000b4783          	lbu	a5,0(s6)
800053e4:	01d79793          	slli	a5,a5,0x1d
800053e8:	41f7d793          	srai	a5,a5,0x1f
800053ec:	fe07f793          	andi	a5,a5,-32
800053f0:	05778793          	addi	a5,a5,87
800053f4:	018787b3          	add	a5,a5,s8
800053f8:	00fc8023          	sb	a5,0(s9)
800053fc:	001c8c93          	addi	s9,s9,1
    while (d != 0) {
80005400:	f7aa98e3          	bne	s5,s10,80005370 <_ZL6ulli2ayP5param+0x100>
80005404:	f74df6e3          	bgeu	s11,s4,80005370 <_ZL6ulli2ayP5param+0x100>
80005408:	01c12b83          	lw	s7,28(sp)
8000540c:	01812c03          	lw	s8,24(sp)
            ++n;
        }
    }
    *bf = 0;
80005410:	000c8023          	sb	zero,0(s9)
}
80005414:	03c12083          	lw	ra,60(sp)
80005418:	03812403          	lw	s0,56(sp)
8000541c:	03412483          	lw	s1,52(sp)
80005420:	03012903          	lw	s2,48(sp)
80005424:	02c12983          	lw	s3,44(sp)
80005428:	02812a03          	lw	s4,40(sp)
8000542c:	02412a83          	lw	s5,36(sp)
80005430:	02012b03          	lw	s6,32(sp)
80005434:	01412c83          	lw	s9,20(sp)
80005438:	01012d03          	lw	s10,16(sp)
8000543c:	00c12d83          	lw	s11,12(sp)
80005440:	04010113          	addi	sp,sp,64
80005444:	00008067          	ret
        int dgt = num / d;
80005448:	00090613          	mv	a2,s2
8000544c:	00098693          	mv	a3,s3
80005450:	00040513          	mv	a0,s0
80005454:	00048593          	mv	a1,s1
        if (n || dgt > 0 || d == 0) {
80005458:	03aa9063          	bne	s5,s10,80005478 <_ZL6ulli2ayP5param+0x208>
8000545c:	014dfe63          	bgeu	s11,s4,80005478 <_ZL6ulli2ayP5param+0x208>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005460:	030c0c13          	addi	s8,s8,48 # 88000030 <_stack_end+0x7c00030>
80005464:	018c8023          	sb	s8,0(s9)
80005468:	01c12b83          	lw	s7,28(sp)
8000546c:	01812c03          	lw	s8,24(sp)
80005470:	001c8c93          	addi	s9,s9,1
    while (d != 0) {
80005474:	f9dff06f          	j	80005410 <_ZL6ulli2ayP5param+0x1a0>
        int dgt = num / d;
80005478:	350030ef          	jal	800087c8 <__udivdi3>
        num %= d;
8000547c:	00090613          	mv	a2,s2
80005480:	00098693          	mv	a3,s3
        int dgt = num / d;
80005484:	00050c13          	mv	s8,a0
        num %= d;
80005488:	00048593          	mv	a1,s1
8000548c:	00040513          	mv	a0,s0
80005490:	101030ef          	jal	80008d90 <__umoddi3>
80005494:	00050413          	mv	s0,a0
80005498:	00058493          	mv	s1,a1
        d /= p->base;
8000549c:	00090513          	mv	a0,s2
800054a0:	00098593          	mv	a1,s3
800054a4:	000a0613          	mv	a2,s4
800054a8:	00000693          	li	a3,0
800054ac:	31c030ef          	jal	800087c8 <__udivdi3>
800054b0:	00090d93          	mv	s11,s2
800054b4:	00098d13          	mv	s10,s3
        int dgt = num / d;
800054b8:	000c0b93          	mv	s7,s8
        d /= p->base;
800054bc:	00050913          	mv	s2,a0
800054c0:	00058993          	mv	s3,a1
800054c4:	ea5ff06f          	j	80005368 <_ZL6ulli2ayP5param+0xf8>
    while (num / d >= p->base)
800054c8:	df457ae3          	bgeu	a0,s4,800052bc <_ZL6ulli2ayP5param+0x4c>
800054cc:	01712e23          	sw	s7,28(sp)
800054d0:	01812c23          	sw	s8,24(sp)
    unsigned long long int d = 1;
800054d4:	00100d93          	li	s11,1
800054d8:	00000d13          	li	s10,0
800054dc:	e39ff06f          	j	80005314 <_ZL6ulli2ayP5param+0xa4>

800054e0 <_ZL6putchwPvPFvS_cEP5param>:

static void putchw(void *putp, putcf putf, struct param *p)
{
    char ch;
    int n = p->width;
    char *bf = p->bf;
800054e0:	01062783          	lw	a5,16(a2)
{
800054e4:	fe010113          	addi	sp,sp,-32
800054e8:	00812c23          	sw	s0,24(sp)
800054ec:	01212823          	sw	s2,16(sp)
800054f0:	01312623          	sw	s3,12(sp)
800054f4:	01412423          	sw	s4,8(sp)
800054f8:	00112e23          	sw	ra,28(sp)
800054fc:	00912a23          	sw	s1,20(sp)

    /* Number of filling characters */
    while (*bf++ && n > 0)
80005500:	0007c703          	lbu	a4,0(a5)
    int n = p->width;
80005504:	00462403          	lw	s0,4(a2)
{
80005508:	00060a13          	mv	s4,a2
8000550c:	00050913          	mv	s2,a0
80005510:	00058993          	mv	s3,a1
    while (*bf++ && n > 0)
80005514:	02070063          	beqz	a4,80005534 <_ZL6putchwPvPFvS_cEP5param+0x54>
80005518:	00178793          	addi	a5,a5,1
8000551c:	0100006f          	j	8000552c <_ZL6putchwPvPFvS_cEP5param+0x4c>
80005520:	fff7c703          	lbu	a4,-1(a5)
        n--;
80005524:	fff40413          	addi	s0,s0,-1
    while (*bf++ && n > 0)
80005528:	00070663          	beqz	a4,80005534 <_ZL6putchwPvPFvS_cEP5param+0x54>
8000552c:	00178793          	addi	a5,a5,1
80005530:	fe8048e3          	bgtz	s0,80005520 <_ZL6putchwPvPFvS_cEP5param+0x40>
    if (p->sign)
80005534:	008a4583          	lbu	a1,8(s4)
        n--;
    if (p->alt && p->base == 16)
80005538:	000a4783          	lbu	a5,0(s4)
        n--;
8000553c:	00b03733          	snez	a4,a1
    if (p->alt && p->base == 16)
80005540:	0027f793          	andi	a5,a5,2
        n--;
80005544:	40e40433          	sub	s0,s0,a4
    if (p->alt && p->base == 16)
80005548:	00078e63          	beqz	a5,80005564 <_ZL6putchwPvPFvS_cEP5param+0x84>
8000554c:	00ca2783          	lw	a5,12(s4)
80005550:	01000713          	li	a4,16
80005554:	12e78863          	beq	a5,a4,80005684 <_ZL6putchwPvPFvS_cEP5param+0x1a4>
        n -= 2;
    else if (p->alt && p->base == 8)
        n--;
80005558:	ff878793          	addi	a5,a5,-8
8000555c:	0017b793          	seqz	a5,a5
80005560:	40f40433          	sub	s0,s0,a5

    /* Fill with space to align to the right, before alternate or sign */
    if (!p->lz && !p->align_left) {
80005564:	000a2783          	lw	a5,0(s4)
80005568:	0097f793          	andi	a5,a5,9
8000556c:	02079663          	bnez	a5,80005598 <_ZL6putchwPvPFvS_cEP5param+0xb8>
        while (n-- > 0)
80005570:	fff40493          	addi	s1,s0,-1
80005574:	14805e63          	blez	s0,800056d0 <_ZL6putchwPvPFvS_cEP5param+0x1f0>
80005578:	fff00413          	li	s0,-1
            putf(putp, ' ');
8000557c:	02000593          	li	a1,32
80005580:	00090513          	mv	a0,s2
        while (n-- > 0)
80005584:	fff48493          	addi	s1,s1,-1
            putf(putp, ' ');
80005588:	000980e7          	jalr	s3
        while (n-- > 0)
8000558c:	fe8498e3          	bne	s1,s0,8000557c <_ZL6putchwPvPFvS_cEP5param+0x9c>
    }

    /* print sign */
    if (p->sign)
80005590:	008a4583          	lbu	a1,8(s4)
        while (n-- > 0)
80005594:	00048413          	mv	s0,s1
    if (p->sign)
80005598:	00058663          	beqz	a1,800055a4 <_ZL6putchwPvPFvS_cEP5param+0xc4>
        putf(putp, p->sign);
8000559c:	00090513          	mv	a0,s2
800055a0:	000980e7          	jalr	s3

    /* Alternate */
    if (p->alt && p->base == 16) {
800055a4:	000a4783          	lbu	a5,0(s4)
800055a8:	0027f713          	andi	a4,a5,2
800055ac:	00070c63          	beqz	a4,800055c4 <_ZL6putchwPvPFvS_cEP5param+0xe4>
800055b0:	00ca2703          	lw	a4,12(s4)
800055b4:	01000693          	li	a3,16
800055b8:	0cd70a63          	beq	a4,a3,8000568c <_ZL6putchwPvPFvS_cEP5param+0x1ac>
        putf(putp, '0');
        putf(putp, (p->uc ? 'X' : 'x'));
    } else if (p->alt && p->base == 8) {
800055bc:	00800693          	li	a3,8
800055c0:	0ed70e63          	beq	a4,a3,800056bc <_ZL6putchwPvPFvS_cEP5param+0x1dc>
        putf(putp, '0');
    }

    /* Fill with zeros, after alternate or sign */
    if (p->lz) {
800055c4:	0017f793          	andi	a5,a5,1
800055c8:	02078463          	beqz	a5,800055f0 <_ZL6putchwPvPFvS_cEP5param+0x110>
        while (n-- > 0)
800055cc:	fff40793          	addi	a5,s0,-1
800055d0:	10805463          	blez	s0,800056d8 <_ZL6putchwPvPFvS_cEP5param+0x1f8>
800055d4:	00078413          	mv	s0,a5
800055d8:	fff00493          	li	s1,-1
            putf(putp, '0');
800055dc:	03000593          	li	a1,48
800055e0:	00090513          	mv	a0,s2
        while (n-- > 0)
800055e4:	fff40413          	addi	s0,s0,-1
            putf(putp, '0');
800055e8:	000980e7          	jalr	s3
        while (n-- > 0)
800055ec:	fe9418e3          	bne	s0,s1,800055dc <_ZL6putchwPvPFvS_cEP5param+0xfc>
    }

    /* Put actual buffer */
    bf = p->bf;
800055f0:	010a2483          	lw	s1,16(s4)
    while ((ch = *bf++))
800055f4:	0004c583          	lbu	a1,0(s1)
800055f8:	00148493          	addi	s1,s1,1
800055fc:	00058c63          	beqz	a1,80005614 <_ZL6putchwPvPFvS_cEP5param+0x134>
        putf(putp, ch);
80005600:	00090513          	mv	a0,s2
80005604:	000980e7          	jalr	s3
    while ((ch = *bf++))
80005608:	0004c583          	lbu	a1,0(s1)
8000560c:	00148493          	addi	s1,s1,1
80005610:	fe0598e3          	bnez	a1,80005600 <_ZL6putchwPvPFvS_cEP5param+0x120>

    /* Fill with space to align to the left, after string */
    if (!p->lz && p->align_left) {
80005614:	000a2783          	lw	a5,0(s4)
80005618:	00800713          	li	a4,8
8000561c:	0097f793          	andi	a5,a5,9
80005620:	02e78263          	beq	a5,a4,80005644 <_ZL6putchwPvPFvS_cEP5param+0x164>
        while (n-- > 0)
            putf(putp, ' ');
    }
}
80005624:	01c12083          	lw	ra,28(sp)
80005628:	01812403          	lw	s0,24(sp)
8000562c:	01412483          	lw	s1,20(sp)
80005630:	01012903          	lw	s2,16(sp)
80005634:	00c12983          	lw	s3,12(sp)
80005638:	00812a03          	lw	s4,8(sp)
8000563c:	02010113          	addi	sp,sp,32
80005640:	00008067          	ret
        while (n-- > 0)
80005644:	fff40493          	addi	s1,s0,-1
80005648:	fc805ee3          	blez	s0,80005624 <_ZL6putchwPvPFvS_cEP5param+0x144>
8000564c:	fff00413          	li	s0,-1
            putf(putp, ' ');
80005650:	02000593          	li	a1,32
80005654:	00090513          	mv	a0,s2
        while (n-- > 0)
80005658:	fff48493          	addi	s1,s1,-1
            putf(putp, ' ');
8000565c:	000980e7          	jalr	s3
        while (n-- > 0)
80005660:	fe8498e3          	bne	s1,s0,80005650 <_ZL6putchwPvPFvS_cEP5param+0x170>
}
80005664:	01c12083          	lw	ra,28(sp)
80005668:	01812403          	lw	s0,24(sp)
8000566c:	01412483          	lw	s1,20(sp)
80005670:	01012903          	lw	s2,16(sp)
80005674:	00c12983          	lw	s3,12(sp)
80005678:	00812a03          	lw	s4,8(sp)
8000567c:	02010113          	addi	sp,sp,32
80005680:	00008067          	ret
        n -= 2;
80005684:	ffe40413          	addi	s0,s0,-2
80005688:	eddff06f          	j	80005564 <_ZL6putchwPvPFvS_cEP5param+0x84>
        putf(putp, '0');
8000568c:	03000593          	li	a1,48
80005690:	00090513          	mv	a0,s2
80005694:	000980e7          	jalr	s3
        putf(putp, (p->uc ? 'X' : 'x'));
80005698:	000a4583          	lbu	a1,0(s4)
8000569c:	00090513          	mv	a0,s2
800056a0:	0045f593          	andi	a1,a1,4
800056a4:	0015b593          	seqz	a1,a1
800056a8:	00559593          	slli	a1,a1,0x5
800056ac:	05858593          	addi	a1,a1,88
800056b0:	000980e7          	jalr	s3
    if (p->lz) {
800056b4:	000a4783          	lbu	a5,0(s4)
        putf(putp, (p->uc ? 'X' : 'x'));
800056b8:	f0dff06f          	j	800055c4 <_ZL6putchwPvPFvS_cEP5param+0xe4>
        putf(putp, '0');
800056bc:	03000593          	li	a1,48
800056c0:	00090513          	mv	a0,s2
800056c4:	000980e7          	jalr	s3
    if (p->lz) {
800056c8:	000a4783          	lbu	a5,0(s4)
800056cc:	ef9ff06f          	j	800055c4 <_ZL6putchwPvPFvS_cEP5param+0xe4>
        while (n-- > 0)
800056d0:	00048413          	mv	s0,s1
800056d4:	ec5ff06f          	j	80005598 <_ZL6putchwPvPFvS_cEP5param+0xb8>
        while (n-- > 0)
800056d8:	00078413          	mv	s0,a5
800056dc:	f15ff06f          	j	800055f0 <_ZL6putchwPvPFvS_cEP5param+0x110>

800056e0 <tfp_format>:
    char bf[12];  /* int = 32b on some architectures */
#endif
    char ch;
    p.bf = bf;

    while ((ch = *(fmt++))) {
800056e0:	00064783          	lbu	a5,0(a2)
800056e4:	5c0786e3          	beqz	a5,800064b0 <tfp_format+0xdd0>
{
800056e8:	f8010113          	addi	sp,sp,-128
800056ec:	06812c23          	sw	s0,120(sp)
800056f0:	06912a23          	sw	s1,116(sp)
800056f4:	07212823          	sw	s2,112(sp)
800056f8:	07312623          	sw	s3,108(sp)
800056fc:	07412423          	sw	s4,104(sp)
80005700:	07512223          	sw	s5,100(sp)
80005704:	07612023          	sw	s6,96(sp)
80005708:	05712e23          	sw	s7,92(sp)
8000570c:	06112e23          	sw	ra,124(sp)
80005710:	05912a23          	sw	s9,84(sp)
80005714:	00050493          	mv	s1,a0
80005718:	00058913          	mv	s2,a1
8000571c:	00068a13          	mv	s4,a3
80005720:	00160413          	addi	s0,a2,1
        if (ch != '%') {
80005724:	02500993          	li	s3,37
            p.align_left = 0;
            p.sign = 0;

            /* Flags */
            while ((ch = *(fmt++))) {
                switch (ch) {
80005728:	02d00a93          	li	s5,45
8000572c:	03000b13          	li	s6,48
80005730:	02300b93          	li	s7,35
        if (ch != '%') {
80005734:	05378663          	beq	a5,s3,80005780 <tfp_format+0xa0>
            putf(putp, ch);
80005738:	00078593          	mv	a1,a5
8000573c:	00048513          	mv	a0,s1
80005740:	000900e7          	jalr	s2
    while ((ch = *(fmt++))) {
80005744:	00044783          	lbu	a5,0(s0)
80005748:	00140413          	addi	s0,s0,1
8000574c:	fe0794e3          	bnez	a5,80005734 <tfp_format+0x54>
                break;
            }
        }
    }
 abort:;
}
80005750:	07c12083          	lw	ra,124(sp)
80005754:	07812403          	lw	s0,120(sp)
80005758:	07412483          	lw	s1,116(sp)
8000575c:	07012903          	lw	s2,112(sp)
80005760:	06c12983          	lw	s3,108(sp)
80005764:	06812a03          	lw	s4,104(sp)
80005768:	06412a83          	lw	s5,100(sp)
8000576c:	06012b03          	lw	s6,96(sp)
80005770:	05c12b83          	lw	s7,92(sp)
80005774:	05412c83          	lw	s9,84(sp)
80005778:	08010113          	addi	sp,sp,128
8000577c:	00008067          	ret
            p.lz = 0;
80005780:	01414783          	lbu	a5,20(sp)
            while ((ch = *(fmt++))) {
80005784:	00044583          	lbu	a1,0(s0)
            p.width = 0;
80005788:	00012c23          	sw	zero,24(sp)
            p.lz = 0;
8000578c:	ff47f793          	andi	a5,a5,-12
            p.sign = 0;
80005790:	00010e23          	sb	zero,28(sp)
            p.lz = 0;
80005794:	00f10a23          	sb	a5,20(sp)
            while ((ch = *(fmt++))) {
80005798:	00140413          	addi	s0,s0,1
8000579c:	fa058ae3          	beqz	a1,80005750 <tfp_format+0x70>
                switch (ch) {
800057a0:	07558a63          	beq	a1,s5,80005814 <tfp_format+0x134>
800057a4:	09658e63          	beq	a1,s6,80005840 <tfp_format+0x160>
800057a8:	09758463          	beq	a1,s7,80005830 <tfp_format+0x150>
            if (ch >= '0' && ch <= '9') {
800057ac:	fd058793          	addi	a5,a1,-48
800057b0:	0ff7f713          	zext.b	a4,a5
800057b4:	00900613          	li	a2,9
800057b8:	0ae67463          	bgeu	a2,a4,80005860 <tfp_format+0x180>
            if (ch == '.') {
800057bc:	02e00793          	li	a5,46
800057c0:	70f58263          	beq	a1,a5,80005ec4 <tfp_format+0x7e4>
            if (ch == 'z') {
800057c4:	07a00793          	li	a5,122
800057c8:	08f58463          	beq	a1,a5,80005850 <tfp_format+0x170>
            if (ch == 'l') {
800057cc:	06c00793          	li	a5,108
            char lng = 0;  /* 1 for long, 2 for long long */
800057d0:	00000713          	li	a4,0
            if (ch == 'l') {
800057d4:	6cf58263          	beq	a1,a5,80005e98 <tfp_format+0x7b8>
            switch (ch) {
800057d8:	07800793          	li	a5,120
800057dc:	f6b7e4e3          	bltu	a5,a1,80005744 <tfp_format+0x64>
800057e0:	05700793          	li	a5,87
800057e4:	6cb7f463          	bgeu	a5,a1,80005eac <tfp_format+0x7cc>
800057e8:	fa858593          	addi	a1,a1,-88
800057ec:	0ff5f793          	zext.b	a5,a1
800057f0:	02000693          	li	a3,32
800057f4:	f4f6e8e3          	bltu	a3,a5,80005744 <tfp_format+0x64>
800057f8:	00005697          	auipc	a3,0x5
800057fc:	08c68693          	addi	a3,a3,140 # 8000a884 <__clzsi2+0x308>
80005800:	00279793          	slli	a5,a5,0x2
80005804:	00d787b3          	add	a5,a5,a3
80005808:	0007a783          	lw	a5,0(a5)
8000580c:	00d787b3          	add	a5,a5,a3
80005810:	00078067          	jr	a5
                    p.align_left = 1;
80005814:	01414783          	lbu	a5,20(sp)
80005818:	0087e793          	ori	a5,a5,8
8000581c:	00f10a23          	sb	a5,20(sp)
            while ((ch = *(fmt++))) {
80005820:	00044583          	lbu	a1,0(s0)
80005824:	00140413          	addi	s0,s0,1
80005828:	f6059ce3          	bnez	a1,800057a0 <tfp_format+0xc0>
8000582c:	f25ff06f          	j	80005750 <tfp_format+0x70>
                    p.alt = 1;
80005830:	01414783          	lbu	a5,20(sp)
80005834:	0027e793          	ori	a5,a5,2
80005838:	00f10a23          	sb	a5,20(sp)
                    continue;
8000583c:	fe5ff06f          	j	80005820 <tfp_format+0x140>
                    p.lz = 1;
80005840:	01414783          	lbu	a5,20(sp)
80005844:	0017e793          	ori	a5,a5,1
80005848:	00f10a23          	sb	a5,20(sp)
                    continue;
8000584c:	fd5ff06f          	j	80005820 <tfp_format+0x140>
                    lng = 1;
80005850:	00100713          	li	a4,1
                ch = *(fmt++);
80005854:	00044583          	lbu	a1,0(s0)
80005858:	00e40433          	add	s0,s0,a4
8000585c:	f7dff06f          	j	800057d8 <tfp_format+0xf8>
    if (ch >= '0' && ch <= '9')
80005860:	0ff7f713          	zext.b	a4,a5
    unsigned int num = 0;
80005864:	00000693          	li	a3,0
    else if (ch >= 'a' && ch <= 'f')
80005868:	00500813          	li	a6,5
        if (digit > base)
8000586c:	00a00513          	li	a0,10
    if (ch >= '0' && ch <= '9')
80005870:	04e67663          	bgeu	a2,a4,800058bc <tfp_format+0x1dc>
    else if (ch >= 'a' && ch <= 'f')
80005874:	f9f58793          	addi	a5,a1,-97
80005878:	0ff7f793          	zext.b	a5,a5
8000587c:	04f87463          	bgeu	a6,a5,800058c4 <tfp_format+0x1e4>
    else if (ch >= 'A' && ch <= 'F')
80005880:	fbf58793          	addi	a5,a1,-65
80005884:	0ff7f793          	zext.b	a5,a5
80005888:	1af860e3          	bltu	a6,a5,80006228 <tfp_format+0xb48>
        return ch - 'A' + 10;
8000588c:	fc958793          	addi	a5,a1,-55
        if (digit > base)
80005890:	02a79e63          	bne	a5,a0,800058cc <tfp_format+0x1ec>
80005894:	00050713          	mv	a4,a0
        num = num * base + digit;
80005898:	00269793          	slli	a5,a3,0x2
        ch = *p++;
8000589c:	00044583          	lbu	a1,0(s0)
        num = num * base + digit;
800058a0:	00d787b3          	add	a5,a5,a3
800058a4:	00179793          	slli	a5,a5,0x1
800058a8:	00e786b3          	add	a3,a5,a4
        ch = *p++;
800058ac:	fd058793          	addi	a5,a1,-48
    if (ch >= '0' && ch <= '9')
800058b0:	0ff7f713          	zext.b	a4,a5
        ch = *p++;
800058b4:	00140413          	addi	s0,s0,1
    if (ch >= '0' && ch <= '9')
800058b8:	fae66ee3          	bltu	a2,a4,80005874 <tfp_format+0x194>
        return ch - '0';
800058bc:	00078713          	mv	a4,a5
800058c0:	fd9ff06f          	j	80005898 <tfp_format+0x1b8>
        return ch - 'a' + 10;
800058c4:	fa958793          	addi	a5,a1,-87
        if (digit > base)
800058c8:	fca786e3          	beq	a5,a0,80005894 <tfp_format+0x1b4>
    *nump = num;
800058cc:	00d12c23          	sw	a3,24(sp)
            if (ch == '.') {
800058d0:	ef5ff06f          	j	800057c4 <tfp_format+0xe4>
                p.base = 10;
800058d4:	00a00793          	li	a5,10
800058d8:	02f12023          	sw	a5,32(sp)
                if (2 == lng)
800058dc:	00200793          	li	a5,2
800058e0:	68f70c63          	beq	a4,a5,80005f78 <tfp_format+0x898>
800058e4:	05812c23          	sw	s8,88(sp)
800058e8:	05a12823          	sw	s10,80(sp)
800058ec:	05b12623          	sw	s11,76(sp)
                  if (1 == lng)
800058f0:	00100793          	li	a5,1
                    li2a(va_arg(va, long int), &p);
800058f4:	000a2c83          	lw	s9,0(s4)
                  if (1 == lng)
800058f8:	5af70ce3          	beq	a4,a5,800066b0 <tfp_format+0xfd0>
    if (num < 0) {
800058fc:	000cd863          	bgez	s9,8000590c <tfp_format+0x22c>
        p->sign = '-';
80005900:	02d00793          	li	a5,45
        num = -num;
80005904:	41900cb3          	neg	s9,s9
        p->sign = '-';
80005908:	00f10e23          	sb	a5,28(sp)
    while (num / d >= p->base)
8000590c:	00900d93          	li	s11,9
    ui2a(num, p);
80005910:	000c8d13          	mv	s10,s9
    unsigned long int d = 1;
80005914:	00100c13          	li	s8,1
    while (num / d >= p->base)
80005918:	039dd463          	bge	s11,s9,80005940 <tfp_format+0x260>
        d *= p->base;
8000591c:	002c1713          	slli	a4,s8,0x2
80005920:	018707b3          	add	a5,a4,s8
80005924:	00179c13          	slli	s8,a5,0x1
    while (num / d >= p->base)
80005928:	000c0593          	mv	a1,s8
8000592c:	000c8513          	mv	a0,s9
80005930:	3a1040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005934:	feade4e3          	bltu	s11,a0,8000591c <tfp_format+0x23c>
    while (d != 0) {
80005938:	000c1463          	bnez	s8,80005940 <tfp_format+0x260>
8000593c:	7950006f          	j	800068d0 <tfp_format+0x11f0>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005940:	01414703          	lbu	a4,20(sp)
        if (n || dgt > 0 || d == 0) {
80005944:	00900c93          	li	s9,9
80005948:	00477713          	andi	a4,a4,4
8000594c:	76071063          	bnez	a4,800060ac <tfp_format+0x9cc>
        int dgt = num / d;
80005950:	000c0593          	mv	a1,s8
80005954:	000d0513          	mv	a0,s10
80005958:	379040ef          	jal	8000a4d0 <__hidden___udivsi3>
8000595c:	00050613          	mv	a2,a0
        num %= d;
80005960:	000c0593          	mv	a1,s8
80005964:	000d0513          	mv	a0,s10
        int dgt = num / d;
80005968:	00c12423          	sw	a2,8(sp)
        num %= d;
8000596c:	3ad040ef          	jal	8000a518 <__umodsi3>
80005970:	00050d13          	mv	s10,a0
        d /= p->base;
80005974:	00a00593          	li	a1,10
80005978:	000c0513          	mv	a0,s8
8000597c:	355040ef          	jal	8000a4d0 <__hidden___udivsi3>
        if (n || dgt > 0 || d == 0) {
80005980:	00812603          	lw	a2,8(sp)
        d /= p->base;
80005984:	00050d93          	mv	s11,a0
        if (n || dgt > 0 || d == 0) {
80005988:	20c05ce3          	blez	a2,800063a0 <tfp_format+0xcc0>
8000598c:	02810c93          	addi	s9,sp,40
80005990:	000c8713          	mv	a4,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005994:	00900813          	li	a6,9
80005998:	04c0006f          	j	800059e4 <tfp_format+0x304>
        int dgt = num / d;
8000599c:	000d8593          	mv	a1,s11
800059a0:	000d0513          	mv	a0,s10
800059a4:	00e12623          	sw	a4,12(sp)
800059a8:	329040ef          	jal	8000a4d0 <__hidden___udivsi3>
800059ac:	00050613          	mv	a2,a0
        num %= d;
800059b0:	000d8593          	mv	a1,s11
800059b4:	000d0513          	mv	a0,s10
        int dgt = num / d;
800059b8:	00c12423          	sw	a2,8(sp)
        num %= d;
800059bc:	35d040ef          	jal	8000a518 <__umodsi3>
800059c0:	00050d13          	mv	s10,a0
        d /= p->base;
800059c4:	00a00593          	li	a1,10
800059c8:	000d8513          	mv	a0,s11
800059cc:	305040ef          	jal	8000a4d0 <__hidden___udivsi3>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800059d0:	00c12703          	lw	a4,12(sp)
800059d4:	00812603          	lw	a2,8(sp)
        d /= p->base;
800059d8:	000d8c13          	mv	s8,s11
800059dc:	00900813          	li	a6,9
800059e0:	00050d93          	mv	s11,a0
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800059e4:	00c826b3          	slt	a3,a6,a2
800059e8:	40d006b3          	neg	a3,a3
800059ec:	0276f693          	andi	a3,a3,39
800059f0:	03068693          	addi	a3,a3,48
800059f4:	00c686b3          	add	a3,a3,a2
800059f8:	00d70023          	sb	a3,0(a4)
800059fc:	00170713          	addi	a4,a4,1
    while (d != 0) {
80005a00:	f9886ee3          	bltu	a6,s8,8000599c <tfp_format+0x2bc>
    *bf = 0;
80005a04:	00070023          	sb	zero,0(a4)
80005a08:	05812c03          	lw	s8,88(sp)
80005a0c:	05012d03          	lw	s10,80(sp)
80005a10:	04c12d83          	lw	s11,76(sp)
                    uli2a(va_arg(va, unsigned long int), &p);
80005a14:	004a0a13          	addi	s4,s4,4
80005a18:	01410613          	addi	a2,sp,20
80005a1c:	3680006f          	j	80005d84 <tfp_format+0x6a4>
                p.uc = (ch == 'X')?1:0;
80005a20:	01414683          	lbu	a3,20(sp)
80005a24:	0015b593          	seqz	a1,a1
80005a28:	00259793          	slli	a5,a1,0x2
80005a2c:	ffb6f693          	andi	a3,a3,-5
80005a30:	00f6e7b3          	or	a5,a3,a5
                p.base = 16;
80005a34:	01000693          	li	a3,16
                p.uc = (ch == 'X')?1:0;
80005a38:	00f10a23          	sb	a5,20(sp)
                p.base = 16;
80005a3c:	02d12023          	sw	a3,32(sp)
                if (2 == lng)
80005a40:	00200793          	li	a5,2
80005a44:	56f70463          	beq	a4,a5,80005fac <tfp_format+0x8cc>
80005a48:	05a12823          	sw	s10,80(sp)
80005a4c:	05b12623          	sw	s11,76(sp)
                  if (1 == lng)
80005a50:	00100793          	li	a5,1
80005a54:	48f71c63          	bne	a4,a5,80005eec <tfp_format+0x80c>
                    li2a(va_arg(va, long int), &p);
80005a58:	000a2d03          	lw	s10,0(s4)
    while (num / d >= p->base)
80005a5c:	00f00d93          	li	s11,15
    unsigned long int d = 1;
80005a60:	00070c93          	mv	s9,a4
    while (num / d >= p->base)
80005a64:	01adfe63          	bgeu	s11,s10,80005a80 <tfp_format+0x3a0>
        d *= p->base;
80005a68:	004c9c93          	slli	s9,s9,0x4
    while (num / d >= p->base)
80005a6c:	000c8593          	mv	a1,s9
80005a70:	000d0513          	mv	a0,s10
80005a74:	25d040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005a78:	feade8e3          	bltu	s11,a0,80005a68 <tfp_format+0x388>
    while (d != 0) {
80005a7c:	620c8ee3          	beqz	s9,800068b8 <tfp_format+0x11d8>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005a80:	01414783          	lbu	a5,20(sp)
        int dgt = num / d;
80005a84:	000c8593          	mv	a1,s9
80005a88:	000d0513          	mv	a0,s10
80005a8c:	0047f793          	andi	a5,a5,4
80005a90:	220792e3          	bnez	a5,800064b4 <tfp_format+0xdd4>
80005a94:	23d040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
80005a98:	000c8593          	mv	a1,s9
        int dgt = num / d;
80005a9c:	00050d93          	mv	s11,a0
        num %= d;
80005aa0:	000d0513          	mv	a0,s10
80005aa4:	275040ef          	jal	8000a518 <__umodsi3>
80005aa8:	00050713          	mv	a4,a0
        d /= p->base;
80005aac:	004cd593          	srli	a1,s9,0x4
        if (n || dgt > 0 || d == 0) {
80005ab0:	00f00d13          	li	s10,15
80005ab4:	77b05e63          	blez	s11,80006230 <tfp_format+0xb50>
80005ab8:	02810c93          	addi	s9,sp,40
80005abc:	000c8d13          	mv	s10,s9
80005ac0:	0340006f          	j	80005af4 <tfp_format+0x414>
        int dgt = num / d;
80005ac4:	00070513          	mv	a0,a4
80005ac8:	00b12423          	sw	a1,8(sp)
80005acc:	00e12623          	sw	a4,12(sp)
80005ad0:	201040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
80005ad4:	00c12703          	lw	a4,12(sp)
80005ad8:	00812583          	lw	a1,8(sp)
        int dgt = num / d;
80005adc:	00050d93          	mv	s11,a0
        num %= d;
80005ae0:	00070513          	mv	a0,a4
80005ae4:	235040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80005ae8:	00812583          	lw	a1,8(sp)
        num %= d;
80005aec:	00050713          	mv	a4,a0
        d /= p->base;
80005af0:	0045d593          	srli	a1,a1,0x4
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005af4:	00900793          	li	a5,9
80005af8:	01b7a7b3          	slt	a5,a5,s11
80005afc:	40f007b3          	neg	a5,a5
80005b00:	0277f793          	andi	a5,a5,39
80005b04:	03078793          	addi	a5,a5,48
80005b08:	01b787b3          	add	a5,a5,s11
80005b0c:	00fd0023          	sb	a5,0(s10)
80005b10:	001d0d13          	addi	s10,s10,1
    while (d != 0) {
80005b14:	fa0598e3          	bnez	a1,80005ac4 <tfp_format+0x3e4>
    *bf = 0;
80005b18:	000d0023          	sb	zero,0(s10)
}
80005b1c:	05012d03          	lw	s10,80(sp)
80005b20:	04c12d83          	lw	s11,76(sp)
                    uli2a(va_arg(va, unsigned long int), &p);
80005b24:	004a0a13          	addi	s4,s4,4
    *bf = 0;
80005b28:	01410613          	addi	a2,sp,20
}
80005b2c:	2580006f          	j	80005d84 <tfp_format+0x6a4>
                putf(putp, (char)(va_arg(va, int)));
80005b30:	000a4583          	lbu	a1,0(s4)
80005b34:	00048513          	mv	a0,s1
80005b38:	004a0a13          	addi	s4,s4,4
80005b3c:	000900e7          	jalr	s2
                break;
80005b40:	c05ff06f          	j	80005744 <tfp_format+0x64>
                p.base = 10;
80005b44:	00a00793          	li	a5,10
80005b48:	02f12023          	sw	a5,32(sp)
                if (2 == lng)
80005b4c:	00200793          	li	a5,2
80005b50:	44f70e63          	beq	a4,a5,80005fac <tfp_format+0x8cc>
80005b54:	05812c23          	sw	s8,88(sp)
80005b58:	05a12823          	sw	s10,80(sp)
                  if (1 == lng)
80005b5c:	00100793          	li	a5,1
                    uli2a(va_arg(va, unsigned long int), &p);
80005b60:	000a2d03          	lw	s10,0(s4)
    while (num / d >= p->base)
80005b64:	00900c93          	li	s9,9
                  if (1 == lng)
80005b68:	04f708e3          	beq	a4,a5,800063b8 <tfp_format+0xcd8>
    while (num / d >= p->base)
80005b6c:	55acfce3          	bgeu	s9,s10,800068c4 <tfp_format+0x11e4>
    unsigned long int d = 1;
80005b70:	00078c13          	mv	s8,a5
        d *= p->base;
80005b74:	002c1713          	slli	a4,s8,0x2
80005b78:	018707b3          	add	a5,a4,s8
80005b7c:	00179c13          	slli	s8,a5,0x1
    while (num / d >= p->base)
80005b80:	000c0593          	mv	a1,s8
80005b84:	000d0513          	mv	a0,s10
80005b88:	149040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005b8c:	feace4e3          	bltu	s9,a0,80005b74 <tfp_format+0x494>
    while (d != 0) {
80005b90:	300c04e3          	beqz	s8,80006698 <tfp_format+0xfb8>
80005b94:	05b12623          	sw	s11,76(sp)
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005b98:	01414703          	lbu	a4,20(sp)
        if (n || dgt > 0 || d == 0) {
80005b9c:	00900c93          	li	s9,9
80005ba0:	00477713          	andi	a4,a4,4
80005ba4:	44071063          	bnez	a4,80005fe4 <tfp_format+0x904>
        int dgt = num / d;
80005ba8:	000c0593          	mv	a1,s8
80005bac:	000d0513          	mv	a0,s10
80005bb0:	121040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005bb4:	00050613          	mv	a2,a0
        num %= d;
80005bb8:	000c0593          	mv	a1,s8
80005bbc:	000d0513          	mv	a0,s10
        int dgt = num / d;
80005bc0:	00c12423          	sw	a2,8(sp)
        num %= d;
80005bc4:	155040ef          	jal	8000a518 <__umodsi3>
80005bc8:	00050d13          	mv	s10,a0
        d /= p->base;
80005bcc:	00a00593          	li	a1,10
80005bd0:	000c0513          	mv	a0,s8
80005bd4:	0fd040ef          	jal	8000a4d0 <__hidden___udivsi3>
        if (n || dgt > 0 || d == 0) {
80005bd8:	00812603          	lw	a2,8(sp)
        d /= p->base;
80005bdc:	00050d93          	mv	s11,a0
        if (n || dgt > 0 || d == 0) {
80005be0:	72c05463          	blez	a2,80006308 <tfp_format+0xc28>
80005be4:	02810c93          	addi	s9,sp,40
80005be8:	000c8713          	mv	a4,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005bec:	00900813          	li	a6,9
80005bf0:	0500006f          	j	80005c40 <tfp_format+0x560>
        int dgt = num / d;
80005bf4:	000d8593          	mv	a1,s11
80005bf8:	000d0513          	mv	a0,s10
80005bfc:	00f12623          	sw	a5,12(sp)
80005c00:	0d1040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005c04:	00050613          	mv	a2,a0
        num %= d;
80005c08:	000d8593          	mv	a1,s11
80005c0c:	000d0513          	mv	a0,s10
        int dgt = num / d;
80005c10:	00c12423          	sw	a2,8(sp)
        num %= d;
80005c14:	105040ef          	jal	8000a518 <__umodsi3>
80005c18:	00050d13          	mv	s10,a0
        d /= p->base;
80005c1c:	00a00593          	li	a1,10
80005c20:	000d8513          	mv	a0,s11
80005c24:	0ad040ef          	jal	8000a4d0 <__hidden___udivsi3>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005c28:	00c12783          	lw	a5,12(sp)
80005c2c:	00812603          	lw	a2,8(sp)
        d /= p->base;
80005c30:	000d8c13          	mv	s8,s11
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005c34:	00078713          	mv	a4,a5
        d /= p->base;
80005c38:	00050d93          	mv	s11,a0
80005c3c:	00900813          	li	a6,9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005c40:	00c826b3          	slt	a3,a6,a2
80005c44:	40d006b3          	neg	a3,a3
80005c48:	0276f693          	andi	a3,a3,39
80005c4c:	03068693          	addi	a3,a3,48
80005c50:	00c686b3          	add	a3,a3,a2
80005c54:	00d70023          	sb	a3,0(a4)
80005c58:	00170793          	addi	a5,a4,1
    while (d != 0) {
80005c5c:	f9886ce3          	bltu	a6,s8,80005bf4 <tfp_format+0x514>
80005c60:	04c12d83          	lw	s11,76(sp)
80005c64:	6bc0006f          	j	80006320 <tfp_format+0xc40>
                putchw(putp, putf, &p);
80005c68:	000a2783          	lw	a5,0(s4)
80005c6c:	01410613          	addi	a2,sp,20
80005c70:	00090593          	mv	a1,s2
80005c74:	00048513          	mv	a0,s1
80005c78:	02f12223          	sw	a5,36(sp)
                p.bf = va_arg(va, char *);
80005c7c:	004a0a13          	addi	s4,s4,4
                putchw(putp, putf, &p);
80005c80:	861ff0ef          	jal	800054e0 <_ZL6putchwPvPFvS_cEP5param>
                break;
80005c84:	ac1ff06f          	j	80005744 <tfp_format+0x64>
                p.alt = 1;
80005c88:	01414783          	lbu	a5,20(sp)
                p.base = 16;
80005c8c:	01000713          	li	a4,16
80005c90:	05812c23          	sw	s8,88(sp)
                p.alt = 1;
80005c94:	ff97f793          	andi	a5,a5,-7
80005c98:	0027e793          	ori	a5,a5,2
80005c9c:	05a12823          	sw	s10,80(sp)
80005ca0:	05b12623          	sw	s11,76(sp)
                p.base = 16;
80005ca4:	02e12023          	sw	a4,32(sp)
                p.alt = 1;
80005ca8:	00f10a23          	sb	a5,20(sp)
                    ui2a(va_arg(va, unsigned int), &p);
80005cac:	000a2d03          	lw	s10,0(s4)
    while (num / d >= p->base)
80005cb0:	00f00d93          	li	s11,15
                    ui2a(va_arg(va, unsigned int), &p);
80005cb4:	004a0c13          	addi	s8,s4,4
    unsigned long int d = 1;
80005cb8:	00100c93          	li	s9,1
    while (num / d >= p->base)
80005cbc:	01adfe63          	bgeu	s11,s10,80005cd8 <tfp_format+0x5f8>
        d *= p->base;
80005cc0:	004c9c93          	slli	s9,s9,0x4
    while (num / d >= p->base)
80005cc4:	000c8593          	mv	a1,s9
80005cc8:	000d0513          	mv	a0,s10
80005ccc:	005040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005cd0:	feade8e3          	bltu	s11,a0,80005cc0 <tfp_format+0x5e0>
    while (d != 0) {
80005cd4:	0e0c8ae3          	beqz	s9,800065c8 <tfp_format+0xee8>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005cd8:	01414783          	lbu	a5,20(sp)
        int dgt = num / d;
80005cdc:	000c8593          	mv	a1,s9
80005ce0:	000d0513          	mv	a0,s10
80005ce4:	0047f793          	andi	a5,a5,4
80005ce8:	20079663          	bnez	a5,80005ef4 <tfp_format+0x814>
80005cec:	7e4040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005cf0:	00050d93          	mv	s11,a0
        num %= d;
80005cf4:	000c8593          	mv	a1,s9
80005cf8:	000d0513          	mv	a0,s10
80005cfc:	01d040ef          	jal	8000a518 <__umodsi3>
80005d00:	00050713          	mv	a4,a0
        d /= p->base;
80005d04:	004cda13          	srli	s4,s9,0x4
        if (n || dgt > 0 || d == 0) {
80005d08:	00f00d13          	li	s10,15
80005d0c:	45b05c63          	blez	s11,80006164 <tfp_format+0xa84>
80005d10:	02810c93          	addi	s9,sp,40
80005d14:	000c8d13          	mv	s10,s9
80005d18:	0300006f          	j	80005d48 <tfp_format+0x668>
        int dgt = num / d;
80005d1c:	000a0593          	mv	a1,s4
80005d20:	00070513          	mv	a0,a4
80005d24:	00e12423          	sw	a4,8(sp)
80005d28:	7a8040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
80005d2c:	00812703          	lw	a4,8(sp)
80005d30:	000a0593          	mv	a1,s4
        int dgt = num / d;
80005d34:	00050d93          	mv	s11,a0
        num %= d;
80005d38:	00070513          	mv	a0,a4
80005d3c:	7dc040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80005d40:	004a5a13          	srli	s4,s4,0x4
        num %= d;
80005d44:	00050713          	mv	a4,a0
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005d48:	00900793          	li	a5,9
80005d4c:	01b7a7b3          	slt	a5,a5,s11
80005d50:	40f007b3          	neg	a5,a5
80005d54:	0277f793          	andi	a5,a5,39
80005d58:	03078793          	addi	a5,a5,48
80005d5c:	01b787b3          	add	a5,a5,s11
80005d60:	00fd0023          	sb	a5,0(s10)
80005d64:	001d0d13          	addi	s10,s10,1
    while (d != 0) {
80005d68:	fa0a1ae3          	bnez	s4,80005d1c <tfp_format+0x63c>
    *bf = 0;
80005d6c:	000d0023          	sb	zero,0(s10)
                    ui2a(va_arg(va, unsigned int), &p);
80005d70:	000c0a13          	mv	s4,s8
80005d74:	05012d03          	lw	s10,80(sp)
80005d78:	05812c03          	lw	s8,88(sp)
80005d7c:	04c12d83          	lw	s11,76(sp)
80005d80:	01410613          	addi	a2,sp,20
                putchw(putp, putf, &p);
80005d84:	00090593          	mv	a1,s2
80005d88:	00048513          	mv	a0,s1
80005d8c:	03912223          	sw	s9,36(sp)
80005d90:	f50ff0ef          	jal	800054e0 <_ZL6putchwPvPFvS_cEP5param>
                break;
80005d94:	9b1ff06f          	j	80005744 <tfp_format+0x64>
80005d98:	05a12823          	sw	s10,80(sp)
                ui2a(va_arg(va, unsigned int), &p);
80005d9c:	000a2d03          	lw	s10,0(s4)
                p.base = 8;
80005da0:	00800793          	li	a5,8
80005da4:	05812c23          	sw	s8,88(sp)
80005da8:	05b12623          	sw	s11,76(sp)
80005dac:	02f12023          	sw	a5,32(sp)
    while (num / d >= p->base)
80005db0:	00700d93          	li	s11,7
                ui2a(va_arg(va, unsigned int), &p);
80005db4:	004a0c13          	addi	s8,s4,4
    unsigned long int d = 1;
80005db8:	00100c93          	li	s9,1
    while (num / d >= p->base)
80005dbc:	01adfe63          	bgeu	s11,s10,80005dd8 <tfp_format+0x6f8>
        d *= p->base;
80005dc0:	003c9c93          	slli	s9,s9,0x3
    while (num / d >= p->base)
80005dc4:	000c8593          	mv	a1,s9
80005dc8:	000d0513          	mv	a0,s10
80005dcc:	704040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005dd0:	feade8e3          	bltu	s11,a0,80005dc0 <tfp_format+0x6e0>
    while (d != 0) {
80005dd4:	2c0c8ce3          	beqz	s9,800068ac <tfp_format+0x11cc>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005dd8:	01414783          	lbu	a5,20(sp)
        int dgt = num / d;
80005ddc:	000c8593          	mv	a1,s9
80005de0:	000d0513          	mv	a0,s10
80005de4:	0047f793          	andi	a5,a5,4
80005de8:	48079463          	bnez	a5,80006270 <tfp_format+0xb90>
80005dec:	6e4040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005df0:	00050d93          	mv	s11,a0
        num %= d;
80005df4:	000c8593          	mv	a1,s9
80005df8:	000d0513          	mv	a0,s10
80005dfc:	71c040ef          	jal	8000a518 <__umodsi3>
80005e00:	00050713          	mv	a4,a0
        d /= p->base;
80005e04:	003cda13          	srli	s4,s9,0x3
        if (n || dgt > 0 || d == 0) {
80005e08:	00700d13          	li	s10,7
80005e0c:	3db05863          	blez	s11,800061dc <tfp_format+0xafc>
80005e10:	02810c93          	addi	s9,sp,40
80005e14:	000c8d13          	mv	s10,s9
80005e18:	0300006f          	j	80005e48 <tfp_format+0x768>
        int dgt = num / d;
80005e1c:	000a0593          	mv	a1,s4
80005e20:	00070513          	mv	a0,a4
80005e24:	00e12423          	sw	a4,8(sp)
80005e28:	6a8040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
80005e2c:	00812703          	lw	a4,8(sp)
80005e30:	000a0593          	mv	a1,s4
        int dgt = num / d;
80005e34:	00050d93          	mv	s11,a0
        num %= d;
80005e38:	00070513          	mv	a0,a4
80005e3c:	6dc040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80005e40:	003a5a13          	srli	s4,s4,0x3
        num %= d;
80005e44:	00050713          	mv	a4,a0
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005e48:	00900793          	li	a5,9
80005e4c:	01b7a7b3          	slt	a5,a5,s11
80005e50:	40f007b3          	neg	a5,a5
80005e54:	0277f793          	andi	a5,a5,39
80005e58:	03078793          	addi	a5,a5,48
80005e5c:	01b787b3          	add	a5,a5,s11
80005e60:	00fd0023          	sb	a5,0(s10)
80005e64:	001d0d13          	addi	s10,s10,1
    while (d != 0) {
80005e68:	fa0a1ae3          	bnez	s4,80005e1c <tfp_format+0x73c>
    *bf = 0;
80005e6c:	000d0023          	sb	zero,0(s10)
                putchw(putp, putf, &p);
80005e70:	01410613          	addi	a2,sp,20
80005e74:	00090593          	mv	a1,s2
80005e78:	00048513          	mv	a0,s1
80005e7c:	03912223          	sw	s9,36(sp)
                ui2a(va_arg(va, unsigned int), &p);
80005e80:	000c0a13          	mv	s4,s8
                putchw(putp, putf, &p);
80005e84:	e5cff0ef          	jal	800054e0 <_ZL6putchwPvPFvS_cEP5param>
                break;
80005e88:	05812c03          	lw	s8,88(sp)
80005e8c:	05012d03          	lw	s10,80(sp)
80005e90:	04c12d83          	lw	s11,76(sp)
80005e94:	8b1ff06f          	j	80005744 <tfp_format+0x64>
                ch = *(fmt++);
80005e98:	00044583          	lbu	a1,0(s0)
                if (ch == 'l') {
80005e9c:	36f58e63          	beq	a1,a5,80006218 <tfp_format+0xb38>
                ch = *(fmt++);
80005ea0:	00140413          	addi	s0,s0,1
                lng = 1;
80005ea4:	00100713          	li	a4,1
80005ea8:	931ff06f          	j	800057d8 <tfp_format+0xf8>
            switch (ch) {
80005eac:	8a0582e3          	beqz	a1,80005750 <tfp_format+0x70>
80005eb0:	02500793          	li	a5,37
80005eb4:	88f598e3          	bne	a1,a5,80005744 <tfp_format+0x64>
                putf(putp, ch);
80005eb8:	00048513          	mv	a0,s1
80005ebc:	000900e7          	jalr	s2
80005ec0:	885ff06f          	j	80005744 <tfp_format+0x64>
              p.lz = 1;  /* zero-padding */
80005ec4:	01414783          	lbu	a5,20(sp)
              } while ((ch >= '0') && (ch <= '9'));
80005ec8:	00900713          	li	a4,9
              p.lz = 1;  /* zero-padding */
80005ecc:	0017e793          	ori	a5,a5,1
80005ed0:	00f10a23          	sb	a5,20(sp)
                ch = *(fmt++);
80005ed4:	00044583          	lbu	a1,0(s0)
80005ed8:	00140413          	addi	s0,s0,1
              } while ((ch >= '0') && (ch <= '9'));
80005edc:	fd058793          	addi	a5,a1,-48
80005ee0:	0ff7f793          	zext.b	a5,a5
80005ee4:	fef778e3          	bgeu	a4,a5,80005ed4 <tfp_format+0x7f4>
80005ee8:	8ddff06f          	j	800057c4 <tfp_format+0xe4>
80005eec:	05812c23          	sw	s8,88(sp)
80005ef0:	dbdff06f          	j	80005cac <tfp_format+0x5cc>
        int dgt = num / d;
80005ef4:	5dc040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005ef8:	00050d93          	mv	s11,a0
        num %= d;
80005efc:	000c8593          	mv	a1,s9
80005f00:	000d0513          	mv	a0,s10
80005f04:	614040ef          	jal	8000a518 <__umodsi3>
80005f08:	00050713          	mv	a4,a0
        d /= p->base;
80005f0c:	004cda13          	srli	s4,s9,0x4
        if (n || dgt > 0 || d == 0) {
80005f10:	00f00d13          	li	s10,15
80005f14:	29b05663          	blez	s11,800061a0 <tfp_format+0xac0>
80005f18:	02810c93          	addi	s9,sp,40
80005f1c:	000c8d13          	mv	s10,s9
80005f20:	0300006f          	j	80005f50 <tfp_format+0x870>
        int dgt = num / d;
80005f24:	000a0593          	mv	a1,s4
80005f28:	00070513          	mv	a0,a4
80005f2c:	00e12423          	sw	a4,8(sp)
80005f30:	5a0040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
80005f34:	00812703          	lw	a4,8(sp)
80005f38:	000a0593          	mv	a1,s4
        int dgt = num / d;
80005f3c:	00050d93          	mv	s11,a0
        num %= d;
80005f40:	00070513          	mv	a0,a4
80005f44:	5d4040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80005f48:	004a5a13          	srli	s4,s4,0x4
        num %= d;
80005f4c:	00050713          	mv	a4,a0
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005f50:	00900793          	li	a5,9
80005f54:	01b7a7b3          	slt	a5,a5,s11
80005f58:	40f007b3          	neg	a5,a5
80005f5c:	0077f793          	andi	a5,a5,7
80005f60:	03078793          	addi	a5,a5,48
80005f64:	01b787b3          	add	a5,a5,s11
80005f68:	00fd0023          	sb	a5,0(s10)
80005f6c:	001d0d13          	addi	s10,s10,1
    while (d != 0) {
80005f70:	fa0a1ae3          	bnez	s4,80005f24 <tfp_format+0x844>
80005f74:	df9ff06f          	j	80005d6c <tfp_format+0x68c>
                    lli2a(va_arg(va, long long int), &p);
80005f78:	007a0793          	addi	a5,s4,7
80005f7c:	ff87f793          	andi	a5,a5,-8
80005f80:	0047a583          	lw	a1,4(a5)
80005f84:	0007a503          	lw	a0,0(a5)
80005f88:	00878a13          	addi	s4,a5,8
    if (num < 0) {
80005f8c:	6205c063          	bltz	a1,800065ac <tfp_format+0xecc>
    ulli2a(num, p);
80005f90:	01410613          	addi	a2,sp,20
80005f94:	02810c93          	addi	s9,sp,40
80005f98:	00c12423          	sw	a2,8(sp)
80005f9c:	03912223          	sw	s9,36(sp)
80005fa0:	ad0ff0ef          	jal	80005270 <_ZL6ulli2ayP5param>
}
80005fa4:	00812603          	lw	a2,8(sp)
80005fa8:	dddff06f          	j	80005d84 <tfp_format+0x6a4>
                    ulli2a(va_arg(va, unsigned long long int), &p);
80005fac:	007a0a13          	addi	s4,s4,7
80005fb0:	ff8a7a13          	andi	s4,s4,-8
80005fb4:	000a2503          	lw	a0,0(s4)
80005fb8:	004a2583          	lw	a1,4(s4)
80005fbc:	01410613          	addi	a2,sp,20
80005fc0:	02810c93          	addi	s9,sp,40
80005fc4:	00c12423          	sw	a2,8(sp)
80005fc8:	03912223          	sw	s9,36(sp)
80005fcc:	aa4ff0ef          	jal	80005270 <_ZL6ulli2ayP5param>
80005fd0:	00812603          	lw	a2,8(sp)
80005fd4:	008a0a13          	addi	s4,s4,8
80005fd8:	dadff06f          	j	80005d84 <tfp_format+0x6a4>
        if (n || dgt > 0 || d == 0) {
80005fdc:	338cf863          	bgeu	s9,s8,8000630c <tfp_format+0xc2c>
80005fe0:	000d8c13          	mv	s8,s11
        int dgt = num / d;
80005fe4:	000c0593          	mv	a1,s8
80005fe8:	000d0513          	mv	a0,s10
80005fec:	4e4040ef          	jal	8000a4d0 <__hidden___udivsi3>
80005ff0:	00050613          	mv	a2,a0
        num %= d;
80005ff4:	000c0593          	mv	a1,s8
80005ff8:	000d0513          	mv	a0,s10
        int dgt = num / d;
80005ffc:	00c12423          	sw	a2,8(sp)
        num %= d;
80006000:	518040ef          	jal	8000a518 <__umodsi3>
80006004:	00050d13          	mv	s10,a0
        d /= p->base;
80006008:	00a00593          	li	a1,10
8000600c:	000c0513          	mv	a0,s8
80006010:	4c0040ef          	jal	8000a4d0 <__hidden___udivsi3>
        if (n || dgt > 0 || d == 0) {
80006014:	00812603          	lw	a2,8(sp)
        d /= p->base;
80006018:	00050d93          	mv	s11,a0
        if (n || dgt > 0 || d == 0) {
8000601c:	fcc050e3          	blez	a2,80005fdc <tfp_format+0x8fc>
80006020:	02810c93          	addi	s9,sp,40
80006024:	000c8713          	mv	a4,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006028:	00900813          	li	a6,9
8000602c:	0500006f          	j	8000607c <tfp_format+0x99c>
        int dgt = num / d;
80006030:	000d8593          	mv	a1,s11
80006034:	000d0513          	mv	a0,s10
80006038:	00f12623          	sw	a5,12(sp)
8000603c:	494040ef          	jal	8000a4d0 <__hidden___udivsi3>
80006040:	00050613          	mv	a2,a0
        num %= d;
80006044:	000d8593          	mv	a1,s11
80006048:	000d0513          	mv	a0,s10
        int dgt = num / d;
8000604c:	00c12423          	sw	a2,8(sp)
        num %= d;
80006050:	4c8040ef          	jal	8000a518 <__umodsi3>
80006054:	00050d13          	mv	s10,a0
        d /= p->base;
80006058:	00a00593          	li	a1,10
8000605c:	000d8513          	mv	a0,s11
80006060:	470040ef          	jal	8000a4d0 <__hidden___udivsi3>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006064:	00c12783          	lw	a5,12(sp)
80006068:	00812603          	lw	a2,8(sp)
        d /= p->base;
8000606c:	000d8c13          	mv	s8,s11
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006070:	00078713          	mv	a4,a5
        d /= p->base;
80006074:	00050d93          	mv	s11,a0
80006078:	00900813          	li	a6,9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
8000607c:	00c826b3          	slt	a3,a6,a2
80006080:	40d006b3          	neg	a3,a3
80006084:	0076f693          	andi	a3,a3,7
80006088:	03068693          	addi	a3,a3,48
8000608c:	00c686b3          	add	a3,a3,a2
80006090:	00d70023          	sb	a3,0(a4)
80006094:	00170793          	addi	a5,a4,1
    while (d != 0) {
80006098:	f9886ce3          	bltu	a6,s8,80006030 <tfp_format+0x950>
8000609c:	04c12d83          	lw	s11,76(sp)
800060a0:	2800006f          	j	80006320 <tfp_format+0xc40>
        if (n || dgt > 0 || d == 0) {
800060a4:	318cf063          	bgeu	s9,s8,800063a4 <tfp_format+0xcc4>
800060a8:	000d8c13          	mv	s8,s11
        int dgt = num / d;
800060ac:	000c0593          	mv	a1,s8
800060b0:	000d0513          	mv	a0,s10
800060b4:	41c040ef          	jal	8000a4d0 <__hidden___udivsi3>
800060b8:	00050613          	mv	a2,a0
        num %= d;
800060bc:	000c0593          	mv	a1,s8
800060c0:	000d0513          	mv	a0,s10
        int dgt = num / d;
800060c4:	00c12423          	sw	a2,8(sp)
        num %= d;
800060c8:	450040ef          	jal	8000a518 <__umodsi3>
800060cc:	00050d13          	mv	s10,a0
        d /= p->base;
800060d0:	00a00593          	li	a1,10
800060d4:	000c0513          	mv	a0,s8
800060d8:	3f8040ef          	jal	8000a4d0 <__hidden___udivsi3>
        if (n || dgt > 0 || d == 0) {
800060dc:	00812603          	lw	a2,8(sp)
        d /= p->base;
800060e0:	00050d93          	mv	s11,a0
        if (n || dgt > 0 || d == 0) {
800060e4:	fcc050e3          	blez	a2,800060a4 <tfp_format+0x9c4>
800060e8:	02810c93          	addi	s9,sp,40
800060ec:	000c8713          	mv	a4,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800060f0:	00900813          	li	a6,9
800060f4:	04c0006f          	j	80006140 <tfp_format+0xa60>
        int dgt = num / d;
800060f8:	000d8593          	mv	a1,s11
800060fc:	000d0513          	mv	a0,s10
80006100:	00e12623          	sw	a4,12(sp)
80006104:	3cc040ef          	jal	8000a4d0 <__hidden___udivsi3>
80006108:	00050613          	mv	a2,a0
        num %= d;
8000610c:	000d8593          	mv	a1,s11
80006110:	000d0513          	mv	a0,s10
        int dgt = num / d;
80006114:	00c12423          	sw	a2,8(sp)
        num %= d;
80006118:	400040ef          	jal	8000a518 <__umodsi3>
8000611c:	00050d13          	mv	s10,a0
        d /= p->base;
80006120:	00a00593          	li	a1,10
80006124:	000d8513          	mv	a0,s11
80006128:	3a8040ef          	jal	8000a4d0 <__hidden___udivsi3>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
8000612c:	00c12703          	lw	a4,12(sp)
80006130:	00812603          	lw	a2,8(sp)
        d /= p->base;
80006134:	000d8c13          	mv	s8,s11
80006138:	00900813          	li	a6,9
8000613c:	00050d93          	mv	s11,a0
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006140:	00c826b3          	slt	a3,a6,a2
80006144:	40d006b3          	neg	a3,a3
80006148:	0076f693          	andi	a3,a3,7
8000614c:	03068693          	addi	a3,a3,48
80006150:	00c686b3          	add	a3,a3,a2
80006154:	00d70023          	sb	a3,0(a4)
80006158:	00170713          	addi	a4,a4,1
    while (d != 0) {
8000615c:	f9886ee3          	bltu	a6,s8,800060f8 <tfp_format+0xa18>
80006160:	8a5ff06f          	j	80005a04 <tfp_format+0x324>
        if (n || dgt > 0 || d == 0) {
80006164:	1d9d7a63          	bgeu	s10,s9,80006338 <tfp_format+0xc58>
    while (d != 0) {
80006168:	460a0063          	beqz	s4,800065c8 <tfp_format+0xee8>
        int dgt = num / d;
8000616c:	000a0593          	mv	a1,s4
80006170:	00070513          	mv	a0,a4
80006174:	00e12423          	sw	a4,8(sp)
80006178:	358040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
8000617c:	00812703          	lw	a4,8(sp)
80006180:	000a0593          	mv	a1,s4
        int dgt = num / d;
80006184:	00050d93          	mv	s11,a0
        num %= d;
80006188:	00070513          	mv	a0,a4
8000618c:	38c040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80006190:	000a0c93          	mv	s9,s4
        num %= d;
80006194:	00050713          	mv	a4,a0
        d /= p->base;
80006198:	004a5a13          	srli	s4,s4,0x4
8000619c:	b71ff06f          	j	80005d0c <tfp_format+0x62c>
        if (n || dgt > 0 || d == 0) {
800061a0:	1b9d7463          	bgeu	s10,s9,80006348 <tfp_format+0xc68>
    while (d != 0) {
800061a4:	420a0263          	beqz	s4,800065c8 <tfp_format+0xee8>
        int dgt = num / d;
800061a8:	000a0593          	mv	a1,s4
800061ac:	00070513          	mv	a0,a4
800061b0:	00e12423          	sw	a4,8(sp)
800061b4:	31c040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
800061b8:	00812703          	lw	a4,8(sp)
800061bc:	000a0593          	mv	a1,s4
        int dgt = num / d;
800061c0:	00050d93          	mv	s11,a0
        num %= d;
800061c4:	00070513          	mv	a0,a4
800061c8:	350040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
800061cc:	000a0c93          	mv	s9,s4
        num %= d;
800061d0:	00050713          	mv	a4,a0
        d /= p->base;
800061d4:	004a5a13          	srli	s4,s4,0x4
800061d8:	d3dff06f          	j	80005f14 <tfp_format+0x834>
        if (n || dgt > 0 || d == 0) {
800061dc:	179d7e63          	bgeu	s10,s9,80006358 <tfp_format+0xc78>
    while (d != 0) {
800061e0:	6c0a0663          	beqz	s4,800068ac <tfp_format+0x11cc>
        int dgt = num / d;
800061e4:	000a0593          	mv	a1,s4
800061e8:	00070513          	mv	a0,a4
800061ec:	00e12423          	sw	a4,8(sp)
800061f0:	2e0040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
800061f4:	00812703          	lw	a4,8(sp)
800061f8:	000a0593          	mv	a1,s4
        int dgt = num / d;
800061fc:	00050d93          	mv	s11,a0
        num %= d;
80006200:	00070513          	mv	a0,a4
80006204:	314040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80006208:	000a0c93          	mv	s9,s4
        num %= d;
8000620c:	00050713          	mv	a4,a0
        d /= p->base;
80006210:	003a5a13          	srli	s4,s4,0x3
80006214:	bf9ff06f          	j	80005e0c <tfp_format+0x72c>
                  lng = 2;
80006218:	00200713          	li	a4,2
                  ch = *(fmt++);
8000621c:	00144583          	lbu	a1,1(s0)
80006220:	00e40433          	add	s0,s0,a4
80006224:	db4ff06f          	j	800057d8 <tfp_format+0xf8>
    *nump = num;
80006228:	00d12c23          	sw	a3,24(sp)
    return ch;
8000622c:	d90ff06f          	j	800057bc <tfp_format+0xdc>
        if (n || dgt > 0 || d == 0) {
80006230:	359d7e63          	bgeu	s10,s9,8000658c <tfp_format+0xeac>
    while (d != 0) {
80006234:	68058263          	beqz	a1,800068b8 <tfp_format+0x11d8>
        int dgt = num / d;
80006238:	00070513          	mv	a0,a4
8000623c:	00b12423          	sw	a1,8(sp)
80006240:	00e12623          	sw	a4,12(sp)
80006244:	28c040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
80006248:	00c12703          	lw	a4,12(sp)
8000624c:	00812583          	lw	a1,8(sp)
        int dgt = num / d;
80006250:	00050d93          	mv	s11,a0
        num %= d;
80006254:	00070513          	mv	a0,a4
80006258:	2c0040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
8000625c:	00812583          	lw	a1,8(sp)
        num %= d;
80006260:	00050713          	mv	a4,a0
        d /= p->base;
80006264:	00058c93          	mv	s9,a1
80006268:	0045d593          	srli	a1,a1,0x4
8000626c:	849ff06f          	j	80005ab4 <tfp_format+0x3d4>
        int dgt = num / d;
80006270:	260040ef          	jal	8000a4d0 <__hidden___udivsi3>
80006274:	00050d93          	mv	s11,a0
        num %= d;
80006278:	000c8593          	mv	a1,s9
8000627c:	000d0513          	mv	a0,s10
80006280:	298040ef          	jal	8000a518 <__umodsi3>
80006284:	00050713          	mv	a4,a0
        d /= p->base;
80006288:	003cda13          	srli	s4,s9,0x3
        if (n || dgt > 0 || d == 0) {
8000628c:	00700d13          	li	s10,7
80006290:	07b05263          	blez	s11,800062f4 <tfp_format+0xc14>
80006294:	02810c93          	addi	s9,sp,40
80006298:	000c8d13          	mv	s10,s9
8000629c:	0300006f          	j	800062cc <tfp_format+0xbec>
        int dgt = num / d;
800062a0:	000a0593          	mv	a1,s4
800062a4:	00070513          	mv	a0,a4
800062a8:	00e12423          	sw	a4,8(sp)
800062ac:	224040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
800062b0:	00812703          	lw	a4,8(sp)
800062b4:	000a0593          	mv	a1,s4
        int dgt = num / d;
800062b8:	00050d93          	mv	s11,a0
        num %= d;
800062bc:	00070513          	mv	a0,a4
800062c0:	258040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
800062c4:	003a5a13          	srli	s4,s4,0x3
        num %= d;
800062c8:	00050713          	mv	a4,a0
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800062cc:	00900793          	li	a5,9
800062d0:	01b7a7b3          	slt	a5,a5,s11
800062d4:	40f007b3          	neg	a5,a5
800062d8:	0077f793          	andi	a5,a5,7
800062dc:	03078793          	addi	a5,a5,48
800062e0:	01b787b3          	add	a5,a5,s11
800062e4:	00fd0023          	sb	a5,0(s10)
800062e8:	001d0d13          	addi	s10,s10,1
    while (d != 0) {
800062ec:	fa0a1ae3          	bnez	s4,800062a0 <tfp_format+0xbc0>
800062f0:	b7dff06f          	j	80005e6c <tfp_format+0x78c>
        if (n || dgt > 0 || d == 0) {
800062f4:	079d6a63          	bltu	s10,s9,80006368 <tfp_format+0xc88>
800062f8:	02810c93          	addi	s9,sp,40
800062fc:	000c8d13          	mv	s10,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006300:	03000793          	li	a5,48
80006304:	fddff06f          	j	800062e0 <tfp_format+0xc00>
        if (n || dgt > 0 || d == 0) {
80006308:	298cea63          	bltu	s9,s8,8000659c <tfp_format+0xebc>
8000630c:	04c12d83          	lw	s11,76(sp)
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006310:	03060613          	addi	a2,a2,48
80006314:	02c10423          	sb	a2,40(sp)
80006318:	02910793          	addi	a5,sp,41
8000631c:	02810c93          	addi	s9,sp,40
    *bf = 0;
80006320:	00078023          	sb	zero,0(a5)
80006324:	05812c03          	lw	s8,88(sp)
80006328:	05012d03          	lw	s10,80(sp)
                    uli2a(va_arg(va, unsigned long int), &p);
8000632c:	004a0a13          	addi	s4,s4,4
80006330:	01410613          	addi	a2,sp,20
80006334:	a51ff06f          	j	80005d84 <tfp_format+0x6a4>
        if (n || dgt > 0 || d == 0) {
80006338:	02810c93          	addi	s9,sp,40
8000633c:	000c8d13          	mv	s10,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006340:	03000793          	li	a5,48
80006344:	a19ff06f          	j	80005d5c <tfp_format+0x67c>
80006348:	02810c93          	addi	s9,sp,40
8000634c:	000c8d13          	mv	s10,s9
80006350:	03000793          	li	a5,48
80006354:	c11ff06f          	j	80005f64 <tfp_format+0x884>
        if (n || dgt > 0 || d == 0) {
80006358:	02810c93          	addi	s9,sp,40
8000635c:	000c8d13          	mv	s10,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006360:	03000793          	li	a5,48
80006364:	af9ff06f          	j	80005e5c <tfp_format+0x77c>
    while (d != 0) {
80006368:	540a0263          	beqz	s4,800068ac <tfp_format+0x11cc>
        int dgt = num / d;
8000636c:	000a0593          	mv	a1,s4
80006370:	00070513          	mv	a0,a4
80006374:	00e12423          	sw	a4,8(sp)
80006378:	158040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
8000637c:	00812703          	lw	a4,8(sp)
80006380:	000a0593          	mv	a1,s4
        int dgt = num / d;
80006384:	00050d93          	mv	s11,a0
        num %= d;
80006388:	00070513          	mv	a0,a4
8000638c:	18c040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80006390:	000a0c93          	mv	s9,s4
        num %= d;
80006394:	00050713          	mv	a4,a0
        d /= p->base;
80006398:	003a5a13          	srli	s4,s4,0x3
8000639c:	ef5ff06f          	j	80006290 <tfp_format+0xbb0>
        if (n || dgt > 0 || d == 0) {
800063a0:	218ce263          	bltu	s9,s8,800065a4 <tfp_format+0xec4>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800063a4:	03060613          	addi	a2,a2,48
800063a8:	02c10423          	sb	a2,40(sp)
800063ac:	02910713          	addi	a4,sp,41
800063b0:	02810c93          	addi	s9,sp,40
800063b4:	e50ff06f          	j	80005a04 <tfp_format+0x324>
    while (num / d >= p->base)
800063b8:	53acf263          	bgeu	s9,s10,800068dc <tfp_format+0x11fc>
    unsigned long int d = 1;
800063bc:	00070c13          	mv	s8,a4
        d *= p->base;
800063c0:	002c1793          	slli	a5,s8,0x2
800063c4:	018787b3          	add	a5,a5,s8
800063c8:	00179c13          	slli	s8,a5,0x1
    while (num / d >= p->base)
800063cc:	000c0593          	mv	a1,s8
800063d0:	000d0513          	mv	a0,s10
800063d4:	0fc040ef          	jal	8000a4d0 <__hidden___udivsi3>
800063d8:	feace4e3          	bltu	s9,a0,800063c0 <tfp_format+0xce0>
    while (d != 0) {
800063dc:	2a0c0e63          	beqz	s8,80006698 <tfp_format+0xfb8>
800063e0:	05b12623          	sw	s11,76(sp)
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800063e4:	01414783          	lbu	a5,20(sp)
        if (n || dgt > 0 || d == 0) {
800063e8:	00900c93          	li	s9,9
800063ec:	0047f793          	andi	a5,a5,4
800063f0:	1e079663          	bnez	a5,800065dc <tfp_format+0xefc>
        int dgt = num / d;
800063f4:	000c0593          	mv	a1,s8
800063f8:	000d0513          	mv	a0,s10
800063fc:	0d4040ef          	jal	8000a4d0 <__hidden___udivsi3>
80006400:	00050613          	mv	a2,a0
        num %= d;
80006404:	000c0593          	mv	a1,s8
80006408:	000d0513          	mv	a0,s10
        int dgt = num / d;
8000640c:	00c12423          	sw	a2,8(sp)
        num %= d;
80006410:	108040ef          	jal	8000a518 <__umodsi3>
80006414:	00050d13          	mv	s10,a0
        d /= p->base;
80006418:	00a00593          	li	a1,10
8000641c:	000c0513          	mv	a0,s8
80006420:	0b0040ef          	jal	8000a4d0 <__hidden___udivsi3>
        if (n || dgt > 0 || d == 0) {
80006424:	00812603          	lw	a2,8(sp)
        d /= p->base;
80006428:	00050d93          	mv	s11,a0
        if (n || dgt > 0 || d == 0) {
8000642c:	26c05c63          	blez	a2,800066a4 <tfp_format+0xfc4>
80006430:	02810c93          	addi	s9,sp,40
80006434:	000c8793          	mv	a5,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006438:	00900813          	li	a6,9
8000643c:	04c0006f          	j	80006488 <tfp_format+0xda8>
        int dgt = num / d;
80006440:	000d8593          	mv	a1,s11
80006444:	000d0513          	mv	a0,s10
80006448:	00f12623          	sw	a5,12(sp)
8000644c:	084040ef          	jal	8000a4d0 <__hidden___udivsi3>
80006450:	00050613          	mv	a2,a0
        num %= d;
80006454:	000d8593          	mv	a1,s11
80006458:	000d0513          	mv	a0,s10
        int dgt = num / d;
8000645c:	00c12423          	sw	a2,8(sp)
        num %= d;
80006460:	0b8040ef          	jal	8000a518 <__umodsi3>
80006464:	00050d13          	mv	s10,a0
        d /= p->base;
80006468:	00a00593          	li	a1,10
8000646c:	000d8513          	mv	a0,s11
80006470:	060040ef          	jal	8000a4d0 <__hidden___udivsi3>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006474:	00c12783          	lw	a5,12(sp)
80006478:	00812603          	lw	a2,8(sp)
        d /= p->base;
8000647c:	000d8c13          	mv	s8,s11
80006480:	00900813          	li	a6,9
80006484:	00050d93          	mv	s11,a0
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006488:	00c826b3          	slt	a3,a6,a2
8000648c:	40d006b3          	neg	a3,a3
80006490:	0276f693          	andi	a3,a3,39
80006494:	03068693          	addi	a3,a3,48
80006498:	00c686b3          	add	a3,a3,a2
8000649c:	00d78023          	sb	a3,0(a5)
800064a0:	00178793          	addi	a5,a5,1
    while (d != 0) {
800064a4:	f9886ee3          	bltu	a6,s8,80006440 <tfp_format+0xd60>
800064a8:	04c12d83          	lw	s11,76(sp)
800064ac:	e75ff06f          	j	80006320 <tfp_format+0xc40>
800064b0:	00008067          	ret
        int dgt = num / d;
800064b4:	01c040ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
800064b8:	000c8593          	mv	a1,s9
        int dgt = num / d;
800064bc:	00050d93          	mv	s11,a0
        num %= d;
800064c0:	000d0513          	mv	a0,s10
800064c4:	054040ef          	jal	8000a518 <__umodsi3>
800064c8:	00050713          	mv	a4,a0
        d /= p->base;
800064cc:	004cd593          	srli	a1,s9,0x4
        if (n || dgt > 0 || d == 0) {
800064d0:	00f00d13          	li	s10,15
800064d4:	07b05463          	blez	s11,8000653c <tfp_format+0xe5c>
800064d8:	02810c93          	addi	s9,sp,40
800064dc:	000c8d13          	mv	s10,s9
800064e0:	0340006f          	j	80006514 <tfp_format+0xe34>
        int dgt = num / d;
800064e4:	00070513          	mv	a0,a4
800064e8:	00b12423          	sw	a1,8(sp)
800064ec:	00e12623          	sw	a4,12(sp)
800064f0:	7e1030ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
800064f4:	00c12703          	lw	a4,12(sp)
800064f8:	00812583          	lw	a1,8(sp)
        int dgt = num / d;
800064fc:	00050d93          	mv	s11,a0
        num %= d;
80006500:	00070513          	mv	a0,a4
80006504:	014040ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80006508:	00812583          	lw	a1,8(sp)
        num %= d;
8000650c:	00050713          	mv	a4,a0
        d /= p->base;
80006510:	0045d593          	srli	a1,a1,0x4
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006514:	00900793          	li	a5,9
80006518:	01b7a7b3          	slt	a5,a5,s11
8000651c:	40f007b3          	neg	a5,a5
80006520:	0077f793          	andi	a5,a5,7
80006524:	03078793          	addi	a5,a5,48
80006528:	01b787b3          	add	a5,a5,s11
8000652c:	00fd0023          	sb	a5,0(s10)
80006530:	001d0d13          	addi	s10,s10,1
    while (d != 0) {
80006534:	fa0598e3          	bnez	a1,800064e4 <tfp_format+0xe04>
80006538:	de0ff06f          	j	80005b18 <tfp_format+0x438>
        if (n || dgt > 0 || d == 0) {
8000653c:	059d7063          	bgeu	s10,s9,8000657c <tfp_format+0xe9c>
    while (d != 0) {
80006540:	36058c63          	beqz	a1,800068b8 <tfp_format+0x11d8>
        int dgt = num / d;
80006544:	00070513          	mv	a0,a4
80006548:	00b12423          	sw	a1,8(sp)
8000654c:	00e12623          	sw	a4,12(sp)
80006550:	781030ef          	jal	8000a4d0 <__hidden___udivsi3>
        num %= d;
80006554:	00c12703          	lw	a4,12(sp)
80006558:	00812583          	lw	a1,8(sp)
        int dgt = num / d;
8000655c:	00050d93          	mv	s11,a0
        num %= d;
80006560:	00070513          	mv	a0,a4
80006564:	7b5030ef          	jal	8000a518 <__umodsi3>
        d /= p->base;
80006568:	00812583          	lw	a1,8(sp)
        num %= d;
8000656c:	00050713          	mv	a4,a0
        d /= p->base;
80006570:	00058c93          	mv	s9,a1
80006574:	0045d593          	srli	a1,a1,0x4
80006578:	f5dff06f          	j	800064d4 <tfp_format+0xdf4>
8000657c:	02810c93          	addi	s9,sp,40
80006580:	000c8d13          	mv	s10,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006584:	03000793          	li	a5,48
80006588:	fa1ff06f          	j	80006528 <tfp_format+0xe48>
        if (n || dgt > 0 || d == 0) {
8000658c:	02810c93          	addi	s9,sp,40
80006590:	000c8d13          	mv	s10,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006594:	03000793          	li	a5,48
80006598:	d70ff06f          	j	80005b08 <tfp_format+0x428>
        d /= p->base;
8000659c:	000d8c13          	mv	s8,s11
800065a0:	e08ff06f          	j	80005ba8 <tfp_format+0x4c8>
800065a4:	000d8c13          	mv	s8,s11
800065a8:	ba8ff06f          	j	80005950 <tfp_format+0x270>
        num = -num;
800065ac:	00a03733          	snez	a4,a0
800065b0:	40b005b3          	neg	a1,a1
        p->sign = '-';
800065b4:	02d00793          	li	a5,45
        num = -num;
800065b8:	40e585b3          	sub	a1,a1,a4
800065bc:	40a00533          	neg	a0,a0
        p->sign = '-';
800065c0:	00f10e23          	sb	a5,28(sp)
800065c4:	9cdff06f          	j	80005f90 <tfp_format+0x8b0>
    char *bf = p->bf;
800065c8:	02810c93          	addi	s9,sp,40
800065cc:	000c8d13          	mv	s10,s9
800065d0:	f9cff06f          	j	80005d6c <tfp_format+0x68c>
        if (n || dgt > 0 || d == 0) {
800065d4:	d38cfce3          	bgeu	s9,s8,8000630c <tfp_format+0xc2c>
800065d8:	000d8c13          	mv	s8,s11
        int dgt = num / d;
800065dc:	000c0593          	mv	a1,s8
800065e0:	000d0513          	mv	a0,s10
800065e4:	6ed030ef          	jal	8000a4d0 <__hidden___udivsi3>
800065e8:	00050613          	mv	a2,a0
        num %= d;
800065ec:	000c0593          	mv	a1,s8
800065f0:	000d0513          	mv	a0,s10
        int dgt = num / d;
800065f4:	00c12423          	sw	a2,8(sp)
        num %= d;
800065f8:	721030ef          	jal	8000a518 <__umodsi3>
800065fc:	00050d13          	mv	s10,a0
        d /= p->base;
80006600:	00a00593          	li	a1,10
80006604:	000c0513          	mv	a0,s8
80006608:	6c9030ef          	jal	8000a4d0 <__hidden___udivsi3>
        if (n || dgt > 0 || d == 0) {
8000660c:	00812603          	lw	a2,8(sp)
        d /= p->base;
80006610:	00050d93          	mv	s11,a0
        if (n || dgt > 0 || d == 0) {
80006614:	fcc050e3          	blez	a2,800065d4 <tfp_format+0xef4>
80006618:	02810c93          	addi	s9,sp,40
8000661c:	000c8793          	mv	a5,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006620:	00900813          	li	a6,9
80006624:	04c0006f          	j	80006670 <tfp_format+0xf90>
        int dgt = num / d;
80006628:	000d8593          	mv	a1,s11
8000662c:	000d0513          	mv	a0,s10
80006630:	00f12623          	sw	a5,12(sp)
80006634:	69d030ef          	jal	8000a4d0 <__hidden___udivsi3>
80006638:	00050613          	mv	a2,a0
        num %= d;
8000663c:	000d8593          	mv	a1,s11
80006640:	000d0513          	mv	a0,s10
        int dgt = num / d;
80006644:	00c12423          	sw	a2,8(sp)
        num %= d;
80006648:	6d1030ef          	jal	8000a518 <__umodsi3>
8000664c:	00050d13          	mv	s10,a0
        d /= p->base;
80006650:	00a00593          	li	a1,10
80006654:	000d8513          	mv	a0,s11
80006658:	679030ef          	jal	8000a4d0 <__hidden___udivsi3>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
8000665c:	00c12783          	lw	a5,12(sp)
80006660:	00812603          	lw	a2,8(sp)
        d /= p->base;
80006664:	000d8c13          	mv	s8,s11
80006668:	00900813          	li	a6,9
8000666c:	00050d93          	mv	s11,a0
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006670:	00c826b3          	slt	a3,a6,a2
80006674:	40d006b3          	neg	a3,a3
80006678:	0076f693          	andi	a3,a3,7
8000667c:	03068693          	addi	a3,a3,48
80006680:	00c686b3          	add	a3,a3,a2
80006684:	00d78023          	sb	a3,0(a5)
80006688:	00178793          	addi	a5,a5,1
    while (d != 0) {
8000668c:	f9886ee3          	bltu	a6,s8,80006628 <tfp_format+0xf48>
80006690:	04c12d83          	lw	s11,76(sp)
80006694:	c8dff06f          	j	80006320 <tfp_format+0xc40>
    char *bf = p->bf;
80006698:	02810c93          	addi	s9,sp,40
8000669c:	000c8793          	mv	a5,s9
800066a0:	c81ff06f          	j	80006320 <tfp_format+0xc40>
        if (n || dgt > 0 || d == 0) {
800066a4:	c78cf4e3          	bgeu	s9,s8,8000630c <tfp_format+0xc2c>
        d /= p->base;
800066a8:	000d8c13          	mv	s8,s11
800066ac:	d49ff06f          	j	800063f4 <tfp_format+0xd14>
    if (num < 0) {
800066b0:	000cd863          	bgez	s9,800066c0 <tfp_format+0xfe0>
        p->sign = '-';
800066b4:	02d00793          	li	a5,45
        num = -num;
800066b8:	41900cb3          	neg	s9,s9
        p->sign = '-';
800066bc:	00f10e23          	sb	a5,28(sp)
    while (num / d >= p->base)
800066c0:	00900d93          	li	s11,9
    uli2a(num, p);
800066c4:	000c8d13          	mv	s10,s9
    unsigned long int d = 1;
800066c8:	00100c13          	li	s8,1
    while (num / d >= p->base)
800066cc:	039dd263          	bge	s11,s9,800066f0 <tfp_format+0x1010>
        d *= p->base;
800066d0:	002c1713          	slli	a4,s8,0x2
800066d4:	018707b3          	add	a5,a4,s8
800066d8:	00179c13          	slli	s8,a5,0x1
    while (num / d >= p->base)
800066dc:	000c0593          	mv	a1,s8
800066e0:	000c8513          	mv	a0,s9
800066e4:	5ed030ef          	jal	8000a4d0 <__hidden___udivsi3>
800066e8:	feade4e3          	bltu	s11,a0,800066d0 <tfp_format+0xff0>
    while (d != 0) {
800066ec:	1e0c0e63          	beqz	s8,800068e8 <tfp_format+0x1208>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800066f0:	01414703          	lbu	a4,20(sp)
        if (n || dgt > 0 || d == 0) {
800066f4:	00900c93          	li	s9,9
800066f8:	00477713          	andi	a4,a4,4
800066fc:	0c071663          	bnez	a4,800067c8 <tfp_format+0x10e8>
        int dgt = num / d;
80006700:	000c0593          	mv	a1,s8
80006704:	000d0513          	mv	a0,s10
80006708:	5c9030ef          	jal	8000a4d0 <__hidden___udivsi3>
8000670c:	00050613          	mv	a2,a0
        num %= d;
80006710:	000c0593          	mv	a1,s8
80006714:	000d0513          	mv	a0,s10
        int dgt = num / d;
80006718:	00c12423          	sw	a2,8(sp)
        num %= d;
8000671c:	5fd030ef          	jal	8000a518 <__umodsi3>
80006720:	00050d13          	mv	s10,a0
        d /= p->base;
80006724:	00a00593          	li	a1,10
80006728:	000c0513          	mv	a0,s8
8000672c:	5a5030ef          	jal	8000a4d0 <__hidden___udivsi3>
        if (n || dgt > 0 || d == 0) {
80006730:	00812603          	lw	a2,8(sp)
        d /= p->base;
80006734:	00050d93          	mv	s11,a0
        if (n || dgt > 0 || d == 0) {
80006738:	14c05863          	blez	a2,80006888 <tfp_format+0x11a8>
8000673c:	02810c93          	addi	s9,sp,40
80006740:	000c8713          	mv	a4,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006744:	00900813          	li	a6,9
80006748:	0500006f          	j	80006798 <tfp_format+0x10b8>
        int dgt = num / d;
8000674c:	000d8593          	mv	a1,s11
80006750:	000d0513          	mv	a0,s10
80006754:	00f12623          	sw	a5,12(sp)
80006758:	579030ef          	jal	8000a4d0 <__hidden___udivsi3>
8000675c:	00050613          	mv	a2,a0
        num %= d;
80006760:	000d8593          	mv	a1,s11
80006764:	000d0513          	mv	a0,s10
        int dgt = num / d;
80006768:	00c12423          	sw	a2,8(sp)
        num %= d;
8000676c:	5ad030ef          	jal	8000a518 <__umodsi3>
80006770:	00050d13          	mv	s10,a0
        d /= p->base;
80006774:	00a00593          	li	a1,10
80006778:	000d8513          	mv	a0,s11
8000677c:	555030ef          	jal	8000a4d0 <__hidden___udivsi3>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006780:	00c12783          	lw	a5,12(sp)
80006784:	00812603          	lw	a2,8(sp)
        d /= p->base;
80006788:	000d8c13          	mv	s8,s11
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
8000678c:	00078713          	mv	a4,a5
        d /= p->base;
80006790:	00050d93          	mv	s11,a0
80006794:	00900813          	li	a6,9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006798:	00c826b3          	slt	a3,a6,a2
8000679c:	40d006b3          	neg	a3,a3
800067a0:	0276f693          	andi	a3,a3,39
800067a4:	03068693          	addi	a3,a3,48
800067a8:	00c686b3          	add	a3,a3,a2
800067ac:	00d70023          	sb	a3,0(a4)
800067b0:	00170793          	addi	a5,a4,1
    while (d != 0) {
800067b4:	f9886ce3          	bltu	a6,s8,8000674c <tfp_format+0x106c>
    *bf = 0;
800067b8:	00078023          	sb	zero,0(a5)
}
800067bc:	a4cff06f          	j	80005a08 <tfp_format+0x328>
        if (n || dgt > 0 || d == 0) {
800067c0:	0d8cfa63          	bgeu	s9,s8,80006894 <tfp_format+0x11b4>
800067c4:	000d8c13          	mv	s8,s11
        int dgt = num / d;
800067c8:	000c0593          	mv	a1,s8
800067cc:	000d0513          	mv	a0,s10
800067d0:	501030ef          	jal	8000a4d0 <__hidden___udivsi3>
800067d4:	00050613          	mv	a2,a0
        num %= d;
800067d8:	000c0593          	mv	a1,s8
800067dc:	000d0513          	mv	a0,s10
        int dgt = num / d;
800067e0:	00c12423          	sw	a2,8(sp)
        num %= d;
800067e4:	535030ef          	jal	8000a518 <__umodsi3>
800067e8:	00050d13          	mv	s10,a0
        d /= p->base;
800067ec:	00a00593          	li	a1,10
800067f0:	000c0513          	mv	a0,s8
800067f4:	4dd030ef          	jal	8000a4d0 <__hidden___udivsi3>
        if (n || dgt > 0 || d == 0) {
800067f8:	00812603          	lw	a2,8(sp)
        d /= p->base;
800067fc:	00050d93          	mv	s11,a0
        if (n || dgt > 0 || d == 0) {
80006800:	fcc050e3          	blez	a2,800067c0 <tfp_format+0x10e0>
80006804:	02810c93          	addi	s9,sp,40
80006808:	000c8713          	mv	a4,s9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
8000680c:	00900813          	li	a6,9
80006810:	0500006f          	j	80006860 <tfp_format+0x1180>
        int dgt = num / d;
80006814:	000d8593          	mv	a1,s11
80006818:	000d0513          	mv	a0,s10
8000681c:	00f12623          	sw	a5,12(sp)
80006820:	4b1030ef          	jal	8000a4d0 <__hidden___udivsi3>
80006824:	00050613          	mv	a2,a0
        num %= d;
80006828:	000d8593          	mv	a1,s11
8000682c:	000d0513          	mv	a0,s10
        int dgt = num / d;
80006830:	00c12423          	sw	a2,8(sp)
        num %= d;
80006834:	4e5030ef          	jal	8000a518 <__umodsi3>
80006838:	00050d13          	mv	s10,a0
        d /= p->base;
8000683c:	00a00593          	li	a1,10
80006840:	000d8513          	mv	a0,s11
80006844:	48d030ef          	jal	8000a4d0 <__hidden___udivsi3>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006848:	00c12783          	lw	a5,12(sp)
8000684c:	00812603          	lw	a2,8(sp)
        d /= p->base;
80006850:	000d8c13          	mv	s8,s11
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006854:	00078713          	mv	a4,a5
        d /= p->base;
80006858:	00050d93          	mv	s11,a0
8000685c:	00900813          	li	a6,9
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006860:	00c826b3          	slt	a3,a6,a2
80006864:	40d006b3          	neg	a3,a3
80006868:	0076f693          	andi	a3,a3,7
8000686c:	03068693          	addi	a3,a3,48
80006870:	00c686b3          	add	a3,a3,a2
80006874:	00d70023          	sb	a3,0(a4)
80006878:	00170793          	addi	a5,a4,1
    while (d != 0) {
8000687c:	f9886ce3          	bltu	a6,s8,80006814 <tfp_format+0x1134>
    *bf = 0;
80006880:	00078023          	sb	zero,0(a5)
80006884:	984ff06f          	j	80005a08 <tfp_format+0x328>
        if (n || dgt > 0 || d == 0) {
80006888:	018cf663          	bgeu	s9,s8,80006894 <tfp_format+0x11b4>
        d /= p->base;
8000688c:	000d8c13          	mv	s8,s11
80006890:	e71ff06f          	j	80006700 <tfp_format+0x1020>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006894:	03060613          	addi	a2,a2,48
80006898:	02c10423          	sb	a2,40(sp)
8000689c:	02910793          	addi	a5,sp,41
800068a0:	02810c93          	addi	s9,sp,40
    *bf = 0;
800068a4:	00078023          	sb	zero,0(a5)
800068a8:	960ff06f          	j	80005a08 <tfp_format+0x328>
    char *bf = p->bf;
800068ac:	02810c93          	addi	s9,sp,40
800068b0:	000c8d13          	mv	s10,s9
800068b4:	db8ff06f          	j	80005e6c <tfp_format+0x78c>
800068b8:	02810c93          	addi	s9,sp,40
800068bc:	000c8d13          	mv	s10,s9
800068c0:	a58ff06f          	j	80005b18 <tfp_format+0x438>
800068c4:	05b12623          	sw	s11,76(sp)
    unsigned long int d = 1;
800068c8:	00078c13          	mv	s8,a5
800068cc:	accff06f          	j	80005b98 <tfp_format+0x4b8>
    char *bf = p->bf;
800068d0:	02810c93          	addi	s9,sp,40
800068d4:	000c8713          	mv	a4,s9
800068d8:	92cff06f          	j	80005a04 <tfp_format+0x324>
800068dc:	05b12623          	sw	s11,76(sp)
    unsigned long int d = 1;
800068e0:	00070c13          	mv	s8,a4
800068e4:	b01ff06f          	j	800063e4 <tfp_format+0xd04>
    char *bf = p->bf;
800068e8:	02810c93          	addi	s9,sp,40
800068ec:	000c8793          	mv	a5,s9
    *bf = 0;
800068f0:	00078023          	sb	zero,0(a5)
800068f4:	914ff06f          	j	80005a08 <tfp_format+0x328>

800068f8 <init_printf>:
static void *stdout_putp;

void init_printf(void *putp, putcf putf)
{
    stdout_putf = putf;
    stdout_putp = putp;
800068f8:	00005797          	auipc	a5,0x5
800068fc:	9ea7a023          	sw	a0,-1568(a5) # 8000b2d8 <_ZL11stdout_putp>
    stdout_putf = putf;
80006900:	00005797          	auipc	a5,0x5
80006904:	9cb7ae23          	sw	a1,-1572(a5) # 8000b2dc <_ZL11stdout_putf>
}
80006908:	00008067          	ret

8000690c <tfp_printf>:

void tfp_printf(char *fmt, ...)
{
8000690c:	fc010113          	addi	sp,sp,-64
80006910:	00050e13          	mv	t3,a0
80006914:	02b12223          	sw	a1,36(sp)
    va_list va;
    va_start(va, fmt);
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80006918:	00005517          	auipc	a0,0x5
8000691c:	9c052503          	lw	a0,-1600(a0) # 8000b2d8 <_ZL11stdout_putp>
80006920:	00005597          	auipc	a1,0x5
80006924:	9bc5a583          	lw	a1,-1604(a1) # 8000b2dc <_ZL11stdout_putf>
    va_start(va, fmt);
80006928:	02410313          	addi	t1,sp,36
{
8000692c:	02c12423          	sw	a2,40(sp)
80006930:	02d12623          	sw	a3,44(sp)
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80006934:	000e0613          	mv	a2,t3
80006938:	00030693          	mv	a3,t1
{
8000693c:	00112e23          	sw	ra,28(sp)
80006940:	02e12823          	sw	a4,48(sp)
80006944:	02f12a23          	sw	a5,52(sp)
80006948:	03012c23          	sw	a6,56(sp)
8000694c:	03112e23          	sw	a7,60(sp)
    va_start(va, fmt);
80006950:	00612623          	sw	t1,12(sp)
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80006954:	d8dfe0ef          	jal	800056e0 <tfp_format>
    va_end(va);
}
80006958:	01c12083          	lw	ra,28(sp)
8000695c:	04010113          	addi	sp,sp,64
80006960:	00008067          	ret

80006964 <cosf>:
80006964:	fe010113          	addi	sp,sp,-32
80006968:	00812c23          	sw	s0,24(sp)
8000696c:	80000437          	lui	s0,0x80000
80006970:	fff40793          	addi	a5,s0,-1 # 7fffffff <_stack_size+0x7fff7fff>
80006974:	3f491737          	lui	a4,0x3f491
80006978:	00112e23          	sw	ra,28(sp)
8000697c:	00f577b3          	and	a5,a0,a5
80006980:	fd870713          	addi	a4,a4,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
80006984:	04f77a63          	bgeu	a4,a5,800069d8 <cosf+0x74>
80006988:	7f800737          	lui	a4,0x7f800
8000698c:	00e7ee63          	bltu	a5,a4,800069a8 <cosf+0x44>
80006990:	00050593          	mv	a1,a0
80006994:	4c4030ef          	jal	80009e58 <__subsf3>
80006998:	01c12083          	lw	ra,28(sp)
8000699c:	01812403          	lw	s0,24(sp)
800069a0:	02010113          	addi	sp,sp,32
800069a4:	00008067          	ret
800069a8:	00810593          	addi	a1,sp,8
800069ac:	568000ef          	jal	80006f14 <__ieee754_rem_pio2f>
800069b0:	00357793          	andi	a5,a0,3
800069b4:	00100613          	li	a2,1
800069b8:	00812503          	lw	a0,8(sp)
800069bc:	00c12583          	lw	a1,12(sp)
800069c0:	02c78c63          	beq	a5,a2,800069f8 <cosf+0x94>
800069c4:	00200713          	li	a4,2
800069c8:	02e78263          	beq	a5,a4,800069ec <cosf+0x88>
800069cc:	02079e63          	bnez	a5,80006a08 <cosf+0xa4>
800069d0:	0ec000ef          	jal	80006abc <__kernel_cosf>
800069d4:	fc5ff06f          	j	80006998 <cosf+0x34>
800069d8:	01812403          	lw	s0,24(sp)
800069dc:	01c12083          	lw	ra,28(sp)
800069e0:	00000593          	li	a1,0
800069e4:	02010113          	addi	sp,sp,32
800069e8:	0d40006f          	j	80006abc <__kernel_cosf>
800069ec:	0d0000ef          	jal	80006abc <__kernel_cosf>
800069f0:	00a44533          	xor	a0,s0,a0
800069f4:	fa5ff06f          	j	80006998 <cosf+0x34>
800069f8:	00078613          	mv	a2,a5
800069fc:	370000ef          	jal	80006d6c <__kernel_sinf>
80006a00:	00a44533          	xor	a0,s0,a0
80006a04:	f95ff06f          	j	80006998 <cosf+0x34>
80006a08:	364000ef          	jal	80006d6c <__kernel_sinf>
80006a0c:	f8dff06f          	j	80006998 <cosf+0x34>

80006a10 <sinf>:
80006a10:	fe010113          	addi	sp,sp,-32
80006a14:	00812c23          	sw	s0,24(sp)
80006a18:	80000437          	lui	s0,0x80000
80006a1c:	fff40793          	addi	a5,s0,-1 # 7fffffff <_stack_size+0x7fff7fff>
80006a20:	3f491737          	lui	a4,0x3f491
80006a24:	00112e23          	sw	ra,28(sp)
80006a28:	00f577b3          	and	a5,a0,a5
80006a2c:	fd870713          	addi	a4,a4,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
80006a30:	04f77a63          	bgeu	a4,a5,80006a84 <sinf+0x74>
80006a34:	7f800737          	lui	a4,0x7f800
80006a38:	00e7ee63          	bltu	a5,a4,80006a54 <sinf+0x44>
80006a3c:	00050593          	mv	a1,a0
80006a40:	418030ef          	jal	80009e58 <__subsf3>
80006a44:	01c12083          	lw	ra,28(sp)
80006a48:	01812403          	lw	s0,24(sp)
80006a4c:	02010113          	addi	sp,sp,32
80006a50:	00008067          	ret
80006a54:	00810593          	addi	a1,sp,8
80006a58:	4bc000ef          	jal	80006f14 <__ieee754_rem_pio2f>
80006a5c:	00357793          	andi	a5,a0,3
80006a60:	00100613          	li	a2,1
80006a64:	00812503          	lw	a0,8(sp)
80006a68:	00c12583          	lw	a1,12(sp)
80006a6c:	02c78e63          	beq	a5,a2,80006aa8 <sinf+0x98>
80006a70:	00200713          	li	a4,2
80006a74:	02e78463          	beq	a5,a4,80006a9c <sinf+0x8c>
80006a78:	02079c63          	bnez	a5,80006ab0 <sinf+0xa0>
80006a7c:	2f0000ef          	jal	80006d6c <__kernel_sinf>
80006a80:	fc5ff06f          	j	80006a44 <sinf+0x34>
80006a84:	01812403          	lw	s0,24(sp)
80006a88:	01c12083          	lw	ra,28(sp)
80006a8c:	00000613          	li	a2,0
80006a90:	00000593          	li	a1,0
80006a94:	02010113          	addi	sp,sp,32
80006a98:	2d40006f          	j	80006d6c <__kernel_sinf>
80006a9c:	2d0000ef          	jal	80006d6c <__kernel_sinf>
80006aa0:	00a44533          	xor	a0,s0,a0
80006aa4:	fa1ff06f          	j	80006a44 <sinf+0x34>
80006aa8:	014000ef          	jal	80006abc <__kernel_cosf>
80006aac:	f99ff06f          	j	80006a44 <sinf+0x34>
80006ab0:	00c000ef          	jal	80006abc <__kernel_cosf>
80006ab4:	00a44533          	xor	a0,s0,a0
80006ab8:	f8dff06f          	j	80006a44 <sinf+0x34>

80006abc <__kernel_cosf>:
80006abc:	fe010113          	addi	sp,sp,-32
80006ac0:	00912a23          	sw	s1,20(sp)
80006ac4:	00151493          	slli	s1,a0,0x1
80006ac8:	01212823          	sw	s2,16(sp)
80006acc:	01412423          	sw	s4,8(sp)
80006ad0:	00112e23          	sw	ra,28(sp)
80006ad4:	00812c23          	sw	s0,24(sp)
80006ad8:	01312623          	sw	s3,12(sp)
80006adc:	0014d493          	srli	s1,s1,0x1
80006ae0:	320007b7          	lui	a5,0x32000
80006ae4:	00050913          	mv	s2,a0
80006ae8:	00058a13          	mv	s4,a1
80006aec:	10f4f663          	bgeu	s1,a5,80006bf8 <__kernel_cosf+0x13c>
80006af0:	7a8030ef          	jal	8000a298 <__fixsfsi>
80006af4:	24050863          	beqz	a0,80006d44 <__kernel_cosf+0x288>
80006af8:	00090593          	mv	a1,s2
80006afc:	00090513          	mv	a0,s2
80006b00:	00c030ef          	jal	80009b0c <__mulsf3>
80006b04:	8000b7b7          	lui	a5,0x8000b
80006b08:	e407a583          	lw	a1,-448(a5) # 8000ae40 <_etext+0x2c>
80006b0c:	00050413          	mv	s0,a0
80006b10:	7fd020ef          	jal	80009b0c <__mulsf3>
80006b14:	8000b7b7          	lui	a5,0x8000b
80006b18:	e447a583          	lw	a1,-444(a5) # 8000ae44 <_etext+0x30>
80006b1c:	744020ef          	jal	80009260 <__addsf3>
80006b20:	00040593          	mv	a1,s0
80006b24:	7e9020ef          	jal	80009b0c <__mulsf3>
80006b28:	8000b7b7          	lui	a5,0x8000b
80006b2c:	e487a583          	lw	a1,-440(a5) # 8000ae48 <_etext+0x34>
80006b30:	328030ef          	jal	80009e58 <__subsf3>
80006b34:	00040593          	mv	a1,s0
80006b38:	7d5020ef          	jal	80009b0c <__mulsf3>
80006b3c:	8000b7b7          	lui	a5,0x8000b
80006b40:	e4c7a583          	lw	a1,-436(a5) # 8000ae4c <_etext+0x38>
80006b44:	71c020ef          	jal	80009260 <__addsf3>
80006b48:	00040593          	mv	a1,s0
80006b4c:	7c1020ef          	jal	80009b0c <__mulsf3>
80006b50:	8000b7b7          	lui	a5,0x8000b
80006b54:	e507a583          	lw	a1,-432(a5) # 8000ae50 <_etext+0x3c>
80006b58:	300030ef          	jal	80009e58 <__subsf3>
80006b5c:	00040593          	mv	a1,s0
80006b60:	7ad020ef          	jal	80009b0c <__mulsf3>
80006b64:	8000b7b7          	lui	a5,0x8000b
80006b68:	e547a583          	lw	a1,-428(a5) # 8000ae54 <_etext+0x40>
80006b6c:	6f4020ef          	jal	80009260 <__addsf3>
80006b70:	00040593          	mv	a1,s0
80006b74:	799020ef          	jal	80009b0c <__mulsf3>
80006b78:	00050993          	mv	s3,a0
80006b7c:	8000b7b7          	lui	a5,0x8000b
80006b80:	e347a583          	lw	a1,-460(a5) # 8000ae34 <_etext+0x20>
80006b84:	00040513          	mv	a0,s0
80006b88:	785020ef          	jal	80009b0c <__mulsf3>
80006b8c:	00050793          	mv	a5,a0
80006b90:	00098593          	mv	a1,s3
80006b94:	00040513          	mv	a0,s0
80006b98:	00078413          	mv	s0,a5
80006b9c:	771020ef          	jal	80009b0c <__mulsf3>
80006ba0:	00050493          	mv	s1,a0
80006ba4:	000a0593          	mv	a1,s4
80006ba8:	00090513          	mv	a0,s2
80006bac:	761020ef          	jal	80009b0c <__mulsf3>
80006bb0:	00050593          	mv	a1,a0
80006bb4:	00048513          	mv	a0,s1
80006bb8:	2a0030ef          	jal	80009e58 <__subsf3>
80006bbc:	00050593          	mv	a1,a0
80006bc0:	00040513          	mv	a0,s0
80006bc4:	294030ef          	jal	80009e58 <__subsf3>
80006bc8:	8000b7b7          	lui	a5,0x8000b
80006bcc:	00050593          	mv	a1,a0
80006bd0:	e147a503          	lw	a0,-492(a5) # 8000ae14 <_etext>
80006bd4:	284030ef          	jal	80009e58 <__subsf3>
80006bd8:	01c12083          	lw	ra,28(sp)
80006bdc:	01812403          	lw	s0,24(sp)
80006be0:	01412483          	lw	s1,20(sp)
80006be4:	01012903          	lw	s2,16(sp)
80006be8:	00c12983          	lw	s3,12(sp)
80006bec:	00812a03          	lw	s4,8(sp)
80006bf0:	02010113          	addi	sp,sp,32
80006bf4:	00008067          	ret
80006bf8:	00050593          	mv	a1,a0
80006bfc:	711020ef          	jal	80009b0c <__mulsf3>
80006c00:	8000b7b7          	lui	a5,0x8000b
80006c04:	e407a583          	lw	a1,-448(a5) # 8000ae40 <_etext+0x2c>
80006c08:	00050413          	mv	s0,a0
80006c0c:	701020ef          	jal	80009b0c <__mulsf3>
80006c10:	8000b7b7          	lui	a5,0x8000b
80006c14:	e447a583          	lw	a1,-444(a5) # 8000ae44 <_etext+0x30>
80006c18:	648020ef          	jal	80009260 <__addsf3>
80006c1c:	00040593          	mv	a1,s0
80006c20:	6ed020ef          	jal	80009b0c <__mulsf3>
80006c24:	8000b7b7          	lui	a5,0x8000b
80006c28:	e487a583          	lw	a1,-440(a5) # 8000ae48 <_etext+0x34>
80006c2c:	22c030ef          	jal	80009e58 <__subsf3>
80006c30:	00040593          	mv	a1,s0
80006c34:	6d9020ef          	jal	80009b0c <__mulsf3>
80006c38:	8000b7b7          	lui	a5,0x8000b
80006c3c:	e4c7a583          	lw	a1,-436(a5) # 8000ae4c <_etext+0x38>
80006c40:	620020ef          	jal	80009260 <__addsf3>
80006c44:	00040593          	mv	a1,s0
80006c48:	6c5020ef          	jal	80009b0c <__mulsf3>
80006c4c:	8000b7b7          	lui	a5,0x8000b
80006c50:	e507a583          	lw	a1,-432(a5) # 8000ae50 <_etext+0x3c>
80006c54:	204030ef          	jal	80009e58 <__subsf3>
80006c58:	00040593          	mv	a1,s0
80006c5c:	6b1020ef          	jal	80009b0c <__mulsf3>
80006c60:	8000b7b7          	lui	a5,0x8000b
80006c64:	e547a583          	lw	a1,-428(a5) # 8000ae54 <_etext+0x40>
80006c68:	5f8020ef          	jal	80009260 <__addsf3>
80006c6c:	00040593          	mv	a1,s0
80006c70:	69d020ef          	jal	80009b0c <__mulsf3>
80006c74:	3e99a7b7          	lui	a5,0x3e99a
80006c78:	99978793          	addi	a5,a5,-1639 # 3e999999 <_stack_size+0x3e991999>
80006c7c:	00050993          	mv	s3,a0
80006c80:	ee97fee3          	bgeu	a5,s1,80006b7c <__kernel_cosf+0xc0>
80006c84:	01512223          	sw	s5,4(sp)
80006c88:	3f4807b7          	lui	a5,0x3f480
80006c8c:	0a97e263          	bltu	a5,s1,80006d30 <__kernel_cosf+0x274>
80006c90:	8000b737          	lui	a4,0x8000b
80006c94:	ff0007b7          	lui	a5,0xff000
80006c98:	e1472503          	lw	a0,-492(a4) # 8000ae14 <_etext>
80006c9c:	00f484b3          	add	s1,s1,a5
80006ca0:	00048593          	mv	a1,s1
80006ca4:	1b4030ef          	jal	80009e58 <__subsf3>
80006ca8:	00050a93          	mv	s5,a0
80006cac:	8000b7b7          	lui	a5,0x8000b
80006cb0:	e347a583          	lw	a1,-460(a5) # 8000ae34 <_etext+0x20>
80006cb4:	00040513          	mv	a0,s0
80006cb8:	655020ef          	jal	80009b0c <__mulsf3>
80006cbc:	00048593          	mv	a1,s1
80006cc0:	198030ef          	jal	80009e58 <__subsf3>
80006cc4:	00050793          	mv	a5,a0
80006cc8:	00098593          	mv	a1,s3
80006ccc:	00040513          	mv	a0,s0
80006cd0:	00078413          	mv	s0,a5
80006cd4:	639020ef          	jal	80009b0c <__mulsf3>
80006cd8:	00050493          	mv	s1,a0
80006cdc:	000a0593          	mv	a1,s4
80006ce0:	00090513          	mv	a0,s2
80006ce4:	629020ef          	jal	80009b0c <__mulsf3>
80006ce8:	00050593          	mv	a1,a0
80006cec:	00048513          	mv	a0,s1
80006cf0:	168030ef          	jal	80009e58 <__subsf3>
80006cf4:	00050593          	mv	a1,a0
80006cf8:	00040513          	mv	a0,s0
80006cfc:	15c030ef          	jal	80009e58 <__subsf3>
80006d00:	00050593          	mv	a1,a0
80006d04:	000a8513          	mv	a0,s5
80006d08:	150030ef          	jal	80009e58 <__subsf3>
80006d0c:	01c12083          	lw	ra,28(sp)
80006d10:	01812403          	lw	s0,24(sp)
80006d14:	00412a83          	lw	s5,4(sp)
80006d18:	01412483          	lw	s1,20(sp)
80006d1c:	01012903          	lw	s2,16(sp)
80006d20:	00c12983          	lw	s3,12(sp)
80006d24:	00812a03          	lw	s4,8(sp)
80006d28:	02010113          	addi	sp,sp,32
80006d2c:	00008067          	ret
80006d30:	8000b737          	lui	a4,0x8000b
80006d34:	8000b7b7          	lui	a5,0x8000b
80006d38:	e3872a83          	lw	s5,-456(a4) # 8000ae38 <_etext+0x24>
80006d3c:	e3c7a483          	lw	s1,-452(a5) # 8000ae3c <_etext+0x28>
80006d40:	f6dff06f          	j	80006cac <__kernel_cosf+0x1f0>
80006d44:	01c12083          	lw	ra,28(sp)
80006d48:	01812403          	lw	s0,24(sp)
80006d4c:	8000b7b7          	lui	a5,0x8000b
80006d50:	e147a503          	lw	a0,-492(a5) # 8000ae14 <_etext>
80006d54:	01412483          	lw	s1,20(sp)
80006d58:	01012903          	lw	s2,16(sp)
80006d5c:	00c12983          	lw	s3,12(sp)
80006d60:	00812a03          	lw	s4,8(sp)
80006d64:	02010113          	addi	sp,sp,32
80006d68:	00008067          	ret

80006d6c <__kernel_sinf>:
80006d6c:	fe010113          	addi	sp,sp,-32
80006d70:	00151793          	slli	a5,a0,0x1
80006d74:	00812c23          	sw	s0,24(sp)
80006d78:	01412423          	sw	s4,8(sp)
80006d7c:	01512223          	sw	s5,4(sp)
80006d80:	00112e23          	sw	ra,28(sp)
80006d84:	0017d793          	srli	a5,a5,0x1
80006d88:	32000737          	lui	a4,0x32000
80006d8c:	00050413          	mv	s0,a0
80006d90:	00058a93          	mv	s5,a1
80006d94:	00060a13          	mv	s4,a2
80006d98:	00e7fa63          	bgeu	a5,a4,80006dac <__kernel_sinf+0x40>
80006d9c:	4fc030ef          	jal	8000a298 <__fixsfsi>
80006da0:	00050793          	mv	a5,a0
80006da4:	00040513          	mv	a0,s0
80006da8:	0c078263          	beqz	a5,80006e6c <__kernel_sinf+0x100>
80006dac:	00040593          	mv	a1,s0
80006db0:	00040513          	mv	a0,s0
80006db4:	00912a23          	sw	s1,20(sp)
80006db8:	01212823          	sw	s2,16(sp)
80006dbc:	01312623          	sw	s3,12(sp)
80006dc0:	54d020ef          	jal	80009b0c <__mulsf3>
80006dc4:	00050493          	mv	s1,a0
80006dc8:	00050593          	mv	a1,a0
80006dcc:	00040513          	mv	a0,s0
80006dd0:	53d020ef          	jal	80009b0c <__mulsf3>
80006dd4:	8000b7b7          	lui	a5,0x8000b
80006dd8:	e587a583          	lw	a1,-424(a5) # 8000ae58 <_etext+0x44>
80006ddc:	00050913          	mv	s2,a0
80006de0:	00048513          	mv	a0,s1
80006de4:	529020ef          	jal	80009b0c <__mulsf3>
80006de8:	8000b7b7          	lui	a5,0x8000b
80006dec:	e5c7a583          	lw	a1,-420(a5) # 8000ae5c <_etext+0x48>
80006df0:	068030ef          	jal	80009e58 <__subsf3>
80006df4:	00048593          	mv	a1,s1
80006df8:	515020ef          	jal	80009b0c <__mulsf3>
80006dfc:	8000b7b7          	lui	a5,0x8000b
80006e00:	e607a583          	lw	a1,-416(a5) # 8000ae60 <_etext+0x4c>
80006e04:	45c020ef          	jal	80009260 <__addsf3>
80006e08:	00048593          	mv	a1,s1
80006e0c:	501020ef          	jal	80009b0c <__mulsf3>
80006e10:	8000b7b7          	lui	a5,0x8000b
80006e14:	e647a583          	lw	a1,-412(a5) # 8000ae64 <_etext+0x50>
80006e18:	040030ef          	jal	80009e58 <__subsf3>
80006e1c:	00048593          	mv	a1,s1
80006e20:	4ed020ef          	jal	80009b0c <__mulsf3>
80006e24:	8000b7b7          	lui	a5,0x8000b
80006e28:	e687a583          	lw	a1,-408(a5) # 8000ae68 <_etext+0x54>
80006e2c:	434020ef          	jal	80009260 <__addsf3>
80006e30:	00050993          	mv	s3,a0
80006e34:	040a1863          	bnez	s4,80006e84 <__kernel_sinf+0x118>
80006e38:	00050593          	mv	a1,a0
80006e3c:	00048513          	mv	a0,s1
80006e40:	4cd020ef          	jal	80009b0c <__mulsf3>
80006e44:	8000b7b7          	lui	a5,0x8000b
80006e48:	e6c7a583          	lw	a1,-404(a5) # 8000ae6c <_etext+0x58>
80006e4c:	00c030ef          	jal	80009e58 <__subsf3>
80006e50:	00090593          	mv	a1,s2
80006e54:	4b9020ef          	jal	80009b0c <__mulsf3>
80006e58:	00040593          	mv	a1,s0
80006e5c:	404020ef          	jal	80009260 <__addsf3>
80006e60:	01412483          	lw	s1,20(sp)
80006e64:	01012903          	lw	s2,16(sp)
80006e68:	00c12983          	lw	s3,12(sp)
80006e6c:	01c12083          	lw	ra,28(sp)
80006e70:	01812403          	lw	s0,24(sp)
80006e74:	00812a03          	lw	s4,8(sp)
80006e78:	00412a83          	lw	s5,4(sp)
80006e7c:	02010113          	addi	sp,sp,32
80006e80:	00008067          	ret
80006e84:	8000b7b7          	lui	a5,0x8000b
80006e88:	e347a583          	lw	a1,-460(a5) # 8000ae34 <_etext+0x20>
80006e8c:	000a8513          	mv	a0,s5
80006e90:	47d020ef          	jal	80009b0c <__mulsf3>
80006e94:	00050793          	mv	a5,a0
80006e98:	00098593          	mv	a1,s3
80006e9c:	00090513          	mv	a0,s2
80006ea0:	00078993          	mv	s3,a5
80006ea4:	469020ef          	jal	80009b0c <__mulsf3>
80006ea8:	00050593          	mv	a1,a0
80006eac:	00098513          	mv	a0,s3
80006eb0:	7a9020ef          	jal	80009e58 <__subsf3>
80006eb4:	00048593          	mv	a1,s1
80006eb8:	455020ef          	jal	80009b0c <__mulsf3>
80006ebc:	000a8593          	mv	a1,s5
80006ec0:	799020ef          	jal	80009e58 <__subsf3>
80006ec4:	8000b7b7          	lui	a5,0x8000b
80006ec8:	e6c7a583          	lw	a1,-404(a5) # 8000ae6c <_etext+0x58>
80006ecc:	00050493          	mv	s1,a0
80006ed0:	00090513          	mv	a0,s2
80006ed4:	439020ef          	jal	80009b0c <__mulsf3>
80006ed8:	00050593          	mv	a1,a0
80006edc:	00048513          	mv	a0,s1
80006ee0:	380020ef          	jal	80009260 <__addsf3>
80006ee4:	00050593          	mv	a1,a0
80006ee8:	00040513          	mv	a0,s0
80006eec:	76d020ef          	jal	80009e58 <__subsf3>
80006ef0:	01c12083          	lw	ra,28(sp)
80006ef4:	01812403          	lw	s0,24(sp)
80006ef8:	01412483          	lw	s1,20(sp)
80006efc:	01012903          	lw	s2,16(sp)
80006f00:	00c12983          	lw	s3,12(sp)
80006f04:	00812a03          	lw	s4,8(sp)
80006f08:	00412a83          	lw	s5,4(sp)
80006f0c:	02010113          	addi	sp,sp,32
80006f10:	00008067          	ret

80006f14 <__ieee754_rem_pio2f>:
80006f14:	fc010113          	addi	sp,sp,-64
80006f18:	02912a23          	sw	s1,52(sp)
80006f1c:	3f4917b7          	lui	a5,0x3f491
80006f20:	00151493          	slli	s1,a0,0x1
80006f24:	02812c23          	sw	s0,56(sp)
80006f28:	03312623          	sw	s3,44(sp)
80006f2c:	02112e23          	sw	ra,60(sp)
80006f30:	03212823          	sw	s2,48(sp)
80006f34:	0014d493          	srli	s1,s1,0x1
80006f38:	fd878793          	addi	a5,a5,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
80006f3c:	00050413          	mv	s0,a0
80006f40:	00058993          	mv	s3,a1
80006f44:	1897f263          	bgeu	a5,s1,800070c8 <__ieee754_rem_pio2f+0x1b4>
80006f48:	4016d7b7          	lui	a5,0x4016d
80006f4c:	03412423          	sw	s4,40(sp)
80006f50:	be378793          	addi	a5,a5,-1053 # 4016cbe3 <_stack_size+0x40164be3>
80006f54:	00050a13          	mv	s4,a0
80006f58:	0897e263          	bltu	a5,s1,80006fdc <__ieee754_rem_pio2f+0xc8>
80006f5c:	800007b7          	lui	a5,0x80000
80006f60:	ff078793          	addi	a5,a5,-16 # 7ffffff0 <_stack_size+0x7fff7ff0>
80006f64:	00a7f433          	and	s0,a5,a0
80006f68:	8000b7b7          	lui	a5,0x8000b
80006f6c:	e707a583          	lw	a1,-400(a5) # 8000ae70 <_etext+0x5c>
80006f70:	42a05663          	blez	a0,8000739c <__ieee754_rem_pio2f+0x488>
80006f74:	6e5020ef          	jal	80009e58 <__subsf3>
80006f78:	3fc917b7          	lui	a5,0x3fc91
80006f7c:	fd078793          	addi	a5,a5,-48 # 3fc90fd0 <_stack_size+0x3fc88fd0>
80006f80:	00050493          	mv	s1,a0
80006f84:	18f40863          	beq	s0,a5,80007114 <__ieee754_rem_pio2f+0x200>
80006f88:	8000b937          	lui	s2,0x8000b
80006f8c:	e7492583          	lw	a1,-396(s2) # 8000ae74 <_etext+0x60>
80006f90:	6c9020ef          	jal	80009e58 <__subsf3>
80006f94:	00050413          	mv	s0,a0
80006f98:	00040593          	mv	a1,s0
80006f9c:	00048513          	mv	a0,s1
80006fa0:	6b9020ef          	jal	80009e58 <__subsf3>
80006fa4:	e7492583          	lw	a1,-396(s2)
80006fa8:	6b1020ef          	jal	80009e58 <__subsf3>
80006fac:	02812a03          	lw	s4,40(sp)
80006fb0:	0089a023          	sw	s0,0(s3)
80006fb4:	00a9a223          	sw	a0,4(s3)
80006fb8:	00100913          	li	s2,1
80006fbc:	03c12083          	lw	ra,60(sp)
80006fc0:	03812403          	lw	s0,56(sp)
80006fc4:	03412483          	lw	s1,52(sp)
80006fc8:	02c12983          	lw	s3,44(sp)
80006fcc:	00090513          	mv	a0,s2
80006fd0:	03012903          	lw	s2,48(sp)
80006fd4:	04010113          	addi	sp,sp,64
80006fd8:	00008067          	ret
80006fdc:	434917b7          	lui	a5,0x43491
80006fe0:	f8078793          	addi	a5,a5,-128 # 43490f80 <_stack_size+0x43488f80>
80006fe4:	1697f463          	bgeu	a5,s1,8000714c <__ieee754_rem_pio2f+0x238>
80006fe8:	7f8007b7          	lui	a5,0x7f800
80006fec:	10f4f663          	bgeu	s1,a5,800070f8 <__ieee754_rem_pio2f+0x1e4>
80006ff0:	4174d913          	srai	s2,s1,0x17
80006ff4:	f7a90913          	addi	s2,s2,-134
80006ff8:	01791793          	slli	a5,s2,0x17
80006ffc:	40f484b3          	sub	s1,s1,a5
80007000:	00048513          	mv	a0,s1
80007004:	03512223          	sw	s5,36(sp)
80007008:	290030ef          	jal	8000a298 <__fixsfsi>
8000700c:	2fc030ef          	jal	8000a308 <__floatsisf>
80007010:	00050593          	mv	a1,a0
80007014:	00048513          	mv	a0,s1
80007018:	00b12223          	sw	a1,4(sp)
8000701c:	8000bab7          	lui	s5,0x8000b
80007020:	639020ef          	jal	80009e58 <__subsf3>
80007024:	e8caa583          	lw	a1,-372(s5) # 8000ae8c <_etext+0x78>
80007028:	2e5020ef          	jal	80009b0c <__mulsf3>
8000702c:	00050493          	mv	s1,a0
80007030:	268030ef          	jal	8000a298 <__fixsfsi>
80007034:	2d4030ef          	jal	8000a308 <__floatsisf>
80007038:	00050413          	mv	s0,a0
8000703c:	00040593          	mv	a1,s0
80007040:	00048513          	mv	a0,s1
80007044:	00812423          	sw	s0,8(sp)
80007048:	611020ef          	jal	80009e58 <__subsf3>
8000704c:	e8caa583          	lw	a1,-372(s5)
80007050:	2bd020ef          	jal	80009b0c <__mulsf3>
80007054:	00000593          	li	a1,0
80007058:	00a12623          	sw	a0,12(sp)
8000705c:	1a9020ef          	jal	80009a04 <__eqsf2>
80007060:	00300693          	li	a3,3
80007064:	00051c63          	bnez	a0,8000707c <__ieee754_rem_pio2f+0x168>
80007068:	00040513          	mv	a0,s0
8000706c:	00000593          	li	a1,0
80007070:	195020ef          	jal	80009a04 <__eqsf2>
80007074:	00a036b3          	snez	a3,a0
80007078:	00168693          	addi	a3,a3,1
8000707c:	8000b7b7          	lui	a5,0x8000b
80007080:	00090613          	mv	a2,s2
80007084:	98878793          	addi	a5,a5,-1656 # 8000a988 <two_over_pi>
80007088:	00200713          	li	a4,2
8000708c:	00098593          	mv	a1,s3
80007090:	00410513          	addi	a0,sp,4
80007094:	398000ef          	jal	8000742c <__kernel_rem_pio2f>
80007098:	00050913          	mv	s2,a0
8000709c:	260a4463          	bltz	s4,80007304 <__ieee754_rem_pio2f+0x3f0>
800070a0:	03c12083          	lw	ra,60(sp)
800070a4:	03812403          	lw	s0,56(sp)
800070a8:	02812a03          	lw	s4,40(sp)
800070ac:	02412a83          	lw	s5,36(sp)
800070b0:	03412483          	lw	s1,52(sp)
800070b4:	02c12983          	lw	s3,44(sp)
800070b8:	00090513          	mv	a0,s2
800070bc:	03012903          	lw	s2,48(sp)
800070c0:	04010113          	addi	sp,sp,64
800070c4:	00008067          	ret
800070c8:	00a9a023          	sw	a0,0(s3)
800070cc:	00000793          	li	a5,0
800070d0:	00f5a223          	sw	a5,4(a1)
800070d4:	00000913          	li	s2,0
800070d8:	03c12083          	lw	ra,60(sp)
800070dc:	03812403          	lw	s0,56(sp)
800070e0:	03412483          	lw	s1,52(sp)
800070e4:	02c12983          	lw	s3,44(sp)
800070e8:	00090513          	mv	a0,s2
800070ec:	03012903          	lw	s2,48(sp)
800070f0:	04010113          	addi	sp,sp,64
800070f4:	00008067          	ret
800070f8:	00050593          	mv	a1,a0
800070fc:	55d020ef          	jal	80009e58 <__subsf3>
80007100:	00a9a223          	sw	a0,4(s3)
80007104:	02812a03          	lw	s4,40(sp)
80007108:	00a9a023          	sw	a0,0(s3)
8000710c:	00000913          	li	s2,0
80007110:	fc9ff06f          	j	800070d8 <__ieee754_rem_pio2f+0x1c4>
80007114:	8000b7b7          	lui	a5,0x8000b
80007118:	e787a583          	lw	a1,-392(a5) # 8000ae78 <_etext+0x64>
8000711c:	8000b937          	lui	s2,0x8000b
80007120:	539020ef          	jal	80009e58 <__subsf3>
80007124:	e7c92583          	lw	a1,-388(s2) # 8000ae7c <_etext+0x68>
80007128:	00050493          	mv	s1,a0
8000712c:	52d020ef          	jal	80009e58 <__subsf3>
80007130:	00050413          	mv	s0,a0
80007134:	00040593          	mv	a1,s0
80007138:	00048513          	mv	a0,s1
8000713c:	51d020ef          	jal	80009e58 <__subsf3>
80007140:	e7c92583          	lw	a1,-388(s2)
80007144:	515020ef          	jal	80009e58 <__subsf3>
80007148:	e65ff06f          	j	80006fac <__ieee754_rem_pio2f+0x98>
8000714c:	03512223          	sw	s5,36(sp)
80007150:	03612023          	sw	s6,32(sp)
80007154:	01712e23          	sw	s7,28(sp)
80007158:	01812c23          	sw	s8,24(sp)
8000715c:	2c4000ef          	jal	80007420 <fabsf>
80007160:	8000b7b7          	lui	a5,0x8000b
80007164:	e807a583          	lw	a1,-384(a5) # 8000ae80 <_etext+0x6c>
80007168:	00050a93          	mv	s5,a0
8000716c:	1a1020ef          	jal	80009b0c <__mulsf3>
80007170:	8000b7b7          	lui	a5,0x8000b
80007174:	e347a583          	lw	a1,-460(a5) # 8000ae34 <_etext+0x20>
80007178:	0e8020ef          	jal	80009260 <__addsf3>
8000717c:	11c030ef          	jal	8000a298 <__fixsfsi>
80007180:	00050913          	mv	s2,a0
80007184:	184030ef          	jal	8000a308 <__floatsisf>
80007188:	8000b7b7          	lui	a5,0x8000b
8000718c:	e707a583          	lw	a1,-400(a5) # 8000ae70 <_etext+0x5c>
80007190:	00050c13          	mv	s8,a0
80007194:	179020ef          	jal	80009b0c <__mulsf3>
80007198:	00050593          	mv	a1,a0
8000719c:	000a8513          	mv	a0,s5
800071a0:	4b9020ef          	jal	80009e58 <__subsf3>
800071a4:	8000b7b7          	lui	a5,0x8000b
800071a8:	e747a583          	lw	a1,-396(a5) # 8000ae74 <_etext+0x60>
800071ac:	00050b93          	mv	s7,a0
800071b0:	000c0513          	mv	a0,s8
800071b4:	159020ef          	jal	80009b0c <__mulsf3>
800071b8:	00050b13          	mv	s6,a0
800071bc:	000b0593          	mv	a1,s6
800071c0:	000b8513          	mv	a0,s7
800071c4:	495020ef          	jal	80009e58 <__subsf3>
800071c8:	01f00793          	li	a5,31
800071cc:	00050a93          	mv	s5,a0
800071d0:	0927ca63          	blt	a5,s2,80007264 <__ieee754_rem_pio2f+0x350>
800071d4:	8000b7b7          	lui	a5,0x8000b
800071d8:	00291713          	slli	a4,s2,0x2
800071dc:	90878793          	addi	a5,a5,-1784 # 8000a908 <npio2_hw>
800071e0:	00e787b3          	add	a5,a5,a4
800071e4:	ffc7a703          	lw	a4,-4(a5)
800071e8:	800007b7          	lui	a5,0x80000
800071ec:	f0078793          	addi	a5,a5,-256 # 7fffff00 <_stack_size+0x7fff7f00>
800071f0:	0087f7b3          	and	a5,a5,s0
800071f4:	06e78863          	beq	a5,a4,80007264 <__ieee754_rem_pio2f+0x350>
800071f8:	0159a023          	sw	s5,0(s3)
800071fc:	000a8593          	mv	a1,s5
80007200:	000b8513          	mv	a0,s7
80007204:	455020ef          	jal	80009e58 <__subsf3>
80007208:	000b0593          	mv	a1,s6
8000720c:	44d020ef          	jal	80009e58 <__subsf3>
80007210:	00a9a223          	sw	a0,4(s3)
80007214:	000a5e63          	bgez	s4,80007230 <__ieee754_rem_pio2f+0x31c>
80007218:	800007b7          	lui	a5,0x80000
8000721c:	00facab3          	xor	s5,s5,a5
80007220:	00f54533          	xor	a0,a0,a5
80007224:	41200933          	neg	s2,s2
80007228:	0159a023          	sw	s5,0(s3)
8000722c:	00a9a223          	sw	a0,4(s3)
80007230:	03c12083          	lw	ra,60(sp)
80007234:	03812403          	lw	s0,56(sp)
80007238:	02812a03          	lw	s4,40(sp)
8000723c:	02412a83          	lw	s5,36(sp)
80007240:	02012b03          	lw	s6,32(sp)
80007244:	01c12b83          	lw	s7,28(sp)
80007248:	01812c03          	lw	s8,24(sp)
8000724c:	03412483          	lw	s1,52(sp)
80007250:	02c12983          	lw	s3,44(sp)
80007254:	00090513          	mv	a0,s2
80007258:	03012903          	lw	s2,48(sp)
8000725c:	04010113          	addi	sp,sp,64
80007260:	00008067          	ret
80007264:	017ad793          	srli	a5,s5,0x17
80007268:	4174d493          	srai	s1,s1,0x17
8000726c:	0ff7f793          	zext.b	a5,a5
80007270:	40f487b3          	sub	a5,s1,a5
80007274:	00800713          	li	a4,8
80007278:	f8f750e3          	bge	a4,a5,800071f8 <__ieee754_rem_pio2f+0x2e4>
8000727c:	8000b7b7          	lui	a5,0x8000b
80007280:	e787a583          	lw	a1,-392(a5) # 8000ae78 <_etext+0x64>
80007284:	000c0513          	mv	a0,s8
80007288:	085020ef          	jal	80009b0c <__mulsf3>
8000728c:	00050a93          	mv	s5,a0
80007290:	000a8593          	mv	a1,s5
80007294:	000b8513          	mv	a0,s7
80007298:	3c1020ef          	jal	80009e58 <__subsf3>
8000729c:	00050413          	mv	s0,a0
800072a0:	00040593          	mv	a1,s0
800072a4:	000b8513          	mv	a0,s7
800072a8:	3b1020ef          	jal	80009e58 <__subsf3>
800072ac:	000a8593          	mv	a1,s5
800072b0:	3a9020ef          	jal	80009e58 <__subsf3>
800072b4:	8000b7b7          	lui	a5,0x8000b
800072b8:	e7c7a583          	lw	a1,-388(a5) # 8000ae7c <_etext+0x68>
800072bc:	00050a93          	mv	s5,a0
800072c0:	000c0513          	mv	a0,s8
800072c4:	049020ef          	jal	80009b0c <__mulsf3>
800072c8:	000a8593          	mv	a1,s5
800072cc:	38d020ef          	jal	80009e58 <__subsf3>
800072d0:	00050b13          	mv	s6,a0
800072d4:	000b0593          	mv	a1,s6
800072d8:	00040513          	mv	a0,s0
800072dc:	37d020ef          	jal	80009e58 <__subsf3>
800072e0:	01755793          	srli	a5,a0,0x17
800072e4:	0ff7f793          	zext.b	a5,a5
800072e8:	40f484b3          	sub	s1,s1,a5
800072ec:	01900793          	li	a5,25
800072f0:	00050a93          	mv	s5,a0
800072f4:	0297ce63          	blt	a5,s1,80007330 <__ieee754_rem_pio2f+0x41c>
800072f8:	00a9a023          	sw	a0,0(s3)
800072fc:	00040b93          	mv	s7,s0
80007300:	efdff06f          	j	800071fc <__ieee754_rem_pio2f+0x2e8>
80007304:	0009a703          	lw	a4,0(s3)
80007308:	0049a783          	lw	a5,4(s3)
8000730c:	800006b7          	lui	a3,0x80000
80007310:	00d74733          	xor	a4,a4,a3
80007314:	00d7c7b3          	xor	a5,a5,a3
80007318:	02812a03          	lw	s4,40(sp)
8000731c:	02412a83          	lw	s5,36(sp)
80007320:	40a00933          	neg	s2,a0
80007324:	00e9a023          	sw	a4,0(s3)
80007328:	00f9a223          	sw	a5,4(s3)
8000732c:	c91ff06f          	j	80006fbc <__ieee754_rem_pio2f+0xa8>
80007330:	8000b7b7          	lui	a5,0x8000b
80007334:	e847a583          	lw	a1,-380(a5) # 8000ae84 <_etext+0x70>
80007338:	000c0513          	mv	a0,s8
8000733c:	7d0020ef          	jal	80009b0c <__mulsf3>
80007340:	00050493          	mv	s1,a0
80007344:	00048593          	mv	a1,s1
80007348:	00040513          	mv	a0,s0
8000734c:	30d020ef          	jal	80009e58 <__subsf3>
80007350:	00050b93          	mv	s7,a0
80007354:	000b8593          	mv	a1,s7
80007358:	00040513          	mv	a0,s0
8000735c:	2fd020ef          	jal	80009e58 <__subsf3>
80007360:	00048593          	mv	a1,s1
80007364:	2f5020ef          	jal	80009e58 <__subsf3>
80007368:	8000b7b7          	lui	a5,0x8000b
8000736c:	e887a583          	lw	a1,-376(a5) # 8000ae88 <_etext+0x74>
80007370:	00050413          	mv	s0,a0
80007374:	000c0513          	mv	a0,s8
80007378:	794020ef          	jal	80009b0c <__mulsf3>
8000737c:	00040593          	mv	a1,s0
80007380:	2d9020ef          	jal	80009e58 <__subsf3>
80007384:	00050b13          	mv	s6,a0
80007388:	000b0593          	mv	a1,s6
8000738c:	000b8513          	mv	a0,s7
80007390:	2c9020ef          	jal	80009e58 <__subsf3>
80007394:	00050a93          	mv	s5,a0
80007398:	e61ff06f          	j	800071f8 <__ieee754_rem_pio2f+0x2e4>
8000739c:	6c5010ef          	jal	80009260 <__addsf3>
800073a0:	3fc917b7          	lui	a5,0x3fc91
800073a4:	fd078793          	addi	a5,a5,-48 # 3fc90fd0 <_stack_size+0x3fc88fd0>
800073a8:	00050493          	mv	s1,a0
800073ac:	02f40e63          	beq	s0,a5,800073e8 <__ieee754_rem_pio2f+0x4d4>
800073b0:	8000b937          	lui	s2,0x8000b
800073b4:	e7492583          	lw	a1,-396(s2) # 8000ae74 <_etext+0x60>
800073b8:	6a9010ef          	jal	80009260 <__addsf3>
800073bc:	00050413          	mv	s0,a0
800073c0:	00040593          	mv	a1,s0
800073c4:	00048513          	mv	a0,s1
800073c8:	291020ef          	jal	80009e58 <__subsf3>
800073cc:	e7492583          	lw	a1,-396(s2)
800073d0:	691010ef          	jal	80009260 <__addsf3>
800073d4:	02812a03          	lw	s4,40(sp)
800073d8:	0089a023          	sw	s0,0(s3)
800073dc:	00a9a223          	sw	a0,4(s3)
800073e0:	fff00913          	li	s2,-1
800073e4:	bd9ff06f          	j	80006fbc <__ieee754_rem_pio2f+0xa8>
800073e8:	8000b7b7          	lui	a5,0x8000b
800073ec:	e787a583          	lw	a1,-392(a5) # 8000ae78 <_etext+0x64>
800073f0:	8000b937          	lui	s2,0x8000b
800073f4:	66d010ef          	jal	80009260 <__addsf3>
800073f8:	e7c92583          	lw	a1,-388(s2) # 8000ae7c <_etext+0x68>
800073fc:	00050493          	mv	s1,a0
80007400:	661010ef          	jal	80009260 <__addsf3>
80007404:	00050413          	mv	s0,a0
80007408:	00040593          	mv	a1,s0
8000740c:	00048513          	mv	a0,s1
80007410:	249020ef          	jal	80009e58 <__subsf3>
80007414:	e7c92583          	lw	a1,-388(s2)
80007418:	649010ef          	jal	80009260 <__addsf3>
8000741c:	fb9ff06f          	j	800073d4 <__ieee754_rem_pio2f+0x4c0>

80007420 <fabsf>:
80007420:	00151513          	slli	a0,a0,0x1
80007424:	00155513          	srli	a0,a0,0x1
80007428:	00008067          	ret

8000742c <__kernel_rem_pio2f>:
8000742c:	e3010113          	addi	sp,sp,-464
80007430:	00070813          	mv	a6,a4
80007434:	04e12023          	sw	a4,64(sp)
80007438:	8000b737          	lui	a4,0x8000b
8000743c:	00281813          	slli	a6,a6,0x2
80007440:	ccc70713          	addi	a4,a4,-820 # 8000accc <init_jk>
80007444:	00068893          	mv	a7,a3
80007448:	1b612823          	sw	s6,432(sp)
8000744c:	1b912223          	sw	s9,420(sp)
80007450:	1ba12023          	sw	s10,416(sp)
80007454:	02d12823          	sw	a3,48(sp)
80007458:	01070733          	add	a4,a4,a6
8000745c:	1c112623          	sw	ra,460(sp)
80007460:	1c812423          	sw	s0,456(sp)
80007464:	1c912223          	sw	s1,452(sp)
80007468:	1d212023          	sw	s2,448(sp)
8000746c:	1b312e23          	sw	s3,444(sp)
80007470:	1b412c23          	sw	s4,440(sp)
80007474:	1b512a23          	sw	s5,436(sp)
80007478:	1b712623          	sw	s7,428(sp)
8000747c:	1b812423          	sw	s8,424(sp)
80007480:	19b12e23          	sw	s11,412(sp)
80007484:	04c12623          	sw	a2,76(sp)
80007488:	ffc00693          	li	a3,-4
8000748c:	02b12e23          	sw	a1,60(sp)
80007490:	02f12a23          	sw	a5,52(sp)
80007494:	00072b03          	lw	s6,0(a4)
80007498:	00050d13          	mv	s10,a0
8000749c:	fff88c93          	addi	s9,a7,-1
800074a0:	00d646e3          	blt	a2,a3,80007cac <__kernel_rem_pio2f+0x880>
800074a4:	ffd60713          	addi	a4,a2,-3
800074a8:	41f75793          	srai	a5,a4,0x1f
800074ac:	0077f793          	andi	a5,a5,7
800074b0:	00e787b3          	add	a5,a5,a4
800074b4:	4037d793          	srai	a5,a5,0x3
800074b8:	02f12623          	sw	a5,44(sp)
800074bc:	00178793          	addi	a5,a5,1
800074c0:	00379793          	slli	a5,a5,0x3
800074c4:	04f12223          	sw	a5,68(sp)
800074c8:	04412683          	lw	a3,68(sp)
800074cc:	04c12703          	lw	a4,76(sp)
800074d0:	019b07b3          	add	a5,s6,s9
800074d4:	40d70733          	sub	a4,a4,a3
800074d8:	02c12683          	lw	a3,44(sp)
800074dc:	41968433          	sub	s0,a3,s9
800074e0:	0407c463          	bltz	a5,80007528 <__kernel_rem_pio2f+0xfc>
800074e4:	00178793          	addi	a5,a5,1
800074e8:	008789b3          	add	s3,a5,s0
800074ec:	03412783          	lw	a5,52(sp)
800074f0:	00241913          	slli	s2,s0,0x2
800074f4:	0a010493          	addi	s1,sp,160
800074f8:	01278933          	add	s2,a5,s2
800074fc:	00070a13          	mv	s4,a4
80007500:	00000513          	li	a0,0
80007504:	00044663          	bltz	s0,80007510 <__kernel_rem_pio2f+0xe4>
80007508:	00092503          	lw	a0,0(s2)
8000750c:	5fd020ef          	jal	8000a308 <__floatsisf>
80007510:	00a4a023          	sw	a0,0(s1)
80007514:	00140413          	addi	s0,s0,1
80007518:	00448493          	addi	s1,s1,4
8000751c:	00490913          	addi	s2,s2,4
80007520:	ff3410e3          	bne	s0,s3,80007500 <__kernel_rem_pio2f+0xd4>
80007524:	000a0713          	mv	a4,s4
80007528:	14010a93          	addi	s5,sp,320
8000752c:	040b4463          	bltz	s6,80007574 <__kernel_rem_pio2f+0x148>
80007530:	002c9793          	slli	a5,s9,0x2
80007534:	0a010a13          	addi	s4,sp,160
80007538:	00478493          	addi	s1,a5,4
8000753c:	00fa0a33          	add	s4,s4,a5
80007540:	03012783          	lw	a5,48(sp)
80007544:	14010a93          	addi	s5,sp,320
80007548:	01a484b3          	add	s1,s1,s10
8000754c:	000a8b93          	mv	s7,s5
80007550:	000c8c13          	mv	s8,s9
80007554:	00fb0db3          	add	s11,s6,a5
80007558:	660cd463          	bgez	s9,80007bc0 <__kernel_rem_pio2f+0x794>
8000755c:	00000793          	li	a5,0
80007560:	00fba023          	sw	a5,0(s7)
80007564:	001c0c13          	addi	s8,s8,1
80007568:	004b8b93          	addi	s7,s7,4
8000756c:	004a0a13          	addi	s4,s4,4
80007570:	ffbc14e3          	bne	s8,s11,80007558 <__kernel_rem_pio2f+0x12c>
80007574:	8000b6b7          	lui	a3,0x8000b
80007578:	e346a683          	lw	a3,-460(a3) # 8000ae34 <_etext+0x20>
8000757c:	002b1793          	slli	a5,s6,0x2
80007580:	8000b837          	lui	a6,0x8000b
80007584:	04d12423          	sw	a3,72(sp)
80007588:	03012683          	lw	a3,48(sp)
8000758c:	8000b537          	lui	a0,0x8000b
80007590:	8000b5b7          	lui	a1,0x8000b
80007594:	8000b637          	lui	a2,0x8000b
80007598:	04c10c13          	addi	s8,sp,76
8000759c:	e9482803          	lw	a6,-364(a6) # 8000ae94 <_etext+0x80>
800075a0:	e9852503          	lw	a0,-360(a0) # 8000ae98 <_etext+0x84>
800075a4:	e905a583          	lw	a1,-368(a1) # 8000ae90 <_etext+0x7c>
800075a8:	e8c62603          	lw	a2,-372(a2) # 8000ae8c <_etext+0x78>
800075ac:	00fc0c33          	add	s8,s8,a5
800075b0:	04878793          	addi	a5,a5,72
800075b4:	00269493          	slli	s1,a3,0x2
800075b8:	002787b3          	add	a5,a5,sp
800075bc:	400006b7          	lui	a3,0x40000
800075c0:	02f12c23          	sw	a5,56(sp)
800075c4:	fff68793          	addi	a5,a3,-1 # 3fffffff <_stack_size+0x3fff7fff>
800075c8:	03012223          	sw	a6,36(sp)
800075cc:	02a12423          	sw	a0,40(sp)
800075d0:	00b12623          	sw	a1,12(sp)
800075d4:	00c12823          	sw	a2,16(sp)
800075d8:	009d04b3          	add	s1,s10,s1
800075dc:	00f12c23          	sw	a5,24(sp)
800075e0:	000b0b93          	mv	s7,s6
800075e4:	00e12a23          	sw	a4,20(sp)
800075e8:	002b9a13          	slli	s4,s7,0x2
800075ec:	014a87b3          	add	a5,s5,s4
800075f0:	0007a983          	lw	s3,0(a5)
800075f4:	07705863          	blez	s7,80007664 <__kernel_rem_pio2f+0x238>
800075f8:	01812783          	lw	a5,24(sp)
800075fc:	05010913          	addi	s2,sp,80
80007600:	00fb87b3          	add	a5,s7,a5
80007604:	00279793          	slli	a5,a5,0x2
80007608:	00fa8db3          	add	s11,s5,a5
8000760c:	00c12583          	lw	a1,12(sp)
80007610:	00098513          	mv	a0,s3
80007614:	00490913          	addi	s2,s2,4
80007618:	4f4020ef          	jal	80009b0c <__mulsf3>
8000761c:	47d020ef          	jal	8000a298 <__fixsfsi>
80007620:	4e9020ef          	jal	8000a308 <__floatsisf>
80007624:	01012583          	lw	a1,16(sp)
80007628:	00050413          	mv	s0,a0
8000762c:	4e0020ef          	jal	80009b0c <__mulsf3>
80007630:	00050593          	mv	a1,a0
80007634:	00098513          	mv	a0,s3
80007638:	021020ef          	jal	80009e58 <__subsf3>
8000763c:	45d020ef          	jal	8000a298 <__fixsfsi>
80007640:	000da583          	lw	a1,0(s11)
80007644:	00050793          	mv	a5,a0
80007648:	fef92e23          	sw	a5,-4(s2)
8000764c:	00040513          	mv	a0,s0
80007650:	411010ef          	jal	80009260 <__addsf3>
80007654:	000d8793          	mv	a5,s11
80007658:	00050993          	mv	s3,a0
8000765c:	ffcd8d93          	addi	s11,s11,-4
80007660:	fafa96e3          	bne	s5,a5,8000760c <__kernel_rem_pio2f+0x1e0>
80007664:	01412903          	lw	s2,20(sp)
80007668:	00098513          	mv	a0,s3
8000766c:	00090593          	mv	a1,s2
80007670:	1e5000ef          	jal	80008054 <scalbnf>
80007674:	02412583          	lw	a1,36(sp)
80007678:	00050413          	mv	s0,a0
8000767c:	490020ef          	jal	80009b0c <__mulsf3>
80007680:	069000ef          	jal	80007ee8 <floorf>
80007684:	02812583          	lw	a1,40(sp)
80007688:	484020ef          	jal	80009b0c <__mulsf3>
8000768c:	00050593          	mv	a1,a0
80007690:	00040513          	mv	a0,s0
80007694:	7c4020ef          	jal	80009e58 <__subsf3>
80007698:	00050413          	mv	s0,a0
8000769c:	3fd020ef          	jal	8000a298 <__fixsfsi>
800076a0:	00050993          	mv	s3,a0
800076a4:	465020ef          	jal	8000a308 <__floatsisf>
800076a8:	00050593          	mv	a1,a0
800076ac:	00040513          	mv	a0,s0
800076b0:	7a8020ef          	jal	80009e58 <__subsf3>
800076b4:	00050413          	mv	s0,a0
800076b8:	00090693          	mv	a3,s2
800076bc:	19205263          	blez	s2,80007840 <__kernel_rem_pio2f+0x414>
800076c0:	fffb8793          	addi	a5,s7,-1
800076c4:	00279793          	slli	a5,a5,0x2
800076c8:	05078793          	addi	a5,a5,80
800076cc:	002787b3          	add	a5,a5,sp
800076d0:	0007a603          	lw	a2,0(a5)
800076d4:	00800713          	li	a4,8
800076d8:	41270733          	sub	a4,a4,s2
800076dc:	40e655b3          	sra	a1,a2,a4
800076e0:	00e59733          	sll	a4,a1,a4
800076e4:	00700913          	li	s2,7
800076e8:	40e60733          	sub	a4,a2,a4
800076ec:	40d90933          	sub	s2,s2,a3
800076f0:	00e7a023          	sw	a4,0(a5)
800076f4:	41275933          	sra	s2,a4,s2
800076f8:	00b989b3          	add	s3,s3,a1
800076fc:	49204c63          	bgtz	s2,80007b94 <__kernel_rem_pio2f+0x768>
80007700:	00000593          	li	a1,0
80007704:	00040513          	mv	a0,s0
80007708:	2fc020ef          	jal	80009a04 <__eqsf2>
8000770c:	22051063          	bnez	a0,8000792c <__kernel_rem_pio2f+0x500>
80007710:	037b5863          	bge	s6,s7,80007740 <__kernel_rem_pio2f+0x314>
80007714:	01812783          	lw	a5,24(sp)
80007718:	00000713          	li	a4,0
8000771c:	00fb87b3          	add	a5,s7,a5
80007720:	00279793          	slli	a5,a5,0x2
80007724:	05078793          	addi	a5,a5,80
80007728:	002787b3          	add	a5,a5,sp
8000772c:	0007a683          	lw	a3,0(a5)
80007730:	ffc78793          	addi	a5,a5,-4
80007734:	00d76733          	or	a4,a4,a3
80007738:	ff879ae3          	bne	a5,s8,8000772c <__kernel_rem_pio2f+0x300>
8000773c:	4c071c63          	bnez	a4,80007c14 <__kernel_rem_pio2f+0x7e8>
80007740:	002b1793          	slli	a5,s6,0x2
80007744:	002787b3          	add	a5,a5,sp
80007748:	04c7a783          	lw	a5,76(a5)
8000774c:	001b8593          	addi	a1,s7,1
80007750:	00058a13          	mv	s4,a1
80007754:	46079263          	bnez	a5,80007bb8 <__kernel_rem_pio2f+0x78c>
80007758:	03812703          	lw	a4,56(sp)
8000775c:	00100793          	li	a5,1
80007760:	00072683          	lw	a3,0(a4)
80007764:	ffc70713          	addi	a4,a4,-4
80007768:	00178793          	addi	a5,a5,1
8000776c:	fe068ae3          	beqz	a3,80007760 <__kernel_rem_pio2f+0x334>
80007770:	00fb8db3          	add	s11,s7,a5
80007774:	03012783          	lw	a5,48(sp)
80007778:	03512023          	sw	s5,32(sp)
8000777c:	01612e23          	sw	s6,28(sp)
80007780:	017786b3          	add	a3,a5,s7
80007784:	02c12783          	lw	a5,44(sp)
80007788:	00269693          	slli	a3,a3,0x2
8000778c:	00b789b3          	add	s3,a5,a1
80007790:	0a010793          	addi	a5,sp,160
80007794:	00d78bb3          	add	s7,a5,a3
80007798:	03412783          	lw	a5,52(sp)
8000779c:	00259593          	slli	a1,a1,0x2
800077a0:	00ba8933          	add	s2,s5,a1
800077a4:	00299993          	slli	s3,s3,0x2
800077a8:	000b8a93          	mv	s5,s7
800077ac:	013789b3          	add	s3,a5,s3
800077b0:	00090b93          	mv	s7,s2
800077b4:	0009a503          	lw	a0,0(s3)
800077b8:	351020ef          	jal	8000a308 <__floatsisf>
800077bc:	00aaa023          	sw	a0,0(s5)
800077c0:	060cc063          	bltz	s9,80007820 <__kernel_rem_pio2f+0x3f4>
800077c4:	000a8b13          	mv	s6,s5
800077c8:	000d0913          	mv	s2,s10
800077cc:	00000413          	li	s0,0
800077d0:	000b2583          	lw	a1,0(s6)
800077d4:	00092503          	lw	a0,0(s2)
800077d8:	00490913          	addi	s2,s2,4
800077dc:	ffcb0b13          	addi	s6,s6,-4
800077e0:	32c020ef          	jal	80009b0c <__mulsf3>
800077e4:	00050593          	mv	a1,a0
800077e8:	00040513          	mv	a0,s0
800077ec:	275010ef          	jal	80009260 <__addsf3>
800077f0:	00050413          	mv	s0,a0
800077f4:	fc991ee3          	bne	s2,s1,800077d0 <__kernel_rem_pio2f+0x3a4>
800077f8:	008ba023          	sw	s0,0(s7)
800077fc:	001a0a13          	addi	s4,s4,1
80007800:	00498993          	addi	s3,s3,4
80007804:	004a8a93          	addi	s5,s5,4
80007808:	004b8b93          	addi	s7,s7,4
8000780c:	fb4dd4e3          	bge	s11,s4,800077b4 <__kernel_rem_pio2f+0x388>
80007810:	01c12b03          	lw	s6,28(sp)
80007814:	02012a83          	lw	s5,32(sp)
80007818:	000d8b93          	mv	s7,s11
8000781c:	dcdff06f          	j	800075e8 <__kernel_rem_pio2f+0x1bc>
80007820:	00000413          	li	s0,0
80007824:	008ba023          	sw	s0,0(s7)
80007828:	001a0a13          	addi	s4,s4,1
8000782c:	00498993          	addi	s3,s3,4
80007830:	004a8a93          	addi	s5,s5,4
80007834:	004b8b93          	addi	s7,s7,4
80007838:	f74ddee3          	bge	s11,s4,800077b4 <__kernel_rem_pio2f+0x388>
8000783c:	fd5ff06f          	j	80007810 <__kernel_rem_pio2f+0x3e4>
80007840:	01412783          	lw	a5,20(sp)
80007844:	30078a63          	beqz	a5,80007b58 <__kernel_rem_pio2f+0x72c>
80007848:	04812583          	lw	a1,72(sp)
8000784c:	00000913          	li	s2,0
80007850:	21c020ef          	jal	80009a6c <__gesf2>
80007854:	ea0546e3          	bltz	a0,80007700 <__kernel_rem_pio2f+0x2d4>
80007858:	00198993          	addi	s3,s3,1
8000785c:	00200913          	li	s2,2
80007860:	31705e63          	blez	s7,80007b7c <__kernel_rem_pio2f+0x750>
80007864:	05012d83          	lw	s11,80(sp)
80007868:	05010793          	addi	a5,sp,80
8000786c:	00078513          	mv	a0,a5
80007870:	00000613          	li	a2,0
80007874:	2c0d8663          	beqz	s11,80007b40 <__kernel_rem_pio2f+0x714>
80007878:	10000593          	li	a1,256
8000787c:	41b58733          	sub	a4,a1,s11
80007880:	00e52023          	sw	a4,0(a0)
80007884:	0ff00593          	li	a1,255
80007888:	0100006f          	j	80007898 <__kernel_rem_pio2f+0x46c>
8000788c:	0007a703          	lw	a4,0(a5)
80007890:	40e58733          	sub	a4,a1,a4
80007894:	00e7a023          	sw	a4,0(a5)
80007898:	00160613          	addi	a2,a2,1
8000789c:	00478793          	addi	a5,a5,4
800078a0:	ff7646e3          	blt	a2,s7,8000788c <__kernel_rem_pio2f+0x460>
800078a4:	00100d93          	li	s11,1
800078a8:	01412703          	lw	a4,20(sp)
800078ac:	02e05863          	blez	a4,800078dc <__kernel_rem_pio2f+0x4b0>
800078b0:	00100793          	li	a5,1
800078b4:	3cf70c63          	beq	a4,a5,80007c8c <__kernel_rem_pio2f+0x860>
800078b8:	00200793          	li	a5,2
800078bc:	02f71063          	bne	a4,a5,800078dc <__kernel_rem_pio2f+0x4b0>
800078c0:	fffb8793          	addi	a5,s7,-1
800078c4:	00279793          	slli	a5,a5,0x2
800078c8:	05078793          	addi	a5,a5,80
800078cc:	002787b3          	add	a5,a5,sp
800078d0:	0007a603          	lw	a2,0(a5)
800078d4:	03f67613          	andi	a2,a2,63
800078d8:	00c7a023          	sw	a2,0(a5)
800078dc:	00200793          	li	a5,2
800078e0:	e2f910e3          	bne	s2,a5,80007700 <__kernel_rem_pio2f+0x2d4>
800078e4:	8000b7b7          	lui	a5,0x8000b
800078e8:	e147a503          	lw	a0,-492(a5) # 8000ae14 <_etext>
800078ec:	00040593          	mv	a1,s0
800078f0:	568020ef          	jal	80009e58 <__subsf3>
800078f4:	00050413          	mv	s0,a0
800078f8:	e00d84e3          	beqz	s11,80007700 <__kernel_rem_pio2f+0x2d4>
800078fc:	8000b7b7          	lui	a5,0x8000b
80007900:	e147a503          	lw	a0,-492(a5) # 8000ae14 <_etext>
80007904:	01412583          	lw	a1,20(sp)
80007908:	74c000ef          	jal	80008054 <scalbnf>
8000790c:	00050593          	mv	a1,a0
80007910:	00040513          	mv	a0,s0
80007914:	544020ef          	jal	80009e58 <__subsf3>
80007918:	00050413          	mv	s0,a0
8000791c:	00000593          	li	a1,0
80007920:	00040513          	mv	a0,s0
80007924:	0e0020ef          	jal	80009a04 <__eqsf2>
80007928:	de0504e3          	beqz	a0,80007710 <__kernel_rem_pio2f+0x2e4>
8000792c:	01412703          	lw	a4,20(sp)
80007930:	04412783          	lw	a5,68(sp)
80007934:	00040513          	mv	a0,s0
80007938:	00e12623          	sw	a4,12(sp)
8000793c:	04c12703          	lw	a4,76(sp)
80007940:	40e785b3          	sub	a1,a5,a4
80007944:	710000ef          	jal	80008054 <scalbnf>
80007948:	8000b7b7          	lui	a5,0x8000b
8000794c:	e8c7a483          	lw	s1,-372(a5) # 8000ae8c <_etext+0x78>
80007950:	00050413          	mv	s0,a0
80007954:	00048593          	mv	a1,s1
80007958:	114020ef          	jal	80009a6c <__gesf2>
8000795c:	00c12703          	lw	a4,12(sp)
80007960:	4a054a63          	bltz	a0,80007e14 <__kernel_rem_pio2f+0x9e8>
80007964:	8000b6b7          	lui	a3,0x8000b
80007968:	e906a583          	lw	a1,-368(a3) # 8000ae90 <_etext+0x7c>
8000796c:	00040513          	mv	a0,s0
80007970:	002a0a33          	add	s4,s4,sp
80007974:	198020ef          	jal	80009b0c <__mulsf3>
80007978:	121020ef          	jal	8000a298 <__fixsfsi>
8000797c:	18d020ef          	jal	8000a308 <__floatsisf>
80007980:	00048593          	mv	a1,s1
80007984:	00050493          	mv	s1,a0
80007988:	184020ef          	jal	80009b0c <__mulsf3>
8000798c:	00050593          	mv	a1,a0
80007990:	00040513          	mv	a0,s0
80007994:	4c4020ef          	jal	80009e58 <__subsf3>
80007998:	101020ef          	jal	8000a298 <__fixsfsi>
8000799c:	00c12703          	lw	a4,12(sp)
800079a0:	04aa2823          	sw	a0,80(s4)
800079a4:	00048513          	mv	a0,s1
800079a8:	00870713          	addi	a4,a4,8
800079ac:	00e12623          	sw	a4,12(sp)
800079b0:	001b8c93          	addi	s9,s7,1
800079b4:	0e5020ef          	jal	8000a298 <__fixsfsi>
800079b8:	002c9413          	slli	s0,s9,0x2
800079bc:	00c12703          	lw	a4,12(sp)
800079c0:	00240433          	add	s0,s0,sp
800079c4:	04a42823          	sw	a0,80(s0)
800079c8:	8000b7b7          	lui	a5,0x8000b
800079cc:	e147a503          	lw	a0,-492(a5) # 8000ae14 <_etext>
800079d0:	00070593          	mv	a1,a4
800079d4:	680000ef          	jal	80008054 <scalbnf>
800079d8:	00050413          	mv	s0,a0
800079dc:	280cc663          	bltz	s9,80007c68 <__kernel_rem_pio2f+0x83c>
800079e0:	8000b6b7          	lui	a3,0x8000b
800079e4:	002c9d13          	slli	s10,s9,0x2
800079e8:	e906aa03          	lw	s4,-368(a3) # 8000ae90 <_etext+0x7c>
800079ec:	01aa8ab3          	add	s5,s5,s10
800079f0:	050d0793          	addi	a5,s10,80
800079f4:	000a8b93          	mv	s7,s5
800079f8:	002784b3          	add	s1,a5,sp
800079fc:	0004a503          	lw	a0,0(s1)
80007a00:	ffcb8b93          	addi	s7,s7,-4
80007a04:	105020ef          	jal	8000a308 <__floatsisf>
80007a08:	00040593          	mv	a1,s0
80007a0c:	100020ef          	jal	80009b0c <__mulsf3>
80007a10:	00aba223          	sw	a0,4(s7)
80007a14:	000a0593          	mv	a1,s4
80007a18:	00040513          	mv	a0,s0
80007a1c:	0f0020ef          	jal	80009b0c <__mulsf3>
80007a20:	00048793          	mv	a5,s1
80007a24:	05010713          	addi	a4,sp,80
80007a28:	00050413          	mv	s0,a0
80007a2c:	ffc48493          	addi	s1,s1,-4
80007a30:	fcf716e3          	bne	a4,a5,800079fc <__kernel_rem_pio2f+0x5d0>
80007a34:	0f010c13          	addi	s8,sp,240
80007a38:	01212623          	sw	s2,12(sp)
80007a3c:	000c0b93          	mv	s7,s8
80007a40:	00000a13          	li	s4,0
80007a44:	060b4263          	bltz	s6,80007aa8 <__kernel_rem_pio2f+0x67c>
80007a48:	8000b7b7          	lui	a5,0x8000b
80007a4c:	ca078913          	addi	s2,a5,-864 # 8000aca0 <PIo2>
80007a50:	000a8d93          	mv	s11,s5
80007a54:	00000413          	li	s0,0
80007a58:	00000493          	li	s1,0
80007a5c:	029a4863          	blt	s4,s1,80007a8c <__kernel_rem_pio2f+0x660>
80007a60:	000da583          	lw	a1,0(s11)
80007a64:	00092503          	lw	a0,0(s2)
80007a68:	00148493          	addi	s1,s1,1
80007a6c:	00490913          	addi	s2,s2,4
80007a70:	09c020ef          	jal	80009b0c <__mulsf3>
80007a74:	00050593          	mv	a1,a0
80007a78:	00040513          	mv	a0,s0
80007a7c:	7e4010ef          	jal	80009260 <__addsf3>
80007a80:	004d8d93          	addi	s11,s11,4
80007a84:	00050413          	mv	s0,a0
80007a88:	fc9b5ae3          	bge	s6,s1,80007a5c <__kernel_rem_pio2f+0x630>
80007a8c:	008ba023          	sw	s0,0(s7)
80007a90:	ffca8a93          	addi	s5,s5,-4
80007a94:	004b8b93          	addi	s7,s7,4
80007a98:	001a0793          	addi	a5,s4,1
80007a9c:	039a0263          	beq	s4,s9,80007ac0 <__kernel_rem_pio2f+0x694>
80007aa0:	00078a13          	mv	s4,a5
80007aa4:	fa0b52e3          	bgez	s6,80007a48 <__kernel_rem_pio2f+0x61c>
80007aa8:	00000413          	li	s0,0
80007aac:	008ba023          	sw	s0,0(s7)
80007ab0:	ffca8a93          	addi	s5,s5,-4
80007ab4:	004b8b93          	addi	s7,s7,4
80007ab8:	001a0793          	addi	a5,s4,1
80007abc:	ff9a12e3          	bne	s4,s9,80007aa0 <__kernel_rem_pio2f+0x674>
80007ac0:	04012783          	lw	a5,64(sp)
80007ac4:	00200713          	li	a4,2
80007ac8:	00c12903          	lw	s2,12(sp)
80007acc:	26f74263          	blt	a4,a5,80007d30 <__kernel_rem_pio2f+0x904>
80007ad0:	01ac0d33          	add	s10,s8,s10
80007ad4:	1ef04463          	bgtz	a5,80007cbc <__kernel_rem_pio2f+0x890>
80007ad8:	00000513          	li	a0,0
80007adc:	02079263          	bnez	a5,80007b00 <__kernel_rem_pio2f+0x6d4>
80007ae0:	000d2583          	lw	a1,0(s10)
80007ae4:	77c010ef          	jal	80009260 <__addsf3>
80007ae8:	000d0793          	mv	a5,s10
80007aec:	ffcd0d13          	addi	s10,s10,-4
80007af0:	fefc18e3          	bne	s8,a5,80007ae0 <__kernel_rem_pio2f+0x6b4>
80007af4:	36091263          	bnez	s2,80007e58 <__kernel_rem_pio2f+0xa2c>
80007af8:	03c12783          	lw	a5,60(sp)
80007afc:	00a7a023          	sw	a0,0(a5)
80007b00:	1cc12083          	lw	ra,460(sp)
80007b04:	1c812403          	lw	s0,456(sp)
80007b08:	1c412483          	lw	s1,452(sp)
80007b0c:	1c012903          	lw	s2,448(sp)
80007b10:	1b812a03          	lw	s4,440(sp)
80007b14:	1b412a83          	lw	s5,436(sp)
80007b18:	1b012b03          	lw	s6,432(sp)
80007b1c:	1ac12b83          	lw	s7,428(sp)
80007b20:	1a812c03          	lw	s8,424(sp)
80007b24:	1a412c83          	lw	s9,420(sp)
80007b28:	1a012d03          	lw	s10,416(sp)
80007b2c:	19c12d83          	lw	s11,412(sp)
80007b30:	0079f513          	andi	a0,s3,7
80007b34:	1bc12983          	lw	s3,444(sp)
80007b38:	1d010113          	addi	sp,sp,464
80007b3c:	00008067          	ret
80007b40:	00160613          	addi	a2,a2,1
80007b44:	00478793          	addi	a5,a5,4
80007b48:	d77650e3          	bge	a2,s7,800078a8 <__kernel_rem_pio2f+0x47c>
80007b4c:	0007ad83          	lw	s11,0(a5)
80007b50:	00078513          	mv	a0,a5
80007b54:	d21ff06f          	j	80007874 <__kernel_rem_pio2f+0x448>
80007b58:	002b9793          	slli	a5,s7,0x2
80007b5c:	002787b3          	add	a5,a5,sp
80007b60:	04c7a903          	lw	s2,76(a5)
80007b64:	40795913          	srai	s2,s2,0x7
80007b68:	b9205ce3          	blez	s2,80007700 <__kernel_rem_pio2f+0x2d4>
80007b6c:	00198993          	addi	s3,s3,1
80007b70:	cf704ae3          	bgtz	s7,80007864 <__kernel_rem_pio2f+0x438>
80007b74:	00200793          	li	a5,2
80007b78:	b8f914e3          	bne	s2,a5,80007700 <__kernel_rem_pio2f+0x2d4>
80007b7c:	8000b7b7          	lui	a5,0x8000b
80007b80:	e147a503          	lw	a0,-492(a5) # 8000ae14 <_etext>
80007b84:	00040593          	mv	a1,s0
80007b88:	2d0020ef          	jal	80009e58 <__subsf3>
80007b8c:	00050413          	mv	s0,a0
80007b90:	b71ff06f          	j	80007700 <__kernel_rem_pio2f+0x2d4>
80007b94:	00198993          	addi	s3,s3,1
80007b98:	cd7046e3          	bgtz	s7,80007864 <__kernel_rem_pio2f+0x438>
80007b9c:	01412683          	lw	a3,20(sp)
80007ba0:	00100613          	li	a2,1
80007ba4:	2ec68c63          	beq	a3,a2,80007e9c <__kernel_rem_pio2f+0xa70>
80007ba8:	00200613          	li	a2,2
80007bac:	2cc68e63          	beq	a3,a2,80007e88 <__kernel_rem_pio2f+0xa5c>
80007bb0:	b4c918e3          	bne	s2,a2,80007700 <__kernel_rem_pio2f+0x2d4>
80007bb4:	fc9ff06f          	j	80007b7c <__kernel_rem_pio2f+0x750>
80007bb8:	00058d93          	mv	s11,a1
80007bbc:	bb9ff06f          	j	80007774 <__kernel_rem_pio2f+0x348>
80007bc0:	00e12623          	sw	a4,12(sp)
80007bc4:	000a0993          	mv	s3,s4
80007bc8:	000d0913          	mv	s2,s10
80007bcc:	00000413          	li	s0,0
80007bd0:	0009a583          	lw	a1,0(s3)
80007bd4:	00092503          	lw	a0,0(s2)
80007bd8:	00490913          	addi	s2,s2,4
80007bdc:	ffc98993          	addi	s3,s3,-4
80007be0:	72d010ef          	jal	80009b0c <__mulsf3>
80007be4:	00050593          	mv	a1,a0
80007be8:	00040513          	mv	a0,s0
80007bec:	674010ef          	jal	80009260 <__addsf3>
80007bf0:	00050413          	mv	s0,a0
80007bf4:	fc991ee3          	bne	s2,s1,80007bd0 <__kernel_rem_pio2f+0x7a4>
80007bf8:	00aba023          	sw	a0,0(s7)
80007bfc:	001c0c13          	addi	s8,s8,1
80007c00:	004b8b93          	addi	s7,s7,4
80007c04:	004a0a13          	addi	s4,s4,4
80007c08:	fbbc1ee3          	bne	s8,s11,80007bc4 <__kernel_rem_pio2f+0x798>
80007c0c:	00c12703          	lw	a4,12(sp)
80007c10:	965ff06f          	j	80007574 <__kernel_rem_pio2f+0x148>
80007c14:	fffb8c93          	addi	s9,s7,-1
80007c18:	002c9693          	slli	a3,s9,0x2
80007c1c:	002686b3          	add	a3,a3,sp
80007c20:	01412703          	lw	a4,20(sp)
80007c24:	0506a683          	lw	a3,80(a3)
80007c28:	ff870713          	addi	a4,a4,-8
80007c2c:	d8069ee3          	bnez	a3,800079c8 <__kernel_rem_pio2f+0x59c>
80007c30:	002b9693          	slli	a3,s7,0x2
80007c34:	04868793          	addi	a5,a3,72
80007c38:	002786b3          	add	a3,a5,sp
80007c3c:	0006a783          	lw	a5,0(a3)
80007c40:	ffc68693          	addi	a3,a3,-4
80007c44:	fffc8c93          	addi	s9,s9,-1
80007c48:	ff870713          	addi	a4,a4,-8
80007c4c:	fe0788e3          	beqz	a5,80007c3c <__kernel_rem_pio2f+0x810>
80007c50:	8000b7b7          	lui	a5,0x8000b
80007c54:	e147a503          	lw	a0,-492(a5) # 8000ae14 <_etext>
80007c58:	00070593          	mv	a1,a4
80007c5c:	3f8000ef          	jal	80008054 <scalbnf>
80007c60:	00050413          	mv	s0,a0
80007c64:	d60cdee3          	bgez	s9,800079e0 <__kernel_rem_pio2f+0x5b4>
80007c68:	04012703          	lw	a4,64(sp)
80007c6c:	00200793          	li	a5,2
80007c70:	22e7cc63          	blt	a5,a4,80007ea8 <__kernel_rem_pio2f+0xa7c>
80007c74:	24e04463          	bgtz	a4,80007ebc <__kernel_rem_pio2f+0xa90>
80007c78:	04012783          	lw	a5,64(sp)
80007c7c:	00000513          	li	a0,0
80007c80:	e80790e3          	bnez	a5,80007b00 <__kernel_rem_pio2f+0x6d4>
80007c84:	e6090ae3          	beqz	s2,80007af8 <__kernel_rem_pio2f+0x6cc>
80007c88:	1d00006f          	j	80007e58 <__kernel_rem_pio2f+0xa2c>
80007c8c:	fffb8793          	addi	a5,s7,-1
80007c90:	00279793          	slli	a5,a5,0x2
80007c94:	05078793          	addi	a5,a5,80
80007c98:	002787b3          	add	a5,a5,sp
80007c9c:	0007a603          	lw	a2,0(a5)
80007ca0:	07f67613          	andi	a2,a2,127
80007ca4:	00c7a023          	sw	a2,0(a5)
80007ca8:	c35ff06f          	j	800078dc <__kernel_rem_pio2f+0x4b0>
80007cac:	00800793          	li	a5,8
80007cb0:	04f12223          	sw	a5,68(sp)
80007cb4:	02012623          	sw	zero,44(sp)
80007cb8:	811ff06f          	j	800074c8 <__kernel_rem_pio2f+0x9c>
80007cbc:	0f012a03          	lw	s4,240(sp)
80007cc0:	00000413          	li	s0,0
80007cc4:	00040513          	mv	a0,s0
80007cc8:	000d2583          	lw	a1,0(s10)
80007ccc:	594010ef          	jal	80009260 <__addsf3>
80007cd0:	000d0793          	mv	a5,s10
80007cd4:	ffcd0d13          	addi	s10,s10,-4
80007cd8:	fefc18e3          	bne	s8,a5,80007cc8 <__kernel_rem_pio2f+0x89c>
80007cdc:	00050413          	mv	s0,a0
80007ce0:	14091a63          	bnez	s2,80007e34 <__kernel_rem_pio2f+0xa08>
80007ce4:	000a0513          	mv	a0,s4
80007ce8:	00040593          	mv	a1,s0
80007cec:	16c020ef          	jal	80009e58 <__subsf3>
80007cf0:	03c12783          	lw	a5,60(sp)
80007cf4:	0087a023          	sw	s0,0(a5)
80007cf8:	020c8663          	beqz	s9,80007d24 <__kernel_rem_pio2f+0x8f8>
80007cfc:	0f410493          	addi	s1,sp,244
80007d00:	00100413          	li	s0,1
80007d04:	0004a583          	lw	a1,0(s1)
80007d08:	00140413          	addi	s0,s0,1
80007d0c:	00448493          	addi	s1,s1,4
80007d10:	550010ef          	jal	80009260 <__addsf3>
80007d14:	fe8cd8e3          	bge	s9,s0,80007d04 <__kernel_rem_pio2f+0x8d8>
80007d18:	00090663          	beqz	s2,80007d24 <__kernel_rem_pio2f+0x8f8>
80007d1c:	800007b7          	lui	a5,0x80000
80007d20:	00a7c533          	xor	a0,a5,a0
80007d24:	03c12783          	lw	a5,60(sp)
80007d28:	00a7a223          	sw	a0,4(a5) # 80000004 <_start+0x4>
80007d2c:	dd5ff06f          	j	80007b00 <__kernel_rem_pio2f+0x6d4>
80007d30:	04012783          	lw	a5,64(sp)
80007d34:	00300713          	li	a4,3
80007d38:	dce794e3          	bne	a5,a4,80007b00 <__kernel_rem_pio2f+0x6d4>
80007d3c:	160c8c63          	beqz	s9,80007eb4 <__kernel_rem_pio2f+0xa88>
80007d40:	01ac0ab3          	add	s5,s8,s10
80007d44:	ffcd0413          	addi	s0,s10,-4
80007d48:	000aa483          	lw	s1,0(s5)
80007d4c:	008c0433          	add	s0,s8,s0
80007d50:	00040a13          	mv	s4,s0
80007d54:	000a2b03          	lw	s6,0(s4)
80007d58:	00048513          	mv	a0,s1
80007d5c:	00048d13          	mv	s10,s1
80007d60:	000b0593          	mv	a1,s6
80007d64:	4fc010ef          	jal	80009260 <__addsf3>
80007d68:	00050493          	mv	s1,a0
80007d6c:	00048593          	mv	a1,s1
80007d70:	000b0513          	mv	a0,s6
80007d74:	0e4020ef          	jal	80009e58 <__subsf3>
80007d78:	000d0593          	mv	a1,s10
80007d7c:	4e4010ef          	jal	80009260 <__addsf3>
80007d80:	000a0b93          	mv	s7,s4
80007d84:	009a2023          	sw	s1,0(s4)
80007d88:	00aa2223          	sw	a0,4(s4)
80007d8c:	ffca0a13          	addi	s4,s4,-4
80007d90:	fd8b92e3          	bne	s7,s8,80007d54 <__kernel_rem_pio2f+0x928>
80007d94:	00100713          	li	a4,1
80007d98:	10ec8e63          	beq	s9,a4,80007eb4 <__kernel_rem_pio2f+0xa88>
80007d9c:	000aa483          	lw	s1,0(s5)
80007da0:	00042a03          	lw	s4,0(s0)
80007da4:	00048513          	mv	a0,s1
80007da8:	00048b13          	mv	s6,s1
80007dac:	000a0593          	mv	a1,s4
80007db0:	4b0010ef          	jal	80009260 <__addsf3>
80007db4:	00050493          	mv	s1,a0
80007db8:	00048593          	mv	a1,s1
80007dbc:	000a0513          	mv	a0,s4
80007dc0:	098020ef          	jal	80009e58 <__subsf3>
80007dc4:	000b0593          	mv	a1,s6
80007dc8:	498010ef          	jal	80009260 <__addsf3>
80007dcc:	00a42223          	sw	a0,4(s0)
80007dd0:	00942023          	sw	s1,0(s0)
80007dd4:	ffc40413          	addi	s0,s0,-4
80007dd8:	fc8c14e3          	bne	s8,s0,80007da0 <__kernel_rem_pio2f+0x974>
80007ddc:	004c0c13          	addi	s8,s8,4
80007de0:	00000513          	li	a0,0
80007de4:	000aa583          	lw	a1,0(s5)
80007de8:	ffca8a93          	addi	s5,s5,-4
80007dec:	474010ef          	jal	80009260 <__addsf3>
80007df0:	ff5c1ae3          	bne	s8,s5,80007de4 <__kernel_rem_pio2f+0x9b8>
80007df4:	0f012703          	lw	a4,240(sp)
80007df8:	0f412783          	lw	a5,244(sp)
80007dfc:	06091463          	bnez	s2,80007e64 <__kernel_rem_pio2f+0xa38>
80007e00:	03c12683          	lw	a3,60(sp)
80007e04:	00e6a023          	sw	a4,0(a3)
80007e08:	00f6a223          	sw	a5,4(a3)
80007e0c:	00a6a423          	sw	a0,8(a3)
80007e10:	cf1ff06f          	j	80007b00 <__kernel_rem_pio2f+0x6d4>
80007e14:	00040513          	mv	a0,s0
80007e18:	00e12623          	sw	a4,12(sp)
80007e1c:	002a0a33          	add	s4,s4,sp
80007e20:	478020ef          	jal	8000a298 <__fixsfsi>
80007e24:	00c12703          	lw	a4,12(sp)
80007e28:	000b8c93          	mv	s9,s7
80007e2c:	04aa2823          	sw	a0,80(s4)
80007e30:	b99ff06f          	j	800079c8 <__kernel_rem_pio2f+0x59c>
80007e34:	03c12783          	lw	a5,60(sp)
80007e38:	80000737          	lui	a4,0x80000
80007e3c:	00e54733          	xor	a4,a0,a4
80007e40:	00e7a023          	sw	a4,0(a5)
80007e44:	000a0513          	mv	a0,s4
80007e48:	00040593          	mv	a1,s0
80007e4c:	00c020ef          	jal	80009e58 <__subsf3>
80007e50:	ea0c96e3          	bnez	s9,80007cfc <__kernel_rem_pio2f+0x8d0>
80007e54:	ec9ff06f          	j	80007d1c <__kernel_rem_pio2f+0x8f0>
80007e58:	800007b7          	lui	a5,0x80000
80007e5c:	00a7c533          	xor	a0,a5,a0
80007e60:	c99ff06f          	j	80007af8 <__kernel_rem_pio2f+0x6cc>
80007e64:	800006b7          	lui	a3,0x80000
80007e68:	00d74733          	xor	a4,a4,a3
80007e6c:	00d7c7b3          	xor	a5,a5,a3
80007e70:	00d54533          	xor	a0,a0,a3
80007e74:	03c12683          	lw	a3,60(sp)
80007e78:	00e6a023          	sw	a4,0(a3) # 80000000 <_start>
80007e7c:	00f6a223          	sw	a5,4(a3)
80007e80:	00a6a423          	sw	a0,8(a3)
80007e84:	c7dff06f          	j	80007b00 <__kernel_rem_pio2f+0x6d4>
80007e88:	03f77713          	andi	a4,a4,63
80007e8c:	00e7a023          	sw	a4,0(a5) # 80000000 <_start>
80007e90:	01412783          	lw	a5,20(sp)
80007e94:	86f916e3          	bne	s2,a5,80007700 <__kernel_rem_pio2f+0x2d4>
80007e98:	ce5ff06f          	j	80007b7c <__kernel_rem_pio2f+0x750>
80007e9c:	07f77713          	andi	a4,a4,127
80007ea0:	00e7a023          	sw	a4,0(a5)
80007ea4:	cd1ff06f          	j	80007b74 <__kernel_rem_pio2f+0x748>
80007ea8:	04012703          	lw	a4,64(sp)
80007eac:	00300793          	li	a5,3
80007eb0:	c4f718e3          	bne	a4,a5,80007b00 <__kernel_rem_pio2f+0x6d4>
80007eb4:	00000513          	li	a0,0
80007eb8:	f3dff06f          	j	80007df4 <__kernel_rem_pio2f+0x9c8>
80007ebc:	0f012503          	lw	a0,240(sp)
80007ec0:	00090c63          	beqz	s2,80007ed8 <__kernel_rem_pio2f+0xaac>
80007ec4:	8000b7b7          	lui	a5,0x8000b
80007ec8:	e9c7a783          	lw	a5,-356(a5) # 8000ae9c <_etext+0x88>
80007ecc:	03c12703          	lw	a4,60(sp)
80007ed0:	00f72023          	sw	a5,0(a4) # 80000000 <_start>
80007ed4:	e49ff06f          	j	80007d1c <__kernel_rem_pio2f+0x8f0>
80007ed8:	03c12783          	lw	a5,60(sp)
80007edc:	00000713          	li	a4,0
80007ee0:	00e7a023          	sw	a4,0(a5)
80007ee4:	e41ff06f          	j	80007d24 <__kernel_rem_pio2f+0x8f8>

80007ee8 <floorf>:
80007ee8:	fe010113          	addi	sp,sp,-32
80007eec:	00151793          	slli	a5,a0,0x1
80007ef0:	00912a23          	sw	s1,20(sp)
80007ef4:	0187d493          	srli	s1,a5,0x18
80007ef8:	00812c23          	sw	s0,24(sp)
80007efc:	01212823          	sw	s2,16(sp)
80007f00:	00112e23          	sw	ra,28(sp)
80007f04:	01312623          	sw	s3,12(sp)
80007f08:	f8148493          	addi	s1,s1,-127
80007f0c:	01600713          	li	a4,22
80007f10:	00050413          	mv	s0,a0
80007f14:	0017d913          	srli	s2,a5,0x1
80007f18:	08974063          	blt	a4,s1,80007f98 <floorf+0xb0>
80007f1c:	01512223          	sw	s5,4(sp)
80007f20:	01412423          	sw	s4,8(sp)
80007f24:	00050a93          	mv	s5,a0
80007f28:	0a04c463          	bltz	s1,80007fd0 <floorf+0xe8>
80007f2c:	00800a37          	lui	s4,0x800
80007f30:	fffa0913          	addi	s2,s4,-1 # 7fffff <_stack_size+0x7f7fff>
80007f34:	40995933          	sra	s2,s2,s1
80007f38:	00a977b3          	and	a5,s2,a0
80007f3c:	00050993          	mv	s3,a0
80007f40:	0a078863          	beqz	a5,80007ff0 <floorf+0x108>
80007f44:	8000b7b7          	lui	a5,0x8000b
80007f48:	ea47a583          	lw	a1,-348(a5) # 8000aea4 <_etext+0x90>
80007f4c:	314010ef          	jal	80009260 <__addsf3>
80007f50:	00000593          	li	a1,0
80007f54:	319010ef          	jal	80009a6c <__gesf2>
80007f58:	08a05c63          	blez	a0,80007ff0 <floorf+0x108>
80007f5c:	00045663          	bgez	s0,80007f68 <floorf+0x80>
80007f60:	409a5a33          	sra	s4,s4,s1
80007f64:	008a0ab3          	add	s5,s4,s0
80007f68:	fff94913          	not	s2,s2
80007f6c:	015979b3          	and	s3,s2,s5
80007f70:	00812a03          	lw	s4,8(sp)
80007f74:	00412a83          	lw	s5,4(sp)
80007f78:	01c12083          	lw	ra,28(sp)
80007f7c:	01812403          	lw	s0,24(sp)
80007f80:	01412483          	lw	s1,20(sp)
80007f84:	01012903          	lw	s2,16(sp)
80007f88:	00098513          	mv	a0,s3
80007f8c:	00c12983          	lw	s3,12(sp)
80007f90:	02010113          	addi	sp,sp,32
80007f94:	00008067          	ret
80007f98:	7f8007b7          	lui	a5,0x7f800
80007f9c:	00050993          	mv	s3,a0
80007fa0:	fcf96ce3          	bltu	s2,a5,80007f78 <floorf+0x90>
80007fa4:	00050593          	mv	a1,a0
80007fa8:	2b8010ef          	jal	80009260 <__addsf3>
80007fac:	01c12083          	lw	ra,28(sp)
80007fb0:	01812403          	lw	s0,24(sp)
80007fb4:	00050993          	mv	s3,a0
80007fb8:	01412483          	lw	s1,20(sp)
80007fbc:	01012903          	lw	s2,16(sp)
80007fc0:	00098513          	mv	a0,s3
80007fc4:	00c12983          	lw	s3,12(sp)
80007fc8:	02010113          	addi	sp,sp,32
80007fcc:	00008067          	ret
80007fd0:	8000b7b7          	lui	a5,0x8000b
80007fd4:	ea47a583          	lw	a1,-348(a5) # 8000aea4 <_etext+0x90>
80007fd8:	288010ef          	jal	80009260 <__addsf3>
80007fdc:	00000593          	li	a1,0
80007fe0:	28d010ef          	jal	80009a6c <__gesf2>
80007fe4:	02a05a63          	blez	a0,80008018 <floorf+0x130>
80007fe8:	00000993          	li	s3,0
80007fec:	02044e63          	bltz	s0,80008028 <floorf+0x140>
80007ff0:	01c12083          	lw	ra,28(sp)
80007ff4:	01812403          	lw	s0,24(sp)
80007ff8:	00812a03          	lw	s4,8(sp)
80007ffc:	00412a83          	lw	s5,4(sp)
80008000:	01412483          	lw	s1,20(sp)
80008004:	01012903          	lw	s2,16(sp)
80008008:	00098513          	mv	a0,s3
8000800c:	00c12983          	lw	s3,12(sp)
80008010:	02010113          	addi	sp,sp,32
80008014:	00008067          	ret
80008018:	00812a03          	lw	s4,8(sp)
8000801c:	00412a83          	lw	s5,4(sp)
80008020:	00040993          	mv	s3,s0
80008024:	f55ff06f          	j	80007f78 <floorf+0x90>
80008028:	00091c63          	bnez	s2,80008040 <floorf+0x158>
8000802c:	8000b7b7          	lui	a5,0x8000b
80008030:	e9c7a983          	lw	s3,-356(a5) # 8000ae9c <_etext+0x88>
80008034:	00812a03          	lw	s4,8(sp)
80008038:	00412a83          	lw	s5,4(sp)
8000803c:	f3dff06f          	j	80007f78 <floorf+0x90>
80008040:	8000b7b7          	lui	a5,0x8000b
80008044:	ea07a983          	lw	s3,-352(a5) # 8000aea0 <_etext+0x8c>
80008048:	00812a03          	lw	s4,8(sp)
8000804c:	00412a83          	lw	s5,4(sp)
80008050:	f29ff06f          	j	80007f78 <floorf+0x90>

80008054 <scalbnf>:
80008054:	00151693          	slli	a3,a0,0x1
80008058:	00050793          	mv	a5,a0
8000805c:	08068c63          	beqz	a3,800080f4 <scalbnf+0xa0>
80008060:	ff010113          	addi	sp,sp,-16
80008064:	0016d713          	srli	a4,a3,0x1
80008068:	00112623          	sw	ra,12(sp)
8000806c:	7f8006b7          	lui	a3,0x7f800
80008070:	06d77863          	bgeu	a4,a3,800080e0 <scalbnf+0x8c>
80008074:	01755693          	srli	a3,a0,0x17
80008078:	00812423          	sw	s0,8(sp)
8000807c:	0ff6f693          	zext.b	a3,a3
80008080:	00058413          	mv	s0,a1
80008084:	06069a63          	bnez	a3,800080f8 <scalbnf+0xa4>
80008088:	8000b7b7          	lui	a5,0x8000b
8000808c:	ea87a583          	lw	a1,-344(a5) # 8000aea8 <_etext+0x94>
80008090:	27d010ef          	jal	80009b0c <__mulsf3>
80008094:	ffff4737          	lui	a4,0xffff4
80008098:	cb070713          	addi	a4,a4,-848 # ffff3cb0 <_stack_end+0x7fbf3cb0>
8000809c:	00050793          	mv	a5,a0
800080a0:	0ce44263          	blt	s0,a4,80008164 <scalbnf+0x110>
800080a4:	41755713          	srai	a4,a0,0x17
800080a8:	0000c6b7          	lui	a3,0xc
800080ac:	0ff77713          	zext.b	a4,a4
800080b0:	35068693          	addi	a3,a3,848 # c350 <_stack_size+0x4350>
800080b4:	fe770713          	addi	a4,a4,-25
800080b8:	0486d863          	bge	a3,s0,80008108 <scalbnf+0xb4>
800080bc:	8000b737          	lui	a4,0x8000b
800080c0:	ea472503          	lw	a0,-348(a4) # 8000aea4 <_etext+0x90>
800080c4:	0807c463          	bltz	a5,8000814c <scalbnf+0xf8>
800080c8:	ea472583          	lw	a1,-348(a4)
800080cc:	241010ef          	jal	80009b0c <__mulsf3>
800080d0:	00812403          	lw	s0,8(sp)
800080d4:	00c12083          	lw	ra,12(sp)
800080d8:	01010113          	addi	sp,sp,16
800080dc:	00008067          	ret
800080e0:	00050593          	mv	a1,a0
800080e4:	17c010ef          	jal	80009260 <__addsf3>
800080e8:	00c12083          	lw	ra,12(sp)
800080ec:	01010113          	addi	sp,sp,16
800080f0:	00008067          	ret
800080f4:	00008067          	ret
800080f8:	0000c6b7          	lui	a3,0xc
800080fc:	35068693          	addi	a3,a3,848 # c350 <_stack_size+0x4350>
80008100:	01775713          	srli	a4,a4,0x17
80008104:	fa86cce3          	blt	a3,s0,800080bc <scalbnf+0x68>
80008108:	008705b3          	add	a1,a4,s0
8000810c:	0fe00713          	li	a4,254
80008110:	fab746e3          	blt	a4,a1,800080bc <scalbnf+0x68>
80008114:	06b04263          	bgtz	a1,80008178 <scalbnf+0x124>
80008118:	fea00713          	li	a4,-22
8000811c:	06e5cc63          	blt	a1,a4,80008194 <scalbnf+0x140>
80008120:	8000b6b7          	lui	a3,0x8000b
80008124:	80800737          	lui	a4,0x80800
80008128:	01958793          	addi	a5,a1,25
8000812c:	fff70713          	addi	a4,a4,-1 # 807fffff <_stack_end+0x3fffff>
80008130:	eb86a583          	lw	a1,-328(a3) # 8000aeb8 <_etext+0xa4>
80008134:	01779793          	slli	a5,a5,0x17
80008138:	00e57533          	and	a0,a0,a4
8000813c:	00a7e533          	or	a0,a5,a0
80008140:	1cd010ef          	jal	80009b0c <__mulsf3>
80008144:	00812403          	lw	s0,8(sp)
80008148:	fa1ff06f          	j	800080e8 <scalbnf+0x94>
8000814c:	8000b7b7          	lui	a5,0x8000b
80008150:	eb07a503          	lw	a0,-336(a5) # 8000aeb0 <_etext+0x9c>
80008154:	ea472583          	lw	a1,-348(a4)
80008158:	1b5010ef          	jal	80009b0c <__mulsf3>
8000815c:	00812403          	lw	s0,8(sp)
80008160:	f75ff06f          	j	800080d4 <scalbnf+0x80>
80008164:	8000b7b7          	lui	a5,0x8000b
80008168:	eac7a583          	lw	a1,-340(a5) # 8000aeac <_etext+0x98>
8000816c:	1a1010ef          	jal	80009b0c <__mulsf3>
80008170:	00812403          	lw	s0,8(sp)
80008174:	f75ff06f          	j	800080e8 <scalbnf+0x94>
80008178:	808007b7          	lui	a5,0x80800
8000817c:	fff78793          	addi	a5,a5,-1 # 807fffff <_stack_end+0x3fffff>
80008180:	01759593          	slli	a1,a1,0x17
80008184:	00f57533          	and	a0,a0,a5
80008188:	00812403          	lw	s0,8(sp)
8000818c:	00b56533          	or	a0,a0,a1
80008190:	f59ff06f          	j	800080e8 <scalbnf+0x94>
80008194:	8000b737          	lui	a4,0x8000b
80008198:	eac72503          	lw	a0,-340(a4) # 8000aeac <_etext+0x98>
8000819c:	0007d663          	bgez	a5,800081a8 <scalbnf+0x154>
800081a0:	8000b7b7          	lui	a5,0x8000b
800081a4:	eb47a503          	lw	a0,-332(a5) # 8000aeb4 <_etext+0xa0>
800081a8:	eac72583          	lw	a1,-340(a4)
800081ac:	161010ef          	jal	80009b0c <__mulsf3>
800081b0:	00812403          	lw	s0,8(sp)
800081b4:	f35ff06f          	j	800080e8 <scalbnf+0x94>

800081b8 <__divdi3>:
800081b8:	fd010113          	addi	sp,sp,-48
800081bc:	02912223          	sw	s1,36(sp)
800081c0:	01412c23          	sw	s4,24(sp)
800081c4:	02112623          	sw	ra,44(sp)
800081c8:	02812423          	sw	s0,40(sp)
800081cc:	03212023          	sw	s2,32(sp)
800081d0:	01312e23          	sw	s3,28(sp)
800081d4:	01512a23          	sw	s5,20(sp)
800081d8:	01612823          	sw	s6,16(sp)
800081dc:	01712623          	sw	s7,12(sp)
800081e0:	01812423          	sw	s8,8(sp)
800081e4:	01912223          	sw	s9,4(sp)
800081e8:	01a12023          	sw	s10,0(sp)
800081ec:	00050a13          	mv	s4,a0
800081f0:	00000493          	li	s1,0
800081f4:	0005dc63          	bgez	a1,8000820c <__divdi3+0x54>
800081f8:	00a037b3          	snez	a5,a0
800081fc:	40b005b3          	neg	a1,a1
80008200:	40f585b3          	sub	a1,a1,a5
80008204:	40a00a33          	neg	s4,a0
80008208:	fff00493          	li	s1,-1
8000820c:	0006dc63          	bgez	a3,80008224 <__divdi3+0x6c>
80008210:	00c037b3          	snez	a5,a2
80008214:	40d006b3          	neg	a3,a3
80008218:	fff4c493          	not	s1,s1
8000821c:	40f686b3          	sub	a3,a3,a5
80008220:	40c00633          	neg	a2,a2
80008224:	00060a93          	mv	s5,a2
80008228:	000a0913          	mv	s2,s4
8000822c:	00058993          	mv	s3,a1
80008230:	38069a63          	bnez	a3,800085c4 <__divdi3+0x40c>
80008234:	8000b7b7          	lui	a5,0x8000b
80008238:	d1478793          	addi	a5,a5,-748 # 8000ad14 <__clz_tab>
8000823c:	12c5f663          	bgeu	a1,a2,80008368 <__divdi3+0x1b0>
80008240:	00010737          	lui	a4,0x10
80008244:	10e67863          	bgeu	a2,a4,80008354 <__divdi3+0x19c>
80008248:	10063713          	sltiu	a4,a2,256
8000824c:	00173713          	seqz	a4,a4
80008250:	00371713          	slli	a4,a4,0x3
80008254:	00e656b3          	srl	a3,a2,a4
80008258:	00d787b3          	add	a5,a5,a3
8000825c:	0007c783          	lbu	a5,0(a5)
80008260:	02000693          	li	a3,32
80008264:	00e787b3          	add	a5,a5,a4
80008268:	40f68733          	sub	a4,a3,a5
8000826c:	00f68c63          	beq	a3,a5,80008284 <__divdi3+0xcc>
80008270:	00e599b3          	sll	s3,a1,a4
80008274:	00fa57b3          	srl	a5,s4,a5
80008278:	00e61ab3          	sll	s5,a2,a4
8000827c:	0137e9b3          	or	s3,a5,s3
80008280:	00ea1933          	sll	s2,s4,a4
80008284:	010adb13          	srli	s6,s5,0x10
80008288:	000b0593          	mv	a1,s6
8000828c:	00098513          	mv	a0,s3
80008290:	010a9b93          	slli	s7,s5,0x10
80008294:	23c020ef          	jal	8000a4d0 <__hidden___udivsi3>
80008298:	010bdb93          	srli	s7,s7,0x10
8000829c:	00050593          	mv	a1,a0
800082a0:	00050a13          	mv	s4,a0
800082a4:	000b8513          	mv	a0,s7
800082a8:	170020ef          	jal	8000a418 <__mulsi3>
800082ac:	00050413          	mv	s0,a0
800082b0:	000b0593          	mv	a1,s6
800082b4:	00098513          	mv	a0,s3
800082b8:	260020ef          	jal	8000a518 <__umodsi3>
800082bc:	01051513          	slli	a0,a0,0x10
800082c0:	01095713          	srli	a4,s2,0x10
800082c4:	00a76733          	or	a4,a4,a0
800082c8:	000a0993          	mv	s3,s4
800082cc:	00877e63          	bgeu	a4,s0,800082e8 <__divdi3+0x130>
800082d0:	00ea8733          	add	a4,s5,a4
800082d4:	fffa0993          	addi	s3,s4,-1
800082d8:	01576863          	bltu	a4,s5,800082e8 <__divdi3+0x130>
800082dc:	00877663          	bgeu	a4,s0,800082e8 <__divdi3+0x130>
800082e0:	ffea0993          	addi	s3,s4,-2
800082e4:	01570733          	add	a4,a4,s5
800082e8:	40870433          	sub	s0,a4,s0
800082ec:	000b0593          	mv	a1,s6
800082f0:	00040513          	mv	a0,s0
800082f4:	1dc020ef          	jal	8000a4d0 <__hidden___udivsi3>
800082f8:	00050593          	mv	a1,a0
800082fc:	00050a13          	mv	s4,a0
80008300:	000b8513          	mv	a0,s7
80008304:	114020ef          	jal	8000a418 <__mulsi3>
80008308:	00050b93          	mv	s7,a0
8000830c:	000b0593          	mv	a1,s6
80008310:	00040513          	mv	a0,s0
80008314:	204020ef          	jal	8000a518 <__umodsi3>
80008318:	01091913          	slli	s2,s2,0x10
8000831c:	01051513          	slli	a0,a0,0x10
80008320:	01095913          	srli	s2,s2,0x10
80008324:	00a96933          	or	s2,s2,a0
80008328:	000a0713          	mv	a4,s4
8000832c:	01797c63          	bgeu	s2,s7,80008344 <__divdi3+0x18c>
80008330:	012a8933          	add	s2,s5,s2
80008334:	fffa0713          	addi	a4,s4,-1
80008338:	01596663          	bltu	s2,s5,80008344 <__divdi3+0x18c>
8000833c:	01797463          	bgeu	s2,s7,80008344 <__divdi3+0x18c>
80008340:	ffea0713          	addi	a4,s4,-2
80008344:	01099793          	slli	a5,s3,0x10
80008348:	00e7e7b3          	or	a5,a5,a4
8000834c:	00000993          	li	s3,0
80008350:	1200006f          	j	80008470 <__divdi3+0x2b8>
80008354:	010006b7          	lui	a3,0x1000
80008358:	01800713          	li	a4,24
8000835c:	eed67ce3          	bgeu	a2,a3,80008254 <__divdi3+0x9c>
80008360:	01000713          	li	a4,16
80008364:	ef1ff06f          	j	80008254 <__divdi3+0x9c>
80008368:	00000713          	li	a4,0
8000836c:	00060c63          	beqz	a2,80008384 <__divdi3+0x1cc>
80008370:	00010737          	lui	a4,0x10
80008374:	14e67863          	bgeu	a2,a4,800084c4 <__divdi3+0x30c>
80008378:	10063713          	sltiu	a4,a2,256
8000837c:	00173713          	seqz	a4,a4
80008380:	00371713          	slli	a4,a4,0x3
80008384:	00e656b3          	srl	a3,a2,a4
80008388:	00d787b3          	add	a5,a5,a3
8000838c:	0007c783          	lbu	a5,0(a5)
80008390:	02000693          	li	a3,32
80008394:	00e787b3          	add	a5,a5,a4
80008398:	40f68733          	sub	a4,a3,a5
8000839c:	12f69e63          	bne	a3,a5,800084d8 <__divdi3+0x320>
800083a0:	40c58a33          	sub	s4,a1,a2
800083a4:	00100993          	li	s3,1
800083a8:	010adb13          	srli	s6,s5,0x10
800083ac:	000b0593          	mv	a1,s6
800083b0:	000a0513          	mv	a0,s4
800083b4:	010a9b93          	slli	s7,s5,0x10
800083b8:	118020ef          	jal	8000a4d0 <__hidden___udivsi3>
800083bc:	010bdb93          	srli	s7,s7,0x10
800083c0:	00050593          	mv	a1,a0
800083c4:	00050c93          	mv	s9,a0
800083c8:	000b8513          	mv	a0,s7
800083cc:	04c020ef          	jal	8000a418 <__mulsi3>
800083d0:	00050c13          	mv	s8,a0
800083d4:	000b0593          	mv	a1,s6
800083d8:	000a0513          	mv	a0,s4
800083dc:	13c020ef          	jal	8000a518 <__umodsi3>
800083e0:	01051513          	slli	a0,a0,0x10
800083e4:	01095713          	srli	a4,s2,0x10
800083e8:	00a76733          	or	a4,a4,a0
800083ec:	000c8a13          	mv	s4,s9
800083f0:	01877e63          	bgeu	a4,s8,8000840c <__divdi3+0x254>
800083f4:	00ea8733          	add	a4,s5,a4
800083f8:	fffc8a13          	addi	s4,s9,-1
800083fc:	01576863          	bltu	a4,s5,8000840c <__divdi3+0x254>
80008400:	01877663          	bgeu	a4,s8,8000840c <__divdi3+0x254>
80008404:	ffec8a13          	addi	s4,s9,-2
80008408:	01570733          	add	a4,a4,s5
8000840c:	41870433          	sub	s0,a4,s8
80008410:	000b0593          	mv	a1,s6
80008414:	00040513          	mv	a0,s0
80008418:	0b8020ef          	jal	8000a4d0 <__hidden___udivsi3>
8000841c:	00050593          	mv	a1,a0
80008420:	00050c13          	mv	s8,a0
80008424:	000b8513          	mv	a0,s7
80008428:	7f1010ef          	jal	8000a418 <__mulsi3>
8000842c:	00050b93          	mv	s7,a0
80008430:	000b0593          	mv	a1,s6
80008434:	00040513          	mv	a0,s0
80008438:	0e0020ef          	jal	8000a518 <__umodsi3>
8000843c:	01091913          	slli	s2,s2,0x10
80008440:	01051513          	slli	a0,a0,0x10
80008444:	01095913          	srli	s2,s2,0x10
80008448:	00a96933          	or	s2,s2,a0
8000844c:	000c0713          	mv	a4,s8
80008450:	01797c63          	bgeu	s2,s7,80008468 <__divdi3+0x2b0>
80008454:	012a8933          	add	s2,s5,s2
80008458:	fffc0713          	addi	a4,s8,-1
8000845c:	01596663          	bltu	s2,s5,80008468 <__divdi3+0x2b0>
80008460:	01797463          	bgeu	s2,s7,80008468 <__divdi3+0x2b0>
80008464:	ffec0713          	addi	a4,s8,-2
80008468:	010a1793          	slli	a5,s4,0x10
8000846c:	00e7e7b3          	or	a5,a5,a4
80008470:	00078513          	mv	a0,a5
80008474:	00098593          	mv	a1,s3
80008478:	00048a63          	beqz	s1,8000848c <__divdi3+0x2d4>
8000847c:	00f037b3          	snez	a5,a5
80008480:	413005b3          	neg	a1,s3
80008484:	40f585b3          	sub	a1,a1,a5
80008488:	40a00533          	neg	a0,a0
8000848c:	02c12083          	lw	ra,44(sp)
80008490:	02812403          	lw	s0,40(sp)
80008494:	02412483          	lw	s1,36(sp)
80008498:	02012903          	lw	s2,32(sp)
8000849c:	01c12983          	lw	s3,28(sp)
800084a0:	01812a03          	lw	s4,24(sp)
800084a4:	01412a83          	lw	s5,20(sp)
800084a8:	01012b03          	lw	s6,16(sp)
800084ac:	00c12b83          	lw	s7,12(sp)
800084b0:	00812c03          	lw	s8,8(sp)
800084b4:	00412c83          	lw	s9,4(sp)
800084b8:	00012d03          	lw	s10,0(sp)
800084bc:	03010113          	addi	sp,sp,48
800084c0:	00008067          	ret
800084c4:	010006b7          	lui	a3,0x1000
800084c8:	01800713          	li	a4,24
800084cc:	ead67ce3          	bgeu	a2,a3,80008384 <__divdi3+0x1cc>
800084d0:	01000713          	li	a4,16
800084d4:	eb1ff06f          	j	80008384 <__divdi3+0x1cc>
800084d8:	00e61ab3          	sll	s5,a2,a4
800084dc:	00f5d9b3          	srl	s3,a1,a5
800084e0:	010adb93          	srli	s7,s5,0x10
800084e4:	00e595b3          	sll	a1,a1,a4
800084e8:	00fa57b3          	srl	a5,s4,a5
800084ec:	00b7eb33          	or	s6,a5,a1
800084f0:	00ea1933          	sll	s2,s4,a4
800084f4:	000b8593          	mv	a1,s7
800084f8:	00098513          	mv	a0,s3
800084fc:	010a9a13          	slli	s4,s5,0x10
80008500:	7d1010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008504:	010a5a13          	srli	s4,s4,0x10
80008508:	00050593          	mv	a1,a0
8000850c:	00050c13          	mv	s8,a0
80008510:	000a0513          	mv	a0,s4
80008514:	705010ef          	jal	8000a418 <__mulsi3>
80008518:	00050413          	mv	s0,a0
8000851c:	000b8593          	mv	a1,s7
80008520:	00098513          	mv	a0,s3
80008524:	7f5010ef          	jal	8000a518 <__umodsi3>
80008528:	01051513          	slli	a0,a0,0x10
8000852c:	010b5713          	srli	a4,s6,0x10
80008530:	00a76733          	or	a4,a4,a0
80008534:	000c0993          	mv	s3,s8
80008538:	00877e63          	bgeu	a4,s0,80008554 <__divdi3+0x39c>
8000853c:	00ea8733          	add	a4,s5,a4
80008540:	fffc0993          	addi	s3,s8,-1
80008544:	01576863          	bltu	a4,s5,80008554 <__divdi3+0x39c>
80008548:	00877663          	bgeu	a4,s0,80008554 <__divdi3+0x39c>
8000854c:	ffec0993          	addi	s3,s8,-2
80008550:	01570733          	add	a4,a4,s5
80008554:	40870433          	sub	s0,a4,s0
80008558:	000b8593          	mv	a1,s7
8000855c:	00040513          	mv	a0,s0
80008560:	771010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008564:	00050593          	mv	a1,a0
80008568:	00050c13          	mv	s8,a0
8000856c:	000a0513          	mv	a0,s4
80008570:	6a9010ef          	jal	8000a418 <__mulsi3>
80008574:	00050a13          	mv	s4,a0
80008578:	000b8593          	mv	a1,s7
8000857c:	00040513          	mv	a0,s0
80008580:	799010ef          	jal	8000a518 <__umodsi3>
80008584:	010b1793          	slli	a5,s6,0x10
80008588:	01051513          	slli	a0,a0,0x10
8000858c:	0107d793          	srli	a5,a5,0x10
80008590:	00a7e7b3          	or	a5,a5,a0
80008594:	000c0713          	mv	a4,s8
80008598:	0147fe63          	bgeu	a5,s4,800085b4 <__divdi3+0x3fc>
8000859c:	00fa87b3          	add	a5,s5,a5
800085a0:	fffc0713          	addi	a4,s8,-1
800085a4:	0157e863          	bltu	a5,s5,800085b4 <__divdi3+0x3fc>
800085a8:	0147f663          	bgeu	a5,s4,800085b4 <__divdi3+0x3fc>
800085ac:	ffec0713          	addi	a4,s8,-2
800085b0:	015787b3          	add	a5,a5,s5
800085b4:	01099993          	slli	s3,s3,0x10
800085b8:	41478a33          	sub	s4,a5,s4
800085bc:	00e9e9b3          	or	s3,s3,a4
800085c0:	de9ff06f          	j	800083a8 <__divdi3+0x1f0>
800085c4:	1ed5ec63          	bltu	a1,a3,800087bc <__divdi3+0x604>
800085c8:	000107b7          	lui	a5,0x10
800085cc:	04f6f463          	bgeu	a3,a5,80008614 <__divdi3+0x45c>
800085d0:	1006b713          	sltiu	a4,a3,256
800085d4:	00173713          	seqz	a4,a4
800085d8:	00371713          	slli	a4,a4,0x3
800085dc:	8000b7b7          	lui	a5,0x8000b
800085e0:	00e6d533          	srl	a0,a3,a4
800085e4:	d1478793          	addi	a5,a5,-748 # 8000ad14 <__clz_tab>
800085e8:	00a787b3          	add	a5,a5,a0
800085ec:	0007c803          	lbu	a6,0(a5)
800085f0:	02000793          	li	a5,32
800085f4:	00e80833          	add	a6,a6,a4
800085f8:	410789b3          	sub	s3,a5,a6
800085fc:	03079663          	bne	a5,a6,80008628 <__divdi3+0x470>
80008600:	00100793          	li	a5,1
80008604:	e6b6e6e3          	bltu	a3,a1,80008470 <__divdi3+0x2b8>
80008608:	00ca37b3          	sltu	a5,s4,a2
8000860c:	0017b793          	seqz	a5,a5
80008610:	e61ff06f          	j	80008470 <__divdi3+0x2b8>
80008614:	010007b7          	lui	a5,0x1000
80008618:	01800713          	li	a4,24
8000861c:	fcf6f0e3          	bgeu	a3,a5,800085dc <__divdi3+0x424>
80008620:	01000713          	li	a4,16
80008624:	fb9ff06f          	j	800085dc <__divdi3+0x424>
80008628:	013696b3          	sll	a3,a3,s3
8000862c:	01065cb3          	srl	s9,a2,a6
80008630:	00dcecb3          	or	s9,s9,a3
80008634:	0105d933          	srl	s2,a1,a6
80008638:	010cdb93          	srli	s7,s9,0x10
8000863c:	010a5833          	srl	a6,s4,a6
80008640:	013595b3          	sll	a1,a1,s3
80008644:	00b86ab3          	or	s5,a6,a1
80008648:	00090513          	mv	a0,s2
8000864c:	000b8593          	mv	a1,s7
80008650:	010c9c13          	slli	s8,s9,0x10
80008654:	01361433          	sll	s0,a2,s3
80008658:	010c5c13          	srli	s8,s8,0x10
8000865c:	675010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008660:	00050593          	mv	a1,a0
80008664:	00050d13          	mv	s10,a0
80008668:	000c0513          	mv	a0,s8
8000866c:	5ad010ef          	jal	8000a418 <__mulsi3>
80008670:	00050b13          	mv	s6,a0
80008674:	000b8593          	mv	a1,s7
80008678:	00090513          	mv	a0,s2
8000867c:	69d010ef          	jal	8000a518 <__umodsi3>
80008680:	01051513          	slli	a0,a0,0x10
80008684:	010ad693          	srli	a3,s5,0x10
80008688:	00a6e6b3          	or	a3,a3,a0
8000868c:	000d0913          	mv	s2,s10
80008690:	0166fe63          	bgeu	a3,s6,800086ac <__divdi3+0x4f4>
80008694:	00dc86b3          	add	a3,s9,a3
80008698:	fffd0913          	addi	s2,s10,-1
8000869c:	0196e863          	bltu	a3,s9,800086ac <__divdi3+0x4f4>
800086a0:	0166f663          	bgeu	a3,s6,800086ac <__divdi3+0x4f4>
800086a4:	ffed0913          	addi	s2,s10,-2
800086a8:	019686b3          	add	a3,a3,s9
800086ac:	41668b33          	sub	s6,a3,s6
800086b0:	000b8593          	mv	a1,s7
800086b4:	000b0513          	mv	a0,s6
800086b8:	619010ef          	jal	8000a4d0 <__hidden___udivsi3>
800086bc:	00050593          	mv	a1,a0
800086c0:	00050d13          	mv	s10,a0
800086c4:	000c0513          	mv	a0,s8
800086c8:	551010ef          	jal	8000a418 <__mulsi3>
800086cc:	00050c13          	mv	s8,a0
800086d0:	000b8593          	mv	a1,s7
800086d4:	000b0513          	mv	a0,s6
800086d8:	641010ef          	jal	8000a518 <__umodsi3>
800086dc:	010a9713          	slli	a4,s5,0x10
800086e0:	01051513          	slli	a0,a0,0x10
800086e4:	01075713          	srli	a4,a4,0x10
800086e8:	00a76733          	or	a4,a4,a0
800086ec:	000d0693          	mv	a3,s10
800086f0:	01877e63          	bgeu	a4,s8,8000870c <__divdi3+0x554>
800086f4:	00ec8733          	add	a4,s9,a4
800086f8:	fffd0693          	addi	a3,s10,-1
800086fc:	01976863          	bltu	a4,s9,8000870c <__divdi3+0x554>
80008700:	01877663          	bgeu	a4,s8,8000870c <__divdi3+0x554>
80008704:	ffed0693          	addi	a3,s10,-2
80008708:	01970733          	add	a4,a4,s9
8000870c:	01091793          	slli	a5,s2,0x10
80008710:	01069813          	slli	a6,a3,0x10
80008714:	01041313          	slli	t1,s0,0x10
80008718:	00d7e7b3          	or	a5,a5,a3
8000871c:	01085813          	srli	a6,a6,0x10
80008720:	01035313          	srli	t1,t1,0x10
80008724:	41870733          	sub	a4,a4,s8
80008728:	0107de13          	srli	t3,a5,0x10
8000872c:	01045413          	srli	s0,s0,0x10
80008730:	00080513          	mv	a0,a6
80008734:	00030593          	mv	a1,t1
80008738:	4e1010ef          	jal	8000a418 <__mulsi3>
8000873c:	00050893          	mv	a7,a0
80008740:	00040593          	mv	a1,s0
80008744:	00080513          	mv	a0,a6
80008748:	4d1010ef          	jal	8000a418 <__mulsi3>
8000874c:	00050813          	mv	a6,a0
80008750:	00030593          	mv	a1,t1
80008754:	000e0513          	mv	a0,t3
80008758:	4c1010ef          	jal	8000a418 <__mulsi3>
8000875c:	00050313          	mv	t1,a0
80008760:	00040593          	mv	a1,s0
80008764:	000e0513          	mv	a0,t3
80008768:	4b1010ef          	jal	8000a418 <__mulsi3>
8000876c:	0108d693          	srli	a3,a7,0x10
80008770:	00680833          	add	a6,a6,t1
80008774:	010686b3          	add	a3,a3,a6
80008778:	00050613          	mv	a2,a0
8000877c:	0066f663          	bgeu	a3,t1,80008788 <__divdi3+0x5d0>
80008780:	000105b7          	lui	a1,0x10
80008784:	00b50633          	add	a2,a0,a1
80008788:	0106d593          	srli	a1,a3,0x10
8000878c:	00c58633          	add	a2,a1,a2
80008790:	02c76263          	bltu	a4,a2,800087b4 <__divdi3+0x5fc>
80008794:	bac71ce3          	bne	a4,a2,8000834c <__divdi3+0x194>
80008798:	01089893          	slli	a7,a7,0x10
8000879c:	01069693          	slli	a3,a3,0x10
800087a0:	0108d893          	srli	a7,a7,0x10
800087a4:	013a1733          	sll	a4,s4,s3
800087a8:	011686b3          	add	a3,a3,a7
800087ac:	00000993          	li	s3,0
800087b0:	ccd770e3          	bgeu	a4,a3,80008470 <__divdi3+0x2b8>
800087b4:	fff78793          	addi	a5,a5,-1 # ffffff <_stack_size+0xff7fff>
800087b8:	b95ff06f          	j	8000834c <__divdi3+0x194>
800087bc:	00000993          	li	s3,0
800087c0:	00000793          	li	a5,0
800087c4:	cadff06f          	j	80008470 <__divdi3+0x2b8>

800087c8 <__udivdi3>:
800087c8:	fd010113          	addi	sp,sp,-48
800087cc:	01412c23          	sw	s4,24(sp)
800087d0:	02112623          	sw	ra,44(sp)
800087d4:	02812423          	sw	s0,40(sp)
800087d8:	02912223          	sw	s1,36(sp)
800087dc:	03212023          	sw	s2,32(sp)
800087e0:	01312e23          	sw	s3,28(sp)
800087e4:	01512a23          	sw	s5,20(sp)
800087e8:	01612823          	sw	s6,16(sp)
800087ec:	01712623          	sw	s7,12(sp)
800087f0:	01812423          	sw	s8,8(sp)
800087f4:	01912223          	sw	s9,4(sp)
800087f8:	01a12023          	sw	s10,0(sp)
800087fc:	00050a13          	mv	s4,a0
80008800:	38069663          	bnez	a3,80008b8c <__udivdi3+0x3c4>
80008804:	8000b7b7          	lui	a5,0x8000b
80008808:	00060993          	mv	s3,a2
8000880c:	00050493          	mv	s1,a0
80008810:	d1478793          	addi	a5,a5,-748 # 8000ad14 <__clz_tab>
80008814:	12c5f863          	bgeu	a1,a2,80008944 <__udivdi3+0x17c>
80008818:	00010737          	lui	a4,0x10
8000881c:	00058913          	mv	s2,a1
80008820:	10e67863          	bgeu	a2,a4,80008930 <__udivdi3+0x168>
80008824:	10063713          	sltiu	a4,a2,256
80008828:	00173713          	seqz	a4,a4
8000882c:	00371713          	slli	a4,a4,0x3
80008830:	00e656b3          	srl	a3,a2,a4
80008834:	00d787b3          	add	a5,a5,a3
80008838:	0007c783          	lbu	a5,0(a5)
8000883c:	02000693          	li	a3,32
80008840:	00e787b3          	add	a5,a5,a4
80008844:	40f68733          	sub	a4,a3,a5
80008848:	00f68c63          	beq	a3,a5,80008860 <__udivdi3+0x98>
8000884c:	00e59933          	sll	s2,a1,a4
80008850:	00fa57b3          	srl	a5,s4,a5
80008854:	00e619b3          	sll	s3,a2,a4
80008858:	0127e933          	or	s2,a5,s2
8000885c:	00ea14b3          	sll	s1,s4,a4
80008860:	0109da93          	srli	s5,s3,0x10
80008864:	000a8593          	mv	a1,s5
80008868:	00090513          	mv	a0,s2
8000886c:	01099b13          	slli	s6,s3,0x10
80008870:	461010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008874:	010b5b13          	srli	s6,s6,0x10
80008878:	00050593          	mv	a1,a0
8000887c:	00050a13          	mv	s4,a0
80008880:	000b0513          	mv	a0,s6
80008884:	395010ef          	jal	8000a418 <__mulsi3>
80008888:	00050413          	mv	s0,a0
8000888c:	000a8593          	mv	a1,s5
80008890:	00090513          	mv	a0,s2
80008894:	485010ef          	jal	8000a518 <__umodsi3>
80008898:	01051513          	slli	a0,a0,0x10
8000889c:	0104d713          	srli	a4,s1,0x10
800088a0:	00a76733          	or	a4,a4,a0
800088a4:	000a0913          	mv	s2,s4
800088a8:	00877e63          	bgeu	a4,s0,800088c4 <__udivdi3+0xfc>
800088ac:	00e98733          	add	a4,s3,a4
800088b0:	fffa0913          	addi	s2,s4,-1
800088b4:	01376863          	bltu	a4,s3,800088c4 <__udivdi3+0xfc>
800088b8:	00877663          	bgeu	a4,s0,800088c4 <__udivdi3+0xfc>
800088bc:	ffea0913          	addi	s2,s4,-2
800088c0:	01370733          	add	a4,a4,s3
800088c4:	40870433          	sub	s0,a4,s0
800088c8:	000a8593          	mv	a1,s5
800088cc:	00040513          	mv	a0,s0
800088d0:	401010ef          	jal	8000a4d0 <__hidden___udivsi3>
800088d4:	00050593          	mv	a1,a0
800088d8:	00050a13          	mv	s4,a0
800088dc:	000b0513          	mv	a0,s6
800088e0:	339010ef          	jal	8000a418 <__mulsi3>
800088e4:	00050b13          	mv	s6,a0
800088e8:	000a8593          	mv	a1,s5
800088ec:	00040513          	mv	a0,s0
800088f0:	429010ef          	jal	8000a518 <__umodsi3>
800088f4:	01049493          	slli	s1,s1,0x10
800088f8:	01051513          	slli	a0,a0,0x10
800088fc:	0104d493          	srli	s1,s1,0x10
80008900:	00a4e4b3          	or	s1,s1,a0
80008904:	000a0713          	mv	a4,s4
80008908:	0164fc63          	bgeu	s1,s6,80008920 <__udivdi3+0x158>
8000890c:	009984b3          	add	s1,s3,s1
80008910:	fffa0713          	addi	a4,s4,-1
80008914:	0134e663          	bltu	s1,s3,80008920 <__udivdi3+0x158>
80008918:	0164f463          	bgeu	s1,s6,80008920 <__udivdi3+0x158>
8000891c:	ffea0713          	addi	a4,s4,-2
80008920:	01091793          	slli	a5,s2,0x10
80008924:	00e7e7b3          	or	a5,a5,a4
80008928:	00000913          	li	s2,0
8000892c:	1200006f          	j	80008a4c <__udivdi3+0x284>
80008930:	010006b7          	lui	a3,0x1000
80008934:	01800713          	li	a4,24
80008938:	eed67ce3          	bgeu	a2,a3,80008830 <__udivdi3+0x68>
8000893c:	01000713          	li	a4,16
80008940:	ef1ff06f          	j	80008830 <__udivdi3+0x68>
80008944:	00000713          	li	a4,0
80008948:	00060c63          	beqz	a2,80008960 <__udivdi3+0x198>
8000894c:	00010737          	lui	a4,0x10
80008950:	12e67e63          	bgeu	a2,a4,80008a8c <__udivdi3+0x2c4>
80008954:	10063713          	sltiu	a4,a2,256
80008958:	00173713          	seqz	a4,a4
8000895c:	00371713          	slli	a4,a4,0x3
80008960:	00e656b3          	srl	a3,a2,a4
80008964:	00d787b3          	add	a5,a5,a3
80008968:	0007c783          	lbu	a5,0(a5)
8000896c:	02000693          	li	a3,32
80008970:	00e787b3          	add	a5,a5,a4
80008974:	40f68733          	sub	a4,a3,a5
80008978:	12f69463          	bne	a3,a5,80008aa0 <__udivdi3+0x2d8>
8000897c:	40c58a33          	sub	s4,a1,a2
80008980:	00100913          	li	s2,1
80008984:	0109db13          	srli	s6,s3,0x10
80008988:	000b0593          	mv	a1,s6
8000898c:	000a0513          	mv	a0,s4
80008990:	01099b93          	slli	s7,s3,0x10
80008994:	33d010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008998:	010bdb93          	srli	s7,s7,0x10
8000899c:	00050593          	mv	a1,a0
800089a0:	00050c13          	mv	s8,a0
800089a4:	000b8513          	mv	a0,s7
800089a8:	271010ef          	jal	8000a418 <__mulsi3>
800089ac:	00050a93          	mv	s5,a0
800089b0:	000b0593          	mv	a1,s6
800089b4:	000a0513          	mv	a0,s4
800089b8:	361010ef          	jal	8000a518 <__umodsi3>
800089bc:	01051513          	slli	a0,a0,0x10
800089c0:	0104d713          	srli	a4,s1,0x10
800089c4:	00a76733          	or	a4,a4,a0
800089c8:	000c0a13          	mv	s4,s8
800089cc:	01577e63          	bgeu	a4,s5,800089e8 <__udivdi3+0x220>
800089d0:	00e98733          	add	a4,s3,a4
800089d4:	fffc0a13          	addi	s4,s8,-1
800089d8:	01376863          	bltu	a4,s3,800089e8 <__udivdi3+0x220>
800089dc:	01577663          	bgeu	a4,s5,800089e8 <__udivdi3+0x220>
800089e0:	ffec0a13          	addi	s4,s8,-2
800089e4:	01370733          	add	a4,a4,s3
800089e8:	41570433          	sub	s0,a4,s5
800089ec:	000b0593          	mv	a1,s6
800089f0:	00040513          	mv	a0,s0
800089f4:	2dd010ef          	jal	8000a4d0 <__hidden___udivsi3>
800089f8:	00050593          	mv	a1,a0
800089fc:	00050a93          	mv	s5,a0
80008a00:	000b8513          	mv	a0,s7
80008a04:	215010ef          	jal	8000a418 <__mulsi3>
80008a08:	00050b93          	mv	s7,a0
80008a0c:	000b0593          	mv	a1,s6
80008a10:	00040513          	mv	a0,s0
80008a14:	305010ef          	jal	8000a518 <__umodsi3>
80008a18:	01049493          	slli	s1,s1,0x10
80008a1c:	01051513          	slli	a0,a0,0x10
80008a20:	0104d493          	srli	s1,s1,0x10
80008a24:	00a4e4b3          	or	s1,s1,a0
80008a28:	000a8713          	mv	a4,s5
80008a2c:	0174fc63          	bgeu	s1,s7,80008a44 <__udivdi3+0x27c>
80008a30:	009984b3          	add	s1,s3,s1
80008a34:	fffa8713          	addi	a4,s5,-1
80008a38:	0134e663          	bltu	s1,s3,80008a44 <__udivdi3+0x27c>
80008a3c:	0174f463          	bgeu	s1,s7,80008a44 <__udivdi3+0x27c>
80008a40:	ffea8713          	addi	a4,s5,-2
80008a44:	010a1793          	slli	a5,s4,0x10
80008a48:	00e7e7b3          	or	a5,a5,a4
80008a4c:	02c12083          	lw	ra,44(sp)
80008a50:	02812403          	lw	s0,40(sp)
80008a54:	02412483          	lw	s1,36(sp)
80008a58:	01c12983          	lw	s3,28(sp)
80008a5c:	01812a03          	lw	s4,24(sp)
80008a60:	01412a83          	lw	s5,20(sp)
80008a64:	01012b03          	lw	s6,16(sp)
80008a68:	00c12b83          	lw	s7,12(sp)
80008a6c:	00812c03          	lw	s8,8(sp)
80008a70:	00412c83          	lw	s9,4(sp)
80008a74:	00012d03          	lw	s10,0(sp)
80008a78:	00090593          	mv	a1,s2
80008a7c:	00078513          	mv	a0,a5
80008a80:	02012903          	lw	s2,32(sp)
80008a84:	03010113          	addi	sp,sp,48
80008a88:	00008067          	ret
80008a8c:	010006b7          	lui	a3,0x1000
80008a90:	01800713          	li	a4,24
80008a94:	ecd676e3          	bgeu	a2,a3,80008960 <__udivdi3+0x198>
80008a98:	01000713          	li	a4,16
80008a9c:	ec5ff06f          	j	80008960 <__udivdi3+0x198>
80008aa0:	00e619b3          	sll	s3,a2,a4
80008aa4:	00f5d933          	srl	s2,a1,a5
80008aa8:	0109db93          	srli	s7,s3,0x10
80008aac:	00e595b3          	sll	a1,a1,a4
80008ab0:	00fa57b3          	srl	a5,s4,a5
80008ab4:	00b7eab3          	or	s5,a5,a1
80008ab8:	00ea14b3          	sll	s1,s4,a4
80008abc:	000b8593          	mv	a1,s7
80008ac0:	00090513          	mv	a0,s2
80008ac4:	01099a13          	slli	s4,s3,0x10
80008ac8:	209010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008acc:	010a5a13          	srli	s4,s4,0x10
80008ad0:	00050593          	mv	a1,a0
80008ad4:	00050b13          	mv	s6,a0
80008ad8:	000a0513          	mv	a0,s4
80008adc:	13d010ef          	jal	8000a418 <__mulsi3>
80008ae0:	00050413          	mv	s0,a0
80008ae4:	000b8593          	mv	a1,s7
80008ae8:	00090513          	mv	a0,s2
80008aec:	22d010ef          	jal	8000a518 <__umodsi3>
80008af0:	01051513          	slli	a0,a0,0x10
80008af4:	010ad713          	srli	a4,s5,0x10
80008af8:	00a76733          	or	a4,a4,a0
80008afc:	000b0913          	mv	s2,s6
80008b00:	00877e63          	bgeu	a4,s0,80008b1c <__udivdi3+0x354>
80008b04:	00e98733          	add	a4,s3,a4
80008b08:	fffb0913          	addi	s2,s6,-1
80008b0c:	01376863          	bltu	a4,s3,80008b1c <__udivdi3+0x354>
80008b10:	00877663          	bgeu	a4,s0,80008b1c <__udivdi3+0x354>
80008b14:	ffeb0913          	addi	s2,s6,-2
80008b18:	01370733          	add	a4,a4,s3
80008b1c:	40870433          	sub	s0,a4,s0
80008b20:	000b8593          	mv	a1,s7
80008b24:	00040513          	mv	a0,s0
80008b28:	1a9010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008b2c:	00050593          	mv	a1,a0
80008b30:	00050b13          	mv	s6,a0
80008b34:	000a0513          	mv	a0,s4
80008b38:	0e1010ef          	jal	8000a418 <__mulsi3>
80008b3c:	00050a13          	mv	s4,a0
80008b40:	000b8593          	mv	a1,s7
80008b44:	00040513          	mv	a0,s0
80008b48:	1d1010ef          	jal	8000a518 <__umodsi3>
80008b4c:	010a9793          	slli	a5,s5,0x10
80008b50:	01051513          	slli	a0,a0,0x10
80008b54:	0107d793          	srli	a5,a5,0x10
80008b58:	00a7e7b3          	or	a5,a5,a0
80008b5c:	000b0713          	mv	a4,s6
80008b60:	0147fe63          	bgeu	a5,s4,80008b7c <__udivdi3+0x3b4>
80008b64:	00f987b3          	add	a5,s3,a5
80008b68:	fffb0713          	addi	a4,s6,-1
80008b6c:	0137e863          	bltu	a5,s3,80008b7c <__udivdi3+0x3b4>
80008b70:	0147f663          	bgeu	a5,s4,80008b7c <__udivdi3+0x3b4>
80008b74:	ffeb0713          	addi	a4,s6,-2
80008b78:	013787b3          	add	a5,a5,s3
80008b7c:	01091913          	slli	s2,s2,0x10
80008b80:	41478a33          	sub	s4,a5,s4
80008b84:	00e96933          	or	s2,s2,a4
80008b88:	dfdff06f          	j	80008984 <__udivdi3+0x1bc>
80008b8c:	1ed5ec63          	bltu	a1,a3,80008d84 <__udivdi3+0x5bc>
80008b90:	000107b7          	lui	a5,0x10
80008b94:	04f6f463          	bgeu	a3,a5,80008bdc <__udivdi3+0x414>
80008b98:	1006b713          	sltiu	a4,a3,256
80008b9c:	00173713          	seqz	a4,a4
80008ba0:	00371713          	slli	a4,a4,0x3
80008ba4:	8000b7b7          	lui	a5,0x8000b
80008ba8:	00e6d533          	srl	a0,a3,a4
80008bac:	d1478793          	addi	a5,a5,-748 # 8000ad14 <__clz_tab>
80008bb0:	00a787b3          	add	a5,a5,a0
80008bb4:	0007c803          	lbu	a6,0(a5)
80008bb8:	02000793          	li	a5,32
80008bbc:	00e80833          	add	a6,a6,a4
80008bc0:	41078933          	sub	s2,a5,a6
80008bc4:	03079663          	bne	a5,a6,80008bf0 <__udivdi3+0x428>
80008bc8:	00100793          	li	a5,1
80008bcc:	e8b6e0e3          	bltu	a3,a1,80008a4c <__udivdi3+0x284>
80008bd0:	00ca37b3          	sltu	a5,s4,a2
80008bd4:	0017b793          	seqz	a5,a5
80008bd8:	e75ff06f          	j	80008a4c <__udivdi3+0x284>
80008bdc:	010007b7          	lui	a5,0x1000
80008be0:	01800713          	li	a4,24
80008be4:	fcf6f0e3          	bgeu	a3,a5,80008ba4 <__udivdi3+0x3dc>
80008be8:	01000713          	li	a4,16
80008bec:	fb9ff06f          	j	80008ba4 <__udivdi3+0x3dc>
80008bf0:	012696b3          	sll	a3,a3,s2
80008bf4:	01065ab3          	srl	s5,a2,a6
80008bf8:	00daeab3          	or	s5,s5,a3
80008bfc:	0105d9b3          	srl	s3,a1,a6
80008c00:	010adc13          	srli	s8,s5,0x10
80008c04:	010a5833          	srl	a6,s4,a6
80008c08:	012595b3          	sll	a1,a1,s2
80008c0c:	00b864b3          	or	s1,a6,a1
80008c10:	010a9b93          	slli	s7,s5,0x10
80008c14:	000c0593          	mv	a1,s8
80008c18:	00098513          	mv	a0,s3
80008c1c:	01261433          	sll	s0,a2,s2
80008c20:	010bdb93          	srli	s7,s7,0x10
80008c24:	0ad010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008c28:	00050593          	mv	a1,a0
80008c2c:	00050d13          	mv	s10,a0
80008c30:	000b8513          	mv	a0,s7
80008c34:	7e4010ef          	jal	8000a418 <__mulsi3>
80008c38:	00050c93          	mv	s9,a0
80008c3c:	000c0593          	mv	a1,s8
80008c40:	00098513          	mv	a0,s3
80008c44:	0d5010ef          	jal	8000a518 <__umodsi3>
80008c48:	01051513          	slli	a0,a0,0x10
80008c4c:	0104d693          	srli	a3,s1,0x10
80008c50:	00a6e6b3          	or	a3,a3,a0
80008c54:	000d0b13          	mv	s6,s10
80008c58:	0196fe63          	bgeu	a3,s9,80008c74 <__udivdi3+0x4ac>
80008c5c:	00da86b3          	add	a3,s5,a3
80008c60:	fffd0b13          	addi	s6,s10,-1
80008c64:	0156e863          	bltu	a3,s5,80008c74 <__udivdi3+0x4ac>
80008c68:	0196f663          	bgeu	a3,s9,80008c74 <__udivdi3+0x4ac>
80008c6c:	ffed0b13          	addi	s6,s10,-2
80008c70:	015686b3          	add	a3,a3,s5
80008c74:	419689b3          	sub	s3,a3,s9
80008c78:	000c0593          	mv	a1,s8
80008c7c:	00098513          	mv	a0,s3
80008c80:	051010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008c84:	00050593          	mv	a1,a0
80008c88:	00050c93          	mv	s9,a0
80008c8c:	000b8513          	mv	a0,s7
80008c90:	788010ef          	jal	8000a418 <__mulsi3>
80008c94:	00050b93          	mv	s7,a0
80008c98:	000c0593          	mv	a1,s8
80008c9c:	00098513          	mv	a0,s3
80008ca0:	079010ef          	jal	8000a518 <__umodsi3>
80008ca4:	01049713          	slli	a4,s1,0x10
80008ca8:	01051513          	slli	a0,a0,0x10
80008cac:	01075713          	srli	a4,a4,0x10
80008cb0:	00a76733          	or	a4,a4,a0
80008cb4:	000c8693          	mv	a3,s9
80008cb8:	01777e63          	bgeu	a4,s7,80008cd4 <__udivdi3+0x50c>
80008cbc:	00ea8733          	add	a4,s5,a4
80008cc0:	fffc8693          	addi	a3,s9,-1
80008cc4:	01576863          	bltu	a4,s5,80008cd4 <__udivdi3+0x50c>
80008cc8:	01777663          	bgeu	a4,s7,80008cd4 <__udivdi3+0x50c>
80008ccc:	ffec8693          	addi	a3,s9,-2
80008cd0:	01570733          	add	a4,a4,s5
80008cd4:	010b1793          	slli	a5,s6,0x10
80008cd8:	01069813          	slli	a6,a3,0x10
80008cdc:	01041313          	slli	t1,s0,0x10
80008ce0:	00d7e7b3          	or	a5,a5,a3
80008ce4:	01085813          	srli	a6,a6,0x10
80008ce8:	01035313          	srli	t1,t1,0x10
80008cec:	41770733          	sub	a4,a4,s7
80008cf0:	0107de13          	srli	t3,a5,0x10
80008cf4:	01045413          	srli	s0,s0,0x10
80008cf8:	00080513          	mv	a0,a6
80008cfc:	00030593          	mv	a1,t1
80008d00:	718010ef          	jal	8000a418 <__mulsi3>
80008d04:	00050893          	mv	a7,a0
80008d08:	00040593          	mv	a1,s0
80008d0c:	00080513          	mv	a0,a6
80008d10:	708010ef          	jal	8000a418 <__mulsi3>
80008d14:	00050813          	mv	a6,a0
80008d18:	00030593          	mv	a1,t1
80008d1c:	000e0513          	mv	a0,t3
80008d20:	6f8010ef          	jal	8000a418 <__mulsi3>
80008d24:	00050313          	mv	t1,a0
80008d28:	00040593          	mv	a1,s0
80008d2c:	000e0513          	mv	a0,t3
80008d30:	6e8010ef          	jal	8000a418 <__mulsi3>
80008d34:	0108d693          	srli	a3,a7,0x10
80008d38:	00680833          	add	a6,a6,t1
80008d3c:	010686b3          	add	a3,a3,a6
80008d40:	00050613          	mv	a2,a0
80008d44:	0066f663          	bgeu	a3,t1,80008d50 <__udivdi3+0x588>
80008d48:	000105b7          	lui	a1,0x10
80008d4c:	00b50633          	add	a2,a0,a1
80008d50:	0106d593          	srli	a1,a3,0x10
80008d54:	00c58633          	add	a2,a1,a2
80008d58:	02c76263          	bltu	a4,a2,80008d7c <__udivdi3+0x5b4>
80008d5c:	bcc716e3          	bne	a4,a2,80008928 <__udivdi3+0x160>
80008d60:	01089893          	slli	a7,a7,0x10
80008d64:	01069693          	slli	a3,a3,0x10
80008d68:	0108d893          	srli	a7,a7,0x10
80008d6c:	012a1733          	sll	a4,s4,s2
80008d70:	011686b3          	add	a3,a3,a7
80008d74:	00000913          	li	s2,0
80008d78:	ccd77ae3          	bgeu	a4,a3,80008a4c <__udivdi3+0x284>
80008d7c:	fff78793          	addi	a5,a5,-1 # ffffff <_stack_size+0xff7fff>
80008d80:	ba9ff06f          	j	80008928 <__udivdi3+0x160>
80008d84:	00000913          	li	s2,0
80008d88:	00000793          	li	a5,0
80008d8c:	cc1ff06f          	j	80008a4c <__udivdi3+0x284>

80008d90 <__umoddi3>:
80008d90:	fd010113          	addi	sp,sp,-48
80008d94:	02812423          	sw	s0,40(sp)
80008d98:	02912223          	sw	s1,36(sp)
80008d9c:	02112623          	sw	ra,44(sp)
80008da0:	03212023          	sw	s2,32(sp)
80008da4:	01312e23          	sw	s3,28(sp)
80008da8:	01412c23          	sw	s4,24(sp)
80008dac:	01512a23          	sw	s5,20(sp)
80008db0:	01612823          	sw	s6,16(sp)
80008db4:	01712623          	sw	s7,12(sp)
80008db8:	01812423          	sw	s8,8(sp)
80008dbc:	01912223          	sw	s9,4(sp)
80008dc0:	01a12023          	sw	s10,0(sp)
80008dc4:	00050413          	mv	s0,a0
80008dc8:	00058493          	mv	s1,a1
80008dcc:	24069c63          	bnez	a3,80009024 <__umoddi3+0x294>
80008dd0:	8000b7b7          	lui	a5,0x8000b
80008dd4:	00060993          	mv	s3,a2
80008dd8:	d1478793          	addi	a5,a5,-748 # 8000ad14 <__clz_tab>
80008ddc:	12c5fe63          	bgeu	a1,a2,80008f18 <__umoddi3+0x188>
80008de0:	00010737          	lui	a4,0x10
80008de4:	12e67063          	bgeu	a2,a4,80008f04 <__umoddi3+0x174>
80008de8:	10063713          	sltiu	a4,a2,256
80008dec:	00173713          	seqz	a4,a4
80008df0:	00371713          	slli	a4,a4,0x3
80008df4:	00e656b3          	srl	a3,a2,a4
80008df8:	00d787b3          	add	a5,a5,a3
80008dfc:	0007c783          	lbu	a5,0(a5)
80008e00:	00e787b3          	add	a5,a5,a4
80008e04:	02000713          	li	a4,32
80008e08:	40f70933          	sub	s2,a4,a5
80008e0c:	00f70c63          	beq	a4,a5,80008e24 <__umoddi3+0x94>
80008e10:	012594b3          	sll	s1,a1,s2
80008e14:	00f557b3          	srl	a5,a0,a5
80008e18:	012619b3          	sll	s3,a2,s2
80008e1c:	0097e4b3          	or	s1,a5,s1
80008e20:	01251433          	sll	s0,a0,s2
80008e24:	0109da93          	srli	s5,s3,0x10
80008e28:	000a8593          	mv	a1,s5
80008e2c:	01099b13          	slli	s6,s3,0x10
80008e30:	00048513          	mv	a0,s1
80008e34:	69c010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008e38:	010b5b13          	srli	s6,s6,0x10
80008e3c:	000b0593          	mv	a1,s6
80008e40:	5d8010ef          	jal	8000a418 <__mulsi3>
80008e44:	00050a13          	mv	s4,a0
80008e48:	000a8593          	mv	a1,s5
80008e4c:	00048513          	mv	a0,s1
80008e50:	6c8010ef          	jal	8000a518 <__umodsi3>
80008e54:	01051513          	slli	a0,a0,0x10
80008e58:	01045793          	srli	a5,s0,0x10
80008e5c:	00a7e7b3          	or	a5,a5,a0
80008e60:	0147fa63          	bgeu	a5,s4,80008e74 <__umoddi3+0xe4>
80008e64:	00f987b3          	add	a5,s3,a5
80008e68:	0137e663          	bltu	a5,s3,80008e74 <__umoddi3+0xe4>
80008e6c:	0147f463          	bgeu	a5,s4,80008e74 <__umoddi3+0xe4>
80008e70:	013787b3          	add	a5,a5,s3
80008e74:	414784b3          	sub	s1,a5,s4
80008e78:	000a8593          	mv	a1,s5
80008e7c:	00048513          	mv	a0,s1
80008e80:	650010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008e84:	000b0593          	mv	a1,s6
80008e88:	590010ef          	jal	8000a418 <__mulsi3>
80008e8c:	00050a13          	mv	s4,a0
80008e90:	000a8593          	mv	a1,s5
80008e94:	00048513          	mv	a0,s1
80008e98:	680010ef          	jal	8000a518 <__umodsi3>
80008e9c:	01041413          	slli	s0,s0,0x10
80008ea0:	01051513          	slli	a0,a0,0x10
80008ea4:	01045413          	srli	s0,s0,0x10
80008ea8:	00a46433          	or	s0,s0,a0
80008eac:	01447a63          	bgeu	s0,s4,80008ec0 <__umoddi3+0x130>
80008eb0:	00898433          	add	s0,s3,s0
80008eb4:	01346663          	bltu	s0,s3,80008ec0 <__umoddi3+0x130>
80008eb8:	01447463          	bgeu	s0,s4,80008ec0 <__umoddi3+0x130>
80008ebc:	01340433          	add	s0,s0,s3
80008ec0:	41440433          	sub	s0,s0,s4
80008ec4:	01245533          	srl	a0,s0,s2
80008ec8:	00000593          	li	a1,0
80008ecc:	02c12083          	lw	ra,44(sp)
80008ed0:	02812403          	lw	s0,40(sp)
80008ed4:	02412483          	lw	s1,36(sp)
80008ed8:	02012903          	lw	s2,32(sp)
80008edc:	01c12983          	lw	s3,28(sp)
80008ee0:	01812a03          	lw	s4,24(sp)
80008ee4:	01412a83          	lw	s5,20(sp)
80008ee8:	01012b03          	lw	s6,16(sp)
80008eec:	00c12b83          	lw	s7,12(sp)
80008ef0:	00812c03          	lw	s8,8(sp)
80008ef4:	00412c83          	lw	s9,4(sp)
80008ef8:	00012d03          	lw	s10,0(sp)
80008efc:	03010113          	addi	sp,sp,48
80008f00:	00008067          	ret
80008f04:	010006b7          	lui	a3,0x1000
80008f08:	01800713          	li	a4,24
80008f0c:	eed674e3          	bgeu	a2,a3,80008df4 <__umoddi3+0x64>
80008f10:	01000713          	li	a4,16
80008f14:	ee1ff06f          	j	80008df4 <__umoddi3+0x64>
80008f18:	00000713          	li	a4,0
80008f1c:	00060c63          	beqz	a2,80008f34 <__umoddi3+0x1a4>
80008f20:	00010737          	lui	a4,0x10
80008f24:	0ee67663          	bgeu	a2,a4,80009010 <__umoddi3+0x280>
80008f28:	10063713          	sltiu	a4,a2,256
80008f2c:	00173713          	seqz	a4,a4
80008f30:	00371713          	slli	a4,a4,0x3
80008f34:	00e656b3          	srl	a3,a2,a4
80008f38:	00d787b3          	add	a5,a5,a3
80008f3c:	0007c783          	lbu	a5,0(a5)
80008f40:	40c584b3          	sub	s1,a1,a2
80008f44:	00e787b3          	add	a5,a5,a4
80008f48:	02000713          	li	a4,32
80008f4c:	40f70933          	sub	s2,a4,a5
80008f50:	ecf70ae3          	beq	a4,a5,80008e24 <__umoddi3+0x94>
80008f54:	012619b3          	sll	s3,a2,s2
80008f58:	00f5dbb3          	srl	s7,a1,a5
80008f5c:	0109db13          	srli	s6,s3,0x10
80008f60:	00f557b3          	srl	a5,a0,a5
80008f64:	012595b3          	sll	a1,a1,s2
80008f68:	00b7ea33          	or	s4,a5,a1
80008f6c:	01251433          	sll	s0,a0,s2
80008f70:	000b0593          	mv	a1,s6
80008f74:	01099a93          	slli	s5,s3,0x10
80008f78:	000b8513          	mv	a0,s7
80008f7c:	554010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008f80:	010ada93          	srli	s5,s5,0x10
80008f84:	000a8593          	mv	a1,s5
80008f88:	490010ef          	jal	8000a418 <__mulsi3>
80008f8c:	00050493          	mv	s1,a0
80008f90:	000b0593          	mv	a1,s6
80008f94:	000b8513          	mv	a0,s7
80008f98:	580010ef          	jal	8000a518 <__umodsi3>
80008f9c:	01051513          	slli	a0,a0,0x10
80008fa0:	010a5713          	srli	a4,s4,0x10
80008fa4:	00a76733          	or	a4,a4,a0
80008fa8:	00977a63          	bgeu	a4,s1,80008fbc <__umoddi3+0x22c>
80008fac:	00e98733          	add	a4,s3,a4
80008fb0:	01376663          	bltu	a4,s3,80008fbc <__umoddi3+0x22c>
80008fb4:	00977463          	bgeu	a4,s1,80008fbc <__umoddi3+0x22c>
80008fb8:	01370733          	add	a4,a4,s3
80008fbc:	409704b3          	sub	s1,a4,s1
80008fc0:	000b0593          	mv	a1,s6
80008fc4:	00048513          	mv	a0,s1
80008fc8:	508010ef          	jal	8000a4d0 <__hidden___udivsi3>
80008fcc:	000a8593          	mv	a1,s5
80008fd0:	448010ef          	jal	8000a418 <__mulsi3>
80008fd4:	00050a93          	mv	s5,a0
80008fd8:	000b0593          	mv	a1,s6
80008fdc:	00048513          	mv	a0,s1
80008fe0:	538010ef          	jal	8000a518 <__umodsi3>
80008fe4:	010a1793          	slli	a5,s4,0x10
80008fe8:	01051513          	slli	a0,a0,0x10
80008fec:	0107d793          	srli	a5,a5,0x10
80008ff0:	00a7e7b3          	or	a5,a5,a0
80008ff4:	0157fa63          	bgeu	a5,s5,80009008 <__umoddi3+0x278>
80008ff8:	00f987b3          	add	a5,s3,a5
80008ffc:	0137e663          	bltu	a5,s3,80009008 <__umoddi3+0x278>
80009000:	0157f463          	bgeu	a5,s5,80009008 <__umoddi3+0x278>
80009004:	013787b3          	add	a5,a5,s3
80009008:	415784b3          	sub	s1,a5,s5
8000900c:	e19ff06f          	j	80008e24 <__umoddi3+0x94>
80009010:	010006b7          	lui	a3,0x1000
80009014:	01800713          	li	a4,24
80009018:	f0d67ee3          	bgeu	a2,a3,80008f34 <__umoddi3+0x1a4>
8000901c:	01000713          	li	a4,16
80009020:	f15ff06f          	j	80008f34 <__umoddi3+0x1a4>
80009024:	ead5e4e3          	bltu	a1,a3,80008ecc <__umoddi3+0x13c>
80009028:	000107b7          	lui	a5,0x10
8000902c:	04f6fe63          	bgeu	a3,a5,80009088 <__umoddi3+0x2f8>
80009030:	1006b793          	sltiu	a5,a3,256
80009034:	0017b793          	seqz	a5,a5
80009038:	00379793          	slli	a5,a5,0x3
8000903c:	8000b737          	lui	a4,0x8000b
80009040:	00f6d833          	srl	a6,a3,a5
80009044:	d1470713          	addi	a4,a4,-748 # 8000ad14 <__clz_tab>
80009048:	01070733          	add	a4,a4,a6
8000904c:	00074a83          	lbu	s5,0(a4)
80009050:	00fa8ab3          	add	s5,s5,a5
80009054:	02000793          	li	a5,32
80009058:	41578a33          	sub	s4,a5,s5
8000905c:	05579063          	bne	a5,s5,8000909c <__umoddi3+0x30c>
80009060:	00b6e463          	bltu	a3,a1,80009068 <__umoddi3+0x2d8>
80009064:	00c56c63          	bltu	a0,a2,8000907c <__umoddi3+0x2ec>
80009068:	40c50933          	sub	s2,a0,a2
8000906c:	40d586b3          	sub	a3,a1,a3
80009070:	012534b3          	sltu	s1,a0,s2
80009074:	00090413          	mv	s0,s2
80009078:	409684b3          	sub	s1,a3,s1
8000907c:	00040513          	mv	a0,s0
80009080:	00048593          	mv	a1,s1
80009084:	e49ff06f          	j	80008ecc <__umoddi3+0x13c>
80009088:	01000737          	lui	a4,0x1000
8000908c:	01800793          	li	a5,24
80009090:	fae6f6e3          	bgeu	a3,a4,8000903c <__umoddi3+0x2ac>
80009094:	01000793          	li	a5,16
80009098:	fa5ff06f          	j	8000903c <__umoddi3+0x2ac>
8000909c:	014696b3          	sll	a3,a3,s4
800090a0:	01565b33          	srl	s6,a2,s5
800090a4:	00db6b33          	or	s6,s6,a3
800090a8:	0155dbb3          	srl	s7,a1,s5
800090ac:	01555433          	srl	s0,a0,s5
800090b0:	014595b3          	sll	a1,a1,s4
800090b4:	010b5493          	srli	s1,s6,0x10
800090b8:	00b46433          	or	s0,s0,a1
800090bc:	014519b3          	sll	s3,a0,s4
800090c0:	00048593          	mv	a1,s1
800090c4:	000b8513          	mv	a0,s7
800090c8:	010b1c13          	slli	s8,s6,0x10
800090cc:	01461933          	sll	s2,a2,s4
800090d0:	010c5c13          	srli	s8,s8,0x10
800090d4:	3fc010ef          	jal	8000a4d0 <__hidden___udivsi3>
800090d8:	00050593          	mv	a1,a0
800090dc:	00050d13          	mv	s10,a0
800090e0:	000c0513          	mv	a0,s8
800090e4:	334010ef          	jal	8000a418 <__mulsi3>
800090e8:	00050c93          	mv	s9,a0
800090ec:	00048593          	mv	a1,s1
800090f0:	000b8513          	mv	a0,s7
800090f4:	424010ef          	jal	8000a518 <__umodsi3>
800090f8:	01051513          	slli	a0,a0,0x10
800090fc:	01045793          	srli	a5,s0,0x10
80009100:	00a7e7b3          	or	a5,a5,a0
80009104:	000d0b93          	mv	s7,s10
80009108:	0197fe63          	bgeu	a5,s9,80009124 <__umoddi3+0x394>
8000910c:	00fb07b3          	add	a5,s6,a5
80009110:	fffd0b93          	addi	s7,s10,-1
80009114:	0167e863          	bltu	a5,s6,80009124 <__umoddi3+0x394>
80009118:	0197f663          	bgeu	a5,s9,80009124 <__umoddi3+0x394>
8000911c:	ffed0b93          	addi	s7,s10,-2
80009120:	016787b3          	add	a5,a5,s6
80009124:	41978cb3          	sub	s9,a5,s9
80009128:	00048593          	mv	a1,s1
8000912c:	000c8513          	mv	a0,s9
80009130:	3a0010ef          	jal	8000a4d0 <__hidden___udivsi3>
80009134:	00050593          	mv	a1,a0
80009138:	00050d13          	mv	s10,a0
8000913c:	000c0513          	mv	a0,s8
80009140:	2d8010ef          	jal	8000a418 <__mulsi3>
80009144:	00048593          	mv	a1,s1
80009148:	00050c13          	mv	s8,a0
8000914c:	000c8513          	mv	a0,s9
80009150:	3c8010ef          	jal	8000a518 <__umodsi3>
80009154:	01041593          	slli	a1,s0,0x10
80009158:	01051513          	slli	a0,a0,0x10
8000915c:	0105d593          	srli	a1,a1,0x10
80009160:	00a5e5b3          	or	a1,a1,a0
80009164:	000d0793          	mv	a5,s10
80009168:	0185fe63          	bgeu	a1,s8,80009184 <__umoddi3+0x3f4>
8000916c:	00bb05b3          	add	a1,s6,a1
80009170:	fffd0793          	addi	a5,s10,-1
80009174:	0165e863          	bltu	a1,s6,80009184 <__umoddi3+0x3f4>
80009178:	0185f663          	bgeu	a1,s8,80009184 <__umoddi3+0x3f4>
8000917c:	ffed0793          	addi	a5,s10,-2
80009180:	016585b3          	add	a1,a1,s6
80009184:	010b9b93          	slli	s7,s7,0x10
80009188:	00fbebb3          	or	s7,s7,a5
8000918c:	01091893          	slli	a7,s2,0x10
80009190:	01079793          	slli	a5,a5,0x10
80009194:	0107d793          	srli	a5,a5,0x10
80009198:	0108d893          	srli	a7,a7,0x10
8000919c:	418584b3          	sub	s1,a1,s8
800091a0:	010bdb93          	srli	s7,s7,0x10
800091a4:	01095713          	srli	a4,s2,0x10
800091a8:	00078513          	mv	a0,a5
800091ac:	00088593          	mv	a1,a7
800091b0:	268010ef          	jal	8000a418 <__mulsi3>
800091b4:	00050813          	mv	a6,a0
800091b8:	00070593          	mv	a1,a4
800091bc:	00078513          	mv	a0,a5
800091c0:	00070793          	mv	a5,a4
800091c4:	254010ef          	jal	8000a418 <__mulsi3>
800091c8:	00050713          	mv	a4,a0
800091cc:	00088593          	mv	a1,a7
800091d0:	000b8513          	mv	a0,s7
800091d4:	244010ef          	jal	8000a418 <__mulsi3>
800091d8:	00050893          	mv	a7,a0
800091dc:	00078593          	mv	a1,a5
800091e0:	000b8513          	mv	a0,s7
800091e4:	234010ef          	jal	8000a418 <__mulsi3>
800091e8:	01085793          	srli	a5,a6,0x10
800091ec:	01170733          	add	a4,a4,a7
800091f0:	00e787b3          	add	a5,a5,a4
800091f4:	00050693          	mv	a3,a0
800091f8:	0117f663          	bgeu	a5,a7,80009204 <__umoddi3+0x474>
800091fc:	00010737          	lui	a4,0x10
80009200:	00e506b3          	add	a3,a0,a4
80009204:	0107d713          	srli	a4,a5,0x10
80009208:	01081813          	slli	a6,a6,0x10
8000920c:	01079793          	slli	a5,a5,0x10
80009210:	01085813          	srli	a6,a6,0x10
80009214:	00d70733          	add	a4,a4,a3
80009218:	010787b3          	add	a5,a5,a6
8000921c:	00e4e663          	bltu	s1,a4,80009228 <__umoddi3+0x498>
80009220:	00e49e63          	bne	s1,a4,8000923c <__umoddi3+0x4ac>
80009224:	00f9fc63          	bgeu	s3,a5,8000923c <__umoddi3+0x4ac>
80009228:	41278933          	sub	s2,a5,s2
8000922c:	0127b6b3          	sltu	a3,a5,s2
80009230:	016686b3          	add	a3,a3,s6
80009234:	00090793          	mv	a5,s2
80009238:	40d70733          	sub	a4,a4,a3
8000923c:	40f987b3          	sub	a5,s3,a5
80009240:	00f9b9b3          	sltu	s3,s3,a5
80009244:	40e485b3          	sub	a1,s1,a4
80009248:	413585b3          	sub	a1,a1,s3
8000924c:	01559ab3          	sll	s5,a1,s5
80009250:	0147d7b3          	srl	a5,a5,s4
80009254:	00fae533          	or	a0,s5,a5
80009258:	0145d5b3          	srl	a1,a1,s4
8000925c:	c71ff06f          	j	80008ecc <__umoddi3+0x13c>

80009260 <__addsf3>:
80009260:	ff010113          	addi	sp,sp,-16
80009264:	00800737          	lui	a4,0x800
80009268:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
8000926c:	0175d613          	srli	a2,a1,0x17
80009270:	00812423          	sw	s0,8(sp)
80009274:	01755413          	srli	s0,a0,0x17
80009278:	00a777b3          	and	a5,a4,a0
8000927c:	00912223          	sw	s1,4(sp)
80009280:	00b77733          	and	a4,a4,a1
80009284:	0ff47413          	zext.b	s0,s0
80009288:	0ff67613          	zext.b	a2,a2
8000928c:	00112623          	sw	ra,12(sp)
80009290:	01212023          	sw	s2,0(sp)
80009294:	01f55493          	srli	s1,a0,0x1f
80009298:	01f5d593          	srli	a1,a1,0x1f
8000929c:	00379793          	slli	a5,a5,0x3
800092a0:	00371713          	slli	a4,a4,0x3
800092a4:	40c406b3          	sub	a3,s0,a2
800092a8:	1cb49e63          	bne	s1,a1,80009484 <__addsf3+0x224>
800092ac:	08d05e63          	blez	a3,80009348 <__addsf3+0xe8>
800092b0:	0ff00593          	li	a1,255
800092b4:	02061663          	bnez	a2,800092e0 <__addsf3+0x80>
800092b8:	00070e63          	beqz	a4,800092d4 <__addsf3+0x74>
800092bc:	fff68613          	addi	a2,a3,-1 # ffffff <_stack_size+0xff7fff>
800092c0:	00061863          	bnez	a2,800092d0 <__addsf3+0x70>
800092c4:	00e787b3          	add	a5,a5,a4
800092c8:	00100413          	li	s0,1
800092cc:	04c0006f          	j	80009318 <__addsf3+0xb8>
800092d0:	02b69063          	bne	a3,a1,800092f0 <__addsf3+0x90>
800092d4:	00068413          	mv	s0,a3
800092d8:	00078713          	mv	a4,a5
800092dc:	2c40006f          	j	800095a0 <__addsf3+0x340>
800092e0:	feb40ce3          	beq	s0,a1,800092d8 <__addsf3+0x78>
800092e4:	04000637          	lui	a2,0x4000
800092e8:	00c76733          	or	a4,a4,a2
800092ec:	00068613          	mv	a2,a3
800092f0:	01b00593          	li	a1,27
800092f4:	00100693          	li	a3,1
800092f8:	00c5ce63          	blt	a1,a2,80009314 <__addsf3+0xb4>
800092fc:	02000693          	li	a3,32
80009300:	40c686b3          	sub	a3,a3,a2
80009304:	00c755b3          	srl	a1,a4,a2
80009308:	00d71733          	sll	a4,a4,a3
8000930c:	00e03733          	snez	a4,a4
80009310:	00e5e6b3          	or	a3,a1,a4
80009314:	00d787b3          	add	a5,a5,a3
80009318:	00579713          	slli	a4,a5,0x5
8000931c:	12075463          	bgez	a4,80009444 <__addsf3+0x1e4>
80009320:	00140413          	addi	s0,s0,1
80009324:	0ff00713          	li	a4,255
80009328:	36e40063          	beq	s0,a4,80009688 <__addsf3+0x428>
8000932c:	7e000737          	lui	a4,0x7e000
80009330:	0017f693          	andi	a3,a5,1
80009334:	fff70713          	addi	a4,a4,-1 # 7dffffff <_stack_size+0x7dff7fff>
80009338:	0017d793          	srli	a5,a5,0x1
8000933c:	00e7f7b3          	and	a5,a5,a4
80009340:	00d7e7b3          	or	a5,a5,a3
80009344:	1000006f          	j	80009444 <__addsf3+0x1e4>
80009348:	06068463          	beqz	a3,800093b0 <__addsf3+0x150>
8000934c:	408606b3          	sub	a3,a2,s0
80009350:	0ff00513          	li	a0,255
80009354:	00041e63          	bnez	s0,80009370 <__addsf3+0x110>
80009358:	32078263          	beqz	a5,8000967c <__addsf3+0x41c>
8000935c:	fff68593          	addi	a1,a3,-1
80009360:	f60582e3          	beqz	a1,800092c4 <__addsf3+0x64>
80009364:	00a69e63          	bne	a3,a0,80009380 <__addsf3+0x120>
80009368:	0ff00413          	li	s0,255
8000936c:	2340006f          	j	800095a0 <__addsf3+0x340>
80009370:	fea60ce3          	beq	a2,a0,80009368 <__addsf3+0x108>
80009374:	040005b7          	lui	a1,0x4000
80009378:	00b7e7b3          	or	a5,a5,a1
8000937c:	00068593          	mv	a1,a3
80009380:	01b00513          	li	a0,27
80009384:	00100693          	li	a3,1
80009388:	00b54e63          	blt	a0,a1,800093a4 <__addsf3+0x144>
8000938c:	02000693          	li	a3,32
80009390:	40b686b3          	sub	a3,a3,a1
80009394:	00b7d533          	srl	a0,a5,a1
80009398:	00d797b3          	sll	a5,a5,a3
8000939c:	00f037b3          	snez	a5,a5
800093a0:	00f566b3          	or	a3,a0,a5
800093a4:	00e687b3          	add	a5,a3,a4
800093a8:	00060413          	mv	s0,a2
800093ac:	f6dff06f          	j	80009318 <__addsf3+0xb8>
800093b0:	00140693          	addi	a3,s0,1
800093b4:	0fe6f613          	andi	a2,a3,254
800093b8:	06061c63          	bnez	a2,80009430 <__addsf3+0x1d0>
800093bc:	06041263          	bnez	s0,80009420 <__addsf3+0x1c0>
800093c0:	2a078863          	beqz	a5,80009670 <__addsf3+0x410>
800093c4:	08070c63          	beqz	a4,8000945c <__addsf3+0x1fc>
800093c8:	00f70733          	add	a4,a4,a5
800093cc:	00571793          	slli	a5,a4,0x5
800093d0:	1c07d863          	bgez	a5,800095a0 <__addsf3+0x340>
800093d4:	1f8007b7          	lui	a5,0x1f800
800093d8:	00375713          	srli	a4,a4,0x3
800093dc:	fff78793          	addi	a5,a5,-1 # 1f7fffff <_stack_size+0x1f7f7fff>
800093e0:	00f777b3          	and	a5,a4,a5
800093e4:	00100413          	li	s0,1
800093e8:	01741413          	slli	s0,s0,0x17
800093ec:	7f800737          	lui	a4,0x7f800
800093f0:	00979793          	slli	a5,a5,0x9
800093f4:	00e47433          	and	s0,s0,a4
800093f8:	0097d793          	srli	a5,a5,0x9
800093fc:	00f46433          	or	s0,s0,a5
80009400:	01f49513          	slli	a0,s1,0x1f
80009404:	00c12083          	lw	ra,12(sp)
80009408:	00a46533          	or	a0,s0,a0
8000940c:	00812403          	lw	s0,8(sp)
80009410:	00412483          	lw	s1,4(sp)
80009414:	00012903          	lw	s2,0(sp)
80009418:	01010113          	addi	sp,sp,16
8000941c:	00008067          	ret
80009420:	f40784e3          	beqz	a5,80009368 <__addsf3+0x108>
80009424:	1c071863          	bnez	a4,800095f4 <__addsf3+0x394>
80009428:	00078713          	mv	a4,a5
8000942c:	f3dff06f          	j	80009368 <__addsf3+0x108>
80009430:	0ff00613          	li	a2,255
80009434:	24c68863          	beq	a3,a2,80009684 <__addsf3+0x424>
80009438:	00e78733          	add	a4,a5,a4
8000943c:	00175793          	srli	a5,a4,0x1
80009440:	00068413          	mv	s0,a3
80009444:	0077f713          	andi	a4,a5,7
80009448:	00070a63          	beqz	a4,8000945c <__addsf3+0x1fc>
8000944c:	00f7f713          	andi	a4,a5,15
80009450:	00400693          	li	a3,4
80009454:	00d70463          	beq	a4,a3,8000945c <__addsf3+0x1fc>
80009458:	00d787b3          	add	a5,a5,a3
8000945c:	00579713          	slli	a4,a5,0x5
80009460:	e6075ce3          	bgez	a4,800092d8 <__addsf3+0x78>
80009464:	00140413          	addi	s0,s0,1
80009468:	0ff00713          	li	a4,255
8000946c:	20e40e63          	beq	s0,a4,80009688 <__addsf3+0x428>
80009470:	1f800737          	lui	a4,0x1f800
80009474:	0037d793          	srli	a5,a5,0x3
80009478:	fff70713          	addi	a4,a4,-1 # 1f7fffff <_stack_size+0x1f7f7fff>
8000947c:	00e7f7b3          	and	a5,a5,a4
80009480:	f69ff06f          	j	800093e8 <__addsf3+0x188>
80009484:	08d05063          	blez	a3,80009504 <__addsf3+0x2a4>
80009488:	06061263          	bnez	a2,800094ec <__addsf3+0x28c>
8000948c:	e40704e3          	beqz	a4,800092d4 <__addsf3+0x74>
80009490:	fff68613          	addi	a2,a3,-1
80009494:	00061863          	bnez	a2,800094a4 <__addsf3+0x244>
80009498:	40e787b3          	sub	a5,a5,a4
8000949c:	00100413          	li	s0,1
800094a0:	0340006f          	j	800094d4 <__addsf3+0x274>
800094a4:	0ff00593          	li	a1,255
800094a8:	e2b686e3          	beq	a3,a1,800092d4 <__addsf3+0x74>
800094ac:	01b00593          	li	a1,27
800094b0:	00100693          	li	a3,1
800094b4:	00c5ce63          	blt	a1,a2,800094d0 <__addsf3+0x270>
800094b8:	02000693          	li	a3,32
800094bc:	40c686b3          	sub	a3,a3,a2
800094c0:	00c755b3          	srl	a1,a4,a2
800094c4:	00d71733          	sll	a4,a4,a3
800094c8:	00e03733          	snez	a4,a4
800094cc:	00e5e6b3          	or	a3,a1,a4
800094d0:	40d787b3          	sub	a5,a5,a3
800094d4:	00579713          	slli	a4,a5,0x5
800094d8:	f60756e3          	bgez	a4,80009444 <__addsf3+0x1e4>
800094dc:	04000937          	lui	s2,0x4000
800094e0:	fff90913          	addi	s2,s2,-1 # 3ffffff <_stack_size+0x3ff7fff>
800094e4:	0127f933          	and	s2,a5,s2
800094e8:	1300006f          	j	80009618 <__addsf3+0x3b8>
800094ec:	0ff00613          	li	a2,255
800094f0:	dec404e3          	beq	s0,a2,800092d8 <__addsf3+0x78>
800094f4:	04000637          	lui	a2,0x4000
800094f8:	00c76733          	or	a4,a4,a2
800094fc:	00068613          	mv	a2,a3
80009500:	fadff06f          	j	800094ac <__addsf3+0x24c>
80009504:	06068e63          	beqz	a3,80009580 <__addsf3+0x320>
80009508:	408606b3          	sub	a3,a2,s0
8000950c:	02041663          	bnez	s0,80009538 <__addsf3+0x2d8>
80009510:	16078463          	beqz	a5,80009678 <__addsf3+0x418>
80009514:	fff68513          	addi	a0,a3,-1
80009518:	00051863          	bnez	a0,80009528 <__addsf3+0x2c8>
8000951c:	40f707b3          	sub	a5,a4,a5
80009520:	00058493          	mv	s1,a1
80009524:	f79ff06f          	j	8000949c <__addsf3+0x23c>
80009528:	0ff00813          	li	a6,255
8000952c:	03069063          	bne	a3,a6,8000954c <__addsf3+0x2ec>
80009530:	00058493          	mv	s1,a1
80009534:	e35ff06f          	j	80009368 <__addsf3+0x108>
80009538:	0ff00513          	li	a0,255
8000953c:	fea60ae3          	beq	a2,a0,80009530 <__addsf3+0x2d0>
80009540:	04000537          	lui	a0,0x4000
80009544:	00a7e7b3          	or	a5,a5,a0
80009548:	00068513          	mv	a0,a3
8000954c:	01b00813          	li	a6,27
80009550:	00100693          	li	a3,1
80009554:	00a84e63          	blt	a6,a0,80009570 <__addsf3+0x310>
80009558:	02000693          	li	a3,32
8000955c:	40a686b3          	sub	a3,a3,a0
80009560:	00a7d833          	srl	a6,a5,a0
80009564:	00d797b3          	sll	a5,a5,a3
80009568:	00f037b3          	snez	a5,a5
8000956c:	00f866b3          	or	a3,a6,a5
80009570:	40d707b3          	sub	a5,a4,a3
80009574:	00060413          	mv	s0,a2
80009578:	00058493          	mv	s1,a1
8000957c:	f59ff06f          	j	800094d4 <__addsf3+0x274>
80009580:	00140693          	addi	a3,s0,1
80009584:	0fe6f693          	andi	a3,a3,254
80009588:	06069e63          	bnez	a3,80009604 <__addsf3+0x3a4>
8000958c:	06041263          	bnez	s0,800095f0 <__addsf3+0x390>
80009590:	02079463          	bnez	a5,800095b8 <__addsf3+0x358>
80009594:	00000493          	li	s1,0
80009598:	e40708e3          	beqz	a4,800093e8 <__addsf3+0x188>
8000959c:	00058493          	mv	s1,a1
800095a0:	00375793          	srli	a5,a4,0x3
800095a4:	0ff00713          	li	a4,255
800095a8:	e4e410e3          	bne	s0,a4,800093e8 <__addsf3+0x188>
800095ac:	e2078ee3          	beqz	a5,800093e8 <__addsf3+0x188>
800095b0:	004007b7          	lui	a5,0x400
800095b4:	0340006f          	j	800095e8 <__addsf3+0x388>
800095b8:	ea0702e3          	beqz	a4,8000945c <__addsf3+0x1fc>
800095bc:	40e786b3          	sub	a3,a5,a4
800095c0:	00569613          	slli	a2,a3,0x5
800095c4:	00065c63          	bgez	a2,800095dc <__addsf3+0x37c>
800095c8:	40f707b3          	sub	a5,a4,a5
800095cc:	00058493          	mv	s1,a1
800095d0:	00000413          	li	s0,0
800095d4:	e0078ae3          	beqz	a5,800093e8 <__addsf3+0x188>
800095d8:	e6dff06f          	j	80009444 <__addsf3+0x1e4>
800095dc:	00068713          	mv	a4,a3
800095e0:	fc0690e3          	bnez	a3,800095a0 <__addsf3+0x340>
800095e4:	00000793          	li	a5,0
800095e8:	00000493          	li	s1,0
800095ec:	dfdff06f          	j	800093e8 <__addsf3+0x188>
800095f0:	e2079ae3          	bnez	a5,80009424 <__addsf3+0x1c4>
800095f4:	00000493          	li	s1,0
800095f8:	0ff00413          	li	s0,255
800095fc:	004007b7          	lui	a5,0x400
80009600:	de9ff06f          	j	800093e8 <__addsf3+0x188>
80009604:	40e78933          	sub	s2,a5,a4
80009608:	00591693          	slli	a3,s2,0x5
8000960c:	0406d263          	bgez	a3,80009650 <__addsf3+0x3f0>
80009610:	40f70933          	sub	s2,a4,a5
80009614:	00058493          	mv	s1,a1
80009618:	00090513          	mv	a0,s2
8000961c:	761000ef          	jal	8000a57c <__clzsi2>
80009620:	ffb50513          	addi	a0,a0,-5 # 3fffffb <_stack_size+0x3ff7ffb>
80009624:	00a91933          	sll	s2,s2,a0
80009628:	02854a63          	blt	a0,s0,8000965c <__addsf3+0x3fc>
8000962c:	40850533          	sub	a0,a0,s0
80009630:	00150513          	addi	a0,a0,1
80009634:	02000713          	li	a4,32
80009638:	40a70733          	sub	a4,a4,a0
8000963c:	00a957b3          	srl	a5,s2,a0
80009640:	00e91933          	sll	s2,s2,a4
80009644:	01203933          	snez	s2,s2
80009648:	0127e7b3          	or	a5,a5,s2
8000964c:	f85ff06f          	j	800095d0 <__addsf3+0x370>
80009650:	fc0914e3          	bnez	s2,80009618 <__addsf3+0x3b8>
80009654:	00000413          	li	s0,0
80009658:	f8dff06f          	j	800095e4 <__addsf3+0x384>
8000965c:	fc0007b7          	lui	a5,0xfc000
80009660:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_end+0x7bbfffff>
80009664:	40a40433          	sub	s0,s0,a0
80009668:	00f977b3          	and	a5,s2,a5
8000966c:	dd9ff06f          	j	80009444 <__addsf3+0x1e4>
80009670:	00070793          	mv	a5,a4
80009674:	f5dff06f          	j	800095d0 <__addsf3+0x370>
80009678:	00058493          	mv	s1,a1
8000967c:	00068413          	mv	s0,a3
80009680:	f21ff06f          	j	800095a0 <__addsf3+0x340>
80009684:	00068413          	mv	s0,a3
80009688:	00000793          	li	a5,0
8000968c:	d5dff06f          	j	800093e8 <__addsf3+0x188>

80009690 <__divsf3>:
80009690:	fd010113          	addi	sp,sp,-48
80009694:	02912223          	sw	s1,36(sp)
80009698:	01755493          	srli	s1,a0,0x17
8000969c:	03212023          	sw	s2,32(sp)
800096a0:	01512a23          	sw	s5,20(sp)
800096a4:	01612823          	sw	s6,16(sp)
800096a8:	00951a93          	slli	s5,a0,0x9
800096ac:	02112623          	sw	ra,44(sp)
800096b0:	02812423          	sw	s0,40(sp)
800096b4:	01312e23          	sw	s3,28(sp)
800096b8:	01412c23          	sw	s4,24(sp)
800096bc:	01712623          	sw	s7,12(sp)
800096c0:	01812423          	sw	s8,8(sp)
800096c4:	0ff4f493          	zext.b	s1,s1
800096c8:	00058b13          	mv	s6,a1
800096cc:	009ada93          	srli	s5,s5,0x9
800096d0:	01f55913          	srli	s2,a0,0x1f
800096d4:	08048463          	beqz	s1,8000975c <__divsf3+0xcc>
800096d8:	0ff00793          	li	a5,255
800096dc:	0af48063          	beq	s1,a5,8000977c <__divsf3+0xec>
800096e0:	003a9a93          	slli	s5,s5,0x3
800096e4:	040007b7          	lui	a5,0x4000
800096e8:	00faeab3          	or	s5,s5,a5
800096ec:	f8148493          	addi	s1,s1,-127
800096f0:	00000b93          	li	s7,0
800096f4:	017b5793          	srli	a5,s6,0x17
800096f8:	009b1413          	slli	s0,s6,0x9
800096fc:	0ff7f793          	zext.b	a5,a5
80009700:	00945413          	srli	s0,s0,0x9
80009704:	01fb5b13          	srli	s6,s6,0x1f
80009708:	08078863          	beqz	a5,80009798 <__divsf3+0x108>
8000970c:	0ff00713          	li	a4,255
80009710:	0ae78463          	beq	a5,a4,800097b8 <__divsf3+0x128>
80009714:	00341413          	slli	s0,s0,0x3
80009718:	04000737          	lui	a4,0x4000
8000971c:	00e46433          	or	s0,s0,a4
80009720:	f8178793          	addi	a5,a5,-127 # 3ffff81 <_stack_size+0x3ff7f81>
80009724:	00000713          	li	a4,0
80009728:	40f48a33          	sub	s4,s1,a5
8000972c:	002b9793          	slli	a5,s7,0x2
80009730:	00e7e7b3          	or	a5,a5,a4
80009734:	fff78793          	addi	a5,a5,-1
80009738:	00e00693          	li	a3,14
8000973c:	016949b3          	xor	s3,s2,s6
80009740:	08f6ea63          	bltu	a3,a5,800097d4 <__divsf3+0x144>
80009744:	8000b6b7          	lui	a3,0x8000b
80009748:	00279793          	slli	a5,a5,0x2
8000974c:	cd868693          	addi	a3,a3,-808 # 8000acd8 <init_jk+0xc>
80009750:	00d787b3          	add	a5,a5,a3
80009754:	0007a783          	lw	a5,0(a5)
80009758:	00078067          	jr	a5
8000975c:	020a8863          	beqz	s5,8000978c <__divsf3+0xfc>
80009760:	000a8513          	mv	a0,s5
80009764:	619000ef          	jal	8000a57c <__clzsi2>
80009768:	ffb50793          	addi	a5,a0,-5
8000976c:	f8a00493          	li	s1,-118
80009770:	00fa9ab3          	sll	s5,s5,a5
80009774:	40a484b3          	sub	s1,s1,a0
80009778:	f79ff06f          	j	800096f0 <__divsf3+0x60>
8000977c:	00200b93          	li	s7,2
80009780:	f60a8ae3          	beqz	s5,800096f4 <__divsf3+0x64>
80009784:	00300b93          	li	s7,3
80009788:	f6dff06f          	j	800096f4 <__divsf3+0x64>
8000978c:	00000493          	li	s1,0
80009790:	00100b93          	li	s7,1
80009794:	f61ff06f          	j	800096f4 <__divsf3+0x64>
80009798:	02040863          	beqz	s0,800097c8 <__divsf3+0x138>
8000979c:	00040513          	mv	a0,s0
800097a0:	5dd000ef          	jal	8000a57c <__clzsi2>
800097a4:	ffb50793          	addi	a5,a0,-5
800097a8:	00f41433          	sll	s0,s0,a5
800097ac:	f8a00793          	li	a5,-118
800097b0:	40a787b3          	sub	a5,a5,a0
800097b4:	f71ff06f          	j	80009724 <__divsf3+0x94>
800097b8:	00200713          	li	a4,2
800097bc:	f60406e3          	beqz	s0,80009728 <__divsf3+0x98>
800097c0:	00300713          	li	a4,3
800097c4:	f65ff06f          	j	80009728 <__divsf3+0x98>
800097c8:	00000793          	li	a5,0
800097cc:	00100713          	li	a4,1
800097d0:	f59ff06f          	j	80009728 <__divsf3+0x98>
800097d4:	00541c13          	slli	s8,s0,0x5
800097d8:	168af663          	bgeu	s5,s0,80009944 <__divsf3+0x2b4>
800097dc:	fffa0a13          	addi	s4,s4,-1
800097e0:	00000413          	li	s0,0
800097e4:	010c5b13          	srli	s6,s8,0x10
800097e8:	000b0593          	mv	a1,s6
800097ec:	010c1913          	slli	s2,s8,0x10
800097f0:	000a8513          	mv	a0,s5
800097f4:	4dd000ef          	jal	8000a4d0 <__hidden___udivsi3>
800097f8:	01095913          	srli	s2,s2,0x10
800097fc:	00050593          	mv	a1,a0
80009800:	00050b93          	mv	s7,a0
80009804:	00090513          	mv	a0,s2
80009808:	411000ef          	jal	8000a418 <__mulsi3>
8000980c:	00050493          	mv	s1,a0
80009810:	000b0593          	mv	a1,s6
80009814:	000a8513          	mv	a0,s5
80009818:	501000ef          	jal	8000a518 <__umodsi3>
8000981c:	01045793          	srli	a5,s0,0x10
80009820:	01051513          	slli	a0,a0,0x10
80009824:	00a7e7b3          	or	a5,a5,a0
80009828:	000b8413          	mv	s0,s7
8000982c:	0097fe63          	bgeu	a5,s1,80009848 <__divsf3+0x1b8>
80009830:	00fc07b3          	add	a5,s8,a5
80009834:	fffb8413          	addi	s0,s7,-1
80009838:	0187e863          	bltu	a5,s8,80009848 <__divsf3+0x1b8>
8000983c:	0097f663          	bgeu	a5,s1,80009848 <__divsf3+0x1b8>
80009840:	ffeb8413          	addi	s0,s7,-2
80009844:	018787b3          	add	a5,a5,s8
80009848:	409784b3          	sub	s1,a5,s1
8000984c:	000b0593          	mv	a1,s6
80009850:	00048513          	mv	a0,s1
80009854:	47d000ef          	jal	8000a4d0 <__hidden___udivsi3>
80009858:	00050593          	mv	a1,a0
8000985c:	00050a93          	mv	s5,a0
80009860:	00090513          	mv	a0,s2
80009864:	3b5000ef          	jal	8000a418 <__mulsi3>
80009868:	00050913          	mv	s2,a0
8000986c:	000b0593          	mv	a1,s6
80009870:	00048513          	mv	a0,s1
80009874:	4a5000ef          	jal	8000a518 <__umodsi3>
80009878:	01051793          	slli	a5,a0,0x10
8000987c:	000a8713          	mv	a4,s5
80009880:	0327f263          	bgeu	a5,s2,800098a4 <__divsf3+0x214>
80009884:	018786b3          	add	a3,a5,s8
80009888:	00f6b633          	sltu	a2,a3,a5
8000988c:	fffa8713          	addi	a4,s5,-1
80009890:	00068793          	mv	a5,a3
80009894:	00061863          	bnez	a2,800098a4 <__divsf3+0x214>
80009898:	0126f663          	bgeu	a3,s2,800098a4 <__divsf3+0x214>
8000989c:	ffea8713          	addi	a4,s5,-2
800098a0:	018687b3          	add	a5,a3,s8
800098a4:	01041413          	slli	s0,s0,0x10
800098a8:	412787b3          	sub	a5,a5,s2
800098ac:	00e46433          	or	s0,s0,a4
800098b0:	00f037b3          	snez	a5,a5
800098b4:	00f46433          	or	s0,s0,a5
800098b8:	07fa0713          	addi	a4,s4,127
800098bc:	0ce05663          	blez	a4,80009988 <__divsf3+0x2f8>
800098c0:	00747793          	andi	a5,s0,7
800098c4:	00078a63          	beqz	a5,800098d8 <__divsf3+0x248>
800098c8:	00f47793          	andi	a5,s0,15
800098cc:	00400693          	li	a3,4
800098d0:	00d78463          	beq	a5,a3,800098d8 <__divsf3+0x248>
800098d4:	00d40433          	add	s0,s0,a3
800098d8:	00441793          	slli	a5,s0,0x4
800098dc:	0007da63          	bgez	a5,800098f0 <__divsf3+0x260>
800098e0:	f80007b7          	lui	a5,0xf8000
800098e4:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_end+0x77bfffff>
800098e8:	00f47433          	and	s0,s0,a5
800098ec:	080a0713          	addi	a4,s4,128
800098f0:	0fe00793          	li	a5,254
800098f4:	10e7c263          	blt	a5,a4,800099f8 <__divsf3+0x368>
800098f8:	00345793          	srli	a5,s0,0x3
800098fc:	02c12083          	lw	ra,44(sp)
80009900:	02812403          	lw	s0,40(sp)
80009904:	00979793          	slli	a5,a5,0x9
80009908:	01771713          	slli	a4,a4,0x17
8000990c:	0097d793          	srli	a5,a5,0x9
80009910:	01f99513          	slli	a0,s3,0x1f
80009914:	00f76733          	or	a4,a4,a5
80009918:	02412483          	lw	s1,36(sp)
8000991c:	02012903          	lw	s2,32(sp)
80009920:	01c12983          	lw	s3,28(sp)
80009924:	01812a03          	lw	s4,24(sp)
80009928:	01412a83          	lw	s5,20(sp)
8000992c:	01012b03          	lw	s6,16(sp)
80009930:	00c12b83          	lw	s7,12(sp)
80009934:	00812c03          	lw	s8,8(sp)
80009938:	00a76533          	or	a0,a4,a0
8000993c:	03010113          	addi	sp,sp,48
80009940:	00008067          	ret
80009944:	01fa9413          	slli	s0,s5,0x1f
80009948:	001ada93          	srli	s5,s5,0x1
8000994c:	e99ff06f          	j	800097e4 <__divsf3+0x154>
80009950:	000b0993          	mv	s3,s6
80009954:	00200793          	li	a5,2
80009958:	0af70063          	beq	a4,a5,800099f8 <__divsf3+0x368>
8000995c:	00300793          	li	a5,3
80009960:	08f70463          	beq	a4,a5,800099e8 <__divsf3+0x358>
80009964:	00100793          	li	a5,1
80009968:	f4f718e3          	bne	a4,a5,800098b8 <__divsf3+0x228>
8000996c:	00000793          	li	a5,0
80009970:	00000713          	li	a4,0
80009974:	f89ff06f          	j	800098fc <__divsf3+0x26c>
80009978:	00090993          	mv	s3,s2
8000997c:	000a8413          	mv	s0,s5
80009980:	000b8713          	mv	a4,s7
80009984:	fd1ff06f          	j	80009954 <__divsf3+0x2c4>
80009988:	00100693          	li	a3,1
8000998c:	00070c63          	beqz	a4,800099a4 <__divsf3+0x314>
80009990:	40e686b3          	sub	a3,a3,a4
80009994:	01b00613          	li	a2,27
80009998:	00000793          	li	a5,0
8000999c:	00000713          	li	a4,0
800099a0:	f4d64ee3          	blt	a2,a3,800098fc <__divsf3+0x26c>
800099a4:	09ea0493          	addi	s1,s4,158
800099a8:	00d456b3          	srl	a3,s0,a3
800099ac:	00941433          	sll	s0,s0,s1
800099b0:	00803433          	snez	s0,s0
800099b4:	0086e7b3          	or	a5,a3,s0
800099b8:	0077f713          	andi	a4,a5,7
800099bc:	00070a63          	beqz	a4,800099d0 <__divsf3+0x340>
800099c0:	00f7f713          	andi	a4,a5,15
800099c4:	00400693          	li	a3,4
800099c8:	00d70463          	beq	a4,a3,800099d0 <__divsf3+0x340>
800099cc:	00d787b3          	add	a5,a5,a3
800099d0:	00579713          	slli	a4,a5,0x5
800099d4:	0037d793          	srli	a5,a5,0x3
800099d8:	f8075ce3          	bgez	a4,80009970 <__divsf3+0x2e0>
800099dc:	00000793          	li	a5,0
800099e0:	00100713          	li	a4,1
800099e4:	f19ff06f          	j	800098fc <__divsf3+0x26c>
800099e8:	004007b7          	lui	a5,0x400
800099ec:	0ff00713          	li	a4,255
800099f0:	00000993          	li	s3,0
800099f4:	f09ff06f          	j	800098fc <__divsf3+0x26c>
800099f8:	00000793          	li	a5,0
800099fc:	0ff00713          	li	a4,255
80009a00:	efdff06f          	j	800098fc <__divsf3+0x26c>

80009a04 <__eqsf2>:
80009a04:	01755693          	srli	a3,a0,0x17
80009a08:	008007b7          	lui	a5,0x800
80009a0c:	fff78793          	addi	a5,a5,-1 # 7fffff <_stack_size+0x7f7fff>
80009a10:	0175d613          	srli	a2,a1,0x17
80009a14:	0ff6f693          	zext.b	a3,a3
80009a18:	0ff00893          	li	a7,255
80009a1c:	00a7f833          	and	a6,a5,a0
80009a20:	01f55713          	srli	a4,a0,0x1f
80009a24:	00b7f7b3          	and	a5,a5,a1
80009a28:	0ff67613          	zext.b	a2,a2
80009a2c:	01f5d593          	srli	a1,a1,0x1f
80009a30:	00100513          	li	a0,1
80009a34:	01169a63          	bne	a3,a7,80009a48 <__eqsf2+0x44>
80009a38:	00081663          	bnez	a6,80009a44 <__eqsf2+0x40>
80009a3c:	00d61463          	bne	a2,a3,80009a44 <__eqsf2+0x40>
80009a40:	00078a63          	beqz	a5,80009a54 <__eqsf2+0x50>
80009a44:	00008067          	ret
80009a48:	ff160ee3          	beq	a2,a7,80009a44 <__eqsf2+0x40>
80009a4c:	fec69ce3          	bne	a3,a2,80009a44 <__eqsf2+0x40>
80009a50:	fef81ae3          	bne	a6,a5,80009a44 <__eqsf2+0x40>
80009a54:	00000513          	li	a0,0
80009a58:	feb706e3          	beq	a4,a1,80009a44 <__eqsf2+0x40>
80009a5c:	00100513          	li	a0,1
80009a60:	fe0692e3          	bnez	a3,80009a44 <__eqsf2+0x40>
80009a64:	01003533          	snez	a0,a6
80009a68:	00008067          	ret

80009a6c <__gesf2>:
80009a6c:	00800737          	lui	a4,0x800
80009a70:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
80009a74:	01755693          	srli	a3,a0,0x17
80009a78:	00a77633          	and	a2,a4,a0
80009a7c:	01f55793          	srli	a5,a0,0x1f
80009a80:	0ff6f693          	zext.b	a3,a3
80009a84:	0175d513          	srli	a0,a1,0x17
80009a88:	0ff00813          	li	a6,255
80009a8c:	00b77733          	and	a4,a4,a1
80009a90:	0ff57513          	zext.b	a0,a0
80009a94:	01f5d593          	srli	a1,a1,0x1f
80009a98:	01069463          	bne	a3,a6,80009aa0 <__gesf2+0x34>
80009a9c:	02061e63          	bnez	a2,80009ad8 <__gesf2+0x6c>
80009aa0:	01051463          	bne	a0,a6,80009aa8 <__gesf2+0x3c>
80009aa4:	02071a63          	bnez	a4,80009ad8 <__gesf2+0x6c>
80009aa8:	04069863          	bnez	a3,80009af8 <__gesf2+0x8c>
80009aac:	02051a63          	bnez	a0,80009ae0 <__gesf2+0x74>
80009ab0:	04061663          	bnez	a2,80009afc <__gesf2+0x90>
80009ab4:	02070063          	beqz	a4,80009ad4 <__gesf2+0x68>
80009ab8:	00159513          	slli	a0,a1,0x1
80009abc:	fff50513          	addi	a0,a0,-1
80009ac0:	00008067          	ret
80009ac4:	fea6cae3          	blt	a3,a0,80009ab8 <__gesf2+0x4c>
80009ac8:	02c76263          	bltu	a4,a2,80009aec <__gesf2+0x80>
80009acc:	00000513          	li	a0,0
80009ad0:	fee664e3          	bltu	a2,a4,80009ab8 <__gesf2+0x4c>
80009ad4:	00008067          	ret
80009ad8:	ffe00513          	li	a0,-2
80009adc:	00008067          	ret
80009ae0:	fc060ce3          	beqz	a2,80009ab8 <__gesf2+0x4c>
80009ae4:	00f59e63          	bne	a1,a5,80009b00 <__gesf2+0x94>
80009ae8:	fcd55ee3          	bge	a0,a3,80009ac4 <__gesf2+0x58>
80009aec:	40b005b3          	neg	a1,a1
80009af0:	0015e513          	ori	a0,a1,1
80009af4:	00008067          	ret
80009af8:	fe0516e3          	bnez	a0,80009ae4 <__gesf2+0x78>
80009afc:	fe0714e3          	bnez	a4,80009ae4 <__gesf2+0x78>
80009b00:	40f00533          	neg	a0,a5
80009b04:	00156513          	ori	a0,a0,1
80009b08:	00008067          	ret

80009b0c <__mulsf3>:
80009b0c:	fe010113          	addi	sp,sp,-32
80009b10:	01212823          	sw	s2,16(sp)
80009b14:	01755913          	srli	s2,a0,0x17
80009b18:	00912a23          	sw	s1,20(sp)
80009b1c:	01312623          	sw	s3,12(sp)
80009b20:	01512223          	sw	s5,4(sp)
80009b24:	00951493          	slli	s1,a0,0x9
80009b28:	00112e23          	sw	ra,28(sp)
80009b2c:	00812c23          	sw	s0,24(sp)
80009b30:	01412423          	sw	s4,8(sp)
80009b34:	0ff97913          	zext.b	s2,s2
80009b38:	00058a93          	mv	s5,a1
80009b3c:	0094d493          	srli	s1,s1,0x9
80009b40:	01f55993          	srli	s3,a0,0x1f
80009b44:	1a090c63          	beqz	s2,80009cfc <__mulsf3+0x1f0>
80009b48:	0ff00793          	li	a5,255
80009b4c:	1cf90863          	beq	s2,a5,80009d1c <__mulsf3+0x210>
80009b50:	00349493          	slli	s1,s1,0x3
80009b54:	040007b7          	lui	a5,0x4000
80009b58:	00f4e4b3          	or	s1,s1,a5
80009b5c:	f8190913          	addi	s2,s2,-127
80009b60:	00000a13          	li	s4,0
80009b64:	017ad793          	srli	a5,s5,0x17
80009b68:	009a9413          	slli	s0,s5,0x9
80009b6c:	0ff7f793          	zext.b	a5,a5
80009b70:	00945413          	srli	s0,s0,0x9
80009b74:	01fada93          	srli	s5,s5,0x1f
80009b78:	1c078063          	beqz	a5,80009d38 <__mulsf3+0x22c>
80009b7c:	0ff00713          	li	a4,255
80009b80:	1ce78c63          	beq	a5,a4,80009d58 <__mulsf3+0x24c>
80009b84:	00341413          	slli	s0,s0,0x3
80009b88:	04000737          	lui	a4,0x4000
80009b8c:	00e46433          	or	s0,s0,a4
80009b90:	f8178793          	addi	a5,a5,-127 # 3ffff81 <_stack_size+0x3ff7f81>
80009b94:	00000713          	li	a4,0
80009b98:	00f90933          	add	s2,s2,a5
80009b9c:	002a1793          	slli	a5,s4,0x2
80009ba0:	00e7e7b3          	or	a5,a5,a4
80009ba4:	00a00693          	li	a3,10
80009ba8:	00190813          	addi	a6,s2,1
80009bac:	20f6c663          	blt	a3,a5,80009db8 <__mulsf3+0x2ac>
80009bb0:	00200613          	li	a2,2
80009bb4:	0159c9b3          	xor	s3,s3,s5
80009bb8:	00100693          	li	a3,1
80009bbc:	1af64c63          	blt	a2,a5,80009d74 <__mulsf3+0x268>
80009bc0:	fff78793          	addi	a5,a5,-1
80009bc4:	1cf6f863          	bgeu	a3,a5,80009d94 <__mulsf3+0x288>
80009bc8:	0104de13          	srli	t3,s1,0x10
80009bcc:	01045793          	srli	a5,s0,0x10
80009bd0:	01049493          	slli	s1,s1,0x10
80009bd4:	01041413          	slli	s0,s0,0x10
80009bd8:	0104d493          	srli	s1,s1,0x10
80009bdc:	01045413          	srli	s0,s0,0x10
80009be0:	00048513          	mv	a0,s1
80009be4:	00040593          	mv	a1,s0
80009be8:	031000ef          	jal	8000a418 <__mulsi3>
80009bec:	00050893          	mv	a7,a0
80009bf0:	00078593          	mv	a1,a5
80009bf4:	00048513          	mv	a0,s1
80009bf8:	021000ef          	jal	8000a418 <__mulsi3>
80009bfc:	00050713          	mv	a4,a0
80009c00:	00040593          	mv	a1,s0
80009c04:	000e0513          	mv	a0,t3
80009c08:	011000ef          	jal	8000a418 <__mulsi3>
80009c0c:	00050313          	mv	t1,a0
80009c10:	00078593          	mv	a1,a5
80009c14:	000e0513          	mv	a0,t3
80009c18:	001000ef          	jal	8000a418 <__mulsi3>
80009c1c:	0108d793          	srli	a5,a7,0x10
80009c20:	00670733          	add	a4,a4,t1
80009c24:	00e787b3          	add	a5,a5,a4
80009c28:	00050693          	mv	a3,a0
80009c2c:	0067f663          	bgeu	a5,t1,80009c38 <__mulsf3+0x12c>
80009c30:	00010737          	lui	a4,0x10
80009c34:	00e506b3          	add	a3,a0,a4
80009c38:	01089893          	slli	a7,a7,0x10
80009c3c:	01079713          	slli	a4,a5,0x10
80009c40:	0108d893          	srli	a7,a7,0x10
80009c44:	01170733          	add	a4,a4,a7
80009c48:	0107d793          	srli	a5,a5,0x10
80009c4c:	00671413          	slli	s0,a4,0x6
80009c50:	00d787b3          	add	a5,a5,a3
80009c54:	01a75713          	srli	a4,a4,0x1a
80009c58:	00679793          	slli	a5,a5,0x6
80009c5c:	00803433          	snez	s0,s0
80009c60:	00e46433          	or	s0,s0,a4
80009c64:	00479713          	slli	a4,a5,0x4
80009c68:	0087e433          	or	s0,a5,s0
80009c6c:	16075463          	bgez	a4,80009dd4 <__mulsf3+0x2c8>
80009c70:	00145793          	srli	a5,s0,0x1
80009c74:	00147413          	andi	s0,s0,1
80009c78:	0087e433          	or	s0,a5,s0
80009c7c:	07f80513          	addi	a0,a6,127
80009c80:	14a05e63          	blez	a0,80009ddc <__mulsf3+0x2d0>
80009c84:	00747793          	andi	a5,s0,7
80009c88:	00078a63          	beqz	a5,80009c9c <__mulsf3+0x190>
80009c8c:	00f47793          	andi	a5,s0,15
80009c90:	00400713          	li	a4,4
80009c94:	00e78463          	beq	a5,a4,80009c9c <__mulsf3+0x190>
80009c98:	00e40433          	add	s0,s0,a4
80009c9c:	00441793          	slli	a5,s0,0x4
80009ca0:	0007da63          	bgez	a5,80009cb4 <__mulsf3+0x1a8>
80009ca4:	f80007b7          	lui	a5,0xf8000
80009ca8:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_end+0x77bfffff>
80009cac:	00f47433          	and	s0,s0,a5
80009cb0:	08080513          	addi	a0,a6,128
80009cb4:	0fe00793          	li	a5,254
80009cb8:	18a7ca63          	blt	a5,a0,80009e4c <__mulsf3+0x340>
80009cbc:	00345793          	srli	a5,s0,0x3
80009cc0:	01c12083          	lw	ra,28(sp)
80009cc4:	01812403          	lw	s0,24(sp)
80009cc8:	00979793          	slli	a5,a5,0x9
80009ccc:	01751513          	slli	a0,a0,0x17
80009cd0:	0097d793          	srli	a5,a5,0x9
80009cd4:	01f99993          	slli	s3,s3,0x1f
80009cd8:	00f56533          	or	a0,a0,a5
80009cdc:	01412483          	lw	s1,20(sp)
80009ce0:	01012903          	lw	s2,16(sp)
80009ce4:	00812a03          	lw	s4,8(sp)
80009ce8:	00412a83          	lw	s5,4(sp)
80009cec:	01356533          	or	a0,a0,s3
80009cf0:	00c12983          	lw	s3,12(sp)
80009cf4:	02010113          	addi	sp,sp,32
80009cf8:	00008067          	ret
80009cfc:	02048863          	beqz	s1,80009d2c <__mulsf3+0x220>
80009d00:	00048513          	mv	a0,s1
80009d04:	079000ef          	jal	8000a57c <__clzsi2>
80009d08:	ffb50793          	addi	a5,a0,-5
80009d0c:	f8a00913          	li	s2,-118
80009d10:	00f494b3          	sll	s1,s1,a5
80009d14:	40a90933          	sub	s2,s2,a0
80009d18:	e49ff06f          	j	80009b60 <__mulsf3+0x54>
80009d1c:	00200a13          	li	s4,2
80009d20:	e40482e3          	beqz	s1,80009b64 <__mulsf3+0x58>
80009d24:	00300a13          	li	s4,3
80009d28:	e3dff06f          	j	80009b64 <__mulsf3+0x58>
80009d2c:	00000913          	li	s2,0
80009d30:	00100a13          	li	s4,1
80009d34:	e31ff06f          	j	80009b64 <__mulsf3+0x58>
80009d38:	02040863          	beqz	s0,80009d68 <__mulsf3+0x25c>
80009d3c:	00040513          	mv	a0,s0
80009d40:	03d000ef          	jal	8000a57c <__clzsi2>
80009d44:	ffb50793          	addi	a5,a0,-5
80009d48:	00f41433          	sll	s0,s0,a5
80009d4c:	f8a00793          	li	a5,-118
80009d50:	40a787b3          	sub	a5,a5,a0
80009d54:	e41ff06f          	j	80009b94 <__mulsf3+0x88>
80009d58:	00200713          	li	a4,2
80009d5c:	e2040ee3          	beqz	s0,80009b98 <__mulsf3+0x8c>
80009d60:	00300713          	li	a4,3
80009d64:	e35ff06f          	j	80009b98 <__mulsf3+0x8c>
80009d68:	00000793          	li	a5,0
80009d6c:	00100713          	li	a4,1
80009d70:	e29ff06f          	j	80009b98 <__mulsf3+0x8c>
80009d74:	00f697b3          	sll	a5,a3,a5
80009d78:	5307f693          	andi	a3,a5,1328
80009d7c:	04069663          	bnez	a3,80009dc8 <__mulsf3+0x2bc>
80009d80:	2407f693          	andi	a3,a5,576
80009d84:	0a069c63          	bnez	a3,80009e3c <__mulsf3+0x330>
80009d88:	0887f793          	andi	a5,a5,136
80009d8c:	e2078ee3          	beqz	a5,80009bc8 <__mulsf3+0xbc>
80009d90:	000a8993          	mv	s3,s5
80009d94:	00200793          	li	a5,2
80009d98:	0af70a63          	beq	a4,a5,80009e4c <__mulsf3+0x340>
80009d9c:	00300793          	li	a5,3
80009da0:	08f70e63          	beq	a4,a5,80009e3c <__mulsf3+0x330>
80009da4:	00100793          	li	a5,1
80009da8:	ecf71ae3          	bne	a4,a5,80009c7c <__mulsf3+0x170>
80009dac:	00000793          	li	a5,0
80009db0:	00000513          	li	a0,0
80009db4:	f0dff06f          	j	80009cc0 <__mulsf3+0x1b4>
80009db8:	00f00693          	li	a3,15
80009dbc:	08d78063          	beq	a5,a3,80009e3c <__mulsf3+0x330>
80009dc0:	00b00693          	li	a3,11
80009dc4:	fcd786e3          	beq	a5,a3,80009d90 <__mulsf3+0x284>
80009dc8:	00048413          	mv	s0,s1
80009dcc:	000a0713          	mv	a4,s4
80009dd0:	fc5ff06f          	j	80009d94 <__mulsf3+0x288>
80009dd4:	00090813          	mv	a6,s2
80009dd8:	ea5ff06f          	j	80009c7c <__mulsf3+0x170>
80009ddc:	00100713          	li	a4,1
80009de0:	00050c63          	beqz	a0,80009df8 <__mulsf3+0x2ec>
80009de4:	40a70733          	sub	a4,a4,a0
80009de8:	01b00693          	li	a3,27
80009dec:	00000793          	li	a5,0
80009df0:	00000513          	li	a0,0
80009df4:	ece6c6e3          	blt	a3,a4,80009cc0 <__mulsf3+0x1b4>
80009df8:	09e80813          	addi	a6,a6,158
80009dfc:	00e45733          	srl	a4,s0,a4
80009e00:	01041433          	sll	s0,s0,a6
80009e04:	00803433          	snez	s0,s0
80009e08:	008767b3          	or	a5,a4,s0
80009e0c:	0077f713          	andi	a4,a5,7
80009e10:	00070a63          	beqz	a4,80009e24 <__mulsf3+0x318>
80009e14:	00f7f713          	andi	a4,a5,15
80009e18:	00400693          	li	a3,4
80009e1c:	00d70463          	beq	a4,a3,80009e24 <__mulsf3+0x318>
80009e20:	00d787b3          	add	a5,a5,a3
80009e24:	00579713          	slli	a4,a5,0x5
80009e28:	0037d793          	srli	a5,a5,0x3
80009e2c:	f80752e3          	bgez	a4,80009db0 <__mulsf3+0x2a4>
80009e30:	00000793          	li	a5,0
80009e34:	00100513          	li	a0,1
80009e38:	e89ff06f          	j	80009cc0 <__mulsf3+0x1b4>
80009e3c:	004007b7          	lui	a5,0x400
80009e40:	0ff00513          	li	a0,255
80009e44:	00000993          	li	s3,0
80009e48:	e79ff06f          	j	80009cc0 <__mulsf3+0x1b4>
80009e4c:	00000793          	li	a5,0
80009e50:	0ff00513          	li	a0,255
80009e54:	e6dff06f          	j	80009cc0 <__mulsf3+0x1b4>

80009e58 <__subsf3>:
80009e58:	00800737          	lui	a4,0x800
80009e5c:	ff010113          	addi	sp,sp,-16
80009e60:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
80009e64:	0175d693          	srli	a3,a1,0x17
80009e68:	00a777b3          	and	a5,a4,a0
80009e6c:	00812423          	sw	s0,8(sp)
80009e70:	00b77733          	and	a4,a4,a1
80009e74:	00912223          	sw	s1,4(sp)
80009e78:	01755413          	srli	s0,a0,0x17
80009e7c:	00112623          	sw	ra,12(sp)
80009e80:	01212023          	sw	s2,0(sp)
80009e84:	0ff6f693          	zext.b	a3,a3
80009e88:	0ff00613          	li	a2,255
80009e8c:	0ff47413          	zext.b	s0,s0
80009e90:	01f55493          	srli	s1,a0,0x1f
80009e94:	00379793          	slli	a5,a5,0x3
80009e98:	01f5d593          	srli	a1,a1,0x1f
80009e9c:	00371713          	slli	a4,a4,0x3
80009ea0:	00c69463          	bne	a3,a2,80009ea8 <__subsf3+0x50>
80009ea4:	00071463          	bnez	a4,80009eac <__subsf3+0x54>
80009ea8:	0015c593          	xori	a1,a1,1
80009eac:	40d40633          	sub	a2,s0,a3
80009eb0:	1c959e63          	bne	a1,s1,8000a08c <__subsf3+0x234>
80009eb4:	08c05e63          	blez	a2,80009f50 <__subsf3+0xf8>
80009eb8:	0ff00513          	li	a0,255
80009ebc:	02069663          	bnez	a3,80009ee8 <__subsf3+0x90>
80009ec0:	00070e63          	beqz	a4,80009edc <__subsf3+0x84>
80009ec4:	fff60593          	addi	a1,a2,-1 # 3ffffff <_stack_size+0x3ff7fff>
80009ec8:	00059863          	bnez	a1,80009ed8 <__subsf3+0x80>
80009ecc:	00e787b3          	add	a5,a5,a4
80009ed0:	00100413          	li	s0,1
80009ed4:	04c0006f          	j	80009f20 <__subsf3+0xc8>
80009ed8:	02a61063          	bne	a2,a0,80009ef8 <__subsf3+0xa0>
80009edc:	00060413          	mv	s0,a2
80009ee0:	00078713          	mv	a4,a5
80009ee4:	2c40006f          	j	8000a1a8 <__subsf3+0x350>
80009ee8:	fea40ce3          	beq	s0,a0,80009ee0 <__subsf3+0x88>
80009eec:	040006b7          	lui	a3,0x4000
80009ef0:	00d76733          	or	a4,a4,a3
80009ef4:	00060593          	mv	a1,a2
80009ef8:	01b00613          	li	a2,27
80009efc:	00100693          	li	a3,1
80009f00:	00b64e63          	blt	a2,a1,80009f1c <__subsf3+0xc4>
80009f04:	02000693          	li	a3,32
80009f08:	40b686b3          	sub	a3,a3,a1
80009f0c:	00b75633          	srl	a2,a4,a1
80009f10:	00d71733          	sll	a4,a4,a3
80009f14:	00e03733          	snez	a4,a4
80009f18:	00e666b3          	or	a3,a2,a4
80009f1c:	00d787b3          	add	a5,a5,a3
80009f20:	00579713          	slli	a4,a5,0x5
80009f24:	12075463          	bgez	a4,8000a04c <__subsf3+0x1f4>
80009f28:	00140413          	addi	s0,s0,1
80009f2c:	0ff00713          	li	a4,255
80009f30:	36e40063          	beq	s0,a4,8000a290 <__subsf3+0x438>
80009f34:	7e000737          	lui	a4,0x7e000
80009f38:	0017f693          	andi	a3,a5,1
80009f3c:	fff70713          	addi	a4,a4,-1 # 7dffffff <_stack_size+0x7dff7fff>
80009f40:	0017d793          	srli	a5,a5,0x1
80009f44:	00e7f7b3          	and	a5,a5,a4
80009f48:	00d7e7b3          	or	a5,a5,a3
80009f4c:	1000006f          	j	8000a04c <__subsf3+0x1f4>
80009f50:	06060463          	beqz	a2,80009fb8 <__subsf3+0x160>
80009f54:	40868633          	sub	a2,a3,s0
80009f58:	0ff00513          	li	a0,255
80009f5c:	00041e63          	bnez	s0,80009f78 <__subsf3+0x120>
80009f60:	32078263          	beqz	a5,8000a284 <__subsf3+0x42c>
80009f64:	fff60593          	addi	a1,a2,-1
80009f68:	f60582e3          	beqz	a1,80009ecc <__subsf3+0x74>
80009f6c:	00a61e63          	bne	a2,a0,80009f88 <__subsf3+0x130>
80009f70:	0ff00413          	li	s0,255
80009f74:	2340006f          	j	8000a1a8 <__subsf3+0x350>
80009f78:	fea68ce3          	beq	a3,a0,80009f70 <__subsf3+0x118>
80009f7c:	040005b7          	lui	a1,0x4000
80009f80:	00b7e7b3          	or	a5,a5,a1
80009f84:	00060593          	mv	a1,a2
80009f88:	01b00513          	li	a0,27
80009f8c:	00100613          	li	a2,1
80009f90:	00b54e63          	blt	a0,a1,80009fac <__subsf3+0x154>
80009f94:	02000613          	li	a2,32
80009f98:	40b60633          	sub	a2,a2,a1
80009f9c:	00b7d533          	srl	a0,a5,a1
80009fa0:	00c797b3          	sll	a5,a5,a2
80009fa4:	00f037b3          	snez	a5,a5
80009fa8:	00f56633          	or	a2,a0,a5
80009fac:	00e607b3          	add	a5,a2,a4
80009fb0:	00068413          	mv	s0,a3
80009fb4:	f6dff06f          	j	80009f20 <__subsf3+0xc8>
80009fb8:	00140693          	addi	a3,s0,1
80009fbc:	0fe6f613          	andi	a2,a3,254
80009fc0:	06061c63          	bnez	a2,8000a038 <__subsf3+0x1e0>
80009fc4:	06041263          	bnez	s0,8000a028 <__subsf3+0x1d0>
80009fc8:	2a078863          	beqz	a5,8000a278 <__subsf3+0x420>
80009fcc:	08070c63          	beqz	a4,8000a064 <__subsf3+0x20c>
80009fd0:	00f70733          	add	a4,a4,a5
80009fd4:	00571793          	slli	a5,a4,0x5
80009fd8:	1c07d863          	bgez	a5,8000a1a8 <__subsf3+0x350>
80009fdc:	1f8007b7          	lui	a5,0x1f800
80009fe0:	00375713          	srli	a4,a4,0x3
80009fe4:	fff78793          	addi	a5,a5,-1 # 1f7fffff <_stack_size+0x1f7f7fff>
80009fe8:	00f777b3          	and	a5,a4,a5
80009fec:	00100413          	li	s0,1
80009ff0:	01741413          	slli	s0,s0,0x17
80009ff4:	7f800737          	lui	a4,0x7f800
80009ff8:	00979793          	slli	a5,a5,0x9
80009ffc:	00e47433          	and	s0,s0,a4
8000a000:	0097d793          	srli	a5,a5,0x9
8000a004:	00f46433          	or	s0,s0,a5
8000a008:	01f49513          	slli	a0,s1,0x1f
8000a00c:	00c12083          	lw	ra,12(sp)
8000a010:	00a46533          	or	a0,s0,a0
8000a014:	00812403          	lw	s0,8(sp)
8000a018:	00412483          	lw	s1,4(sp)
8000a01c:	00012903          	lw	s2,0(sp)
8000a020:	01010113          	addi	sp,sp,16
8000a024:	00008067          	ret
8000a028:	f40784e3          	beqz	a5,80009f70 <__subsf3+0x118>
8000a02c:	1c071863          	bnez	a4,8000a1fc <__subsf3+0x3a4>
8000a030:	00078713          	mv	a4,a5
8000a034:	f3dff06f          	j	80009f70 <__subsf3+0x118>
8000a038:	0ff00613          	li	a2,255
8000a03c:	24c68863          	beq	a3,a2,8000a28c <__subsf3+0x434>
8000a040:	00e78733          	add	a4,a5,a4
8000a044:	00175793          	srli	a5,a4,0x1
8000a048:	00068413          	mv	s0,a3
8000a04c:	0077f713          	andi	a4,a5,7
8000a050:	00070a63          	beqz	a4,8000a064 <__subsf3+0x20c>
8000a054:	00f7f713          	andi	a4,a5,15
8000a058:	00400693          	li	a3,4
8000a05c:	00d70463          	beq	a4,a3,8000a064 <__subsf3+0x20c>
8000a060:	00d787b3          	add	a5,a5,a3
8000a064:	00579713          	slli	a4,a5,0x5
8000a068:	e6075ce3          	bgez	a4,80009ee0 <__subsf3+0x88>
8000a06c:	00140413          	addi	s0,s0,1
8000a070:	0ff00713          	li	a4,255
8000a074:	20e40e63          	beq	s0,a4,8000a290 <__subsf3+0x438>
8000a078:	1f800737          	lui	a4,0x1f800
8000a07c:	0037d793          	srli	a5,a5,0x3
8000a080:	fff70713          	addi	a4,a4,-1 # 1f7fffff <_stack_size+0x1f7f7fff>
8000a084:	00e7f7b3          	and	a5,a5,a4
8000a088:	f69ff06f          	j	80009ff0 <__subsf3+0x198>
8000a08c:	08c05063          	blez	a2,8000a10c <__subsf3+0x2b4>
8000a090:	06069263          	bnez	a3,8000a0f4 <__subsf3+0x29c>
8000a094:	e40704e3          	beqz	a4,80009edc <__subsf3+0x84>
8000a098:	fff60593          	addi	a1,a2,-1
8000a09c:	00059863          	bnez	a1,8000a0ac <__subsf3+0x254>
8000a0a0:	40e787b3          	sub	a5,a5,a4
8000a0a4:	00100413          	li	s0,1
8000a0a8:	0340006f          	j	8000a0dc <__subsf3+0x284>
8000a0ac:	0ff00693          	li	a3,255
8000a0b0:	e2d606e3          	beq	a2,a3,80009edc <__subsf3+0x84>
8000a0b4:	01b00613          	li	a2,27
8000a0b8:	00100693          	li	a3,1
8000a0bc:	00b64e63          	blt	a2,a1,8000a0d8 <__subsf3+0x280>
8000a0c0:	02000693          	li	a3,32
8000a0c4:	40b686b3          	sub	a3,a3,a1
8000a0c8:	00b75633          	srl	a2,a4,a1
8000a0cc:	00d71733          	sll	a4,a4,a3
8000a0d0:	00e03733          	snez	a4,a4
8000a0d4:	00e666b3          	or	a3,a2,a4
8000a0d8:	40d787b3          	sub	a5,a5,a3
8000a0dc:	00579713          	slli	a4,a5,0x5
8000a0e0:	f60756e3          	bgez	a4,8000a04c <__subsf3+0x1f4>
8000a0e4:	04000937          	lui	s2,0x4000
8000a0e8:	fff90913          	addi	s2,s2,-1 # 3ffffff <_stack_size+0x3ff7fff>
8000a0ec:	0127f933          	and	s2,a5,s2
8000a0f0:	1300006f          	j	8000a220 <__subsf3+0x3c8>
8000a0f4:	0ff00693          	li	a3,255
8000a0f8:	ded404e3          	beq	s0,a3,80009ee0 <__subsf3+0x88>
8000a0fc:	040006b7          	lui	a3,0x4000
8000a100:	00d76733          	or	a4,a4,a3
8000a104:	00060593          	mv	a1,a2
8000a108:	fadff06f          	j	8000a0b4 <__subsf3+0x25c>
8000a10c:	06060e63          	beqz	a2,8000a188 <__subsf3+0x330>
8000a110:	40868633          	sub	a2,a3,s0
8000a114:	02041663          	bnez	s0,8000a140 <__subsf3+0x2e8>
8000a118:	16078463          	beqz	a5,8000a280 <__subsf3+0x428>
8000a11c:	fff60513          	addi	a0,a2,-1
8000a120:	00051863          	bnez	a0,8000a130 <__subsf3+0x2d8>
8000a124:	40f707b3          	sub	a5,a4,a5
8000a128:	00058493          	mv	s1,a1
8000a12c:	f79ff06f          	j	8000a0a4 <__subsf3+0x24c>
8000a130:	0ff00813          	li	a6,255
8000a134:	03061063          	bne	a2,a6,8000a154 <__subsf3+0x2fc>
8000a138:	00058493          	mv	s1,a1
8000a13c:	e35ff06f          	j	80009f70 <__subsf3+0x118>
8000a140:	0ff00513          	li	a0,255
8000a144:	fea68ae3          	beq	a3,a0,8000a138 <__subsf3+0x2e0>
8000a148:	04000537          	lui	a0,0x4000
8000a14c:	00a7e7b3          	or	a5,a5,a0
8000a150:	00060513          	mv	a0,a2
8000a154:	01b00813          	li	a6,27
8000a158:	00100613          	li	a2,1
8000a15c:	00a84e63          	blt	a6,a0,8000a178 <__subsf3+0x320>
8000a160:	02000613          	li	a2,32
8000a164:	40a60633          	sub	a2,a2,a0
8000a168:	00a7d833          	srl	a6,a5,a0
8000a16c:	00c797b3          	sll	a5,a5,a2
8000a170:	00f037b3          	snez	a5,a5
8000a174:	00f86633          	or	a2,a6,a5
8000a178:	40c707b3          	sub	a5,a4,a2
8000a17c:	00068413          	mv	s0,a3
8000a180:	00058493          	mv	s1,a1
8000a184:	f59ff06f          	j	8000a0dc <__subsf3+0x284>
8000a188:	00140693          	addi	a3,s0,1
8000a18c:	0fe6f693          	andi	a3,a3,254
8000a190:	06069e63          	bnez	a3,8000a20c <__subsf3+0x3b4>
8000a194:	06041263          	bnez	s0,8000a1f8 <__subsf3+0x3a0>
8000a198:	02079463          	bnez	a5,8000a1c0 <__subsf3+0x368>
8000a19c:	00000493          	li	s1,0
8000a1a0:	e40708e3          	beqz	a4,80009ff0 <__subsf3+0x198>
8000a1a4:	00058493          	mv	s1,a1
8000a1a8:	00375793          	srli	a5,a4,0x3
8000a1ac:	0ff00713          	li	a4,255
8000a1b0:	e4e410e3          	bne	s0,a4,80009ff0 <__subsf3+0x198>
8000a1b4:	e2078ee3          	beqz	a5,80009ff0 <__subsf3+0x198>
8000a1b8:	004007b7          	lui	a5,0x400
8000a1bc:	0340006f          	j	8000a1f0 <__subsf3+0x398>
8000a1c0:	ea0702e3          	beqz	a4,8000a064 <__subsf3+0x20c>
8000a1c4:	40e786b3          	sub	a3,a5,a4
8000a1c8:	00569613          	slli	a2,a3,0x5
8000a1cc:	00065c63          	bgez	a2,8000a1e4 <__subsf3+0x38c>
8000a1d0:	40f707b3          	sub	a5,a4,a5
8000a1d4:	00058493          	mv	s1,a1
8000a1d8:	00000413          	li	s0,0
8000a1dc:	e0078ae3          	beqz	a5,80009ff0 <__subsf3+0x198>
8000a1e0:	e6dff06f          	j	8000a04c <__subsf3+0x1f4>
8000a1e4:	00068713          	mv	a4,a3
8000a1e8:	fc0690e3          	bnez	a3,8000a1a8 <__subsf3+0x350>
8000a1ec:	00000793          	li	a5,0
8000a1f0:	00000493          	li	s1,0
8000a1f4:	dfdff06f          	j	80009ff0 <__subsf3+0x198>
8000a1f8:	e2079ae3          	bnez	a5,8000a02c <__subsf3+0x1d4>
8000a1fc:	00000493          	li	s1,0
8000a200:	0ff00413          	li	s0,255
8000a204:	004007b7          	lui	a5,0x400
8000a208:	de9ff06f          	j	80009ff0 <__subsf3+0x198>
8000a20c:	40e78933          	sub	s2,a5,a4
8000a210:	00591693          	slli	a3,s2,0x5
8000a214:	0406d263          	bgez	a3,8000a258 <__subsf3+0x400>
8000a218:	40f70933          	sub	s2,a4,a5
8000a21c:	00058493          	mv	s1,a1
8000a220:	00090513          	mv	a0,s2
8000a224:	358000ef          	jal	8000a57c <__clzsi2>
8000a228:	ffb50513          	addi	a0,a0,-5 # 3fffffb <_stack_size+0x3ff7ffb>
8000a22c:	00a91933          	sll	s2,s2,a0
8000a230:	02854a63          	blt	a0,s0,8000a264 <__subsf3+0x40c>
8000a234:	40850533          	sub	a0,a0,s0
8000a238:	00150513          	addi	a0,a0,1
8000a23c:	02000713          	li	a4,32
8000a240:	40a70733          	sub	a4,a4,a0
8000a244:	00a957b3          	srl	a5,s2,a0
8000a248:	00e91933          	sll	s2,s2,a4
8000a24c:	01203933          	snez	s2,s2
8000a250:	0127e7b3          	or	a5,a5,s2
8000a254:	f85ff06f          	j	8000a1d8 <__subsf3+0x380>
8000a258:	fc0914e3          	bnez	s2,8000a220 <__subsf3+0x3c8>
8000a25c:	00000413          	li	s0,0
8000a260:	f8dff06f          	j	8000a1ec <__subsf3+0x394>
8000a264:	fc0007b7          	lui	a5,0xfc000
8000a268:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_end+0x7bbfffff>
8000a26c:	40a40433          	sub	s0,s0,a0
8000a270:	00f977b3          	and	a5,s2,a5
8000a274:	dd9ff06f          	j	8000a04c <__subsf3+0x1f4>
8000a278:	00070793          	mv	a5,a4
8000a27c:	f5dff06f          	j	8000a1d8 <__subsf3+0x380>
8000a280:	00058493          	mv	s1,a1
8000a284:	00060413          	mv	s0,a2
8000a288:	f21ff06f          	j	8000a1a8 <__subsf3+0x350>
8000a28c:	00068413          	mv	s0,a3
8000a290:	00000793          	li	a5,0
8000a294:	d5dff06f          	j	80009ff0 <__subsf3+0x198>

8000a298 <__fixsfsi>:
8000a298:	00800637          	lui	a2,0x800
8000a29c:	01755713          	srli	a4,a0,0x17
8000a2a0:	fff60793          	addi	a5,a2,-1 # 7fffff <_stack_size+0x7f7fff>
8000a2a4:	0ff77713          	zext.b	a4,a4
8000a2a8:	07e00593          	li	a1,126
8000a2ac:	00a7f7b3          	and	a5,a5,a0
8000a2b0:	01f55693          	srli	a3,a0,0x1f
8000a2b4:	04e5d663          	bge	a1,a4,8000a300 <__fixsfsi+0x68>
8000a2b8:	09d00593          	li	a1,157
8000a2bc:	00e5da63          	bge	a1,a4,8000a2d0 <__fixsfsi+0x38>
8000a2c0:	80000537          	lui	a0,0x80000
8000a2c4:	fff50513          	addi	a0,a0,-1 # 7fffffff <_stack_size+0x7fff7fff>
8000a2c8:	00a68533          	add	a0,a3,a0
8000a2cc:	00008067          	ret
8000a2d0:	00c7e533          	or	a0,a5,a2
8000a2d4:	09500793          	li	a5,149
8000a2d8:	00e7dc63          	bge	a5,a4,8000a2f0 <__fixsfsi+0x58>
8000a2dc:	f6a70713          	addi	a4,a4,-150
8000a2e0:	00e51533          	sll	a0,a0,a4
8000a2e4:	02068063          	beqz	a3,8000a304 <__fixsfsi+0x6c>
8000a2e8:	40a00533          	neg	a0,a0
8000a2ec:	00008067          	ret
8000a2f0:	09600793          	li	a5,150
8000a2f4:	40e787b3          	sub	a5,a5,a4
8000a2f8:	00f55533          	srl	a0,a0,a5
8000a2fc:	fe9ff06f          	j	8000a2e4 <__fixsfsi+0x4c>
8000a300:	00000513          	li	a0,0
8000a304:	00008067          	ret

8000a308 <__floatsisf>:
8000a308:	ff010113          	addi	sp,sp,-16
8000a30c:	00112623          	sw	ra,12(sp)
8000a310:	00812423          	sw	s0,8(sp)
8000a314:	00912223          	sw	s1,4(sp)
8000a318:	00050793          	mv	a5,a0
8000a31c:	0e050463          	beqz	a0,8000a404 <__floatsisf+0xfc>
8000a320:	41f55713          	srai	a4,a0,0x1f
8000a324:	00a74433          	xor	s0,a4,a0
8000a328:	40e40433          	sub	s0,s0,a4
8000a32c:	01f55493          	srli	s1,a0,0x1f
8000a330:	00040513          	mv	a0,s0
8000a334:	248000ef          	jal	8000a57c <__clzsi2>
8000a338:	09e00793          	li	a5,158
8000a33c:	40a787b3          	sub	a5,a5,a0
8000a340:	09600713          	li	a4,150
8000a344:	04f74063          	blt	a4,a5,8000a384 <__floatsisf+0x7c>
8000a348:	00800693          	li	a3,8
8000a34c:	0cd50263          	beq	a0,a3,8000a410 <__floatsisf+0x108>
8000a350:	ff850513          	addi	a0,a0,-8
8000a354:	00a41433          	sll	s0,s0,a0
8000a358:	00941413          	slli	s0,s0,0x9
8000a35c:	00945413          	srli	s0,s0,0x9
8000a360:	01779793          	slli	a5,a5,0x17
8000a364:	00c12083          	lw	ra,12(sp)
8000a368:	0087e7b3          	or	a5,a5,s0
8000a36c:	00812403          	lw	s0,8(sp)
8000a370:	01f49513          	slli	a0,s1,0x1f
8000a374:	00a7e533          	or	a0,a5,a0
8000a378:	00412483          	lw	s1,4(sp)
8000a37c:	01010113          	addi	sp,sp,16
8000a380:	00008067          	ret
8000a384:	09900713          	li	a4,153
8000a388:	06f75463          	bge	a4,a5,8000a3f0 <__floatsisf+0xe8>
8000a38c:	01b50713          	addi	a4,a0,27
8000a390:	00500693          	li	a3,5
8000a394:	00e41733          	sll	a4,s0,a4
8000a398:	40a686b3          	sub	a3,a3,a0
8000a39c:	00e03733          	snez	a4,a4
8000a3a0:	00d45433          	srl	s0,s0,a3
8000a3a4:	00876733          	or	a4,a4,s0
8000a3a8:	fc000437          	lui	s0,0xfc000
8000a3ac:	fff40413          	addi	s0,s0,-1 # fbffffff <_stack_end+0x7bbfffff>
8000a3b0:	00777693          	andi	a3,a4,7
8000a3b4:	00877433          	and	s0,a4,s0
8000a3b8:	04068263          	beqz	a3,8000a3fc <__floatsisf+0xf4>
8000a3bc:	00f77713          	andi	a4,a4,15
8000a3c0:	00400693          	li	a3,4
8000a3c4:	02d70c63          	beq	a4,a3,8000a3fc <__floatsisf+0xf4>
8000a3c8:	00d40433          	add	s0,s0,a3
8000a3cc:	00541693          	slli	a3,s0,0x5
8000a3d0:	00345713          	srli	a4,s0,0x3
8000a3d4:	0206d463          	bgez	a3,8000a3fc <__floatsisf+0xf4>
8000a3d8:	1f800437          	lui	s0,0x1f800
8000a3dc:	09f00793          	li	a5,159
8000a3e0:	fff40413          	addi	s0,s0,-1 # 1f7fffff <_stack_size+0x1f7f7fff>
8000a3e4:	40a787b3          	sub	a5,a5,a0
8000a3e8:	00877433          	and	s0,a4,s0
8000a3ec:	f6dff06f          	j	8000a358 <__floatsisf+0x50>
8000a3f0:	ffb50713          	addi	a4,a0,-5
8000a3f4:	00e41733          	sll	a4,s0,a4
8000a3f8:	fb1ff06f          	j	8000a3a8 <__floatsisf+0xa0>
8000a3fc:	00345413          	srli	s0,s0,0x3
8000a400:	f59ff06f          	j	8000a358 <__floatsisf+0x50>
8000a404:	00000493          	li	s1,0
8000a408:	00000413          	li	s0,0
8000a40c:	f4dff06f          	j	8000a358 <__floatsisf+0x50>
8000a410:	00070793          	mv	a5,a4
8000a414:	f45ff06f          	j	8000a358 <__floatsisf+0x50>

8000a418 <__mulsi3>:
8000a418:	00050613          	mv	a2,a0
8000a41c:	00000513          	li	a0,0
8000a420:	0015f693          	andi	a3,a1,1
8000a424:	00068463          	beqz	a3,8000a42c <__mulsi3+0x14>
8000a428:	00c50533          	add	a0,a0,a2
8000a42c:	0015d593          	srli	a1,a1,0x1
8000a430:	00161613          	slli	a2,a2,0x1
8000a434:	fe0596e3          	bnez	a1,8000a420 <__mulsi3+0x8>
8000a438:	00008067          	ret

8000a43c <__muldi3>:
8000a43c:	00050e13          	mv	t3,a0
8000a440:	ff010113          	addi	sp,sp,-16
8000a444:	00068313          	mv	t1,a3
8000a448:	00112623          	sw	ra,12(sp)
8000a44c:	00060513          	mv	a0,a2
8000a450:	000e0893          	mv	a7,t3
8000a454:	00060693          	mv	a3,a2
8000a458:	00000713          	li	a4,0
8000a45c:	00000793          	li	a5,0
8000a460:	00000813          	li	a6,0
8000a464:	0016fe93          	andi	t4,a3,1
8000a468:	00171613          	slli	a2,a4,0x1
8000a46c:	000e8a63          	beqz	t4,8000a480 <__muldi3+0x44>
8000a470:	01088833          	add	a6,a7,a6
8000a474:	00e787b3          	add	a5,a5,a4
8000a478:	01183733          	sltu	a4,a6,a7
8000a47c:	00f707b3          	add	a5,a4,a5
8000a480:	01f8d713          	srli	a4,a7,0x1f
8000a484:	0016d693          	srli	a3,a3,0x1
8000a488:	00e66733          	or	a4,a2,a4
8000a48c:	00189893          	slli	a7,a7,0x1
8000a490:	fc069ae3          	bnez	a3,8000a464 <__muldi3+0x28>
8000a494:	00058663          	beqz	a1,8000a4a0 <__muldi3+0x64>
8000a498:	f81ff0ef          	jal	8000a418 <__mulsi3>
8000a49c:	00a787b3          	add	a5,a5,a0
8000a4a0:	00030a63          	beqz	t1,8000a4b4 <__muldi3+0x78>
8000a4a4:	000e0513          	mv	a0,t3
8000a4a8:	00030593          	mv	a1,t1
8000a4ac:	f6dff0ef          	jal	8000a418 <__mulsi3>
8000a4b0:	00f507b3          	add	a5,a0,a5
8000a4b4:	00c12083          	lw	ra,12(sp)
8000a4b8:	00080513          	mv	a0,a6
8000a4bc:	00078593          	mv	a1,a5
8000a4c0:	01010113          	addi	sp,sp,16
8000a4c4:	00008067          	ret

8000a4c8 <__divsi3>:
8000a4c8:	06054063          	bltz	a0,8000a528 <__umodsi3+0x10>
8000a4cc:	0605c663          	bltz	a1,8000a538 <__umodsi3+0x20>

8000a4d0 <__hidden___udivsi3>:
8000a4d0:	00058613          	mv	a2,a1
8000a4d4:	00050593          	mv	a1,a0
8000a4d8:	fff00513          	li	a0,-1
8000a4dc:	02060c63          	beqz	a2,8000a514 <__hidden___udivsi3+0x44>
8000a4e0:	00100693          	li	a3,1
8000a4e4:	00b67a63          	bgeu	a2,a1,8000a4f8 <__hidden___udivsi3+0x28>
8000a4e8:	00c05863          	blez	a2,8000a4f8 <__hidden___udivsi3+0x28>
8000a4ec:	00161613          	slli	a2,a2,0x1
8000a4f0:	00169693          	slli	a3,a3,0x1
8000a4f4:	feb66ae3          	bltu	a2,a1,8000a4e8 <__hidden___udivsi3+0x18>
8000a4f8:	00000513          	li	a0,0
8000a4fc:	00c5e663          	bltu	a1,a2,8000a508 <__hidden___udivsi3+0x38>
8000a500:	40c585b3          	sub	a1,a1,a2
8000a504:	00d56533          	or	a0,a0,a3
8000a508:	0016d693          	srli	a3,a3,0x1
8000a50c:	00165613          	srli	a2,a2,0x1
8000a510:	fe0696e3          	bnez	a3,8000a4fc <__hidden___udivsi3+0x2c>
8000a514:	00008067          	ret

8000a518 <__umodsi3>:
8000a518:	00008293          	mv	t0,ra
8000a51c:	fb5ff0ef          	jal	8000a4d0 <__hidden___udivsi3>
8000a520:	00058513          	mv	a0,a1
8000a524:	00028067          	jr	t0
8000a528:	40a00533          	neg	a0,a0
8000a52c:	00b04863          	bgtz	a1,8000a53c <__umodsi3+0x24>
8000a530:	40b005b3          	neg	a1,a1
8000a534:	f9dff06f          	j	8000a4d0 <__hidden___udivsi3>
8000a538:	40b005b3          	neg	a1,a1
8000a53c:	00008293          	mv	t0,ra
8000a540:	f91ff0ef          	jal	8000a4d0 <__hidden___udivsi3>
8000a544:	40a00533          	neg	a0,a0
8000a548:	00028067          	jr	t0

8000a54c <__modsi3>:
8000a54c:	00008293          	mv	t0,ra
8000a550:	0005ca63          	bltz	a1,8000a564 <__modsi3+0x18>
8000a554:	00054c63          	bltz	a0,8000a56c <__modsi3+0x20>
8000a558:	f79ff0ef          	jal	8000a4d0 <__hidden___udivsi3>
8000a55c:	00058513          	mv	a0,a1
8000a560:	00028067          	jr	t0
8000a564:	40b005b3          	neg	a1,a1
8000a568:	fe0558e3          	bgez	a0,8000a558 <__modsi3+0xc>
8000a56c:	40a00533          	neg	a0,a0
8000a570:	f61ff0ef          	jal	8000a4d0 <__hidden___udivsi3>
8000a574:	40b00533          	neg	a0,a1
8000a578:	00028067          	jr	t0

8000a57c <__clzsi2>:
8000a57c:	000107b7          	lui	a5,0x10
8000a580:	02f57a63          	bgeu	a0,a5,8000a5b4 <__clzsi2+0x38>
8000a584:	10053793          	sltiu	a5,a0,256
8000a588:	0017b793          	seqz	a5,a5
8000a58c:	00379793          	slli	a5,a5,0x3
8000a590:	8000b737          	lui	a4,0x8000b
8000a594:	02000693          	li	a3,32
8000a598:	40f686b3          	sub	a3,a3,a5
8000a59c:	00f55533          	srl	a0,a0,a5
8000a5a0:	d1470793          	addi	a5,a4,-748 # 8000ad14 <__clz_tab>
8000a5a4:	00a787b3          	add	a5,a5,a0
8000a5a8:	0007c503          	lbu	a0,0(a5) # 10000 <_stack_size+0x8000>
8000a5ac:	40a68533          	sub	a0,a3,a0
8000a5b0:	00008067          	ret
8000a5b4:	01000737          	lui	a4,0x1000
8000a5b8:	01800793          	li	a5,24
8000a5bc:	fce57ae3          	bgeu	a0,a4,8000a590 <__clzsi2+0x14>
8000a5c0:	01000793          	li	a5,16
8000a5c4:	fcdff06f          	j	8000a590 <__clzsi2+0x14>
8000a5c8:	72617453          	.insn	4, 0x72617453
8000a5cc:	6974                	.insn	2, 0x6974
8000a5ce:	676e                	.insn	2, 0x676e
8000a5d0:	4620                	.insn	2, 0x4620
8000a5d2:	6172                	.insn	2, 0x6172
8000a5d4:	656d                	.insn	2, 0x656d
8000a5d6:	4220                	.insn	2, 0x4220
8000a5d8:	6675                	.insn	2, 0x6675
8000a5da:	6566                	.insn	2, 0x6566
8000a5dc:	2072                	.insn	2, 0x2072
8000a5de:	6554                	.insn	2, 0x6554
8000a5e0:	0a0d7473          	.insn	4, 0x0a0d7473
8000a5e4:	0000                	.insn	2, 0x
8000a5e6:	0000                	.insn	2, 0x
8000a5e8:	65726353          	.insn	4, 0x65726353
8000a5ec:	6e65                	.insn	2, 0x6e65
8000a5ee:	6320                	.insn	2, 0x6320
8000a5f0:	6168                	.insn	2, 0x6168
8000a5f2:	676e                	.insn	2, 0x676e
8000a5f4:	2065                	.insn	2, 0x2065
8000a5f6:	7274                	.insn	2, 0x7274
8000a5f8:	6769                	.insn	2, 0x6769
8000a5fa:	65726567          	.insn	4, 0x65726567
8000a5fe:	2064                	.insn	2, 0x2064
8000a600:	0a0d4e4f          	.insn	4, 0x0a0d4e4f
8000a604:	0000                	.insn	2, 0x
8000a606:	0000                	.insn	2, 0x
8000a608:	65726353          	.insn	4, 0x65726353
8000a60c:	6e65                	.insn	2, 0x6e65
8000a60e:	6620                	.insn	2, 0x6620
8000a610:	6c69                	.insn	2, 0x6c69
8000a612:	656c                	.insn	2, 0x656c
8000a614:	2064                	.insn	2, 0x2064
8000a616:	68746977          	.insn	4, 0x68746977
8000a61a:	6220                	.insn	2, 0x6220
8000a61c:	756c                	.insn	2, 0x756c
8000a61e:	0d65                	.insn	2, 0x0d65
8000a620:	000a                	.insn	2, 0x000a
8000a622:	0000                	.insn	2, 0x
8000a624:	7246                	.insn	2, 0x7246
8000a626:	6d61                	.insn	2, 0x6d61
8000a628:	2065                	.insn	2, 0x2065
8000a62a:	6425                	.insn	2, 0x6425
8000a62c:	0a0d                	.insn	2, 0x0a0d
8000a62e:	0000                	.insn	2, 0x
8000a630:	6e49                	.insn	2, 0x6e49
8000a632:	6176                	.insn	2, 0x6176
8000a634:	696c                	.insn	2, 0x696c
8000a636:	2064                	.insn	2, 0x2064
8000a638:	616d                	.insn	2, 0x616d
8000a63a:	20636967          	.insn	4, 0x20636967
8000a63e:	756e                	.insn	2, 0x756e
8000a640:	626d                	.insn	2, 0x626d
8000a642:	7265                	.insn	2, 0x7265
8000a644:	6120                	.insn	2, 0x6120
8000a646:	2074                	.insn	2, 0x2074
8000a648:	6f70                	.insn	2, 0x6f70
8000a64a:	69746973          	.insn	4, 0x69746973
8000a64e:	25206e6f          	jal	t3,800108a0 <_heap_start+0x55c0>
8000a652:	0d64                	.insn	2, 0x0d64
8000a654:	000a                	.insn	2, 0x000a
8000a656:	0000                	.insn	2, 0x
8000a658:	7250                	.insn	2, 0x7250
8000a65a:	6172676f          	jal	a4,80031470 <_heap_start+0x26190>
8000a65e:	206d                	.insn	2, 0x206d
8000a660:	6e756f63          	bltu	a0,t2,8000ad5e <__clz_tab+0x4a>
8000a664:	3a74                	.insn	2, 0x3a74
8000a666:	2520                	.insn	2, 0x2520
8000a668:	0d64                	.insn	2, 0x0d64
8000a66a:	000a                	.insn	2, 0x000a
8000a66c:	63656843          	.insn	4, 0x63656843
8000a670:	676e696b          	.insn	4, 0x676e696b
8000a674:	7020                	.insn	2, 0x7020
8000a676:	6f72                	.insn	2, 0x6f72
8000a678:	6d617267          	.insn	4, 0x6d617267
8000a67c:	2520                	.insn	2, 0x2520
8000a67e:	2e64                	.insn	2, 0x2e64
8000a680:	2e2e                	.insn	2, 0x2e2e
8000a682:	0a0d                	.insn	2, 0x0a0d
8000a684:	0000                	.insn	2, 0x
8000a686:	0000                	.insn	2, 0x
8000a688:	7245                	.insn	2, 0x7245
8000a68a:	6f72                	.insn	2, 0x6f72
8000a68c:	3a72                	.insn	2, 0x3a72
8000a68e:	4620                	.insn	2, 0x4620
8000a690:	6c69                	.insn	2, 0x6c69
8000a692:	2065                	.insn	2, 0x2065
8000a694:	6f6e                	.insn	2, 0x6f6e
8000a696:	2074                	.insn	2, 0x2074
8000a698:	6f66                	.insn	2, 0x6f66
8000a69a:	6e75                	.insn	2, 0x6e75
8000a69c:	2064                	.insn	2, 0x2064
8000a69e:	202d                	.insn	2, 0x202d
8000a6a0:	7325                	.insn	2, 0x7325
8000a6a2:	0a0d                	.insn	2, 0x0a0d
8000a6a4:	0000                	.insn	2, 0x
8000a6a6:	0000                	.insn	2, 0x
8000a6a8:	2020                	.insn	2, 0x2020
8000a6aa:	2020                	.insn	2, 0x2020
8000a6ac:	7830                	.insn	2, 0x7830
8000a6ae:	7825                	.insn	2, 0x7825
8000a6b0:	7420                	.insn	2, 0x7420
8000a6b2:	7830206f          	j	8000d634 <_heap_start+0x2354>
8000a6b6:	7825                	.insn	2, 0x7825
8000a6b8:	0a0d                	.insn	2, 0x0a0d
8000a6ba:	0000                	.insn	2, 0x
8000a6bc:	2020                	.insn	2, 0x2020
8000a6be:	2020                	.insn	2, 0x2020
8000a6c0:	6946                	.insn	2, 0x6946
8000a6c2:	656c                	.insn	2, 0x656c
8000a6c4:	6f20                	.insn	2, 0x6f20
8000a6c6:	6570                	.insn	2, 0x6570
8000a6c8:	656e                	.insn	2, 0x656e
8000a6ca:	3a64                	.insn	2, 0x3a64
8000a6cc:	2520                	.insn	2, 0x2520
8000a6ce:	48282073          	.insn	4, 0x48282073
8000a6d2:	6e61                	.insn	2, 0x6e61
8000a6d4:	6c64                	.insn	2, 0x6c64
8000a6d6:	3a65                	.insn	2, 0x3a65
8000a6d8:	2520                	.insn	2, 0x2520
8000a6da:	2964                	.insn	2, 0x2964
8000a6dc:	2820                	.insn	2, 0x2820
8000a6de:	657a6973          	.insn	4, 0x657a6973
8000a6e2:	203a                	.insn	2, 0x203a
8000a6e4:	6425                	.insn	2, 0x6425
8000a6e6:	6220                	.insn	2, 0x6220
8000a6e8:	7479                	.insn	2, 0x7479
8000a6ea:	7365                	.insn	2, 0x7365
8000a6ec:	0d29                	.insn	2, 0x0d29
8000a6ee:	000a                	.insn	2, 0x000a
8000a6f0:	7245                	.insn	2, 0x7245
8000a6f2:	6f72                	.insn	2, 0x6f72
8000a6f4:	3a72                	.insn	2, 0x3a72
8000a6f6:	4d20                	.insn	2, 0x4d20
8000a6f8:	7861                	.insn	2, 0x7861
8000a6fa:	6d69                	.insn	2, 0x6d69
8000a6fc:	6d75                	.insn	2, 0x6d75
8000a6fe:	6620                	.insn	2, 0x6620
8000a700:	6c69                	.insn	2, 0x6c69
8000a702:	2065                	.insn	2, 0x2065
8000a704:	6e756f63          	bltu	a0,t2,8000ae02 <__clz_tab+0xee>
8000a708:	2074                	.insn	2, 0x2074
8000a70a:	6572                	.insn	2, 0x6572
8000a70c:	6361                	.insn	2, 0x6361
8000a70e:	6568                	.insn	2, 0x6568
8000a710:	2e64                	.insn	2, 0x2e64
8000a712:	0a0d                	.insn	2, 0x0a0d
8000a714:	0000                	.insn	2, 0x
8000a716:	0000                	.insn	2, 0x
8000a718:	7245                	.insn	2, 0x7245
8000a71a:	6f72                	.insn	2, 0x6f72
8000a71c:	3a72                	.insn	2, 0x3a72
8000a71e:	4920                	.insn	2, 0x4920
8000a720:	766e                	.insn	2, 0x766e
8000a722:	6c61                	.insn	2, 0x6c61
8000a724:	6469                	.insn	2, 0x6469
8000a726:	6620                	.insn	2, 0x6620
8000a728:	6c69                	.insn	2, 0x6c69
8000a72a:	2065                	.insn	2, 0x2065
8000a72c:	6168                	.insn	2, 0x6168
8000a72e:	646e                	.insn	2, 0x646e
8000a730:	656c                	.insn	2, 0x656c
8000a732:	2520                	.insn	2, 0x2520
8000a734:	0d64                	.insn	2, 0x0d64
8000a736:	000a                	.insn	2, 0x000a
8000a738:	7245                	.insn	2, 0x7245
8000a73a:	6f72                	.insn	2, 0x6f72
8000a73c:	3a72                	.insn	2, 0x3a72
8000a73e:	5220                	.insn	2, 0x5220
8000a740:	6165                	.insn	2, 0x6165
8000a742:	2064                	.insn	2, 0x2064
8000a744:	7865                	.insn	2, 0x7865
8000a746:	64656563          	bltu	a0,t1,8000ad90 <__clz_tab+0x7c>
8000a74a:	69662073          	.insn	4, 0x69662073
8000a74e:	656c                	.insn	2, 0x656c
8000a750:	6520                	.insn	2, 0x6520
8000a752:	646e                	.insn	2, 0x646e
8000a754:	6120                	.insn	2, 0x6120
8000a756:	6464                	.insn	2, 0x6464
8000a758:	6572                	.insn	2, 0x6572
8000a75a:	0d2e7373          	.insn	4, 0x0d2e7373
8000a75e:	000a                	.insn	2, 0x000a
8000a760:	7245                	.insn	2, 0x7245
8000a762:	6f72                	.insn	2, 0x6f72
8000a764:	3a72                	.insn	2, 0x3a72
8000a766:	4520                	.insn	2, 0x4520
8000a768:	646e                	.insn	2, 0x646e
8000a76a:	6f20                	.insn	2, 0x6f20
8000a76c:	2066                	.insn	2, 0x2066
8000a76e:	6966                	.insn	2, 0x6966
8000a770:	656c                	.insn	2, 0x656c
8000a772:	7220                	.insn	2, 0x7220
8000a774:	6165                	.insn	2, 0x6165
8000a776:	64656863          	bltu	a0,t1,8000adc6 <__clz_tab+0xb2>
8000a77a:	0d2e                	.insn	2, 0x0d2e
8000a77c:	000a                	.insn	2, 0x000a
8000a77e:	0000                	.insn	2, 0x
8000a780:	7245                	.insn	2, 0x7245
8000a782:	6f72                	.insn	2, 0x6f72
8000a784:	3a72                	.insn	2, 0x3a72
8000a786:	4920                	.insn	2, 0x4920
8000a788:	766e                	.insn	2, 0x766e
8000a78a:	6c61                	.insn	2, 0x6c61
8000a78c:	6469                	.insn	2, 0x6469
8000a78e:	6f20                	.insn	2, 0x6f20
8000a790:	6666                	.insn	2, 0x6666
8000a792:	20746573          	.insn	4, 0x20746573
8000a796:	6f66                	.insn	2, 0x6f66
8000a798:	2072                	.insn	2, 0x2072
8000a79a:	4b454553          	.insn	4, 0x4b454553
8000a79e:	535f 5445 0a0d      	.insn	6, 0x0a0d5445535f
8000a7a4:	0000                	.insn	2, 0x
8000a7a6:	0000                	.insn	2, 0x
8000a7a8:	7245                	.insn	2, 0x7245
8000a7aa:	6f72                	.insn	2, 0x6f72
8000a7ac:	3a72                	.insn	2, 0x3a72
8000a7ae:	4920                	.insn	2, 0x4920
8000a7b0:	766e                	.insn	2, 0x766e
8000a7b2:	6c61                	.insn	2, 0x6c61
8000a7b4:	6469                	.insn	2, 0x6469
8000a7b6:	6f20                	.insn	2, 0x6f20
8000a7b8:	6666                	.insn	2, 0x6666
8000a7ba:	20746573          	.insn	4, 0x20746573
8000a7be:	6f66                	.insn	2, 0x6f66
8000a7c0:	2072                	.insn	2, 0x2072
8000a7c2:	4b454553          	.insn	4, 0x4b454553
8000a7c6:	435f 5255 0a0d      	.insn	6, 0x0a0d5255435f
8000a7cc:	0000                	.insn	2, 0x
8000a7ce:	0000                	.insn	2, 0x
8000a7d0:	7245                	.insn	2, 0x7245
8000a7d2:	6f72                	.insn	2, 0x6f72
8000a7d4:	3a72                	.insn	2, 0x3a72
8000a7d6:	4920                	.insn	2, 0x4920
8000a7d8:	766e                	.insn	2, 0x766e
8000a7da:	6c61                	.insn	2, 0x6c61
8000a7dc:	6469                	.insn	2, 0x6469
8000a7de:	6f20                	.insn	2, 0x6f20
8000a7e0:	6666                	.insn	2, 0x6666
8000a7e2:	20746573          	.insn	4, 0x20746573
8000a7e6:	6f66                	.insn	2, 0x6f66
8000a7e8:	2072                	.insn	2, 0x2072
8000a7ea:	4b454553          	.insn	4, 0x4b454553
8000a7ee:	455f 444e 0a0d      	.insn	6, 0x0a0d444e455f
8000a7f4:	0000                	.insn	2, 0x
8000a7f6:	0000                	.insn	2, 0x
8000a7f8:	7245                	.insn	2, 0x7245
8000a7fa:	6f72                	.insn	2, 0x6f72
8000a7fc:	3a72                	.insn	2, 0x3a72
8000a7fe:	4920                	.insn	2, 0x4920
8000a800:	766e                	.insn	2, 0x766e
8000a802:	6c61                	.insn	2, 0x6c61
8000a804:	6469                	.insn	2, 0x6469
8000a806:	7720                	.insn	2, 0x7720
8000a808:	6568                	.insn	2, 0x6568
8000a80a:	636e                	.insn	2, 0x636e
8000a80c:	2065                	.insn	2, 0x2065
8000a80e:	6176                	.insn	2, 0x6176
8000a810:	756c                	.insn	2, 0x756c
8000a812:	0d65                	.insn	2, 0x0d65
8000a814:	000a                	.insn	2, 0x000a
8000a816:	0000                	.insn	2, 0x
8000a818:	7245                	.insn	2, 0x7245
8000a81a:	6f72                	.insn	2, 0x6f72
8000a81c:	3a72                	.insn	2, 0x3a72
8000a81e:	6220                	.insn	2, 0x6220
8000a820:	6461                	.insn	2, 0x6461
8000a822:	6d20                	.insn	2, 0x6d20
8000a824:	6761                	.insn	2, 0x6761
8000a826:	6369                	.insn	2, 0x6369
8000a828:	6120                	.insn	2, 0x6120
8000a82a:	2074                	.insn	2, 0x2074
8000a82c:	7525                	.insn	2, 0x7525
8000a82e:	2820                	.insn	2, 0x2820
8000a830:	20746f67          	.insn	4, 0x20746f67
8000a834:	27632527          	.insn	4, 0x27632527
8000a838:	202c                	.insn	2, 0x202c
8000a83a:	7865                	.insn	2, 0x7865
8000a83c:	6570                	.insn	2, 0x6570
8000a83e:	64657463          	bgeu	a0,t1,8000ae86 <_etext+0x72>
8000a842:	2720                	.insn	2, 0x2720
8000a844:	6325                	.insn	2, 0x6325
8000a846:	0a0d2927          	.insn	4, 0x0a0d2927
8000a84a:	0000                	.insn	2, 0x
8000a84c:	6946                	.insn	2, 0x6946
8000a84e:	656c                	.insn	2, 0x656c
8000a850:	25203a73          	.insn	4, 0x25203a73
8000a854:	0d64                	.insn	2, 0x0d64
8000a856:	000a                	.insn	2, 0x000a
8000a858:	6425                	.insn	2, 0x6425
8000a85a:	2029                	.insn	2, 0x2029
8000a85c:	7325                	.insn	2, 0x7325
8000a85e:	2020                	.insn	2, 0x2020
8000a860:	2578305b          	.insn	4, 0x2578305b
8000a864:	2078                	.insn	2, 0x2078
8000a866:	202d                	.insn	2, 0x202d
8000a868:	7830                	.insn	2, 0x7830
8000a86a:	7825                	.insn	2, 0x7825
8000a86c:	0a5d                	.insn	2, 0x0a5d
8000a86e:	0000                	.insn	2, 0x
8000a870:	3130                	.insn	2, 0x3130
8000a872:	3332                	.insn	2, 0x3332
8000a874:	3534                	.insn	2, 0x3534
8000a876:	3736                	.insn	2, 0x3736
8000a878:	3938                	.insn	2, 0x3938
8000a87a:	4241                	.insn	2, 0x4241
8000a87c:	46454443          	.insn	4, 0x46454443
8000a880:	0000                	.insn	2, 0x
8000a882:	0000                	.insn	2, 0x
8000a884:	b19c                	.insn	2, 0xb19c
8000a886:	ffff                	.insn	2, 0xffff
8000a888:	aec0                	.insn	2, 0xaec0
8000a88a:	ffff                	.insn	2, 0xffff
8000a88c:	aec0                	.insn	2, 0xaec0
8000a88e:	ffff                	.insn	2, 0xffff
8000a890:	aec0                	.insn	2, 0xaec0
8000a892:	ffff                	.insn	2, 0xffff
8000a894:	aec0                	.insn	2, 0xaec0
8000a896:	ffff                	.insn	2, 0xffff
8000a898:	aec0                	.insn	2, 0xaec0
8000a89a:	ffff                	.insn	2, 0xffff
8000a89c:	aec0                	.insn	2, 0xaec0
8000a89e:	ffff                	.insn	2, 0xffff
8000a8a0:	aec0                	.insn	2, 0xaec0
8000a8a2:	ffff                	.insn	2, 0xffff
8000a8a4:	aec0                	.insn	2, 0xaec0
8000a8a6:	ffff                	.insn	2, 0xffff
8000a8a8:	aec0                	.insn	2, 0xaec0
8000a8aa:	ffff                	.insn	2, 0xffff
8000a8ac:	aec0                	.insn	2, 0xaec0
8000a8ae:	ffff                	.insn	2, 0xffff
8000a8b0:	b2ac                	.insn	2, 0xb2ac
8000a8b2:	ffff                	.insn	2, 0xffff
8000a8b4:	b050                	.insn	2, 0xb050
8000a8b6:	ffff                	.insn	2, 0xffff
8000a8b8:	aec0                	.insn	2, 0xaec0
8000a8ba:	ffff                	.insn	2, 0xffff
8000a8bc:	aec0                	.insn	2, 0xaec0
8000a8be:	ffff                	.insn	2, 0xffff
8000a8c0:	aec0                	.insn	2, 0xaec0
8000a8c2:	ffff                	.insn	2, 0xffff
8000a8c4:	aec0                	.insn	2, 0xaec0
8000a8c6:	ffff                	.insn	2, 0xffff
8000a8c8:	b050                	.insn	2, 0xb050
8000a8ca:	ffff                	.insn	2, 0xffff
8000a8cc:	aec0                	.insn	2, 0xaec0
8000a8ce:	ffff                	.insn	2, 0xffff
8000a8d0:	aec0                	.insn	2, 0xaec0
8000a8d2:	ffff                	.insn	2, 0xffff
8000a8d4:	aec0                	.insn	2, 0xaec0
8000a8d6:	ffff                	.insn	2, 0xffff
8000a8d8:	aec0                	.insn	2, 0xaec0
8000a8da:	ffff                	.insn	2, 0xffff
8000a8dc:	aec0                	.insn	2, 0xaec0
8000a8de:	ffff                	.insn	2, 0xffff
8000a8e0:	b514                	.insn	2, 0xb514
8000a8e2:	ffff                	.insn	2, 0xffff
8000a8e4:	b404                	.insn	2, 0xb404
8000a8e6:	ffff                	.insn	2, 0xffff
8000a8e8:	aec0                	.insn	2, 0xaec0
8000a8ea:	ffff                	.insn	2, 0xffff
8000a8ec:	aec0                	.insn	2, 0xaec0
8000a8ee:	ffff                	.insn	2, 0xffff
8000a8f0:	b3e4                	.insn	2, 0xb3e4
8000a8f2:	ffff                	.insn	2, 0xffff
8000a8f4:	aec0                	.insn	2, 0xaec0
8000a8f6:	ffff                	.insn	2, 0xffff
8000a8f8:	b2c0                	.insn	2, 0xb2c0
8000a8fa:	ffff                	.insn	2, 0xffff
8000a8fc:	aec0                	.insn	2, 0xaec0
8000a8fe:	ffff                	.insn	2, 0xffff
8000a900:	aec0                	.insn	2, 0xaec0
8000a902:	ffff                	.insn	2, 0xffff
8000a904:	b19c                	.insn	2, 0xb19c
8000a906:	ffff                	.insn	2, 0xffff

8000a908 <npio2_hw>:
8000a908:	0f00 3fc9 0f00 4049 cb00 4096 0f00 40c9     ...?..I@...@...@
8000a918:	5300 40fb cb00 4116 ed00 412f 0f00 4149     .S.@...A../A..IA
8000a928:	3100 4162 5300 417b 3a00 418a cb00 4196     .1bA.S{A.:.A...A
8000a938:	5c00 41a3 ed00 41af 7e00 41bc 0f00 41c9     .\.A...A.~.A...A
8000a948:	a000 41d5 3100 41e2 c200 41ee 5300 41fb     ...A.1.A...A.S.A
8000a958:	f200 4203 3a00 420a 8300 4210 cb00 4216     ...B.:.B...B...B
8000a968:	1400 421d 5c00 4223 a500 4229 ed00 422f     ...B.\#B..)B../B
8000a978:	3600 4236 7e00 423c c700 4242 0f00 4249     .66B.~<B..BB..IB

8000a988 <two_over_pi>:
8000a988:	00a2 0000 00f9 0000 0083 0000 006e 0000     ............n...
8000a998:	004e 0000 0044 0000 0015 0000 0029 0000     N...D.......)...
8000a9a8:	00fc 0000 0027 0000 0057 0000 00d1 0000     ....'...W.......
8000a9b8:	00f5 0000 0034 0000 00dd 0000 00c0 0000     ....4...........
8000a9c8:	00db 0000 0062 0000 0095 0000 0099 0000     ....b...........
8000a9d8:	003c 0000 0043 0000 0090 0000 0041 0000     <...C.......A...
8000a9e8:	00fe 0000 0051 0000 0063 0000 00ab 0000     ....Q...c.......
8000a9f8:	00de 0000 00bb 0000 00c5 0000 0061 0000     ............a...
8000aa08:	00b7 0000 0024 0000 006e 0000 003a 0000     ....$...n...:...
8000aa18:	0042 0000 004d 0000 00d2 0000 00e0 0000     B...M...........
8000aa28:	0006 0000 0049 0000 002e 0000 00ea 0000     ....I...........
8000aa38:	0009 0000 00d1 0000 0092 0000 001c 0000     ................
8000aa48:	00fe 0000 001d 0000 00eb 0000 001c 0000     ................
8000aa58:	00b1 0000 0029 0000 00a7 0000 003e 0000     ....).......>...
8000aa68:	00e8 0000 0082 0000 0035 0000 00f5 0000     ........5.......
8000aa78:	002e 0000 00bb 0000 0044 0000 0084 0000     ........D.......
8000aa88:	00e9 0000 009c 0000 0070 0000 0026 0000     ........p...&...
8000aa98:	00b4 0000 005f 0000 007e 0000 0041 0000     ...._...~...A...
8000aaa8:	0039 0000 0091 0000 00d6 0000 0039 0000     9...........9...
8000aab8:	0083 0000 0053 0000 0039 0000 00f4 0000     ....S...9.......
8000aac8:	009c 0000 0084 0000 005f 0000 008b 0000     ........_.......
8000aad8:	00bd 0000 00f9 0000 0028 0000 003b 0000     ........(...;...
8000aae8:	001f 0000 00f8 0000 0097 0000 00ff 0000     ................
8000aaf8:	00de 0000 0005 0000 0098 0000 000f 0000     ................
8000ab08:	00ef 0000 002f 0000 0011 0000 008b 0000     ..../...........
8000ab18:	005a 0000 000a 0000 006d 0000 001f 0000     Z.......m.......
8000ab28:	006d 0000 0036 0000 007e 0000 00cf 0000     m...6...~.......
8000ab38:	0027 0000 00cb 0000 0009 0000 00b7 0000     '...............
8000ab48:	004f 0000 0046 0000 003f 0000 0066 0000     O...F...?...f...
8000ab58:	009e 0000 005f 0000 00ea 0000 002d 0000     ...._.......-...
8000ab68:	0075 0000 0027 0000 00ba 0000 00c7 0000     u...'...........
8000ab78:	00eb 0000 00e5 0000 00f1 0000 007b 0000     ............{...
8000ab88:	003d 0000 0007 0000 0039 0000 00f7 0000     =.......9.......
8000ab98:	008a 0000 0052 0000 0092 0000 00ea 0000     ....R...........
8000aba8:	006b 0000 00fb 0000 005f 0000 00b1 0000     k......._.......
8000abb8:	001f 0000 008d 0000 005d 0000 0008 0000     ........].......
8000abc8:	0056 0000 0003 0000 0030 0000 0046 0000     V.......0...F...
8000abd8:	00fc 0000 007b 0000 006b 0000 00ab 0000     ....{...k.......
8000abe8:	00f0 0000 00cf 0000 00bc 0000 0020 0000     ............ ...
8000abf8:	009a 0000 00f4 0000 0036 0000 001d 0000     ........6.......
8000ac08:	00a9 0000 00e3 0000 0091 0000 0061 0000     ............a...
8000ac18:	005e 0000 00e6 0000 001b 0000 0008 0000     ^...............
8000ac28:	0065 0000 0099 0000 0085 0000 005f 0000     e..........._...
8000ac38:	0014 0000 00a0 0000 0068 0000 0040 0000     ........h...@...
8000ac48:	008d 0000 00ff 0000 00d8 0000 0080 0000     ................
8000ac58:	004d 0000 0073 0000 0027 0000 0031 0000     M...s...'...1...
8000ac68:	0006 0000 0006 0000 0015 0000 0056 0000     ............V...
8000ac78:	00ca 0000 0073 0000 00a8 0000 00c9 0000     ....s...........
8000ac88:	0060 0000 00e2 0000 007b 0000 00c0 0000     `.......{.......
8000ac98:	008c 0000 006b 0000                         ....k...

8000aca0 <PIo2>:
8000aca0:	0000 3fc9 0000 39f0 0000 37da 0000 33a2     ...?...9...7...3
8000acb0:	0000 2e84 0000 2b50 0000 27c2 0000 22d0     ......P+...'..."
8000acc0:	0000 1fc4 0000 1bc6 0000 1744               ..........D.

8000accc <init_jk>:
8000accc:	0004 0000 0007 0000 0009 0000 99f8 8000     ................
8000acdc:	996c 8000 9950 8000 996c 8000 99e8 8000     l...P...l.......
8000acec:	996c 8000 9950 8000 99f8 8000 99f8 8000     l...P...........
8000acfc:	99e8 8000 9950 8000 9978 8000 9978 8000     ....P...x...x...
8000ad0c:	9978 8000 99e8 8000                         x.......

8000ad14 <__clz_tab>:
8000ad14:	0100 0202 0303 0303 0404 0404 0404 0404     ................
8000ad24:	0505 0505 0505 0505 0505 0505 0505 0505     ................
8000ad34:	0606 0606 0606 0606 0606 0606 0606 0606     ................
8000ad44:	0606 0606 0606 0606 0606 0606 0606 0606     ................
8000ad54:	0707 0707 0707 0707 0707 0707 0707 0707     ................
8000ad64:	0707 0707 0707 0707 0707 0707 0707 0707     ................
8000ad74:	0707 0707 0707 0707 0707 0707 0707 0707     ................
8000ad84:	0707 0707 0707 0707 0707 0707 0707 0707     ................
8000ad94:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000ada4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000adb4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000adc4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000add4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000ade4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000adf4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000ae04:	0808 0808 0808 0808 0808 0808 0808 0808     ................
