
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
80000080:	f8410113          	addi	sp,sp,-124 # 80400000 <_stack_top>
    addi sp, sp, -4      # Adjust stack pointer
80000084:	ffc10113          	addi	sp,sp,-4
    sw ra, 0(sp)         # Save return address
80000088:	00112023          	sw	ra,0(sp)
    call main            # Call main function
8000008c:	18c010ef          	jal	ra,80001218 <main>
    lw ra, 0(sp)         # Restore return address
80000090:	00012083          	lw	ra,0(sp)
80000094:	000080e7          	jalr	ra

80000098 <_ZL8tfp_putcPvc>:
void vOutNS16550(unsigned char c );

// Tinyprintf expects: void (*putf)(void *p, char c)
static void tfp_putc(void *p, char c) {
    (void)p;
    vOutNS16550(c);
80000098:	00058513          	mv	a0,a1
8000009c:	0750206f          	j	80002910 <_Z11vOutNS16550h>

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
800000d4:	19c060ef          	jal	ra,80006270 <cosf>
800000d8:	00050993          	mv	s3,a0
  using ::sin;

#ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
  inline _GLIBCXX_CONSTEXPR float
  sin(float __x)
  { return __builtin_sinf(__x); }
800000dc:	00090513          	mv	a0,s2
800000e0:	22c060ef          	jal	ra,8000630c <sinf>
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x * ca + v.z * sa,
800000e4:	0004aa03          	lw	s4,0(s1)
800000e8:	0084a903          	lw	s2,8(s1)
800000ec:	00050a93          	mv	s5,a0
800000f0:	00098593          	mv	a1,s3
800000f4:	000a0513          	mv	a0,s4
800000f8:	739080ef          	jal	ra,80009030 <__mulsf3>
800000fc:	00050b13          	mv	s6,a0
80000100:	000a8593          	mv	a1,s5
80000104:	00090513          	mv	a0,s2
80000108:	729080ef          	jal	ra,80009030 <__mulsf3>
        v.y,
8000010c:	0044a483          	lw	s1,4(s1)
        -v.x * sa + v.z * ca
    );
80000110:	00050593          	mv	a1,a0
80000114:	000b0513          	mv	a0,s6
80000118:	63c080ef          	jal	ra,80008754 <__addsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
8000011c:	00a42023          	sw	a0,0(s0)
        -v.x * sa + v.z * ca
80000120:	80000537          	lui	a0,0x80000
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
80000124:	00942223          	sw	s1,4(s0)
        -v.x * sa + v.z * ca
80000128:	000a8593          	mv	a1,s5
8000012c:	01454533          	xor	a0,a0,s4
80000130:	701080ef          	jal	ra,80009030 <__mulsf3>
80000134:	00050493          	mv	s1,a0
80000138:	00098593          	mv	a1,s3
8000013c:	00090513          	mv	a0,s2
80000140:	6f1080ef          	jal	ra,80009030 <__mulsf3>
    );
80000144:	00050593          	mv	a1,a0
80000148:	00048513          	mv	a0,s1
8000014c:	608080ef          	jal	ra,80008754 <__addsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
80000150:	00a42423          	sw	a0,8(s0)
}
80000154:	01c12083          	lw	ra,28(sp)
80000158:	00040513          	mv	a0,s0
8000015c:	01812403          	lw	s0,24(sp)
80000160:	01412483          	lw	s1,20(sp)
80000164:	01012903          	lw	s2,16(sp)
80000168:	00c12983          	lw	s3,12(sp)
8000016c:	00812a03          	lw	s4,8(sp)
80000170:	00412a83          	lw	s5,4(sp)
80000174:	00012b03          	lw	s6,0(sp)
80000178:	02010113          	addi	sp,sp,32
8000017c:	00008067          	ret

80000180 <_Z7rotateXRK4Vec3IfEf>:

Vec3f rotateX(const Vec3f &v, float angle) {
80000180:	fe010113          	addi	sp,sp,-32
80000184:	00812c23          	sw	s0,24(sp)
80000188:	00050413          	mv	s0,a0
  { return __builtin_cosf(__x); }
8000018c:	00060513          	mv	a0,a2
80000190:	00112e23          	sw	ra,28(sp)
80000194:	00912a23          	sw	s1,20(sp)
80000198:	01212823          	sw	s2,16(sp)
8000019c:	01312623          	sw	s3,12(sp)
800001a0:	01412423          	sw	s4,8(sp)
800001a4:	01512223          	sw	s5,4(sp)
800001a8:	00060993          	mv	s3,a2
800001ac:	00058493          	mv	s1,a1
800001b0:	0c0060ef          	jal	ra,80006270 <cosf>
800001b4:	00050913          	mv	s2,a0
  { return __builtin_sinf(__x); }
800001b8:	00098513          	mv	a0,s3
800001bc:	150060ef          	jal	ra,8000630c <sinf>
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x,
800001c0:	0004a783          	lw	a5,0(s1)
        v.y * ca - v.z * sa,
800001c4:	0044a983          	lw	s3,4(s1)
800001c8:	0084a483          	lw	s1,8(s1)
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800001cc:	00f42023          	sw	a5,0(s0)
800001d0:	00050a13          	mv	s4,a0
        v.y * ca - v.z * sa,
800001d4:	00090593          	mv	a1,s2
800001d8:	00098513          	mv	a0,s3
800001dc:	655080ef          	jal	ra,80009030 <__mulsf3>
800001e0:	00050a93          	mv	s5,a0
800001e4:	000a0593          	mv	a1,s4
800001e8:	00048513          	mv	a0,s1
800001ec:	645080ef          	jal	ra,80009030 <__mulsf3>
        v.y * sa + v.z * ca
    );
800001f0:	00050593          	mv	a1,a0
800001f4:	000a8513          	mv	a0,s5
800001f8:	15c090ef          	jal	ra,80009354 <__subsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800001fc:	00a42223          	sw	a0,4(s0)
        v.y * sa + v.z * ca
80000200:	000a0593          	mv	a1,s4
80000204:	00098513          	mv	a0,s3
80000208:	629080ef          	jal	ra,80009030 <__mulsf3>
8000020c:	00050993          	mv	s3,a0
80000210:	00090593          	mv	a1,s2
80000214:	00048513          	mv	a0,s1
80000218:	619080ef          	jal	ra,80009030 <__mulsf3>
    );
8000021c:	00050593          	mv	a1,a0
80000220:	00098513          	mv	a0,s3
80000224:	530080ef          	jal	ra,80008754 <__addsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
80000228:	00a42423          	sw	a0,8(s0)
}
8000022c:	01c12083          	lw	ra,28(sp)
80000230:	00040513          	mv	a0,s0
80000234:	01812403          	lw	s0,24(sp)
80000238:	01412483          	lw	s1,20(sp)
8000023c:	01012903          	lw	s2,16(sp)
80000240:	00c12983          	lw	s3,12(sp)
80000244:	00812a03          	lw	s4,8(sp)
80000248:	00412a83          	lw	s5,4(sp)
8000024c:	02010113          	addi	sp,sp,32
80000250:	00008067          	ret

80000254 <_Z7rotateZRK4Vec3IfEf>:

Vec3f rotateZ(const Vec3f &v, float angle) {
80000254:	fe010113          	addi	sp,sp,-32
80000258:	00812c23          	sw	s0,24(sp)
8000025c:	00050413          	mv	s0,a0
  { return __builtin_cosf(__x); }
80000260:	00060513          	mv	a0,a2
80000264:	00112e23          	sw	ra,28(sp)
80000268:	00912a23          	sw	s1,20(sp)
8000026c:	01212823          	sw	s2,16(sp)
80000270:	01312623          	sw	s3,12(sp)
80000274:	01412423          	sw	s4,8(sp)
80000278:	01512223          	sw	s5,4(sp)
8000027c:	01612023          	sw	s6,0(sp)
80000280:	00060913          	mv	s2,a2
80000284:	00058493          	mv	s1,a1
80000288:	7e9050ef          	jal	ra,80006270 <cosf>
8000028c:	00050993          	mv	s3,a0
  { return __builtin_sinf(__x); }
80000290:	00090513          	mv	a0,s2
80000294:	078060ef          	jal	ra,8000630c <sinf>
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x * ca - v.y * sa,
80000298:	0004aa03          	lw	s4,0(s1)
8000029c:	0044a903          	lw	s2,4(s1)
800002a0:	00050a93          	mv	s5,a0
800002a4:	00098593          	mv	a1,s3
800002a8:	000a0513          	mv	a0,s4
800002ac:	585080ef          	jal	ra,80009030 <__mulsf3>
800002b0:	00050b13          	mv	s6,a0
800002b4:	000a8593          	mv	a1,s5
800002b8:	00090513          	mv	a0,s2
800002bc:	575080ef          	jal	ra,80009030 <__mulsf3>
        v.x * sa + v.y * ca,
        v.z
    );
800002c0:	00050593          	mv	a1,a0
800002c4:	000b0513          	mv	a0,s6
800002c8:	08c090ef          	jal	ra,80009354 <__subsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800002cc:	00a42023          	sw	a0,0(s0)
        v.x * sa + v.y * ca,
800002d0:	000a8593          	mv	a1,s5
800002d4:	000a0513          	mv	a0,s4
800002d8:	559080ef          	jal	ra,80009030 <__mulsf3>
800002dc:	00050a13          	mv	s4,a0
800002e0:	00098593          	mv	a1,s3
800002e4:	00090513          	mv	a0,s2
800002e8:	549080ef          	jal	ra,80009030 <__mulsf3>
        v.z
800002ec:	0084a483          	lw	s1,8(s1)
    );
800002f0:	00050593          	mv	a1,a0
800002f4:	000a0513          	mv	a0,s4
800002f8:	45c080ef          	jal	ra,80008754 <__addsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800002fc:	00a42223          	sw	a0,4(s0)
80000300:	00942423          	sw	s1,8(s0)
}
80000304:	00040513          	mv	a0,s0
80000308:	01c12083          	lw	ra,28(sp)
8000030c:	01812403          	lw	s0,24(sp)
80000310:	01412483          	lw	s1,20(sp)
80000314:	01012903          	lw	s2,16(sp)
80000318:	00c12983          	lw	s3,12(sp)
8000031c:	00812a03          	lw	s4,8(sp)
80000320:	00412a83          	lw	s5,4(sp)
80000324:	00012b03          	lw	s6,0(sp)
80000328:	02010113          	addi	sp,sp,32
8000032c:	00008067          	ret

80000330 <_Z10draw_pixelPtii5color>:
	unsigned int triangleCount;
};
struct matrix4f{
	fixed32 m[4][4]={0};
};
void draw_pixel(uint16_t* pixels, int x, int y, color col) {
80000330:	ff010113          	addi	sp,sp,-16
80000334:	00d12623          	sw	a3,12(sp)
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000338:	31f00793          	li	a5,799
8000033c:	06b7e063          	bltu	a5,a1,8000039c <_Z10draw_pixelPtii5color+0x6c>
80000340:	1df00793          	li	a5,479
80000344:	04c7ec63          	bltu	a5,a2,8000039c <_Z10draw_pixelPtii5color+0x6c>
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000348:	1e100693          	li	a3,481
8000034c:	40c686b3          	sub	a3,a3,a2
    pixels[y * WIDTH + x] = color;
80000350:	00169613          	slli	a2,a3,0x1
80000354:	00d60633          	add	a2,a2,a3
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
80000358:	00c14783          	lbu	a5,12(sp)
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
8000035c:	00d14703          	lbu	a4,13(sp)
    pixels[y * WIDTH + x] = color;
80000360:	00361613          	slli	a2,a2,0x3
80000364:	00d60633          	add	a2,a2,a3
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
80000368:	00e14683          	lbu	a3,14(sp)
    pixels[y * WIDTH + x] = color;
8000036c:	00561613          	slli	a2,a2,0x5
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000370:	0037d793          	srli	a5,a5,0x3
80000374:	00275713          	srli	a4,a4,0x2
    pixels[y * WIDTH + x] = color;
80000378:	00b60633          	add	a2,a2,a1
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
8000037c:	00b79793          	slli	a5,a5,0xb
80000380:	00571713          	slli	a4,a4,0x5
    pixels[y * WIDTH + x] = color;
80000384:	00161613          	slli	a2,a2,0x1
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000388:	00e7e7b3          	or	a5,a5,a4
8000038c:	0036d693          	srli	a3,a3,0x3
    pixels[y * WIDTH + x] = color;
80000390:	00c50633          	add	a2,a0,a2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000394:	00d7e7b3          	or	a5,a5,a3
    pixels[y * WIDTH + x] = color;
80000398:	00f61023          	sh	a5,0(a2)
    return;
}
8000039c:	01010113          	addi	sp,sp,16
800003a0:	00008067          	ret

800003a4 <_Z17draw_pixel_doublePtii5color>:
void draw_pixel_double(uint16_t* pixels, int x, int y, color col) {
800003a4:	ff010113          	addi	sp,sp,-16
800003a8:	00d12623          	sw	a3,12(sp)
    uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    if(x<0 || x>=WIDTH>>1 || y<0 || y>=HEIGHT) return;
800003ac:	18f00713          	li	a4,399
800003b0:	06b76663          	bltu	a4,a1,8000041c <_Z17draw_pixel_doublePtii5color+0x78>
800003b4:	1df00793          	li	a5,479
800003b8:	06c7e263          	bltu	a5,a2,8000041c <_Z17draw_pixel_doublePtii5color+0x78>
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
800003bc:	1e100793          	li	a5,481
800003c0:	40c78633          	sub	a2,a5,a2
    uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
800003c4:	00c14703          	lbu	a4,12(sp)
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
800003c8:	00d14683          	lbu	a3,13(sp)
    uint32_t *base_addr = (uint32_t *)pixels;
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003cc:	00161793          	slli	a5,a2,0x1
800003d0:	00c787b3          	add	a5,a5,a2
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800003d4:	00e14803          	lbu	a6,14(sp)
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003d8:	00379793          	slli	a5,a5,0x3
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800003dc:	00375713          	srli	a4,a4,0x3
800003e0:	0026d693          	srli	a3,a3,0x2
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003e4:	00c787b3          	add	a5,a5,a2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800003e8:	00569693          	slli	a3,a3,0x5
800003ec:	00b71713          	slli	a4,a4,0xb
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003f0:	00579793          	slli	a5,a5,0x5
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800003f4:	00d76733          	or	a4,a4,a3
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
800003f8:	4017d793          	srai	a5,a5,0x1
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800003fc:	00385693          	srli	a3,a6,0x3
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80000400:	00d76733          	or	a4,a4,a3
80000404:	00b787b3          	add	a5,a5,a1
80000408:	00279793          	slli	a5,a5,0x2
8000040c:	01071693          	slli	a3,a4,0x10
80000410:	00f507b3          	add	a5,a0,a5
80000414:	00e6e733          	or	a4,a3,a4
80000418:	00e7a023          	sw	a4,0(a5)
    return;
}
8000041c:	01010113          	addi	sp,sp,16
80000420:	00008067          	ret

80000424 <_Z12clear_screenPt5color>:
    uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
80000424:	0ff5f793          	andi	a5,a1,255
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000428:	0055d713          	srli	a4,a1,0x5
8000042c:	0037d793          	srli	a5,a5,0x3
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
80000430:	0135d693          	srli	a3,a1,0x13
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000434:	00b79793          	slli	a5,a5,0xb
80000438:	7e077713          	andi	a4,a4,2016
8000043c:	01f6f693          	andi	a3,a3,31
80000440:	00e7e7b3          	or	a5,a5,a4
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80000444:	00d7e7b3          	or	a5,a5,a3
80000448:	01079693          	slli	a3,a5,0x10
8000044c:	0005e637          	lui	a2,0x5e
void clear_screen(uint16_t* pixels, color col) {
80000450:	ff010113          	addi	sp,sp,-16
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80000454:	00f6e6b3          	or	a3,a3,a5
80000458:	f2060613          	addi	a2,a2,-224 # 5df20 <_stack_size+0x55f20>
8000045c:	64050813          	addi	a6,a0,1600 # 80000640 <_stack_top+0xffc00640>
    for(int j=0; j<HEIGHT; j++) {
80000460:	32000593          	li	a1,800
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80000464:	40165713          	srai	a4,a2,0x1
80000468:	00271713          	slli	a4,a4,0x2
8000046c:	00e507b3          	add	a5,a0,a4
80000470:	00e80733          	add	a4,a6,a4
80000474:	00d7a023          	sw	a3,0(a5)
    return;
80000478:	00478793          	addi	a5,a5,4
	    for(int i=0; i<WIDTH>>1; i++) {
8000047c:	fee79ce3          	bne	a5,a4,80000474 <_Z12clear_screenPt5color+0x50>
80000480:	ce060613          	addi	a2,a2,-800
    for(int j=0; j<HEIGHT; j++) {
80000484:	feb610e3          	bne	a2,a1,80000464 <_Z12clear_screenPt5color+0x40>
			draw_pixel_double(pixels, i, j, col);
		}
	}
}
80000488:	01010113          	addi	sp,sp,16
8000048c:	00008067          	ret

80000490 <_Z9draw_linePtiiiihhh>:
// Midpoint (Bresenham) Line Drawing Algorithm
void draw_line(uint16_t* pixels, int x0, int y0, int x1, int y1,
               uint8_t r, uint8_t g, uint8_t b) {
    int dx = abs(x1 - x0);
80000490:	40b68333          	sub	t1,a3,a1
    int dy = abs(y1 - y0);
80000494:	40c70fb3          	sub	t6,a4,a2
    int dx = abs(x1 - x0);
80000498:	41f35e13          	srai	t3,t1,0x1f
    int dy = abs(y1 - y0);
8000049c:	41ffde93          	srai	t4,t6,0x1f
               uint8_t r, uint8_t g, uint8_t b) {
800004a0:	ff010113          	addi	sp,sp,-16
    int sx = (x0 < x1) ? 1 : -1;
800004a4:	00d5a3b3          	slt	t2,a1,a3
    int sy = (y0 < y1) ? 1 : -1;
800004a8:	00e622b3          	slt	t0,a2,a4
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800004ac:	00285813          	srli	a6,a6,0x2
    int dx = abs(x1 - x0);
800004b0:	006e4333          	xor	t1,t3,t1
    int dy = abs(y1 - y0);
800004b4:	01fecfb3          	xor	t6,t4,t6
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800004b8:	0038d893          	srli	a7,a7,0x3
               uint8_t r, uint8_t g, uint8_t b) {
800004bc:	00812623          	sw	s0,12(sp)
    int sx = (x0 < x1) ? 1 : -1;
800004c0:	407003b3          	neg	t2,t2
    int sy = (y0 < y1) ? 1 : -1;
800004c4:	405002b3          	neg	t0,t0
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800004c8:	00581813          	slli	a6,a6,0x5
800004cc:	0037d413          	srli	s0,a5,0x3
    int dy = abs(y1 - y0);
800004d0:	41df8fb3          	sub	t6,t6,t4
    int dx = abs(x1 - x0);
800004d4:	41c30333          	sub	t1,t1,t3
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800004d8:	01186833          	or	a6,a6,a7
    int sx = (x0 < x1) ? 1 : -1;
800004dc:	0023f393          	andi	t2,t2,2
    int sy = (y0 < y1) ? 1 : -1;
800004e0:	0022f293          	andi	t0,t0,2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800004e4:	00b41413          	slli	s0,s0,0xb
               uint8_t r, uint8_t g, uint8_t b) {
800004e8:	00912423          	sw	s1,8(sp)
    int sx = (x0 < x1) ? 1 : -1;
800004ec:	fff38393          	addi	t2,t2,-1
    int sy = (y0 < y1) ? 1 : -1;
800004f0:	fff28293          	addi	t0,t0,-1
    int err = dx - dy;
800004f4:	41f308b3          	sub	a7,t1,t6
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800004f8:	00886433          	or	s0,a6,s0
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
800004fc:	31f00e93          	li	t4,799
80000500:	1df00493          	li	s1,479
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000504:	1e100e13          	li	t3,481
    while (1) {
        draw_pixel(pixels, x0, y0, (color){r, g, b});
        if (x0 == x1 && y0 == y1) break;
        int e2 = 2 * err;
        if (e2 > -dy) {
80000508:	41f00f33          	neg	t5,t6
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
8000050c:	40ce0833          	sub	a6,t3,a2
    pixels[y * WIDTH + x] = color;
80000510:	00181793          	slli	a5,a6,0x1
80000514:	010787b3          	add	a5,a5,a6
80000518:	00379793          	slli	a5,a5,0x3
8000051c:	010787b3          	add	a5,a5,a6
80000520:	00579793          	slli	a5,a5,0x5
80000524:	00b787b3          	add	a5,a5,a1
80000528:	00179793          	slli	a5,a5,0x1
        int e2 = 2 * err;
8000052c:	00189813          	slli	a6,a7,0x1
    pixels[y * WIDTH + x] = color;
80000530:	00f507b3          	add	a5,a0,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000534:	00bee663          	bltu	t4,a1,80000540 <_Z9draw_linePtiiiihhh+0xb0>
80000538:	00c4e463          	bltu	s1,a2,80000540 <_Z9draw_linePtiiiihhh+0xb0>
    pixels[y * WIDTH + x] = color;
8000053c:	00879023          	sh	s0,0(a5)
        if (x0 == x1 && y0 == y1) break;
80000540:	02d58063          	beq	a1,a3,80000560 <_Z9draw_linePtiiiihhh+0xd0>
        if (e2 > -dy) {
80000544:	010f5663          	bge	t5,a6,80000550 <_Z9draw_linePtiiiihhh+0xc0>
            err -= dy;
80000548:	41f888b3          	sub	a7,a7,t6
            x0 += sx;
8000054c:	007585b3          	add	a1,a1,t2
        }
        if (e2 < dx) {
80000550:	fa685ee3          	bge	a6,t1,8000050c <_Z9draw_linePtiiiihhh+0x7c>
            err += dx;
80000554:	006888b3          	add	a7,a7,t1
            y0 += sy;
80000558:	00560633          	add	a2,a2,t0
8000055c:	fb1ff06f          	j	8000050c <_Z9draw_linePtiiiihhh+0x7c>
        if (x0 == x1 && y0 == y1) break;
80000560:	fee612e3          	bne	a2,a4,80000544 <_Z9draw_linePtiiiihhh+0xb4>
        }
    }
}
80000564:	00c12403          	lw	s0,12(sp)
80000568:	00812483          	lw	s1,8(sp)
8000056c:	01010113          	addi	sp,sp,16
80000570:	00008067          	ret

80000574 <_Z8trianglePt4Vec2IiES1_S1_5color>:

void triangle(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
80000574:	f8010113          	addi	sp,sp,-128
80000578:	07212823          	sw	s2,112(sp)
8000057c:	07312623          	sw	s3,108(sp)
80000580:	07412423          	sw	s4,104(sp)
80000584:	07612023          	sw	s6,96(sp)
80000588:	06112e23          	sw	ra,124(sp)
8000058c:	06812c23          	sw	s0,120(sp)
80000590:	06912a23          	sw	s1,116(sp)
80000594:	07512223          	sw	s5,100(sp)
80000598:	05712e23          	sw	s7,92(sp)
8000059c:	05812c23          	sw	s8,88(sp)
800005a0:	05912a23          	sw	s9,84(sp)
800005a4:	05a12823          	sw	s10,80(sp)
800005a8:	05b12623          	sw	s11,76(sp)
800005ac:	03112223          	sw	a7,36(sp)
800005b0:	02a12023          	sw	a0,32(sp)
800005b4:	00f12e23          	sw	a5,28(sp)
800005b8:	01012a23          	sw	a6,20(sp)
800005bc:	00060913          	mv	s2,a2
800005c0:	00070a13          	mv	s4,a4
800005c4:	00058993          	mv	s3,a1
800005c8:	00068b13          	mv	s6,a3
    // Finding the top two vertices
    if (t0.y > t1.y) {
800005cc:	30c74463          	blt	a4,a2,800008d4 <_Z8trianglePt4Vec2IiES1_S1_5color+0x360>
        Vec2i temp = t0;
        t0 = t1;
        t1 = temp;
    }
    if (t0.y > t2.y) {
800005d0:	00c85e63          	bge	a6,a2,800005ec <_Z8trianglePt4Vec2IiES1_S1_5color+0x78>
800005d4:	00090713          	mv	a4,s2
800005d8:	00078613          	mv	a2,a5
800005dc:	00080913          	mv	s2,a6
        Vec2i temp = t0;
        t0 = t2;
800005e0:	00060993          	mv	s3,a2
800005e4:	00e12a23          	sw	a4,20(sp)
800005e8:	00b12e23          	sw	a1,28(sp)
        t2 = temp;
    }
    if (t1.y > t2.y) {
800005ec:	01412783          	lw	a5,20(sp)
800005f0:	3147c863          	blt	a5,s4,80000900 <_Z8trianglePt4Vec2IiES1_S1_5color+0x38c>
        Vec2i temp = t1;
        t1 = t2;
        t2 = temp;
    }
    int total_height = t2.y-t0.y; 
800005f4:	01412783          	lw	a5,20(sp)
800005f8:	41278ab3          	sub	s5,a5,s2
    for (int i=0; i<total_height; i++) { 
800005fc:	29505e63          	blez	s5,80000898 <_Z8trianglePt4Vec2IiES1_S1_5color+0x324>
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
80000600:	02414483          	lbu	s1,36(sp)
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
80000604:	02514783          	lbu	a5,37(sp)
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
80000608:	02614703          	lbu	a4,38(sp)
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
8000060c:	0034d493          	srli	s1,s1,0x3
80000610:	0027d793          	srli	a5,a5,0x2
80000614:	00579793          	slli	a5,a5,0x5
80000618:	00b49493          	slli	s1,s1,0xb
8000061c:	00f4e4b3          	or	s1,s1,a5
80000620:	00375793          	srli	a5,a4,0x3
80000624:	01c12703          	lw	a4,28(sp)
80000628:	00f4e4b3          	or	s1,s1,a5
8000062c:	412a07b3          	sub	a5,s4,s2
80000630:	41370533          	sub	a0,a4,s3
80000634:	00078413          	mv	s0,a5
80000638:	00f12223          	sw	a5,4(sp)
8000063c:	1d4090ef          	jal	ra,80009810 <__floatsisf>
80000640:	00a12023          	sw	a0,0(sp)
80000644:	000a8513          	mv	a0,s5
80000648:	1c8090ef          	jal	ra,80009810 <__floatsisf>
8000064c:	00050c13          	mv	s8,a0
80000650:	00000b93          	li	s7,0
80000654:	0e044e63          	bltz	s0,80000750 <_Z8trianglePt4Vec2IiES1_S1_5color+0x1dc>
80000658:	fffa8713          	addi	a4,s5,-1
8000065c:	00e12423          	sw	a4,8(sp)
80000660:	28e44c63          	blt	s0,a4,800008f8 <_Z8trianglePt4Vec2IiES1_S1_5color+0x384>
80000664:	00191793          	slli	a5,s2,0x1
80000668:	012787b3          	add	a5,a5,s2
8000066c:	00379793          	slli	a5,a5,0x3
80000670:	012787b3          	add	a5,a5,s2
80000674:	000bc637          	lui	a2,0xbc
80000678:	00679793          	slli	a5,a5,0x6
8000067c:	e4060613          	addi	a2,a2,-448 # bbe40 <_stack_size+0xb3e40>
80000680:	40f60633          	sub	a2,a2,a5
80000684:	02012783          	lw	a5,32(sp)
    for (int i=0; i<total_height; i++) { 
80000688:	00000b93          	li	s7,0
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
8000068c:	31f00d93          	li	s11,799
80000690:	00c78d33          	add	s10,a5,a2
	inline Vec2<t> operator -(const Vec2<t> &V) const { return Vec2<t>(u-V.u, v-V.v); }
80000694:	413b07b3          	sub	a5,s6,s3
80000698:	00f12c23          	sw	a5,24(sp)
8000069c:	01c12783          	lw	a5,28(sp)
800006a0:	416787b3          	sub	a5,a5,s6
800006a4:	00f12823          	sw	a5,16(sp)
        char second_half = i>t1.y-t0.y || t1.y==t0.y; 
800006a8:	000b8513          	mv	a0,s7
800006ac:	164090ef          	jal	ra,80009810 <__floatsisf>
800006b0:	000c0593          	mv	a1,s8
800006b4:	00050c93          	mv	s9,a0
800006b8:	4c8080ef          	jal	ra,80008b80 <__divsf3>
800006bc:	00012583          	lw	a1,0(sp)
800006c0:	171080ef          	jal	ra,80009030 <__mulsf3>
800006c4:	0dc090ef          	jal	ra,800097a0 <__fixsfsi>
800006c8:	01350433          	add	s0,a0,s3
800006cc:	19490263          	beq	s2,s4,80000850 <_Z8trianglePt4Vec2IiES1_S1_5color+0x2dc>
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
800006d0:	01812503          	lw	a0,24(sp)
800006d4:	13c090ef          	jal	ra,80009810 <__floatsisf>
800006d8:	00a12623          	sw	a0,12(sp)
        int segment_height = second_half ? t2.y-t1.y : t1.y-t0.y; 
        float alpha = (float)i/total_height; 
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
800006dc:	00412503          	lw	a0,4(sp)
800006e0:	130090ef          	jal	ra,80009810 <__floatsisf>
800006e4:	00050593          	mv	a1,a0
800006e8:	000c8513          	mv	a0,s9
800006ec:	494080ef          	jal	ra,80008b80 <__divsf3>
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
800006f0:	00c12703          	lw	a4,12(sp)
800006f4:	00050593          	mv	a1,a0
800006f8:	00070513          	mv	a0,a4
800006fc:	135080ef          	jal	ra,80009030 <__mulsf3>
80000700:	0a0090ef          	jal	ra,800097a0 <__fixsfsi>
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
80000704:	01350533          	add	a0,a0,s3
        Vec2i A = t0 + (t2 - t0)*alpha; 
        Vec2i B = second_half ? t1 + (t2 - t1)*beta : t0 + (t1 - t0)*beta; 
        if (A.x > B.x) {
80000708:	00855863          	bge	a0,s0,80000718 <_Z8trianglePt4Vec2IiES1_S1_5color+0x1a4>
8000070c:	00040713          	mv	a4,s0
80000710:	00050413          	mv	s0,a0
80000714:	00070513          	mv	a0,a4
80000718:	012b8733          	add	a4,s7,s2
8000071c:	1df00793          	li	a5,479
80000720:	00e7ee63          	bltu	a5,a4,8000073c <_Z8trianglePt4Vec2IiES1_S1_5color+0x1c8>
    pixels[y * WIDTH + x] = color;
80000724:	00141713          	slli	a4,s0,0x1
80000728:	00ed0733          	add	a4,s10,a4
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
8000072c:	008de463          	bltu	s11,s0,80000734 <_Z8trianglePt4Vec2IiES1_S1_5color+0x1c0>
    pixels[y * WIDTH + x] = color;
80000730:	00971023          	sh	s1,0(a4)
            Vec2i temp = A;
            A = B;
            B = temp;
        }
        for (int j=A.x; j<=B.x; j++) { 
80000734:	00140413          	addi	s0,s0,1
80000738:	fe8556e3          	bge	a0,s0,80000724 <_Z8trianglePt4Vec2IiES1_S1_5color+0x1b0>
    for (int i=0; i<total_height; i++) { 
8000073c:	00812783          	lw	a5,8(sp)
80000740:	001b8b93          	addi	s7,s7,1
80000744:	9c0d0d13          	addi	s10,s10,-1600
80000748:	f777d0e3          	bge	a5,s7,800006a8 <_Z8trianglePt4Vec2IiES1_S1_5color+0x134>
8000074c:	155bd663          	bge	s7,s5,80000898 <_Z8trianglePt4Vec2IiES1_S1_5color+0x324>
80000750:	012b87b3          	add	a5,s7,s2
80000754:	00179713          	slli	a4,a5,0x1
80000758:	00412683          	lw	a3,4(sp)
8000075c:	00f70733          	add	a4,a4,a5
80000760:	00371713          	slli	a4,a4,0x3
80000764:	00f70733          	add	a4,a4,a5
80000768:	00671613          	slli	a2,a4,0x6
8000076c:	40db8433          	sub	s0,s7,a3
80000770:	000bc737          	lui	a4,0xbc
80000774:	02012683          	lw	a3,32(sp)
80000778:	e4070713          	addi	a4,a4,-448 # bbe40 <_stack_size+0xb3e40>
8000077c:	40c70733          	sub	a4,a4,a2
80000780:	00e68d33          	add	s10,a3,a4
80000784:	01c12703          	lw	a4,28(sp)
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000788:	31f00d93          	li	s11,799
8000078c:	41670733          	sub	a4,a4,s6
80000790:	00e12423          	sw	a4,8(sp)
80000794:	01412703          	lw	a4,20(sp)
80000798:	41470733          	sub	a4,a4,s4
8000079c:	00e12623          	sw	a4,12(sp)
        char second_half = i>t1.y-t0.y || t1.y==t0.y; 
800007a0:	000b8513          	mv	a0,s7
800007a4:	00f12223          	sw	a5,4(sp)
800007a8:	068090ef          	jal	ra,80009810 <__floatsisf>
800007ac:	000c0593          	mv	a1,s8
800007b0:	3d0080ef          	jal	ra,80008b80 <__divsf3>
800007b4:	00012583          	lw	a1,0(sp)
800007b8:	079080ef          	jal	ra,80009030 <__mulsf3>
800007bc:	7e5080ef          	jal	ra,800097a0 <__fixsfsi>
800007c0:	01350cb3          	add	s9,a0,s3
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
800007c4:	00040513          	mv	a0,s0
800007c8:	048090ef          	jal	ra,80009810 <__floatsisf>
800007cc:	00050a13          	mv	s4,a0
800007d0:	00c12503          	lw	a0,12(sp)
800007d4:	03c090ef          	jal	ra,80009810 <__floatsisf>
800007d8:	00050593          	mv	a1,a0
800007dc:	000a0513          	mv	a0,s4
800007e0:	3a0080ef          	jal	ra,80008b80 <__divsf3>
800007e4:	00050a13          	mv	s4,a0
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
800007e8:	00812503          	lw	a0,8(sp)
800007ec:	024090ef          	jal	ra,80009810 <__floatsisf>
800007f0:	00050593          	mv	a1,a0
800007f4:	000a0513          	mv	a0,s4
800007f8:	039080ef          	jal	ra,80009030 <__mulsf3>
800007fc:	7a5080ef          	jal	ra,800097a0 <__fixsfsi>
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
80000800:	01650533          	add	a0,a0,s6
        if (A.x > B.x) {
80000804:	00412783          	lw	a5,4(sp)
80000808:	01955863          	bge	a0,s9,80000818 <_Z8trianglePt4Vec2IiES1_S1_5color+0x2a4>
8000080c:	000c8593          	mv	a1,s9
80000810:	00050c93          	mv	s9,a0
80000814:	00058513          	mv	a0,a1
80000818:	1df00713          	li	a4,479
8000081c:	00f76e63          	bltu	a4,a5,80000838 <_Z8trianglePt4Vec2IiES1_S1_5color+0x2c4>
    pixels[y * WIDTH + x] = color;
80000820:	001c9793          	slli	a5,s9,0x1
80000824:	00fd07b3          	add	a5,s10,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000828:	019de463          	bltu	s11,s9,80000830 <_Z8trianglePt4Vec2IiES1_S1_5color+0x2bc>
    pixels[y * WIDTH + x] = color;
8000082c:	00979023          	sh	s1,0(a5)
        for (int j=A.x; j<=B.x; j++) { 
80000830:	001c8c93          	addi	s9,s9,1
80000834:	ff9556e3          	bge	a0,s9,80000820 <_Z8trianglePt4Vec2IiES1_S1_5color+0x2ac>
    for (int i=0; i<total_height; i++) { 
80000838:	001b8b93          	addi	s7,s7,1
8000083c:	00140413          	addi	s0,s0,1
80000840:	9c0d0d13          	addi	s10,s10,-1600
80000844:	055bda63          	bge	s7,s5,80000898 <_Z8trianglePt4Vec2IiES1_S1_5color+0x324>
80000848:	012b87b3          	add	a5,s7,s2
8000084c:	f55ff06f          	j	800007a0 <_Z8trianglePt4Vec2IiES1_S1_5color+0x22c>
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
80000850:	00412783          	lw	a5,4(sp)
80000854:	40fb8533          	sub	a0,s7,a5
80000858:	7b9080ef          	jal	ra,80009810 <__floatsisf>
8000085c:	00050c93          	mv	s9,a0
80000860:	000a8513          	mv	a0,s5
80000864:	7ad080ef          	jal	ra,80009810 <__floatsisf>
80000868:	00050593          	mv	a1,a0
8000086c:	000c8513          	mv	a0,s9
80000870:	310080ef          	jal	ra,80008b80 <__divsf3>
80000874:	00050c93          	mv	s9,a0
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000878:	01012503          	lw	a0,16(sp)
8000087c:	795080ef          	jal	ra,80009810 <__floatsisf>
80000880:	00050593          	mv	a1,a0
80000884:	000c8513          	mv	a0,s9
80000888:	7a8080ef          	jal	ra,80009030 <__mulsf3>
8000088c:	715080ef          	jal	ra,800097a0 <__fixsfsi>
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
80000890:	01650533          	add	a0,a0,s6
80000894:	e75ff06f          	j	80000708 <_Z8trianglePt4Vec2IiES1_S1_5color+0x194>
            draw_pixel(pixels, j, t0.y+i, col);
        } 
    } 
}
80000898:	07c12083          	lw	ra,124(sp)
8000089c:	07812403          	lw	s0,120(sp)
800008a0:	07412483          	lw	s1,116(sp)
800008a4:	07012903          	lw	s2,112(sp)
800008a8:	06c12983          	lw	s3,108(sp)
800008ac:	06812a03          	lw	s4,104(sp)
800008b0:	06412a83          	lw	s5,100(sp)
800008b4:	06012b03          	lw	s6,96(sp)
800008b8:	05c12b83          	lw	s7,92(sp)
800008bc:	05812c03          	lw	s8,88(sp)
800008c0:	05412c83          	lw	s9,84(sp)
800008c4:	05012d03          	lw	s10,80(sp)
800008c8:	04c12d83          	lw	s11,76(sp)
800008cc:	08010113          	addi	sp,sp,128
800008d0:	00008067          	ret
800008d4:	00080793          	mv	a5,a6
    if (t0.y > t2.y) {
800008d8:	04e85263          	bge	a6,a4,8000091c <_Z8trianglePt4Vec2IiES1_S1_5color+0x3a8>
800008dc:	00078713          	mv	a4,a5
800008e0:	01c12783          	lw	a5,28(sp)
800008e4:	01212a23          	sw	s2,20(sp)
        t1 = temp;
800008e8:	01312e23          	sw	s3,28(sp)
    if (t0.y > t2.y) {
800008ec:	00070913          	mv	s2,a4
        t0 = t2;
800008f0:	00078993          	mv	s3,a5
800008f4:	d01ff06f          	j	800005f4 <_Z8trianglePt4Vec2IiES1_S1_5color+0x80>
800008f8:	00812423          	sw	s0,8(sp)
800008fc:	d69ff06f          	j	80000664 <_Z8trianglePt4Vec2IiES1_S1_5color+0xf0>
    if (t1.y > t2.y) {
80000900:	000a0713          	mv	a4,s4
80000904:	000b0793          	mv	a5,s6
80000908:	01412a03          	lw	s4,20(sp)
8000090c:	01c12b03          	lw	s6,28(sp)
80000910:	00e12a23          	sw	a4,20(sp)
80000914:	00f12e23          	sw	a5,28(sp)
80000918:	cddff06f          	j	800005f4 <_Z8trianglePt4Vec2IiES1_S1_5color+0x80>
8000091c:	01412783          	lw	a5,20(sp)
    if (t0.y > t2.y) {
80000920:	00060a13          	mv	s4,a2
        t0 = t1;
80000924:	00068993          	mv	s3,a3
    if (t0.y > t2.y) {
80000928:	00070913          	mv	s2,a4
        t1 = temp;
8000092c:	00058b13          	mv	s6,a1
    if (t1.y > t2.y) {
80000930:	cd47d2e3          	bge	a5,s4,800005f4 <_Z8trianglePt4Vec2IiES1_S1_5color+0x80>
80000934:	fcdff06f          	j	80000900 <_Z8trianglePt4Vec2IiES1_S1_5color+0x38c>

80000938 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color>:


void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
80000938:	fb010113          	addi	sp,sp,-80
8000093c:	03812423          	sw	s8,40(sp)
80000940:	03912223          	sw	s9,36(sp)
80000944:	0088dc13          	srli	s8,a7,0x8
80000948:	0108dc93          	srli	s9,a7,0x10
8000094c:	03512a23          	sw	s5,52(sp)
80000950:	0ffc7c13          	andi	s8,s8,255
80000954:	0ff8fa93          	andi	s5,a7,255
80000958:	0ffcfc93          	andi	s9,s9,255
8000095c:	03612823          	sw	s6,48(sp)
80000960:	03712623          	sw	s7,44(sp)
80000964:	00080b13          	mv	s6,a6
80000968:	00078b93          	mv	s7,a5
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
8000096c:	000c8893          	mv	a7,s9
80000970:	000c0813          	mv	a6,s8
80000974:	000a8793          	mv	a5,s5
void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
80000978:	04812423          	sw	s0,72(sp)
8000097c:	04912223          	sw	s1,68(sp)
80000980:	00070413          	mv	s0,a4
80000984:	00068493          	mv	s1,a3
80000988:	05212023          	sw	s2,64(sp)
8000098c:	03312e23          	sw	s3,60(sp)
80000990:	03412c23          	sw	s4,56(sp)
80000994:	00058993          	mv	s3,a1
80000998:	00050a13          	mv	s4,a0
8000099c:	00060913          	mv	s2,a2
800009a0:	04112623          	sw	ra,76(sp)
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
800009a4:	aedff0ef          	jal	ra,80000490 <_Z9draw_linePtiiiihhh>
    int dx = abs(x1 - x0);
800009a8:	409b85b3          	sub	a1,s7,s1
    int dy = abs(y1 - y0);
800009ac:	408b0633          	sub	a2,s6,s0
    int dx = abs(x1 - x0);
800009b0:	41f5d793          	srai	a5,a1,0x1f
    int dy = abs(y1 - y0);
800009b4:	41f65693          	srai	a3,a2,0x1f
    int sx = (x0 < x1) ? 1 : -1;
800009b8:	0174a533          	slt	a0,s1,s7
    int sy = (y0 < y1) ? 1 : -1;
800009bc:	01642733          	slt	a4,s0,s6
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800009c0:	003ad893          	srli	a7,s5,0x3
800009c4:	002c5c13          	srli	s8,s8,0x2
    int dx = abs(x1 - x0);
800009c8:	00b7c5b3          	xor	a1,a5,a1
    int dy = abs(y1 - y0);
800009cc:	00c6c633          	xor	a2,a3,a2
    int sx = (x0 < x1) ? 1 : -1;
800009d0:	40a00533          	neg	a0,a0
    int sy = (y0 < y1) ? 1 : -1;
800009d4:	40e00733          	neg	a4,a4
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800009d8:	00b89893          	slli	a7,a7,0xb
800009dc:	005c1c13          	slli	s8,s8,0x5
    int dy = abs(y1 - y0);
800009e0:	40d60633          	sub	a2,a2,a3
    int dx = abs(x1 - x0);
800009e4:	40f585b3          	sub	a1,a1,a5
    int sx = (x0 < x1) ? 1 : -1;
800009e8:	00257513          	andi	a0,a0,2
    int sy = (y0 < y1) ? 1 : -1;
800009ec:	00277713          	andi	a4,a4,2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800009f0:	0188e8b3          	or	a7,a7,s8
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800009f4:	003cd793          	srli	a5,s9,0x3
    int sx = (x0 < x1) ? 1 : -1;
800009f8:	fff50513          	addi	a0,a0,-1
    int sy = (y0 < y1) ? 1 : -1;
800009fc:	fff70713          	addi	a4,a4,-1
    int err = dx - dy;
80000a00:	40c586b3          	sub	a3,a1,a2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000a04:	00f8e8b3          	or	a7,a7,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000a08:	31f00f13          	li	t5,799
80000a0c:	1df00e93          	li	t4,479
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000a10:	1e100e13          	li	t3,481
        if (e2 > -dy) {
80000a14:	40c00333          	neg	t1,a2
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000a18:	408e0833          	sub	a6,t3,s0
    pixels[y * WIDTH + x] = color;
80000a1c:	00181793          	slli	a5,a6,0x1
80000a20:	010787b3          	add	a5,a5,a6
80000a24:	00379793          	slli	a5,a5,0x3
80000a28:	010787b3          	add	a5,a5,a6
80000a2c:	00579793          	slli	a5,a5,0x5
80000a30:	009787b3          	add	a5,a5,s1
80000a34:	00179793          	slli	a5,a5,0x1
        int e2 = 2 * err;
80000a38:	00169813          	slli	a6,a3,0x1
    pixels[y * WIDTH + x] = color;
80000a3c:	00fa07b3          	add	a5,s4,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000a40:	009f6663          	bltu	t5,s1,80000a4c <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x114>
80000a44:	008ee463          	bltu	t4,s0,80000a4c <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x114>
    pixels[y * WIDTH + x] = color;
80000a48:	01179023          	sh	a7,0(a5)
        if (x0 == x1 && y0 == y1) break;
80000a4c:	029b8063          	beq	s7,s1,80000a6c <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x134>
        if (e2 > -dy) {
80000a50:	01035663          	bge	t1,a6,80000a5c <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x124>
            err -= dy;
80000a54:	40c686b3          	sub	a3,a3,a2
            x0 += sx;
80000a58:	00a484b3          	add	s1,s1,a0
        if (e2 < dx) {
80000a5c:	fab85ee3          	bge	a6,a1,80000a18 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0xe0>
            err += dx;
80000a60:	00b686b3          	add	a3,a3,a1
            y0 += sy;
80000a64:	00e40433          	add	s0,s0,a4
80000a68:	fb1ff06f          	j	80000a18 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0xe0>
        if (x0 == x1 && y0 == y1) break;
80000a6c:	fe8b12e3          	bne	s6,s0,80000a50 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x118>
    int dx = abs(x1 - x0);
80000a70:	40998533          	sub	a0,s3,s1
    int dy = abs(y1 - y0);
80000a74:	40890733          	sub	a4,s2,s0
80000a78:	41f75593          	srai	a1,a4,0x1f
    int dx = abs(x1 - x0);
80000a7c:	41f55793          	srai	a5,a0,0x1f
    int sx = (x0 < x1) ? 1 : -1;
80000a80:	0134a633          	slt	a2,s1,s3
    int sy = (y0 < y1) ? 1 : -1;
80000a84:	012426b3          	slt	a3,s0,s2
    int dy = abs(y1 - y0);
80000a88:	00e5c733          	xor	a4,a1,a4
    int dx = abs(x1 - x0);
80000a8c:	00a7c533          	xor	a0,a5,a0
    int sx = (x0 < x1) ? 1 : -1;
80000a90:	40c00633          	neg	a2,a2
    int sy = (y0 < y1) ? 1 : -1;
80000a94:	40d006b3          	neg	a3,a3
    int dy = abs(y1 - y0);
80000a98:	40b70733          	sub	a4,a4,a1
    int dx = abs(x1 - x0);
80000a9c:	40f50533          	sub	a0,a0,a5
    int sx = (x0 < x1) ? 1 : -1;
80000aa0:	00267613          	andi	a2,a2,2
    int sy = (y0 < y1) ? 1 : -1;
80000aa4:	0026f693          	andi	a3,a3,2
    int sx = (x0 < x1) ? 1 : -1;
80000aa8:	fff60613          	addi	a2,a2,-1
    int sy = (y0 < y1) ? 1 : -1;
80000aac:	fff68693          	addi	a3,a3,-1
    int err = dx - dy;
80000ab0:	40e505b3          	sub	a1,a0,a4
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000ab4:	31f00f13          	li	t5,799
80000ab8:	1df00e93          	li	t4,479
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000abc:	1e100e13          	li	t3,481
        if (e2 > -dy) {
80000ac0:	40e00333          	neg	t1,a4
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000ac4:	408e0833          	sub	a6,t3,s0
    pixels[y * WIDTH + x] = color;
80000ac8:	00181793          	slli	a5,a6,0x1
80000acc:	010787b3          	add	a5,a5,a6
80000ad0:	00379793          	slli	a5,a5,0x3
80000ad4:	010787b3          	add	a5,a5,a6
80000ad8:	00579793          	slli	a5,a5,0x5
80000adc:	009787b3          	add	a5,a5,s1
80000ae0:	00179793          	slli	a5,a5,0x1
        int e2 = 2 * err;
80000ae4:	00159813          	slli	a6,a1,0x1
    pixels[y * WIDTH + x] = color;
80000ae8:	00fa07b3          	add	a5,s4,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000aec:	009f6663          	bltu	t5,s1,80000af8 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1c0>
80000af0:	008ee463          	bltu	t4,s0,80000af8 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1c0>
    pixels[y * WIDTH + x] = color;
80000af4:	01179023          	sh	a7,0(a5)
        if (x0 == x1 && y0 == y1) break;
80000af8:	02998063          	beq	s3,s1,80000b18 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1e0>
        if (e2 > -dy) {
80000afc:	01035663          	bge	t1,a6,80000b08 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1d0>
            err -= dy;
80000b00:	40e585b3          	sub	a1,a1,a4
            x0 += sx;
80000b04:	00c484b3          	add	s1,s1,a2
        if (e2 < dx) {
80000b08:	faa85ee3          	bge	a6,a0,80000ac4 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x18c>
            err += dx;
80000b0c:	00a585b3          	add	a1,a1,a0
            y0 += sy;
80000b10:	00d40433          	add	s0,s0,a3
80000b14:	fb1ff06f          	j	80000ac4 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x18c>
        if (x0 == x1 && y0 == y1) break;
80000b18:	fe8912e3          	bne	s2,s0,80000afc <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1c4>
    draw_line(pixels, t1.x, t1.y, t2.x, t2.y, col.r, col.g, col.b);
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
}
80000b1c:	04c12083          	lw	ra,76(sp)
80000b20:	04812403          	lw	s0,72(sp)
80000b24:	04412483          	lw	s1,68(sp)
80000b28:	04012903          	lw	s2,64(sp)
80000b2c:	03c12983          	lw	s3,60(sp)
80000b30:	03812a03          	lw	s4,56(sp)
80000b34:	03412a83          	lw	s5,52(sp)
80000b38:	03012b03          	lw	s6,48(sp)
80000b3c:	02c12b83          	lw	s7,44(sp)
80000b40:	02812c03          	lw	s8,40(sp)
80000b44:	02412c83          	lw	s9,36(sp)
80000b48:	05010113          	addi	sp,sp,80
80000b4c:	00008067          	ret

80000b50 <_Z19switch_frame_bufferv>:
uint16_t *frame_buffer = (uint16_t *) RAM_LOCATION;
uint16_t *frame_buffer_to_use = (uint16_t *) RAM_LOCATION2;
char cur_frame_buffer = 1;

uint16_t *switch_frame_buffer() {
    if (cur_frame_buffer == 0) {
80000b50:	0000a797          	auipc	a5,0xa
80000b54:	dec78793          	addi	a5,a5,-532 # 8000a93c <RAM_LOCATION2>
80000b58:	0000a697          	auipc	a3,0xa
80000b5c:	de868693          	addi	a3,a3,-536 # 8000a940 <RAM_LOCATION>
80000b60:	0000a717          	auipc	a4,0xa
80000b64:	ad074703          	lbu	a4,-1328(a4) # 8000a630 <cur_frame_buffer>
80000b68:	0007a783          	lw	a5,0(a5)
80000b6c:	0006a503          	lw	a0,0(a3)
80000b70:	02071263          	bnez	a4,80000b94 <_Z19switch_frame_bufferv+0x44>
        cur_frame_buffer = 1;
80000b74:	00100713          	li	a4,1
80000b78:	0000a697          	auipc	a3,0xa
80000b7c:	aae68c23          	sb	a4,-1352(a3) # 8000a630 <cur_frame_buffer>
        frame_buffer = ( uint16_t *) RAM_LOCATION;
80000b80:	0000a717          	auipc	a4,0xa
80000b84:	daa72c23          	sw	a0,-584(a4) # 8000a938 <frame_buffer>
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION2;
80000b88:	0000a717          	auipc	a4,0xa
80000b8c:	daf72623          	sw	a5,-596(a4) # 8000a934 <_ebss>
80000b90:	00008067          	ret
    } else {
        cur_frame_buffer = 0;
        frame_buffer = ( uint16_t *) RAM_LOCATION2;
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION;
80000b94:	0000a717          	auipc	a4,0xa
80000b98:	daa72023          	sw	a0,-608(a4) # 8000a934 <_ebss>
        cur_frame_buffer = 0;
80000b9c:	0000a717          	auipc	a4,0xa
80000ba0:	a8070a23          	sb	zero,-1388(a4) # 8000a630 <cur_frame_buffer>
        frame_buffer = ( uint16_t *) RAM_LOCATION2;
80000ba4:	0000a717          	auipc	a4,0xa
80000ba8:	d8f72a23          	sw	a5,-620(a4) # 8000a938 <frame_buffer>
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION;
80000bac:	00078513          	mv	a0,a5
    }
    return frame_buffer;
}
80000bb0:	00008067          	ret

80000bb4 <_Z19cross_product_fixed10triangle3f>:
    return (Vec2i){ sx, sy };
}


Vec3fixed cross_product_fixed(triangle3f triangle)
{
80000bb4:	fb010113          	addi	sp,sp,-80
80000bb8:	05212023          	sw	s2,64(sp)
80000bbc:	03512a23          	sw	s5,52(sp)
80000bc0:	0045a683          	lw	a3,4(a1)
80000bc4:	0085a603          	lw	a2,8(a1)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
static inline float   fixed_to_float(fixed32 x)        { return (float)x / (float)(1 << FIXED_Q); }

// ----- Basic ops (same Q) -----
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000bc8:	0105a903          	lw	s2,16(a1)
80000bcc:	0205aa83          	lw	s5,32(a1)
80000bd0:	03412c23          	sw	s4,56(sp)
80000bd4:	03712623          	sw	s7,44(sp)
80000bd8:	01c5aa03          	lw	s4,28(a1)
80000bdc:	0145ab83          	lw	s7,20(a1)
80000be0:	04812423          	sw	s0,72(sp)
80000be4:	04912223          	sw	s1,68(sp)
80000be8:	0005a703          	lw	a4,0(a1)
80000bec:	40d90933          	sub	s2,s2,a3
80000bf0:	40ca8ab3          	sub	s5,s5,a2
80000bf4:	00c5a403          	lw	s0,12(a1)
80000bf8:	0185a483          	lw	s1,24(a1)
80000bfc:	03a12023          	sw	s10,32(sp)

// Multiply with 64-bit intermediate; truncating and rounded variants
static inline fixed32 fixed_mul_trunc(fixed32 a, fixed32 b) {
    int64_t t = (int64_t)a * (int64_t)b;
80000c00:	41fad793          	srai	a5,s5,0x1f
80000c04:	41f95d13          	srai	s10,s2,0x1f
80000c08:	03612823          	sw	s6,48(sp)
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000c0c:	40cb8bb3          	sub	s7,s7,a2
80000c10:	00050b13          	mv	s6,a0
80000c14:	40da0a33          	sub	s4,s4,a3
    int64_t t = (int64_t)a * (int64_t)b;
80000c18:	000a8613          	mv	a2,s5
80000c1c:	00078693          	mv	a3,a5
80000c20:	00090513          	mv	a0,s2
80000c24:	000d0593          	mv	a1,s10
80000c28:	04112623          	sw	ra,76(sp)
80000c2c:	03312e23          	sw	s3,60(sp)
80000c30:	03812423          	sw	s8,40(sp)
80000c34:	03912223          	sw	s9,36(sp)
80000c38:	01b12e23          	sw	s11,28(sp)
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000c3c:	40e40433          	sub	s0,s0,a4
80000c40:	40e484b3          	sub	s1,s1,a4
    int64_t t = (int64_t)a * (int64_t)b;
80000c44:	00f12623          	sw	a5,12(sp)
80000c48:	41fbdc93          	srai	s9,s7,0x1f
80000c4c:	4f1080ef          	jal	ra,8000993c <__muldi3>
80000c50:	41fa5d93          	srai	s11,s4,0x1f
    return (fixed32)(t >> FIXED_Q);
80000c54:	01059713          	slli	a4,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000c58:	000a0613          	mv	a2,s4
80000c5c:	000d8693          	mv	a3,s11
    return (fixed32)(t >> FIXED_Q);
80000c60:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000c64:	000c8593          	mv	a1,s9
80000c68:	000b8513          	mv	a0,s7
    return (fixed32)(t >> FIXED_Q);
80000c6c:	013769b3          	or	s3,a4,s3
    int64_t t = (int64_t)a * (int64_t)b;
80000c70:	4cd080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000c74:	01059593          	slli	a1,a1,0x10
80000c78:	01055513          	srli	a0,a0,0x10
80000c7c:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80000c80:	41f4dc13          	srai	s8,s1,0x1f
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000c84:	40a989b3          	sub	s3,s3,a0
    int64_t t = (int64_t)a * (int64_t)b;
80000c88:	000b8613          	mv	a2,s7
80000c8c:	000c8693          	mv	a3,s9

        line2.x = fixed_sub(triangle.p[2].x, triangle.p[0].x);
        line2.y = fixed_sub(triangle.p[2].y, triangle.p[0].y);
        line2.z = fixed_sub(triangle.p[2].z, triangle.p[0].z);
        
        normal.x = fixed_sub(fixed_mul_trunc(line1.y, line2.z), fixed_mul_trunc(line1.z, line2.y));
80000c90:	013b2023          	sw	s3,0(s6)
80000c94:	00048513          	mv	a0,s1
80000c98:	000c0593          	mv	a1,s8
80000c9c:	4a1080ef          	jal	ra,8000993c <__muldi3>
80000ca0:	00c12783          	lw	a5,12(sp)
80000ca4:	41f45b93          	srai	s7,s0,0x1f
    return (fixed32)(t >> FIXED_Q);
80000ca8:	01059713          	slli	a4,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000cac:	00078693          	mv	a3,a5
80000cb0:	000a8613          	mv	a2,s5
    return (fixed32)(t >> FIXED_Q);
80000cb4:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000cb8:	000b8593          	mv	a1,s7
80000cbc:	00040513          	mv	a0,s0
    return (fixed32)(t >> FIXED_Q);
80000cc0:	013769b3          	or	s3,a4,s3
    int64_t t = (int64_t)a * (int64_t)b;
80000cc4:	479080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000cc8:	01059593          	slli	a1,a1,0x10
80000ccc:	01055513          	srli	a0,a0,0x10
80000cd0:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000cd4:	40a989b3          	sub	s3,s3,a0
    int64_t t = (int64_t)a * (int64_t)b;
80000cd8:	000a0613          	mv	a2,s4
80000cdc:	000d8693          	mv	a3,s11
        normal.y = fixed_sub(fixed_mul_trunc(line1.z, line2.x), fixed_mul_trunc(line1.x, line2.z));
80000ce0:	013b2223          	sw	s3,4(s6)
80000ce4:	00040513          	mv	a0,s0
80000ce8:	000b8593          	mv	a1,s7
80000cec:	451080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000cf0:	01059793          	slli	a5,a1,0x10
80000cf4:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000cf8:	00090613          	mv	a2,s2
80000cfc:	000d0693          	mv	a3,s10
80000d00:	00048513          	mv	a0,s1
80000d04:	000c0593          	mv	a1,s8
    return (fixed32)(t >> FIXED_Q);
80000d08:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80000d0c:	431080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000d10:	01055513          	srli	a0,a0,0x10
80000d14:	01059593          	slli	a1,a1,0x10
80000d18:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80000d1c:	40a40433          	sub	s0,s0,a0
        normal.z = fixed_sub(fixed_mul_trunc(line1.x, line2.y), fixed_mul_trunc(line1.y, line2.x));
80000d20:	008b2423          	sw	s0,8(s6)
        return normal;
}
80000d24:	04c12083          	lw	ra,76(sp)
80000d28:	04812403          	lw	s0,72(sp)
80000d2c:	000b0513          	mv	a0,s6
80000d30:	04412483          	lw	s1,68(sp)
80000d34:	04012903          	lw	s2,64(sp)
80000d38:	03c12983          	lw	s3,60(sp)
80000d3c:	03812a03          	lw	s4,56(sp)
80000d40:	03412a83          	lw	s5,52(sp)
80000d44:	03012b03          	lw	s6,48(sp)
80000d48:	02c12b83          	lw	s7,44(sp)
80000d4c:	02812c03          	lw	s8,40(sp)
80000d50:	02412c83          	lw	s9,36(sp)
80000d54:	02012d03          	lw	s10,32(sp)
80000d58:	01c12d83          	lw	s11,28(sp)
80000d5c:	05010113          	addi	sp,sp,80
80000d60:	00008067          	ret

80000d64 <_Z15normalize_fixed9Vec3fixed>:
Vec3fixed normalize_fixed(Vec3fixed normal)
{
80000d64:	fc010113          	addi	sp,sp,-64
80000d68:	01812c23          	sw	s8,24(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80000d6c:	0045ac03          	lw	s8,4(a1)
80000d70:	01912a23          	sw	s9,20(sp)
80000d74:	0005ac83          	lw	s9,0(a1)
80000d78:	03512223          	sw	s5,36(sp)
80000d7c:	41fc5a93          	srai	s5,s8,0x1f
80000d80:	00058793          	mv	a5,a1
80000d84:	01712e23          	sw	s7,28(sp)
80000d88:	000c0613          	mv	a2,s8
80000d8c:	000a8693          	mv	a3,s5
80000d90:	00050b93          	mv	s7,a0
80000d94:	000a8593          	mv	a1,s5
80000d98:	000c0513          	mv	a0,s8
80000d9c:	02112e23          	sw	ra,60(sp)
80000da0:	02812c23          	sw	s0,56(sp)
80000da4:	03312623          	sw	s3,44(sp)
80000da8:	03412423          	sw	s4,40(sp)
80000dac:	03612023          	sw	s6,32(sp)
80000db0:	0087aa03          	lw	s4,8(a5)
80000db4:	41fcdb13          	srai	s6,s9,0x1f
80000db8:	02912a23          	sw	s1,52(sp)
80000dbc:	03212823          	sw	s2,48(sp)
80000dc0:	01a12823          	sw	s10,16(sp)
80000dc4:	01b12623          	sw	s11,12(sp)
80000dc8:	375080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000dcc:	01059793          	slli	a5,a1,0x10
80000dd0:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80000dd4:	000c8613          	mv	a2,s9
80000dd8:	000b0693          	mv	a3,s6
80000ddc:	000c8513          	mv	a0,s9
80000de0:	000b0593          	mv	a1,s6
    return (fixed32)(t >> FIXED_Q);
80000de4:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80000de8:	355080ef          	jal	ra,8000993c <__muldi3>
80000dec:	41fa5993          	srai	s3,s4,0x1f
    return (fixed32)(t >> FIXED_Q);
80000df0:	01059593          	slli	a1,a1,0x10
80000df4:	01055793          	srli	a5,a0,0x10
80000df8:	00f5e7b3          	or	a5,a1,a5
    int64_t t = (int64_t)a * (int64_t)b;
80000dfc:	000a0613          	mv	a2,s4
80000e00:	00098693          	mv	a3,s3
80000e04:	000a0513          	mv	a0,s4
80000e08:	00098593          	mv	a1,s3
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80000e0c:	00f40433          	add	s0,s0,a5
    int64_t t = (int64_t)a * (int64_t)b;
80000e10:	32d080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80000e14:	01059593          	slli	a1,a1,0x10
80000e18:	01055513          	srli	a0,a0,0x10
80000e1c:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80000e20:	00a40533          	add	a0,s0,a0
//     if ((n ^ b) >= 0) n += llabs((int64_t)b) >> 1; // sign-aware rounding
//     else              n -= llabs((int64_t)b) >> 1;
//     return (fixed32)(n / b);
// }
static inline fixed32 fixed_sqrt(fixed32 x) {
    if (x <= 0) return 0;
80000e24:	3ea05463          	blez	a0,8000120c <_Z15normalize_fixed9Vec3fixed+0x4a8>
    // Newton–Raphson on integer domain. Start guess ~ scaled.
    int64_t xn = x;
    int64_t g  = (int64_t)1 << (FIXED_Q); // start at 1.0
    for (int i = 0; i < 16; ++i) {
        // g = 0.5 * (g + x/g)
        int64_t t = (xn << FIXED_Q) / g;
80000e28:	41055493          	srai	s1,a0,0x10
80000e2c:	01051913          	slli	s2,a0,0x10
80000e30:	01049713          	slli	a4,s1,0x10
80000e34:	01095793          	srli	a5,s2,0x10
80000e38:	00f767b3          	or	a5,a4,a5
        g = (g + t) >> 1;
80000e3c:	00010437          	lui	s0,0x10
80000e40:	00878433          	add	s0,a5,s0
80000e44:	00f437b3          	sltu	a5,s0,a5
        int64_t t = (xn << FIXED_Q) / g;
80000e48:	41f55513          	srai	a0,a0,0x1f
        g = (g + t) >> 1;
80000e4c:	00a78533          	add	a0,a5,a0
80000e50:	01f51793          	slli	a5,a0,0x1f
80000e54:	00145413          	srli	s0,s0,0x1
80000e58:	0087e433          	or	s0,a5,s0
80000e5c:	40155d13          	srai	s10,a0,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000e60:	00040613          	mv	a2,s0
80000e64:	000d0693          	mv	a3,s10
80000e68:	00048593          	mv	a1,s1
80000e6c:	00090513          	mv	a0,s2
80000e70:	7f4060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80000e74:	00850433          	add	s0,a0,s0
80000e78:	00a43533          	sltu	a0,s0,a0
80000e7c:	01a58d33          	add	s10,a1,s10
80000e80:	01a50d33          	add	s10,a0,s10
80000e84:	01fd1793          	slli	a5,s10,0x1f
80000e88:	00145413          	srli	s0,s0,0x1
80000e8c:	0087e433          	or	s0,a5,s0
80000e90:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000e94:	00040613          	mv	a2,s0
80000e98:	000d0693          	mv	a3,s10
80000e9c:	00048593          	mv	a1,s1
80000ea0:	00090513          	mv	a0,s2
80000ea4:	7c0060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80000ea8:	00850433          	add	s0,a0,s0
80000eac:	00a43533          	sltu	a0,s0,a0
80000eb0:	01a58d33          	add	s10,a1,s10
80000eb4:	01a50d33          	add	s10,a0,s10
80000eb8:	01fd1793          	slli	a5,s10,0x1f
80000ebc:	00145413          	srli	s0,s0,0x1
80000ec0:	0087e433          	or	s0,a5,s0
80000ec4:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000ec8:	00040613          	mv	a2,s0
80000ecc:	000d0693          	mv	a3,s10
80000ed0:	00048593          	mv	a1,s1
80000ed4:	00090513          	mv	a0,s2
80000ed8:	78c060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80000edc:	00850433          	add	s0,a0,s0
80000ee0:	00a43db3          	sltu	s11,s0,a0
80000ee4:	01a585b3          	add	a1,a1,s10
80000ee8:	00bd8db3          	add	s11,s11,a1
80000eec:	01fd9793          	slli	a5,s11,0x1f
80000ef0:	00145413          	srli	s0,s0,0x1
80000ef4:	0087e433          	or	s0,a5,s0
80000ef8:	401ddd93          	srai	s11,s11,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000efc:	00040613          	mv	a2,s0
80000f00:	000d8693          	mv	a3,s11
80000f04:	00048593          	mv	a1,s1
80000f08:	00090513          	mv	a0,s2
80000f0c:	758060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80000f10:	00850433          	add	s0,a0,s0
80000f14:	00a43d33          	sltu	s10,s0,a0
80000f18:	01b585b3          	add	a1,a1,s11
80000f1c:	00bd0d33          	add	s10,s10,a1
80000f20:	01fd1793          	slli	a5,s10,0x1f
80000f24:	00145413          	srli	s0,s0,0x1
80000f28:	0087e433          	or	s0,a5,s0
80000f2c:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000f30:	00040613          	mv	a2,s0
80000f34:	000d0693          	mv	a3,s10
80000f38:	00048593          	mv	a1,s1
80000f3c:	00090513          	mv	a0,s2
80000f40:	724060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80000f44:	00850433          	add	s0,a0,s0
80000f48:	00a43db3          	sltu	s11,s0,a0
80000f4c:	01a585b3          	add	a1,a1,s10
80000f50:	00bd8db3          	add	s11,s11,a1
80000f54:	01fd9793          	slli	a5,s11,0x1f
80000f58:	00145413          	srli	s0,s0,0x1
80000f5c:	0087e433          	or	s0,a5,s0
80000f60:	401ddd93          	srai	s11,s11,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000f64:	00040613          	mv	a2,s0
80000f68:	000d8693          	mv	a3,s11
80000f6c:	00048593          	mv	a1,s1
80000f70:	00090513          	mv	a0,s2
80000f74:	6f0060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80000f78:	00850433          	add	s0,a0,s0
80000f7c:	00a43d33          	sltu	s10,s0,a0
80000f80:	01b585b3          	add	a1,a1,s11
80000f84:	00bd0d33          	add	s10,s10,a1
80000f88:	01fd1793          	slli	a5,s10,0x1f
80000f8c:	00145413          	srli	s0,s0,0x1
80000f90:	0087e433          	or	s0,a5,s0
80000f94:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000f98:	00040613          	mv	a2,s0
80000f9c:	000d0693          	mv	a3,s10
80000fa0:	00048593          	mv	a1,s1
80000fa4:	00090513          	mv	a0,s2
80000fa8:	6bc060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80000fac:	00850433          	add	s0,a0,s0
80000fb0:	00a43db3          	sltu	s11,s0,a0
80000fb4:	01a585b3          	add	a1,a1,s10
80000fb8:	00bd8db3          	add	s11,s11,a1
80000fbc:	01fd9793          	slli	a5,s11,0x1f
80000fc0:	00145413          	srli	s0,s0,0x1
80000fc4:	0087e433          	or	s0,a5,s0
80000fc8:	401ddd93          	srai	s11,s11,0x1
        int64_t t = (xn << FIXED_Q) / g;
80000fcc:	00040613          	mv	a2,s0
80000fd0:	000d8693          	mv	a3,s11
80000fd4:	00048593          	mv	a1,s1
80000fd8:	00090513          	mv	a0,s2
80000fdc:	688060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80000fe0:	00850433          	add	s0,a0,s0
80000fe4:	00a43d33          	sltu	s10,s0,a0
80000fe8:	01b585b3          	add	a1,a1,s11
80000fec:	00bd0d33          	add	s10,s10,a1
80000ff0:	01fd1793          	slli	a5,s10,0x1f
80000ff4:	00145413          	srli	s0,s0,0x1
80000ff8:	0087e433          	or	s0,a5,s0
80000ffc:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001000:	00040613          	mv	a2,s0
80001004:	000d0693          	mv	a3,s10
80001008:	00048593          	mv	a1,s1
8000100c:	00090513          	mv	a0,s2
80001010:	654060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80001014:	00850433          	add	s0,a0,s0
80001018:	00a43db3          	sltu	s11,s0,a0
8000101c:	01a585b3          	add	a1,a1,s10
80001020:	00bd8db3          	add	s11,s11,a1
80001024:	01fd9793          	slli	a5,s11,0x1f
80001028:	00145413          	srli	s0,s0,0x1
8000102c:	0087e433          	or	s0,a5,s0
80001030:	401ddd93          	srai	s11,s11,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001034:	00040613          	mv	a2,s0
80001038:	000d8693          	mv	a3,s11
8000103c:	00048593          	mv	a1,s1
80001040:	00090513          	mv	a0,s2
80001044:	620060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80001048:	00850433          	add	s0,a0,s0
8000104c:	00a43d33          	sltu	s10,s0,a0
80001050:	01b585b3          	add	a1,a1,s11
80001054:	00bd0d33          	add	s10,s10,a1
80001058:	01fd1793          	slli	a5,s10,0x1f
8000105c:	00145413          	srli	s0,s0,0x1
80001060:	0087e433          	or	s0,a5,s0
80001064:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001068:	00040613          	mv	a2,s0
8000106c:	000d0693          	mv	a3,s10
80001070:	00048593          	mv	a1,s1
80001074:	00090513          	mv	a0,s2
80001078:	5ec060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
8000107c:	00850433          	add	s0,a0,s0
80001080:	00a43db3          	sltu	s11,s0,a0
80001084:	01a585b3          	add	a1,a1,s10
80001088:	00bd8db3          	add	s11,s11,a1
8000108c:	01fd9793          	slli	a5,s11,0x1f
80001090:	00145413          	srli	s0,s0,0x1
80001094:	0087e433          	or	s0,a5,s0
80001098:	401ddd93          	srai	s11,s11,0x1
        int64_t t = (xn << FIXED_Q) / g;
8000109c:	00040613          	mv	a2,s0
800010a0:	000d8693          	mv	a3,s11
800010a4:	00048593          	mv	a1,s1
800010a8:	00090513          	mv	a0,s2
800010ac:	5b8060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
800010b0:	00850433          	add	s0,a0,s0
800010b4:	00a43d33          	sltu	s10,s0,a0
800010b8:	01b585b3          	add	a1,a1,s11
800010bc:	00bd0d33          	add	s10,s10,a1
800010c0:	01fd1793          	slli	a5,s10,0x1f
800010c4:	00145413          	srli	s0,s0,0x1
800010c8:	0087e433          	or	s0,a5,s0
800010cc:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
800010d0:	00040613          	mv	a2,s0
800010d4:	000d0693          	mv	a3,s10
800010d8:	00048593          	mv	a1,s1
800010dc:	00090513          	mv	a0,s2
800010e0:	584060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
800010e4:	00850433          	add	s0,a0,s0
800010e8:	00a43db3          	sltu	s11,s0,a0
800010ec:	01a585b3          	add	a1,a1,s10
800010f0:	00bd8db3          	add	s11,s11,a1
800010f4:	01fd9793          	slli	a5,s11,0x1f
800010f8:	00145413          	srli	s0,s0,0x1
800010fc:	0087e433          	or	s0,a5,s0
80001100:	401ddd93          	srai	s11,s11,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001104:	00040613          	mv	a2,s0
80001108:	000d8693          	mv	a3,s11
8000110c:	00048593          	mv	a1,s1
80001110:	00090513          	mv	a0,s2
80001114:	550060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80001118:	00850433          	add	s0,a0,s0
8000111c:	00a43d33          	sltu	s10,s0,a0
80001120:	01b585b3          	add	a1,a1,s11
80001124:	00bd0d33          	add	s10,s10,a1
80001128:	01fd1793          	slli	a5,s10,0x1f
8000112c:	00145413          	srli	s0,s0,0x1
80001130:	0087e433          	or	s0,a5,s0
80001134:	401d5d13          	srai	s10,s10,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001138:	00040613          	mv	a2,s0
8000113c:	00048593          	mv	a1,s1
80001140:	000d0693          	mv	a3,s10
80001144:	00090513          	mv	a0,s2
80001148:	51c060ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
8000114c:	00850433          	add	s0,a0,s0
80001150:	00a43533          	sltu	a0,s0,a0
80001154:	01a585b3          	add	a1,a1,s10
80001158:	00b50533          	add	a0,a0,a1
8000115c:	01f51513          	slli	a0,a0,0x1f
80001160:	00145413          	srli	s0,s0,0x1
80001164:	00856433          	or	s0,a0,s0
80001168:	41f45493          	srai	s1,s0,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
8000116c:	010cd593          	srli	a1,s9,0x10
80001170:	010b1b13          	slli	s6,s6,0x10
    return (fixed32)(n / b);
80001174:	00040613          	mv	a2,s0
80001178:	00048693          	mv	a3,s1
8000117c:	010c9513          	slli	a0,s9,0x10
80001180:	0165e5b3          	or	a1,a1,s6
80001184:	4e0060ef          	jal	ra,80007664 <__divdi3>
    int64_t n = ((int64_t)a) << FIXED_Q;
80001188:	010c5593          	srli	a1,s8,0x10
8000118c:	010a9a93          	slli	s5,s5,0x10
    return (fixed32)(n / b);
80001190:	00aba023          	sw	a0,0(s7)
80001194:	00040613          	mv	a2,s0
80001198:	00048693          	mv	a3,s1
8000119c:	010c1513          	slli	a0,s8,0x10
800011a0:	0155e5b3          	or	a1,a1,s5
800011a4:	4c0060ef          	jal	ra,80007664 <__divdi3>
    int64_t n = ((int64_t)a) << FIXED_Q;
800011a8:	010a5593          	srli	a1,s4,0x10
800011ac:	01099993          	slli	s3,s3,0x10
    return (fixed32)(n / b);
800011b0:	00aba223          	sw	a0,4(s7)
800011b4:	00040613          	mv	a2,s0
800011b8:	00048693          	mv	a3,s1
800011bc:	010a1513          	slli	a0,s4,0x10
800011c0:	0135e5b3          	or	a1,a1,s3
800011c4:	4a0060ef          	jal	ra,80007664 <__divdi3>
                                        fixed_mul_trunc(normal.z, normal.z)));
        normal.x = fixed_div_trunc(normal.x, l);
        normal.y = fixed_div_trunc(normal.y, l);
        normal.z = fixed_div_trunc(normal.z, l);
        return normal;
}
800011c8:	03c12083          	lw	ra,60(sp)
800011cc:	03812403          	lw	s0,56(sp)
800011d0:	00aba423          	sw	a0,8(s7)
800011d4:	03412483          	lw	s1,52(sp)
800011d8:	000b8513          	mv	a0,s7
800011dc:	03012903          	lw	s2,48(sp)
800011e0:	02c12983          	lw	s3,44(sp)
800011e4:	02812a03          	lw	s4,40(sp)
800011e8:	02412a83          	lw	s5,36(sp)
800011ec:	02012b03          	lw	s6,32(sp)
800011f0:	01c12b83          	lw	s7,28(sp)
800011f4:	01812c03          	lw	s8,24(sp)
800011f8:	01412c83          	lw	s9,20(sp)
800011fc:	01012d03          	lw	s10,16(sp)
80001200:	00c12d83          	lw	s11,12(sp)
80001204:	04010113          	addi	sp,sp,64
80001208:	00008067          	ret
    if (x <= 0) return 0;
8000120c:	00000413          	li	s0,0
80001210:	00000493          	li	s1,0
80001214:	f59ff06f          	j	8000116c <_Z15normalize_fixed9Vec3fixed+0x408>

80001218 <main>:
                               fixed_mul_trunc(a.y, b.y)),
                     fixed_mul_trunc(a.z, b.z));
}


int main() {
80001218:	d1010113          	addi	sp,sp,-752
    init_printf(NULL, tfp_putc);      // set output sink
8000121c:	fffff597          	auipc	a1,0xfffff
80001220:	e7c58593          	addi	a1,a1,-388 # 80000098 <_ZL8tfp_putcPvc>
80001224:	00000513          	li	a0,0
int main() {
80001228:	2e112623          	sw	ra,748(sp)
8000122c:	2e812423          	sw	s0,744(sp)
80001230:	2f212023          	sw	s2,736(sp)
80001234:	2d312e23          	sw	s3,732(sp)
80001238:	2d412c23          	sw	s4,728(sp)
8000123c:	2da12023          	sw	s10,704(sp)
80001240:	2e912223          	sw	s1,740(sp)
80001244:	2d512a23          	sw	s5,724(sp)
80001248:	2d612823          	sw	s6,720(sp)
8000124c:	2d712623          	sw	s7,716(sp)
80001250:	2d812423          	sw	s8,712(sp)
80001254:	2d912223          	sw	s9,708(sp)
80001258:	2bb12e23          	sw	s11,700(sp)
    init_printf(NULL, tfp_putc);      // set output sink
8000125c:	7a5040ef          	jal	ra,80006200 <init_printf>

    RAM_LOCATION = (uint16_t *) riscy_malloc( WIDTH * HEIGHT * 2 * sizeof(uint16_t) ); // Allocate memory for double frame buffer
80001260:	00177537          	lui	a0,0x177
80001264:	03d030ef          	jal	ra,80004aa0 <_Z12riscy_mallocj>
80001268:	00009797          	auipc	a5,0x9
8000126c:	6ca7ac23          	sw	a0,1752(a5) # 8000a940 <RAM_LOCATION>
    RAM_LOCATION2 = (uint16_t *) riscy_malloc( WIDTH * HEIGHT * 2 * sizeof(uint16_t) ); // Allocate memory for double frame buffer
80001270:	00177537          	lui	a0,0x177
80001274:	02d030ef          	jal	ra,80004aa0 <_Z12riscy_mallocj>
        { F(0.0f), F(1.0f), F(0.0f) }, // 3
        { F(0.0f), F(0.0f), F(1.0f) }, // 4
        { F(1.0f), F(0.0f), F(1.0f) }, // 5
        { F(1.0f), F(1.0f), F(1.0f) }, // 6
        { F(0.0f), F(1.0f), F(1.0f) }, // 7
    };
80001278:	000107b7          	lui	a5,0x10
    RAM_LOCATION2 = (uint16_t *) riscy_malloc( WIDTH * HEIGHT * 2 * sizeof(uint16_t) ); // Allocate memory for double frame buffer
8000127c:	00009717          	auipc	a4,0x9
80001280:	6ca72023          	sw	a0,1728(a4) # 8000a93c <RAM_LOCATION2>
    };
80001284:	0af12623          	sw	a5,172(sp)
80001288:	0af12c23          	sw	a5,184(sp)
8000128c:	0af12e23          	sw	a5,188(sp)
80001290:	0cf12423          	sw	a5,200(sp)
80001294:	0cf12c23          	sw	a5,216(sp)
80001298:	0cf12e23          	sw	a5,220(sp)
8000129c:	0ef12223          	sw	a5,228(sp)
800012a0:	0ef12423          	sw	a5,232(sp)
800012a4:	0ef12623          	sw	a5,236(sp)
800012a8:	0ef12823          	sw	a5,240(sp)
800012ac:	0ef12c23          	sw	a5,248(sp)
800012b0:	0ef12e23          	sw	a5,252(sp)
    };
    triangle3f cube_triangles[cube_size];
    // triangle3f *cube_triangles = (triangle3f *) riscy_malloc(sizeof(triangle3f) * 120);
    for (int i = 0; i < 12; ++i) {
        cube_triangles[i].p[0] = v[idx[i][0]];
        cube_triangles[i].p[1] = v[idx[i][1]];
800012b4:	10f12823          	sw	a5,272(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800012b8:	10f12c23          	sw	a5,280(sp)
    };
800012bc:	0a012023          	sw	zero,160(sp)
800012c0:	0a012223          	sw	zero,164(sp)
800012c4:	0a012423          	sw	zero,168(sp)
800012c8:	0a012823          	sw	zero,176(sp)
800012cc:	0a012a23          	sw	zero,180(sp)
800012d0:	0c012023          	sw	zero,192(sp)
800012d4:	0c012223          	sw	zero,196(sp)
800012d8:	0c012623          	sw	zero,204(sp)
800012dc:	0c012823          	sw	zero,208(sp)
800012e0:	0c012a23          	sw	zero,212(sp)
800012e4:	0e012023          	sw	zero,224(sp)
800012e8:	0e012a23          	sw	zero,244(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800012ec:	10012023          	sw	zero,256(sp)
800012f0:	10012223          	sw	zero,260(sp)
800012f4:	10012423          	sw	zero,264(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800012f8:	10012623          	sw	zero,268(sp)
800012fc:	10012a23          	sw	zero,276(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001300:	10f12e23          	sw	a5,284(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001304:	12f12823          	sw	a5,304(sp)
80001308:	12f12a23          	sw	a5,308(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000130c:	12f12e23          	sw	a5,316(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001310:	14f12423          	sw	a5,328(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001314:	14f12a23          	sw	a5,340(sp)
80001318:	14f12c23          	sw	a5,344(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000131c:	16f12023          	sw	a5,352(sp)
80001320:	16f12223          	sw	a5,356(sp)
80001324:	16f12423          	sw	a5,360(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001328:	16f12623          	sw	a5,364(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
8000132c:	16f12c23          	sw	a5,376(sp)
80001330:	16f12e23          	sw	a5,380(sp)
80001334:	18f12023          	sw	a5,384(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001338:	18f12223          	sw	a5,388(sp)
8000133c:	18f12623          	sw	a5,396(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001340:	18f12823          	sw	a5,400(sp)
80001344:	18f12c23          	sw	a5,408(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001348:	18f12e23          	sw	a5,412(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000134c:	12012023          	sw	zero,288(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001350:	12012223          	sw	zero,292(sp)
80001354:	12012423          	sw	zero,296(sp)
80001358:	12012623          	sw	zero,300(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
8000135c:	12012c23          	sw	zero,312(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001360:	14012023          	sw	zero,320(sp)
80001364:	14012223          	sw	zero,324(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001368:	14012623          	sw	zero,332(sp)
8000136c:	14012823          	sw	zero,336(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001370:	14012e23          	sw	zero,348(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001374:	16012823          	sw	zero,368(sp)
80001378:	16012a23          	sw	zero,372(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000137c:	18012423          	sw	zero,392(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001380:	18012a23          	sw	zero,404(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001384:	1af12023          	sw	a5,416(sp)
80001388:	1af12223          	sw	a5,420(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000138c:	1af12623          	sw	a5,428(sp)
80001390:	1af12823          	sw	a5,432(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001394:	1af12a23          	sw	a5,436(sp)
80001398:	1af12e23          	sw	a5,444(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
8000139c:	1cf12223          	sw	a5,452(sp)
800013a0:	1cf12423          	sw	a5,456(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013a4:	1cf12a23          	sw	a5,468(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013a8:	1ef12023          	sw	a5,480(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800013ac:	1ef12423          	sw	a5,488(sp)
800013b0:	1ef12623          	sw	a5,492(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013b4:	1ef12a23          	sw	a5,500(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013b8:	20f12223          	sw	a5,516(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800013bc:	20f12623          	sw	a5,524(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013c0:	1a012423          	sw	zero,424(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013c4:	1a012c23          	sw	zero,440(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800013c8:	1c012023          	sw	zero,448(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013cc:	1c012623          	sw	zero,460(sp)
800013d0:	1c012823          	sw	zero,464(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013d4:	1c012c23          	sw	zero,472(sp)
800013d8:	1c012e23          	sw	zero,476(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800013dc:	1e012223          	sw	zero,484(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013e0:	1e012823          	sw	zero,496(sp)
800013e4:	1e012c23          	sw	zero,504(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
800013e8:	1e012e23          	sw	zero,508(sp)
800013ec:	20012023          	sw	zero,512(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
800013f0:	20012423          	sw	zero,520(sp)
800013f4:	20012823          	sw	zero,528(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
800013f8:	20012a23          	sw	zero,532(sp)
800013fc:	20012c23          	sw	zero,536(sp)
80001400:	20012e23          	sw	zero,540(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001404:	22012023          	sw	zero,544(sp)
80001408:	22f12223          	sw	a5,548(sp)
    }
    mesh cube = { cube_triangles, cube_size };


    tfp_printf("Starting Frame Buffer Test\r\n");
8000140c:	00008517          	auipc	a0,0x8
80001410:	6c050513          	addi	a0,a0,1728 # 80009acc <__clzsi2+0x4c>
        cube_triangles[i].p[1] = v[idx[i][1]];
80001414:	22f12823          	sw	a5,560(sp)
80001418:	22f12a23          	sw	a5,564(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
8000141c:	22f12c23          	sw	a5,568(sp)
80001420:	22f12e23          	sw	a5,572(sp)
80001424:	24f12023          	sw	a5,576(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001428:	24f12423          	sw	a5,584(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
8000142c:	24f12823          	sw	a5,592(sp)
80001430:	24f12a23          	sw	a5,596(sp)
80001434:	24f12c23          	sw	a5,600(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001438:	24f12e23          	sw	a5,604(sp)
8000143c:	26f12023          	sw	a5,608(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001440:	26f12423          	sw	a5,616(sp)
80001444:	26f12823          	sw	a5,624(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001448:	26f12e23          	sw	a5,636(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
8000144c:	28f12623          	sw	a5,652(sp)
80001450:	28f12a23          	sw	a5,660(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001454:	2af12223          	sw	a5,676(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001458:	22012423          	sw	zero,552(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
8000145c:	22012623          	sw	zero,556(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001460:	24012223          	sw	zero,580(sp)
80001464:	24012623          	sw	zero,588(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001468:	26012223          	sw	zero,612(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
8000146c:	26012623          	sw	zero,620(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001470:	26012a23          	sw	zero,628(sp)
80001474:	26012c23          	sw	zero,632(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001478:	28012023          	sw	zero,640(sp)
8000147c:	28012223          	sw	zero,644(sp)
80001480:	28012423          	sw	zero,648(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80001484:	28012823          	sw	zero,656(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80001488:	28012c23          	sw	zero,664(sp)
8000148c:	28012e23          	sw	zero,668(sp)
80001490:	2a012023          	sw	zero,672(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80001494:	2a012423          	sw	zero,680(sp)
80001498:	2a012623          	sw	zero,684(sp)
    tfp_printf("Starting Frame Buffer Test\r\n");
8000149c:	579040ef          	jal	ra,80006214 <tfp_printf>
    frame_buffer_addr[0] = (uint32_t)frame_buffer; // Set frame buffer address
800014a0:	00009797          	auipc	a5,0x9
800014a4:	49878793          	addi	a5,a5,1176 # 8000a938 <frame_buffer>
800014a8:	0007a703          	lw	a4,0(a5)
800014ac:	880037b7          	lui	a5,0x88003
    *screenChange = 0x00000001; // Trigger screen change
    tfp_printf("Screen change triggered ON\r\n");
800014b0:	00008517          	auipc	a0,0x8
800014b4:	63c50513          	addi	a0,a0,1596 # 80009aec <__clzsi2+0x6c>
    frame_buffer_addr[0] = (uint32_t)frame_buffer; // Set frame buffer address
800014b8:	80e7a223          	sw	a4,-2044(a5) # 88002804 <_stack_top+0x7c02804>
    *screenChange = 0x00000001; // Trigger screen change
800014bc:	00100713          	li	a4,1
800014c0:	80e7a023          	sw	a4,-2048(a5)
    tfp_printf("Screen change triggered ON\r\n");
800014c4:	551040ef          	jal	ra,80006214 <tfp_printf>

    tfp_printf("Screen filled with blue\r\n");
800014c8:	00008517          	auipc	a0,0x8
800014cc:	64450513          	addi	a0,a0,1604 # 80009b0c <__clzsi2+0x8c>
800014d0:	545040ef          	jal	ra,80006214 <tfp_printf>
800014d4:	00009797          	auipc	a5,0x9
800014d8:	fc478793          	addi	a5,a5,-60 # 8000a498 <_etext>
800014dc:	0007a983          	lw	s3,0(a5)
800014e0:	00009797          	auipc	a5,0x9
800014e4:	fbc78793          	addi	a5,a5,-68 # 8000a49c <_etext+0x4>
800014e8:	0007aa03          	lw	s4,0(a5)
800014ec:	00009797          	auipc	a5,0x9
800014f0:	fb478793          	addi	a5,a5,-76 # 8000a4a0 <_etext+0x8>
800014f4:	0007a403          	lw	s0,0(a5)
800014f8:	00009797          	auipc	a5,0x9
800014fc:	fac78793          	addi	a5,a5,-84 # 8000a4a4 <_etext+0xc>
80001500:	0007a903          	lw	s2,0(a5)
    matProj.m[2][3] = F(1.0f);
    matProj.m[3][3] = F(0.0f);

    matrix4f matRotZ = {0};
    matrix4f matRotX = {0};
    float frame_time = 0.0f;
80001504:	00000793          	li	a5,0
80001508:	06f12c23          	sw	a5,120(sp)
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
8000150c:	086417b7          	lui	a5,0x8641
80001510:	86478793          	addi	a5,a5,-1948 # 8640864 <_stack_size+0x8638864>
80001514:	00f12023          	sw	a5,0(sp)
    return (fixed32)(n / b);
80001518:	000107b7          	lui	a5,0x10
    int frame_num = 0;
8000151c:	06012e23          	sw	zero,124(sp)
80001520:	fff78d13          	addi	s10,a5,-1 # ffff <_stack_size+0x7fff>

    Vec3fixed vCamera = {0, 0, 0};
    while(1){
        clear_screen(frame_buffer_to_use, (color){15,15,35});
80001524:	00009797          	auipc	a5,0x9
80001528:	41078793          	addi	a5,a5,1040 # 8000a934 <_ebss>
8000152c:	0007a603          	lw	a2,0(a5)
80001530:	0005e6b7          	lui	a3,0x5e
80001534:	f2068693          	addi	a3,a3,-224 # 5df20 <_stack_size+0x55f20>
80001538:	64060513          	addi	a0,a2,1600
    for(int j=0; j<HEIGHT; j++) {
8000153c:	32000593          	li	a1,800
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80001540:	4016d793          	srai	a5,a3,0x1
80001544:	00279793          	slli	a5,a5,0x2
80001548:	00f60733          	add	a4,a2,a5
8000154c:	00f507b3          	add	a5,a0,a5
80001550:	00012803          	lw	a6,0(sp)
80001554:	00470713          	addi	a4,a4,4
80001558:	ff072e23          	sw	a6,-4(a4)
	    for(int i=0; i<WIDTH>>1; i++) {
8000155c:	fef71ae3          	bne	a4,a5,80001550 <main+0x338>
80001560:	ce068693          	addi	a3,a3,-800
    for(int j=0; j<HEIGHT; j++) {
80001564:	fcb69ee3          	bne	a3,a1,80001540 <main+0x328>

        frame_time += 0.03f;
80001568:	00009797          	auipc	a5,0x9
8000156c:	f4078793          	addi	a5,a5,-192 # 8000a4a8 <_etext+0x10>
80001570:	0007a583          	lw	a1,0(a5)
80001574:	07812503          	lw	a0,120(sp)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
80001578:	00009a97          	auipc	s5,0x9
8000157c:	f34a8a93          	addi	s5,s5,-204 # 8000a4ac <_etext+0x14>

        // Rotation X
        matRotX.m[0][0] = fixed_from_float(1.0f);
        matRotX.m[1][1] = fixed_from_float(cosf(fTheta * 0.5f));
        matRotX.m[1][2] = fixed_from_float(sinf(fTheta * 0.5f));
        matRotX.m[2][1] = fixed_from_float(-sinf(fTheta * 0.5f));
80001580:	800004b7          	lui	s1,0x80000
        frame_time += 0.03f;
80001584:	1d0070ef          	jal	ra,80008754 <__addsf3>
80001588:	000aa583          	lw	a1,0(s5)
8000158c:	06a12c23          	sw	a0,120(sp)
80001590:	000a0513          	mv	a0,s4
80001594:	29d070ef          	jal	ra,80009030 <__mulsf3>
80001598:	208080ef          	jal	ra,800097a0 <__fixsfsi>
8000159c:	000aa583          	lw	a1,0(s5)
800015a0:	00050793          	mv	a5,a0
800015a4:	41f7d793          	srai	a5,a5,0x1f
800015a8:	00a12223          	sw	a0,4(sp)
800015ac:	0134c533          	xor	a0,s1,s3
800015b0:	00f12423          	sw	a5,8(sp)
800015b4:	27d070ef          	jal	ra,80009030 <__mulsf3>
800015b8:	1e8080ef          	jal	ra,800097a0 <__fixsfsi>
800015bc:	000aa583          	lw	a1,0(s5)
800015c0:	00050793          	mv	a5,a0
800015c4:	41f7d793          	srai	a5,a5,0x1f
800015c8:	00a12823          	sw	a0,16(sp)
800015cc:	00098513          	mv	a0,s3
800015d0:	00f12a23          	sw	a5,20(sp)
800015d4:	25d070ef          	jal	ra,80009030 <__mulsf3>
800015d8:	1c8080ef          	jal	ra,800097a0 <__fixsfsi>
800015dc:	000aa583          	lw	a1,0(s5)
800015e0:	00050793          	mv	a5,a0
800015e4:	41f7d793          	srai	a5,a5,0x1f
800015e8:	00a12c23          	sw	a0,24(sp)
800015ec:	00090513          	mv	a0,s2
800015f0:	00f12e23          	sw	a5,28(sp)
800015f4:	23d070ef          	jal	ra,80009030 <__mulsf3>
800015f8:	1a8080ef          	jal	ra,800097a0 <__fixsfsi>
800015fc:	000aa583          	lw	a1,0(s5)
80001600:	00050793          	mv	a5,a0
80001604:	41f7d793          	srai	a5,a5,0x1f
80001608:	00a12623          	sw	a0,12(sp)
8000160c:	0084c533          	xor	a0,s1,s0
80001610:	02f12023          	sw	a5,32(sp)
80001614:	21d070ef          	jal	ra,80009030 <__mulsf3>
80001618:	188080ef          	jal	ra,800097a0 <__fixsfsi>
8000161c:	000aa583          	lw	a1,0(s5)
80001620:	00050793          	mv	a5,a0
80001624:	41f7d793          	srai	a5,a5,0x1f
80001628:	02a12223          	sw	a0,36(sp)
8000162c:	00040513          	mv	a0,s0
80001630:	02f12423          	sw	a5,40(sp)
80001634:	1fd070ef          	jal	ra,80009030 <__mulsf3>
80001638:	168080ef          	jal	ra,800097a0 <__fixsfsi>
8000163c:	41f55793          	srai	a5,a0,0x1f
80001640:	10010b13          	addi	s6,sp,256
80001644:	02a12623          	sw	a0,44(sp)
80001648:	02f12823          	sw	a5,48(sp)
8000164c:	0140006f          	j	80001660 <main+0x448>
80001650:	024b0b13          	addi	s6,s6,36
        matRotX.m[2][2] = fixed_from_float(cosf(fTheta * 0.5f));
        matRotX.m[3][3] = fixed_from_float(1.0f);
        // Render
        for (int i = 0; i < cube_size; i++) {
80001654:	2b010793          	addi	a5,sp,688
80001658:	00fb1463          	bne	s6,a5,80001660 <main+0x448>
8000165c:	1840106f          	j	800027e0 <main+0x15c8>
    int64_t t = (int64_t)a * (int64_t)b;
80001660:	000b2983          	lw	s3,0(s6)
80001664:	02012c03          	lw	s8,32(sp)
80001668:	00c12d83          	lw	s11,12(sp)
8000166c:	41f9da93          	srai	s5,s3,0x1f
80001670:	004b2483          	lw	s1,4(s6)
80001674:	000d8613          	mv	a2,s11
80001678:	000c0693          	mv	a3,s8
8000167c:	00098513          	mv	a0,s3
80001680:	000a8593          	mv	a1,s5
80001684:	2b8080ef          	jal	ra,8000993c <__muldi3>
80001688:	02412603          	lw	a2,36(sp)
8000168c:	02812683          	lw	a3,40(sp)
80001690:	41f4da13          	srai	s4,s1,0x1f
    return (fixed32)(t >> FIXED_Q);
80001694:	01059793          	slli	a5,a1,0x10
80001698:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000169c:	000a0593          	mv	a1,s4
800016a0:	00048513          	mv	a0,s1
    return (fixed32)(t >> FIXED_Q);
800016a4:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
800016a8:	294080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800016ac:	01059593          	slli	a1,a1,0x10
800016b0:	01055513          	srli	a0,a0,0x10
800016b4:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800016b8:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800016bc:	41f45793          	srai	a5,s0,0x1f
800016c0:	01045693          	srli	a3,s0,0x10
800016c4:	01079713          	slli	a4,a5,0x10
800016c8:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
800016cc:	41f75793          	srai	a5,a4,0x1f
800016d0:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
800016d4:	01041413          	slli	s0,s0,0x10
    return (fixed32)(n / b);
800016d8:	00878933          	add	s2,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
800016dc:	02c12603          	lw	a2,44(sp)
800016e0:	03012683          	lw	a3,48(sp)
    return (fixed32)(n / b);
800016e4:	00f937b3          	sltu	a5,s2,a5
800016e8:	00e787b3          	add	a5,a5,a4
800016ec:	01079713          	slli	a4,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800016f0:	00098513          	mv	a0,s3
    return (fixed32)(n / b);
800016f4:	4107d793          	srai	a5,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800016f8:	000a8593          	mv	a1,s5
    return (fixed32)(n / b);
800016fc:	01095913          	srli	s2,s2,0x10
80001700:	01276933          	or	s2,a4,s2
80001704:	02f12e23          	sw	a5,60(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001708:	234080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000170c:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001710:	000d8613          	mv	a2,s11
80001714:	000c0693          	mv	a3,s8
    return (fixed32)(t >> FIXED_Q);
80001718:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000171c:	000a0593          	mv	a1,s4
80001720:	00048513          	mv	a0,s1
    return (fixed32)(t >> FIXED_Q);
80001724:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001728:	214080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000172c:	01059593          	slli	a1,a1,0x10
80001730:	01055513          	srli	a0,a0,0x10
80001734:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001738:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
8000173c:	41f45713          	srai	a4,s0,0x1f
80001740:	01045793          	srli	a5,s0,0x10
80001744:	01071713          	slli	a4,a4,0x10
80001748:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
8000174c:	41f75793          	srai	a5,a4,0x1f
    int64_t t = (int64_t)a * (int64_t)b;
80001750:	00cb2a03          	lw	s4,12(s6)
    return (fixed32)(n / b);
80001754:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001758:	01041413          	slli	s0,s0,0x10
    return (fixed32)(n / b);
8000175c:	00878cb3          	add	s9,a5,s0
80001760:	00fcb433          	sltu	s0,s9,a5
80001764:	00e40433          	add	s0,s0,a4
    int64_t t = (int64_t)a * (int64_t)b;
80001768:	41fa5b93          	srai	s7,s4,0x1f
8000176c:	010b2a83          	lw	s5,16(s6)
    return (fixed32)(n / b);
80001770:	01041793          	slli	a5,s0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001774:	000d8613          	mv	a2,s11
80001778:	000c0693          	mv	a3,s8
8000177c:	000a0513          	mv	a0,s4
80001780:	000b8593          	mv	a1,s7
    return (fixed32)(n / b);
80001784:	010cdc93          	srli	s9,s9,0x10
80001788:	0197ecb3          	or	s9,a5,s9
    int64_t t = (int64_t)a * (int64_t)b;
8000178c:	1b0080ef          	jal	ra,8000993c <__muldi3>
80001790:	02412603          	lw	a2,36(sp)
80001794:	02812683          	lw	a3,40(sp)
80001798:	41fad493          	srai	s1,s5,0x1f
    return (fixed32)(t >> FIXED_Q);
8000179c:	01059793          	slli	a5,a1,0x10
800017a0:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800017a4:	00048593          	mv	a1,s1
800017a8:	000a8513          	mv	a0,s5
    return (fixed32)(t >> FIXED_Q);
800017ac:	0137e9b3          	or	s3,a5,s3
    int64_t t = (int64_t)a * (int64_t)b;
800017b0:	18c080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800017b4:	01059593          	slli	a1,a1,0x10
800017b8:	01055513          	srli	a0,a0,0x10
800017bc:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800017c0:	00a989b3          	add	s3,s3,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800017c4:	41f9d793          	srai	a5,s3,0x1f
800017c8:	0109d693          	srli	a3,s3,0x10
800017cc:	01079713          	slli	a4,a5,0x10
800017d0:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
800017d4:	41f75793          	srai	a5,a4,0x1f
800017d8:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
800017dc:	01099993          	slli	s3,s3,0x10
    return (fixed32)(n / b);
800017e0:	013789b3          	add	s3,a5,s3
800017e4:	00f9b7b3          	sltu	a5,s3,a5
    int64_t t = (int64_t)a * (int64_t)b;
800017e8:	02c12603          	lw	a2,44(sp)
800017ec:	03012683          	lw	a3,48(sp)
    return (fixed32)(n / b);
800017f0:	00e787b3          	add	a5,a5,a4
800017f4:	0109d813          	srli	a6,s3,0x10
800017f8:	01079713          	slli	a4,a5,0x10
800017fc:	01076733          	or	a4,a4,a6
80001800:	4107d793          	srai	a5,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001804:	000a0513          	mv	a0,s4
80001808:	000b8593          	mv	a1,s7
    return (fixed32)(n / b);
8000180c:	04e12023          	sw	a4,64(sp)
80001810:	06f12423          	sw	a5,104(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001814:	128080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001818:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000181c:	000d8613          	mv	a2,s11
80001820:	000c0693          	mv	a3,s8
    return (fixed32)(t >> FIXED_Q);
80001824:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001828:	00048593          	mv	a1,s1
8000182c:	000a8513          	mv	a0,s5
    return (fixed32)(t >> FIXED_Q);
80001830:	0137e9b3          	or	s3,a5,s3
    int64_t t = (int64_t)a * (int64_t)b;
80001834:	01b12623          	sw	s11,12(sp)
80001838:	104080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000183c:	01059593          	slli	a1,a1,0x10
80001840:	01055513          	srli	a0,a0,0x10
80001844:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001848:	00a989b3          	add	s3,s3,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
8000184c:	41f9d713          	srai	a4,s3,0x1f
80001850:	0109d793          	srli	a5,s3,0x10
80001854:	01071713          	slli	a4,a4,0x10
80001858:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
8000185c:	41f75793          	srai	a5,a4,0x1f
    int64_t t = (int64_t)a * (int64_t)b;
80001860:	018b2a83          	lw	s5,24(s6)
    return (fixed32)(n / b);
80001864:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001868:	01099993          	slli	s3,s3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000186c:	000c0a13          	mv	s4,s8
    return (fixed32)(n / b);
80001870:	01378c33          	add	s8,a5,s3
80001874:	00fc39b3          	sltu	s3,s8,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001878:	00c12603          	lw	a2,12(sp)
    return (fixed32)(n / b);
8000187c:	00e989b3          	add	s3,s3,a4
    int64_t t = (int64_t)a * (int64_t)b;
80001880:	41fadd93          	srai	s11,s5,0x1f
80001884:	01cb2b83          	lw	s7,28(s6)
    return (fixed32)(n / b);
80001888:	01099793          	slli	a5,s3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000188c:	000a0693          	mv	a3,s4
80001890:	000a8513          	mv	a0,s5
80001894:	000d8593          	mv	a1,s11
    return (fixed32)(n / b);
80001898:	010c5c13          	srli	s8,s8,0x10
8000189c:	0187ec33          	or	s8,a5,s8
    int64_t t = (int64_t)a * (int64_t)b;
800018a0:	03412023          	sw	s4,32(sp)
800018a4:	098080ef          	jal	ra,8000993c <__muldi3>
800018a8:	02412603          	lw	a2,36(sp)
800018ac:	02812683          	lw	a3,40(sp)
800018b0:	41fbd493          	srai	s1,s7,0x1f
    return (fixed32)(t >> FIXED_Q);
800018b4:	01059793          	slli	a5,a1,0x10
800018b8:	01055a13          	srli	s4,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800018bc:	00048593          	mv	a1,s1
800018c0:	000b8513          	mv	a0,s7
    return (fixed32)(t >> FIXED_Q);
800018c4:	0147ea33          	or	s4,a5,s4
    int64_t t = (int64_t)a * (int64_t)b;
800018c8:	074080ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800018cc:	01059593          	slli	a1,a1,0x10
800018d0:	01055513          	srli	a0,a0,0x10
800018d4:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800018d8:	00aa0a33          	add	s4,s4,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800018dc:	41fa5793          	srai	a5,s4,0x1f
800018e0:	010a5693          	srli	a3,s4,0x10
800018e4:	01079713          	slli	a4,a5,0x10
800018e8:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
800018ec:	41f75793          	srai	a5,a4,0x1f
800018f0:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
800018f4:	010a1a13          	slli	s4,s4,0x10
    return (fixed32)(n / b);
800018f8:	01478a33          	add	s4,a5,s4
800018fc:	00fa37b3          	sltu	a5,s4,a5
80001900:	00e787b3          	add	a5,a5,a4
80001904:	010a5593          	srli	a1,s4,0x10
80001908:	01079713          	slli	a4,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000190c:	02c12603          	lw	a2,44(sp)
80001910:	03012683          	lw	a3,48(sp)
    return (fixed32)(n / b);
80001914:	00058813          	mv	a6,a1
80001918:	01076833          	or	a6,a4,a6
8000191c:	05012223          	sw	a6,68(sp)
80001920:	4107d893          	srai	a7,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001924:	000a8513          	mv	a0,s5
80001928:	000d8593          	mv	a1,s11
    return (fixed32)(n / b);
8000192c:	07112623          	sw	a7,108(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001930:	00c080ef          	jal	ra,8000993c <__muldi3>
80001934:	00c12603          	lw	a2,12(sp)
80001938:	02012683          	lw	a3,32(sp)
    return (fixed32)(t >> FIXED_Q);
8000193c:	01059793          	slli	a5,a1,0x10
80001940:	01055a13          	srli	s4,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001944:	00048593          	mv	a1,s1
80001948:	000b8513          	mv	a0,s7
    return (fixed32)(t >> FIXED_Q);
8000194c:	0147ea33          	or	s4,a5,s4
    int64_t t = (int64_t)a * (int64_t)b;
80001950:	7ed070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001954:	01059593          	slli	a1,a1,0x10
80001958:	01055513          	srli	a0,a0,0x10
8000195c:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001960:	00aa0a33          	add	s4,s4,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001964:	41fa5713          	srai	a4,s4,0x1f
80001968:	010a5793          	srli	a5,s4,0x10
8000196c:	01071713          	slli	a4,a4,0x10
80001970:	00e7e733          	or	a4,a5,a4
    return (fixed32)(n / b);
80001974:	41f75793          	srai	a5,a4,0x1f
80001978:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
8000197c:	010a1a13          	slli	s4,s4,0x10
    return (fixed32)(n / b);
80001980:	01478bb3          	add	s7,a5,s4
    int64_t t = (int64_t)a * (int64_t)b;
80001984:	00812683          	lw	a3,8(sp)
    return (fixed32)(n / b);
80001988:	00fbba33          	sltu	s4,s7,a5
    int64_t t = (int64_t)a * (int64_t)b;
8000198c:	00412603          	lw	a2,4(sp)
    return (fixed32)(n / b);
80001990:	00ea0a33          	add	s4,s4,a4
80001994:	41045413          	srai	s0,s0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001998:	008b2d83          	lw	s11,8(s6)
    return (fixed32)(n / b);
8000199c:	010a1793          	slli	a5,s4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800019a0:	000c8513          	mv	a0,s9
800019a4:	00040593          	mv	a1,s0
    return (fixed32)(n / b);
800019a8:	010bdb93          	srli	s7,s7,0x10
800019ac:	0177ebb3          	or	s7,a5,s7
    int64_t t = (int64_t)a * (int64_t)b;
800019b0:	78d070ef          	jal	ra,8000993c <__muldi3>
800019b4:	01012603          	lw	a2,16(sp)
800019b8:	01412683          	lw	a3,20(sp)
800019bc:	41fdda93          	srai	s5,s11,0x1f
    return (fixed32)(t >> FIXED_Q);
800019c0:	01059793          	slli	a5,a1,0x10
800019c4:	01055493          	srli	s1,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800019c8:	000a8593          	mv	a1,s5
800019cc:	000d8513          	mv	a0,s11
    return (fixed32)(t >> FIXED_Q);
800019d0:	0097e4b3          	or	s1,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
800019d4:	769070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800019d8:	01059593          	slli	a1,a1,0x10
800019dc:	01055513          	srli	a0,a0,0x10
800019e0:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800019e4:	00a484b3          	add	s1,s1,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800019e8:	41f4d793          	srai	a5,s1,0x1f
800019ec:	0104d693          	srli	a3,s1,0x10
800019f0:	01079713          	slli	a4,a5,0x10
800019f4:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
800019f8:	41f75793          	srai	a5,a4,0x1f
800019fc:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001a00:	01049493          	slli	s1,s1,0x10
    return (fixed32)(n / b);
80001a04:	009784b3          	add	s1,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
80001a08:	01812603          	lw	a2,24(sp)
80001a0c:	01c12683          	lw	a3,28(sp)
    return (fixed32)(n / b);
80001a10:	00f4b7b3          	sltu	a5,s1,a5
80001a14:	00e787b3          	add	a5,a5,a4
80001a18:	4107d893          	srai	a7,a5,0x10
80001a1c:	01079713          	slli	a4,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001a20:	000c8513          	mv	a0,s9
80001a24:	00040593          	mv	a1,s0
    return (fixed32)(n / b);
80001a28:	0104d493          	srli	s1,s1,0x10
80001a2c:	009764b3          	or	s1,a4,s1
80001a30:	05112423          	sw	a7,72(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001a34:	709070ef          	jal	ra,8000993c <__muldi3>
80001a38:	00812c83          	lw	s9,8(sp)
80001a3c:	00412603          	lw	a2,4(sp)
    return (fixed32)(t >> FIXED_Q);
80001a40:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001a44:	000c8693          	mv	a3,s9
    return (fixed32)(t >> FIXED_Q);
80001a48:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001a4c:	000a8593          	mv	a1,s5
80001a50:	000d8513          	mv	a0,s11
    return (fixed32)(t >> FIXED_Q);
80001a54:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001a58:	6e5070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001a5c:	01059593          	slli	a1,a1,0x10
80001a60:	01055513          	srli	a0,a0,0x10
80001a64:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001a68:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001a6c:	41f45793          	srai	a5,s0,0x1f
80001a70:	01045693          	srli	a3,s0,0x10
80001a74:	01079713          	slli	a4,a5,0x10
80001a78:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
80001a7c:	41f75793          	srai	a5,a4,0x1f
80001a80:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001a84:	01041413          	slli	s0,s0,0x10
    return (fixed32)(n / b);
80001a88:	00878433          	add	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001a8c:	00412603          	lw	a2,4(sp)
    return (fixed32)(n / b);
80001a90:	00f437b3          	sltu	a5,s0,a5
80001a94:	00e787b3          	add	a5,a5,a4
80001a98:	4109d993          	srai	s3,s3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001a9c:	014b2d83          	lw	s11,20(s6)
    return (fixed32)(n / b);
80001aa0:	01079793          	slli	a5,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001aa4:	000c8693          	mv	a3,s9
80001aa8:	000c0513          	mv	a0,s8
80001aac:	00098593          	mv	a1,s3
    return (fixed32)(n / b);
80001ab0:	01045413          	srli	s0,s0,0x10
80001ab4:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001ab8:	01912423          	sw	s9,8(sp)
80001abc:	681070ef          	jal	ra,8000993c <__muldi3>
80001ac0:	01012603          	lw	a2,16(sp)
80001ac4:	01412683          	lw	a3,20(sp)
80001ac8:	41fdda93          	srai	s5,s11,0x1f
    return (fixed32)(t >> FIXED_Q);
80001acc:	01059793          	slli	a5,a1,0x10
80001ad0:	01055c93          	srli	s9,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001ad4:	000a8593          	mv	a1,s5
80001ad8:	000d8513          	mv	a0,s11
    return (fixed32)(t >> FIXED_Q);
80001adc:	0197ecb3          	or	s9,a5,s9
    int64_t t = (int64_t)a * (int64_t)b;
80001ae0:	65d070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001ae4:	01059593          	slli	a1,a1,0x10
80001ae8:	01055513          	srli	a0,a0,0x10
80001aec:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001af0:	00ac8cb3          	add	s9,s9,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001af4:	41fcd793          	srai	a5,s9,0x1f
80001af8:	010cd693          	srli	a3,s9,0x10
80001afc:	01079713          	slli	a4,a5,0x10
80001b00:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
80001b04:	41f75793          	srai	a5,a4,0x1f
80001b08:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001b0c:	010c9c93          	slli	s9,s9,0x10
    return (fixed32)(n / b);
80001b10:	01978cb3          	add	s9,a5,s9
80001b14:	00fcb7b3          	sltu	a5,s9,a5
80001b18:	00e787b3          	add	a5,a5,a4
    int64_t t = (int64_t)a * (int64_t)b;
80001b1c:	01812603          	lw	a2,24(sp)
80001b20:	01c12683          	lw	a3,28(sp)
    return (fixed32)(n / b);
80001b24:	01079713          	slli	a4,a5,0x10
80001b28:	010cd893          	srli	a7,s9,0x10
80001b2c:	011768b3          	or	a7,a4,a7
80001b30:	4107d313          	srai	t1,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001b34:	000c0513          	mv	a0,s8
80001b38:	00098593          	mv	a1,s3
    return (fixed32)(n / b);
80001b3c:	05112623          	sw	a7,76(sp)
80001b40:	06612823          	sw	t1,112(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001b44:	5f9070ef          	jal	ra,8000993c <__muldi3>
80001b48:	00812c83          	lw	s9,8(sp)
80001b4c:	00412603          	lw	a2,4(sp)
    return (fixed32)(t >> FIXED_Q);
80001b50:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001b54:	000c8693          	mv	a3,s9
    return (fixed32)(t >> FIXED_Q);
80001b58:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001b5c:	000a8593          	mv	a1,s5
80001b60:	000d8513          	mv	a0,s11
    return (fixed32)(t >> FIXED_Q);
80001b64:	0137e9b3          	or	s3,a5,s3
    int64_t t = (int64_t)a * (int64_t)b;
80001b68:	5d5070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001b6c:	01059593          	slli	a1,a1,0x10
80001b70:	01055513          	srli	a0,a0,0x10
80001b74:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001b78:	00a989b3          	add	s3,s3,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001b7c:	41f9d793          	srai	a5,s3,0x1f
80001b80:	0109d693          	srli	a3,s3,0x10
80001b84:	01079713          	slli	a4,a5,0x10
80001b88:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
80001b8c:	41f75793          	srai	a5,a4,0x1f
80001b90:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001b94:	01099993          	slli	s3,s3,0x10
    return (fixed32)(n / b);
80001b98:	013789b3          	add	s3,a5,s3
    int64_t t = (int64_t)a * (int64_t)b;
80001b9c:	00412d83          	lw	s11,4(sp)
    return (fixed32)(n / b);
80001ba0:	00f9b7b3          	sltu	a5,s3,a5
80001ba4:	00e787b3          	add	a5,a5,a4
80001ba8:	410a5a13          	srai	s4,s4,0x10
80001bac:	01079793          	slli	a5,a5,0x10
80001bb0:	0109d993          	srli	s3,s3,0x10
80001bb4:	0137e333          	or	t1,a5,s3
    int64_t t = (int64_t)a * (int64_t)b;
80001bb8:	020b2c03          	lw	s8,32(s6)
80001bbc:	000d8613          	mv	a2,s11
80001bc0:	000c8693          	mv	a3,s9
80001bc4:	000b8513          	mv	a0,s7
80001bc8:	000a0593          	mv	a1,s4
    return (fixed32)(n / b);
80001bcc:	02612a23          	sw	t1,52(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001bd0:	56d070ef          	jal	ra,8000993c <__muldi3>
80001bd4:	01012603          	lw	a2,16(sp)
80001bd8:	01412683          	lw	a3,20(sp)
80001bdc:	41fc5a93          	srai	s5,s8,0x1f
    return (fixed32)(t >> FIXED_Q);
80001be0:	01059793          	slli	a5,a1,0x10
80001be4:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001be8:	000a8593          	mv	a1,s5
80001bec:	000c0513          	mv	a0,s8
    return (fixed32)(t >> FIXED_Q);
80001bf0:	0137e9b3          	or	s3,a5,s3
    int64_t t = (int64_t)a * (int64_t)b;
80001bf4:	549070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001bf8:	01059593          	slli	a1,a1,0x10
80001bfc:	01055513          	srli	a0,a0,0x10
80001c00:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001c04:	00a989b3          	add	s3,s3,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001c08:	41f9d793          	srai	a5,s3,0x1f
80001c0c:	0109d693          	srli	a3,s3,0x10
80001c10:	01079713          	slli	a4,a5,0x10
80001c14:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
80001c18:	41f75793          	srai	a5,a4,0x1f
80001c1c:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001c20:	01099993          	slli	s3,s3,0x10
    return (fixed32)(n / b);
80001c24:	013789b3          	add	s3,a5,s3
80001c28:	00f9b7b3          	sltu	a5,s3,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001c2c:	01812603          	lw	a2,24(sp)
80001c30:	01c12683          	lw	a3,28(sp)
    return (fixed32)(n / b);
80001c34:	00e787b3          	add	a5,a5,a4
80001c38:	4107de13          	srai	t3,a5,0x10
80001c3c:	01079713          	slli	a4,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001c40:	000b8513          	mv	a0,s7
80001c44:	000a0593          	mv	a1,s4
    return (fixed32)(n / b);
80001c48:	0109d993          	srli	s3,s3,0x10
80001c4c:	013769b3          	or	s3,a4,s3
80001c50:	07c12a23          	sw	t3,116(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001c54:	4e9070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001c58:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001c5c:	000d8613          	mv	a2,s11
80001c60:	000c8693          	mv	a3,s9
    return (fixed32)(t >> FIXED_Q);
80001c64:	01055a13          	srli	s4,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001c68:	000a8593          	mv	a1,s5
80001c6c:	000c0513          	mv	a0,s8
    return (fixed32)(t >> FIXED_Q);
80001c70:	0147ea33          	or	s4,a5,s4
    int64_t t = (int64_t)a * (int64_t)b;
80001c74:	4c9070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001c78:	01059593          	slli	a1,a1,0x10
80001c7c:	01055513          	srli	a0,a0,0x10
80001c80:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001c84:	00aa0a33          	add	s4,s4,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80001c88:	41fa5793          	srai	a5,s4,0x1f
80001c8c:	010a5693          	srli	a3,s4,0x10
80001c90:	01079713          	slli	a4,a5,0x10
80001c94:	00e6e733          	or	a4,a3,a4
    return (fixed32)(n / b);
80001c98:	41f75793          	srai	a5,a4,0x1f
80001c9c:	01a7f7b3          	and	a5,a5,s10
    int64_t n = ((int64_t)a) << FIXED_Q;
80001ca0:	010a1a13          	slli	s4,s4,0x10
    return (fixed32)(n / b);
80001ca4:	01478a33          	add	s4,a5,s4
80001ca8:	00fa37b3          	sltu	a5,s4,a5
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001cac:	04c12883          	lw	a7,76(sp)
    return (fixed32)(n / b);
80001cb0:	00e787b3          	add	a5,a5,a4
80001cb4:	01079793          	slli	a5,a5,0x10
80001cb8:	010a5a13          	srli	s4,s4,0x10
80001cbc:	0147e633          	or	a2,a5,s4
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001cc0:	03412683          	lw	a3,52(sp)
80001cc4:	40988ab3          	sub	s5,a7,s1
80001cc8:	408607b3          	sub	a5,a2,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001ccc:	41f7d313          	srai	t1,a5,0x1f
80001cd0:	41fad713          	srai	a4,s5,0x1f
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001cd4:	40868a33          	sub	s4,a3,s0
    int64_t t = (int64_t)a * (int64_t)b;
80001cd8:	00070593          	mv	a1,a4
80001cdc:	00030693          	mv	a3,t1
    return (fixed32)(n / b);
80001ce0:	06c12223          	sw	a2,100(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001ce4:	000a8513          	mv	a0,s5
80001ce8:	00078613          	mv	a2,a5
80001cec:	04612e23          	sw	t1,92(sp)
80001cf0:	04e12c23          	sw	a4,88(sp)
80001cf4:	06f12023          	sw	a5,96(sp)
80001cf8:	445070ef          	jal	ra,8000993c <__muldi3>
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001cfc:	40998db3          	sub	s11,s3,s1
80001d00:	04412783          	lw	a5,68(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001d04:	41fdd893          	srai	a7,s11,0x1f
80001d08:	41fa5e13          	srai	t3,s4,0x1f
80001d0c:	00088693          	mv	a3,a7
    return (fixed32)(t >> FIXED_Q);
80001d10:	01059813          	slli	a6,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001d14:	000d8613          	mv	a2,s11
    return (fixed32)(t >> FIXED_Q);
80001d18:	01055c13          	srli	s8,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001d1c:	000e0593          	mv	a1,t3
80001d20:	000a0513          	mv	a0,s4
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001d24:	41278cb3          	sub	s9,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
80001d28:	05112a23          	sw	a7,84(sp)
    return (fixed32)(t >> FIXED_Q);
80001d2c:	01886c33          	or	s8,a6,s8
    int64_t t = (int64_t)a * (int64_t)b;
80001d30:	03c12c23          	sw	t3,56(sp)
80001d34:	409070ef          	jal	ra,8000993c <__muldi3>
80001d38:	03812e03          	lw	t3,56(sp)
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001d3c:	04012703          	lw	a4,64(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001d40:	41fcd813          	srai	a6,s9,0x1f
    return (fixed32)(t >> FIXED_Q);
80001d44:	01059593          	slli	a1,a1,0x10
80001d48:	01055e93          	srli	t4,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001d4c:	00080693          	mv	a3,a6
    return (fixed32)(t >> FIXED_Q);
80001d50:	01d5eeb3          	or	t4,a1,t4
    int64_t t = (int64_t)a * (int64_t)b;
80001d54:	000c8613          	mv	a2,s9
80001d58:	000a0513          	mv	a0,s4
80001d5c:	000e0593          	mv	a1,t3
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001d60:	41270bb3          	sub	s7,a4,s2
80001d64:	41dc0c33          	sub	s8,s8,t4
    int64_t t = (int64_t)a * (int64_t)b;
80001d68:	05012823          	sw	a6,80(sp)
80001d6c:	3d1070ef          	jal	ra,8000993c <__muldi3>
80001d70:	05c12303          	lw	t1,92(sp)
80001d74:	06012783          	lw	a5,96(sp)
    return (fixed32)(t >> FIXED_Q);
80001d78:	01059e93          	slli	t4,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001d7c:	41fbda13          	srai	s4,s7,0x1f
    return (fixed32)(t >> FIXED_Q);
80001d80:	01055e13          	srli	t3,a0,0x10
80001d84:	01ceee33          	or	t3,t4,t3
    int64_t t = (int64_t)a * (int64_t)b;
80001d88:	00030593          	mv	a1,t1
80001d8c:	000b8613          	mv	a2,s7
80001d90:	000a0693          	mv	a3,s4
80001d94:	00078513          	mv	a0,a5
    return (fixed32)(t >> FIXED_Q);
80001d98:	03c12c23          	sw	t3,56(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80001d9c:	3a1070ef          	jal	ra,8000993c <__muldi3>
80001da0:	05412883          	lw	a7,84(sp)
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001da4:	03812e03          	lw	t3,56(sp)
    return (fixed32)(t >> FIXED_Q);
80001da8:	01059593          	slli	a1,a1,0x10
80001dac:	01055793          	srli	a5,a0,0x10
80001db0:	00f5e7b3          	or	a5,a1,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001db4:	000b8613          	mv	a2,s7
80001db8:	00088593          	mv	a1,a7
80001dbc:	000a0693          	mv	a3,s4
80001dc0:	000d8513          	mv	a0,s11
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001dc4:	40fe0bb3          	sub	s7,t3,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001dc8:	375070ef          	jal	ra,8000993c <__muldi3>
80001dcc:	05012803          	lw	a6,80(sp)
80001dd0:	05812703          	lw	a4,88(sp)
    return (fixed32)(t >> FIXED_Q);
80001dd4:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001dd8:	00080693          	mv	a3,a6
80001ddc:	00070593          	mv	a1,a4
80001de0:	000c8613          	mv	a2,s9
    return (fixed32)(t >> FIXED_Q);
80001de4:	01055a13          	srli	s4,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001de8:	000a8513          	mv	a0,s5
    return (fixed32)(t >> FIXED_Q);
80001dec:	0147ea33          	or	s4,a5,s4
    int64_t t = (int64_t)a * (int64_t)b;
80001df0:	34d070ef          	jal	ra,8000993c <__muldi3>
80001df4:	41fc5d93          	srai	s11,s8,0x1f
    return (fixed32)(t >> FIXED_Q);
80001df8:	01059593          	slli	a1,a1,0x10
80001dfc:	01055c93          	srli	s9,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001e00:	41fbd793          	srai	a5,s7,0x1f
    return (fixed32)(t >> FIXED_Q);
80001e04:	0195ecb3          	or	s9,a1,s9
    int64_t t = (int64_t)a * (int64_t)b;
80001e08:	000c0613          	mv	a2,s8
80001e0c:	000d8693          	mv	a3,s11
80001e10:	000c0513          	mv	a0,s8
80001e14:	000d8593          	mv	a1,s11
80001e18:	00078a93          	mv	s5,a5
80001e1c:	04f12823          	sw	a5,80(sp)
80001e20:	31d070ef          	jal	ra,8000993c <__muldi3>
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }
80001e24:	419a0cb3          	sub	s9,s4,s9
    return (fixed32)(t >> FIXED_Q);
80001e28:	01059793          	slli	a5,a1,0x10
80001e2c:	01055a13          	srli	s4,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80001e30:	000b8613          	mv	a2,s7
80001e34:	000a8693          	mv	a3,s5
80001e38:	000b8513          	mv	a0,s7
80001e3c:	000a8593          	mv	a1,s5
    return (fixed32)(t >> FIXED_Q);
80001e40:	0147ea33          	or	s4,a5,s4
    int64_t t = (int64_t)a * (int64_t)b;
80001e44:	2f9070ef          	jal	ra,8000993c <__muldi3>
80001e48:	41fcd813          	srai	a6,s9,0x1f
    return (fixed32)(t >> FIXED_Q);
80001e4c:	01059593          	slli	a1,a1,0x10
80001e50:	01055793          	srli	a5,a0,0x10
80001e54:	00f5e7b3          	or	a5,a1,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001e58:	00080693          	mv	a3,a6
80001e5c:	00080593          	mv	a1,a6
80001e60:	000c8613          	mv	a2,s9
80001e64:	000c8513          	mv	a0,s9
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001e68:	00fa0a33          	add	s4,s4,a5
    int64_t t = (int64_t)a * (int64_t)b;
80001e6c:	05012a23          	sw	a6,84(sp)
80001e70:	2cd070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80001e74:	01059593          	slli	a1,a1,0x10
80001e78:	01055513          	srli	a0,a0,0x10
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001e7c:	000307b7          	lui	a5,0x30
    return (fixed32)(t >> FIXED_Q);
80001e80:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80001e84:	00f407b3          	add	a5,s0,a5
80001e88:	00aa0533          	add	a0,s4,a0
80001e8c:	02f12c23          	sw	a5,56(sp)
    if (x <= 0) return 0;
80001e90:	05412803          	lw	a6,84(sp)
80001e94:	20a056e3          	blez	a0,800028a0 <main+0x1688>
        int64_t t = (xn << FIXED_Q) / g;
80001e98:	01051a93          	slli	s5,a0,0x10
80001e9c:	41055a13          	srai	s4,a0,0x10
80001ea0:	010a1793          	slli	a5,s4,0x10
80001ea4:	010ad693          	srli	a3,s5,0x10
80001ea8:	00d7e6b3          	or	a3,a5,a3
        g = (g + t) >> 1;
80001eac:	000107b7          	lui	a5,0x10
80001eb0:	00f687b3          	add	a5,a3,a5
80001eb4:	00d7b6b3          	sltu	a3,a5,a3
        int64_t t = (xn << FIXED_Q) / g;
80001eb8:	41f55513          	srai	a0,a0,0x1f
        g = (g + t) >> 1;
80001ebc:	00a68533          	add	a0,a3,a0
80001ec0:	01f51693          	slli	a3,a0,0x1f
80001ec4:	0017d793          	srli	a5,a5,0x1
80001ec8:	00f6e7b3          	or	a5,a3,a5
80001ecc:	40155413          	srai	s0,a0,0x1
        int64_t t = (xn << FIXED_Q) / g;
80001ed0:	00078613          	mv	a2,a5
80001ed4:	00040693          	mv	a3,s0
80001ed8:	000a8513          	mv	a0,s5
80001edc:	000a0593          	mv	a1,s4
80001ee0:	05012c23          	sw	a6,88(sp)
80001ee4:	04f12a23          	sw	a5,84(sp)
80001ee8:	77c050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80001eec:	05412783          	lw	a5,84(sp)
80001ef0:	008588b3          	add	a7,a1,s0
        int64_t t = (xn << FIXED_Q) / g;
80001ef4:	000a0593          	mv	a1,s4
        g = (g + t) >> 1;
80001ef8:	00f507b3          	add	a5,a0,a5
80001efc:	00a7b533          	sltu	a0,a5,a0
80001f00:	011508b3          	add	a7,a0,a7
80001f04:	01f89693          	slli	a3,a7,0x1f
80001f08:	0017d793          	srli	a5,a5,0x1
80001f0c:	4018d413          	srai	s0,a7,0x1
80001f10:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
80001f14:	00078613          	mv	a2,a5
80001f18:	00040693          	mv	a3,s0
80001f1c:	000a8513          	mv	a0,s5
80001f20:	04f12a23          	sw	a5,84(sp)
80001f24:	740050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80001f28:	05412783          	lw	a5,84(sp)
80001f2c:	008585b3          	add	a1,a1,s0
80001f30:	00f507b3          	add	a5,a0,a5
80001f34:	00a7b333          	sltu	t1,a5,a0
80001f38:	00b30333          	add	t1,t1,a1
80001f3c:	01f31693          	slli	a3,t1,0x1f
80001f40:	0017d793          	srli	a5,a5,0x1
80001f44:	40135413          	srai	s0,t1,0x1
80001f48:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
80001f4c:	00078613          	mv	a2,a5
80001f50:	00040693          	mv	a3,s0
80001f54:	000a8513          	mv	a0,s5
80001f58:	000a0593          	mv	a1,s4
80001f5c:	04f12a23          	sw	a5,84(sp)
80001f60:	704050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80001f64:	05412783          	lw	a5,84(sp)
80001f68:	008585b3          	add	a1,a1,s0
80001f6c:	00f507b3          	add	a5,a0,a5
80001f70:	00a7b8b3          	sltu	a7,a5,a0
80001f74:	00b888b3          	add	a7,a7,a1
80001f78:	01f89693          	slli	a3,a7,0x1f
80001f7c:	0017d793          	srli	a5,a5,0x1
80001f80:	4018d413          	srai	s0,a7,0x1
80001f84:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
80001f88:	00078613          	mv	a2,a5
80001f8c:	00040693          	mv	a3,s0
80001f90:	000a8513          	mv	a0,s5
80001f94:	000a0593          	mv	a1,s4
80001f98:	04f12a23          	sw	a5,84(sp)
80001f9c:	6c8050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80001fa0:	05412783          	lw	a5,84(sp)
80001fa4:	008585b3          	add	a1,a1,s0
80001fa8:	00f507b3          	add	a5,a0,a5
80001fac:	00a7b333          	sltu	t1,a5,a0
80001fb0:	00b30333          	add	t1,t1,a1
80001fb4:	01f31693          	slli	a3,t1,0x1f
80001fb8:	0017d793          	srli	a5,a5,0x1
80001fbc:	40135413          	srai	s0,t1,0x1
80001fc0:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
80001fc4:	00078613          	mv	a2,a5
80001fc8:	00040693          	mv	a3,s0
80001fcc:	000a8513          	mv	a0,s5
80001fd0:	000a0593          	mv	a1,s4
80001fd4:	04f12a23          	sw	a5,84(sp)
80001fd8:	68c050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80001fdc:	05412783          	lw	a5,84(sp)
80001fe0:	008585b3          	add	a1,a1,s0
80001fe4:	00f507b3          	add	a5,a0,a5
80001fe8:	00a7b8b3          	sltu	a7,a5,a0
80001fec:	00b888b3          	add	a7,a7,a1
80001ff0:	01f89693          	slli	a3,a7,0x1f
80001ff4:	0017d793          	srli	a5,a5,0x1
80001ff8:	4018d413          	srai	s0,a7,0x1
80001ffc:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
80002000:	00078613          	mv	a2,a5
80002004:	00040693          	mv	a3,s0
80002008:	000a8513          	mv	a0,s5
8000200c:	000a0593          	mv	a1,s4
80002010:	04f12a23          	sw	a5,84(sp)
80002014:	650050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80002018:	05412783          	lw	a5,84(sp)
8000201c:	008585b3          	add	a1,a1,s0
80002020:	00f507b3          	add	a5,a0,a5
80002024:	00a7b333          	sltu	t1,a5,a0
80002028:	00b30333          	add	t1,t1,a1
8000202c:	01f31693          	slli	a3,t1,0x1f
80002030:	0017d793          	srli	a5,a5,0x1
80002034:	40135413          	srai	s0,t1,0x1
80002038:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
8000203c:	00078613          	mv	a2,a5
80002040:	00040693          	mv	a3,s0
80002044:	000a8513          	mv	a0,s5
80002048:	000a0593          	mv	a1,s4
8000204c:	04f12a23          	sw	a5,84(sp)
80002050:	614050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80002054:	05412783          	lw	a5,84(sp)
80002058:	008585b3          	add	a1,a1,s0
8000205c:	00f507b3          	add	a5,a0,a5
80002060:	00a7b8b3          	sltu	a7,a5,a0
80002064:	00b888b3          	add	a7,a7,a1
80002068:	01f89693          	slli	a3,a7,0x1f
8000206c:	0017d793          	srli	a5,a5,0x1
80002070:	4018d413          	srai	s0,a7,0x1
80002074:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
80002078:	00078613          	mv	a2,a5
8000207c:	00040693          	mv	a3,s0
80002080:	000a8513          	mv	a0,s5
80002084:	000a0593          	mv	a1,s4
80002088:	04f12a23          	sw	a5,84(sp)
8000208c:	5d8050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80002090:	05412783          	lw	a5,84(sp)
80002094:	008585b3          	add	a1,a1,s0
80002098:	00f507b3          	add	a5,a0,a5
8000209c:	00a7b333          	sltu	t1,a5,a0
800020a0:	00b30333          	add	t1,t1,a1
800020a4:	01f31693          	slli	a3,t1,0x1f
800020a8:	0017d793          	srli	a5,a5,0x1
800020ac:	40135413          	srai	s0,t1,0x1
800020b0:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
800020b4:	00078613          	mv	a2,a5
800020b8:	00040693          	mv	a3,s0
800020bc:	000a8513          	mv	a0,s5
800020c0:	000a0593          	mv	a1,s4
800020c4:	04f12a23          	sw	a5,84(sp)
800020c8:	59c050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
800020cc:	05412783          	lw	a5,84(sp)
800020d0:	008585b3          	add	a1,a1,s0
800020d4:	00f507b3          	add	a5,a0,a5
800020d8:	00a7b8b3          	sltu	a7,a5,a0
800020dc:	00b888b3          	add	a7,a7,a1
800020e0:	01f89693          	slli	a3,a7,0x1f
800020e4:	0017d793          	srli	a5,a5,0x1
800020e8:	4018d413          	srai	s0,a7,0x1
800020ec:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
800020f0:	00078613          	mv	a2,a5
800020f4:	00040693          	mv	a3,s0
800020f8:	000a8513          	mv	a0,s5
800020fc:	000a0593          	mv	a1,s4
80002100:	04f12a23          	sw	a5,84(sp)
80002104:	560050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80002108:	05412783          	lw	a5,84(sp)
8000210c:	008585b3          	add	a1,a1,s0
80002110:	00f507b3          	add	a5,a0,a5
80002114:	00a7b333          	sltu	t1,a5,a0
80002118:	00b30333          	add	t1,t1,a1
8000211c:	01f31693          	slli	a3,t1,0x1f
80002120:	0017d793          	srli	a5,a5,0x1
80002124:	40135413          	srai	s0,t1,0x1
80002128:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
8000212c:	00078613          	mv	a2,a5
80002130:	00040693          	mv	a3,s0
80002134:	000a8513          	mv	a0,s5
80002138:	000a0593          	mv	a1,s4
8000213c:	04f12a23          	sw	a5,84(sp)
80002140:	524050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80002144:	05412783          	lw	a5,84(sp)
80002148:	008585b3          	add	a1,a1,s0
8000214c:	00f507b3          	add	a5,a0,a5
80002150:	00a7b8b3          	sltu	a7,a5,a0
80002154:	00b888b3          	add	a7,a7,a1
80002158:	01f89693          	slli	a3,a7,0x1f
8000215c:	0017d793          	srli	a5,a5,0x1
80002160:	4018d413          	srai	s0,a7,0x1
80002164:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
80002168:	00078613          	mv	a2,a5
8000216c:	00040693          	mv	a3,s0
80002170:	000a8513          	mv	a0,s5
80002174:	000a0593          	mv	a1,s4
80002178:	04f12a23          	sw	a5,84(sp)
8000217c:	4e8050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80002180:	05412783          	lw	a5,84(sp)
80002184:	008585b3          	add	a1,a1,s0
80002188:	00f507b3          	add	a5,a0,a5
8000218c:	00a7b333          	sltu	t1,a5,a0
80002190:	00b30333          	add	t1,t1,a1
80002194:	01f31693          	slli	a3,t1,0x1f
80002198:	0017d793          	srli	a5,a5,0x1
8000219c:	40135413          	srai	s0,t1,0x1
800021a0:	00f6e7b3          	or	a5,a3,a5
        int64_t t = (xn << FIXED_Q) / g;
800021a4:	00078613          	mv	a2,a5
800021a8:	00040693          	mv	a3,s0
800021ac:	000a8513          	mv	a0,s5
800021b0:	000a0593          	mv	a1,s4
800021b4:	04f12a23          	sw	a5,84(sp)
800021b8:	4ac050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
800021bc:	05412783          	lw	a5,84(sp)
800021c0:	008585b3          	add	a1,a1,s0
800021c4:	00f507b3          	add	a5,a0,a5
800021c8:	00a7b8b3          	sltu	a7,a5,a0
800021cc:	00b888b3          	add	a7,a7,a1
800021d0:	01f89693          	slli	a3,a7,0x1f
800021d4:	0017d793          	srli	a5,a5,0x1
800021d8:	00f6e7b3          	or	a5,a3,a5
800021dc:	4018d413          	srai	s0,a7,0x1
        int64_t t = (xn << FIXED_Q) / g;
800021e0:	00078613          	mv	a2,a5
800021e4:	00040693          	mv	a3,s0
800021e8:	000a8513          	mv	a0,s5
800021ec:	000a0593          	mv	a1,s4
800021f0:	04f12a23          	sw	a5,84(sp)
800021f4:	470050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
800021f8:	05412783          	lw	a5,84(sp)
800021fc:	008588b3          	add	a7,a1,s0
        int64_t t = (xn << FIXED_Q) / g;
80002200:	000a0593          	mv	a1,s4
        g = (g + t) >> 1;
80002204:	00f507b3          	add	a5,a0,a5
80002208:	00a7b533          	sltu	a0,a5,a0
8000220c:	011508b3          	add	a7,a0,a7
80002210:	01f89693          	slli	a3,a7,0x1f
80002214:	0017d793          	srli	a5,a5,0x1
80002218:	00f6e7b3          	or	a5,a3,a5
8000221c:	4018d413          	srai	s0,a7,0x1
        int64_t t = (xn << FIXED_Q) / g;
80002220:	00078613          	mv	a2,a5
80002224:	00040693          	mv	a3,s0
80002228:	000a8513          	mv	a0,s5
8000222c:	04f12a23          	sw	a5,84(sp)
80002230:	434050ef          	jal	ra,80007664 <__divdi3>
        g = (g + t) >> 1;
80002234:	05412783          	lw	a5,84(sp)
80002238:	008585b3          	add	a1,a1,s0
8000223c:	05812803          	lw	a6,88(sp)
80002240:	00f507b3          	add	a5,a0,a5
80002244:	00a7b533          	sltu	a0,a5,a0
80002248:	00b50533          	add	a0,a0,a1
8000224c:	01f51513          	slli	a0,a0,0x1f
80002250:	0017d793          	srli	a5,a5,0x1
80002254:	00f56433          	or	s0,a0,a5
80002258:	41f45a93          	srai	s5,s0,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
8000225c:	01081813          	slli	a6,a6,0x10
80002260:	010cd593          	srli	a1,s9,0x10
    return (fixed32)(n / b);
80002264:	0105e5b3          	or	a1,a1,a6
80002268:	00040613          	mv	a2,s0
8000226c:	000a8693          	mv	a3,s5
80002270:	010c9513          	slli	a0,s9,0x10
80002274:	3f0050ef          	jal	ra,80007664 <__divdi3>
    int64_t n = ((int64_t)a) << FIXED_Q;
80002278:	010c5593          	srli	a1,s8,0x10
8000227c:	010d9d93          	slli	s11,s11,0x10
    return (fixed32)(n / b);
80002280:	00050a13          	mv	s4,a0
80002284:	00040613          	mv	a2,s0
80002288:	000a8693          	mv	a3,s5
8000228c:	010c1513          	slli	a0,s8,0x10
80002290:	01b5e5b3          	or	a1,a1,s11
80002294:	3d0050ef          	jal	ra,80007664 <__divdi3>
    int64_t t = (int64_t)a * (int64_t)b;
80002298:	03c12683          	lw	a3,60(sp)
8000229c:	00090613          	mv	a2,s2
800022a0:	41f55593          	srai	a1,a0,0x1f
800022a4:	698070ef          	jal	ra,8000993c <__muldi3>
    int64_t n = ((int64_t)a) << FIXED_Q;
800022a8:	05012783          	lw	a5,80(sp)
800022ac:	010bd813          	srli	a6,s7,0x10
    return (fixed32)(t >> FIXED_Q);
800022b0:	01059713          	slli	a4,a1,0x10
    int64_t n = ((int64_t)a) << FIXED_Q;
800022b4:	01079c93          	slli	s9,a5,0x10
    return (fixed32)(n / b);
800022b8:	019865b3          	or	a1,a6,s9
    return (fixed32)(t >> FIXED_Q);
800022bc:	01055c13          	srli	s8,a0,0x10
    return (fixed32)(n / b);
800022c0:	00040613          	mv	a2,s0
800022c4:	000a8693          	mv	a3,s5
800022c8:	010b9513          	slli	a0,s7,0x10
    return (fixed32)(t >> FIXED_Q);
800022cc:	01876c33          	or	s8,a4,s8
    return (fixed32)(n / b);
800022d0:	394050ef          	jal	ra,80007664 <__divdi3>
    int64_t t = (int64_t)a * (int64_t)b;
800022d4:	04812683          	lw	a3,72(sp)
800022d8:	00048613          	mv	a2,s1
800022dc:	41f55593          	srai	a1,a0,0x1f
800022e0:	65c070ef          	jal	ra,8000993c <__muldi3>
800022e4:	03812603          	lw	a2,56(sp)
    return (fixed32)(t >> FIXED_Q);
800022e8:	01059713          	slli	a4,a1,0x10
800022ec:	01055793          	srli	a5,a0,0x10
800022f0:	00f767b3          	or	a5,a4,a5
    int64_t t = (int64_t)a * (int64_t)b;
800022f4:	41fa5593          	srai	a1,s4,0x1f
800022f8:	41f65693          	srai	a3,a2,0x1f
800022fc:	000a0513          	mv	a0,s4
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002300:	00fc0c33          	add	s8,s8,a5
    int64_t t = (int64_t)a * (int64_t)b;
80002304:	638070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80002308:	01059593          	slli	a1,a1,0x10
8000230c:	01055513          	srli	a0,a0,0x10
80002310:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002314:	00ac0c33          	add	s8,s8,a0

            Vec3fixed normal = cross_product_fixed(triTranslated);
            normal = normalize_fixed(normal);

            // if(normal.z < 0) {
            if (dot_product_fixed(normal, 
80002318:	b20c5c63          	bgez	s8,80001650 <main+0x438>
    int64_t t = (int64_t)a * (int64_t)b;
8000231c:	008a1793          	slli	a5,s4,0x8
    return (fixed32)(t >> FIXED_Q);
80002320:	40fa0a33          	sub	s4,s4,a5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002324:	000087b7          	lui	a5,0x8
80002328:	000a5463          	bgez	s4,80002330 <main+0x1118>
8000232c:	ffff87b7          	lui	a5,0xffff8
80002330:	01478a33          	add	s4,a5,s4
    int64_t t = (int64_t)a * (int64_t)b;
80002334:	03c12583          	lw	a1,60(sp)
80002338:	04812783          	lw	a5,72(sp)
8000233c:	0001b637          	lui	a2,0x1b
80002340:	00090513          	mv	a0,s2
80002344:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
80002348:	00000693          	li	a3,0
8000234c:	01079a93          	slli	s5,a5,0x10
80002350:	5ec070ef          	jal	ra,8000993c <__muldi3>
80002354:	0104d793          	srli	a5,s1,0x10
    return (fixed32)(t >> FIXED_Q);
80002358:	03812403          	lw	s0,56(sp)
    int64_t t = (int64_t)a * (int64_t)b;
8000235c:	0157eab3          	or	s5,a5,s5
80002360:	01049493          	slli	s1,s1,0x10
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002364:	410a5a13          	srai	s4,s4,0x10
    return (fixed32)(t >> FIXED_Q);
80002368:	01059593          	slli	a1,a1,0x10
8000236c:	01055513          	srli	a0,a0,0x10
80002370:	010a9b93          	slli	s7,s5,0x10
80002374:	0104d793          	srli	a5,s1,0x10
                    fixed_from_float(-1.0f)
                };
                // Not needed if light_dir is already normalized
                // light_dir = normalize_fixed(light_dir);
                fixed32 dp = dot_product_fixed(normal, light_dir);
                char light_intensity = fixed_to_int_round(fixed_mul_trunc(dp, F(255.0f)));
80002378:	0ffa7913          	andi	s2,s4,255
8000237c:	00fbebb3          	or	s7,s7,a5
80002380:	00a5ea33          	or	s4,a1,a0
    if (w != 0) {
80002384:	04040263          	beqz	s0,800023c8 <main+0x11b0>
    int64_t n = ((int64_t)a) << FIXED_Q;
80002388:	41fa5793          	srai	a5,s4,0x1f
    return (fixed32)(n / b);
8000238c:	41f45b93          	srai	s7,s0,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
80002390:	01079793          	slli	a5,a5,0x10
80002394:	010a5593          	srli	a1,s4,0x10
    return (fixed32)(n / b);
80002398:	000b8693          	mv	a3,s7
8000239c:	00040613          	mv	a2,s0
800023a0:	010a1513          	slli	a0,s4,0x10
800023a4:	00f5e5b3          	or	a1,a1,a5
800023a8:	2bc050ef          	jal	ra,80007664 <__divdi3>
800023ac:	000b8693          	mv	a3,s7
800023b0:	00050a13          	mv	s4,a0
800023b4:	00040613          	mv	a2,s0
800023b8:	00048513          	mv	a0,s1
800023bc:	000a8593          	mv	a1,s5
800023c0:	2a4050ef          	jal	ra,80007664 <__divdi3>
800023c4:	00050b93          	mv	s7,a0
    int64_t t = (int64_t)a * (int64_t)b;
800023c8:	04012503          	lw	a0,64(sp)
800023cc:	06812583          	lw	a1,104(sp)
800023d0:	0001b637          	lui	a2,0x1b
800023d4:	00000693          	li	a3,0
800023d8:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
800023dc:	560070ef          	jal	ra,8000993c <__muldi3>
800023e0:	04c12703          	lw	a4,76(sp)
800023e4:	07012783          	lw	a5,112(sp)
    return (fixed32)(t >> FIXED_Q);
800023e8:	000306b7          	lui	a3,0x30
    int64_t t = (int64_t)a * (int64_t)b;
800023ec:	01071413          	slli	s0,a4,0x10
800023f0:	01079c93          	slli	s9,a5,0x10
800023f4:	01075793          	srli	a5,a4,0x10
    return (fixed32)(t >> FIXED_Q);
800023f8:	03412703          	lw	a4,52(sp)
    int64_t t = (int64_t)a * (int64_t)b;
800023fc:	0197ecb3          	or	s9,a5,s9
    return (fixed32)(t >> FIXED_Q);
80002400:	01059593          	slli	a1,a1,0x10
80002404:	01055513          	srli	a0,a0,0x10
80002408:	010c9a93          	slli	s5,s9,0x10
8000240c:	01045793          	srli	a5,s0,0x10
80002410:	00d70c33          	add	s8,a4,a3
80002414:	00a5e4b3          	or	s1,a1,a0
80002418:	00faeab3          	or	s5,s5,a5
8000241c:	040c0263          	beqz	s8,80002460 <main+0x1248>
    int64_t n = ((int64_t)a) << FIXED_Q;
80002420:	41f4d793          	srai	a5,s1,0x1f
    return (fixed32)(n / b);
80002424:	41fc5a93          	srai	s5,s8,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
80002428:	01079793          	slli	a5,a5,0x10
8000242c:	0104d593          	srli	a1,s1,0x10
    return (fixed32)(n / b);
80002430:	000a8693          	mv	a3,s5
80002434:	000c0613          	mv	a2,s8
80002438:	01049513          	slli	a0,s1,0x10
8000243c:	00f5e5b3          	or	a1,a1,a5
80002440:	224050ef          	jal	ra,80007664 <__divdi3>
80002444:	000a8693          	mv	a3,s5
80002448:	00050493          	mv	s1,a0
8000244c:	000c0613          	mv	a2,s8
80002450:	00040513          	mv	a0,s0
80002454:	000c8593          	mv	a1,s9
80002458:	20c050ef          	jal	ra,80007664 <__divdi3>
8000245c:	00050a93          	mv	s5,a0
    int64_t t = (int64_t)a * (int64_t)b;
80002460:	04412503          	lw	a0,68(sp)
80002464:	06c12583          	lw	a1,108(sp)
80002468:	0001b637          	lui	a2,0x1b
8000246c:	00000693          	li	a3,0
80002470:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
80002474:	4c8070ef          	jal	ra,8000993c <__muldi3>
80002478:	07412783          	lw	a5,116(sp)
    return (fixed32)(t >> FIXED_Q);
8000247c:	06412703          	lw	a4,100(sp)
80002480:	000306b7          	lui	a3,0x30
    int64_t t = (int64_t)a * (int64_t)b;
80002484:	01079d93          	slli	s11,a5,0x10
80002488:	0109d793          	srli	a5,s3,0x10
8000248c:	01b7edb3          	or	s11,a5,s11
80002490:	01099993          	slli	s3,s3,0x10
    return (fixed32)(t >> FIXED_Q);
80002494:	01059593          	slli	a1,a1,0x10
80002498:	01055513          	srli	a0,a0,0x10
8000249c:	010d9c13          	slli	s8,s11,0x10
800024a0:	0109d793          	srli	a5,s3,0x10
800024a4:	00d70cb3          	add	s9,a4,a3
800024a8:	00a5e433          	or	s0,a1,a0
800024ac:	00fc6c33          	or	s8,s8,a5
800024b0:	040c8263          	beqz	s9,800024f4 <main+0x12dc>
    int64_t n = ((int64_t)a) << FIXED_Q;
800024b4:	41f45793          	srai	a5,s0,0x1f
    return (fixed32)(n / b);
800024b8:	41fcdc13          	srai	s8,s9,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
800024bc:	01079793          	slli	a5,a5,0x10
800024c0:	01045593          	srli	a1,s0,0x10
    return (fixed32)(n / b);
800024c4:	000c0693          	mv	a3,s8
800024c8:	000c8613          	mv	a2,s9
800024cc:	01041513          	slli	a0,s0,0x10
800024d0:	00f5e5b3          	or	a1,a1,a5
800024d4:	190050ef          	jal	ra,80007664 <__divdi3>
800024d8:	000c0693          	mv	a3,s8
800024dc:	00050413          	mv	s0,a0
800024e0:	000c8613          	mv	a2,s9
800024e4:	00098513          	mv	a0,s3
800024e8:	000d8593          	mv	a1,s11
800024ec:	178050ef          	jal	ra,80007664 <__divdi3>
800024f0:	00050c13          	mv	s8,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800024f4:	00010cb7          	lui	s9,0x10
800024f8:	019a0533          	add	a0,s4,s9
    int64_t t = (int64_t)a * (int64_t)b;
800024fc:	00005637          	lui	a2,0x5
80002500:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
80002504:	00000693          	li	a3,0
80002508:	41f55593          	srai	a1,a0,0x1f
8000250c:	430070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80002510:	01059593          	slli	a1,a1,0x10
80002514:	01055513          	srli	a0,a0,0x10
80002518:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
8000251c:	00151793          	slli	a5,a0,0x1
80002520:	00a787b3          	add	a5,a5,a0
80002524:	00379793          	slli	a5,a5,0x3
80002528:	00a78533          	add	a0,a5,a0
8000252c:	00b55993          	srli	s3,a0,0xb
80002530:	01551793          	slli	a5,a0,0x15
80002534:	0000b637          	lui	a2,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002538:	019b8533          	add	a0,s7,s9
    return (fixed32)(t >> FIXED_Q);
8000253c:	0107d793          	srli	a5,a5,0x10
80002540:	01099993          	slli	s3,s3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80002544:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
80002548:	00000693          	li	a3,0
8000254c:	41f55593          	srai	a1,a0,0x1f
    return (fixed32)(t >> FIXED_Q);
80002550:	00f9e9b3          	or	s3,s3,a5
    int64_t t = (int64_t)a * (int64_t)b;
80002554:	3e8070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80002558:	01059593          	slli	a1,a1,0x10
8000255c:	01055513          	srli	a0,a0,0x10
80002560:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80002564:	00451713          	slli	a4,a0,0x4
80002568:	40a70533          	sub	a0,a4,a0
8000256c:	00b55713          	srli	a4,a0,0xb
80002570:	01551513          	slli	a0,a0,0x15
    return (fixed32)(t >> FIXED_Q);
80002574:	01071713          	slli	a4,a4,0x10
80002578:	01055513          	srli	a0,a0,0x10
8000257c:	00a76733          	or	a4,a4,a0
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002580:	000087b7          	lui	a5,0x8
80002584:	0009d463          	bgez	s3,8000258c <main+0x1374>
80002588:	ffff87b7          	lui	a5,0xffff8
8000258c:	00f989b3          	add	s3,s3,a5
80002590:	4109d993          	srai	s3,s3,0x10
80002594:	000087b7          	lui	a5,0x8
80002598:	00075463          	bgez	a4,800025a0 <main+0x1388>
8000259c:	ffff87b7          	lui	a5,0xffff8
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800025a0:	00010bb7          	lui	s7,0x10
800025a4:	01748533          	add	a0,s1,s7
    int64_t t = (int64_t)a * (int64_t)b;
800025a8:	00005637          	lui	a2,0x5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800025ac:	00f70733          	add	a4,a4,a5
    int64_t t = (int64_t)a * (int64_t)b;
800025b0:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
800025b4:	00000693          	li	a3,0
800025b8:	41f55593          	srai	a1,a0,0x1f
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800025bc:	41075493          	srai	s1,a4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800025c0:	37c070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800025c4:	01059593          	slli	a1,a1,0x10
800025c8:	01055513          	srli	a0,a0,0x10
800025cc:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
800025d0:	00151793          	slli	a5,a0,0x1
800025d4:	00a787b3          	add	a5,a5,a0
800025d8:	00379793          	slli	a5,a5,0x3
800025dc:	00a78533          	add	a0,a5,a0
800025e0:	00b55a13          	srli	s4,a0,0xb
800025e4:	01551793          	slli	a5,a0,0x15
800025e8:	0000b637          	lui	a2,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800025ec:	017a8533          	add	a0,s5,s7
    return (fixed32)(t >> FIXED_Q);
800025f0:	0107d793          	srli	a5,a5,0x10
800025f4:	010a1a13          	slli	s4,s4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800025f8:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
800025fc:	00000693          	li	a3,0
80002600:	41f55593          	srai	a1,a0,0x1f
    return (fixed32)(t >> FIXED_Q);
80002604:	00fa6a33          	or	s4,s4,a5
    int64_t t = (int64_t)a * (int64_t)b;
80002608:	334070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000260c:	01059593          	slli	a1,a1,0x10
80002610:	01055513          	srli	a0,a0,0x10
80002614:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80002618:	00451713          	slli	a4,a0,0x4
8000261c:	40a70533          	sub	a0,a4,a0
80002620:	00b55713          	srli	a4,a0,0xb
80002624:	01551513          	slli	a0,a0,0x15
    return (fixed32)(t >> FIXED_Q);
80002628:	01071713          	slli	a4,a4,0x10
8000262c:	01055513          	srli	a0,a0,0x10
80002630:	00a76733          	or	a4,a4,a0
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002634:	000087b7          	lui	a5,0x8
80002638:	000a5463          	bgez	s4,80002640 <main+0x1428>
8000263c:	ffff87b7          	lui	a5,0xffff8
80002640:	00fa0a33          	add	s4,s4,a5
80002644:	410a5a13          	srai	s4,s4,0x10
80002648:	000087b7          	lui	a5,0x8
8000264c:	00075463          	bgez	a4,80002654 <main+0x143c>
80002650:	ffff87b7          	lui	a5,0xffff8
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80002654:	00010bb7          	lui	s7,0x10
80002658:	01740533          	add	a0,s0,s7
    int64_t t = (int64_t)a * (int64_t)b;
8000265c:	00005637          	lui	a2,0x5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002660:	00f70733          	add	a4,a4,a5
    int64_t t = (int64_t)a * (int64_t)b;
80002664:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
80002668:	00000693          	li	a3,0
8000266c:	41f55593          	srai	a1,a0,0x1f
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80002670:	41075413          	srai	s0,a4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80002674:	2c8070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80002678:	01059593          	slli	a1,a1,0x10
8000267c:	01055513          	srli	a0,a0,0x10
80002680:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80002684:	00151a93          	slli	s5,a0,0x1
80002688:	00aa8ab3          	add	s5,s5,a0
8000268c:	003a9a93          	slli	s5,s5,0x3
80002690:	00aa8533          	add	a0,s5,a0
80002694:	00b55a93          	srli	s5,a0,0xb
80002698:	01551793          	slli	a5,a0,0x15
8000269c:	0000b637          	lui	a2,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800026a0:	017c0533          	add	a0,s8,s7
    return (fixed32)(t >> FIXED_Q);
800026a4:	0107d793          	srli	a5,a5,0x10
800026a8:	010a9a93          	slli	s5,s5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800026ac:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
800026b0:	00000693          	li	a3,0
800026b4:	41f55593          	srai	a1,a0,0x1f
    return (fixed32)(t >> FIXED_Q);
800026b8:	00faeab3          	or	s5,s5,a5
    int64_t t = (int64_t)a * (int64_t)b;
800026bc:	280070ef          	jal	ra,8000993c <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800026c0:	01059593          	slli	a1,a1,0x10
800026c4:	01055513          	srli	a0,a0,0x10
800026c8:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
800026cc:	00451793          	slli	a5,a0,0x4
800026d0:	40a78533          	sub	a0,a5,a0
800026d4:	00b55793          	srli	a5,a0,0xb
800026d8:	01551513          	slli	a0,a0,0x15
    return (fixed32)(t >> FIXED_Q);
800026dc:	01079793          	slli	a5,a5,0x10
800026e0:	01055513          	srli	a0,a0,0x10
800026e4:	00a7e7b3          	or	a5,a5,a0
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800026e8:	00008737          	lui	a4,0x8
800026ec:	000ad463          	bgez	s5,800026f4 <main+0x14dc>
800026f0:	ffff8737          	lui	a4,0xffff8
800026f4:	00ea8ab3          	add	s5,s5,a4
800026f8:	410ada93          	srai	s5,s5,0x10
800026fc:	00008737          	lui	a4,0x8
80002700:	0007d463          	bgez	a5,80002708 <main+0x14f0>
80002704:	ffff8737          	lui	a4,0xffff8
                Vec2i s1 = to_screen_fixed(&triProj.p[1]);
                Vec2i s2 = to_screen_fixed(&triProj.p[2]);

                // tfp_printf("Triangle %d: Screen Coords: (%d,%d), (%d,%d), (%d,%d)\r\n",
                    // i, s0.x, s0.y, s1.x, s1.y, s2.x, s2.y);
                triangle(frame_buffer_to_use, s0, s1, s2, (color){light_intensity,light_intensity,light_intensity});
80002708:	09210223          	sb	s2,132(sp)
8000270c:	092102a3          	sb	s2,133(sp)
80002710:	09210323          	sb	s2,134(sp)
80002714:	00008b97          	auipc	s7,0x8
80002718:	220b8b93          	addi	s7,s7,544 # 8000a934 <_ebss>
8000271c:	00e78933          	add	s2,a5,a4
80002720:	000ba503          	lw	a0,0(s7)
80002724:	08412883          	lw	a7,132(sp)
80002728:	41095913          	srai	s2,s2,0x10
8000272c:	000a8793          	mv	a5,s5
80002730:	00090813          	mv	a6,s2
80002734:	000a0693          	mv	a3,s4
80002738:	00040713          	mv	a4,s0
8000273c:	00098593          	mv	a1,s3
80002740:	00048613          	mv	a2,s1
80002744:	09312423          	sw	s3,136(sp)
80002748:	08912623          	sw	s1,140(sp)
8000274c:	09412823          	sw	s4,144(sp)
80002750:	08812a23          	sw	s0,148(sp)
80002754:	09512c23          	sw	s5,152(sp)
80002758:	09212e23          	sw	s2,156(sp)
8000275c:	e19fd0ef          	jal	ra,80000574 <_Z8trianglePt4Vec2IiES1_S1_5color>
                triangle_wireframe(frame_buffer_to_use, s0, s1, s2, (color){0,0,0});
80002760:	000bab83          	lw	s7,0(s7)
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
80002764:	00000893          	li	a7,0
80002768:	00000813          	li	a6,0
8000276c:	00000793          	li	a5,0
80002770:	00040713          	mv	a4,s0
80002774:	000a0693          	mv	a3,s4
80002778:	00048613          	mv	a2,s1
8000277c:	00098593          	mv	a1,s3
80002780:	000b8513          	mv	a0,s7
80002784:	d0dfd0ef          	jal	ra,80000490 <_Z9draw_linePtiiiihhh>
    draw_line(pixels, t1.x, t1.y, t2.x, t2.y, col.r, col.g, col.b);
80002788:	00000893          	li	a7,0
8000278c:	00000813          	li	a6,0
80002790:	00000793          	li	a5,0
80002794:	00090713          	mv	a4,s2
80002798:	000a8693          	mv	a3,s5
8000279c:	00040613          	mv	a2,s0
800027a0:	000a0593          	mv	a1,s4
800027a4:	000b8513          	mv	a0,s7
800027a8:	ce9fd0ef          	jal	ra,80000490 <_Z9draw_linePtiiiihhh>
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
800027ac:	00000793          	li	a5,0
800027b0:	00000893          	li	a7,0
800027b4:	00000813          	li	a6,0
800027b8:	00048713          	mv	a4,s1
800027bc:	00098693          	mv	a3,s3
800027c0:	00090613          	mv	a2,s2
800027c4:	000a8593          	mv	a1,s5
800027c8:	000b8513          	mv	a0,s7
800027cc:	cc5fd0ef          	jal	ra,80000490 <_Z9draw_linePtiiiihhh>
800027d0:	024b0b13          	addi	s6,s6,36
        for (int i = 0; i < cube_size; i++) {
800027d4:	2b010793          	addi	a5,sp,688
800027d8:	00fb0463          	beq	s6,a5,800027e0 <main+0x15c8>
800027dc:	e85fe06f          	j	80001660 <main+0x448>
    if (cur_frame_buffer == 0) {
800027e0:	00008797          	auipc	a5,0x8
800027e4:	15c78793          	addi	a5,a5,348 # 8000a93c <RAM_LOCATION2>
800027e8:	0007a703          	lw	a4,0(a5)
800027ec:	00008697          	auipc	a3,0x8
800027f0:	e446c683          	lbu	a3,-444(a3) # 8000a630 <cur_frame_buffer>
800027f4:	00008797          	auipc	a5,0x8
800027f8:	14c78793          	addi	a5,a5,332 # 8000a940 <RAM_LOCATION>
800027fc:	0007a783          	lw	a5,0(a5)
80002800:	0a069663          	bnez	a3,800028ac <main+0x1694>
        cur_frame_buffer = 1;
80002804:	00100693          	li	a3,1
80002808:	00008617          	auipc	a2,0x8
8000280c:	e2d60423          	sb	a3,-472(a2) # 8000a630 <cur_frame_buffer>
        frame_buffer = ( uint16_t *) RAM_LOCATION;
80002810:	00008697          	auipc	a3,0x8
80002814:	12f6a423          	sw	a5,296(a3) # 8000a938 <frame_buffer>
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION2;
80002818:	00008697          	auipc	a3,0x8
8000281c:	10e6ae23          	sw	a4,284(a3) # 8000a934 <_ebss>
            }
        }
        frame_buffer_addr[0] = (uint32_t)switch_frame_buffer();
        // tfp_printf("Current Frame Buffer: %x\r\n", frame_buffer_to_use);
        // for(volatile int k=0; k<100000; k++); // Simple delay
        tfp_printf("Frame %d\r\n", frame_num++);
80002820:	07c12403          	lw	s0,124(sp)
        frame_buffer_addr[0] = (uint32_t)switch_frame_buffer();
80002824:	88003737          	lui	a4,0x88003
80002828:	80f72223          	sw	a5,-2044(a4) # 88002804 <_stack_top+0x7c02804>
        tfp_printf("Frame %d\r\n", frame_num++);
8000282c:	00040593          	mv	a1,s0
80002830:	00007517          	auipc	a0,0x7
80002834:	2f850513          	addi	a0,a0,760 # 80009b28 <__clzsi2+0xa8>
80002838:	1dd030ef          	jal	ra,80006214 <tfp_printf>
8000283c:	00008797          	auipc	a5,0x8
80002840:	c6c78793          	addi	a5,a5,-916 # 8000a4a8 <_etext+0x10>
80002844:	0007a583          	lw	a1,0(a5)
80002848:	07812503          	lw	a0,120(sp)
8000284c:	00140993          	addi	s3,s0,1 # 10001 <_stack_size+0x8001>
80002850:	705050ef          	jal	ra,80008754 <__addsf3>
80002854:	00050493          	mv	s1,a0
80002858:	219030ef          	jal	ra,80006270 <cosf>
8000285c:	00050913          	mv	s2,a0
80002860:	00048513          	mv	a0,s1
80002864:	2a9030ef          	jal	ra,8000630c <sinf>
80002868:	00008797          	auipc	a5,0x8
8000286c:	c4878793          	addi	a5,a5,-952 # 8000a4b0 <_etext+0x18>
80002870:	0007a583          	lw	a1,0(a5)
80002874:	00050413          	mv	s0,a0
80002878:	00048513          	mv	a0,s1
8000287c:	07312e23          	sw	s3,124(sp)
80002880:	7b0060ef          	jal	ra,80009030 <__mulsf3>
80002884:	00050493          	mv	s1,a0
80002888:	1e9030ef          	jal	ra,80006270 <cosf>
8000288c:	00050a13          	mv	s4,a0
80002890:	00048513          	mv	a0,s1
80002894:	279030ef          	jal	ra,8000630c <sinf>
80002898:	00050993          	mv	s3,a0
    }
8000289c:	c89fe06f          	j	80001524 <main+0x30c>
    if (x <= 0) return 0;
800028a0:	00000413          	li	s0,0
800028a4:	00000a93          	li	s5,0
800028a8:	9b5ff06f          	j	8000225c <main+0x1044>
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION;
800028ac:	00008697          	auipc	a3,0x8
800028b0:	08f6a423          	sw	a5,136(a3) # 8000a934 <_ebss>
        cur_frame_buffer = 0;
800028b4:	00008797          	auipc	a5,0x8
800028b8:	d6078e23          	sb	zero,-644(a5) # 8000a630 <cur_frame_buffer>
        frame_buffer = ( uint16_t *) RAM_LOCATION2;
800028bc:	00008797          	auipc	a5,0x8
800028c0:	06e7ae23          	sw	a4,124(a5) # 8000a938 <frame_buffer>
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION;
800028c4:	00070793          	mv	a5,a4
800028c8:	f59ff06f          	j	80002820 <main+0x1608>

800028cc <_GLOBAL__sub_I__Z7rotateYRK4Vec3IfEf>:
uint16_t *frame_buffer = (uint16_t *) RAM_LOCATION;
800028cc:	00008797          	auipc	a5,0x8
800028d0:	07478793          	addi	a5,a5,116 # 8000a940 <RAM_LOCATION>
800028d4:	0007a703          	lw	a4,0(a5)
uint16_t *frame_buffer_to_use = (uint16_t *) RAM_LOCATION2;
800028d8:	00008797          	auipc	a5,0x8
800028dc:	06478793          	addi	a5,a5,100 # 8000a93c <RAM_LOCATION2>
800028e0:	0007a783          	lw	a5,0(a5)
uint16_t *frame_buffer = (uint16_t *) RAM_LOCATION;
800028e4:	00008697          	auipc	a3,0x8
800028e8:	04e6aa23          	sw	a4,84(a3) # 8000a938 <frame_buffer>
uint16_t *frame_buffer_to_use = (uint16_t *) RAM_LOCATION2;
800028ec:	00008717          	auipc	a4,0x8
800028f0:	04f72423          	sw	a5,72(a4) # 8000a934 <_ebss>
800028f4:	00008067          	ret

800028f8 <_Z14uart_read_bytev>:

#define LSR_DR          0x01

uint8_t uart_read_byte() {
    // Wait until data is ready
    while ((*(volatile uint8_t *)UART_REG_LSR & LSR_DR) == 0);
800028f8:	10000737          	lui	a4,0x10000
800028fc:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
80002900:	0017f793          	andi	a5,a5,1
80002904:	fe078ce3          	beqz	a5,800028fc <_Z14uart_read_bytev+0x4>
    // Read received byte
    return *(volatile uint8_t *)UART_REG_RBR;
80002908:	00074503          	lbu	a0,0(a4)
}
8000290c:	00008067          	ret

80002910 <_Z11vOutNS16550h>:

static uint8_t readb( uintptr_t addr )
{
	return *( (volatile uint8_t *) addr );
80002910:	10000737          	lui	a4,0x10000
80002914:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>

    // uintptr_t *ptr = (uintptr_t *) UART_ADDRESS;
    // ptr[0] = c;
    // putch(129,'T', 15);
    // uintptr_t ptr = (uintptr_t *)UART_ADDRESS;
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80002918:	0207f793          	andi	a5,a5,32
8000291c:	fe078ce3          	beqz	a5,80002914 <_Z11vOutNS16550h+0x4>
	*( (uint8_t *) addr ) = b;
80002920:	00a70023          	sb	a0,0(a4)
		/* busy wait */
	}
	writeb( c, UART_ADDRESS + REG_THR );
}
80002924:	00008067          	ret

80002928 <_Z8get_timev>:

long get_time() {
    // Read the current time from the mtime register
    volatile unsigned long *mtime = (volatile unsigned long *)MTIME_ADDR;
    return *mtime;
80002928:	0200c7b7          	lui	a5,0x200c
8000292c:	ff87a503          	lw	a0,-8(a5) # 200bff8 <_stack_size+0x2003ff8>
}
80002930:	00008067          	ret

80002934 <_Z9getButtonc>:
// }
// *****************************************************************************
// returns 1 if the button is pressed, 0 otherwise
char getButton(char btn){
    char *buttons = (char *)BUTTONS;
    return buttons[btn];
80002934:	890007b7          	lui	a5,0x89000
80002938:	00a78533          	add	a0,a5,a0
}
8000293c:	00054503          	lbu	a0,0(a0)
80002940:	00008067          	ret

80002944 <_Z13getButtonDownv>:
char getButtonDown(){
    char *buttons = (char *)BUTTONS;
    return buttons[0];
80002944:	890007b7          	lui	a5,0x89000
}
80002948:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_top+0x8c00000>
8000294c:	00008067          	ret

80002950 <_Z11getButtonUpv>:
char getButtonUp(){
    char *buttons = (char *)BUTTONS;
    return buttons[1];
80002950:	890007b7          	lui	a5,0x89000
}
80002954:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_top+0x8c00001>
80002958:	00008067          	ret

8000295c <_Z13getButtonLeftv>:
char getButtonLeft(){
    char *buttons = (char *)BUTTONS;
    return buttons[2];
8000295c:	890007b7          	lui	a5,0x89000
}
80002960:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_top+0x8c00002>
80002964:	00008067          	ret

80002968 <_Z14getButtonRightv>:
char getButtonRight(){
    char *buttons = (char *)BUTTONS;
    return buttons[3];
80002968:	890007b7          	lui	a5,0x89000
}
8000296c:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_top+0x8c00003>
80002970:	00008067          	ret

80002974 <_Z5putchicc>:

// *****************************************************************************
// Puts a character at the specified location with the specified color.
// The colors are as the Text Mode format in https://en.wikipedia.org/wiki/VGA_text_mode
unsigned char putch(int location, char c, char color) {
80002974:	00050793          	mv	a5,a0
    if(location<0){
80002978:	02054863          	bltz	a0,800029a8 <_Z5putchicc+0x34>
        vOutNS16550(c);
        return 0;
    }
    if(location>SCREEN_SIZE){
8000297c:	4c000713          	li	a4,1216
        return 0;
80002980:	00000513          	li	a0,0
    if(location>SCREEN_SIZE){
80002984:	02f74063          	blt	a4,a5,800029a4 <_Z5putchicc+0x30>
    }
    // for the big screen
    volatile unsigned short *screen = (unsigned short *)SCREEN_LOCATION;
    unsigned short buffer = (color << 8) | c;
    screen[location] = buffer;
80002988:	88000537          	lui	a0,0x88000
    unsigned short buffer = (color << 8) | c;
8000298c:	00861613          	slli	a2,a2,0x8
    screen[location] = buffer;
80002990:	00179793          	slli	a5,a5,0x1
80002994:	00f507b3          	add	a5,a0,a5
    unsigned short buffer = (color << 8) | c;
80002998:	00b66633          	or	a2,a2,a1
    screen[location] = buffer;
8000299c:	00c79023          	sh	a2,0(a5)
    return 1;
800029a0:	00100513          	li	a0,1
}
800029a4:	00008067          	ret
	return *( (volatile uint8_t *) addr );
800029a8:	10000737          	lui	a4,0x10000
800029ac:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800029b0:	0207f793          	andi	a5,a5,32
800029b4:	fe078ce3          	beqz	a5,800029ac <_Z5putchicc+0x38>
	*( (uint8_t *) addr ) = b;
800029b8:	00b70023          	sb	a1,0(a4)
800029bc:	00000513          	li	a0,0
800029c0:	00008067          	ret

800029c4 <_Z11printStringiPcc>:
// Prints the string. If color is 0, it will print in rainbow colors
// If this returns 0, there was an error
unsigned int printString(int location, char *string, char color){
    int i = 0;
    char rainbow=0;
    if(color==0){
800029c4:	08061863          	bnez	a2,80002a54 <_Z11printStringiPcc+0x90>
800029c8:	00000793          	li	a5,0
        rainbow=1;
        color=1;
800029cc:	00100693          	li	a3,1
    }
    while(string[i] != '\0'){
        if(string[i]=='\n'){
800029d0:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
800029d4:	4c000f13          	li	t5,1216
    screen[location] = buffer;
800029d8:	88000e37          	lui	t3,0x88000
            return 0;
        }
        i++;
        if(rainbow==1){
            color++;
            if(color>15){
800029dc:	00f00e93          	li	t4,15
    while(string[i] != '\0'){
800029e0:	00f58733          	add	a4,a1,a5
800029e4:	00074703          	lbu	a4,0(a4)
        if(!putch(location + i, string[i],color)){
800029e8:	00f50633          	add	a2,a0,a5
    while(string[i] != '\0'){
800029ec:	04070a63          	beqz	a4,80002a40 <_Z11printStringiPcc+0x7c>
        if(string[i]=='\n'){
800029f0:	0c670663          	beq	a4,t1,80002abc <_Z11printStringiPcc+0xf8>
    unsigned short buffer = (color << 8) | c;
800029f4:	00869893          	slli	a7,a3,0x8
    screen[location] = buffer;
800029f8:	00161813          	slli	a6,a2,0x1
            color++;
800029fc:	00168693          	addi	a3,a3,1
    unsigned short buffer = (color << 8) | c;
80002a00:	00e8e8b3          	or	a7,a7,a4
    screen[location] = buffer;
80002a04:	010e0833          	add	a6,t3,a6
            color++;
80002a08:	0ff6f693          	andi	a3,a3,255
    if(location<0){
80002a0c:	00064e63          	bltz	a2,80002a28 <_Z11printStringiPcc+0x64>
    if(location>SCREEN_SIZE){
80002a10:	02cf4c63          	blt	t5,a2,80002a48 <_Z11printStringiPcc+0x84>
    screen[location] = buffer;
80002a14:	01181023          	sh	a7,0(a6)
            if(color>15){
80002a18:	00def463          	bgeu	t4,a3,80002a20 <_Z11printStringiPcc+0x5c>
                color=1;
80002a1c:	00100693          	li	a3,1
80002a20:	00178793          	addi	a5,a5,1
80002a24:	fbdff06f          	j	800029e0 <_Z11printStringiPcc+0x1c>
	return *( (volatile uint8_t *) addr );
80002a28:	100006b7          	lui	a3,0x10000
80002a2c:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80002a30:	0207f793          	andi	a5,a5,32
80002a34:	fe078ce3          	beqz	a5,80002a2c <_Z11printStringiPcc+0x68>
	*( (uint8_t *) addr ) = b;
80002a38:	00e68023          	sb	a4,0(a3)
            return 0;
80002a3c:	00000793          	li	a5,0
            }
        }
    }
    return i;
}
80002a40:	00078513          	mv	a0,a5
80002a44:	00008067          	ret
            return 0;
80002a48:	00000793          	li	a5,0
}
80002a4c:	00078513          	mv	a0,a5
80002a50:	00008067          	ret
    unsigned short buffer = (color << 8) | c;
80002a54:	00861613          	slli	a2,a2,0x8
80002a58:	01061893          	slli	a7,a2,0x10
80002a5c:	4108d893          	srai	a7,a7,0x10
80002a60:	00000793          	li	a5,0
        if(string[i]=='\n'){
80002a64:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80002a68:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80002a6c:	88000e37          	lui	t3,0x88000
    while(string[i] != '\0'){
80002a70:	00f58733          	add	a4,a1,a5
80002a74:	00074703          	lbu	a4,0(a4)
        if(!putch(location + i, string[i],color)){
80002a78:	00a78633          	add	a2,a5,a0
    while(string[i] != '\0'){
80002a7c:	fc0702e3          	beqz	a4,80002a40 <_Z11printStringiPcc+0x7c>
        if(string[i]=='\n'){
80002a80:	02670663          	beq	a4,t1,80002aac <_Z11printStringiPcc+0xe8>
    unsigned short buffer = (color << 8) | c;
80002a84:	00e8e6b3          	or	a3,a7,a4
    screen[location] = buffer;
80002a88:	00161813          	slli	a6,a2,0x1
    unsigned short buffer = (color << 8) | c;
80002a8c:	01069693          	slli	a3,a3,0x10
80002a90:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
80002a94:	010e0833          	add	a6,t3,a6
    if(location<0){
80002a98:	f80648e3          	bltz	a2,80002a28 <_Z11printStringiPcc+0x64>
    if(location>SCREEN_SIZE){
80002a9c:	facec6e3          	blt	t4,a2,80002a48 <_Z11printStringiPcc+0x84>
    screen[location] = buffer;
80002aa0:	00d81023          	sh	a3,0(a6)
        if(rainbow==1){
80002aa4:	00178793          	addi	a5,a5,1
80002aa8:	fc9ff06f          	j	80002a70 <_Z11printStringiPcc+0xac>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002aac:	fc057513          	andi	a0,a0,-64
80002ab0:	04050513          	addi	a0,a0,64 # 88000040 <_stack_top+0x7c00040>
            continue;
80002ab4:	00178793          	addi	a5,a5,1
80002ab8:	fb9ff06f          	j	80002a70 <_Z11printStringiPcc+0xac>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002abc:	fc057513          	andi	a0,a0,-64
80002ac0:	04050513          	addi	a0,a0,64
            continue;
80002ac4:	00178793          	addi	a5,a5,1
80002ac8:	f19ff06f          	j	800029e0 <_Z11printStringiPcc+0x1c>

80002acc <_Z8printHexiic>:

// *****************************************************************************
// Prints the hex value at the specified location. If color is 0, it will print in rainbow colors
unsigned char printHex(int location, int value, char color) {
    char hexChars[] = "0123456789ABCDEF";
80002acc:	00007797          	auipc	a5,0x7
80002ad0:	08078793          	addi	a5,a5,128 # 80009b4c <__clzsi2+0xcc>
80002ad4:	0107c803          	lbu	a6,16(a5)
80002ad8:	0007af03          	lw	t5,0(a5)
80002adc:	0047ae83          	lw	t4,4(a5)
80002ae0:	0087ae03          	lw	t3,8(a5)
80002ae4:	00c7a883          	lw	a7,12(a5)
unsigned char printHex(int location, int value, char color) {
80002ae8:	fe010113          	addi	sp,sp,-32
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
    buffer[8] = '\0'; // Null-terminate the string
    
    for(int i = 7; i >= 0; i--) {
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80002aec:	40c5d793          	srai	a5,a1,0xc
80002af0:	4085d713          	srai	a4,a1,0x8
80002af4:	4185d693          	srai	a3,a1,0x18
    char hexChars[] = "0123456789ABCDEF";
80002af8:	01010e23          	sb	a6,28(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002afc:	01c5d313          	srli	t1,a1,0x1c
80002b00:	02010813          	addi	a6,sp,32
80002b04:	00f7f793          	andi	a5,a5,15
80002b08:	00f77713          	andi	a4,a4,15
80002b0c:	00f6f693          	andi	a3,a3,15
    char hexChars[] = "0123456789ABCDEF";
80002b10:	01112c23          	sw	a7,24(sp)
80002b14:	01e12623          	sw	t5,12(sp)
80002b18:	01d12823          	sw	t4,16(sp)
80002b1c:	01c12a23          	sw	t3,20(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002b20:	00e80733          	add	a4,a6,a4
80002b24:	00680333          	add	t1,a6,t1
80002b28:	00d806b3          	add	a3,a6,a3
80002b2c:	00f807b3          	add	a5,a6,a5
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80002b30:	4045d893          	srai	a7,a1,0x4
80002b34:	4145d813          	srai	a6,a1,0x14
80002b38:	fec74f83          	lbu	t6,-20(a4)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002b3c:	fec6cf03          	lbu	t5,-20(a3)
80002b40:	fec34703          	lbu	a4,-20(t1)
80002b44:	02010693          	addi	a3,sp,32
80002b48:	fec7c783          	lbu	a5,-20(a5)
80002b4c:	00f8f893          	andi	a7,a7,15
80002b50:	00f87813          	andi	a6,a6,15
80002b54:	011688b3          	add	a7,a3,a7
80002b58:	01068833          	add	a6,a3,a6
80002b5c:	ffff0337          	lui	t1,0xffff0
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80002b60:	4105d693          	srai	a3,a1,0x10
80002b64:	0ff30313          	addi	t1,t1,255 # ffff00ff <_stack_top+0x7fbf00ff>
80002b68:	fec8ce83          	lbu	t4,-20(a7)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002b6c:	fec84e03          	lbu	t3,-20(a6)
80002b70:	00f5f593          	andi	a1,a1,15
80002b74:	02010813          	addi	a6,sp,32
80002b78:	00f6f693          	andi	a3,a3,15
80002b7c:	00b805b3          	add	a1,a6,a1
80002b80:	00d806b3          	add	a3,a6,a3
80002b84:	0067f7b3          	and	a5,a5,t1
80002b88:	00677733          	and	a4,a4,t1
80002b8c:	008f9f93          	slli	t6,t6,0x8
80002b90:	008f1f13          	slli	t5,t5,0x8
80002b94:	ff010837          	lui	a6,0xff010
80002b98:	fff80813          	addi	a6,a6,-1 # ff00ffff <_stack_top+0x7ec0ffff>
80002b9c:	fec5c883          	lbu	a7,-20(a1)
80002ba0:	01f7e7b3          	or	a5,a5,t6
80002ba4:	fec6c583          	lbu	a1,-20(a3)
80002ba8:	01e76733          	or	a4,a4,t5
80002bac:	0107f7b3          	and	a5,a5,a6
80002bb0:	01077733          	and	a4,a4,a6
80002bb4:	010e9e93          	slli	t4,t4,0x10
80002bb8:	010e1313          	slli	t1,t3,0x10
80002bbc:	010006b7          	lui	a3,0x1000
80002bc0:	fff68693          	addi	a3,a3,-1 # ffffff <_stack_size+0xff7fff>
80002bc4:	01d7e7b3          	or	a5,a5,t4
80002bc8:	00676733          	or	a4,a4,t1
80002bcc:	01889813          	slli	a6,a7,0x18
80002bd0:	00d7f7b3          	and	a5,a5,a3
80002bd4:	01859593          	slli	a1,a1,0x18
80002bd8:	00d77733          	and	a4,a4,a3
80002bdc:	0107e7b3          	or	a5,a5,a6
80002be0:	00b76733          	or	a4,a4,a1
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80002be4:	00010423          	sb	zero,8(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002be8:	00e12023          	sw	a4,0(sp)
80002bec:	00f12223          	sw	a5,4(sp)
    if(color==0){
80002bf0:	08061a63          	bnez	a2,80002c84 <_Z8printHexiic+0x1b8>
80002bf4:	00010593          	mv	a1,sp
80002bf8:	00000793          	li	a5,0
        color=1;
80002bfc:	00100693          	li	a3,1
        if(string[i]=='\n'){
80002c00:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80002c04:	4c000f13          	li	t5,1216
    screen[location] = buffer;
80002c08:	88000e37          	lui	t3,0x88000
            if(color>15){
80002c0c:	00f00e93          	li	t4,15
    while(string[i] != '\0'){
80002c10:	0005c703          	lbu	a4,0(a1)
        if(!putch(location + i, string[i],color)){
80002c14:	00a78633          	add	a2,a5,a0
    while(string[i] != '\0'){
80002c18:	0c070863          	beqz	a4,80002ce8 <_Z8printHexiic+0x21c>
        if(string[i]=='\n'){
80002c1c:	0e670263          	beq	a4,t1,80002d00 <_Z8printHexiic+0x234>
    unsigned short buffer = (color << 8) | c;
80002c20:	00869893          	slli	a7,a3,0x8
    screen[location] = buffer;
80002c24:	00161813          	slli	a6,a2,0x1
            color++;
80002c28:	00168693          	addi	a3,a3,1
    unsigned short buffer = (color << 8) | c;
80002c2c:	00e8e8b3          	or	a7,a7,a4
    screen[location] = buffer;
80002c30:	010e0833          	add	a6,t3,a6
            color++;
80002c34:	0ff6f693          	andi	a3,a3,255
    if(location<0){
80002c38:	02064063          	bltz	a2,80002c58 <_Z8printHexiic+0x18c>
    if(location>SCREEN_SIZE){
80002c3c:	02cf4e63          	blt	t5,a2,80002c78 <_Z8printHexiic+0x1ac>
    screen[location] = buffer;
80002c40:	01181023          	sh	a7,0(a6)
            if(color>15){
80002c44:	00def463          	bgeu	t4,a3,80002c4c <_Z8printHexiic+0x180>
                color=1;
80002c48:	00100693          	li	a3,1
80002c4c:	00178793          	addi	a5,a5,1
80002c50:	00158593          	addi	a1,a1,1
80002c54:	fbdff06f          	j	80002c10 <_Z8printHexiic+0x144>
	return *( (volatile uint8_t *) addr );
80002c58:	100006b7          	lui	a3,0x10000
80002c5c:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80002c60:	0207f793          	andi	a5,a5,32
80002c64:	fe078ce3          	beqz	a5,80002c5c <_Z8printHexiic+0x190>
	*( (uint8_t *) addr ) = b;
80002c68:	00e68023          	sb	a4,0(a3)
80002c6c:	00000513          	li	a0,0
    }
    return printString(location, buffer, color);
}
80002c70:	02010113          	addi	sp,sp,32
80002c74:	00008067          	ret
    if(location>SCREEN_SIZE){
80002c78:	00000513          	li	a0,0
}
80002c7c:	02010113          	addi	sp,sp,32
80002c80:	00008067          	ret
80002c84:	00010813          	mv	a6,sp
    while(string[i] != '\0'){
80002c88:	00084703          	lbu	a4,0(a6)
    unsigned short buffer = (color << 8) | c;
80002c8c:	00861613          	slli	a2,a2,0x8
80002c90:	01061893          	slli	a7,a2,0x10
80002c94:	00000793          	li	a5,0
80002c98:	4108d893          	srai	a7,a7,0x10
        if(string[i]=='\n'){
80002c9c:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80002ca0:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80002ca4:	88000e37          	lui	t3,0x88000
        if(!putch(location + i, string[i],color)){
80002ca8:	00a78633          	add	a2,a5,a0
    while(string[i] != '\0'){
80002cac:	02070e63          	beqz	a4,80002ce8 <_Z8printHexiic+0x21c>
        if(string[i]=='\n'){
80002cb0:	04670263          	beq	a4,t1,80002cf4 <_Z8printHexiic+0x228>
    unsigned short buffer = (color << 8) | c;
80002cb4:	00e8e6b3          	or	a3,a7,a4
    screen[location] = buffer;
80002cb8:	00161593          	slli	a1,a2,0x1
    unsigned short buffer = (color << 8) | c;
80002cbc:	01069693          	slli	a3,a3,0x10
80002cc0:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
80002cc4:	00be05b3          	add	a1,t3,a1
    if(location<0){
80002cc8:	f80648e3          	bltz	a2,80002c58 <_Z8printHexiic+0x18c>
    if(location>SCREEN_SIZE){
80002ccc:	facec6e3          	blt	t4,a2,80002c78 <_Z8printHexiic+0x1ac>
    screen[location] = buffer;
80002cd0:	00d59023          	sh	a3,0(a1)
        if(rainbow==1){
80002cd4:	00180813          	addi	a6,a6,1
    while(string[i] != '\0'){
80002cd8:	00084703          	lbu	a4,0(a6)
80002cdc:	00178793          	addi	a5,a5,1
        if(!putch(location + i, string[i],color)){
80002ce0:	00a78633          	add	a2,a5,a0
    while(string[i] != '\0'){
80002ce4:	fc0716e3          	bnez	a4,80002cb0 <_Z8printHexiic+0x1e4>
80002ce8:	0ff7f513          	andi	a0,a5,255
}
80002cec:	02010113          	addi	sp,sp,32
80002cf0:	00008067          	ret
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002cf4:	fc057513          	andi	a0,a0,-64
80002cf8:	04050513          	addi	a0,a0,64
            continue;
80002cfc:	fd9ff06f          	j	80002cd4 <_Z8printHexiic+0x208>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002d00:	fc057513          	andi	a0,a0,-64
80002d04:	04050513          	addi	a0,a0,64
            continue;
80002d08:	00178793          	addi	a5,a5,1
80002d0c:	00158593          	addi	a1,a1,1
80002d10:	f01ff06f          	j	80002c10 <_Z8printHexiic+0x144>

80002d14 <_Z8printDeciic>:

// *****************************************************************************
// Prints the decimal value at the specified location. If color is 0, it will print in rainbow colors
unsigned char printDec(int location, int num, char color) {
80002d14:	fd010113          	addi	sp,sp,-48
80002d18:	02812423          	sw	s0,40(sp)
80002d1c:	02912223          	sw	s1,36(sp)
80002d20:	03212023          	sw	s2,32(sp)
80002d24:	02112623          	sw	ra,44(sp)
80002d28:	01312e23          	sw	s3,28(sp)
80002d2c:	01412c23          	sw	s4,24(sp)
80002d30:	00058413          	mv	s0,a1
80002d34:	00050493          	mv	s1,a0
80002d38:	00060913          	mv	s2,a2
    char digits[12]; // Enough for -2147483648 + null terminator
    int index = 0;
    int isNegative = 0;

    // Handle zero explicitly
    if (num == 0) {
80002d3c:	30058463          	beqz	a1,80003044 <_Z8printDeciic+0x330>
        digits[index] = '\0';
        return printString(location, digits, color);
    }

    // Handle negative numbers
    if (num < 0) {
80002d40:	2a05c463          	bltz	a1,80002fe8 <_Z8printDeciic+0x2d4>
    }

    // Convert number to string in reverse
    unsigned int absNum = (unsigned int)num;
    while (absNum > 0) {
        digits[index++] = '0' + (absNum % 10);
80002d44:	00a00593          	li	a1,10
80002d48:	00040513          	mv	a0,s0
80002d4c:	4d1060ef          	jal	ra,80009a1c <__umodsi3>
80002d50:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002d54:	00a00593          	li	a1,10
80002d58:	00040513          	mv	a0,s0
        digits[index++] = '0' + (absNum % 10);
80002d5c:	00f10223          	sb	a5,4(sp)
        absNum /= 10;
80002d60:	475060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002d64:	00900793          	li	a5,9
80002d68:	5287dc63          	bge	a5,s0,800032a0 <_Z8printDeciic+0x58c>
        digits[index++] = '0' + (absNum % 10);
80002d6c:	00a00593          	li	a1,10
80002d70:	4ad060ef          	jal	ra,80009a1c <__umodsi3>
80002d74:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002d78:	06400593          	li	a1,100
80002d7c:	00040513          	mv	a0,s0
        digits[index++] = '0' + (absNum % 10);
80002d80:	00f102a3          	sb	a5,5(sp)
        absNum /= 10;
80002d84:	451060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002d88:	06300793          	li	a5,99
        absNum /= 10;
80002d8c:	00050993          	mv	s3,a0
    while (absNum > 0) {
80002d90:	5087fc63          	bgeu	a5,s0,800032a8 <_Z8printDeciic+0x594>
        isNegative = 0;
80002d94:	00000a13          	li	s4,0
        digits[index++] = '0' + (absNum % 10);
80002d98:	00a00593          	li	a1,10
80002d9c:	00098513          	mv	a0,s3
80002da0:	47d060ef          	jal	ra,80009a1c <__umodsi3>
80002da4:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002da8:	00a00593          	li	a1,10
80002dac:	00098513          	mv	a0,s3
        digits[index++] = '0' + (absNum % 10);
80002db0:	00f10323          	sb	a5,6(sp)
        absNum /= 10;
80002db4:	421060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002db8:	00900793          	li	a5,9
80002dbc:	4b37f063          	bgeu	a5,s3,8000325c <_Z8printDeciic+0x548>
        digits[index++] = '0' + (absNum % 10);
80002dc0:	00a00593          	li	a1,10
80002dc4:	459060ef          	jal	ra,80009a1c <__umodsi3>
80002dc8:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002dcc:	06400593          	li	a1,100
80002dd0:	00098513          	mv	a0,s3
        digits[index++] = '0' + (absNum % 10);
80002dd4:	00f103a3          	sb	a5,7(sp)
        absNum /= 10;
80002dd8:	3fd060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002ddc:	06300793          	li	a5,99
80002de0:	4b37f463          	bgeu	a5,s3,80003288 <_Z8printDeciic+0x574>
        digits[index++] = '0' + (absNum % 10);
80002de4:	00a00593          	li	a1,10
80002de8:	435060ef          	jal	ra,80009a1c <__umodsi3>
80002dec:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002df0:	3e800593          	li	a1,1000
80002df4:	00098513          	mv	a0,s3
        digits[index++] = '0' + (absNum % 10);
80002df8:	00f10423          	sb	a5,8(sp)
        absNum /= 10;
80002dfc:	3d9060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002e00:	3e700793          	li	a5,999
80002e04:	4937f863          	bgeu	a5,s3,80003294 <_Z8printDeciic+0x580>
        digits[index++] = '0' + (absNum % 10);
80002e08:	00a00593          	li	a1,10
80002e0c:	411060ef          	jal	ra,80009a1c <__umodsi3>
        absNum /= 10;
80002e10:	00002437          	lui	s0,0x2
        digits[index++] = '0' + (absNum % 10);
80002e14:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002e18:	71040593          	addi	a1,s0,1808 # 2710 <_stack_size-0x58f0>
80002e1c:	00098513          	mv	a0,s3
    while (absNum > 0) {
80002e20:	70f40413          	addi	s0,s0,1807
        digits[index++] = '0' + (absNum % 10);
80002e24:	00f104a3          	sb	a5,9(sp)
        absNum /= 10;
80002e28:	3ad060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002e2c:	49347463          	bgeu	s0,s3,800032b4 <_Z8printDeciic+0x5a0>
        digits[index++] = '0' + (absNum % 10);
80002e30:	00a00593          	li	a1,10
80002e34:	3e9060ef          	jal	ra,80009a1c <__umodsi3>
        absNum /= 10;
80002e38:	00018437          	lui	s0,0x18
        digits[index++] = '0' + (absNum % 10);
80002e3c:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002e40:	6a040593          	addi	a1,s0,1696 # 186a0 <_stack_size+0x106a0>
80002e44:	00098513          	mv	a0,s3
    while (absNum > 0) {
80002e48:	69f40413          	addi	s0,s0,1695
        digits[index++] = '0' + (absNum % 10);
80002e4c:	00f10523          	sb	a5,10(sp)
        absNum /= 10;
80002e50:	385060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002e54:	47347663          	bgeu	s0,s3,800032c0 <_Z8printDeciic+0x5ac>
        digits[index++] = '0' + (absNum % 10);
80002e58:	00a00593          	li	a1,10
80002e5c:	3c1060ef          	jal	ra,80009a1c <__umodsi3>
        absNum /= 10;
80002e60:	000f4437          	lui	s0,0xf4
        digits[index++] = '0' + (absNum % 10);
80002e64:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002e68:	24040593          	addi	a1,s0,576 # f4240 <_stack_size+0xec240>
80002e6c:	00098513          	mv	a0,s3
    while (absNum > 0) {
80002e70:	23f40413          	addi	s0,s0,575
        digits[index++] = '0' + (absNum % 10);
80002e74:	00f105a3          	sb	a5,11(sp)
        absNum /= 10;
80002e78:	35d060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002e7c:	45347e63          	bgeu	s0,s3,800032d8 <_Z8printDeciic+0x5c4>
        digits[index++] = '0' + (absNum % 10);
80002e80:	00a00593          	li	a1,10
80002e84:	399060ef          	jal	ra,80009a1c <__umodsi3>
        absNum /= 10;
80002e88:	00989437          	lui	s0,0x989
        digits[index++] = '0' + (absNum % 10);
80002e8c:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002e90:	68040593          	addi	a1,s0,1664 # 989680 <_stack_size+0x981680>
80002e94:	00098513          	mv	a0,s3
    while (absNum > 0) {
80002e98:	67f40413          	addi	s0,s0,1663
        digits[index++] = '0' + (absNum % 10);
80002e9c:	00f10623          	sb	a5,12(sp)
        absNum /= 10;
80002ea0:	335060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80002ea4:	45347663          	bgeu	s0,s3,800032f0 <_Z8printDeciic+0x5dc>
        digits[index++] = '0' + (absNum % 10);
80002ea8:	03050513          	addi	a0,a0,48
80002eac:	00a106a3          	sb	a0,13(sp)
    }

    if (isNegative) {
80002eb0:	2a0a1663          	bnez	s4,8000315c <_Z8printDeciic+0x448>

    digits[index] = '\0';

    // Reverse the string
    for (int i = 0; i < index / 2; i++) {
        char tmp = digits[i];
80002eb4:	00414783          	lbu	a5,4(sp)
    digits[index] = '\0';
80002eb8:	00010723          	sb	zero,14(sp)
        digits[i] = digits[index - 1 - i];
80002ebc:	00a10223          	sb	a0,4(sp)
        digits[index - 1 - i] = tmp;
80002ec0:	00f106a3          	sb	a5,13(sp)
        digits[index++] = '0' + (absNum % 10);
80002ec4:	00900513          	li	a0,9
        digits[index - 1 - i] = tmp;
80002ec8:	00500713          	li	a4,5
        digits[i] = digits[index - 1 - i];
80002ecc:	01010693          	addi	a3,sp,16
80002ed0:	fff50793          	addi	a5,a0,-1
80002ed4:	00f687b3          	add	a5,a3,a5
80002ed8:	ff47c583          	lbu	a1,-12(a5)
        char tmp = digits[i];
80002edc:	00514603          	lbu	a2,5(sp)
    for (int i = 0; i < index / 2; i++) {
80002ee0:	00200693          	li	a3,2
        digits[i] = digits[index - 1 - i];
80002ee4:	00b102a3          	sb	a1,5(sp)
        digits[index - 1 - i] = tmp;
80002ee8:	fec78a23          	sb	a2,-12(a5)
    for (int i = 0; i < index / 2; i++) {
80002eec:	06d70463          	beq	a4,a3,80002f54 <_Z8printDeciic+0x240>
        digits[i] = digits[index - 1 - i];
80002ef0:	01010693          	addi	a3,sp,16
80002ef4:	ffe50793          	addi	a5,a0,-2
80002ef8:	00f687b3          	add	a5,a3,a5
80002efc:	ff47c583          	lbu	a1,-12(a5)
        char tmp = digits[i];
80002f00:	00614603          	lbu	a2,6(sp)
    for (int i = 0; i < index / 2; i++) {
80002f04:	00300693          	li	a3,3
        digits[i] = digits[index - 1 - i];
80002f08:	00b10323          	sb	a1,6(sp)
        digits[index - 1 - i] = tmp;
80002f0c:	fec78a23          	sb	a2,-12(a5)
    for (int i = 0; i < index / 2; i++) {
80002f10:	04d70263          	beq	a4,a3,80002f54 <_Z8printDeciic+0x240>
        digits[i] = digits[index - 1 - i];
80002f14:	01010693          	addi	a3,sp,16
80002f18:	ffd50793          	addi	a5,a0,-3
80002f1c:	00f687b3          	add	a5,a3,a5
80002f20:	ff47c583          	lbu	a1,-12(a5)
        char tmp = digits[i];
80002f24:	00714603          	lbu	a2,7(sp)
    for (int i = 0; i < index / 2; i++) {
80002f28:	00400693          	li	a3,4
        digits[i] = digits[index - 1 - i];
80002f2c:	00b103a3          	sb	a1,7(sp)
        digits[index - 1 - i] = tmp;
80002f30:	fec78a23          	sb	a2,-12(a5)
    for (int i = 0; i < index / 2; i++) {
80002f34:	02d70063          	beq	a4,a3,80002f54 <_Z8printDeciic+0x240>
        digits[i] = digits[index - 1 - i];
80002f38:	01010713          	addi	a4,sp,16
80002f3c:	ffc50793          	addi	a5,a0,-4
80002f40:	00f707b3          	add	a5,a4,a5
80002f44:	ff47c683          	lbu	a3,-12(a5)
        char tmp = digits[i];
80002f48:	00814703          	lbu	a4,8(sp)
        digits[i] = digits[index - 1 - i];
80002f4c:	00d10423          	sb	a3,8(sp)
        digits[index - 1 - i] = tmp;
80002f50:	fee78a23          	sb	a4,-12(a5)
    if(color==0){
80002f54:	24091863          	bnez	s2,800031a4 <_Z8printDeciic+0x490>
80002f58:	00410593          	addi	a1,sp,4
    while(string[i] != '\0'){
80002f5c:	0005c703          	lbu	a4,0(a1)
    if(color==0){
80002f60:	00000793          	li	a5,0
        color=1;
80002f64:	00100693          	li	a3,1
        if(string[i]=='\n'){
80002f68:	00a00893          	li	a7,10
    if(location>SCREEN_SIZE){
80002f6c:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80002f70:	88000337          	lui	t1,0x88000
            if(color>15){
80002f74:	00f00e13          	li	t3,15
        if(!putch(location + i, string[i],color)){
80002f78:	00978633          	add	a2,a5,s1
    while(string[i] != '\0'){
80002f7c:	04070463          	beqz	a4,80002fc4 <_Z8printDeciic+0x2b0>
        if(string[i]=='\n'){
80002f80:	2d170863          	beq	a4,a7,80003250 <_Z8printDeciic+0x53c>
    unsigned short buffer = (color << 8) | c;
80002f84:	00869813          	slli	a6,a3,0x8
    screen[location] = buffer;
80002f88:	00161513          	slli	a0,a2,0x1
            color++;
80002f8c:	00168693          	addi	a3,a3,1
    unsigned short buffer = (color << 8) | c;
80002f90:	00e86833          	or	a6,a6,a4
    screen[location] = buffer;
80002f94:	00a30533          	add	a0,t1,a0
            color++;
80002f98:	0ff6f693          	andi	a3,a3,255
    if(location<0){
80002f9c:	26064e63          	bltz	a2,80003218 <_Z8printDeciic+0x504>
    if(location>SCREEN_SIZE){
80002fa0:	16cecc63          	blt	t4,a2,80003118 <_Z8printDeciic+0x404>
    screen[location] = buffer;
80002fa4:	01051023          	sh	a6,0(a0)
            if(color>15){
80002fa8:	00de7463          	bgeu	t3,a3,80002fb0 <_Z8printDeciic+0x29c>
                color=1;
80002fac:	00100693          	li	a3,1
80002fb0:	00158593          	addi	a1,a1,1
    while(string[i] != '\0'){
80002fb4:	0005c703          	lbu	a4,0(a1)
80002fb8:	00178793          	addi	a5,a5,1
        if(!putch(location + i, string[i],color)){
80002fbc:	00978633          	add	a2,a5,s1
    while(string[i] != '\0'){
80002fc0:	fc0710e3          	bnez	a4,80002f80 <_Z8printDeciic+0x26c>
    }

    return printString(location, digits, color);
}
80002fc4:	02c12083          	lw	ra,44(sp)
80002fc8:	02812403          	lw	s0,40(sp)
80002fcc:	02412483          	lw	s1,36(sp)
80002fd0:	02012903          	lw	s2,32(sp)
80002fd4:	01c12983          	lw	s3,28(sp)
80002fd8:	01812a03          	lw	s4,24(sp)
80002fdc:	0ff7f513          	andi	a0,a5,255
80002fe0:	03010113          	addi	sp,sp,48
80002fe4:	00008067          	ret
        unsigned int absNum = (unsigned int)(-((long)num));
80002fe8:	40b00a33          	neg	s4,a1
        digits[index++] = '0' + (absNum % 10);
80002fec:	000a0513          	mv	a0,s4
80002ff0:	00a00593          	li	a1,10
80002ff4:	229060ef          	jal	ra,80009a1c <__umodsi3>
80002ff8:	03050793          	addi	a5,a0,48
        absNum /= 10;
80002ffc:	00a00593          	li	a1,10
80003000:	000a0513          	mv	a0,s4
        digits[index++] = '0' + (absNum % 10);
80003004:	00f10223          	sb	a5,4(sp)
        absNum /= 10;
80003008:	1cd060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
8000300c:	ff700793          	li	a5,-9
80003010:	2af45e63          	bge	s0,a5,800032cc <_Z8printDeciic+0x5b8>
        digits[index++] = '0' + (absNum % 10);
80003014:	00a00593          	li	a1,10
80003018:	205060ef          	jal	ra,80009a1c <__umodsi3>
8000301c:	03050793          	addi	a5,a0,48
        absNum /= 10;
80003020:	06400593          	li	a1,100
80003024:	000a0513          	mv	a0,s4
        digits[index++] = '0' + (absNum % 10);
80003028:	00f102a3          	sb	a5,5(sp)
        absNum /= 10;
8000302c:	1a9060ef          	jal	ra,800099d4 <__udivsi3>
    while (absNum > 0) {
80003030:	06300793          	li	a5,99
        absNum /= 10;
80003034:	00050993          	mv	s3,a0
    while (absNum > 0) {
80003038:	2b47f663          	bgeu	a5,s4,800032e4 <_Z8printDeciic+0x5d0>
        isNegative = 1;
8000303c:	00100a13          	li	s4,1
80003040:	d59ff06f          	j	80002d98 <_Z8printDeciic+0x84>
        digits[index++] = '0';
80003044:	03000793          	li	a5,48
80003048:	00f11223          	sh	a5,4(sp)
    char rainbow=0;
8000304c:	00000593          	li	a1,0
    if(color==0){
80003050:	10060063          	beqz	a2,80003150 <_Z8printDeciic+0x43c>
        if(!putch(location + i, string[i],color)){
80003054:	008487b3          	add	a5,s1,s0
    while(string[i] != '\0'){
80003058:	03000693          	li	a3,48
    if(location>SCREEN_SIZE){
8000305c:	4c000893          	li	a7,1216
    screen[location] = buffer;
80003060:	88000837          	lui	a6,0x88000
        if(rainbow==1){
80003064:	00100513          	li	a0,1
            if(color>15){
80003068:	00f00313          	li	t1,15
        if(string[i]=='\n'){
8000306c:	00a00613          	li	a2,10
    if(location<0){
80003070:	0407c663          	bltz	a5,800030bc <_Z8printDeciic+0x3a8>
    if(location>SCREEN_SIZE){
80003074:	0af8c263          	blt	a7,a5,80003118 <_Z8printDeciic+0x404>
    unsigned short buffer = (color << 8) | c;
80003078:	00891713          	slli	a4,s2,0x8
    screen[location] = buffer;
8000307c:	00179793          	slli	a5,a5,0x1
80003080:	00f807b3          	add	a5,a6,a5
    unsigned short buffer = (color << 8) | c;
80003084:	00d76733          	or	a4,a4,a3
    screen[location] = buffer;
80003088:	00e79023          	sh	a4,0(a5)
        i++;
8000308c:	00140793          	addi	a5,s0,1
        if(rainbow==1){
80003090:	0aa58663          	beq	a1,a0,8000313c <_Z8printDeciic+0x428>
    while(string[i] != '\0'){
80003094:	01010713          	addi	a4,sp,16
80003098:	00f70733          	add	a4,a4,a5
8000309c:	ff474683          	lbu	a3,-12(a4)
800030a0:	f20682e3          	beqz	a3,80002fc4 <_Z8printDeciic+0x2b0>
        if(string[i]=='\n'){
800030a4:	00410713          	addi	a4,sp,4
800030a8:	00870433          	add	s0,a4,s0
800030ac:	04c68463          	beq	a3,a2,800030f4 <_Z8printDeciic+0x3e0>
    while(string[i] != '\0'){
800030b0:	00078413          	mv	s0,a5
        if(!putch(location + i, string[i],color)){
800030b4:	008487b3          	add	a5,s1,s0
    if(location<0){
800030b8:	fa07dee3          	bgez	a5,80003074 <_Z8printDeciic+0x360>
	return *( (volatile uint8_t *) addr );
800030bc:	10000737          	lui	a4,0x10000
800030c0:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800030c4:	0207f793          	andi	a5,a5,32
800030c8:	fe078ce3          	beqz	a5,800030c0 <_Z8printDeciic+0x3ac>
	*( (uint8_t *) addr ) = b;
800030cc:	00d70023          	sb	a3,0(a4)
}
800030d0:	02c12083          	lw	ra,44(sp)
800030d4:	02812403          	lw	s0,40(sp)
800030d8:	02412483          	lw	s1,36(sp)
800030dc:	02012903          	lw	s2,32(sp)
800030e0:	01c12983          	lw	s3,28(sp)
800030e4:	01812a03          	lw	s4,24(sp)
	*( (uint8_t *) addr ) = b;
800030e8:	00000513          	li	a0,0
}
800030ec:	03010113          	addi	sp,sp,48
800030f0:	00008067          	ret
    while(string[i] != '\0'){
800030f4:	00244683          	lbu	a3,2(s0)
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
800030f8:	fc04f493          	andi	s1,s1,-64
800030fc:	04048493          	addi	s1,s1,64 # 80000040 <_stack_top+0xffc00040>
            i++;
80003100:	00178793          	addi	a5,a5,1
    while(string[i] != '\0'){
80003104:	ec0680e3          	beqz	a3,80002fc4 <_Z8printDeciic+0x2b0>
80003108:	00140413          	addi	s0,s0,1
        if(string[i]=='\n'){
8000310c:	fec684e3          	beq	a3,a2,800030f4 <_Z8printDeciic+0x3e0>
    while(string[i] != '\0'){
80003110:	00078413          	mv	s0,a5
80003114:	fa1ff06f          	j	800030b4 <_Z8printDeciic+0x3a0>
}
80003118:	02c12083          	lw	ra,44(sp)
8000311c:	02812403          	lw	s0,40(sp)
80003120:	02412483          	lw	s1,36(sp)
80003124:	02012903          	lw	s2,32(sp)
80003128:	01c12983          	lw	s3,28(sp)
8000312c:	01812a03          	lw	s4,24(sp)
    if(location>SCREEN_SIZE){
80003130:	00000513          	li	a0,0
}
80003134:	03010113          	addi	sp,sp,48
80003138:	00008067          	ret
            color++;
8000313c:	00190913          	addi	s2,s2,1
80003140:	0ff97913          	andi	s2,s2,255
            if(color>15){
80003144:	f52378e3          	bgeu	t1,s2,80003094 <_Z8printDeciic+0x380>
                color=1;
80003148:	00100913          	li	s2,1
8000314c:	f49ff06f          	j	80003094 <_Z8printDeciic+0x380>
        rainbow=1;
80003150:	00100593          	li	a1,1
        color=1;
80003154:	00100913          	li	s2,1
80003158:	efdff06f          	j	80003054 <_Z8printDeciic+0x340>
        digits[index++] = '0' + (absNum % 10);
8000315c:	00900793          	li	a5,9
80003160:	00a00513          	li	a0,10
        digits[index++] = '-';
80003164:	00278713          	addi	a4,a5,2
80003168:	01010793          	addi	a5,sp,16
8000316c:	02d00693          	li	a3,45
80003170:	00a787b3          	add	a5,a5,a0
80003174:	fed78a23          	sb	a3,-12(a5)
    digits[index] = '\0';
80003178:	01010693          	addi	a3,sp,16
8000317c:	00e686b3          	add	a3,a3,a4
80003180:	fe068a23          	sb	zero,-12(a3)
    for (int i = 0; i < index / 2; i++) {
80003184:	40175713          	srai	a4,a4,0x1
        digits[i] = digits[index - 1 - i];
80003188:	ff47c583          	lbu	a1,-12(a5)
        char tmp = digits[i];
8000318c:	00414603          	lbu	a2,4(sp)
    for (int i = 0; i < index / 2; i++) {
80003190:	00100693          	li	a3,1
        digits[i] = digits[index - 1 - i];
80003194:	00b10223          	sb	a1,4(sp)
        digits[index - 1 - i] = tmp;
80003198:	fec78a23          	sb	a2,-12(a5)
    for (int i = 0; i < index / 2; i++) {
8000319c:	d2d718e3          	bne	a4,a3,80002ecc <_Z8printDeciic+0x1b8>
    if(color==0){
800031a0:	da090ce3          	beqz	s2,80002f58 <_Z8printDeciic+0x244>
800031a4:	00410513          	addi	a0,sp,4
    while(string[i] != '\0'){
800031a8:	00054703          	lbu	a4,0(a0)
    unsigned short buffer = (color << 8) | c;
800031ac:	00891913          	slli	s2,s2,0x8
800031b0:	01091913          	slli	s2,s2,0x10
800031b4:	00000793          	li	a5,0
800031b8:	41095913          	srai	s2,s2,0x10
        if(string[i]=='\n'){
800031bc:	00a00813          	li	a6,10
    if(location>SCREEN_SIZE){
800031c0:	4c000313          	li	t1,1216
    screen[location] = buffer;
800031c4:	880008b7          	lui	a7,0x88000
        if(!putch(location + i, string[i],color)){
800031c8:	00978633          	add	a2,a5,s1
    while(string[i] != '\0'){
800031cc:	de070ce3          	beqz	a4,80002fc4 <_Z8printDeciic+0x2b0>
        if(string[i]=='\n'){
800031d0:	03070e63          	beq	a4,a6,8000320c <_Z8printDeciic+0x4f8>
    unsigned short buffer = (color << 8) | c;
800031d4:	00e966b3          	or	a3,s2,a4
    screen[location] = buffer;
800031d8:	00161593          	slli	a1,a2,0x1
    unsigned short buffer = (color << 8) | c;
800031dc:	01069693          	slli	a3,a3,0x10
800031e0:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
800031e4:	00b885b3          	add	a1,a7,a1
    if(location<0){
800031e8:	02064863          	bltz	a2,80003218 <_Z8printDeciic+0x504>
    if(location>SCREEN_SIZE){
800031ec:	f2c346e3          	blt	t1,a2,80003118 <_Z8printDeciic+0x404>
    screen[location] = buffer;
800031f0:	00d59023          	sh	a3,0(a1)
        if(rainbow==1){
800031f4:	00150513          	addi	a0,a0,1
    while(string[i] != '\0'){
800031f8:	00054703          	lbu	a4,0(a0)
800031fc:	00178793          	addi	a5,a5,1
        if(!putch(location + i, string[i],color)){
80003200:	00978633          	add	a2,a5,s1
    while(string[i] != '\0'){
80003204:	dc0700e3          	beqz	a4,80002fc4 <_Z8printDeciic+0x2b0>
        if(string[i]=='\n'){
80003208:	fd0716e3          	bne	a4,a6,800031d4 <_Z8printDeciic+0x4c0>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
8000320c:	fc04f493          	andi	s1,s1,-64
80003210:	04048493          	addi	s1,s1,64
            continue;
80003214:	fe1ff06f          	j	800031f4 <_Z8printDeciic+0x4e0>
	return *( (volatile uint8_t *) addr );
80003218:	100006b7          	lui	a3,0x10000
8000321c:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003220:	0207f793          	andi	a5,a5,32
80003224:	fe078ce3          	beqz	a5,8000321c <_Z8printDeciic+0x508>
	*( (uint8_t *) addr ) = b;
80003228:	00e68023          	sb	a4,0(a3)
}
8000322c:	02c12083          	lw	ra,44(sp)
80003230:	02812403          	lw	s0,40(sp)
80003234:	02412483          	lw	s1,36(sp)
80003238:	02012903          	lw	s2,32(sp)
8000323c:	01c12983          	lw	s3,28(sp)
80003240:	01812a03          	lw	s4,24(sp)
	*( (uint8_t *) addr ) = b;
80003244:	00000513          	li	a0,0
}
80003248:	03010113          	addi	sp,sp,48
8000324c:	00008067          	ret
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003250:	fc04f493          	andi	s1,s1,-64
80003254:	04048493          	addi	s1,s1,64
            continue;
80003258:	d59ff06f          	j	80002fb0 <_Z8printDeciic+0x29c>
        digits[index++] = '0' + (absNum % 10);
8000325c:	00200793          	li	a5,2
80003260:	00300513          	li	a0,3
    if (isNegative) {
80003264:	f00a10e3          	bnez	s4,80003164 <_Z8printDeciic+0x450>
    digits[index] = '\0';
80003268:	01010713          	addi	a4,sp,16
8000326c:	00a706b3          	add	a3,a4,a0
    for (int i = 0; i < index / 2; i++) {
80003270:	40155713          	srai	a4,a0,0x1
80003274:	00078513          	mv	a0,a5
80003278:	01010793          	addi	a5,sp,16
    digits[index] = '\0';
8000327c:	fe068a23          	sb	zero,-12(a3)
    for (int i = 0; i < index / 2; i++) {
80003280:	00a787b3          	add	a5,a5,a0
80003284:	f05ff06f          	j	80003188 <_Z8printDeciic+0x474>
        digits[index++] = '0' + (absNum % 10);
80003288:	00300793          	li	a5,3
8000328c:	00400513          	li	a0,4
80003290:	fd5ff06f          	j	80003264 <_Z8printDeciic+0x550>
80003294:	00400793          	li	a5,4
80003298:	00500513          	li	a0,5
8000329c:	fc9ff06f          	j	80003264 <_Z8printDeciic+0x550>
    digits[index] = '\0';
800032a0:	000102a3          	sb	zero,5(sp)
    for (int i = 0; i < index / 2; i++) {
800032a4:	cb1ff06f          	j	80002f54 <_Z8printDeciic+0x240>
        digits[index++] = '0' + (absNum % 10);
800032a8:	00100793          	li	a5,1
800032ac:	00200513          	li	a0,2
800032b0:	fb9ff06f          	j	80003268 <_Z8printDeciic+0x554>
800032b4:	00500793          	li	a5,5
800032b8:	00600513          	li	a0,6
800032bc:	fa9ff06f          	j	80003264 <_Z8printDeciic+0x550>
800032c0:	00600793          	li	a5,6
800032c4:	00700513          	li	a0,7
800032c8:	f9dff06f          	j	80003264 <_Z8printDeciic+0x550>
    int index = 0;
800032cc:	00000793          	li	a5,0
        digits[index++] = '0' + (absNum % 10);
800032d0:	00100513          	li	a0,1
800032d4:	e91ff06f          	j	80003164 <_Z8printDeciic+0x450>
800032d8:	00700793          	li	a5,7
800032dc:	00800513          	li	a0,8
800032e0:	f85ff06f          	j	80003264 <_Z8printDeciic+0x550>
800032e4:	00100793          	li	a5,1
800032e8:	00200513          	li	a0,2
800032ec:	e79ff06f          	j	80003164 <_Z8printDeciic+0x450>
800032f0:	00800793          	li	a5,8
800032f4:	00900513          	li	a0,9
800032f8:	f6dff06f          	j	80003264 <_Z8printDeciic+0x550>

800032fc <_Z6printfPKcz>:
// It returns the location of the next character to be printed

// General purpose variable to track where to print on the screen
short screenPos;
int printf(const char* str, ...) 
{ 
800032fc:	f9010113          	addi	sp,sp,-112
80003300:	04112623          	sw	ra,76(sp)
80003304:	04812423          	sw	s0,72(sp)
80003308:	04912223          	sw	s1,68(sp)
8000330c:	05212023          	sw	s2,64(sp)
80003310:	03312e23          	sw	s3,60(sp)
80003314:	03412c23          	sw	s4,56(sp)
80003318:	03512a23          	sw	s5,52(sp)
    char color=15;
    // initializing list pointer 
    va_list ptr; 
    va_start(ptr, str);  
    int i=0;
    for (i = 0; str[i] != '\0'; i++) {
8000331c:	00054303          	lbu	t1,0(a0)
{ 
80003320:	06f12223          	sw	a5,100(sp)
    va_start(ptr, str);  
80003324:	05410793          	addi	a5,sp,84
{ 
80003328:	04b12a23          	sw	a1,84(sp)
8000332c:	04c12c23          	sw	a2,88(sp)
80003330:	04d12e23          	sw	a3,92(sp)
80003334:	06e12023          	sw	a4,96(sp)
80003338:	07012423          	sw	a6,104(sp)
8000333c:	07112623          	sw	a7,108(sp)
    va_start(ptr, str);  
80003340:	00f12623          	sw	a5,12(sp)
    for (i = 0; str[i] != '\0'; i++) {
80003344:	48030e63          	beqz	t1,800037e0 <_Z6printfPKcz+0x4e4>
80003348:	00007997          	auipc	s3,0x7
8000334c:	60898993          	addi	s3,s3,1544 # 8000a950 <screenPos>
80003350:	00050493          	mv	s1,a0
80003354:	00099503          	lh	a0,0(s3)
    unsigned short buffer = (color << 8) | c;
80003358:	00001937          	lui	s2,0x1
    screen[location] = buffer;
8000335c:	00001ab7          	lui	s5,0x1
    for (i = 0; str[i] != '\0'; i++) {
80003360:	00000413          	li	s0,0
80003364:	00000793          	li	a5,0
    unsigned short buffer = (color << 8) | c;
80003368:	f0090913          	addi	s2,s2,-256 # f00 <_stack_size-0x7100>
    screen[location] = buffer;
8000336c:	f25a8a93          	addi	s5,s5,-219 # f25 <_stack_size-0x70db>
    char hexChars[] = "0123456789ABCDEF";
80003370:	00006a17          	auipc	s4,0x6
80003374:	7dca0a13          	addi	s4,s4,2012 # 80009b4c <__clzsi2+0xcc>
        // Gandles newline 
        if(str[i]=='\n'){
80003378:	00a00713          	li	a4,10
8000337c:	00140613          	addi	a2,s0,1
80003380:	0ce30a63          	beq	t1,a4,80003454 <_Z6printfPKcz+0x158>
            screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
            continue;    
        }
        // Handles variables
        // needs to be improved to handle attributes like %6d
        if(str[i]=='%'){
80003384:	02500693          	li	a3,37
80003388:	08d31e63          	bne	t1,a3,80003424 <_Z6printfPKcz+0x128>
            if(str[i+1]=='x'){
8000338c:	00f487b3          	add	a5,s1,a5
80003390:	0017c783          	lbu	a5,1(a5)
80003394:	07800693          	li	a3,120
80003398:	14d78a63          	beq	a5,a3,800034ec <_Z6printfPKcz+0x1f0>
                i++;
                int value=va_arg(ptr, int);
                screenPos+=printHex(screenPos,value,color);
            }
            else if(str[i+1]=='d'){
8000339c:	06400693          	li	a3,100
800033a0:	32d78063          	beq	a5,a3,800036c0 <_Z6printfPKcz+0x3c4>
                i++;
                unsigned int value=va_arg(ptr, unsigned int);
                screenPos+=printDec(screenPos,value,color);
            }
            else if(str[i+1]=='c'){
800033a4:	06300693          	li	a3,99
800033a8:	0ed78463          	beq	a5,a3,80003490 <_Z6printfPKcz+0x194>
                    continue;    
                }
                putch(screenPos,value,color);
                screenPos++;
            }
            else if (str[i+1]=='s')
800033ac:	07300713          	li	a4,115
800033b0:	00050813          	mv	a6,a0
800033b4:	36e78063          	beq	a5,a4,80003714 <_Z6printfPKcz+0x418>
    if(location<0){
800033b8:	3e054663          	bltz	a0,800037a4 <_Z6printfPKcz+0x4a8>
    if(location>SCREEN_SIZE){
800033bc:	4c000793          	li	a5,1216
800033c0:	00a7cc63          	blt	a5,a0,800033d8 <_Z6printfPKcz+0xdc>
    screen[location] = buffer;
800033c4:	00151513          	slli	a0,a0,0x1
800033c8:	880007b7          	lui	a5,0x88000
800033cc:	00a78533          	add	a0,a5,a0
800033d0:	01551023          	sh	s5,0(a0)
    return 1;
800033d4:	00099503          	lh	a0,0(s3)
                screenPos++;
            }
        }
        else{
            putch(screenPos,str[i],color);
            screenPos++;
800033d8:	00150513          	addi	a0,a0,1
800033dc:	01051513          	slli	a0,a0,0x10
800033e0:	41055513          	srai	a0,a0,0x10
800033e4:	00007797          	auipc	a5,0x7
800033e8:	56a79623          	sh	a0,1388(a5) # 8000a950 <screenPos>
800033ec:	00060413          	mv	s0,a2
    for (i = 0; str[i] != '\0'; i++) {
800033f0:	008487b3          	add	a5,s1,s0
800033f4:	0007c303          	lbu	t1,0(a5)
800033f8:	00040793          	mv	a5,s0
800033fc:	f6031ee3          	bnez	t1,80003378 <_Z6printfPKcz+0x7c>
    } 
  
    // ending traversal 
    va_end(ptr); 
    return screenPos; 
}
80003400:	04c12083          	lw	ra,76(sp)
80003404:	04812403          	lw	s0,72(sp)
80003408:	04412483          	lw	s1,68(sp)
8000340c:	04012903          	lw	s2,64(sp)
80003410:	03c12983          	lw	s3,60(sp)
80003414:	03812a03          	lw	s4,56(sp)
80003418:	03412a83          	lw	s5,52(sp)
8000341c:	07010113          	addi	sp,sp,112
80003420:	00008067          	ret
    if(location<0){
80003424:	04054863          	bltz	a0,80003474 <_Z6printfPKcz+0x178>
    if(location>SCREEN_SIZE){
80003428:	4c000793          	li	a5,1216
8000342c:	faa7c6e3          	blt	a5,a0,800033d8 <_Z6printfPKcz+0xdc>
    unsigned short buffer = (color << 8) | c;
80003430:	01236333          	or	t1,t1,s2
    screen[location] = buffer;
80003434:	00151513          	slli	a0,a0,0x1
    unsigned short buffer = (color << 8) | c;
80003438:	01031313          	slli	t1,t1,0x10
    screen[location] = buffer;
8000343c:	880007b7          	lui	a5,0x88000
80003440:	00a78533          	add	a0,a5,a0
    unsigned short buffer = (color << 8) | c;
80003444:	01035313          	srli	t1,t1,0x10
    screen[location] = buffer;
80003448:	00651023          	sh	t1,0(a0)
    return 1;
8000344c:	00099503          	lh	a0,0(s3)
80003450:	f89ff06f          	j	800033d8 <_Z6printfPKcz+0xdc>
            screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
80003454:	fc057513          	andi	a0,a0,-64
80003458:	04050513          	addi	a0,a0,64
8000345c:	01051513          	slli	a0,a0,0x10
80003460:	41055513          	srai	a0,a0,0x10
80003464:	00007797          	auipc	a5,0x7
80003468:	4ea79623          	sh	a0,1260(a5) # 8000a950 <screenPos>
            continue;    
8000346c:	00060413          	mv	s0,a2
80003470:	f81ff06f          	j	800033f0 <_Z6printfPKcz+0xf4>
	return *( (volatile uint8_t *) addr );
80003474:	10000737          	lui	a4,0x10000
80003478:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
8000347c:	0207f793          	andi	a5,a5,32
80003480:	fe078ce3          	beqz	a5,80003478 <_Z6printfPKcz+0x17c>
	*( (uint8_t *) addr ) = b;
80003484:	00670023          	sb	t1,0(a4)
        return 0;
80003488:	00099503          	lh	a0,0(s3)
8000348c:	f4dff06f          	j	800033d8 <_Z6printfPKcz+0xdc>
                char value=va_arg(ptr, int);
80003490:	00c12783          	lw	a5,12(sp)
80003494:	00240413          	addi	s0,s0,2
80003498:	0007c683          	lbu	a3,0(a5)
8000349c:	00478793          	addi	a5,a5,4
800034a0:	00f12623          	sw	a5,12(sp)
                if(value=='\n'){
800034a4:	24e68a63          	beq	a3,a4,800036f8 <_Z6printfPKcz+0x3fc>
    if(location<0){
800034a8:	30054e63          	bltz	a0,800037c4 <_Z6printfPKcz+0x4c8>
    if(location>SCREEN_SIZE){
800034ac:	4c000793          	li	a5,1216
800034b0:	02a7c263          	blt	a5,a0,800034d4 <_Z6printfPKcz+0x1d8>
    unsigned short buffer = (color << 8) | c;
800034b4:	0126e6b3          	or	a3,a3,s2
    screen[location] = buffer;
800034b8:	00151513          	slli	a0,a0,0x1
    unsigned short buffer = (color << 8) | c;
800034bc:	01069693          	slli	a3,a3,0x10
    screen[location] = buffer;
800034c0:	880007b7          	lui	a5,0x88000
800034c4:	00a78533          	add	a0,a5,a0
    unsigned short buffer = (color << 8) | c;
800034c8:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
800034cc:	00d51023          	sh	a3,0(a0)
    return 1;
800034d0:	00099503          	lh	a0,0(s3)
                screenPos++;
800034d4:	00150513          	addi	a0,a0,1
800034d8:	01051513          	slli	a0,a0,0x10
800034dc:	41055513          	srai	a0,a0,0x10
800034e0:	00007797          	auipc	a5,0x7
800034e4:	46a79823          	sh	a0,1136(a5) # 8000a950 <screenPos>
800034e8:	f09ff06f          	j	800033f0 <_Z6printfPKcz+0xf4>
                int value=va_arg(ptr, int);
800034ec:	00c12883          	lw	a7,12(sp)
    char hexChars[] = "0123456789ABCDEF";
800034f0:	010a4803          	lbu	a6,16(s4)
800034f4:	000a2f03          	lw	t5,0(s4)
                int value=va_arg(ptr, int);
800034f8:	0008a683          	lw	a3,0(a7) # 88000000 <_stack_top+0x7c00000>
    char hexChars[] = "0123456789ABCDEF";
800034fc:	004a2e83          	lw	t4,4(s4)
80003500:	008a2e03          	lw	t3,8(s4)
80003504:	00ca2303          	lw	t1,12(s4)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003508:	4086d613          	srai	a2,a3,0x8
    char hexChars[] = "0123456789ABCDEF";
8000350c:	03010623          	sb	a6,44(sp)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003510:	40c6d793          	srai	a5,a3,0xc
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003514:	03010813          	addi	a6,sp,48
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003518:	4186d713          	srai	a4,a3,0x18
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
8000351c:	00f67613          	andi	a2,a2,15
    char hexChars[] = "0123456789ABCDEF";
80003520:	02612423          	sw	t1,40(sp)
80003524:	01e12e23          	sw	t5,28(sp)
80003528:	03d12023          	sw	t4,32(sp)
8000352c:	03c12223          	sw	t3,36(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003530:	00c80633          	add	a2,a6,a2
80003534:	01c6d593          	srli	a1,a3,0x1c
80003538:	00f7f793          	andi	a5,a5,15
8000353c:	00f77713          	andi	a4,a4,15
80003540:	00b805b3          	add	a1,a6,a1
80003544:	00e80733          	add	a4,a6,a4
80003548:	fec64f03          	lbu	t5,-20(a2)
8000354c:	00f807b3          	add	a5,a6,a5
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003550:	4046d313          	srai	t1,a3,0x4
80003554:	4146d813          	srai	a6,a3,0x14
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003558:	fec5c603          	lbu	a2,-20(a1)
8000355c:	fec74e83          	lbu	t4,-20(a4)
80003560:	fec7c783          	lbu	a5,-20(a5)
80003564:	03010713          	addi	a4,sp,48
80003568:	00f37313          	andi	t1,t1,15
8000356c:	00f87813          	andi	a6,a6,15
80003570:	00670333          	add	t1,a4,t1
80003574:	01070833          	add	a6,a4,a6
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003578:	4106d593          	srai	a1,a3,0x10
8000357c:	ffff0737          	lui	a4,0xffff0
80003580:	0ff70713          	addi	a4,a4,255 # ffff00ff <_stack_top+0x7fbf00ff>
80003584:	fec34e03          	lbu	t3,-20(t1) # 87ffffec <_stack_top+0x7bfffec>
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003588:	00f5f593          	andi	a1,a1,15
8000358c:	fec84303          	lbu	t1,-20(a6) # 87ffffec <_stack_top+0x7bfffec>
80003590:	00f6f693          	andi	a3,a3,15
80003594:	008f1813          	slli	a6,t5,0x8
80003598:	03010f13          	addi	t5,sp,48
8000359c:	00e7f7b3          	and	a5,a5,a4
800035a0:	00df06b3          	add	a3,t5,a3
800035a4:	00e67733          	and	a4,a2,a4
800035a8:	008e9e93          	slli	t4,t4,0x8
800035ac:	00bf0633          	add	a2,t5,a1
800035b0:	ff0105b7          	lui	a1,0xff010
800035b4:	fff58593          	addi	a1,a1,-1 # ff00ffff <_stack_top+0x7ec0ffff>
800035b8:	0107e7b3          	or	a5,a5,a6
800035bc:	01d76733          	or	a4,a4,t4
800035c0:	fec6c803          	lbu	a6,-20(a3)
800035c4:	fec64603          	lbu	a2,-20(a2)
800035c8:	010e1e13          	slli	t3,t3,0x10
800035cc:	00b7f7b3          	and	a5,a5,a1
800035d0:	01031313          	slli	t1,t1,0x10
800035d4:	00b77733          	and	a4,a4,a1
800035d8:	010006b7          	lui	a3,0x1000
800035dc:	fff68693          	addi	a3,a3,-1 # ffffff <_stack_size+0xff7fff>
800035e0:	01c7e7b3          	or	a5,a5,t3
800035e4:	00676733          	or	a4,a4,t1
800035e8:	01881593          	slli	a1,a6,0x18
800035ec:	00d7f7b3          	and	a5,a5,a3
800035f0:	01861613          	slli	a2,a2,0x18
800035f4:	00d77733          	and	a4,a4,a3
800035f8:	00c76733          	or	a4,a4,a2
800035fc:	00b7e7b3          	or	a5,a5,a1
80003600:	00e12823          	sw	a4,16(sp)
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80003604:	00010c23          	sb	zero,24(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003608:	00f12a23          	sw	a5,20(sp)
8000360c:	01010813          	addi	a6,sp,16
    while(string[i] != '\0'){
80003610:	00084683          	lbu	a3,0(a6)
                int value=va_arg(ptr, int);
80003614:	00488893          	addi	a7,a7,4
80003618:	01112623          	sw	a7,12(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
8000361c:	00000713          	li	a4,0
        if(string[i]=='\n'){
80003620:	00a00893          	li	a7,10
    if(location>SCREEN_SIZE){
80003624:	4c000e13          	li	t3,1216
    screen[location] = buffer;
80003628:	88000337          	lui	t1,0x88000
        if(!putch(location + i, string[i],color)){
8000362c:	00a70633          	add	a2,a4,a0
    while(string[i] != '\0'){
80003630:	02068e63          	beqz	a3,8000366c <_Z6printfPKcz+0x370>
        if(string[i]=='\n'){
80003634:	07168c63          	beq	a3,a7,800036ac <_Z6printfPKcz+0x3b0>
    unsigned short buffer = (color << 8) | c;
80003638:	0126e7b3          	or	a5,a3,s2
    screen[location] = buffer;
8000363c:	00161593          	slli	a1,a2,0x1
    unsigned short buffer = (color << 8) | c;
80003640:	01079793          	slli	a5,a5,0x10
80003644:	0107d793          	srli	a5,a5,0x10
    screen[location] = buffer;
80003648:	00b305b3          	add	a1,t1,a1
    if(location<0){
8000364c:	02064463          	bltz	a2,80003674 <_Z6printfPKcz+0x378>
    if(location>SCREEN_SIZE){
80003650:	06ce4463          	blt	t3,a2,800036b8 <_Z6printfPKcz+0x3bc>
    screen[location] = buffer;
80003654:	00f59023          	sh	a5,0(a1)
        if(rainbow==1){
80003658:	00180813          	addi	a6,a6,1
    while(string[i] != '\0'){
8000365c:	00084683          	lbu	a3,0(a6)
80003660:	00170713          	addi	a4,a4,1
        if(!putch(location + i, string[i],color)){
80003664:	00a70633          	add	a2,a4,a0
    while(string[i] != '\0'){
80003668:	fc0696e3          	bnez	a3,80003634 <_Z6printfPKcz+0x338>
8000366c:	0ff77513          	andi	a0,a4,255
80003670:	01c0006f          	j	8000368c <_Z6printfPKcz+0x390>
	return *( (volatile uint8_t *) addr );
80003674:	10000737          	lui	a4,0x10000
80003678:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
8000367c:	0207f793          	andi	a5,a5,32
80003680:	fe078ce3          	beqz	a5,80003678 <_Z6printfPKcz+0x37c>
	*( (uint8_t *) addr ) = b;
80003684:	00d70023          	sb	a3,0(a4)
80003688:	00000513          	li	a0,0
                screenPos+=printHex(screenPos,value,color);
8000368c:	0009d703          	lhu	a4,0(s3)
80003690:	00240413          	addi	s0,s0,2
80003694:	00e50533          	add	a0,a0,a4
80003698:	01051513          	slli	a0,a0,0x10
8000369c:	41055513          	srai	a0,a0,0x10
800036a0:	00007797          	auipc	a5,0x7
800036a4:	2aa79823          	sh	a0,688(a5) # 8000a950 <screenPos>
800036a8:	d49ff06f          	j	800033f0 <_Z6printfPKcz+0xf4>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
800036ac:	fc057513          	andi	a0,a0,-64
800036b0:	04050513          	addi	a0,a0,64
            continue;
800036b4:	fa5ff06f          	j	80003658 <_Z6printfPKcz+0x35c>
    if(location>SCREEN_SIZE){
800036b8:	00000513          	li	a0,0
800036bc:	fd1ff06f          	j	8000368c <_Z6printfPKcz+0x390>
                unsigned int value=va_arg(ptr, unsigned int);
800036c0:	00c12783          	lw	a5,12(sp)
                screenPos+=printDec(screenPos,value,color);
800036c4:	00f00613          	li	a2,15
800036c8:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
800036cc:	00478793          	addi	a5,a5,4
800036d0:	00f12623          	sw	a5,12(sp)
                screenPos+=printDec(screenPos,value,color);
800036d4:	e40ff0ef          	jal	ra,80002d14 <_Z8printDeciic>
                screenPos+=printString(screenPos,value,color);
800036d8:	0009d783          	lhu	a5,0(s3)
800036dc:	00240413          	addi	s0,s0,2
800036e0:	00f50533          	add	a0,a0,a5
800036e4:	01051513          	slli	a0,a0,0x10
800036e8:	41055513          	srai	a0,a0,0x10
800036ec:	00007797          	auipc	a5,0x7
800036f0:	26a79223          	sh	a0,612(a5) # 8000a950 <screenPos>
800036f4:	cfdff06f          	j	800033f0 <_Z6printfPKcz+0xf4>
                    screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
800036f8:	fc057513          	andi	a0,a0,-64
800036fc:	04050513          	addi	a0,a0,64
80003700:	01051513          	slli	a0,a0,0x10
80003704:	41055513          	srai	a0,a0,0x10
80003708:	00007797          	auipc	a5,0x7
8000370c:	24a79423          	sh	a0,584(a5) # 8000a950 <screenPos>
                    continue;    
80003710:	ce1ff06f          	j	800033f0 <_Z6printfPKcz+0xf4>
                char *value=va_arg(ptr, char*);
80003714:	00c12703          	lw	a4,12(sp)
80003718:	00000793          	li	a5,0
        if(string[i]=='\n'){
8000371c:	00a00893          	li	a7,10
                char *value=va_arg(ptr, char*);
80003720:	00072503          	lw	a0,0(a4)
80003724:	00470693          	addi	a3,a4,4
80003728:	00d12623          	sw	a3,12(sp)
    if(location>SCREEN_SIZE){
8000372c:	4c000e13          	li	t3,1216
    screen[location] = buffer;
80003730:	88000337          	lui	t1,0x88000
    while(string[i] != '\0'){
80003734:	00f50733          	add	a4,a0,a5
80003738:	00074683          	lbu	a3,0(a4)
        if(!putch(location + i, string[i],color)){
8000373c:	01078633          	add	a2,a5,a6
    while(string[i] != '\0'){
80003740:	0a068863          	beqz	a3,800037f0 <_Z6printfPKcz+0x4f4>
        if(string[i]=='\n'){
80003744:	05168463          	beq	a3,a7,8000378c <_Z6printfPKcz+0x490>
    unsigned short buffer = (color << 8) | c;
80003748:	0126e733          	or	a4,a3,s2
    screen[location] = buffer;
8000374c:	00161593          	slli	a1,a2,0x1
    unsigned short buffer = (color << 8) | c;
80003750:	01071713          	slli	a4,a4,0x10
80003754:	01075713          	srli	a4,a4,0x10
    screen[location] = buffer;
80003758:	00b305b3          	add	a1,t1,a1
    if(location<0){
8000375c:	00064a63          	bltz	a2,80003770 <_Z6printfPKcz+0x474>
    if(location>SCREEN_SIZE){
80003760:	02ce4e63          	blt	t3,a2,8000379c <_Z6printfPKcz+0x4a0>
    screen[location] = buffer;
80003764:	00e59023          	sh	a4,0(a1)
        if(rainbow==1){
80003768:	00178793          	addi	a5,a5,1
8000376c:	fc9ff06f          	j	80003734 <_Z6printfPKcz+0x438>
	return *( (volatile uint8_t *) addr );
80003770:	10000737          	lui	a4,0x10000
80003774:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003778:	0207f793          	andi	a5,a5,32
8000377c:	fe078ce3          	beqz	a5,80003774 <_Z6printfPKcz+0x478>
	*( (uint8_t *) addr ) = b;
80003780:	00d70023          	sb	a3,0(a4)
80003784:	00000513          	li	a0,0
80003788:	f51ff06f          	j	800036d8 <_Z6printfPKcz+0x3dc>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
8000378c:	fc087813          	andi	a6,a6,-64
80003790:	04080813          	addi	a6,a6,64
            continue;
80003794:	00178793          	addi	a5,a5,1
80003798:	f9dff06f          	j	80003734 <_Z6printfPKcz+0x438>
    if(location>SCREEN_SIZE){
8000379c:	00000513          	li	a0,0
800037a0:	f39ff06f          	j	800036d8 <_Z6printfPKcz+0x3dc>
	return *( (volatile uint8_t *) addr );
800037a4:	10000737          	lui	a4,0x10000
800037a8:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800037ac:	0207f793          	andi	a5,a5,32
800037b0:	fe078ce3          	beqz	a5,800037a8 <_Z6printfPKcz+0x4ac>
	*( (uint8_t *) addr ) = b;
800037b4:	02500793          	li	a5,37
800037b8:	00f70023          	sb	a5,0(a4)
        return 0;
800037bc:	00099503          	lh	a0,0(s3)
800037c0:	c19ff06f          	j	800033d8 <_Z6printfPKcz+0xdc>
	return *( (volatile uint8_t *) addr );
800037c4:	10000737          	lui	a4,0x10000
800037c8:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800037cc:	0207f793          	andi	a5,a5,32
800037d0:	fe078ce3          	beqz	a5,800037c8 <_Z6printfPKcz+0x4cc>
	*( (uint8_t *) addr ) = b;
800037d4:	00d70023          	sb	a3,0(a4)
        return 0;
800037d8:	00099503          	lh	a0,0(s3)
800037dc:	cf9ff06f          	j	800034d4 <_Z6printfPKcz+0x1d8>
800037e0:	00007797          	auipc	a5,0x7
800037e4:	17078793          	addi	a5,a5,368 # 8000a950 <screenPos>
800037e8:	00079503          	lh	a0,0(a5)
800037ec:	c15ff06f          	j	80003400 <_Z6printfPKcz+0x104>
800037f0:	01079513          	slli	a0,a5,0x10
800037f4:	01055513          	srli	a0,a0,0x10
800037f8:	ee1ff06f          	j	800036d8 <_Z6printfPKcz+0x3dc>

800037fc <_Z9printfSCRicPKcz>:

// *****************************************************************************
// Same as printf but you can set the color and the location on the screen
// It returns the size of the string printed
int printfSCR(int location, char color,const char* str, ...) 
{ 
800037fc:	f6010113          	addi	sp,sp,-160
80003800:	06112e23          	sw	ra,124(sp)
80003804:	06812c23          	sw	s0,120(sp)
80003808:	06912a23          	sw	s1,116(sp)
8000380c:	07212823          	sw	s2,112(sp)
80003810:	07312623          	sw	s3,108(sp)
80003814:	07412423          	sw	s4,104(sp)
80003818:	07512223          	sw	s5,100(sp)
8000381c:	07612023          	sw	s6,96(sp)
80003820:	05712e23          	sw	s7,92(sp)
80003824:	05812c23          	sw	s8,88(sp)
80003828:	05912a23          	sw	s9,84(sp)
8000382c:	05a12823          	sw	s10,80(sp)
80003830:	05b12623          	sw	s11,76(sp)
    // index of where to store the characters of str in 
    // token 
    int strPos=0;
    // parsing the formatted string 
    int i=0;
    for (i = 0; str[i] != '\0'; i++) { 
80003834:	00064303          	lbu	t1,0(a2)
{ 
80003838:	08f12a23          	sw	a5,148(sp)
    va_start(ptr, str);  
8000383c:	08c10793          	addi	a5,sp,140
{ 
80003840:	08d12623          	sw	a3,140(sp)
80003844:	08e12823          	sw	a4,144(sp)
80003848:	09012c23          	sw	a6,152(sp)
8000384c:	09112e23          	sw	a7,156(sp)
    va_start(ptr, str);  
80003850:	00f12e23          	sw	a5,28(sp)
    for (i = 0; str[i] != '\0'; i++) { 
80003854:	54030863          	beqz	t1,80003da4 <_Z9printfSCRicPKcz+0x5a8>
    unsigned short buffer = (color << 8) | c;
80003858:	00859b93          	slli	s7,a1,0x8
8000385c:	010b9713          	slli	a4,s7,0x10
80003860:	41075713          	srai	a4,a4,0x10
80003864:	025beb93          	ori	s7,s7,37
80003868:	00100b13          	li	s6,1
8000386c:	36059663          	bnez	a1,80003bd8 <_Z9printfSCRicPKcz+0x3dc>
80003870:	008b1a93          	slli	s5,s6,0x8
80003874:	010a9a93          	slli	s5,s5,0x10
80003878:	ffff0d37          	lui	s10,0xffff0
8000387c:	ff010cb7          	lui	s9,0xff010
80003880:	01000c37          	lui	s8,0x1000
80003884:	00058a13          	mv	s4,a1
80003888:	00050993          	mv	s3,a0
8000388c:	00060913          	mv	s2,a2
80003890:	0015bd93          	seqz	s11,a1
80003894:	410ada93          	srai	s5,s5,0x10
    for (i = 0; str[i] != '\0'; i++) { 
80003898:	00000413          	li	s0,0
    int strPos=0;
8000389c:	00000493          	li	s1,0
    for (i = 0; str[i] != '\0'; i++) { 
800038a0:	00000793          	li	a5,0
800038a4:	0ffd0d13          	addi	s10,s10,255 # ffff00ff <_stack_top+0x7fbf00ff>
800038a8:	fffc8c93          	addi	s9,s9,-1 # ff00ffff <_stack_top+0x7ec0ffff>
800038ac:	fffc0c13          	addi	s8,s8,-1 # ffffff <_stack_size+0xff7fff>
800038b0:	0600006f          	j	80003910 <_Z9printfSCRicPKcz+0x114>
        if(str[i]=='\n'){
            strPos = (strPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
            continue;    
        }
        if(str[i]=='%'){
            if(str[i+1]=='x'){
800038b4:	00f907b3          	add	a5,s2,a5
800038b8:	0017c783          	lbu	a5,1(a5)
800038bc:	07800693          	li	a3,120
800038c0:	10d78463          	beq	a5,a3,800039c8 <_Z9printfSCRicPKcz+0x1cc>
                i++;
                int value=va_arg(ptr, int);
                strPos+=printHex(location+strPos,value,color);
            }
            else if(str[i+1]=='d'){
800038c4:	06400693          	li	a3,100
800038c8:	2ed78263          	beq	a5,a3,80003bac <_Z9printfSCRicPKcz+0x3b0>
                i++;
                unsigned int value=va_arg(ptr, unsigned int);
                strPos+=printDec(location+strPos,value,color);
            }
            else if(str[i+1]=='c'){
800038cc:	06300693          	li	a3,99
800038d0:	3cd78663          	beq	a5,a3,80003c9c <_Z9printfSCRicPKcz+0x4a0>
                i++;
                char value=va_arg(ptr, int);
                putch(location+strPos,value,color);
                strPos++;
            }
            else if (str[i+1]=='s')
800038d4:	07300693          	li	a3,115
800038d8:	26d78a63          	beq	a5,a3,80003b4c <_Z9printfSCRicPKcz+0x350>
    if(location<0){
800038dc:	42054063          	bltz	a0,80003cfc <_Z9printfSCRicPKcz+0x500>
    if(location>SCREEN_SIZE){
800038e0:	4c000793          	li	a5,1216
800038e4:	00a7ca63          	blt	a5,a0,800038f8 <_Z9printfSCRicPKcz+0xfc>
    screen[location] = buffer;
800038e8:	00151513          	slli	a0,a0,0x1
800038ec:	880007b7          	lui	a5,0x88000
800038f0:	00a78533          	add	a0,a5,a0
800038f4:	01751023          	sh	s7,0(a0)
                strPos++;
            }
        }
        else{
            putch(location+strPos,str[i],color);
            strPos++;
800038f8:	00148493          	addi	s1,s1,1
800038fc:	00060413          	mv	s0,a2
    for (i = 0; str[i] != '\0'; i++) { 
80003900:	008907b3          	add	a5,s2,s0
80003904:	0007c303          	lbu	t1,0(a5) # 88000000 <_stack_top+0x7c00000>
80003908:	00040793          	mv	a5,s0
8000390c:	06030263          	beqz	t1,80003970 <_Z9printfSCRicPKcz+0x174>
        if(str[i]=='\n'){
80003910:	00a00693          	li	a3,10
80003914:	00140613          	addi	a2,s0,1
80003918:	02d30e63          	beq	t1,a3,80003954 <_Z9printfSCRicPKcz+0x158>
        if(str[i]=='%'){
8000391c:	02500693          	li	a3,37
80003920:	00998533          	add	a0,s3,s1
80003924:	f8d308e3          	beq	t1,a3,800038b4 <_Z9printfSCRicPKcz+0xb8>
    if(location<0){
80003928:	08054463          	bltz	a0,800039b0 <_Z9printfSCRicPKcz+0x1b4>
    if(location>SCREEN_SIZE){
8000392c:	4c000793          	li	a5,1216
80003930:	fca7c4e3          	blt	a5,a0,800038f8 <_Z9printfSCRicPKcz+0xfc>
    unsigned short buffer = (color << 8) | c;
80003934:	00676333          	or	t1,a4,t1
    screen[location] = buffer;
80003938:	00151793          	slli	a5,a0,0x1
    unsigned short buffer = (color << 8) | c;
8000393c:	01031313          	slli	t1,t1,0x10
    screen[location] = buffer;
80003940:	88000537          	lui	a0,0x88000
    unsigned short buffer = (color << 8) | c;
80003944:	01035313          	srli	t1,t1,0x10
    screen[location] = buffer;
80003948:	00f50533          	add	a0,a0,a5
8000394c:	00651023          	sh	t1,0(a0) # 88000000 <_stack_top+0x7c00000>
    return 1;
80003950:	fa9ff06f          	j	800038f8 <_Z9printfSCRicPKcz+0xfc>
            continue;    
80003954:	00060413          	mv	s0,a2
    for (i = 0; str[i] != '\0'; i++) { 
80003958:	008907b3          	add	a5,s2,s0
8000395c:	0007c303          	lbu	t1,0(a5)
            strPos = (strPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
80003960:	fc04f493          	andi	s1,s1,-64
80003964:	04048493          	addi	s1,s1,64
    for (i = 0; str[i] != '\0'; i++) { 
80003968:	00040793          	mv	a5,s0
8000396c:	fa0312e3          	bnez	t1,80003910 <_Z9printfSCRicPKcz+0x114>
    } 
  
    // ending traversal 
    va_end(ptr); 
    return strPos; 
} 
80003970:	07c12083          	lw	ra,124(sp)
80003974:	07812403          	lw	s0,120(sp)
80003978:	00048513          	mv	a0,s1
8000397c:	07012903          	lw	s2,112(sp)
80003980:	07412483          	lw	s1,116(sp)
80003984:	06c12983          	lw	s3,108(sp)
80003988:	06812a03          	lw	s4,104(sp)
8000398c:	06412a83          	lw	s5,100(sp)
80003990:	06012b03          	lw	s6,96(sp)
80003994:	05c12b83          	lw	s7,92(sp)
80003998:	05812c03          	lw	s8,88(sp)
8000399c:	05412c83          	lw	s9,84(sp)
800039a0:	05012d03          	lw	s10,80(sp)
800039a4:	04c12d83          	lw	s11,76(sp)
800039a8:	0a010113          	addi	sp,sp,160
800039ac:	00008067          	ret
	return *( (volatile uint8_t *) addr );
800039b0:	100006b7          	lui	a3,0x10000
800039b4:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800039b8:	0207f793          	andi	a5,a5,32
800039bc:	fe078ce3          	beqz	a5,800039b4 <_Z9printfSCRicPKcz+0x1b8>
	*( (uint8_t *) addr ) = b;
800039c0:	00668023          	sb	t1,0(a3)
        return 0;
800039c4:	f35ff06f          	j	800038f8 <_Z9printfSCRicPKcz+0xfc>
                int value=va_arg(ptr, int);
800039c8:	01c12603          	lw	a2,28(sp)
    char hexChars[] = "0123456789ABCDEF";
800039cc:	00006797          	auipc	a5,0x6
800039d0:	18078793          	addi	a5,a5,384 # 80009b4c <__clzsi2+0xcc>
800039d4:	00c7a803          	lw	a6,12(a5)
                int value=va_arg(ptr, int);
800039d8:	00062583          	lw	a1,0(a2)
    char hexChars[] = "0123456789ABCDEF";
800039dc:	0007af03          	lw	t5,0(a5)
800039e0:	0047ae03          	lw	t3,4(a5)
800039e4:	0087a883          	lw	a7,8(a5)
800039e8:	0107cf83          	lbu	t6,16(a5)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
800039ec:	4085d693          	srai	a3,a1,0x8
800039f0:	40c5d793          	srai	a5,a1,0xc
800039f4:	4185d313          	srai	t1,a1,0x18
    char hexChars[] = "0123456789ABCDEF";
800039f8:	03012c23          	sw	a6,56(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
800039fc:	01c5de93          	srli	t4,a1,0x1c
80003a00:	04010813          	addi	a6,sp,64
80003a04:	00f7f793          	andi	a5,a5,15
80003a08:	00f6f693          	andi	a3,a3,15
80003a0c:	00f37313          	andi	t1,t1,15
    char hexChars[] = "0123456789ABCDEF";
80003a10:	03e12623          	sw	t5,44(sp)
80003a14:	03112a23          	sw	a7,52(sp)
80003a18:	03c12823          	sw	t3,48(sp)
80003a1c:	03f10e23          	sb	t6,60(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a20:	00d806b3          	add	a3,a6,a3
80003a24:	01d80eb3          	add	t4,a6,t4
80003a28:	00f807b3          	add	a5,a6,a5
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003a2c:	4045d893          	srai	a7,a1,0x4
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a30:	00680333          	add	t1,a6,t1
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003a34:	4145d813          	srai	a6,a1,0x14
80003a38:	fec6ce03          	lbu	t3,-20(a3)
80003a3c:	fec7c783          	lbu	a5,-20(a5)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a40:	fecec683          	lbu	a3,-20(t4)
80003a44:	00f8f893          	andi	a7,a7,15
80003a48:	04010e93          	addi	t4,sp,64
80003a4c:	fec34303          	lbu	t1,-20(t1) # 87ffffec <_stack_top+0x7bfffec>
80003a50:	00f87813          	andi	a6,a6,15
80003a54:	011e88b3          	add	a7,t4,a7
80003a58:	010e8833          	add	a6,t4,a6
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003a5c:	4105de93          	srai	t4,a1,0x10
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003a60:	04010f13          	addi	t5,sp,64
80003a64:	fec8c883          	lbu	a7,-20(a7)
80003a68:	00f5f593          	andi	a1,a1,15
80003a6c:	fec84803          	lbu	a6,-20(a6)
80003a70:	00fefe93          	andi	t4,t4,15
80003a74:	008e1e13          	slli	t3,t3,0x8
80003a78:	00bf05b3          	add	a1,t5,a1
80003a7c:	01a7f7b3          	and	a5,a5,s10
80003a80:	00831313          	slli	t1,t1,0x8
80003a84:	01a6f6b3          	and	a3,a3,s10
80003a88:	01df0eb3          	add	t4,t5,t4
80003a8c:	01c7e7b3          	or	a5,a5,t3
80003a90:	0066e6b3          	or	a3,a3,t1
80003a94:	fec5ce03          	lbu	t3,-20(a1)
80003a98:	fecec583          	lbu	a1,-20(t4)
80003a9c:	01081813          	slli	a6,a6,0x10
80003aa0:	01089893          	slli	a7,a7,0x10
80003aa4:	0197f7b3          	and	a5,a5,s9
80003aa8:	0196f6b3          	and	a3,a3,s9
80003aac:	0106e6b3          	or	a3,a3,a6
80003ab0:	0117e7b3          	or	a5,a5,a7
80003ab4:	018e1813          	slli	a6,t3,0x18
80003ab8:	01859593          	slli	a1,a1,0x18
80003abc:	0187f7b3          	and	a5,a5,s8
80003ac0:	0186f6b3          	and	a3,a3,s8
80003ac4:	0107e7b3          	or	a5,a5,a6
80003ac8:	00b6e6b3          	or	a3,a3,a1
                int value=va_arg(ptr, int);
80003acc:	00460613          	addi	a2,a2,4
80003ad0:	00c12e23          	sw	a2,28(sp)
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80003ad4:	02010423          	sb	zero,40(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003ad8:	02d12023          	sw	a3,32(sp)
80003adc:	02f12223          	sw	a5,36(sp)
    if(color==0){
80003ae0:	02010593          	addi	a1,sp,32
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003ae4:	00000813          	li	a6,0
80003ae8:	0e0d9c63          	bnez	s11,80003be0 <_Z9printfSCRicPKcz+0x3e4>
    while(string[i] != '\0'){
80003aec:	0005c683          	lbu	a3,0(a1)
        if(string[i]=='\n'){
80003af0:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80003af4:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80003af8:	88000e37          	lui	t3,0x88000
        if(!putch(location + i, string[i],color)){
80003afc:	00a80633          	add	a2,a6,a0
    while(string[i] != '\0'){
80003b00:	02068e63          	beqz	a3,80003b3c <_Z9printfSCRicPKcz+0x340>
        if(string[i]=='\n'){
80003b04:	1c668e63          	beq	a3,t1,80003ce0 <_Z9printfSCRicPKcz+0x4e4>
    unsigned short buffer = (color << 8) | c;
80003b08:	00dae7b3          	or	a5,s5,a3
    screen[location] = buffer;
80003b0c:	00161893          	slli	a7,a2,0x1
    unsigned short buffer = (color << 8) | c;
80003b10:	01079793          	slli	a5,a5,0x10
80003b14:	0107d793          	srli	a5,a5,0x10
    screen[location] = buffer;
80003b18:	011e08b3          	add	a7,t3,a7
    if(location<0){
80003b1c:	12064c63          	bltz	a2,80003c54 <_Z9printfSCRicPKcz+0x458>
    if(location>SCREEN_SIZE){
80003b20:	02cec263          	blt	t4,a2,80003b44 <_Z9printfSCRicPKcz+0x348>
    screen[location] = buffer;
80003b24:	00f89023          	sh	a5,0(a7)
        if(rainbow==1){
80003b28:	00158593          	addi	a1,a1,1
    while(string[i] != '\0'){
80003b2c:	0005c683          	lbu	a3,0(a1)
80003b30:	00180813          	addi	a6,a6,1
        if(!putch(location + i, string[i],color)){
80003b34:	00a80633          	add	a2,a6,a0
    while(string[i] != '\0'){
80003b38:	fc0696e3          	bnez	a3,80003b04 <_Z9printfSCRicPKcz+0x308>
80003b3c:	0ff87793          	andi	a5,a6,255
80003b40:	00f484b3          	add	s1,s1,a5
80003b44:	00240413          	addi	s0,s0,2
80003b48:	db9ff06f          	j	80003900 <_Z9printfSCRicPKcz+0x104>
                char *value=va_arg(ptr, char*);
80003b4c:	01c12783          	lw	a5,28(sp)
80003b50:	00478693          	addi	a3,a5,4
80003b54:	00d12e23          	sw	a3,28(sp)
80003b58:	0007a883          	lw	a7,0(a5)
    if(color==0){
80003b5c:	1a0d9e63          	bnez	s11,80003d18 <_Z9printfSCRicPKcz+0x51c>
                char *value=va_arg(ptr, char*);
80003b60:	00000793          	li	a5,0
        if(string[i]=='\n'){
80003b64:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80003b68:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80003b6c:	88000e37          	lui	t3,0x88000
    while(string[i] != '\0'){
80003b70:	00f886b3          	add	a3,a7,a5
80003b74:	0006c683          	lbu	a3,0(a3)
        if(!putch(location + i, string[i],color)){
80003b78:	00a785b3          	add	a1,a5,a0
    while(string[i] != '\0'){
80003b7c:	fc0682e3          	beqz	a3,80003b40 <_Z9printfSCRicPKcz+0x344>
        if(string[i]=='\n'){
80003b80:	16668663          	beq	a3,t1,80003cec <_Z9printfSCRicPKcz+0x4f0>
    unsigned short buffer = (color << 8) | c;
80003b84:	00dae633          	or	a2,s5,a3
    screen[location] = buffer;
80003b88:	00159813          	slli	a6,a1,0x1
    unsigned short buffer = (color << 8) | c;
80003b8c:	01061613          	slli	a2,a2,0x10
80003b90:	01065613          	srli	a2,a2,0x10
    screen[location] = buffer;
80003b94:	010e0833          	add	a6,t3,a6
    if(location<0){
80003b98:	0c05cc63          	bltz	a1,80003c70 <_Z9printfSCRicPKcz+0x474>
    if(location>SCREEN_SIZE){
80003b9c:	0ebeca63          	blt	t4,a1,80003c90 <_Z9printfSCRicPKcz+0x494>
    screen[location] = buffer;
80003ba0:	00c81023          	sh	a2,0(a6)
        if(rainbow==1){
80003ba4:	00178793          	addi	a5,a5,1
80003ba8:	fc9ff06f          	j	80003b70 <_Z9printfSCRicPKcz+0x374>
                unsigned int value=va_arg(ptr, unsigned int);
80003bac:	01c12783          	lw	a5,28(sp)
                strPos+=printDec(location+strPos,value,color);
80003bb0:	000a0613          	mv	a2,s4
80003bb4:	00e12623          	sw	a4,12(sp)
80003bb8:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
80003bbc:	00478793          	addi	a5,a5,4
80003bc0:	00f12e23          	sw	a5,28(sp)
                strPos+=printDec(location+strPos,value,color);
80003bc4:	950ff0ef          	jal	ra,80002d14 <_Z8printDeciic>
80003bc8:	00a484b3          	add	s1,s1,a0
80003bcc:	00240413          	addi	s0,s0,2
80003bd0:	00c12703          	lw	a4,12(sp)
80003bd4:	d2dff06f          	j	80003900 <_Z9printfSCRicPKcz+0x104>
80003bd8:	0ff5fb13          	andi	s6,a1,255
80003bdc:	c95ff06f          	j	80003870 <_Z9printfSCRicPKcz+0x74>
    while(string[i] != '\0'){
80003be0:	0005c683          	lbu	a3,0(a1)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003be4:	000b0793          	mv	a5,s6
        if(string[i]=='\n'){
80003be8:	00a00e13          	li	t3,10
    if(location>SCREEN_SIZE){
80003bec:	4c000f93          	li	t6,1216
    screen[location] = buffer;
80003bf0:	88000eb7          	lui	t4,0x88000
            if(color>15){
80003bf4:	00f00f13          	li	t5,15
        if(!putch(location + i, string[i],color)){
80003bf8:	00a80333          	add	t1,a6,a0
    while(string[i] != '\0'){
80003bfc:	f40680e3          	beqz	a3,80003b3c <_Z9printfSCRicPKcz+0x340>
        if(string[i]=='\n'){
80003c00:	05c68463          	beq	a3,t3,80003c48 <_Z9printfSCRicPKcz+0x44c>
    unsigned short buffer = (color << 8) | c;
80003c04:	00879893          	slli	a7,a5,0x8
    screen[location] = buffer;
80003c08:	00131613          	slli	a2,t1,0x1
            color++;
80003c0c:	00178793          	addi	a5,a5,1
    unsigned short buffer = (color << 8) | c;
80003c10:	00d8e8b3          	or	a7,a7,a3
    screen[location] = buffer;
80003c14:	00ce8633          	add	a2,t4,a2
            color++;
80003c18:	0ff7f793          	andi	a5,a5,255
    if(location<0){
80003c1c:	02034c63          	bltz	t1,80003c54 <_Z9printfSCRicPKcz+0x458>
    if(location>SCREEN_SIZE){
80003c20:	f26fc2e3          	blt	t6,t1,80003b44 <_Z9printfSCRicPKcz+0x348>
    screen[location] = buffer;
80003c24:	01161023          	sh	a7,0(a2)
            if(color>15){
80003c28:	00ff7463          	bgeu	t5,a5,80003c30 <_Z9printfSCRicPKcz+0x434>
                color=1;
80003c2c:	000d8793          	mv	a5,s11
80003c30:	00158593          	addi	a1,a1,1
    while(string[i] != '\0'){
80003c34:	0005c683          	lbu	a3,0(a1)
80003c38:	00180813          	addi	a6,a6,1
        if(!putch(location + i, string[i],color)){
80003c3c:	00a80333          	add	t1,a6,a0
    while(string[i] != '\0'){
80003c40:	ee068ee3          	beqz	a3,80003b3c <_Z9printfSCRicPKcz+0x340>
        if(string[i]=='\n'){
80003c44:	fdc690e3          	bne	a3,t3,80003c04 <_Z9printfSCRicPKcz+0x408>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003c48:	fc057513          	andi	a0,a0,-64
80003c4c:	04050513          	addi	a0,a0,64
            continue;
80003c50:	fe1ff06f          	j	80003c30 <_Z9printfSCRicPKcz+0x434>
	return *( (volatile uint8_t *) addr );
80003c54:	10000637          	lui	a2,0x10000
80003c58:	00564783          	lbu	a5,5(a2) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003c5c:	0207f793          	andi	a5,a5,32
80003c60:	fe078ce3          	beqz	a5,80003c58 <_Z9printfSCRicPKcz+0x45c>
	*( (uint8_t *) addr ) = b;
80003c64:	00d60023          	sb	a3,0(a2)
        return 0;
80003c68:	00240413          	addi	s0,s0,2
80003c6c:	c95ff06f          	j	80003900 <_Z9printfSCRicPKcz+0x104>
	return *( (volatile uint8_t *) addr );
80003c70:	10000637          	lui	a2,0x10000
80003c74:	00564783          	lbu	a5,5(a2) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003c78:	0207f793          	andi	a5,a5,32
80003c7c:	fe078ce3          	beqz	a5,80003c74 <_Z9printfSCRicPKcz+0x478>
            return 0;
80003c80:	00000793          	li	a5,0
	*( (uint8_t *) addr ) = b;
80003c84:	00d60023          	sb	a3,0(a2)
        return 0;
80003c88:	00f484b3          	add	s1,s1,a5
80003c8c:	eb9ff06f          	j	80003b44 <_Z9printfSCRicPKcz+0x348>
            return 0;
80003c90:	00000793          	li	a5,0
80003c94:	00f484b3          	add	s1,s1,a5
80003c98:	eadff06f          	j	80003b44 <_Z9printfSCRicPKcz+0x348>
                char value=va_arg(ptr, int);
80003c9c:	01c12783          	lw	a5,28(sp)
80003ca0:	00478693          	addi	a3,a5,4
80003ca4:	00d12e23          	sw	a3,28(sp)
80003ca8:	0007c683          	lbu	a3,0(a5)
    if(location<0){
80003cac:	0c054e63          	bltz	a0,80003d88 <_Z9printfSCRicPKcz+0x58c>
    if(location>SCREEN_SIZE){
80003cb0:	4c000793          	li	a5,1216
80003cb4:	02a7c063          	blt	a5,a0,80003cd4 <_Z9printfSCRicPKcz+0x4d8>
    unsigned short buffer = (color << 8) | c;
80003cb8:	00d766b3          	or	a3,a4,a3
    screen[location] = buffer;
80003cbc:	00151513          	slli	a0,a0,0x1
    unsigned short buffer = (color << 8) | c;
80003cc0:	01069693          	slli	a3,a3,0x10
    screen[location] = buffer;
80003cc4:	880007b7          	lui	a5,0x88000
    unsigned short buffer = (color << 8) | c;
80003cc8:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
80003ccc:	00a78533          	add	a0,a5,a0
80003cd0:	00d51023          	sh	a3,0(a0)
                strPos++;
80003cd4:	00148493          	addi	s1,s1,1
80003cd8:	00240413          	addi	s0,s0,2
80003cdc:	c25ff06f          	j	80003900 <_Z9printfSCRicPKcz+0x104>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003ce0:	fc057513          	andi	a0,a0,-64
80003ce4:	04050513          	addi	a0,a0,64
            continue;
80003ce8:	e41ff06f          	j	80003b28 <_Z9printfSCRicPKcz+0x32c>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003cec:	fc057513          	andi	a0,a0,-64
80003cf0:	04050513          	addi	a0,a0,64
            continue;
80003cf4:	00178793          	addi	a5,a5,1 # 88000001 <_stack_top+0x7c00001>
80003cf8:	e79ff06f          	j	80003b70 <_Z9printfSCRicPKcz+0x374>
	return *( (volatile uint8_t *) addr );
80003cfc:	100006b7          	lui	a3,0x10000
80003d00:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003d04:	0207f793          	andi	a5,a5,32
80003d08:	fe078ce3          	beqz	a5,80003d00 <_Z9printfSCRicPKcz+0x504>
	*( (uint8_t *) addr ) = b;
80003d0c:	02500793          	li	a5,37
80003d10:	00f68023          	sb	a5,0(a3)
        return 0;
80003d14:	be5ff06f          	j	800038f8 <_Z9printfSCRicPKcz+0xfc>
                char *value=va_arg(ptr, char*);
80003d18:	000b0813          	mv	a6,s6
80003d1c:	00000793          	li	a5,0
        if(string[i]=='\n'){
80003d20:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80003d24:	4c000f13          	li	t5,1216
    screen[location] = buffer;
80003d28:	88000e37          	lui	t3,0x88000
            if(color>15){
80003d2c:	00f00e93          	li	t4,15
    while(string[i] != '\0'){
80003d30:	00f886b3          	add	a3,a7,a5
80003d34:	0006c683          	lbu	a3,0(a3)
        if(!putch(location + i, string[i],color)){
80003d38:	00a78fb3          	add	t6,a5,a0
    while(string[i] != '\0'){
80003d3c:	e00682e3          	beqz	a3,80003b40 <_Z9printfSCRicPKcz+0x344>
        if(string[i]=='\n'){
80003d40:	02668c63          	beq	a3,t1,80003d78 <_Z9printfSCRicPKcz+0x57c>
    unsigned short buffer = (color << 8) | c;
80003d44:	00881593          	slli	a1,a6,0x8
    screen[location] = buffer;
80003d48:	001f9613          	slli	a2,t6,0x1
            color++;
80003d4c:	00180813          	addi	a6,a6,1
    unsigned short buffer = (color << 8) | c;
80003d50:	00d5e5b3          	or	a1,a1,a3
    screen[location] = buffer;
80003d54:	00ce0633          	add	a2,t3,a2
            color++;
80003d58:	0ff87813          	andi	a6,a6,255
    if(location<0){
80003d5c:	f00fcae3          	bltz	t6,80003c70 <_Z9printfSCRicPKcz+0x474>
    if(location>SCREEN_SIZE){
80003d60:	f3ff48e3          	blt	t5,t6,80003c90 <_Z9printfSCRicPKcz+0x494>
    screen[location] = buffer;
80003d64:	00b61023          	sh	a1,0(a2)
            if(color>15){
80003d68:	010ef463          	bgeu	t4,a6,80003d70 <_Z9printfSCRicPKcz+0x574>
                color=1;
80003d6c:	000d8813          	mv	a6,s11
80003d70:	00178793          	addi	a5,a5,1
80003d74:	fbdff06f          	j	80003d30 <_Z9printfSCRicPKcz+0x534>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80003d78:	fc057513          	andi	a0,a0,-64
80003d7c:	04050513          	addi	a0,a0,64
            continue;
80003d80:	00178793          	addi	a5,a5,1
80003d84:	fadff06f          	j	80003d30 <_Z9printfSCRicPKcz+0x534>
	return *( (volatile uint8_t *) addr );
80003d88:	10000637          	lui	a2,0x10000
80003d8c:	00564783          	lbu	a5,5(a2) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003d90:	0207f793          	andi	a5,a5,32
80003d94:	fe078ce3          	beqz	a5,80003d8c <_Z9printfSCRicPKcz+0x590>
	*( (uint8_t *) addr ) = b;
80003d98:	00d60023          	sb	a3,0(a2)
                strPos++;
80003d9c:	00148493          	addi	s1,s1,1
80003da0:	f39ff06f          	j	80003cd8 <_Z9printfSCRicPKcz+0x4dc>
    int strPos=0;
80003da4:	00000493          	li	s1,0
    return strPos; 
80003da8:	bc9ff06f          	j	80003970 <_Z9printfSCRicPKcz+0x174>

80003dac <_Z11uart_printfPKcz>:

// same as all the other printfs but sends the data to uart
int uart_printf(const char* str, ...) 
{ 
80003dac:	f9010113          	addi	sp,sp,-112
80003db0:	04112623          	sw	ra,76(sp)
80003db4:	04812423          	sw	s0,72(sp)
80003db8:	04912223          	sw	s1,68(sp)
80003dbc:	05212023          	sw	s2,64(sp)
80003dc0:	03312e23          	sw	s3,60(sp)
80003dc4:	03412c23          	sw	s4,56(sp)
80003dc8:	03512a23          	sw	s5,52(sp)
    // index of where to store the characters of str in 
    // token 
    int strPos=0;
    // parsing the formatted string 
    int i=0;
    for (i = 0; str[i] != '\0'; i++) { 
80003dcc:	00054303          	lbu	t1,0(a0)
{ 
80003dd0:	06f12223          	sw	a5,100(sp)
    va_start(ptr, str);  
80003dd4:	05410793          	addi	a5,sp,84
{ 
80003dd8:	04b12a23          	sw	a1,84(sp)
80003ddc:	04c12c23          	sw	a2,88(sp)
80003de0:	04d12e23          	sw	a3,92(sp)
80003de4:	06e12023          	sw	a4,96(sp)
80003de8:	07012423          	sw	a6,104(sp)
80003dec:	07112623          	sw	a7,108(sp)
    va_start(ptr, str);  
80003df0:	00f12623          	sw	a5,12(sp)
    for (i = 0; str[i] != '\0'; i++) { 
80003df4:	3a030c63          	beqz	t1,800041ac <_Z11uart_printfPKcz+0x400>
80003df8:	ffff0ab7          	lui	s5,0xffff0
80003dfc:	ff010a37          	lui	s4,0xff010
80003e00:	010009b7          	lui	s3,0x1000
80003e04:	00050913          	mv	s2,a0
80003e08:	00000413          	li	s0,0
    int strPos=0;
80003e0c:	00000493          	li	s1,0
    for (i = 0; str[i] != '\0'; i++) { 
80003e10:	00000793          	li	a5,0
80003e14:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <_stack_top+0x7fbf00ff>
80003e18:	fffa0a13          	addi	s4,s4,-1 # ff00ffff <_stack_top+0x7ec0ffff>
80003e1c:	fff98993          	addi	s3,s3,-1 # ffffff <_stack_size+0xff7fff>
        if(str[i]=='%'){
80003e20:	02500713          	li	a4,37
80003e24:	00140693          	addi	a3,s0,1
80003e28:	04e30c63          	beq	t1,a4,80003e80 <_Z11uart_printfPKcz+0xd4>
	return *( (volatile uint8_t *) addr );
80003e2c:	10000737          	lui	a4,0x10000
80003e30:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003e34:	0207f793          	andi	a5,a5,32
80003e38:	fe078ce3          	beqz	a5,80003e30 <_Z11uart_printfPKcz+0x84>
	*( (uint8_t *) addr ) = b;
80003e3c:	00670023          	sb	t1,0(a4)
                strPos++;
            }
        }
        else{
            putch(-100,str[i],0);
            strPos++;
80003e40:	00148493          	addi	s1,s1,1
80003e44:	00068413          	mv	s0,a3
    for (i = 0; str[i] != '\0'; i++) { 
80003e48:	008907b3          	add	a5,s2,s0
80003e4c:	0007c303          	lbu	t1,0(a5)
80003e50:	00040793          	mv	a5,s0
80003e54:	fc0316e3          	bnez	t1,80003e20 <_Z11uart_printfPKcz+0x74>
    } 
  
    // ending traversal 
    va_end(ptr); 
    return strPos; 
} 
80003e58:	04c12083          	lw	ra,76(sp)
80003e5c:	04812403          	lw	s0,72(sp)
80003e60:	00048513          	mv	a0,s1
80003e64:	04012903          	lw	s2,64(sp)
80003e68:	04412483          	lw	s1,68(sp)
80003e6c:	03c12983          	lw	s3,60(sp)
80003e70:	03812a03          	lw	s4,56(sp)
80003e74:	03412a83          	lw	s5,52(sp)
80003e78:	07010113          	addi	sp,sp,112
80003e7c:	00008067          	ret
            if(str[i+1]=='x'){
80003e80:	00f907b3          	add	a5,s2,a5
80003e84:	0017c783          	lbu	a5,1(a5)
80003e88:	07800713          	li	a4,120
80003e8c:	04e78063          	beq	a5,a4,80003ecc <_Z11uart_printfPKcz+0x120>
            else if(str[i+1]=='d'){
80003e90:	06400713          	li	a4,100
80003e94:	28e78263          	beq	a5,a4,80004118 <_Z11uart_printfPKcz+0x36c>
            else if(str[i+1]=='c'){
80003e98:	06300713          	li	a4,99
80003e9c:	2ee78063          	beq	a5,a4,8000417c <_Z11uart_printfPKcz+0x3d0>
            else if (str[i+1]=='s')
80003ea0:	07300613          	li	a2,115
	return *( (volatile uint8_t *) addr );
80003ea4:	10000737          	lui	a4,0x10000
            else if (str[i+1]=='s')
80003ea8:	1cc78c63          	beq	a5,a2,80004080 <_Z11uart_printfPKcz+0x2d4>
	return *( (volatile uint8_t *) addr );
80003eac:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80003eb0:	0207f793          	andi	a5,a5,32
80003eb4:	fe078ce3          	beqz	a5,80003eac <_Z11uart_printfPKcz+0x100>
	*( (uint8_t *) addr ) = b;
80003eb8:	02500793          	li	a5,37
80003ebc:	00f70023          	sb	a5,0(a4)
                strPos++;
80003ec0:	00148493          	addi	s1,s1,1
80003ec4:	00068413          	mv	s0,a3
80003ec8:	f81ff06f          	j	80003e48 <_Z11uart_printfPKcz+0x9c>
                int value=va_arg(ptr, int);
80003ecc:	00c12503          	lw	a0,12(sp)
    char hexChars[] = "0123456789ABCDEF";
80003ed0:	00006797          	auipc	a5,0x6
80003ed4:	c7c78793          	addi	a5,a5,-900 # 80009b4c <__clzsi2+0xcc>
80003ed8:	0107c583          	lbu	a1,16(a5)
                int value=va_arg(ptr, int);
80003edc:	00052683          	lw	a3,0(a0)
    char hexChars[] = "0123456789ABCDEF";
80003ee0:	0007ae83          	lw	t4,0(a5)
80003ee4:	0047ae03          	lw	t3,4(a5)
80003ee8:	0087a303          	lw	t1,8(a5)
80003eec:	00c7a803          	lw	a6,12(a5)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003ef0:	4086d713          	srai	a4,a3,0x8
    char hexChars[] = "0123456789ABCDEF";
80003ef4:	02b10623          	sb	a1,44(sp)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003ef8:	40c6d793          	srai	a5,a3,0xc
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003efc:	03010593          	addi	a1,sp,48
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003f00:	4186d613          	srai	a2,a3,0x18
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003f04:	00f77713          	andi	a4,a4,15
    char hexChars[] = "0123456789ABCDEF";
80003f08:	01d12e23          	sw	t4,28(sp)
80003f0c:	03012423          	sw	a6,40(sp)
80003f10:	03c12023          	sw	t3,32(sp)
80003f14:	02612223          	sw	t1,36(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003f18:	00e58733          	add	a4,a1,a4
80003f1c:	01c6d893          	srli	a7,a3,0x1c
80003f20:	00f7f793          	andi	a5,a5,15
80003f24:	00f67613          	andi	a2,a2,15
80003f28:	011588b3          	add	a7,a1,a7
80003f2c:	00c58633          	add	a2,a1,a2
80003f30:	fec74e03          	lbu	t3,-20(a4)
80003f34:	00f587b3          	add	a5,a1,a5
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003f38:	4046d813          	srai	a6,a3,0x4
80003f3c:	4146d593          	srai	a1,a3,0x14
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003f40:	fec8c703          	lbu	a4,-20(a7)
80003f44:	fec64303          	lbu	t1,-20(a2)
80003f48:	fec7c783          	lbu	a5,-20(a5)
80003f4c:	03010613          	addi	a2,sp,48
80003f50:	00f87813          	andi	a6,a6,15
80003f54:	00f5f593          	andi	a1,a1,15
80003f58:	01060833          	add	a6,a2,a6
80003f5c:	00b605b3          	add	a1,a2,a1
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80003f60:	4106d613          	srai	a2,a3,0x10
80003f64:	fec84883          	lbu	a7,-20(a6)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003f68:	00f6f693          	andi	a3,a3,15
80003f6c:	fec5c803          	lbu	a6,-20(a1)
80003f70:	00f67613          	andi	a2,a2,15
80003f74:	008e1593          	slli	a1,t3,0x8
80003f78:	03010e13          	addi	t3,sp,48
80003f7c:	00de06b3          	add	a3,t3,a3
80003f80:	00ce0633          	add	a2,t3,a2
80003f84:	00831313          	slli	t1,t1,0x8
80003f88:	0157f7b3          	and	a5,a5,s5
80003f8c:	01577733          	and	a4,a4,s5
80003f90:	00b7e7b3          	or	a5,a5,a1
80003f94:	00676733          	or	a4,a4,t1
80003f98:	fec6c583          	lbu	a1,-20(a3)
80003f9c:	fec64683          	lbu	a3,-20(a2)
80003fa0:	01089893          	slli	a7,a7,0x10
80003fa4:	01081613          	slli	a2,a6,0x10
80003fa8:	0147f7b3          	and	a5,a5,s4
80003fac:	01477733          	and	a4,a4,s4
80003fb0:	0117e7b3          	or	a5,a5,a7
80003fb4:	00c76733          	or	a4,a4,a2
80003fb8:	01869693          	slli	a3,a3,0x18
80003fbc:	01859613          	slli	a2,a1,0x18
80003fc0:	0137f7b3          	and	a5,a5,s3
80003fc4:	01377733          	and	a4,a4,s3
80003fc8:	00d76733          	or	a4,a4,a3
80003fcc:	00c7e7b3          	or	a5,a5,a2
80003fd0:	00f12a23          	sw	a5,20(sp)
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80003fd4:	00010c23          	sb	zero,24(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003fd8:	00e12823          	sw	a4,16(sp)
80003fdc:	01010813          	addi	a6,sp,16
    while(string[i] != '\0'){
80003fe0:	00084703          	lbu	a4,0(a6)
                int value=va_arg(ptr, int);
80003fe4:	00450513          	addi	a0,a0,4
80003fe8:	00a12623          	sw	a0,12(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80003fec:	f9c00893          	li	a7,-100
80003ff0:	00000513          	li	a0,0
80003ff4:	00100793          	li	a5,1
        if(string[i]=='\n'){
80003ff8:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80003ffc:	4c000f13          	li	t5,1216
    screen[location] = buffer;
80004000:	88000e37          	lui	t3,0x88000
            if(color>15){
80004004:	00f00e93          	li	t4,15
        if(!putch(location + i, string[i],color)){
80004008:	011506b3          	add	a3,a0,a7
    while(string[i] != '\0'){
8000400c:	04070463          	beqz	a4,80004054 <_Z11uart_printfPKcz+0x2a8>
        if(string[i]=='\n'){
80004010:	0e670e63          	beq	a4,t1,8000410c <_Z11uart_printfPKcz+0x360>
    unsigned short buffer = (color << 8) | c;
80004014:	00879593          	slli	a1,a5,0x8
    screen[location] = buffer;
80004018:	00169613          	slli	a2,a3,0x1
            color++;
8000401c:	00178793          	addi	a5,a5,1
    unsigned short buffer = (color << 8) | c;
80004020:	00e5e5b3          	or	a1,a1,a4
    screen[location] = buffer;
80004024:	00ce0633          	add	a2,t3,a2
            color++;
80004028:	0ff7f793          	andi	a5,a5,255
    if(location<0){
8000402c:	0206cc63          	bltz	a3,80004064 <_Z11uart_printfPKcz+0x2b8>
    if(location>SCREEN_SIZE){
80004030:	02df4663          	blt	t5,a3,8000405c <_Z11uart_printfPKcz+0x2b0>
    screen[location] = buffer;
80004034:	00b61023          	sh	a1,0(a2)
            if(color>15){
80004038:	00fef463          	bgeu	t4,a5,80004040 <_Z11uart_printfPKcz+0x294>
                color=1;
8000403c:	00100793          	li	a5,1
80004040:	00180813          	addi	a6,a6,1
    while(string[i] != '\0'){
80004044:	00084703          	lbu	a4,0(a6)
80004048:	00150513          	addi	a0,a0,1
        if(!putch(location + i, string[i],color)){
8000404c:	011506b3          	add	a3,a0,a7
    while(string[i] != '\0'){
80004050:	fc0710e3          	bnez	a4,80004010 <_Z11uart_printfPKcz+0x264>
80004054:	0ff57513          	andi	a0,a0,255
80004058:	00a484b3          	add	s1,s1,a0
8000405c:	00240413          	addi	s0,s0,2
80004060:	de9ff06f          	j	80003e48 <_Z11uart_printfPKcz+0x9c>
	return *( (volatile uint8_t *) addr );
80004064:	100006b7          	lui	a3,0x10000
80004068:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
8000406c:	0207f793          	andi	a5,a5,32
80004070:	fe078ce3          	beqz	a5,80004068 <_Z11uart_printfPKcz+0x2bc>
	*( (uint8_t *) addr ) = b;
80004074:	00e68023          	sb	a4,0(a3)
        return 0;
80004078:	00240413          	addi	s0,s0,2
8000407c:	dcdff06f          	j	80003e48 <_Z11uart_printfPKcz+0x9c>
                char *value=va_arg(ptr, char*);
80004080:	00c12683          	lw	a3,12(sp)
80004084:	00000713          	li	a4,0
80004088:	f9c00813          	li	a6,-100
8000408c:	0006a883          	lw	a7,0(a3)
80004090:	00468613          	addi	a2,a3,4
80004094:	00c12623          	sw	a2,12(sp)
    while(string[i] != '\0'){
80004098:	00e886b3          	add	a3,a7,a4
8000409c:	0006c683          	lbu	a3,0(a3)
                char *value=va_arg(ptr, char*);
800040a0:	00100793          	li	a5,1
        if(string[i]=='\n'){
800040a4:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
800040a8:	4c000f13          	li	t5,1216
    screen[location] = buffer;
800040ac:	88000e37          	lui	t3,0x88000
            if(color>15){
800040b0:	00f00e93          	li	t4,15
        if(!putch(location + i, string[i],color)){
800040b4:	01070633          	add	a2,a4,a6
    while(string[i] != '\0'){
800040b8:	04068463          	beqz	a3,80004100 <_Z11uart_printfPKcz+0x354>
        if(string[i]=='\n'){
800040bc:	0a668263          	beq	a3,t1,80004160 <_Z11uart_printfPKcz+0x3b4>
    unsigned short buffer = (color << 8) | c;
800040c0:	00879513          	slli	a0,a5,0x8
    screen[location] = buffer;
800040c4:	00161593          	slli	a1,a2,0x1
            color++;
800040c8:	00178793          	addi	a5,a5,1
    unsigned short buffer = (color << 8) | c;
800040cc:	00d56533          	or	a0,a0,a3
    screen[location] = buffer;
800040d0:	00be05b3          	add	a1,t3,a1
            color++;
800040d4:	0ff7f793          	andi	a5,a5,255
    if(location<0){
800040d8:	06064463          	bltz	a2,80004140 <_Z11uart_printfPKcz+0x394>
    if(location>SCREEN_SIZE){
800040dc:	08cf4a63          	blt	t5,a2,80004170 <_Z11uart_printfPKcz+0x3c4>
    screen[location] = buffer;
800040e0:	00a59023          	sh	a0,0(a1)
            if(color>15){
800040e4:	00fef463          	bgeu	t4,a5,800040ec <_Z11uart_printfPKcz+0x340>
                color=1;
800040e8:	00100793          	li	a5,1
800040ec:	00170713          	addi	a4,a4,1
    while(string[i] != '\0'){
800040f0:	00e886b3          	add	a3,a7,a4
800040f4:	0006c683          	lbu	a3,0(a3)
        if(!putch(location + i, string[i],color)){
800040f8:	01070633          	add	a2,a4,a6
    while(string[i] != '\0'){
800040fc:	fc0690e3          	bnez	a3,800040bc <_Z11uart_printfPKcz+0x310>
                strPos+=printString(-100,value,0);
80004100:	00e484b3          	add	s1,s1,a4
80004104:	00240413          	addi	s0,s0,2
80004108:	d41ff06f          	j	80003e48 <_Z11uart_printfPKcz+0x9c>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
8000410c:	fc08f893          	andi	a7,a7,-64
80004110:	04088893          	addi	a7,a7,64
            continue;
80004114:	f2dff06f          	j	80004040 <_Z11uart_printfPKcz+0x294>
                unsigned int value=va_arg(ptr, unsigned int);
80004118:	00c12783          	lw	a5,12(sp)
                strPos+=printDec(-100,value,0);
8000411c:	00000613          	li	a2,0
80004120:	f9c00513          	li	a0,-100
80004124:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
80004128:	00478793          	addi	a5,a5,4
8000412c:	00f12623          	sw	a5,12(sp)
                strPos+=printDec(-100,value,0);
80004130:	be5fe0ef          	jal	ra,80002d14 <_Z8printDeciic>
80004134:	00a484b3          	add	s1,s1,a0
80004138:	00240413          	addi	s0,s0,2
8000413c:	d0dff06f          	j	80003e48 <_Z11uart_printfPKcz+0x9c>
	return *( (volatile uint8_t *) addr );
80004140:	10000737          	lui	a4,0x10000
80004144:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80004148:	0207f793          	andi	a5,a5,32
8000414c:	fe078ce3          	beqz	a5,80004144 <_Z11uart_printfPKcz+0x398>
	*( (uint8_t *) addr ) = b;
80004150:	00d70023          	sb	a3,0(a4)
            return 0;
80004154:	00000713          	li	a4,0
                strPos+=printString(-100,value,0);
80004158:	00e484b3          	add	s1,s1,a4
8000415c:	fa9ff06f          	j	80004104 <_Z11uart_printfPKcz+0x358>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80004160:	fc087813          	andi	a6,a6,-64
80004164:	04080813          	addi	a6,a6,64
            continue;
80004168:	00170713          	addi	a4,a4,1
8000416c:	f85ff06f          	j	800040f0 <_Z11uart_printfPKcz+0x344>
            return 0;
80004170:	00000713          	li	a4,0
                strPos+=printString(-100,value,0);
80004174:	00e484b3          	add	s1,s1,a4
80004178:	f8dff06f          	j	80004104 <_Z11uart_printfPKcz+0x358>
                char value=va_arg(ptr, int);
8000417c:	00c12783          	lw	a5,12(sp)
	return *( (volatile uint8_t *) addr );
80004180:	10000737          	lui	a4,0x10000
                char value=va_arg(ptr, int);
80004184:	0007c683          	lbu	a3,0(a5)
80004188:	00478793          	addi	a5,a5,4
8000418c:	00f12623          	sw	a5,12(sp)
	return *( (volatile uint8_t *) addr );
80004190:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80004194:	0207f793          	andi	a5,a5,32
80004198:	fe078ce3          	beqz	a5,80004190 <_Z11uart_printfPKcz+0x3e4>
	*( (uint8_t *) addr ) = b;
8000419c:	00d70023          	sb	a3,0(a4)
                strPos++;
800041a0:	00148493          	addi	s1,s1,1
800041a4:	00240413          	addi	s0,s0,2
800041a8:	ca1ff06f          	j	80003e48 <_Z11uart_printfPKcz+0x9c>
    int strPos=0;
800041ac:	00000493          	li	s1,0
    return strPos; 
800041b0:	ca9ff06f          	j	80003e58 <_Z11uart_printfPKcz+0xac>

800041b4 <_Z11clearScreenv>:
    screen[location] = buffer;
800041b4:	000016b7          	lui	a3,0x1

// *****************************************************************************
// Clears the screen and resets the screenPos
void clearScreen(){
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
800041b8:	88001737          	lui	a4,0x88001
void clearScreen(){
800041bc:	880007b7          	lui	a5,0x88000
    screen[location] = buffer;
800041c0:	f2068693          	addi	a3,a3,-224 # f20 <_stack_size-0x70e0>
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
800041c4:	98070713          	addi	a4,a4,-1664 # 88000980 <_stack_top+0x7c00980>
    screen[location] = buffer;
800041c8:	00d79023          	sh	a3,0(a5) # 88000000 <_stack_top+0x7c00000>
    return 1;
800041cc:	00278793          	addi	a5,a5,2
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
800041d0:	fee79ce3          	bne	a5,a4,800041c8 <_Z11clearScreenv+0x14>
        putch(i,' ',15);
    }
    screenPos=0;
800041d4:	00006797          	auipc	a5,0x6
800041d8:	76079e23          	sh	zero,1916(a5) # 8000a950 <screenPos>
}
800041dc:	00008067          	ret

800041e0 <_Z17resetScreenVectorv>:
void resetScreenVector(){
    screenPos=0;
800041e0:	00006797          	auipc	a5,0x6
800041e4:	76079823          	sh	zero,1904(a5) # 8000a950 <screenPos>
}
800041e8:	00008067          	ret

800041ec <_Z9readFlashj>:
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C
unsigned int readFlash(unsigned int adress){
800041ec:	ff010113          	addi	sp,sp,-16
    volatile char *flashReady = (char *)FLASH_READY;
    volatile char *flashRen = (char *)FLASH_REN;
    volatile unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
    volatile unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
    volatile unsigned int data = 0;
800041f0:	00012623          	sw	zero,12(sp)
    *flashAdress = adress;
800041f4:	8b0007b7          	lui	a5,0x8b000
800041f8:	00a7a223          	sw	a0,4(a5) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
800041fc:	00100713          	li	a4,1
80004200:	00e780a3          	sb	a4,1(a5)
    // FML it get stuck if you dont do the nop here
    asm volatile ("nop");
80004204:	00000013          	nop
    asm volatile ("nop");
80004208:	00000013          	nop
    asm volatile ("nop");
8000420c:	00000013          	nop
    while(1){
        if(*flashReady != 0) {
80004210:	8b000737          	lui	a4,0x8b000
80004214:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
80004218:	0ff7f793          	andi	a5,a5,255
8000421c:	fe078ce3          	beqz	a5,80004214 <_Z9readFlashj+0x28>
            break; // Wait until flash is ready
        }
    }
    data = *flashData;
80004220:	00c72783          	lw	a5,12(a4)
80004224:	00f12623          	sw	a5,12(sp)
    return data;
80004228:	00c12503          	lw	a0,12(sp)
}
8000422c:	01010113          	addi	sp,sp,16
80004230:	00008067          	ret

80004234 <_Z25getFileStartAddressByNamePKcPmS1_>:
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
    volatile uint32_t tempAddress = 0;
    volatile uint32_t readData;

    // Check magic number
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
80004234:	435357b7          	lui	a5,0x43535
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
80004238:	f8010113          	addi	sp,sp,-128
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
8000423c:	95278793          	addi	a5,a5,-1710 # 43534952 <_stack_size+0x4352c952>
80004240:	02f12c23          	sw	a5,56(sp)
80004244:	534637b7          	lui	a5,0x53463
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
80004248:	05912a23          	sw	s9,84(sp)
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
8000424c:	e5978793          	addi	a5,a5,-423 # 53462e59 <_stack_size+0x5345ae59>
    *flashAdress = adress;
80004250:	8b000cb7          	lui	s9,0x8b000
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
80004254:	06812c23          	sw	s0,120(sp)
80004258:	06912a23          	sw	s1,116(sp)
8000425c:	07212823          	sw	s2,112(sp)
80004260:	07312623          	sw	s3,108(sp)
80004264:	07412423          	sw	s4,104(sp)
80004268:	07512223          	sw	s5,100(sp)
8000426c:	07612023          	sw	s6,96(sp)
80004270:	05712e23          	sw	s7,92(sp)
80004274:	06112e23          	sw	ra,124(sp)
80004278:	05812c23          	sw	s8,88(sp)
8000427c:	05a12823          	sw	s10,80(sp)
80004280:	05b12623          	sw	s11,76(sp)
80004284:	00050493          	mv	s1,a0
80004288:	00b12423          	sw	a1,8(sp)
8000428c:	00c12623          	sw	a2,12(sp)
    volatile uint32_t tempAddress = 0;
80004290:	00012e23          	sw	zero,28(sp)
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
80004294:	02f12e23          	sw	a5,60(sp)
    for (int i = 0; i < 2; i++) {
80004298:	03810913          	addi	s2,sp,56
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
8000429c:	00000413          	li	s0,0
    *flashRen = 1;
800042a0:	001c8b13          	addi	s6,s9,1 # 8b000001 <_stack_top+0xac00001>
800042a4:	00100a93          	li	s5,1
        readData = readFlash(tempAddress);
        for (int j = 0; j < 4; j++) {
            char c = (readData >> (8 * j)) & 0xFF;
            uart_printf("Magic[%d] = %c\r\n", i * 4 + j, c);
800042a8:	00006997          	auipc	s3,0x6
800042ac:	8b898993          	addi	s3,s3,-1864 # 80009b60 <__clzsi2+0xe0>
        for (int j = 0; j < 4; j++) {
800042b0:	00400a13          	li	s4,4
    for (int i = 0; i < 2; i++) {
800042b4:	00800b93          	li	s7,8
        readData = readFlash(tempAddress);
800042b8:	01c12783          	lw	a5,28(sp)
    volatile unsigned int data = 0;
800042bc:	02012223          	sw	zero,36(sp)
    *flashAdress = adress;
800042c0:	00fca223          	sw	a5,4(s9)
    *flashRen = 1;
800042c4:	015b0023          	sb	s5,0(s6)
    asm volatile ("nop");
800042c8:	00000013          	nop
    asm volatile ("nop");
800042cc:	00000013          	nop
    asm volatile ("nop");
800042d0:	00000013          	nop
        if(*flashReady != 0) {
800042d4:	000cc783          	lbu	a5,0(s9)
800042d8:	0ff7f793          	andi	a5,a5,255
800042dc:	fe078ce3          	beqz	a5,800042d4 <_Z25getFileStartAddressByNamePKcPmS1_+0xa0>
    data = *flashData;
800042e0:	00cca783          	lw	a5,12(s9)
        for (int j = 0; j < 4; j++) {
800042e4:	00000d93          	li	s11,0
    data = *flashData;
800042e8:	02f12223          	sw	a5,36(sp)
    return data;
800042ec:	02412783          	lw	a5,36(sp)
        readData = readFlash(tempAddress);
800042f0:	02f12023          	sw	a5,32(sp)
            char c = (readData >> (8 * j)) & 0xFF;
800042f4:	02012d03          	lw	s10,32(sp)
800042f8:	003d9693          	slli	a3,s11,0x3
800042fc:	008d8c33          	add	s8,s11,s0
80004300:	00dd5d33          	srl	s10,s10,a3
            uart_printf("Magic[%d] = %c\r\n", i * 4 + j, c);
80004304:	0ffd7613          	andi	a2,s10,255
80004308:	000c0593          	mv	a1,s8
8000430c:	00098513          	mv	a0,s3
80004310:	a9dff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
            if (c != expectedMagic[i * 4 + j]) {
80004314:	01b906b3          	add	a3,s2,s11
80004318:	0006c683          	lbu	a3,0(a3)
8000431c:	0ffd7d13          	andi	s10,s10,255
        for (int j = 0; j < 4; j++) {
80004320:	001d8d93          	addi	s11,s11,1
            if (c != expectedMagic[i * 4 + j]) {
80004324:	29a69663          	bne	a3,s10,800045b0 <_Z25getFileStartAddressByNamePKcPmS1_+0x37c>
        for (int j = 0; j < 4; j++) {
80004328:	fd4d96e3          	bne	s11,s4,800042f4 <_Z25getFileStartAddressByNamePKcPmS1_+0xc0>
                uart_printf("Invalid magic number at position %d\r\n", i * 4 + j);
                return 0xFFFFFFFF;
            }
        }
        tempAddress += 4;
8000432c:	01c12783          	lw	a5,28(sp)
80004330:	00440413          	addi	s0,s0,4
80004334:	00490913          	addi	s2,s2,4
80004338:	00478793          	addi	a5,a5,4
8000433c:	00f12e23          	sw	a5,28(sp)
    for (int i = 0; i < 2; i++) {
80004340:	f7741ce3          	bne	s0,s7,800042b8 <_Z25getFileStartAddressByNamePKcPmS1_+0x84>
    }

    // Read program count
    unsigned char programCount = readFlash(tempAddress)& 0xFF;
80004344:	01c12703          	lw	a4,28(sp)
    *flashAdress = adress;
80004348:	8b0007b7          	lui	a5,0x8b000
    volatile unsigned int data = 0;
8000434c:	02012423          	sw	zero,40(sp)
    *flashAdress = adress;
80004350:	00e7a223          	sw	a4,4(a5) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
80004354:	00100713          	li	a4,1
80004358:	00e780a3          	sb	a4,1(a5)
    asm volatile ("nop");
8000435c:	00000013          	nop
    asm volatile ("nop");
80004360:	00000013          	nop
    asm volatile ("nop");
80004364:	00000013          	nop
        if(*flashReady != 0) {
80004368:	8b000737          	lui	a4,0x8b000
8000436c:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
80004370:	0ff7f793          	andi	a5,a5,255
80004374:	fe078ce3          	beqz	a5,8000436c <_Z25getFileStartAddressByNamePKcPmS1_+0x138>
    data = *flashData;
80004378:	00c72783          	lw	a5,12(a4)
    uart_printf("Program count: %d\r\n", programCount);
8000437c:	00006517          	auipc	a0,0x6
80004380:	82050513          	addi	a0,a0,-2016 # 80009b9c <__clzsi2+0x11c>
    data = *flashData;
80004384:	02f12423          	sw	a5,40(sp)
    return data;
80004388:	02812403          	lw	s0,40(sp)
    uart_printf("Program count: %d\r\n", programCount);
8000438c:	0ff47593          	andi	a1,s0,255
    unsigned char programCount = readFlash(tempAddress)& 0xFF;
80004390:	00058413          	mv	s0,a1
    uart_printf("Program count: %d\r\n", programCount);
80004394:	a19ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
    // signed char programCount = 2;

    tempAddress += 1;
80004398:	01c12783          	lw	a5,28(sp)
    uint32_t headersAddress = 0;
    // For each program
    while(programCount--) {
8000439c:	fff40a93          	addi	s5,s0,-1
800043a0:	0ffafa93          	andi	s5,s5,255
    tempAddress += 1;
800043a4:	00178793          	addi	a5,a5,1
800043a8:	00f12e23          	sw	a5,28(sp)
    while(programCount--) {
800043ac:	0e040663          	beqz	s0,80004498 <_Z25getFileStartAddressByNamePKcPmS1_+0x264>
800043b0:	001a8a93          	addi	s5,s5,1
        uart_printf("Checking program %d...\r\n", programCount+1);
800043b4:	00005b97          	auipc	s7,0x5
800043b8:	7fcb8b93          	addi	s7,s7,2044 # 80009bb0 <__clzsi2+0x130>
    *flashAdress = adress;
800043bc:	8b000db7          	lui	s11,0x8b000
    *flashRen = 1;
800043c0:	00100993          	li	s3,1
        headersAddress = tempAddress;
        while (c_flash != 0) {
            readData = readFlash(tempAddress); 
            c_flash = readData & 0xFF;
            c_input = filename[pos];
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);
800043c4:	00006917          	auipc	s2,0x6
800043c8:	80890913          	addi	s2,s2,-2040 # 80009bcc <__clzsi2+0x14c>
        uart_printf("Checking program %d...\r\n", programCount+1);
800043cc:	000a8593          	mv	a1,s5
800043d0:	000b8513          	mv	a0,s7
800043d4:	9d9ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
        headersAddress = tempAddress;
800043d8:	01c12b03          	lw	s6,28(sp)
        int pos = 0;
800043dc:	00000c13          	li	s8,0
        int match = 1;
800043e0:	00100a13          	li	s4,1
    *flashRen = 1;
800043e4:	001d8413          	addi	s0,s11,1 # 8b000001 <_stack_top+0xac00001>
            readData = readFlash(tempAddress); 
800043e8:	01c12783          	lw	a5,28(sp)
    volatile unsigned int data = 0;
800043ec:	02012623          	sw	zero,44(sp)
    *flashAdress = adress;
800043f0:	00fda223          	sw	a5,4(s11)
    *flashRen = 1;
800043f4:	01340023          	sb	s3,0(s0)
    asm volatile ("nop");
800043f8:	00000013          	nop
    asm volatile ("nop");
800043fc:	00000013          	nop
    asm volatile ("nop");
80004400:	00000013          	nop
        if(*flashReady != 0) {
80004404:	000dc783          	lbu	a5,0(s11)
80004408:	0ff7f793          	andi	a5,a5,255
8000440c:	fe078ce3          	beqz	a5,80004404 <_Z25getFileStartAddressByNamePKcPmS1_+0x1d0>
    data = *flashData;
80004410:	00cda683          	lw	a3,12(s11)
            c_input = filename[pos];
80004414:	018487b3          	add	a5,s1,s8
80004418:	0007cd03          	lbu	s10,0(a5)
    data = *flashData;
8000441c:	02d12623          	sw	a3,44(sp)
    return data;
80004420:	02c12603          	lw	a2,44(sp)
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);
80004424:	000c0593          	mv	a1,s8
80004428:	000d0693          	mv	a3,s10
            readData = readFlash(tempAddress); 
8000442c:	02c12023          	sw	a2,32(sp)
            c_flash = readData & 0xFF;
80004430:	02012603          	lw	a2,32(sp)
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);
80004434:	00090513          	mv	a0,s2
            if (c_flash != c_input) {
                match = 0;
            }

            tempAddress += 1;
            pos++;
80004438:	001c0c13          	addi	s8,s8,1
            c_flash = readData & 0xFF;
8000443c:	0ff67c93          	andi	s9,a2,255
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);
80004440:	000c8613          	mv	a2,s9
80004444:	969ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
            tempAddress += 1;
80004448:	01c12783          	lw	a5,28(sp)
8000444c:	00178793          	addi	a5,a5,1
80004450:	00f12e23          	sw	a5,28(sp)
            if (c_flash != c_input) {
80004454:	01ac8863          	beq	s9,s10,80004464 <_Z25getFileStartAddressByNamePKcPmS1_+0x230>
        while (c_flash != 0) {
80004458:	000c8a63          	beqz	s9,8000446c <_Z25getFileStartAddressByNamePKcPmS1_+0x238>
                match = 0;
8000445c:	00000a13          	li	s4,0
80004460:	f89ff06f          	j	800043e8 <_Z25getFileStartAddressByNamePKcPmS1_+0x1b4>
        while (c_flash != 0) {
80004464:	f80c92e3          	bnez	s9,800043e8 <_Z25getFileStartAddressByNamePKcPmS1_+0x1b4>
          }
          // Found match
          if (match) {
80004468:	080a1263          	bnez	s4,800044ec <_Z25getFileStartAddressByNamePKcPmS1_+0x2b8>
            // Returns the headers address
            return headersAddress;
          }
          
          // Skip start and end addresses
          tempAddress += 4; // start
8000446c:	01c12783          	lw	a5,28(sp)
80004470:	fffa8a93          	addi	s5,s5,-1
80004474:	00478793          	addi	a5,a5,4
80004478:	00f12e23          	sw	a5,28(sp)
          tempAddress += 4; // end
8000447c:	01c12783          	lw	a5,28(sp)
80004480:	00478793          	addi	a5,a5,4
80004484:	00f12e23          	sw	a5,28(sp)
          
          // Skip 256 bytes of sprite
          tempAddress += 256;
80004488:	01c12783          	lw	a5,28(sp)
8000448c:	10078793          	addi	a5,a5,256
80004490:	00f12e23          	sw	a5,28(sp)
    while(programCount--) {
80004494:	f20a9ce3          	bnez	s5,800043cc <_Z25getFileStartAddressByNamePKcPmS1_+0x198>
        }
    uart_printf("File not found: %s\r\n", filename);
80004498:	00048593          	mv	a1,s1
8000449c:	00005517          	auipc	a0,0x5
800044a0:	79c50513          	addi	a0,a0,1948 # 80009c38 <__clzsi2+0x1b8>
800044a4:	909ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
    return 0xFFFFFFFF;
800044a8:	fff00b13          	li	s6,-1
}
800044ac:	07c12083          	lw	ra,124(sp)
800044b0:	07812403          	lw	s0,120(sp)
800044b4:	000b0513          	mv	a0,s6
800044b8:	07412483          	lw	s1,116(sp)
800044bc:	07012903          	lw	s2,112(sp)
800044c0:	06c12983          	lw	s3,108(sp)
800044c4:	06812a03          	lw	s4,104(sp)
800044c8:	06412a83          	lw	s5,100(sp)
800044cc:	06012b03          	lw	s6,96(sp)
800044d0:	05c12b83          	lw	s7,92(sp)
800044d4:	05812c03          	lw	s8,88(sp)
800044d8:	05412c83          	lw	s9,84(sp)
800044dc:	05012d03          	lw	s10,80(sp)
800044e0:	04c12d83          	lw	s11,76(sp)
800044e4:	08010113          	addi	sp,sp,128
800044e8:	00008067          	ret
            asm volatile ("nop");
800044ec:	00000013          	nop
            asm volatile ("nop");
800044f0:	00000013          	nop
            uint32_t start_address = readFlash(tempAddress);
800044f4:	01c12783          	lw	a5,28(sp)
    *flashAdress = adress;
800044f8:	8b000737          	lui	a4,0x8b000
    volatile unsigned int data = 0;
800044fc:	02012a23          	sw	zero,52(sp)
    *flashAdress = adress;
80004500:	00f72223          	sw	a5,4(a4) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
80004504:	00100793          	li	a5,1
80004508:	00f700a3          	sb	a5,1(a4)
    asm volatile ("nop");
8000450c:	00000013          	nop
    asm volatile ("nop");
80004510:	00000013          	nop
    asm volatile ("nop");
80004514:	00000013          	nop
        if(*flashReady != 0) {
80004518:	8b000437          	lui	s0,0x8b000
8000451c:	00044783          	lbu	a5,0(s0) # 8b000000 <_stack_top+0xac00000>
80004520:	0ff7f793          	andi	a5,a5,255
80004524:	fe078ce3          	beqz	a5,8000451c <_Z25getFileStartAddressByNamePKcPmS1_+0x2e8>
    data = *flashData;
80004528:	00c42783          	lw	a5,12(s0)
            uart_printf("  Match found! Start address: 0x%x\r\n", start_address);
8000452c:	00005517          	auipc	a0,0x5
80004530:	6cc50513          	addi	a0,a0,1740 # 80009bf8 <__clzsi2+0x178>
    data = *flashData;
80004534:	02f12a23          	sw	a5,52(sp)
    return data;
80004538:	03412483          	lw	s1,52(sp)
            uart_printf("  Match found! Start address: 0x%x\r\n", start_address);
8000453c:	00048593          	mv	a1,s1
80004540:	86dff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
            tempAddress += 4; // Move past start address
80004544:	01c12783          	lw	a5,28(sp)
80004548:	00478793          	addi	a5,a5,4
8000454c:	00f12e23          	sw	a5,28(sp)
            uint32_t end_address = readFlash(tempAddress);
80004550:	01c12783          	lw	a5,28(sp)
    volatile unsigned int data = 0;
80004554:	02012823          	sw	zero,48(sp)
    *flashAdress = adress;
80004558:	00f42223          	sw	a5,4(s0)
    *flashRen = 1;
8000455c:	00100793          	li	a5,1
80004560:	00f400a3          	sb	a5,1(s0)
    asm volatile ("nop");
80004564:	00000013          	nop
    asm volatile ("nop");
80004568:	00000013          	nop
    asm volatile ("nop");
8000456c:	00000013          	nop
        if(*flashReady != 0) {
80004570:	8b000737          	lui	a4,0x8b000
80004574:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
80004578:	0ff7f793          	andi	a5,a5,255
8000457c:	fe078ce3          	beqz	a5,80004574 <_Z25getFileStartAddressByNamePKcPmS1_+0x340>
    data = *flashData;
80004580:	00c72783          	lw	a5,12(a4)
            uart_printf("  End address: 0x%x\r\n", end_address);
80004584:	00005517          	auipc	a0,0x5
80004588:	69c50513          	addi	a0,a0,1692 # 80009c20 <__clzsi2+0x1a0>
    data = *flashData;
8000458c:	02f12823          	sw	a5,48(sp)
    return data;
80004590:	03012403          	lw	s0,48(sp)
            uart_printf("  End address: 0x%x\r\n", end_address);
80004594:	00040593          	mv	a1,s0
80004598:	815ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
            *file_start = start_address;
8000459c:	00812783          	lw	a5,8(sp)
800045a0:	0097a023          	sw	s1,0(a5)
            *file_end = end_address;
800045a4:	00c12783          	lw	a5,12(sp)
800045a8:	0087a023          	sw	s0,0(a5)
            return headersAddress;
800045ac:	f01ff06f          	j	800044ac <_Z25getFileStartAddressByNamePKcPmS1_+0x278>
                uart_printf("Invalid magic number at position %d\r\n", i * 4 + j);
800045b0:	000c0593          	mv	a1,s8
800045b4:	00005517          	auipc	a0,0x5
800045b8:	5c050513          	addi	a0,a0,1472 # 80009b74 <__clzsi2+0xf4>
800045bc:	ff0ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
                return 0xFFFFFFFF;
800045c0:	fff00b13          	li	s6,-1
800045c4:	ee9ff06f          	j	800044ac <_Z25getFileStartAddressByNamePKcPmS1_+0x278>

800045c8 <_Z11riscy_fopenPKc>:
} file_t;

file_t files[MAX_FILES];
unsigned int fileCount = 0;

int16_t riscy_fopen(const char* filename) {
800045c8:	fd010113          	addi	sp,sp,-48
    uint32_t startAddress = 0;
    uint32_t endAddress = 0;
    
    // Look up the file by its name
    uint32_t headerAddress = getFileStartAddressByName(filename, &startAddress, &endAddress);
800045cc:	00c10613          	addi	a2,sp,12
800045d0:	00810593          	addi	a1,sp,8
int16_t riscy_fopen(const char* filename) {
800045d4:	02912223          	sw	s1,36(sp)
800045d8:	02112623          	sw	ra,44(sp)
800045dc:	02812423          	sw	s0,40(sp)
800045e0:	03212023          	sw	s2,32(sp)
800045e4:	01312e23          	sw	s3,28(sp)
800045e8:	00050493          	mv	s1,a0
    uint32_t startAddress = 0;
800045ec:	00012423          	sw	zero,8(sp)
    uint32_t endAddress = 0;
800045f0:	00012623          	sw	zero,12(sp)
    uint32_t headerAddress = getFileStartAddressByName(filename, &startAddress, &endAddress);
800045f4:	c41ff0ef          	jal	ra,80004234 <_Z25getFileStartAddressByNamePKcPmS1_>
    
    if (headerAddress == 0xFFFFFFFF) {
800045f8:	fff00793          	li	a5,-1
800045fc:	0ef50c63          	beq	a0,a5,800046f4 <_Z11riscy_fopenPKc+0x12c>
        uart_printf("Error: File not found - %s\r\n", filename);
        return 0;
    }

    // If file is found, initialize the file structure
    if (fileCount < MAX_FILES) {
80004600:	00006997          	auipc	s3,0x6
80004604:	34c98993          	addi	s3,s3,844 # 8000a94c <fileCount>
80004608:	0009a703          	lw	a4,0(s3)
8000460c:	00f00793          	li	a5,15
80004610:	0ae7ec63          	bltu	a5,a4,800046c8 <_Z11riscy_fopenPKc+0x100>
        file_t* newFile = &files[fileCount];
        newFile->startAddress = startAddress;
80004614:	00171913          	slli	s2,a4,0x1
80004618:	00812683          	lw	a3,8(sp)
        newFile->endAddress = endAddress;
8000461c:	00c12803          	lw	a6,12(sp)
        newFile->startAddress = startAddress;
80004620:	00e90933          	add	s2,s2,a4
80004624:	00491913          	slli	s2,s2,0x4
80004628:	00006417          	auipc	s0,0x6
8000462c:	00c40413          	addi	s0,s0,12 # 8000a634 <files>
80004630:	012407b3          	add	a5,s0,s2
        newFile->currentAddress = startAddress;
        newFile->valid = 1; // Mark the file as valid
80004634:	00100713          	li	a4,1
        newFile->startAddress = startAddress;
80004638:	00d7a023          	sw	a3,0(a5)
        newFile->endAddress = endAddress;
8000463c:	0107a223          	sw	a6,4(a5)
        newFile->currentAddress = startAddress;
80004640:	00d7a423          	sw	a3,8(a5)
        newFile->valid = 1; // Mark the file as valid
80004644:	00e78623          	sb	a4,12(a5)
        printf("0x%x to 0x%x\r\n",newFile->startAddress, newFile->endAddress);
80004648:	00080613          	mv	a2,a6
8000464c:	00068593          	mv	a1,a3
80004650:	00005517          	auipc	a0,0x5
80004654:	62050513          	addi	a0,a0,1568 # 80009c70 <__clzsi2+0x1f0>
80004658:	ca5fe0ef          	jal	ra,800032fc <_Z6printfPKcz>

        short fileNameLength = 0;
        while(*filename && fileNameLength < MAX_FILE_NAME_LENGTH) {
8000465c:	0004c783          	lbu	a5,0(s1)
80004660:	02078a63          	beqz	a5,80004694 <_Z11riscy_fopenPKc+0xcc>
80004664:	00d90713          	addi	a4,s2,13
80004668:	00048793          	mv	a5,s1
8000466c:	00e40733          	add	a4,s0,a4
80004670:	02048613          	addi	a2,s1,32
80004674:	0080006f          	j	8000467c <_Z11riscy_fopenPKc+0xb4>
80004678:	00c78e63          	beq	a5,a2,80004694 <_Z11riscy_fopenPKc+0xcc>
            newFile->name[fileNameLength++] = filename[fileNameLength];
8000467c:	0007c683          	lbu	a3,0(a5)
80004680:	00170713          	addi	a4,a4,1
80004684:	00178793          	addi	a5,a5,1
80004688:	fed70fa3          	sb	a3,-1(a4)
        while(*filename && fileNameLength < MAX_FILE_NAME_LENGTH) {
8000468c:	0004c683          	lbu	a3,0(s1)
80004690:	fe0694e3          	bnez	a3,80004678 <_Z11riscy_fopenPKc+0xb0>
        }
        return ++fileCount;
80004694:	0009a503          	lw	a0,0(s3)
    }

    // If there is no space left for new files
    uart_printf("Error: Maximum file count reached.\r\n");
    return 0;
}
80004698:	02c12083          	lw	ra,44(sp)
8000469c:	02812403          	lw	s0,40(sp)
        return ++fileCount;
800046a0:	00150513          	addi	a0,a0,1
800046a4:	00006797          	auipc	a5,0x6
800046a8:	2aa7a423          	sw	a0,680(a5) # 8000a94c <fileCount>
800046ac:	01051513          	slli	a0,a0,0x10
}
800046b0:	02412483          	lw	s1,36(sp)
800046b4:	02012903          	lw	s2,32(sp)
800046b8:	01c12983          	lw	s3,28(sp)
        return ++fileCount;
800046bc:	41055513          	srai	a0,a0,0x10
}
800046c0:	03010113          	addi	sp,sp,48
800046c4:	00008067          	ret
    uart_printf("Error: Maximum file count reached.\r\n");
800046c8:	00005517          	auipc	a0,0x5
800046cc:	5b850513          	addi	a0,a0,1464 # 80009c80 <__clzsi2+0x200>
800046d0:	edcff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
}
800046d4:	02c12083          	lw	ra,44(sp)
800046d8:	02812403          	lw	s0,40(sp)
800046dc:	02412483          	lw	s1,36(sp)
800046e0:	02012903          	lw	s2,32(sp)
800046e4:	01c12983          	lw	s3,28(sp)
    return 0;
800046e8:	00000513          	li	a0,0
}
800046ec:	03010113          	addi	sp,sp,48
800046f0:	00008067          	ret
        uart_printf("Error: File not found - %s\r\n", filename);
800046f4:	00048593          	mv	a1,s1
800046f8:	00005517          	auipc	a0,0x5
800046fc:	55850513          	addi	a0,a0,1368 # 80009c50 <__clzsi2+0x1d0>
80004700:	eacff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
}
80004704:	02c12083          	lw	ra,44(sp)
80004708:	02812403          	lw	s0,40(sp)
8000470c:	02412483          	lw	s1,36(sp)
80004710:	02012903          	lw	s2,32(sp)
80004714:	01c12983          	lw	s3,28(sp)
        return 0;
80004718:	00000513          	li	a0,0
}
8000471c:	03010113          	addi	sp,sp,48
80004720:	00008067          	ret

80004724 <_Z11riscy_freadsPvm>:

int32_t riscy_fread(int16_t fileHandle, void* buffer, uint32_t size) {
80004724:	fe010113          	addi	sp,sp,-32
80004728:	00112e23          	sw	ra,28(sp)
8000472c:	00812c23          	sw	s0,24(sp)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004730:	0e050463          	beqz	a0,80004818 <_Z11riscy_freadsPvm+0xf4>
80004734:	00006797          	auipc	a5,0x6
80004738:	21878793          	addi	a5,a5,536 # 8000a94c <fileCount>
8000473c:	0007a783          	lw	a5,0(a5)
80004740:	0ca7ec63          	bltu	a5,a0,80004818 <_Z11riscy_freadsPvm+0xf4>
80004744:	fff50f93          	addi	t6,a0,-1
80004748:	001f9793          	slli	a5,t6,0x1
8000474c:	01f787b3          	add	a5,a5,t6
80004750:	00006f17          	auipc	t5,0x6
80004754:	ee4f0f13          	addi	t5,t5,-284 # 8000a634 <files>
80004758:	00479793          	slli	a5,a5,0x4
8000475c:	00ff07b3          	add	a5,t5,a5
80004760:	00c7c783          	lbu	a5,12(a5)
80004764:	0a078a63          	beqz	a5,80004818 <_Z11riscy_freadsPvm+0xf4>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 0;
    }
    fileHandle -= 1; // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80004768:	010f9f93          	slli	t6,t6,0x10
8000476c:	410fdf93          	srai	t6,t6,0x10
    if (file->currentAddress + size > file->endAddress) {
80004770:	001f9293          	slli	t0,t6,0x1
80004774:	01f288b3          	add	a7,t0,t6
80004778:	00489893          	slli	a7,a7,0x4
8000477c:	011f08b3          	add	a7,t5,a7
80004780:	0088a783          	lw	a5,8(a7)
80004784:	0048a703          	lw	a4,4(a7)
80004788:	00c786b3          	add	a3,a5,a2
8000478c:	16d76463          	bltu	a4,a3,800048f4 <_Z11riscy_freadsPvm+0x1d0>
        uart_printf("Error: Read exceeds file end address.\r\n");
        return 0;
    }

    // Read data from flash into the buffer
    for (uint32_t i = 0; i < size/4; i ++) {
80004790:	00265713          	srli	a4,a2,0x2
80004794:	0a070c63          	beqz	a4,8000484c <_Z11riscy_freadsPvm+0x128>
80004798:	00271e93          	slli	t4,a4,0x2
    *flashAdress = adress;
8000479c:	8b000737          	lui	a4,0x8b000
800047a0:	00058693          	mv	a3,a1
800047a4:	00be8eb3          	add	t4,t4,a1
    for (uint32_t i = 0; i < size/4; i ++) {
800047a8:	00000813          	li	a6,0
    *flashRen = 1;
800047ac:	00170413          	addi	s0,a4,1 # 8b000001 <_stack_top+0xac00001>
800047b0:	00100393          	li	t2,1
    volatile unsigned int data = 0;
800047b4:	00012423          	sw	zero,8(sp)
        unsigned int data = readFlash(file->currentAddress + i*4);
800047b8:	010787b3          	add	a5,a5,a6
    *flashAdress = adress;
800047bc:	00f72223          	sw	a5,4(a4)
    *flashRen = 1;
800047c0:	00740023          	sb	t2,0(s0)
    asm volatile ("nop");
800047c4:	00000013          	nop
    asm volatile ("nop");
800047c8:	00000013          	nop
    asm volatile ("nop");
800047cc:	00000013          	nop
        if(*flashReady != 0) {
800047d0:	00074783          	lbu	a5,0(a4)
800047d4:	0ff7f793          	andi	a5,a5,255
800047d8:	fe078ce3          	beqz	a5,800047d0 <_Z11riscy_freadsPvm+0xac>
    data = *flashData;
800047dc:	00c72783          	lw	a5,12(a4)
800047e0:	00468693          	addi	a3,a3,4
800047e4:	00480813          	addi	a6,a6,4
800047e8:	00f12423          	sw	a5,8(sp)
    return data;
800047ec:	00812783          	lw	a5,8(sp)
        ((uint8_t*)buffer)[i*4] = data & 0xFF;
        ((uint8_t*)buffer)[i*4 + 1] = (data >> 8) & 0xFF;
800047f0:	0087de13          	srli	t3,a5,0x8
        ((uint8_t*)buffer)[i*4 + 2] = (data >> 16) & 0xFF;
800047f4:	0107d313          	srli	t1,a5,0x10
        ((uint8_t*)buffer)[i*4 + 3] = (data >> 24) & 0xFF;
800047f8:	0187d513          	srli	a0,a5,0x18
        ((uint8_t*)buffer)[i*4] = data & 0xFF;
800047fc:	fef68e23          	sb	a5,-4(a3)
        ((uint8_t*)buffer)[i*4 + 1] = (data >> 8) & 0xFF;
80004800:	ffc68ea3          	sb	t3,-3(a3)
        ((uint8_t*)buffer)[i*4 + 2] = (data >> 16) & 0xFF;
80004804:	fe668f23          	sb	t1,-2(a3)
        ((uint8_t*)buffer)[i*4 + 3] = (data >> 24) & 0xFF;
80004808:	fea68fa3          	sb	a0,-1(a3)
    for (uint32_t i = 0; i < size/4; i ++) {
8000480c:	02de8863          	beq	t4,a3,8000483c <_Z11riscy_freadsPvm+0x118>
80004810:	0088a783          	lw	a5,8(a7)
80004814:	fa1ff06f          	j	800047b4 <_Z11riscy_freadsPvm+0x90>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004818:	00050593          	mv	a1,a0
8000481c:	00005517          	auipc	a0,0x5
80004820:	48c50513          	addi	a0,a0,1164 # 80009ca8 <__clzsi2+0x228>
80004824:	d88ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
        return 0;
80004828:	00000513          	li	a0,0
    }
    // Update current address
    file->currentAddress += size;

    return size;
}
8000482c:	01c12083          	lw	ra,28(sp)
80004830:	01812403          	lw	s0,24(sp)
80004834:	02010113          	addi	sp,sp,32
80004838:	00008067          	ret
8000483c:	01f287b3          	add	a5,t0,t6
80004840:	00479793          	slli	a5,a5,0x4
80004844:	00ff07b3          	add	a5,t5,a5
80004848:	0087a783          	lw	a5,8(a5)
    if (size % 4 != 0) {
8000484c:	00367693          	andi	a3,a2,3
80004850:	06068e63          	beqz	a3,800048cc <_Z11riscy_freadsPvm+0x1a8>
        unsigned int data = readFlash(file->currentAddress + (size/4)*4);
80004854:	ffc67513          	andi	a0,a2,-4
    volatile unsigned int data = 0;
80004858:	00012623          	sw	zero,12(sp)
    *flashAdress = adress;
8000485c:	8b000737          	lui	a4,0x8b000
        unsigned int data = readFlash(file->currentAddress + (size/4)*4);
80004860:	00f507b3          	add	a5,a0,a5
    *flashAdress = adress;
80004864:	00f72223          	sw	a5,4(a4) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
80004868:	00100793          	li	a5,1
8000486c:	00f700a3          	sb	a5,1(a4)
    asm volatile ("nop");
80004870:	00000013          	nop
    asm volatile ("nop");
80004874:	00000013          	nop
    asm volatile ("nop");
80004878:	00000013          	nop
        if(*flashReady != 0) {
8000487c:	00074783          	lbu	a5,0(a4)
80004880:	0ff7f793          	andi	a5,a5,255
80004884:	fe078ce3          	beqz	a5,8000487c <_Z11riscy_freadsPvm+0x158>
    data = *flashData;
80004888:	00c72783          	lw	a5,12(a4)
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
8000488c:	00a585b3          	add	a1,a1,a0
        for (uint32_t i = 0; i < size % 4; i++) {
80004890:	00100713          	li	a4,1
    data = *flashData;
80004894:	00f12623          	sw	a5,12(sp)
    return data;
80004898:	00c12783          	lw	a5,12(sp)
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
8000489c:	00f58023          	sb	a5,0(a1)
        for (uint32_t i = 0; i < size % 4; i++) {
800048a0:	00e68e63          	beq	a3,a4,800048bc <_Z11riscy_freadsPvm+0x198>
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
800048a4:	0087d713          	srli	a4,a5,0x8
800048a8:	00e580a3          	sb	a4,1(a1)
        for (uint32_t i = 0; i < size % 4; i++) {
800048ac:	00200713          	li	a4,2
800048b0:	00e68663          	beq	a3,a4,800048bc <_Z11riscy_freadsPvm+0x198>
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
800048b4:	0107d793          	srli	a5,a5,0x10
800048b8:	00f58123          	sb	a5,2(a1)
800048bc:	01f287b3          	add	a5,t0,t6
800048c0:	00479793          	slli	a5,a5,0x4
800048c4:	00ff07b3          	add	a5,t5,a5
800048c8:	0087a783          	lw	a5,8(a5)
    file->currentAddress += size;
800048cc:	01f28733          	add	a4,t0,t6
800048d0:	00471713          	slli	a4,a4,0x4
800048d4:	00ef0f33          	add	t5,t5,a4
800048d8:	00f607b3          	add	a5,a2,a5
800048dc:	00ff2423          	sw	a5,8(t5)
}
800048e0:	01c12083          	lw	ra,28(sp)
800048e4:	01812403          	lw	s0,24(sp)
    return size;
800048e8:	00060513          	mv	a0,a2
}
800048ec:	02010113          	addi	sp,sp,32
800048f0:	00008067          	ret
        uart_printf("Error: Read exceeds file end address.\r\n");
800048f4:	00005517          	auipc	a0,0x5
800048f8:	3d450513          	addi	a0,a0,980 # 80009cc8 <__clzsi2+0x248>
800048fc:	cb0ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
        return 0;
80004900:	00000513          	li	a0,0
80004904:	f29ff06f          	j	8000482c <_Z11riscy_freadsPvm+0x108>

80004908 <_Z11riscy_fgetcs>:

char riscy_fgetc(int16_t fileHandle) {
80004908:	fe010113          	addi	sp,sp,-32
8000490c:	00112e23          	sw	ra,28(sp)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004910:	0c050063          	beqz	a0,800049d0 <_Z11riscy_fgetcs+0xc8>
80004914:	00006797          	auipc	a5,0x6
80004918:	03878793          	addi	a5,a5,56 # 8000a94c <fileCount>
8000491c:	0007a783          	lw	a5,0(a5)
80004920:	0aa7e863          	bltu	a5,a0,800049d0 <_Z11riscy_fgetcs+0xc8>
80004924:	fff50713          	addi	a4,a0,-1
80004928:	00171793          	slli	a5,a4,0x1
8000492c:	00e787b3          	add	a5,a5,a4
80004930:	00006617          	auipc	a2,0x6
80004934:	d0460613          	addi	a2,a2,-764 # 8000a634 <files>
80004938:	00479793          	slli	a5,a5,0x4
8000493c:	00f607b3          	add	a5,a2,a5
80004940:	00c7c783          	lbu	a5,12(a5)
80004944:	08078663          	beqz	a5,800049d0 <_Z11riscy_fgetcs+0xc8>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 0;
    }
    fileHandle -= 1; // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80004948:	01071713          	slli	a4,a4,0x10
8000494c:	41075713          	srai	a4,a4,0x10
    if (file->currentAddress >= file->endAddress) {
80004950:	00171593          	slli	a1,a4,0x1
80004954:	00e587b3          	add	a5,a1,a4
80004958:	00479793          	slli	a5,a5,0x4
8000495c:	00f607b3          	add	a5,a2,a5
80004960:	0087a683          	lw	a3,8(a5)
80004964:	0047a783          	lw	a5,4(a5)
80004968:	08f6f463          	bgeu	a3,a5,800049f0 <_Z11riscy_fgetcs+0xe8>
    volatile unsigned int data = 0;
8000496c:	00012623          	sw	zero,12(sp)
    *flashAdress = adress;
80004970:	8b0007b7          	lui	a5,0x8b000
80004974:	00d7a223          	sw	a3,4(a5) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
80004978:	00100693          	li	a3,1
8000497c:	00d780a3          	sb	a3,1(a5)
    asm volatile ("nop");
80004980:	00000013          	nop
    asm volatile ("nop");
80004984:	00000013          	nop
    asm volatile ("nop");
80004988:	00000013          	nop
        if(*flashReady != 0) {
8000498c:	8b0006b7          	lui	a3,0x8b000
80004990:	0006c783          	lbu	a5,0(a3) # 8b000000 <_stack_top+0xac00000>
80004994:	0ff7f793          	andi	a5,a5,255
80004998:	fe078ce3          	beqz	a5,80004990 <_Z11riscy_fgetcs+0x88>
    }

    // Read a single byte from flash
    unsigned int data = readFlash(file->currentAddress);
    char byte = data & 0xFF; // Get the first byte
    file->currentAddress += 1; // Move to the next byte
8000499c:	00e58733          	add	a4,a1,a4
800049a0:	00471713          	slli	a4,a4,0x4
800049a4:	00e60633          	add	a2,a2,a4
800049a8:	00862783          	lw	a5,8(a2)
    data = *flashData;
800049ac:	00c6a683          	lw	a3,12(a3)
    file->currentAddress += 1; // Move to the next byte
800049b0:	00178793          	addi	a5,a5,1
    data = *flashData;
800049b4:	00d12623          	sw	a3,12(sp)
    file->currentAddress += 1; // Move to the next byte
800049b8:	00f62423          	sw	a5,8(a2)
    return data;
800049bc:	00c12503          	lw	a0,12(sp)
    return byte;
}
800049c0:	01c12083          	lw	ra,28(sp)
    char byte = data & 0xFF; // Get the first byte
800049c4:	0ff57513          	andi	a0,a0,255
}
800049c8:	02010113          	addi	sp,sp,32
800049cc:	00008067          	ret
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
800049d0:	00050593          	mv	a1,a0
800049d4:	00005517          	auipc	a0,0x5
800049d8:	2d450513          	addi	a0,a0,724 # 80009ca8 <__clzsi2+0x228>
800049dc:	bd0ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
        return 0;
800049e0:	00000513          	li	a0,0
}
800049e4:	01c12083          	lw	ra,28(sp)
800049e8:	02010113          	addi	sp,sp,32
800049ec:	00008067          	ret
        uart_printf("Error: End of file reached.\r\n");
800049f0:	00005517          	auipc	a0,0x5
800049f4:	30050513          	addi	a0,a0,768 # 80009cf0 <__clzsi2+0x270>
800049f8:	bb4ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
        return 0;
800049fc:	00000513          	li	a0,0
80004a00:	fe5ff06f          	j	800049e4 <_Z11riscy_fgetcs+0xdc>

80004a04 <_Z12riscy_fcloses>:

uint8_t riscy_fclose(int16_t fileHandle) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004a04:	04050e63          	beqz	a0,80004a60 <_Z12riscy_fcloses+0x5c>
80004a08:	00006797          	auipc	a5,0x6
80004a0c:	f4478793          	addi	a5,a5,-188 # 8000a94c <fileCount>
80004a10:	0007a783          	lw	a5,0(a5)
80004a14:	04a7e663          	bltu	a5,a0,80004a60 <_Z12riscy_fcloses+0x5c>
80004a18:	fff50713          	addi	a4,a0,-1
80004a1c:	00171793          	slli	a5,a4,0x1
80004a20:	00e787b3          	add	a5,a5,a4
80004a24:	00006697          	auipc	a3,0x6
80004a28:	c1068693          	addi	a3,a3,-1008 # 8000a634 <files>
80004a2c:	00479793          	slli	a5,a5,0x4
80004a30:	00f687b3          	add	a5,a3,a5
80004a34:	00c7c783          	lbu	a5,12(a5)
80004a38:	02078463          	beqz	a5,80004a60 <_Z12riscy_fcloses+0x5c>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 1; // Error
    }
    fileHandle -= 1; // Adjust for 0-based index
    // Mark the file as invalid
    files[fileHandle].valid = 0;
80004a3c:	01071713          	slli	a4,a4,0x10
80004a40:	41075713          	srai	a4,a4,0x10
80004a44:	00171793          	slli	a5,a4,0x1
80004a48:	00e78733          	add	a4,a5,a4
80004a4c:	00471713          	slli	a4,a4,0x4
80004a50:	00e686b3          	add	a3,a3,a4
80004a54:	00068623          	sb	zero,12(a3)
    return 0; // Success
80004a58:	00000513          	li	a0,0
}
80004a5c:	00008067          	ret
uint8_t riscy_fclose(int16_t fileHandle) {
80004a60:	ff010113          	addi	sp,sp,-16
80004a64:	00050593          	mv	a1,a0
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004a68:	00005517          	auipc	a0,0x5
80004a6c:	24050513          	addi	a0,a0,576 # 80009ca8 <__clzsi2+0x228>
uint8_t riscy_fclose(int16_t fileHandle) {
80004a70:	00112623          	sw	ra,12(sp)
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004a74:	b38ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
}
80004a78:	00c12083          	lw	ra,12(sp)
        return 1; // Error
80004a7c:	00100513          	li	a0,1
}
80004a80:	01010113          	addi	sp,sp,16
80004a84:	00008067          	ret

80004a88 <_Z15riscy_heap_initv>:
// Simple heap allocator
// ====================================================

void riscy_heap_init(void) {
    uintptr_t start = (uintptr_t)&_heap_start;
    current_heap = (uint8_t *)ALIGN_UP(start, MALLOC_ALIGNMENT);
80004a88:	00006797          	auipc	a5,0x6
80004a8c:	0d378793          	addi	a5,a5,211 # 8000ab5b <_heap_start+0x1ff>
80004a90:	e007f793          	andi	a5,a5,-512
80004a94:	00006717          	auipc	a4,0x6
80004a98:	eaf72a23          	sw	a5,-332(a4) # 8000a948 <_ZL12current_heap>
}
80004a9c:	00008067          	ret

80004aa0 <_Z12riscy_mallocj>:

void* riscy_malloc(size_t size) {
    if (!current_heap)
80004aa0:	00006797          	auipc	a5,0x6
80004aa4:	ea878793          	addi	a5,a5,-344 # 8000a948 <_ZL12current_heap>
80004aa8:	0007a783          	lw	a5,0(a5)
80004aac:	02078863          	beqz	a5,80004adc <_Z12riscy_mallocj+0x3c>
        riscy_heap_init(); // lazy init

    // Round up size and pointer to MALLOC_ALIGNMENT
    size = ALIGN_UP(size, MALLOC_ALIGNMENT);
80004ab0:	1ff50593          	addi	a1,a0,511
    uintptr_t ptr_aligned = ALIGN_UP((uintptr_t)current_heap, MALLOC_ALIGNMENT);
80004ab4:	1ff78793          	addi	a5,a5,511
    size = ALIGN_UP(size, MALLOC_ALIGNMENT);
80004ab8:	e005f593          	andi	a1,a1,-512
    uintptr_t ptr_aligned = ALIGN_UP((uintptr_t)current_heap, MALLOC_ALIGNMENT);
80004abc:	e007f513          	andi	a0,a5,-512

    // Check for overflow
    if ((ptr_aligned + size) > (uintptr_t)&_heap_end) {
80004ac0:	00a587b3          	add	a5,a1,a0
80004ac4:	00306717          	auipc	a4,0x306
80004ac8:	e9870713          	addi	a4,a4,-360 # 8030a95c <_heap_end>
80004acc:	02f76463          	bltu	a4,a5,80004af4 <_Z12riscy_mallocj+0x54>
        uart_printf("Heap overflow! Requested %u bytes\r\n", (unsigned)size);
        return NULL;
    }

    void *ptr = (void *)ptr_aligned;
    current_heap = (uint8_t *)(ptr_aligned + size);
80004ad0:	00006717          	auipc	a4,0x6
80004ad4:	e6f72c23          	sw	a5,-392(a4) # 8000a948 <_ZL12current_heap>

    return ptr;
}
80004ad8:	00008067          	ret
    current_heap = (uint8_t *)ALIGN_UP(start, MALLOC_ALIGNMENT);
80004adc:	00006797          	auipc	a5,0x6
80004ae0:	07f78793          	addi	a5,a5,127 # 8000ab5b <_heap_start+0x1ff>
80004ae4:	e007f793          	andi	a5,a5,-512
80004ae8:	00006717          	auipc	a4,0x6
80004aec:	e6f72023          	sw	a5,-416(a4) # 8000a948 <_ZL12current_heap>
80004af0:	fc1ff06f          	j	80004ab0 <_Z12riscy_mallocj+0x10>
void* riscy_malloc(size_t size) {
80004af4:	ff010113          	addi	sp,sp,-16
        uart_printf("Heap overflow! Requested %u bytes\r\n", (unsigned)size);
80004af8:	00005517          	auipc	a0,0x5
80004afc:	21850513          	addi	a0,a0,536 # 80009d10 <__clzsi2+0x290>
void* riscy_malloc(size_t size) {
80004b00:	00112623          	sw	ra,12(sp)
        uart_printf("Heap overflow! Requested %u bytes\r\n", (unsigned)size);
80004b04:	aa8ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
}
80004b08:	00c12083          	lw	ra,12(sp)
        return NULL;
80004b0c:	00000513          	li	a0,0
}
80004b10:	01010113          	addi	sp,sp,16
80004b14:	00008067          	ret

80004b18 <_Z11riscy_fseeksli>:

int riscy_fseek(int16_t fileHandle, long offset, int whence) {
80004b18:	ff010113          	addi	sp,sp,-16
80004b1c:	00112623          	sw	ra,12(sp)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004b20:	10050263          	beqz	a0,80004c24 <_Z11riscy_fseeksli+0x10c>
80004b24:	00006797          	auipc	a5,0x6
80004b28:	e2878793          	addi	a5,a5,-472 # 8000a94c <fileCount>
80004b2c:	0007a783          	lw	a5,0(a5)
80004b30:	0ea7ea63          	bltu	a5,a0,80004c24 <_Z11riscy_fseeksli+0x10c>
80004b34:	fff50693          	addi	a3,a0,-1
80004b38:	00169793          	slli	a5,a3,0x1
80004b3c:	00d787b3          	add	a5,a5,a3
80004b40:	00006717          	auipc	a4,0x6
80004b44:	af470713          	addi	a4,a4,-1292 # 8000a634 <files>
80004b48:	00479793          	slli	a5,a5,0x4
80004b4c:	00f707b3          	add	a5,a4,a5
80004b50:	00c7c783          	lbu	a5,12(a5)
80004b54:	0c078863          	beqz	a5,80004c24 <_Z11riscy_fseeksli+0x10c>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return -1;  // Error
    }

    fileHandle -= 1;  // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80004b58:	01069693          	slli	a3,a3,0x10
80004b5c:	4106d693          	srai	a3,a3,0x10

    if (whence == SEEK_SET) {
80004b60:	04060663          	beqz	a2,80004bac <_Z11riscy_fseeksli+0x94>
        if (offset < 0 || offset > (file->endAddress - file->startAddress)) {
            uart_printf("Error: Invalid offset for SEEK_SET\r\n");
            return -1;
        }
        file->currentAddress = file->startAddress + offset;
    } else if (whence == SEEK_CUR) {
80004b64:	00100793          	li	a5,1
80004b68:	08f60063          	beq	a2,a5,80004be8 <_Z11riscy_fseeksli+0xd0>
        if (file->currentAddress + offset < file->startAddress || file->currentAddress + offset > file->endAddress) {
            uart_printf("Error: Invalid offset for SEEK_CUR\r\n");
            return -1;
        }
        file->currentAddress += offset;
    } else if (whence == SEEK_END) {
80004b6c:	00200793          	li	a5,2
80004b70:	0ef61a63          	bne	a2,a5,80004c64 <_Z11riscy_fseeksli+0x14c>
        // Set position from the end of the file
        if (offset > 0 || file->endAddress + offset < file->startAddress) {
80004b74:	0cb04e63          	bgtz	a1,80004c50 <_Z11riscy_fseeksli+0x138>
80004b78:	00169793          	slli	a5,a3,0x1
80004b7c:	00d786b3          	add	a3,a5,a3
80004b80:	00469693          	slli	a3,a3,0x4
80004b84:	00d70733          	add	a4,a4,a3
80004b88:	00472683          	lw	a3,4(a4)
80004b8c:	00072783          	lw	a5,0(a4)
80004b90:	00d585b3          	add	a1,a1,a3
80004b94:	0af5ee63          	bltu	a1,a5,80004c50 <_Z11riscy_fseeksli+0x138>
            uart_printf("Error: Invalid offset for SEEK_END\r\n");
            return -1;
        }
        file->currentAddress = file->endAddress + offset;
80004b98:	00b72423          	sw	a1,8(a4)
    } else {
        uart_printf("Error: Invalid whence value\r\n");
        return -1;
    }

    return 0;  // Success
80004b9c:	00000513          	li	a0,0
}
80004ba0:	00c12083          	lw	ra,12(sp)
80004ba4:	01010113          	addi	sp,sp,16
80004ba8:	00008067          	ret
        if (offset < 0 || offset > (file->endAddress - file->startAddress)) {
80004bac:	0805c863          	bltz	a1,80004c3c <_Z11riscy_fseeksli+0x124>
80004bb0:	00169793          	slli	a5,a3,0x1
80004bb4:	00d786b3          	add	a3,a5,a3
80004bb8:	00469693          	slli	a3,a3,0x4
80004bbc:	00d70733          	add	a4,a4,a3
80004bc0:	00072783          	lw	a5,0(a4)
80004bc4:	00472683          	lw	a3,4(a4)
80004bc8:	40f686b3          	sub	a3,a3,a5
80004bcc:	06b6e863          	bltu	a3,a1,80004c3c <_Z11riscy_fseeksli+0x124>
        file->currentAddress = file->startAddress + offset;
80004bd0:	00b785b3          	add	a1,a5,a1
80004bd4:	00b72423          	sw	a1,8(a4)
}
80004bd8:	00c12083          	lw	ra,12(sp)
    return 0;  // Success
80004bdc:	00000513          	li	a0,0
}
80004be0:	01010113          	addi	sp,sp,16
80004be4:	00008067          	ret
        if (file->currentAddress + offset < file->startAddress || file->currentAddress + offset > file->endAddress) {
80004be8:	00169793          	slli	a5,a3,0x1
80004bec:	00d786b3          	add	a3,a5,a3
80004bf0:	00469693          	slli	a3,a3,0x4
80004bf4:	00d70733          	add	a4,a4,a3
80004bf8:	00872783          	lw	a5,8(a4)
80004bfc:	00072683          	lw	a3,0(a4)
80004c00:	00f585b3          	add	a1,a1,a5
80004c04:	00d5e663          	bltu	a1,a3,80004c10 <_Z11riscy_fseeksli+0xf8>
80004c08:	00472783          	lw	a5,4(a4)
80004c0c:	f8b7f6e3          	bgeu	a5,a1,80004b98 <_Z11riscy_fseeksli+0x80>
            uart_printf("Error: Invalid offset for SEEK_CUR\r\n");
80004c10:	00005517          	auipc	a0,0x5
80004c14:	14c50513          	addi	a0,a0,332 # 80009d5c <__clzsi2+0x2dc>
80004c18:	994ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
            return -1;
80004c1c:	fff00513          	li	a0,-1
80004c20:	f81ff06f          	j	80004ba0 <_Z11riscy_fseeksli+0x88>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004c24:	00050593          	mv	a1,a0
80004c28:	00005517          	auipc	a0,0x5
80004c2c:	08050513          	addi	a0,a0,128 # 80009ca8 <__clzsi2+0x228>
80004c30:	97cff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
        return -1;  // Error
80004c34:	fff00513          	li	a0,-1
80004c38:	f69ff06f          	j	80004ba0 <_Z11riscy_fseeksli+0x88>
            uart_printf("Error: Invalid offset for SEEK_SET\r\n");
80004c3c:	00005517          	auipc	a0,0x5
80004c40:	0f850513          	addi	a0,a0,248 # 80009d34 <__clzsi2+0x2b4>
80004c44:	968ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
            return -1;
80004c48:	fff00513          	li	a0,-1
80004c4c:	f55ff06f          	j	80004ba0 <_Z11riscy_fseeksli+0x88>
            uart_printf("Error: Invalid offset for SEEK_END\r\n");
80004c50:	00005517          	auipc	a0,0x5
80004c54:	13450513          	addi	a0,a0,308 # 80009d84 <__clzsi2+0x304>
80004c58:	954ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
            return -1;
80004c5c:	fff00513          	li	a0,-1
80004c60:	f41ff06f          	j	80004ba0 <_Z11riscy_fseeksli+0x88>
        uart_printf("Error: Invalid whence value\r\n");
80004c64:	00005517          	auipc	a0,0x5
80004c68:	14850513          	addi	a0,a0,328 # 80009dac <__clzsi2+0x32c>
80004c6c:	940ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
        return -1;
80004c70:	fff00513          	li	a0,-1
80004c74:	f2dff06f          	j	80004ba0 <_Z11riscy_fseeksli+0x88>

80004c78 <_Z11riscy_ftells>:

int riscy_ftell(int16_t fileHandle) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004c78:	06050063          	beqz	a0,80004cd8 <_Z11riscy_ftells+0x60>
80004c7c:	00006797          	auipc	a5,0x6
80004c80:	cd078793          	addi	a5,a5,-816 # 8000a94c <fileCount>
80004c84:	0007a783          	lw	a5,0(a5)
80004c88:	04a7e863          	bltu	a5,a0,80004cd8 <_Z11riscy_ftells+0x60>
80004c8c:	fff50713          	addi	a4,a0,-1
80004c90:	00171793          	slli	a5,a4,0x1
80004c94:	00e787b3          	add	a5,a5,a4
80004c98:	00006697          	auipc	a3,0x6
80004c9c:	99c68693          	addi	a3,a3,-1636 # 8000a634 <files>
80004ca0:	00479793          	slli	a5,a5,0x4
80004ca4:	00f687b3          	add	a5,a3,a5
80004ca8:	00c7c783          	lbu	a5,12(a5)
80004cac:	02078663          	beqz	a5,80004cd8 <_Z11riscy_ftells+0x60>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return -1;  // Error
    }

    fileHandle -= 1;  // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80004cb0:	01071713          	slli	a4,a4,0x10
80004cb4:	41075713          	srai	a4,a4,0x10

    // Return the current position relative to the beginning of the file
    return file->currentAddress - file->startAddress;
80004cb8:	00171793          	slli	a5,a4,0x1
80004cbc:	00e78733          	add	a4,a5,a4
80004cc0:	00471713          	slli	a4,a4,0x4
80004cc4:	00e686b3          	add	a3,a3,a4
80004cc8:	0086a503          	lw	a0,8(a3)
80004ccc:	0006a783          	lw	a5,0(a3)
80004cd0:	40f50533          	sub	a0,a0,a5
}
80004cd4:	00008067          	ret
int riscy_ftell(int16_t fileHandle) {
80004cd8:	ff010113          	addi	sp,sp,-16
80004cdc:	00050593          	mv	a1,a0
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004ce0:	00005517          	auipc	a0,0x5
80004ce4:	fc850513          	addi	a0,a0,-56 # 80009ca8 <__clzsi2+0x228>
int riscy_ftell(int16_t fileHandle) {
80004ce8:	00112623          	sw	ra,12(sp)
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004cec:	8c0ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
}
80004cf0:	00c12083          	lw	ra,12(sp)
        return -1;  // Error
80004cf4:	fff00513          	li	a0,-1
}
80004cf8:	01010113          	addi	sp,sp,16
80004cfc:	00008067          	ret

80004d00 <_Z10riscy_feofs>:
int riscy_feof(int16_t fileHandle) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80004d00:	06050263          	beqz	a0,80004d64 <_Z10riscy_feofs+0x64>
80004d04:	00006797          	auipc	a5,0x6
80004d08:	c4878793          	addi	a5,a5,-952 # 8000a94c <fileCount>
80004d0c:	0007a783          	lw	a5,0(a5)
80004d10:	04a7ea63          	bltu	a5,a0,80004d64 <_Z10riscy_feofs+0x64>
80004d14:	fff50713          	addi	a4,a0,-1
80004d18:	00171793          	slli	a5,a4,0x1
80004d1c:	00e787b3          	add	a5,a5,a4
80004d20:	00006697          	auipc	a3,0x6
80004d24:	91468693          	addi	a3,a3,-1772 # 8000a634 <files>
80004d28:	00479793          	slli	a5,a5,0x4
80004d2c:	00f687b3          	add	a5,a3,a5
80004d30:	00c7c783          	lbu	a5,12(a5)
80004d34:	02078863          	beqz	a5,80004d64 <_Z10riscy_feofs+0x64>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return -1;  // Error
    }

    fileHandle -= 1;  // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80004d38:	01071713          	slli	a4,a4,0x10
80004d3c:	41075713          	srai	a4,a4,0x10

    // Check if the current address is at or beyond the end of the file
    if (file->currentAddress >= file->endAddress) {
80004d40:	00171793          	slli	a5,a4,0x1
80004d44:	00e78733          	add	a4,a5,a4
80004d48:	00471713          	slli	a4,a4,0x4
80004d4c:	00e686b3          	add	a3,a3,a4
80004d50:	0086a503          	lw	a0,8(a3)
80004d54:	0046a783          	lw	a5,4(a3)
80004d58:	00f53533          	sltu	a0,a0,a5
80004d5c:	00154513          	xori	a0,a0,1
        return 1;  // EOF reached
    }
    
    return 0;  // Not EOF
}
80004d60:	00008067          	ret
int riscy_feof(int16_t fileHandle) {
80004d64:	ff010113          	addi	sp,sp,-16
80004d68:	00050593          	mv	a1,a0
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004d6c:	00005517          	auipc	a0,0x5
80004d70:	f3c50513          	addi	a0,a0,-196 # 80009ca8 <__clzsi2+0x228>
int riscy_feof(int16_t fileHandle) {
80004d74:	00112623          	sw	ra,12(sp)
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80004d78:	834ff0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
}
80004d7c:	00c12083          	lw	ra,12(sp)
        return -1;  // Error
80004d80:	fff00513          	li	a0,-1
}
80004d84:	01010113          	addi	sp,sp,16
80004d88:	00008067          	ret

80004d8c <_Z16riscy_list_filesv>:


// Lists all files found in the RISCY.FS header table
void riscy_list_files(void) {
80004d8c:	fa010113          	addi	sp,sp,-96
80004d90:	04112e23          	sw	ra,92(sp)
80004d94:	04812c23          	sw	s0,88(sp)
80004d98:	04912a23          	sw	s1,84(sp)
80004d9c:	05212823          	sw	s2,80(sp)
80004da0:	05312623          	sw	s3,76(sp)
80004da4:	05412423          	sw	s4,72(sp)
80004da8:	05512223          	sw	s5,68(sp)
80004dac:	05612023          	sw	s6,64(sp)
    volatile unsigned int data = 0;
80004db0:	00012423          	sw	zero,8(sp)
    *flashAdress = adress;
80004db4:	8b0007b7          	lui	a5,0x8b000
80004db8:	0007a223          	sw	zero,4(a5) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
80004dbc:	00100713          	li	a4,1
80004dc0:	00e780a3          	sb	a4,1(a5)
    asm volatile ("nop");
80004dc4:	00000013          	nop
    asm volatile ("nop");
80004dc8:	00000013          	nop
    asm volatile ("nop");
80004dcc:	00000013          	nop
        if(*flashReady != 0) {
80004dd0:	8b000737          	lui	a4,0x8b000
80004dd4:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
80004dd8:	0ff7f793          	andi	a5,a5,255
80004ddc:	fe078ce3          	beqz	a5,80004dd4 <_Z16riscy_list_filesv+0x48>
    data = *flashData;
80004de0:	00c72683          	lw	a3,12(a4)
    const char magic[8] = {'R','I','S','C','Y','.','F','S'};
    for (int k = 0; k < 2; k++) { // two 32-bit reads = 8 bytes
        w = readFlash(addr);
        for (int j = 0; j < 4; j++) {
            char c = (w >> (8 * j)) & 0xFF;
            if (c != magic[k * 4 + j]) {
80004de4:	05200793          	li	a5,82
    data = *flashData;
80004de8:	00d12423          	sw	a3,8(sp)
    return data;
80004dec:	00812603          	lw	a2,8(sp)
            if (c != magic[k * 4 + j]) {
80004df0:	0ff67693          	andi	a3,a2,255
80004df4:	22f69263          	bne	a3,a5,80005018 <_Z16riscy_list_filesv+0x28c>
            char c = (w >> (8 * j)) & 0xFF;
80004df8:	00865793          	srli	a5,a2,0x8
            if (c != magic[k * 4 + j]) {
80004dfc:	0ff7f593          	andi	a1,a5,255
80004e00:	04900693          	li	a3,73
80004e04:	22d59863          	bne	a1,a3,80005034 <_Z16riscy_list_filesv+0x2a8>
            char c = (w >> (8 * j)) & 0xFF;
80004e08:	01065793          	srli	a5,a2,0x10
            if (c != magic[k * 4 + j]) {
80004e0c:	0ff7f593          	andi	a1,a5,255
80004e10:	05300693          	li	a3,83
80004e14:	22d59663          	bne	a1,a3,80005040 <_Z16riscy_list_filesv+0x2b4>
            char c = (w >> (8 * j)) & 0xFF;
80004e18:	01865613          	srli	a2,a2,0x18
            if (c != magic[k * 4 + j]) {
80004e1c:	04300793          	li	a5,67
80004e20:	22f61663          	bne	a2,a5,8000504c <_Z16riscy_list_filesv+0x2c0>
    volatile unsigned int data = 0;
80004e24:	00012423          	sw	zero,8(sp)
    *flashAdress = adress;
80004e28:	00400793          	li	a5,4
80004e2c:	00f72223          	sw	a5,4(a4)
    *flashRen = 1;
80004e30:	00100793          	li	a5,1
80004e34:	00f700a3          	sb	a5,1(a4)
    asm volatile ("nop");
80004e38:	00000013          	nop
    asm volatile ("nop");
80004e3c:	00000013          	nop
    asm volatile ("nop");
80004e40:	00000013          	nop
        if(*flashReady != 0) {
80004e44:	8b000737          	lui	a4,0x8b000
80004e48:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
80004e4c:	0ff7f793          	andi	a5,a5,255
80004e50:	fe078ce3          	beqz	a5,80004e48 <_Z16riscy_list_filesv+0xbc>
    data = *flashData;
80004e54:	00c72683          	lw	a3,12(a4)
            if (c != magic[k * 4 + j]) {
80004e58:	05900793          	li	a5,89
    data = *flashData;
80004e5c:	00d12423          	sw	a3,8(sp)
    return data;
80004e60:	00812603          	lw	a2,8(sp)
            if (c != magic[k * 4 + j]) {
80004e64:	0ff67693          	andi	a3,a2,255
80004e68:	20f69a63          	bne	a3,a5,8000507c <_Z16riscy_list_filesv+0x2f0>
            char c = (w >> (8 * j)) & 0xFF;
80004e6c:	00865793          	srli	a5,a2,0x8
            if (c != magic[k * 4 + j]) {
80004e70:	0ff7f593          	andi	a1,a5,255
80004e74:	02e00693          	li	a3,46
80004e78:	1ed59c63          	bne	a1,a3,80005070 <_Z16riscy_list_filesv+0x2e4>
            char c = (w >> (8 * j)) & 0xFF;
80004e7c:	01065793          	srli	a5,a2,0x10
            if (c != magic[k * 4 + j]) {
80004e80:	0ff7f593          	andi	a1,a5,255
80004e84:	04600693          	li	a3,70
80004e88:	1cd59e63          	bne	a1,a3,80005064 <_Z16riscy_list_filesv+0x2d8>
            char c = (w >> (8 * j)) & 0xFF;
80004e8c:	01865613          	srli	a2,a2,0x18
            if (c != magic[k * 4 + j]) {
80004e90:	05300793          	li	a5,83
80004e94:	1cf61263          	bne	a2,a5,80005058 <_Z16riscy_list_filesv+0x2cc>
    volatile unsigned int data = 0;
80004e98:	00012623          	sw	zero,12(sp)
    *flashAdress = adress;
80004e9c:	00800793          	li	a5,8
80004ea0:	00f72223          	sw	a5,4(a4)
    *flashRen = 1;
80004ea4:	00100793          	li	a5,1
80004ea8:	00f700a3          	sb	a5,1(a4)
    asm volatile ("nop");
80004eac:	00000013          	nop
    asm volatile ("nop");
80004eb0:	00000013          	nop
    asm volatile ("nop");
80004eb4:	00000013          	nop
        if(*flashReady != 0) {
80004eb8:	8b000737          	lui	a4,0x8b000
80004ebc:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
80004ec0:	0ff7f793          	andi	a5,a5,255
80004ec4:	fe078ce3          	beqz	a5,80004ebc <_Z16riscy_list_filesv+0x130>
    data = *flashData;
80004ec8:	00c72783          	lw	a5,12(a4)

    // Read program count (1 byte)
    unsigned int programCount = readFlash(addr) & 0xFF;
    addr += 1;

    uart_printf("Files: %d\r\n", programCount);
80004ecc:	00005517          	auipc	a0,0x5
80004ed0:	f3450513          	addi	a0,a0,-204 # 80009e00 <__clzsi2+0x380>

    for (unsigned int i = 0; i < programCount; i++) {
80004ed4:	00000a93          	li	s5,0
    data = *flashData;
80004ed8:	00f12623          	sw	a5,12(sp)
    return data;
80004edc:	00c12483          	lw	s1,12(sp)
    addr += 1;
80004ee0:	00900993          	li	s3,9
    unsigned int programCount = readFlash(addr) & 0xFF;
80004ee4:	0ff4f493          	andi	s1,s1,255
    uart_printf("Files: %d\r\n", programCount);
80004ee8:	00048593          	mv	a1,s1
80004eec:	ec1fe0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
    for (unsigned int i = 0; i < programCount; i++) {
80004ef0:	10048063          	beqz	s1,80004ff0 <_Z16riscy_list_filesv+0x264>
    *flashAdress = adress;
80004ef4:	8b000437          	lui	s0,0x8b000
    *flashRen = 1;
80004ef8:	00100b13          	li	s6,1
80004efc:	00100a13          	li	s4,1
        uint32_t start = readFlash(addr); addr += 4;
        uint32_t end   = readFlash(addr); addr += 4;
        addr += 256; // skip 256-byte image
        
        uint32_t size = (end >= start) ? (end - start) : 0;
        printf("%d) %s  [0x%x - 0x%x]\n",
80004f00:	00005917          	auipc	s2,0x5
80004f04:	f0c90913          	addi	s2,s2,-244 # 80009e0c <__clzsi2+0x38c>
80004f08:	02098593          	addi	a1,s3,32
    addr += 1;
80004f0c:	00098813          	mv	a6,s3
    *flashRen = 1;
80004f10:	00140613          	addi	a2,s0,1 # 8b000001 <_stack_top+0xac00001>
    volatile unsigned int data = 0;
80004f14:	00012823          	sw	zero,16(sp)
    *flashAdress = adress;
80004f18:	01042223          	sw	a6,4(s0)
    *flashRen = 1;
80004f1c:	01460023          	sb	s4,0(a2)
    asm volatile ("nop");
80004f20:	00000013          	nop
    asm volatile ("nop");
80004f24:	00000013          	nop
    asm volatile ("nop");
80004f28:	00000013          	nop
        if(*flashReady != 0) {
80004f2c:	00044783          	lbu	a5,0(s0)
80004f30:	0ff7f793          	andi	a5,a5,255
80004f34:	fe078ce3          	beqz	a5,80004f2c <_Z16riscy_list_filesv+0x1a0>
    data = *flashData;
80004f38:	00c42783          	lw	a5,12(s0)
            name[pos++] = c;
80004f3c:	01c10693          	addi	a3,sp,28
80004f40:	41380733          	sub	a4,a6,s3
    data = *flashData;
80004f44:	00f12823          	sw	a5,16(sp)
    return data;
80004f48:	01012783          	lw	a5,16(sp)
            name[pos++] = c;
80004f4c:	00e68733          	add	a4,a3,a4
            addr += 1;
80004f50:	00180693          	addi	a3,a6,1
            c = (char)(w & 0xFF);
80004f54:	0ff7f793          	andi	a5,a5,255
            name[pos++] = c;
80004f58:	00f70023          	sb	a5,0(a4)
        while (c != 0 && pos < MAX_FILE_NAME_LENGTH) {
80004f5c:	00078a63          	beqz	a5,80004f70 <_Z16riscy_list_filesv+0x1e4>
80004f60:	00b68663          	beq	a3,a1,80004f6c <_Z16riscy_list_filesv+0x1e0>
80004f64:	00068813          	mv	a6,a3
80004f68:	fadff06f          	j	80004f14 <_Z16riscy_list_filesv+0x188>
80004f6c:	00058693          	mv	a3,a1
    volatile unsigned int data = 0;
80004f70:	00012c23          	sw	zero,24(sp)
    *flashAdress = adress;
80004f74:	00d42223          	sw	a3,4(s0)
    *flashRen = 1;
80004f78:	016400a3          	sb	s6,1(s0)
    asm volatile ("nop");
80004f7c:	00000013          	nop
    asm volatile ("nop");
80004f80:	00000013          	nop
    asm volatile ("nop");
80004f84:	00000013          	nop
        if(*flashReady != 0) {
80004f88:	00044783          	lbu	a5,0(s0)
80004f8c:	0ff7f793          	andi	a5,a5,255
80004f90:	fe078ce3          	beqz	a5,80004f88 <_Z16riscy_list_filesv+0x1fc>
    data = *flashData;
80004f94:	00c42703          	lw	a4,12(s0)
        uint32_t start = readFlash(addr); addr += 4;
80004f98:	00580793          	addi	a5,a6,5
    data = *flashData;
80004f9c:	00e12c23          	sw	a4,24(sp)
    return data;
80004fa0:	01812683          	lw	a3,24(sp)
    volatile unsigned int data = 0;
80004fa4:	00012a23          	sw	zero,20(sp)
    *flashAdress = adress;
80004fa8:	00f42223          	sw	a5,4(s0)
    *flashRen = 1;
80004fac:	016400a3          	sb	s6,1(s0)
    asm volatile ("nop");
80004fb0:	00000013          	nop
    asm volatile ("nop");
80004fb4:	00000013          	nop
    asm volatile ("nop");
80004fb8:	00000013          	nop
        if(*flashReady != 0) {
80004fbc:	00044783          	lbu	a5,0(s0)
80004fc0:	0ff7f793          	andi	a5,a5,255
80004fc4:	fe078ce3          	beqz	a5,80004fbc <_Z16riscy_list_filesv+0x230>
    data = *flashData;
80004fc8:	00c42783          	lw	a5,12(s0)
        printf("%d) %s  [0x%x - 0x%x]\n",
80004fcc:	001a8a93          	addi	s5,s5,1
80004fd0:	01c10613          	addi	a2,sp,28
    data = *flashData;
80004fd4:	00f12a23          	sw	a5,20(sp)
    return data;
80004fd8:	01412703          	lw	a4,20(sp)
        printf("%d) %s  [0x%x - 0x%x]\n",
80004fdc:	000a8593          	mv	a1,s5
80004fe0:	00090513          	mv	a0,s2
        addr += 256; // skip 256-byte image
80004fe4:	10980993          	addi	s3,a6,265
        printf("%d) %s  [0x%x - 0x%x]\n",
80004fe8:	b14fe0ef          	jal	ra,800032fc <_Z6printfPKcz>
    for (unsigned int i = 0; i < programCount; i++) {
80004fec:	f09a9ee3          	bne	s5,s1,80004f08 <_Z16riscy_list_filesv+0x17c>
            i + 1, name, start, end);
    }
}
80004ff0:	05c12083          	lw	ra,92(sp)
80004ff4:	05812403          	lw	s0,88(sp)
80004ff8:	05412483          	lw	s1,84(sp)
80004ffc:	05012903          	lw	s2,80(sp)
80005000:	04c12983          	lw	s3,76(sp)
80005004:	04812a03          	lw	s4,72(sp)
80005008:	04412a83          	lw	s5,68(sp)
8000500c:	04012b03          	lw	s6,64(sp)
80005010:	06010113          	addi	sp,sp,96
80005014:	00008067          	ret
80005018:	0ff67613          	andi	a2,a2,255
            if (c != magic[k * 4 + j]) {
8000501c:	05200693          	li	a3,82
80005020:	00000593          	li	a1,0
                uart_printf("Error: bad magic at %u (got '%c', expected '%c')\r\n",
80005024:	00005517          	auipc	a0,0x5
80005028:	da850513          	addi	a0,a0,-600 # 80009dcc <__clzsi2+0x34c>
8000502c:	d81fe0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
                return;
80005030:	fc1ff06f          	j	80004ff0 <_Z16riscy_list_filesv+0x264>
80005034:	0ff7f613          	andi	a2,a5,255
            if (c != magic[k * 4 + j]) {
80005038:	00100593          	li	a1,1
8000503c:	fe9ff06f          	j	80005024 <_Z16riscy_list_filesv+0x298>
80005040:	0ff7f613          	andi	a2,a5,255
80005044:	00200593          	li	a1,2
80005048:	fddff06f          	j	80005024 <_Z16riscy_list_filesv+0x298>
8000504c:	04300693          	li	a3,67
80005050:	00300593          	li	a1,3
80005054:	fd1ff06f          	j	80005024 <_Z16riscy_list_filesv+0x298>
80005058:	05300693          	li	a3,83
8000505c:	00700593          	li	a1,7
80005060:	fc5ff06f          	j	80005024 <_Z16riscy_list_filesv+0x298>
80005064:	0ff7f613          	andi	a2,a5,255
80005068:	00600593          	li	a1,6
8000506c:	fb9ff06f          	j	80005024 <_Z16riscy_list_filesv+0x298>
80005070:	0ff7f613          	andi	a2,a5,255
80005074:	00500593          	li	a1,5
80005078:	fadff06f          	j	80005024 <_Z16riscy_list_filesv+0x298>
8000507c:	0ff67613          	andi	a2,a2,255
80005080:	05900693          	li	a3,89
80005084:	00400593          	li	a1,4
80005088:	f9dff06f          	j	80005024 <_Z16riscy_list_filesv+0x298>

8000508c <_Z9heap_testv>:



void heap_test(void) {
8000508c:	f9010113          	addi	sp,sp,-112
    printf("===== Heap Test Start =====\r\n");
80005090:	00005517          	auipc	a0,0x5
80005094:	da050513          	addi	a0,a0,-608 # 80009e30 <__clzsi2+0x3b0>
void heap_test(void) {
80005098:	06112623          	sw	ra,108(sp)
8000509c:	06812423          	sw	s0,104(sp)
800050a0:	06912223          	sw	s1,100(sp)
800050a4:	07212023          	sw	s2,96(sp)
800050a8:	05312e23          	sw	s3,92(sp)
800050ac:	05412c23          	sw	s4,88(sp)
800050b0:	05512a23          	sw	s5,84(sp)
800050b4:	05612823          	sw	s6,80(sp)
800050b8:	05712623          	sw	s7,76(sp)
800050bc:	05812423          	sw	s8,72(sp)
800050c0:	05912223          	sw	s9,68(sp)
800050c4:	05a12023          	sw	s10,64(sp)
800050c8:	03b12e23          	sw	s11,60(sp)
    printf("Heap range: 0x%x - 0x%x\r\n", (uint32_t)&_heap_start, (uint32_t)&_heap_end);
800050cc:	00306417          	auipc	s0,0x306
800050d0:	89040413          	addi	s0,s0,-1904 # 8030a95c <_heap_end>
    printf("===== Heap Test Start =====\r\n");
800050d4:	a28fe0ef          	jal	ra,800032fc <_Z6printfPKcz>
    printf("Heap range: 0x%x - 0x%x\r\n", (uint32_t)&_heap_start, (uint32_t)&_heap_end);
800050d8:	00040613          	mv	a2,s0
800050dc:	00006597          	auipc	a1,0x6
800050e0:	88058593          	addi	a1,a1,-1920 # 8000a95c <_heap_start>
800050e4:	00005517          	auipc	a0,0x5
800050e8:	d6c50513          	addi	a0,a0,-660 # 80009e50 <__clzsi2+0x3d0>
800050ec:	a10fe0ef          	jal	ra,800032fc <_Z6printfPKcz>
    printf("Heap size : %d bytes\r\n", (uint32_t)(&_heap_end - &_heap_start));
800050f0:	00006797          	auipc	a5,0x6
800050f4:	86c78793          	addi	a5,a5,-1940 # 8000a95c <_heap_start>
800050f8:	40f405b3          	sub	a1,s0,a5
800050fc:	00005517          	auipc	a0,0x5
80005100:	d7050513          	addi	a0,a0,-656 # 80009e6c <__clzsi2+0x3ec>
80005104:	9f8fe0ef          	jal	ra,800032fc <_Z6printfPKcz>

    riscy_heap_init();

    const int alloc_count = 6;
    size_t sizes[alloc_count] = {128, 1024, 8192, 50000, 256000, 512000};
80005108:	00005797          	auipc	a5,0x5
8000510c:	a2c78793          	addi	a5,a5,-1492 # 80009b34 <__clzsi2+0xb4>
80005110:	0007a503          	lw	a0,0(a5)
80005114:	0047a583          	lw	a1,4(a5)
80005118:	0087a603          	lw	a2,8(a5)
8000511c:	00c7a683          	lw	a3,12(a5)
80005120:	0107a703          	lw	a4,16(a5)
80005124:	0147a783          	lw	a5,20(a5)
    current_heap = (uint8_t *)ALIGN_UP(start, MALLOC_ALIGNMENT);
80005128:	00006497          	auipc	s1,0x6
8000512c:	a3348493          	addi	s1,s1,-1485 # 8000ab5b <_heap_start+0x1ff>
80005130:	e004f493          	andi	s1,s1,-512
80005134:	00010993          	mv	s3,sp
80005138:	01810913          	addi	s2,sp,24
    size_t sizes[alloc_count] = {128, 1024, 8192, 50000, 256000, 512000};
8000513c:	00a12023          	sw	a0,0(sp)
80005140:	00b12223          	sw	a1,4(sp)
80005144:	00c12423          	sw	a2,8(sp)
80005148:	00d12623          	sw	a3,12(sp)
8000514c:	00e12823          	sw	a4,16(sp)
80005150:	00f12a23          	sw	a5,20(sp)
80005154:	00098d13          	mv	s10,s3
    current_heap = (uint8_t *)ALIGN_UP(start, MALLOC_ALIGNMENT);
80005158:	00005817          	auipc	a6,0x5
8000515c:	7e982823          	sw	s1,2032(a6) # 8000a948 <_ZL12current_heap>
    size_t sizes[alloc_count] = {128, 1024, 8192, 50000, 256000, 512000};
80005160:	00048d93          	mv	s11,s1
80005164:	00090c93          	mv	s9,s2
    void* ptrs[alloc_count];

    for (int i = 0; i < alloc_count; i++) {
80005168:	00000b93          	li	s7,0
8000516c:	00005a17          	auipc	s4,0x5
80005170:	7dca0a13          	addi	s4,s4,2012 # 8000a948 <_ZL12current_heap>
        ptrs[i] = riscy_malloc(sizes[i]);
        printf("[%d] Alloc %d bytes -> %s (addr=0x%x)\r\n",
80005174:	00005b17          	auipc	s6,0x5
80005178:	d10b0b13          	addi	s6,s6,-752 # 80009e84 <__clzsi2+0x404>
    for (int i = 0; i < alloc_count; i++) {
8000517c:	00600a93          	li	s5,6
        ptrs[i] = riscy_malloc(sizes[i]);
80005180:	000d2c03          	lw	s8,0(s10)
    if (!current_heap)
80005184:	080d8263          	beqz	s11,80005208 <_Z9heap_testv+0x17c>
    size = ALIGN_UP(size, MALLOC_ALIGNMENT);
80005188:	1ffc0593          	addi	a1,s8,511
    uintptr_t ptr_aligned = ALIGN_UP((uintptr_t)current_heap, MALLOC_ALIGNMENT);
8000518c:	1ffd8d93          	addi	s11,s11,511
    size = ALIGN_UP(size, MALLOC_ALIGNMENT);
80005190:	e005f593          	andi	a1,a1,-512
    uintptr_t ptr_aligned = ALIGN_UP((uintptr_t)current_heap, MALLOC_ALIGNMENT);
80005194:	e00dfd93          	andi	s11,s11,-512
    if ((ptr_aligned + size) > (uintptr_t)&_heap_end) {
80005198:	01b587b3          	add	a5,a1,s11
8000519c:	08f46863          	bltu	s0,a5,8000522c <_Z9heap_testv+0x1a0>
    current_heap = (uint8_t *)(ptr_aligned + size);
800051a0:	00005717          	auipc	a4,0x5
800051a4:	7af72423          	sw	a5,1960(a4) # 8000a948 <_ZL12current_heap>
        ptrs[i] = riscy_malloc(sizes[i]);
800051a8:	01bca023          	sw	s11,0(s9)
        printf("[%d] Alloc %d bytes -> %s (addr=0x%x)\r\n",
800051ac:	080d8863          	beqz	s11,8000523c <_Z9heap_testv+0x1b0>
800051b0:	000d8713          	mv	a4,s11
800051b4:	00005697          	auipc	a3,0x5
800051b8:	c7068693          	addi	a3,a3,-912 # 80009e24 <__clzsi2+0x3a4>
800051bc:	000c0613          	mv	a2,s8
800051c0:	000b8593          	mv	a1,s7
800051c4:	000b0513          	mv	a0,s6
800051c8:	934fe0ef          	jal	ra,800032fc <_Z6printfPKcz>
                    (uint32_t)ptrs[i]);

        // Write pattern to allocated region
        if (ptrs[i]) {
            uint8_t *p = (uint8_t *)ptrs[i];
            for (size_t j = 0; j < sizes[i]; j++)
800051cc:	000d8793          	mv	a5,s11
800051d0:	40fb86b3          	sub	a3,s7,a5
800051d4:	01bc0db3          	add	s11,s8,s11
800051d8:	000c0a63          	beqz	s8,800051ec <_Z9heap_testv+0x160>
                p[j] = (uint8_t)(i + j);
800051dc:	00f68733          	add	a4,a3,a5
800051e0:	00e78023          	sb	a4,0(a5)
800051e4:	00178793          	addi	a5,a5,1
            for (size_t j = 0; j < sizes[i]; j++)
800051e8:	fefd9ae3          	bne	s11,a5,800051dc <_Z9heap_testv+0x150>
    for (int i = 0; i < alloc_count; i++) {
800051ec:	001b8b93          	addi	s7,s7,1
800051f0:	004d0d13          	addi	s10,s10,4
800051f4:	004c8c93          	addi	s9,s9,4
800051f8:	075b8863          	beq	s7,s5,80005268 <_Z9heap_testv+0x1dc>
800051fc:	000a2d83          	lw	s11,0(s4)
        ptrs[i] = riscy_malloc(sizes[i]);
80005200:	000d2c03          	lw	s8,0(s10)
    if (!current_heap)
80005204:	f80d92e3          	bnez	s11,80005188 <_Z9heap_testv+0xfc>
    current_heap = (uint8_t *)ALIGN_UP(start, MALLOC_ALIGNMENT);
80005208:	00048d93          	mv	s11,s1
    size = ALIGN_UP(size, MALLOC_ALIGNMENT);
8000520c:	1ffc0593          	addi	a1,s8,511
    uintptr_t ptr_aligned = ALIGN_UP((uintptr_t)current_heap, MALLOC_ALIGNMENT);
80005210:	1ffd8d93          	addi	s11,s11,511
    current_heap = (uint8_t *)ALIGN_UP(start, MALLOC_ALIGNMENT);
80005214:	00005797          	auipc	a5,0x5
80005218:	7297aa23          	sw	s1,1844(a5) # 8000a948 <_ZL12current_heap>
    size = ALIGN_UP(size, MALLOC_ALIGNMENT);
8000521c:	e005f593          	andi	a1,a1,-512
    uintptr_t ptr_aligned = ALIGN_UP((uintptr_t)current_heap, MALLOC_ALIGNMENT);
80005220:	e00dfd93          	andi	s11,s11,-512
    if ((ptr_aligned + size) > (uintptr_t)&_heap_end) {
80005224:	01b587b3          	add	a5,a1,s11
80005228:	f6f47ce3          	bgeu	s0,a5,800051a0 <_Z9heap_testv+0x114>
        uart_printf("Heap overflow! Requested %u bytes\r\n", (unsigned)size);
8000522c:	00005517          	auipc	a0,0x5
80005230:	ae450513          	addi	a0,a0,-1308 # 80009d10 <__clzsi2+0x290>
80005234:	b79fe0ef          	jal	ra,80003dac <_Z11uart_printfPKcz>
        ptrs[i] = riscy_malloc(sizes[i]);
80005238:	000ca023          	sw	zero,0(s9)
        printf("[%d] Alloc %d bytes -> %s (addr=0x%x)\r\n",
8000523c:	000b8593          	mv	a1,s7
80005240:	00000713          	li	a4,0
80005244:	00005697          	auipc	a3,0x5
80005248:	be468693          	addi	a3,a3,-1052 # 80009e28 <__clzsi2+0x3a8>
8000524c:	000c0613          	mv	a2,s8
80005250:	000b0513          	mv	a0,s6
    for (int i = 0; i < alloc_count; i++) {
80005254:	001b8b93          	addi	s7,s7,1
        printf("[%d] Alloc %d bytes -> %s (addr=0x%x)\r\n",
80005258:	8a4fe0ef          	jal	ra,800032fc <_Z6printfPKcz>
        if (ptrs[i]) {
8000525c:	004d0d13          	addi	s10,s10,4
80005260:	004c8c93          	addi	s9,s9,4
    for (int i = 0; i < alloc_count; i++) {
80005264:	f95b9ce3          	bne	s7,s5,800051fc <_Z9heap_testv+0x170>
        }
    }

    printf("\r\nVerifying contents...\r\n");
80005268:	00005517          	auipc	a0,0x5
8000526c:	c4450513          	addi	a0,a0,-956 # 80009eac <__clzsi2+0x42c>
80005270:	88cfe0ef          	jal	ra,800032fc <_Z6printfPKcz>
    for (int i = 0; i < alloc_count; i++) {
80005274:	00000b93          	li	s7,0
        uint8_t *p = (uint8_t *)ptrs[i];
        int errors = 0;
        for (size_t j = 0; j < sizes[i]; j++) {
            if (p[j] != (uint8_t)(i + j)) {
                errors++;
                if (errors < 3) {
80005278:	00200d13          	li	s10,2
                    printf("  Mismatch @%d[%d]: got %d expected %d\r\n",
8000527c:	00005a97          	auipc	s5,0x5
80005280:	c4ca8a93          	addi	s5,s5,-948 # 80009ec8 <__clzsi2+0x448>
    for (int i = 0; i < alloc_count; i++) {
80005284:	00600b13          	li	s6,6
        if (!ptrs[i]) continue;
80005288:	00092c83          	lw	s9,0(s2)
8000528c:	080c8263          	beqz	s9,80005310 <_Z9heap_testv+0x284>
        for (size_t j = 0; j < sizes[i]; j++) {
80005290:	0009a783          	lw	a5,0(s3)
80005294:	0e078663          	beqz	a5,80005380 <_Z9heap_testv+0x2f4>
80005298:	0ffbf413          	andi	s0,s7,255
8000529c:	00fc8c33          	add	s8,s9,a5
800052a0:	000c8493          	mv	s1,s9
        int errors = 0;
800052a4:	00000d93          	li	s11,0
800052a8:	0140006f          	j	800052bc <_Z9heap_testv+0x230>
800052ac:	00140413          	addi	s0,s0,1
800052b0:	00148493          	addi	s1,s1,1
800052b4:	0ff47413          	andi	s0,s0,255
        for (size_t j = 0; j < sizes[i]; j++) {
800052b8:	029c0c63          	beq	s8,s1,800052f0 <_Z9heap_testv+0x264>
            if (p[j] != (uint8_t)(i + j)) {
800052bc:	0004c683          	lbu	a3,0(s1)
800052c0:	fe8686e3          	beq	a3,s0,800052ac <_Z9heap_testv+0x220>
                errors++;
800052c4:	001d8d93          	addi	s11,s11,1
                if (errors < 3) {
800052c8:	ffbd42e3          	blt	s10,s11,800052ac <_Z9heap_testv+0x220>
                    printf("  Mismatch @%d[%d]: got %d expected %d\r\n",
800052cc:	00040713          	mv	a4,s0
800052d0:	41948633          	sub	a2,s1,s9
800052d4:	000b8593          	mv	a1,s7
800052d8:	000a8513          	mv	a0,s5
800052dc:	00140413          	addi	s0,s0,1
800052e0:	00148493          	addi	s1,s1,1
800052e4:	818fe0ef          	jal	ra,800032fc <_Z6printfPKcz>
800052e8:	0ff47413          	andi	s0,s0,255
        for (size_t j = 0; j < sizes[i]; j++) {
800052ec:	fc9c18e3          	bne	s8,s1,800052bc <_Z9heap_testv+0x230>
                                i, (int)j, p[j], (uint8_t)(i + j));
                }
            }
        }
        printf("[%d] verify -> %s (%d errors)\r\n",
800052f0:	00005617          	auipc	a2,0x5
800052f4:	b3860613          	addi	a2,a2,-1224 # 80009e28 <__clzsi2+0x3a8>
800052f8:	080d8463          	beqz	s11,80005380 <_Z9heap_testv+0x2f4>
800052fc:	000d8693          	mv	a3,s11
80005300:	000b8593          	mv	a1,s7
80005304:	00005517          	auipc	a0,0x5
80005308:	bf050513          	addi	a0,a0,-1040 # 80009ef4 <__clzsi2+0x474>
8000530c:	ff1fd0ef          	jal	ra,800032fc <_Z6printfPKcz>
    for (int i = 0; i < alloc_count; i++) {
80005310:	001b8b93          	addi	s7,s7,1
80005314:	00490913          	addi	s2,s2,4
80005318:	00498993          	addi	s3,s3,4
8000531c:	f76b96e3          	bne	s7,s6,80005288 <_Z9heap_testv+0x1fc>
                    i, (errors == 0 ? "OK" : "FAIL"), errors);
    }

    uint32_t used = (uint32_t)(current_heap - (uint8_t *)&_heap_start);
80005320:	000a2583          	lw	a1,0(s4)
    printf("\r\nTotal heap used: %d bytes\r\n", used);
80005324:	00005797          	auipc	a5,0x5
80005328:	63878793          	addi	a5,a5,1592 # 8000a95c <_heap_start>
8000532c:	00005517          	auipc	a0,0x5
80005330:	be850513          	addi	a0,a0,-1048 # 80009f14 <__clzsi2+0x494>
80005334:	40f585b3          	sub	a1,a1,a5
80005338:	fc5fd0ef          	jal	ra,800032fc <_Z6printfPKcz>
    // printf("Remaining heap:  %d bytes\r\n", 
    //             (uint32_t)(&_heap_end - current_heap));
    printf("===== Heap Test End =====\r\n");
}
8000533c:	06812403          	lw	s0,104(sp)
80005340:	06c12083          	lw	ra,108(sp)
80005344:	06412483          	lw	s1,100(sp)
80005348:	06012903          	lw	s2,96(sp)
8000534c:	05c12983          	lw	s3,92(sp)
80005350:	05812a03          	lw	s4,88(sp)
80005354:	05412a83          	lw	s5,84(sp)
80005358:	05012b03          	lw	s6,80(sp)
8000535c:	04c12b83          	lw	s7,76(sp)
80005360:	04812c03          	lw	s8,72(sp)
80005364:	04412c83          	lw	s9,68(sp)
80005368:	04012d03          	lw	s10,64(sp)
8000536c:	03c12d83          	lw	s11,60(sp)
    printf("===== Heap Test End =====\r\n");
80005370:	00005517          	auipc	a0,0x5
80005374:	bc450513          	addi	a0,a0,-1084 # 80009f34 <__clzsi2+0x4b4>
}
80005378:	07010113          	addi	sp,sp,112
    printf("===== Heap Test End =====\r\n");
8000537c:	f81fd06f          	j	800032fc <_Z6printfPKcz>
        int errors = 0;
80005380:	00000d93          	li	s11,0
        printf("[%d] verify -> %s (%d errors)\r\n",
80005384:	00005617          	auipc	a2,0x5
80005388:	aa060613          	addi	a2,a2,-1376 # 80009e24 <__clzsi2+0x3a4>
8000538c:	f71ff06f          	j	800052fc <_Z9heap_testv+0x270>

80005390 <_ZL6ulli2ayP5param>:


#ifdef PRINTF_LONG_LONG_SUPPORT
static void _TFP_GCC_NO_INLINE_ ulli2a(
    unsigned long long int num, struct param *p)
{
80005390:	fc010113          	addi	sp,sp,-64
80005394:	02812c23          	sw	s0,56(sp)
80005398:	02912a23          	sw	s1,52(sp)
8000539c:	03212823          	sw	s2,48(sp)
800053a0:	03312623          	sw	s3,44(sp)
800053a4:	03412423          	sw	s4,40(sp)
800053a8:	03512223          	sw	s5,36(sp)
800053ac:	03612023          	sw	s6,32(sp)
800053b0:	01712e23          	sw	s7,28(sp)
800053b4:	02112e23          	sw	ra,60(sp)
800053b8:	01812c23          	sw	s8,24(sp)
800053bc:	01912a23          	sw	s9,20(sp)
800053c0:	01a12823          	sw	s10,16(sp)
800053c4:	01b12623          	sw	s11,12(sp)
800053c8:	00060b13          	mv	s6,a2
800053cc:	00058913          	mv	s2,a1
800053d0:	00050993          	mv	s3,a0
    int n = 0;
    unsigned long long int d = 1;
    char *bf = p->bf;
800053d4:	01062a03          	lw	s4,16(a2)
    while (num / d >= p->base)
800053d8:	00c62a83          	lw	s5,12(a2)
800053dc:	00000b93          	li	s7,0
    unsigned long long int d = 1;
800053e0:	00100493          	li	s1,1
800053e4:	00000413          	li	s0,0
    while (num / d >= p->base)
800053e8:	12058e63          	beqz	a1,80005524 <_ZL6ulli2ayP5param+0x194>
        d *= p->base;
800053ec:	000a8613          	mv	a2,s5
800053f0:	00000693          	li	a3,0
800053f4:	00048513          	mv	a0,s1
800053f8:	00040593          	mv	a1,s0
800053fc:	540040ef          	jal	ra,8000993c <__muldi3>
80005400:	00050493          	mv	s1,a0
80005404:	00058413          	mv	s0,a1
    while (num / d >= p->base)
80005408:	00050613          	mv	a2,a0
8000540c:	00058693          	mv	a3,a1
80005410:	00098513          	mv	a0,s3
80005414:	00090593          	mv	a1,s2
80005418:	079020ef          	jal	ra,80007c90 <__udivdi3>
8000541c:	fcbb98e3          	bne	s7,a1,800053ec <_ZL6ulli2ayP5param+0x5c>
80005420:	fd5576e3          	bgeu	a0,s5,800053ec <_ZL6ulli2ayP5param+0x5c>
    while (d != 0) {
80005424:	0084e7b3          	or	a5,s1,s0
80005428:	0a078663          	beqz	a5,800054d4 <_ZL6ulli2ayP5param+0x144>
    unsigned long long int d = 1;
8000542c:	00000d13          	li	s10,0
        int dgt = num / d;
        num %= d;
        d /= p->base;
80005430:	00000b93          	li	s7,0
        if (n || dgt > 0 || d == 0) {
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005434:	00900c13          	li	s8,9
        int dgt = num / d;
80005438:	00048613          	mv	a2,s1
8000543c:	00040693          	mv	a3,s0
80005440:	00098513          	mv	a0,s3
80005444:	00090593          	mv	a1,s2
80005448:	049020ef          	jal	ra,80007c90 <__udivdi3>
8000544c:	00050c93          	mv	s9,a0
        num %= d;
80005450:	00048613          	mv	a2,s1
80005454:	00040693          	mv	a3,s0
80005458:	00098513          	mv	a0,s3
8000545c:	00090593          	mv	a1,s2
80005460:	605020ef          	jal	ra,80008264 <__umoddi3>
80005464:	00050993          	mv	s3,a0
80005468:	00058913          	mv	s2,a1
        d /= p->base;
8000546c:	000a8613          	mv	a2,s5
80005470:	00000693          	li	a3,0
80005474:	00048513          	mv	a0,s1
80005478:	00040593          	mv	a1,s0
8000547c:	015020ef          	jal	ra,80007c90 <__udivdi3>
        int dgt = num / d;
80005480:	000c8713          	mv	a4,s9
        if (n || dgt > 0 || d == 0) {
80005484:	000d1463          	bnez	s10,8000548c <_ZL6ulli2ayP5param+0xfc>
80005488:	09905663          	blez	s9,80005514 <_ZL6ulli2ayP5param+0x184>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
8000548c:	03000793          	li	a5,48
80005490:	00ec5e63          	bge	s8,a4,800054ac <_ZL6ulli2ayP5param+0x11c>
80005494:	000b4783          	lbu	a5,0(s6)
80005498:	0047f793          	andi	a5,a5,4
8000549c:	0017b793          	seqz	a5,a5
800054a0:	40f007b3          	neg	a5,a5
800054a4:	0207f793          	andi	a5,a5,32
800054a8:	03778793          	addi	a5,a5,55
800054ac:	019787b3          	add	a5,a5,s9
800054b0:	00fa0023          	sb	a5,0(s4)
            ++n;
800054b4:	001d0d13          	addi	s10,s10,1
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800054b8:	001a0a13          	addi	s4,s4,1
    while (d != 0) {
800054bc:	008b8a63          	beq	s7,s0,800054d0 <_ZL6ulli2ayP5param+0x140>
800054c0:	00cb2a83          	lw	s5,12(s6)
    unsigned long long int d = 1;
800054c4:	00050493          	mv	s1,a0
800054c8:	00058413          	mv	s0,a1
800054cc:	f6dff06f          	j	80005438 <_ZL6ulli2ayP5param+0xa8>
    while (d != 0) {
800054d0:	ff54f8e3          	bgeu	s1,s5,800054c0 <_ZL6ulli2ayP5param+0x130>
        }
    }
    *bf = 0;
800054d4:	000a0023          	sb	zero,0(s4)
}
800054d8:	03c12083          	lw	ra,60(sp)
800054dc:	03812403          	lw	s0,56(sp)
800054e0:	03412483          	lw	s1,52(sp)
800054e4:	03012903          	lw	s2,48(sp)
800054e8:	02c12983          	lw	s3,44(sp)
800054ec:	02812a03          	lw	s4,40(sp)
800054f0:	02412a83          	lw	s5,36(sp)
800054f4:	02012b03          	lw	s6,32(sp)
800054f8:	01c12b83          	lw	s7,28(sp)
800054fc:	01812c03          	lw	s8,24(sp)
80005500:	01412c83          	lw	s9,20(sp)
80005504:	01012d03          	lw	s10,16(sp)
80005508:	00c12d83          	lw	s11,12(sp)
8000550c:	04010113          	addi	sp,sp,64
80005510:	00008067          	ret
        if (n || dgt > 0 || d == 0) {
80005514:	fa0418e3          	bnez	s0,800054c4 <_ZL6ulli2ayP5param+0x134>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005518:	03000793          	li	a5,48
        if (n || dgt > 0 || d == 0) {
8000551c:	f954e8e3          	bltu	s1,s5,800054ac <_ZL6ulli2ayP5param+0x11c>
80005520:	fa5ff06f          	j	800054c4 <_ZL6ulli2ayP5param+0x134>
    while (num / d >= p->base)
80005524:	ed5574e3          	bgeu	a0,s5,800053ec <_ZL6ulli2ayP5param+0x5c>
80005528:	f05ff06f          	j	8000542c <_ZL6ulli2ayP5param+0x9c>

8000552c <_ZL6putchwPvPFvS_cEP5param>:

static void putchw(void *putp, putcf putf, struct param *p)
{
    char ch;
    int n = p->width;
    char *bf = p->bf;
8000552c:	01062783          	lw	a5,16(a2)
{
80005530:	fe010113          	addi	sp,sp,-32
80005534:	00812c23          	sw	s0,24(sp)
80005538:	01212823          	sw	s2,16(sp)
8000553c:	01312623          	sw	s3,12(sp)
80005540:	01412423          	sw	s4,8(sp)
80005544:	00112e23          	sw	ra,28(sp)
80005548:	00912a23          	sw	s1,20(sp)

    /* Number of filling characters */
    while (*bf++ && n > 0)
8000554c:	0007c703          	lbu	a4,0(a5)
{
80005550:	00060a13          	mv	s4,a2
80005554:	00050913          	mv	s2,a0
80005558:	00058993          	mv	s3,a1
    int n = p->width;
8000555c:	00462403          	lw	s0,4(a2)
    while (*bf++ && n > 0)
80005560:	02070263          	beqz	a4,80005584 <_ZL6putchwPvPFvS_cEP5param+0x58>
80005564:	00178793          	addi	a5,a5,1
80005568:	00804663          	bgtz	s0,80005574 <_ZL6putchwPvPFvS_cEP5param+0x48>
8000556c:	0180006f          	j	80005584 <_ZL6putchwPvPFvS_cEP5param+0x58>
80005570:	00040a63          	beqz	s0,80005584 <_ZL6putchwPvPFvS_cEP5param+0x58>
80005574:	00178793          	addi	a5,a5,1
80005578:	fff7c703          	lbu	a4,-1(a5)
        n--;
8000557c:	fff40413          	addi	s0,s0,-1
    while (*bf++ && n > 0)
80005580:	fe0718e3          	bnez	a4,80005570 <_ZL6putchwPvPFvS_cEP5param+0x44>
    if (p->sign)
80005584:	008a4583          	lbu	a1,8(s4)
        n--;
    if (p->alt && p->base == 16)
80005588:	000a4783          	lbu	a5,0(s4)
        n--;
8000558c:	00b03733          	snez	a4,a1
    if (p->alt && p->base == 16)
80005590:	0027f793          	andi	a5,a5,2
        n--;
80005594:	40e40433          	sub	s0,s0,a4
    if (p->alt && p->base == 16)
80005598:	00078e63          	beqz	a5,800055b4 <_ZL6putchwPvPFvS_cEP5param+0x88>
8000559c:	00ca2783          	lw	a5,12(s4)
800055a0:	01000713          	li	a4,16
800055a4:	12e78863          	beq	a5,a4,800056d4 <_ZL6putchwPvPFvS_cEP5param+0x1a8>
        n -= 2;
    else if (p->alt && p->base == 8)
        n--;
800055a8:	ff878793          	addi	a5,a5,-8
800055ac:	0017b793          	seqz	a5,a5
800055b0:	40f40433          	sub	s0,s0,a5

    /* Fill with space to align to the right, before alternate or sign */
    if (!p->lz && !p->align_left) {
800055b4:	000a2783          	lw	a5,0(s4)
800055b8:	0097f793          	andi	a5,a5,9
800055bc:	02079663          	bnez	a5,800055e8 <_ZL6putchwPvPFvS_cEP5param+0xbc>
        while (n-- > 0)
800055c0:	fff40493          	addi	s1,s0,-1
800055c4:	14805e63          	blez	s0,80005720 <_ZL6putchwPvPFvS_cEP5param+0x1f4>
800055c8:	fff00413          	li	s0,-1
800055cc:	fff48493          	addi	s1,s1,-1
            putf(putp, ' ');
800055d0:	02000593          	li	a1,32
800055d4:	00090513          	mv	a0,s2
800055d8:	000980e7          	jalr	s3
        while (n-- > 0)
800055dc:	fe8498e3          	bne	s1,s0,800055cc <_ZL6putchwPvPFvS_cEP5param+0xa0>
800055e0:	008a4583          	lbu	a1,8(s4)
800055e4:	fff00413          	li	s0,-1
    }

    /* print sign */
    if (p->sign)
800055e8:	00058663          	beqz	a1,800055f4 <_ZL6putchwPvPFvS_cEP5param+0xc8>
        putf(putp, p->sign);
800055ec:	00090513          	mv	a0,s2
800055f0:	000980e7          	jalr	s3

    /* Alternate */
    if (p->alt && p->base == 16) {
800055f4:	000a4783          	lbu	a5,0(s4)
800055f8:	0027f713          	andi	a4,a5,2
800055fc:	00070c63          	beqz	a4,80005614 <_ZL6putchwPvPFvS_cEP5param+0xe8>
80005600:	00ca2703          	lw	a4,12(s4)
80005604:	01000693          	li	a3,16
80005608:	0cd70a63          	beq	a4,a3,800056dc <_ZL6putchwPvPFvS_cEP5param+0x1b0>
        putf(putp, '0');
        putf(putp, (p->uc ? 'X' : 'x'));
    } else if (p->alt && p->base == 8) {
8000560c:	00800693          	li	a3,8
80005610:	0ed70e63          	beq	a4,a3,8000570c <_ZL6putchwPvPFvS_cEP5param+0x1e0>
        putf(putp, '0');
    }

    /* Fill with zeros, after alternate or sign */
    if (p->lz) {
80005614:	0017f793          	andi	a5,a5,1
80005618:	02078463          	beqz	a5,80005640 <_ZL6putchwPvPFvS_cEP5param+0x114>
        while (n-- > 0)
8000561c:	fff40493          	addi	s1,s0,-1
80005620:	10805463          	blez	s0,80005728 <_ZL6putchwPvPFvS_cEP5param+0x1fc>
80005624:	fff00413          	li	s0,-1
80005628:	fff48493          	addi	s1,s1,-1
            putf(putp, '0');
8000562c:	03000593          	li	a1,48
80005630:	00090513          	mv	a0,s2
80005634:	000980e7          	jalr	s3
        while (n-- > 0)
80005638:	fe8498e3          	bne	s1,s0,80005628 <_ZL6putchwPvPFvS_cEP5param+0xfc>
8000563c:	fff00413          	li	s0,-1
    }

    /* Put actual buffer */
    bf = p->bf;
80005640:	010a2483          	lw	s1,16(s4)
    while ((ch = *bf++))
80005644:	0004c583          	lbu	a1,0(s1)
80005648:	00148493          	addi	s1,s1,1
8000564c:	00058c63          	beqz	a1,80005664 <_ZL6putchwPvPFvS_cEP5param+0x138>
        putf(putp, ch);
80005650:	00090513          	mv	a0,s2
    while ((ch = *bf++))
80005654:	00148493          	addi	s1,s1,1
        putf(putp, ch);
80005658:	000980e7          	jalr	s3
    while ((ch = *bf++))
8000565c:	fff4c583          	lbu	a1,-1(s1)
80005660:	fe0598e3          	bnez	a1,80005650 <_ZL6putchwPvPFvS_cEP5param+0x124>

    /* Fill with space to align to the left, after string */
    if (!p->lz && p->align_left) {
80005664:	000a2783          	lw	a5,0(s4)
80005668:	00800713          	li	a4,8
8000566c:	0097f793          	andi	a5,a5,9
80005670:	02e78263          	beq	a5,a4,80005694 <_ZL6putchwPvPFvS_cEP5param+0x168>
        while (n-- > 0)
            putf(putp, ' ');
    }
}
80005674:	01c12083          	lw	ra,28(sp)
80005678:	01812403          	lw	s0,24(sp)
8000567c:	01412483          	lw	s1,20(sp)
80005680:	01012903          	lw	s2,16(sp)
80005684:	00c12983          	lw	s3,12(sp)
80005688:	00812a03          	lw	s4,8(sp)
8000568c:	02010113          	addi	sp,sp,32
80005690:	00008067          	ret
        while (n-- > 0)
80005694:	fff40493          	addi	s1,s0,-1
80005698:	fc805ee3          	blez	s0,80005674 <_ZL6putchwPvPFvS_cEP5param+0x148>
8000569c:	fff00413          	li	s0,-1
800056a0:	fff48493          	addi	s1,s1,-1
            putf(putp, ' ');
800056a4:	02000593          	li	a1,32
800056a8:	00090513          	mv	a0,s2
800056ac:	000980e7          	jalr	s3
        while (n-- > 0)
800056b0:	fe8498e3          	bne	s1,s0,800056a0 <_ZL6putchwPvPFvS_cEP5param+0x174>
}
800056b4:	01c12083          	lw	ra,28(sp)
800056b8:	01812403          	lw	s0,24(sp)
800056bc:	01412483          	lw	s1,20(sp)
800056c0:	01012903          	lw	s2,16(sp)
800056c4:	00c12983          	lw	s3,12(sp)
800056c8:	00812a03          	lw	s4,8(sp)
800056cc:	02010113          	addi	sp,sp,32
800056d0:	00008067          	ret
        n -= 2;
800056d4:	ffe40413          	addi	s0,s0,-2
800056d8:	eddff06f          	j	800055b4 <_ZL6putchwPvPFvS_cEP5param+0x88>
        putf(putp, '0');
800056dc:	03000593          	li	a1,48
800056e0:	00090513          	mv	a0,s2
800056e4:	000980e7          	jalr	s3
        putf(putp, (p->uc ? 'X' : 'x'));
800056e8:	000a4583          	lbu	a1,0(s4)
800056ec:	00090513          	mv	a0,s2
800056f0:	01d59593          	slli	a1,a1,0x1d
800056f4:	41f5d593          	srai	a1,a1,0x1f
800056f8:	fe05f593          	andi	a1,a1,-32
800056fc:	07858593          	addi	a1,a1,120
80005700:	000980e7          	jalr	s3
80005704:	000a4783          	lbu	a5,0(s4)
80005708:	f0dff06f          	j	80005614 <_ZL6putchwPvPFvS_cEP5param+0xe8>
        putf(putp, '0');
8000570c:	03000593          	li	a1,48
80005710:	00090513          	mv	a0,s2
80005714:	000980e7          	jalr	s3
80005718:	000a4783          	lbu	a5,0(s4)
8000571c:	ef9ff06f          	j	80005614 <_ZL6putchwPvPFvS_cEP5param+0xe8>
        while (n-- > 0)
80005720:	00048413          	mv	s0,s1
80005724:	ec5ff06f          	j	800055e8 <_ZL6putchwPvPFvS_cEP5param+0xbc>
        while (n-- > 0)
80005728:	00048413          	mv	s0,s1
8000572c:	f15ff06f          	j	80005640 <_ZL6putchwPvPFvS_cEP5param+0x114>

80005730 <tfp_format>:

void tfp_format(void *putp, putcf putf, const char *fmt, va_list va)
{
80005730:	f8010113          	addi	sp,sp,-128
    char bf[23];  /* long = 64b on some architectures */
#else
    char bf[12];  /* int = 32b on some architectures */
#endif
    char ch;
    p.bf = bf;
80005734:	02810793          	addi	a5,sp,40
{
80005738:	06912a23          	sw	s1,116(sp)
8000573c:	07212823          	sw	s2,112(sp)
80005740:	07312623          	sw	s3,108(sp)
80005744:	07412423          	sw	s4,104(sp)
80005748:	07512223          	sw	s5,100(sp)
8000574c:	07612023          	sw	s6,96(sp)
80005750:	05712e23          	sw	s7,92(sp)
80005754:	05812c23          	sw	s8,88(sp)
80005758:	06112e23          	sw	ra,124(sp)
8000575c:	06812c23          	sw	s0,120(sp)
80005760:	05912a23          	sw	s9,84(sp)
80005764:	05a12823          	sw	s10,80(sp)
80005768:	05b12623          	sw	s11,76(sp)
8000576c:	00050993          	mv	s3,a0
80005770:	00058913          	mv	s2,a1
80005774:	00060c13          	mv	s8,a2
80005778:	00068b93          	mv	s7,a3
    p.bf = bf;
8000577c:	02f12223          	sw	a5,36(sp)

    while ((ch = *(fmt++))) {
        if (ch != '%') {
80005780:	02500493          	li	s1,37
80005784:	02d00b13          	li	s6,45
80005788:	03000a93          	li	s5,48
8000578c:	02300a13          	li	s4,35
    while ((ch = *(fmt++))) {
80005790:	000c4583          	lbu	a1,0(s8)
80005794:	001c0413          	addi	s0,s8,1
80005798:	02058063          	beqz	a1,800057b8 <tfp_format+0x88>
        if (ch != '%') {
8000579c:	04958c63          	beq	a1,s1,800057f4 <tfp_format+0xc4>
            putf(putp, ch);
800057a0:	00098513          	mv	a0,s3
    while ((ch = *(fmt++))) {
800057a4:	00040c13          	mv	s8,s0
            putf(putp, ch);
800057a8:	000900e7          	jalr	s2
    while ((ch = *(fmt++))) {
800057ac:	000c4583          	lbu	a1,0(s8)
800057b0:	001c0413          	addi	s0,s8,1
800057b4:	fe0594e3          	bnez	a1,8000579c <tfp_format+0x6c>
                break;
            }
        }
    }
 abort:;
}
800057b8:	07c12083          	lw	ra,124(sp)
800057bc:	07812403          	lw	s0,120(sp)
800057c0:	07412483          	lw	s1,116(sp)
800057c4:	07012903          	lw	s2,112(sp)
800057c8:	06c12983          	lw	s3,108(sp)
800057cc:	06812a03          	lw	s4,104(sp)
800057d0:	06412a83          	lw	s5,100(sp)
800057d4:	06012b03          	lw	s6,96(sp)
800057d8:	05c12b83          	lw	s7,92(sp)
800057dc:	05812c03          	lw	s8,88(sp)
800057e0:	05412c83          	lw	s9,84(sp)
800057e4:	05012d03          	lw	s10,80(sp)
800057e8:	04c12d83          	lw	s11,76(sp)
800057ec:	08010113          	addi	sp,sp,128
800057f0:	00008067          	ret
            p.lz = 0;
800057f4:	01414783          	lbu	a5,20(sp)
            p.width = 0;
800057f8:	00012c23          	sw	zero,24(sp)
            p.sign = 0;
800057fc:	00010e23          	sb	zero,28(sp)
            p.lz = 0;
80005800:	ff47f793          	andi	a5,a5,-12
80005804:	00f10a23          	sb	a5,20(sp)
            p.sign = 0;
80005808:	00000593          	li	a1,0
8000580c:	00000713          	li	a4,0
80005810:	00000693          	li	a3,0
80005814:	00000513          	li	a0,0
80005818:	00000613          	li	a2,0
            while ((ch = *(fmt++))) {
8000581c:	00140413          	addi	s0,s0,1
80005820:	fff44783          	lbu	a5,-1(s0)
80005824:	f8078ae3          	beqz	a5,800057b8 <tfp_format+0x88>
80005828:	1b678e63          	beq	a5,s6,800059e4 <tfp_format+0x2b4>
8000582c:	1b578663          	beq	a5,s5,800059d8 <tfp_format+0x2a8>
80005830:	19478e63          	beq	a5,s4,800059cc <tfp_format+0x29c>
80005834:	00060863          	beqz	a2,80005844 <tfp_format+0x114>
80005838:	01414603          	lbu	a2,20(sp)
8000583c:	00866613          	ori	a2,a2,8
80005840:	00c10a23          	sb	a2,20(sp)
80005844:	00068a63          	beqz	a3,80005858 <tfp_format+0x128>
80005848:	01414683          	lbu	a3,20(sp)
8000584c:	ffe6f693          	andi	a3,a3,-2
80005850:	00a6e533          	or	a0,a3,a0
80005854:	00a10a23          	sb	a0,20(sp)
80005858:	00058c63          	beqz	a1,80005870 <tfp_format+0x140>
8000585c:	01414683          	lbu	a3,20(sp)
80005860:	00171713          	slli	a4,a4,0x1
80005864:	ffd6f693          	andi	a3,a3,-3
80005868:	00e6e733          	or	a4,a3,a4
8000586c:	00e10a23          	sb	a4,20(sp)
            if (ch >= '0' && ch <= '9') {
80005870:	fd078613          	addi	a2,a5,-48
80005874:	0ff67693          	andi	a3,a2,255
80005878:	00900713          	li	a4,9
8000587c:	4ad77863          	bgeu	a4,a3,80005d2c <tfp_format+0x5fc>
            if (ch == '.') {
80005880:	02e00713          	li	a4,46
80005884:	50e78863          	beq	a5,a4,80005d94 <tfp_format+0x664>
            if (ch == 'z') {
80005888:	07a00713          	li	a4,122
8000588c:	48e78863          	beq	a5,a4,80005d1c <tfp_format+0x5ec>
            if (ch == 'l') {
80005890:	06c00713          	li	a4,108
80005894:	52e78463          	beq	a5,a4,80005dbc <tfp_format+0x68c>
80005898:	00040c13          	mv	s8,s0
            char lng = 0;  /* 1 for long, 2 for long long */
8000589c:	00000693          	li	a3,0
            switch (ch) {
800058a0:	06900713          	li	a4,105
800058a4:	26e78e63          	beq	a5,a4,80005b20 <tfp_format+0x3f0>
800058a8:	22f77863          	bgeu	a4,a5,80005ad8 <tfp_format+0x3a8>
800058ac:	07300713          	li	a4,115
800058b0:	5ee78c63          	beq	a5,a4,80005ea8 <tfp_format+0x778>
800058b4:	12f76c63          	bltu	a4,a5,800059ec <tfp_format+0x2bc>
800058b8:	06f00713          	li	a4,111
800058bc:	50e78a63          	beq	a5,a4,80005dd0 <tfp_format+0x6a0>
800058c0:	07000713          	li	a4,112
800058c4:	ece796e3          	bne	a5,a4,80005790 <tfp_format+0x60>
                p.alt = 1;
800058c8:	01414783          	lbu	a5,20(sp)
800058cc:	02412c83          	lw	s9,36(sp)
                p.base = 16;
800058d0:	01000713          	li	a4,16
                p.alt = 1;
800058d4:	ff97f793          	andi	a5,a5,-7
800058d8:	0027e793          	ori	a5,a5,2
800058dc:	000ba403          	lw	s0,0(s7)
                p.base = 16;
800058e0:	02e12023          	sw	a4,32(sp)
                p.alt = 1;
800058e4:	00f10a23          	sb	a5,20(sp)
                  if (1 == lng)
800058e8:	004b8b93          	addi	s7,s7,4
    while (num / d >= p->base)
800058ec:	00f00793          	li	a5,15
    unsigned int d = 1;
800058f0:	00100d93          	li	s11,1
    while (num / d >= p->base)
800058f4:	0287f063          	bgeu	a5,s0,80005914 <tfp_format+0x1e4>
800058f8:	00f00d13          	li	s10,15
        d *= p->base;
800058fc:	004d9d93          	slli	s11,s11,0x4
    while (num / d >= p->base)
80005900:	000d8593          	mv	a1,s11
80005904:	00040513          	mv	a0,s0
80005908:	0cc040ef          	jal	ra,800099d4 <__udivsi3>
8000590c:	fead68e3          	bltu	s10,a0,800058fc <tfp_format+0x1cc>
    while (d != 0) {
80005910:	680d8663          	beqz	s11,80005f9c <tfp_format+0x86c>
    unsigned int d = 1;
80005914:	01000d13          	li	s10,16
80005918:	00000613          	li	a2,0
8000591c:	0480006f          	j	80005964 <tfp_format+0x234>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005920:	00900693          	li	a3,9
80005924:	03000713          	li	a4,48
80005928:	00f6de63          	bge	a3,a5,80005944 <tfp_format+0x214>
8000592c:	01414703          	lbu	a4,20(sp)
80005930:	00477713          	andi	a4,a4,4
80005934:	00173713          	seqz	a4,a4
80005938:	40e00733          	neg	a4,a4
8000593c:	02077713          	andi	a4,a4,32
80005940:	03770713          	addi	a4,a4,55
80005944:	00f70733          	add	a4,a4,a5
80005948:	00ec8023          	sb	a4,0(s9)
8000594c:	001c8693          	addi	a3,s9,1
            ++n;
80005950:	00160613          	addi	a2,a2,1
    while (d != 0) {
80005954:	07ade063          	bltu	s11,s10,800059b4 <tfp_format+0x284>
80005958:	02012d03          	lw	s10,32(sp)
    unsigned int d = 1;
8000595c:	00068c93          	mv	s9,a3
80005960:	00050d93          	mv	s11,a0
        int dgt = num / d;
80005964:	000d8593          	mv	a1,s11
80005968:	00040513          	mv	a0,s0
8000596c:	00c12623          	sw	a2,12(sp)
80005970:	064040ef          	jal	ra,800099d4 <__udivsi3>
80005974:	00a12423          	sw	a0,8(sp)
        num %= d;
80005978:	000d8593          	mv	a1,s11
8000597c:	00040513          	mv	a0,s0
80005980:	09c040ef          	jal	ra,80009a1c <__umodsi3>
80005984:	00050413          	mv	s0,a0
        d /= p->base;
80005988:	000d0593          	mv	a1,s10
8000598c:	000d8513          	mv	a0,s11
80005990:	044040ef          	jal	ra,800099d4 <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80005994:	00c12603          	lw	a2,12(sp)
80005998:	00812783          	lw	a5,8(sp)
8000599c:	f80612e3          	bnez	a2,80005920 <tfp_format+0x1f0>
800059a0:	f8f040e3          	bgtz	a5,80005920 <tfp_format+0x1f0>
800059a4:	53adf663          	bgeu	s11,s10,80005ed0 <tfp_format+0x7a0>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800059a8:	03078713          	addi	a4,a5,48
800059ac:	001c8693          	addi	a3,s9,1
800059b0:	00ec8023          	sb	a4,0(s9)
    *bf = 0;
800059b4:	00068023          	sb	zero,0(a3)
                putchw(putp, putf, &p);
800059b8:	01410613          	addi	a2,sp,20
800059bc:	00090593          	mv	a1,s2
800059c0:	00098513          	mv	a0,s3
800059c4:	b69ff0ef          	jal	ra,8000552c <_ZL6putchwPvPFvS_cEP5param>
                break;
800059c8:	dc9ff06f          	j	80005790 <tfp_format+0x60>
            while ((ch = *(fmt++))) {
800059cc:	00100593          	li	a1,1
                    p.alt = 1;
800059d0:	00100713          	li	a4,1
800059d4:	e49ff06f          	j	8000581c <tfp_format+0xec>
            while ((ch = *(fmt++))) {
800059d8:	00100693          	li	a3,1
                    p.lz = 1;
800059dc:	00100513          	li	a0,1
800059e0:	e3dff06f          	j	8000581c <tfp_format+0xec>
                    p.align_left = 1;
800059e4:	00100613          	li	a2,1
800059e8:	e35ff06f          	j	8000581c <tfp_format+0xec>
800059ec:	07500713          	li	a4,117
800059f0:	22e79663          	bne	a5,a4,80005c1c <tfp_format+0x4ec>
                p.base = 10;
800059f4:	00a00793          	li	a5,10
800059f8:	02f12023          	sw	a5,32(sp)
                  if (1 == lng)
800059fc:	000ba403          	lw	s0,0(s7)
80005a00:	02412c83          	lw	s9,36(sp)
80005a04:	004b8b93          	addi	s7,s7,4
    while (num / d >= p->base)
80005a08:	00900793          	li	a5,9
    unsigned long int d = 1;
80005a0c:	00100d93          	li	s11,1
                  if (1 == lng)
80005a10:	4c069463          	bnez	a3,80005ed8 <tfp_format+0x7a8>
    while (num / d >= p->base)
80005a14:	0287f463          	bgeu	a5,s0,80005a3c <tfp_format+0x30c>
80005a18:	00900d13          	li	s10,9
        d *= p->base;
80005a1c:	002d9713          	slli	a4,s11,0x2
80005a20:	01b707b3          	add	a5,a4,s11
80005a24:	00179d93          	slli	s11,a5,0x1
    while (num / d >= p->base)
80005a28:	000d8593          	mv	a1,s11
80005a2c:	00040513          	mv	a0,s0
80005a30:	7a5030ef          	jal	ra,800099d4 <__udivsi3>
80005a34:	fead64e3          	bltu	s10,a0,80005a1c <tfp_format+0x2ec>
    while (d != 0) {
80005a38:	560d8263          	beqz	s11,80005f9c <tfp_format+0x86c>
    unsigned int d = 1;
80005a3c:	00a00d13          	li	s10,10
80005a40:	00000613          	li	a2,0
80005a44:	0480006f          	j	80005a8c <tfp_format+0x35c>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005a48:	00900693          	li	a3,9
80005a4c:	03000713          	li	a4,48
80005a50:	00f6de63          	bge	a3,a5,80005a6c <tfp_format+0x33c>
80005a54:	01414703          	lbu	a4,20(sp)
80005a58:	00477713          	andi	a4,a4,4
80005a5c:	00173713          	seqz	a4,a4
80005a60:	40e00733          	neg	a4,a4
80005a64:	02077713          	andi	a4,a4,32
80005a68:	03770713          	addi	a4,a4,55
80005a6c:	00f70733          	add	a4,a4,a5
80005a70:	00ec8023          	sb	a4,0(s9)
80005a74:	001c8693          	addi	a3,s9,1
            ++n;
80005a78:	00160613          	addi	a2,a2,1
    while (d != 0) {
80005a7c:	f3adece3          	bltu	s11,s10,800059b4 <tfp_format+0x284>
80005a80:	02012d03          	lw	s10,32(sp)
    unsigned int d = 1;
80005a84:	00068c93          	mv	s9,a3
80005a88:	00050d93          	mv	s11,a0
        int dgt = num / d;
80005a8c:	000d8593          	mv	a1,s11
80005a90:	00040513          	mv	a0,s0
80005a94:	00c12623          	sw	a2,12(sp)
80005a98:	73d030ef          	jal	ra,800099d4 <__udivsi3>
80005a9c:	00a12423          	sw	a0,8(sp)
        num %= d;
80005aa0:	000d8593          	mv	a1,s11
80005aa4:	00040513          	mv	a0,s0
80005aa8:	775030ef          	jal	ra,80009a1c <__umodsi3>
80005aac:	00050413          	mv	s0,a0
        d /= p->base;
80005ab0:	000d0593          	mv	a1,s10
80005ab4:	000d8513          	mv	a0,s11
80005ab8:	71d030ef          	jal	ra,800099d4 <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80005abc:	00c12603          	lw	a2,12(sp)
80005ac0:	00812783          	lw	a5,8(sp)
80005ac4:	f80612e3          	bnez	a2,80005a48 <tfp_format+0x318>
80005ac8:	f8f040e3          	bgtz	a5,80005a48 <tfp_format+0x318>
80005acc:	edadeee3          	bltu	s11,s10,800059a8 <tfp_format+0x278>
80005ad0:	000c8693          	mv	a3,s9
80005ad4:	fadff06f          	j	80005a80 <tfp_format+0x350>
80005ad8:	05800713          	li	a4,88
80005adc:	14e78463          	beq	a5,a4,80005c24 <tfp_format+0x4f4>
80005ae0:	02f77063          	bgeu	a4,a5,80005b00 <tfp_format+0x3d0>
80005ae4:	06300713          	li	a4,99
80005ae8:	02e79863          	bne	a5,a4,80005b18 <tfp_format+0x3e8>
                putf(putp, (char)(va_arg(va, int)));
80005aec:	000bc583          	lbu	a1,0(s7)
80005af0:	00098513          	mv	a0,s3
80005af4:	004b8b93          	addi	s7,s7,4
80005af8:	000900e7          	jalr	s2
                break;
80005afc:	c95ff06f          	j	80005790 <tfp_format+0x60>
80005b00:	ca078ce3          	beqz	a5,800057b8 <tfp_format+0x88>
80005b04:	c89796e3          	bne	a5,s1,80005790 <tfp_format+0x60>
                putf(putp, ch);
80005b08:	02500593          	li	a1,37
80005b0c:	00098513          	mv	a0,s3
80005b10:	000900e7          	jalr	s2
80005b14:	c7dff06f          	j	80005790 <tfp_format+0x60>
80005b18:	06400713          	li	a4,100
80005b1c:	c6e79ae3          	bne	a5,a4,80005790 <tfp_format+0x60>
                p.base = 10;
80005b20:	00a00793          	li	a5,10
80005b24:	02f12023          	sw	a5,32(sp)
                  if (1 == lng)
80005b28:	004b8793          	addi	a5,s7,4
80005b2c:	00f12623          	sw	a5,12(sp)
80005b30:	5a069263          	bnez	a3,800060d4 <tfp_format+0x9a4>
                    i2a(va_arg(va, int), &p);
80005b34:	000bab83          	lw	s7,0(s7)
    if (num < 0) {
80005b38:	000bd863          	bgez	s7,80005b48 <tfp_format+0x418>
        p->sign = '-';
80005b3c:	02d00793          	li	a5,45
        num = -num;
80005b40:	41700bb3          	neg	s7,s7
        p->sign = '-';
80005b44:	00f10e23          	sb	a5,28(sp)
    char *bf = p->bf;
80005b48:	02412703          	lw	a4,36(sp)
    while (num / d >= p->base)
80005b4c:	00900793          	li	a5,9
    ui2a(num, p);
80005b50:	000b8413          	mv	s0,s7
    char *bf = p->bf;
80005b54:	00e12423          	sw	a4,8(sp)
    unsigned int d = 1;
80005b58:	00100c93          	li	s9,1
    while (num / d >= p->base)
80005b5c:	0377d463          	bge	a5,s7,80005b84 <tfp_format+0x454>
80005b60:	00900d93          	li	s11,9
        d *= p->base;
80005b64:	002c9713          	slli	a4,s9,0x2
80005b68:	019707b3          	add	a5,a4,s9
80005b6c:	00179c93          	slli	s9,a5,0x1
    while (num / d >= p->base)
80005b70:	000c8593          	mv	a1,s9
80005b74:	000b8513          	mv	a0,s7
80005b78:	65d030ef          	jal	ra,800099d4 <__udivsi3>
80005b7c:	feade4e3          	bltu	s11,a0,80005b64 <tfp_format+0x434>
    while (d != 0) {
80005b80:	520c8463          	beqz	s9,800060a8 <tfp_format+0x978>
    unsigned int d = 1;
80005b84:	00a00b93          	li	s7,10
80005b88:	00000d93          	li	s11,0
80005b8c:	04c0006f          	j	80005bd8 <tfp_format+0x4a8>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005b90:	00900793          	li	a5,9
80005b94:	03000713          	li	a4,48
80005b98:	01a7fe63          	bgeu	a5,s10,80005bb4 <tfp_format+0x484>
80005b9c:	01414703          	lbu	a4,20(sp)
80005ba0:	00477713          	andi	a4,a4,4
80005ba4:	00173713          	seqz	a4,a4
80005ba8:	40e00733          	neg	a4,a4
80005bac:	02077713          	andi	a4,a4,32
80005bb0:	03770713          	addi	a4,a4,55
80005bb4:	00812783          	lw	a5,8(sp)
80005bb8:	01a70733          	add	a4,a4,s10
            ++n;
80005bbc:	001d8d93          	addi	s11,s11,1
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005bc0:	00e78023          	sb	a4,0(a5)
80005bc4:	00178693          	addi	a3,a5,1
    while (d != 0) {
80005bc8:	4f7ce263          	bltu	s9,s7,800060ac <tfp_format+0x97c>
80005bcc:	02012b83          	lw	s7,32(sp)
    unsigned int d = 1;
80005bd0:	00d12423          	sw	a3,8(sp)
80005bd4:	00050c93          	mv	s9,a0
        int dgt = num / d;
80005bd8:	000c8593          	mv	a1,s9
80005bdc:	00040513          	mv	a0,s0
80005be0:	5f5030ef          	jal	ra,800099d4 <__udivsi3>
80005be4:	00050d13          	mv	s10,a0
        num %= d;
80005be8:	000c8593          	mv	a1,s9
80005bec:	00040513          	mv	a0,s0
80005bf0:	62d030ef          	jal	ra,80009a1c <__umodsi3>
80005bf4:	00050413          	mv	s0,a0
        d /= p->base;
80005bf8:	000b8593          	mv	a1,s7
80005bfc:	000c8513          	mv	a0,s9
80005c00:	5d5030ef          	jal	ra,800099d4 <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80005c04:	01ade733          	or	a4,s11,s10
80005c08:	f80714e3          	bnez	a4,80005b90 <tfp_format+0x460>
80005c0c:	4b7ce663          	bltu	s9,s7,800060b8 <tfp_format+0x988>
80005c10:	00812683          	lw	a3,8(sp)
80005c14:	00000d93          	li	s11,0
80005c18:	fb5ff06f          	j	80005bcc <tfp_format+0x49c>
80005c1c:	07800713          	li	a4,120
80005c20:	b6e798e3          	bne	a5,a4,80005790 <tfp_format+0x60>
                p.uc = (ch == 'X')?1:0;
80005c24:	01414703          	lbu	a4,20(sp)
80005c28:	fa878793          	addi	a5,a5,-88
80005c2c:	0017b793          	seqz	a5,a5
80005c30:	00279613          	slli	a2,a5,0x2
80005c34:	ffb77793          	andi	a5,a4,-5
80005c38:	00c7e7b3          	or	a5,a5,a2
                p.base = 16;
80005c3c:	01000713          	li	a4,16
80005c40:	02e12023          	sw	a4,32(sp)
                p.uc = (ch == 'X')?1:0;
80005c44:	00f10a23          	sb	a5,20(sp)
                  if (1 == lng)
80005c48:	000ba403          	lw	s0,0(s7)
80005c4c:	02412c83          	lw	s9,36(sp)
80005c50:	004b8b93          	addi	s7,s7,4
80005c54:	c8068ce3          	beqz	a3,800058ec <tfp_format+0x1bc>
    while (num / d >= p->base)
80005c58:	00f00793          	li	a5,15
    unsigned long int d = 1;
80005c5c:	00100d93          	li	s11,1
    while (num / d >= p->base)
80005c60:	0287f063          	bgeu	a5,s0,80005c80 <tfp_format+0x550>
80005c64:	00f00d13          	li	s10,15
        d *= p->base;
80005c68:	004d9d93          	slli	s11,s11,0x4
    while (num / d >= p->base)
80005c6c:	000d8593          	mv	a1,s11
80005c70:	00040513          	mv	a0,s0
80005c74:	561030ef          	jal	ra,800099d4 <__udivsi3>
80005c78:	fead68e3          	bltu	s10,a0,80005c68 <tfp_format+0x538>
    while (d != 0) {
80005c7c:	320d8063          	beqz	s11,80005f9c <tfp_format+0x86c>
    unsigned long int d = 1;
80005c80:	01000d13          	li	s10,16
80005c84:	00000613          	li	a2,0
80005c88:	0480006f          	j	80005cd0 <tfp_format+0x5a0>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005c8c:	00900693          	li	a3,9
80005c90:	03000713          	li	a4,48
80005c94:	00f6de63          	bge	a3,a5,80005cb0 <tfp_format+0x580>
80005c98:	01414703          	lbu	a4,20(sp)
80005c9c:	00477713          	andi	a4,a4,4
80005ca0:	00173713          	seqz	a4,a4
80005ca4:	40e00733          	neg	a4,a4
80005ca8:	02077713          	andi	a4,a4,32
80005cac:	03770713          	addi	a4,a4,55
80005cb0:	00f70733          	add	a4,a4,a5
80005cb4:	00ec8023          	sb	a4,0(s9)
80005cb8:	001c8693          	addi	a3,s9,1
            ++n;
80005cbc:	00160613          	addi	a2,a2,1
    while (d != 0) {
80005cc0:	cfadeae3          	bltu	s11,s10,800059b4 <tfp_format+0x284>
80005cc4:	02012d03          	lw	s10,32(sp)
    unsigned long int d = 1;
80005cc8:	00068c93          	mv	s9,a3
80005ccc:	00050d93          	mv	s11,a0
        int dgt = num / d;
80005cd0:	000d8593          	mv	a1,s11
80005cd4:	00040513          	mv	a0,s0
80005cd8:	00c12623          	sw	a2,12(sp)
80005cdc:	4f9030ef          	jal	ra,800099d4 <__udivsi3>
80005ce0:	00a12423          	sw	a0,8(sp)
        num %= d;
80005ce4:	000d8593          	mv	a1,s11
80005ce8:	00040513          	mv	a0,s0
80005cec:	531030ef          	jal	ra,80009a1c <__umodsi3>
80005cf0:	00050413          	mv	s0,a0
        d /= p->base;
80005cf4:	000d0593          	mv	a1,s10
80005cf8:	000d8513          	mv	a0,s11
80005cfc:	4d9030ef          	jal	ra,800099d4 <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80005d00:	00c12603          	lw	a2,12(sp)
80005d04:	00812783          	lw	a5,8(sp)
80005d08:	f80612e3          	bnez	a2,80005c8c <tfp_format+0x55c>
80005d0c:	f8f040e3          	bgtz	a5,80005c8c <tfp_format+0x55c>
80005d10:	c9adece3          	bltu	s11,s10,800059a8 <tfp_format+0x278>
80005d14:	000c8693          	mv	a3,s9
80005d18:	fadff06f          	j	80005cc4 <tfp_format+0x594>
                ch = *(fmt++);
80005d1c:	00140c13          	addi	s8,s0,1
80005d20:	00044783          	lbu	a5,0(s0)
                    lng = 1;
80005d24:	00100693          	li	a3,1
80005d28:	b79ff06f          	j	800058a0 <tfp_format+0x170>
    unsigned int num = 0;
80005d2c:	00000513          	li	a0,0
    if (ch >= '0' && ch <= '9')
80005d30:	00900893          	li	a7,9
    else if (ch >= 'a' && ch <= 'f')
80005d34:	00500813          	li	a6,5
        if (digit > base)
80005d38:	00a00313          	li	t1,10
    else if (ch >= 'a' && ch <= 'f')
80005d3c:	f9f78713          	addi	a4,a5,-97
    else if (ch >= 'A' && ch <= 'F')
80005d40:	fbf78693          	addi	a3,a5,-65
    if (ch >= '0' && ch <= '9')
80005d44:	0ff67593          	andi	a1,a2,255
    else if (ch >= 'a' && ch <= 'f')
80005d48:	0ff77713          	andi	a4,a4,255
    else if (ch >= 'A' && ch <= 'F')
80005d4c:	0ff6f693          	andi	a3,a3,255
    if (ch >= '0' && ch <= '9')
80005d50:	00b8fc63          	bgeu	a7,a1,80005d68 <tfp_format+0x638>
        return ch - 'a' + 10;
80005d54:	fa978613          	addi	a2,a5,-87
    else if (ch >= 'a' && ch <= 'f')
80005d58:	00e87663          	bgeu	a6,a4,80005d64 <tfp_format+0x634>
    else if (ch >= 'A' && ch <= 'F')
80005d5c:	02d86663          	bltu	a6,a3,80005d88 <tfp_format+0x658>
        return ch - 'A' + 10;
80005d60:	fc978613          	addi	a2,a5,-55
        if (digit > base)
80005d64:	02661263          	bne	a2,t1,80005d88 <tfp_format+0x658>
        ch = *p++;
80005d68:	00140413          	addi	s0,s0,1
        num = num * base + digit;
80005d6c:	00251713          	slli	a4,a0,0x2
        ch = *p++;
80005d70:	fff44783          	lbu	a5,-1(s0)
        num = num * base + digit;
80005d74:	00a70733          	add	a4,a4,a0
80005d78:	00171713          	slli	a4,a4,0x1
80005d7c:	00e60533          	add	a0,a2,a4
        ch = *p++;
80005d80:	fd078613          	addi	a2,a5,-48
80005d84:	fb9ff06f          	j	80005d3c <tfp_format+0x60c>
    *nump = num;
80005d88:	00a12c23          	sw	a0,24(sp)
            if (ch == '.') {
80005d8c:	02e00713          	li	a4,46
80005d90:	aee79ce3          	bne	a5,a4,80005888 <tfp_format+0x158>
              p.lz = 1;  /* zero-padding */
80005d94:	01414783          	lbu	a5,20(sp)
              } while ((ch >= '0') && (ch <= '9'));
80005d98:	00900693          	li	a3,9
              p.lz = 1;  /* zero-padding */
80005d9c:	0017e793          	ori	a5,a5,1
80005da0:	00f10a23          	sb	a5,20(sp)
                ch = *(fmt++);
80005da4:	00140413          	addi	s0,s0,1
80005da8:	fff44783          	lbu	a5,-1(s0)
              } while ((ch >= '0') && (ch <= '9'));
80005dac:	fd078713          	addi	a4,a5,-48
80005db0:	0ff77713          	andi	a4,a4,255
80005db4:	fee6f8e3          	bgeu	a3,a4,80005da4 <tfp_format+0x674>
80005db8:	ad1ff06f          	j	80005888 <tfp_format+0x158>
                ch = *(fmt++);
80005dbc:	00044783          	lbu	a5,0(s0)
                if (ch == 'l') {
80005dc0:	22e78663          	beq	a5,a4,80005fec <tfp_format+0x8bc>
                ch = *(fmt++);
80005dc4:	00140c13          	addi	s8,s0,1
                lng = 1;
80005dc8:	00100693          	li	a3,1
80005dcc:	ad5ff06f          	j	800058a0 <tfp_format+0x170>
                ui2a(va_arg(va, unsigned int), &p);
80005dd0:	000ba403          	lw	s0,0(s7)
                p.base = 8;
80005dd4:	00800793          	li	a5,8
                ui2a(va_arg(va, unsigned int), &p);
80005dd8:	004b8713          	addi	a4,s7,4
                p.base = 8;
80005ddc:	02f12023          	sw	a5,32(sp)
                ui2a(va_arg(va, unsigned int), &p);
80005de0:	00e12623          	sw	a4,12(sp)
    while (num / d >= p->base)
80005de4:	00700793          	li	a5,7
    char *bf = p->bf;
80005de8:	02412d03          	lw	s10,36(sp)
    unsigned int d = 1;
80005dec:	00100d93          	li	s11,1
    while (num / d >= p->base)
80005df0:	0287f063          	bgeu	a5,s0,80005e10 <tfp_format+0x6e0>
80005df4:	00700c93          	li	s9,7
        d *= p->base;
80005df8:	003d9d93          	slli	s11,s11,0x3
    while (num / d >= p->base)
80005dfc:	000d8593          	mv	a1,s11
80005e00:	00040513          	mv	a0,s0
80005e04:	3d1030ef          	jal	ra,800099d4 <__udivsi3>
80005e08:	feace8e3          	bltu	s9,a0,80005df8 <tfp_format+0x6c8>
    while (d != 0) {
80005e0c:	180d8c63          	beqz	s11,80005fa4 <tfp_format+0x874>
    unsigned int d = 1;
80005e10:	00800c93          	li	s9,8
80005e14:	00000793          	li	a5,0
80005e18:	0480006f          	j	80005e60 <tfp_format+0x730>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005e1c:	00900693          	li	a3,9
80005e20:	03000713          	li	a4,48
80005e24:	0176de63          	bge	a3,s7,80005e40 <tfp_format+0x710>
80005e28:	01414683          	lbu	a3,20(sp)
80005e2c:	0046f693          	andi	a3,a3,4
80005e30:	0016b693          	seqz	a3,a3
80005e34:	40d006b3          	neg	a3,a3
80005e38:	0206f713          	andi	a4,a3,32
80005e3c:	03770713          	addi	a4,a4,55
80005e40:	01770733          	add	a4,a4,s7
80005e44:	00ed0023          	sb	a4,0(s10)
80005e48:	001d0693          	addi	a3,s10,1
            ++n;
80005e4c:	00178793          	addi	a5,a5,1
    while (d != 0) {
80005e50:	159dec63          	bltu	s11,s9,80005fa8 <tfp_format+0x878>
80005e54:	02012c83          	lw	s9,32(sp)
    unsigned int d = 1;
80005e58:	00068d13          	mv	s10,a3
80005e5c:	00050d93          	mv	s11,a0
        int dgt = num / d;
80005e60:	000d8593          	mv	a1,s11
80005e64:	00040513          	mv	a0,s0
80005e68:	00f12423          	sw	a5,8(sp)
80005e6c:	369030ef          	jal	ra,800099d4 <__udivsi3>
        num %= d;
80005e70:	000d8593          	mv	a1,s11
        int dgt = num / d;
80005e74:	00050b93          	mv	s7,a0
        num %= d;
80005e78:	00040513          	mv	a0,s0
80005e7c:	3a1030ef          	jal	ra,80009a1c <__umodsi3>
80005e80:	00050413          	mv	s0,a0
        d /= p->base;
80005e84:	000c8593          	mv	a1,s9
80005e88:	000d8513          	mv	a0,s11
80005e8c:	349030ef          	jal	ra,800099d4 <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80005e90:	00812783          	lw	a5,8(sp)
80005e94:	f80794e3          	bnez	a5,80005e1c <tfp_format+0x6ec>
80005e98:	f97042e3          	bgtz	s7,80005e1c <tfp_format+0x6ec>
80005e9c:	139de463          	bltu	s11,s9,80005fc4 <tfp_format+0x894>
80005ea0:	000d0693          	mv	a3,s10
80005ea4:	fb1ff06f          	j	80005e54 <tfp_format+0x724>
                p.bf = va_arg(va, char *);
80005ea8:	000ba783          	lw	a5,0(s7)
                putchw(putp, putf, &p);
80005eac:	01410613          	addi	a2,sp,20
80005eb0:	00090593          	mv	a1,s2
80005eb4:	00098513          	mv	a0,s3
                p.bf = va_arg(va, char *);
80005eb8:	02f12223          	sw	a5,36(sp)
                putchw(putp, putf, &p);
80005ebc:	e70ff0ef          	jal	ra,8000552c <_ZL6putchwPvPFvS_cEP5param>
                p.bf = bf;
80005ec0:	02810793          	addi	a5,sp,40
                p.bf = va_arg(va, char *);
80005ec4:	004b8b93          	addi	s7,s7,4
                p.bf = bf;
80005ec8:	02f12223          	sw	a5,36(sp)
                break;
80005ecc:	8c5ff06f          	j	80005790 <tfp_format+0x60>
        if (n || dgt > 0 || d == 0) {
80005ed0:	000c8693          	mv	a3,s9
80005ed4:	a85ff06f          	j	80005958 <tfp_format+0x228>
    while (num / d >= p->base)
80005ed8:	0287f463          	bgeu	a5,s0,80005f00 <tfp_format+0x7d0>
80005edc:	00900d13          	li	s10,9
        d *= p->base;
80005ee0:	002d9713          	slli	a4,s11,0x2
80005ee4:	01b707b3          	add	a5,a4,s11
80005ee8:	00179d93          	slli	s11,a5,0x1
    while (num / d >= p->base)
80005eec:	000d8593          	mv	a1,s11
80005ef0:	00040513          	mv	a0,s0
80005ef4:	2e1030ef          	jal	ra,800099d4 <__udivsi3>
80005ef8:	fead64e3          	bltu	s10,a0,80005ee0 <tfp_format+0x7b0>
    while (d != 0) {
80005efc:	0a0d8063          	beqz	s11,80005f9c <tfp_format+0x86c>
    unsigned long int d = 1;
80005f00:	00a00d13          	li	s10,10
80005f04:	00000613          	li	a2,0
80005f08:	0480006f          	j	80005f50 <tfp_format+0x820>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005f0c:	00900693          	li	a3,9
80005f10:	03000713          	li	a4,48
80005f14:	00f6de63          	bge	a3,a5,80005f30 <tfp_format+0x800>
80005f18:	01414703          	lbu	a4,20(sp)
80005f1c:	00477713          	andi	a4,a4,4
80005f20:	00173713          	seqz	a4,a4
80005f24:	40e00733          	neg	a4,a4
80005f28:	02077713          	andi	a4,a4,32
80005f2c:	03770713          	addi	a4,a4,55
80005f30:	00f70733          	add	a4,a4,a5
80005f34:	00ec8023          	sb	a4,0(s9)
80005f38:	001c8693          	addi	a3,s9,1
            ++n;
80005f3c:	00160613          	addi	a2,a2,1
    while (d != 0) {
80005f40:	a7adeae3          	bltu	s11,s10,800059b4 <tfp_format+0x284>
80005f44:	02012d03          	lw	s10,32(sp)
    unsigned long int d = 1;
80005f48:	00068c93          	mv	s9,a3
80005f4c:	00050d93          	mv	s11,a0
        int dgt = num / d;
80005f50:	000d8593          	mv	a1,s11
80005f54:	00040513          	mv	a0,s0
80005f58:	00c12623          	sw	a2,12(sp)
80005f5c:	279030ef          	jal	ra,800099d4 <__udivsi3>
80005f60:	00a12423          	sw	a0,8(sp)
        num %= d;
80005f64:	000d8593          	mv	a1,s11
80005f68:	00040513          	mv	a0,s0
80005f6c:	2b1030ef          	jal	ra,80009a1c <__umodsi3>
80005f70:	00050413          	mv	s0,a0
        d /= p->base;
80005f74:	000d0593          	mv	a1,s10
80005f78:	000d8513          	mv	a0,s11
80005f7c:	259030ef          	jal	ra,800099d4 <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80005f80:	00c12603          	lw	a2,12(sp)
80005f84:	00812783          	lw	a5,8(sp)
80005f88:	f80612e3          	bnez	a2,80005f0c <tfp_format+0x7dc>
80005f8c:	f8f040e3          	bgtz	a5,80005f0c <tfp_format+0x7dc>
80005f90:	a1adece3          	bltu	s11,s10,800059a8 <tfp_format+0x278>
80005f94:	000c8693          	mv	a3,s9
80005f98:	fadff06f          	j	80005f44 <tfp_format+0x814>
    char *bf = p->bf;
80005f9c:	000c8693          	mv	a3,s9
80005fa0:	a15ff06f          	j	800059b4 <tfp_format+0x284>
80005fa4:	000d0693          	mv	a3,s10
    *bf = 0;
80005fa8:	00068023          	sb	zero,0(a3)
                putchw(putp, putf, &p);
80005fac:	01410613          	addi	a2,sp,20
80005fb0:	00090593          	mv	a1,s2
80005fb4:	00098513          	mv	a0,s3
80005fb8:	d74ff0ef          	jal	ra,8000552c <_ZL6putchwPvPFvS_cEP5param>
                ui2a(va_arg(va, unsigned int), &p);
80005fbc:	00c12b83          	lw	s7,12(sp)
                break;
80005fc0:	fd0ff06f          	j	80005790 <tfp_format+0x60>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80005fc4:	030b8713          	addi	a4,s7,48
80005fc8:	001d0693          	addi	a3,s10,1
80005fcc:	00ed0023          	sb	a4,0(s10)
    *bf = 0;
80005fd0:	00068023          	sb	zero,0(a3)
                putchw(putp, putf, &p);
80005fd4:	01410613          	addi	a2,sp,20
80005fd8:	00090593          	mv	a1,s2
80005fdc:	00098513          	mv	a0,s3
80005fe0:	d4cff0ef          	jal	ra,8000552c <_ZL6putchwPvPFvS_cEP5param>
                ui2a(va_arg(va, unsigned int), &p);
80005fe4:	00c12b83          	lw	s7,12(sp)
80005fe8:	fa8ff06f          	j	80005790 <tfp_format+0x60>
                  ch = *(fmt++);
80005fec:	00144783          	lbu	a5,1(s0)
80005ff0:	06900713          	li	a4,105
80005ff4:	00240c13          	addi	s8,s0,2
            switch (ch) {
80005ff8:	02e78263          	beq	a5,a4,8000601c <tfp_format+0x8ec>
80005ffc:	04f76663          	bltu	a4,a5,80006048 <tfp_format+0x918>
80006000:	05800713          	li	a4,88
80006004:	06e78063          	beq	a5,a4,80006064 <tfp_format+0x934>
80006008:	aef77ce3          	bgeu	a4,a5,80005b00 <tfp_format+0x3d0>
8000600c:	06300713          	li	a4,99
80006010:	ace78ee3          	beq	a5,a4,80005aec <tfp_format+0x3bc>
80006014:	06400713          	li	a4,100
80006018:	f6e79c63          	bne	a5,a4,80005790 <tfp_format+0x60>
                    lli2a(va_arg(va, long long int), &p);
8000601c:	007b8793          	addi	a5,s7,7
80006020:	ff87f793          	andi	a5,a5,-8
80006024:	0047a583          	lw	a1,4(a5)
                p.base = 10;
80006028:	00a00713          	li	a4,10
8000602c:	02e12023          	sw	a4,32(sp)
                    lli2a(va_arg(va, long long int), &p);
80006030:	00878b93          	addi	s7,a5,8
80006034:	0007a503          	lw	a0,0(a5)
    if (num < 0) {
80006038:	1805c263          	bltz	a1,800061bc <tfp_format+0xa8c>
    ulli2a(num, p);
8000603c:	01410613          	addi	a2,sp,20
80006040:	b50ff0ef          	jal	ra,80005390 <_ZL6ulli2ayP5param>
80006044:	975ff06f          	j	800059b8 <tfp_format+0x288>
80006048:	07300713          	li	a4,115
8000604c:	e4e78ee3          	beq	a5,a4,80005ea8 <tfp_format+0x778>
80006050:	86f774e3          	bgeu	a4,a5,800058b8 <tfp_format+0x188>
80006054:	07500713          	li	a4,117
80006058:	18e78063          	beq	a5,a4,800061d8 <tfp_format+0xaa8>
8000605c:	07800713          	li	a4,120
80006060:	f2e79863          	bne	a5,a4,80005790 <tfp_format+0x60>
                p.uc = (ch == 'X')?1:0;
80006064:	01414703          	lbu	a4,20(sp)
                    ulli2a(va_arg(va, unsigned long long int), &p);
80006068:	007b8b93          	addi	s7,s7,7
8000606c:	ff8bfb93          	andi	s7,s7,-8
                p.uc = (ch == 'X')?1:0;
80006070:	fa878793          	addi	a5,a5,-88
                    ulli2a(va_arg(va, unsigned long long int), &p);
80006074:	000ba503          	lw	a0,0(s7)
80006078:	004ba583          	lw	a1,4(s7)
                p.uc = (ch == 'X')?1:0;
8000607c:	0017b793          	seqz	a5,a5
80006080:	ffb77713          	andi	a4,a4,-5
80006084:	00279793          	slli	a5,a5,0x2
80006088:	00f767b3          	or	a5,a4,a5
                    ulli2a(va_arg(va, unsigned long long int), &p);
8000608c:	01410613          	addi	a2,sp,20
                p.base = 16;
80006090:	01000713          	li	a4,16
80006094:	02e12023          	sw	a4,32(sp)
                p.uc = (ch == 'X')?1:0;
80006098:	00f10a23          	sb	a5,20(sp)
                    ulli2a(va_arg(va, unsigned long long int), &p);
8000609c:	008b8b93          	addi	s7,s7,8
800060a0:	af0ff0ef          	jal	ra,80005390 <_ZL6ulli2ayP5param>
800060a4:	915ff06f          	j	800059b8 <tfp_format+0x288>
    char *bf = p->bf;
800060a8:	00812683          	lw	a3,8(sp)
    *bf = 0;
800060ac:	00068023          	sb	zero,0(a3)
800060b0:	00c12b83          	lw	s7,12(sp)
                putchw(putp, putf, &p);
800060b4:	905ff06f          	j	800059b8 <tfp_format+0x288>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800060b8:	00812783          	lw	a5,8(sp)
800060bc:	030d0713          	addi	a4,s10,48
800060c0:	00e78023          	sb	a4,0(a5)
800060c4:	00178693          	addi	a3,a5,1
    *bf = 0;
800060c8:	00068023          	sb	zero,0(a3)
800060cc:	00c12b83          	lw	s7,12(sp)
                putchw(putp, putf, &p);
800060d0:	8e9ff06f          	j	800059b8 <tfp_format+0x288>
                    li2a(va_arg(va, long int), &p);
800060d4:	000bab83          	lw	s7,0(s7)
    if (num < 0) {
800060d8:	000bd863          	bgez	s7,800060e8 <tfp_format+0x9b8>
        p->sign = '-';
800060dc:	02d00793          	li	a5,45
        num = -num;
800060e0:	41700bb3          	neg	s7,s7
        p->sign = '-';
800060e4:	00f10e23          	sb	a5,28(sp)
    char *bf = p->bf;
800060e8:	02412703          	lw	a4,36(sp)
    while (num / d >= p->base)
800060ec:	00900793          	li	a5,9
    uli2a(num, p);
800060f0:	000b8413          	mv	s0,s7
    char *bf = p->bf;
800060f4:	00e12423          	sw	a4,8(sp)
    unsigned long int d = 1;
800060f8:	00100c93          	li	s9,1
    while (num / d >= p->base)
800060fc:	0377d463          	bge	a5,s7,80006124 <tfp_format+0x9f4>
80006100:	00900d93          	li	s11,9
        d *= p->base;
80006104:	002c9713          	slli	a4,s9,0x2
80006108:	019707b3          	add	a5,a4,s9
8000610c:	00179c93          	slli	s9,a5,0x1
    while (num / d >= p->base)
80006110:	000c8593          	mv	a1,s9
80006114:	000b8513          	mv	a0,s7
80006118:	0bd030ef          	jal	ra,800099d4 <__udivsi3>
8000611c:	feade4e3          	bltu	s11,a0,80006104 <tfp_format+0x9d4>
    while (d != 0) {
80006120:	f80c84e3          	beqz	s9,800060a8 <tfp_format+0x978>
    unsigned long int d = 1;
80006124:	00a00b93          	li	s7,10
80006128:	00000d93          	li	s11,0
8000612c:	04c0006f          	j	80006178 <tfp_format+0xa48>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006130:	00900793          	li	a5,9
80006134:	03000713          	li	a4,48
80006138:	01a7fe63          	bgeu	a5,s10,80006154 <tfp_format+0xa24>
8000613c:	01414703          	lbu	a4,20(sp)
80006140:	00477713          	andi	a4,a4,4
80006144:	00173713          	seqz	a4,a4
80006148:	40e00733          	neg	a4,a4
8000614c:	02077713          	andi	a4,a4,32
80006150:	03770713          	addi	a4,a4,55
80006154:	00812783          	lw	a5,8(sp)
80006158:	01a70733          	add	a4,a4,s10
            ++n;
8000615c:	001d8d93          	addi	s11,s11,1
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80006160:	00e78023          	sb	a4,0(a5)
80006164:	00178693          	addi	a3,a5,1
    while (d != 0) {
80006168:	f57ce2e3          	bltu	s9,s7,800060ac <tfp_format+0x97c>
8000616c:	02012b83          	lw	s7,32(sp)
    unsigned long int d = 1;
80006170:	00d12423          	sw	a3,8(sp)
80006174:	00050c93          	mv	s9,a0
        int dgt = num / d;
80006178:	000c8593          	mv	a1,s9
8000617c:	00040513          	mv	a0,s0
80006180:	055030ef          	jal	ra,800099d4 <__udivsi3>
80006184:	00050d13          	mv	s10,a0
        num %= d;
80006188:	000c8593          	mv	a1,s9
8000618c:	00040513          	mv	a0,s0
80006190:	08d030ef          	jal	ra,80009a1c <__umodsi3>
80006194:	00050413          	mv	s0,a0
        d /= p->base;
80006198:	000b8593          	mv	a1,s7
8000619c:	000c8513          	mv	a0,s9
800061a0:	035030ef          	jal	ra,800099d4 <__udivsi3>
        if (n || dgt > 0 || d == 0) {
800061a4:	01ade733          	or	a4,s11,s10
800061a8:	f80714e3          	bnez	a4,80006130 <tfp_format+0xa00>
800061ac:	f17ce6e3          	bltu	s9,s7,800060b8 <tfp_format+0x988>
800061b0:	00812683          	lw	a3,8(sp)
800061b4:	00000d93          	li	s11,0
800061b8:	fb5ff06f          	j	8000616c <tfp_format+0xa3c>
        num = -num;
800061bc:	40a00533          	neg	a0,a0
800061c0:	00a037b3          	snez	a5,a0
800061c4:	40b005b3          	neg	a1,a1
800061c8:	40f585b3          	sub	a1,a1,a5
        p->sign = '-';
800061cc:	02d00793          	li	a5,45
800061d0:	00f10e23          	sb	a5,28(sp)
800061d4:	e69ff06f          	j	8000603c <tfp_format+0x90c>
                    ulli2a(va_arg(va, unsigned long long int), &p);
800061d8:	007b8b93          	addi	s7,s7,7
800061dc:	ff8bfb93          	andi	s7,s7,-8
800061e0:	000ba503          	lw	a0,0(s7)
800061e4:	004ba583          	lw	a1,4(s7)
                p.base = 10;
800061e8:	00a00793          	li	a5,10
                    ulli2a(va_arg(va, unsigned long long int), &p);
800061ec:	01410613          	addi	a2,sp,20
                p.base = 10;
800061f0:	02f12023          	sw	a5,32(sp)
                    ulli2a(va_arg(va, unsigned long long int), &p);
800061f4:	008b8b93          	addi	s7,s7,8
800061f8:	998ff0ef          	jal	ra,80005390 <_ZL6ulli2ayP5param>
800061fc:	fbcff06f          	j	800059b8 <tfp_format+0x288>

80006200 <init_printf>:
static putcf stdout_putf;
static void *stdout_putp;

void init_printf(void *putp, putcf putf)
{
    stdout_putf = putf;
80006200:	00004797          	auipc	a5,0x4
80006204:	74b7ac23          	sw	a1,1880(a5) # 8000a958 <_ZL11stdout_putf>
    stdout_putp = putp;
80006208:	00004797          	auipc	a5,0x4
8000620c:	74a7a623          	sw	a0,1868(a5) # 8000a954 <_ZL11stdout_putp>
}
80006210:	00008067          	ret

80006214 <tfp_printf>:

void tfp_printf(char *fmt, ...)
{
80006214:	fc010113          	addi	sp,sp,-64
80006218:	02c12423          	sw	a2,40(sp)
8000621c:	02b12223          	sw	a1,36(sp)
    va_list va;
    va_start(va, fmt);
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80006220:	00004617          	auipc	a2,0x4
80006224:	73860613          	addi	a2,a2,1848 # 8000a958 <_ZL11stdout_putf>
80006228:	00062583          	lw	a1,0(a2)
8000622c:	00050613          	mv	a2,a0
80006230:	00004517          	auipc	a0,0x4
80006234:	72450513          	addi	a0,a0,1828 # 8000a954 <_ZL11stdout_putp>
80006238:	00052503          	lw	a0,0(a0)
    va_start(va, fmt);
8000623c:	02410313          	addi	t1,sp,36
{
80006240:	02d12623          	sw	a3,44(sp)
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80006244:	00030693          	mv	a3,t1
{
80006248:	00112e23          	sw	ra,28(sp)
8000624c:	02e12823          	sw	a4,48(sp)
80006250:	02f12a23          	sw	a5,52(sp)
80006254:	03012c23          	sw	a6,56(sp)
80006258:	03112e23          	sw	a7,60(sp)
    va_start(va, fmt);
8000625c:	00612623          	sw	t1,12(sp)
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80006260:	cd0ff0ef          	jal	ra,80005730 <tfp_format>
    va_end(va);
}
80006264:	01c12083          	lw	ra,28(sp)
80006268:	04010113          	addi	sp,sp,64
8000626c:	00008067          	ret

80006270 <cosf>:
80006270:	fe010113          	addi	sp,sp,-32
80006274:	00812c23          	sw	s0,24(sp)
80006278:	80000437          	lui	s0,0x80000
8000627c:	fff44793          	not	a5,s0
80006280:	3f491737          	lui	a4,0x3f491
80006284:	00112e23          	sw	ra,28(sp)
80006288:	00a7f7b3          	and	a5,a5,a0
8000628c:	fd870713          	addi	a4,a4,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
80006290:	00000593          	li	a1,0
80006294:	04f75663          	bge	a4,a5,800062e0 <cosf+0x70>
80006298:	7f800737          	lui	a4,0x7f800
8000629c:	00e7ce63          	blt	a5,a4,800062b8 <cosf+0x48>
800062a0:	00050593          	mv	a1,a0
800062a4:	0b0030ef          	jal	ra,80009354 <__subsf3>
800062a8:	01c12083          	lw	ra,28(sp)
800062ac:	01812403          	lw	s0,24(sp)
800062b0:	02010113          	addi	sp,sp,32
800062b4:	00008067          	ret
800062b8:	00810593          	addi	a1,sp,8
800062bc:	0f4000ef          	jal	ra,800063b0 <__ieee754_rem_pio2f>
800062c0:	00357793          	andi	a5,a0,3
800062c4:	00100713          	li	a4,1
800062c8:	00c12583          	lw	a1,12(sp)
800062cc:	00812503          	lw	a0,8(sp)
800062d0:	00e78c63          	beq	a5,a4,800062e8 <cosf+0x78>
800062d4:	00200713          	li	a4,2
800062d8:	02e78063          	beq	a5,a4,800062f8 <cosf+0x88>
800062dc:	02079263          	bnez	a5,80006300 <cosf+0x90>
800062e0:	534000ef          	jal	ra,80006814 <__kernel_cosf>
800062e4:	fc5ff06f          	j	800062a8 <cosf+0x38>
800062e8:	00100613          	li	a2,1
800062ec:	795000ef          	jal	ra,80007280 <__kernel_sinf>
800062f0:	00a44533          	xor	a0,s0,a0
800062f4:	fb5ff06f          	j	800062a8 <cosf+0x38>
800062f8:	51c000ef          	jal	ra,80006814 <__kernel_cosf>
800062fc:	ff5ff06f          	j	800062f0 <cosf+0x80>
80006300:	00100613          	li	a2,1
80006304:	77d000ef          	jal	ra,80007280 <__kernel_sinf>
80006308:	fa1ff06f          	j	800062a8 <cosf+0x38>

8000630c <sinf>:
8000630c:	fe010113          	addi	sp,sp,-32
80006310:	00812c23          	sw	s0,24(sp)
80006314:	80000437          	lui	s0,0x80000
80006318:	fff44793          	not	a5,s0
8000631c:	3f491737          	lui	a4,0x3f491
80006320:	00112e23          	sw	ra,28(sp)
80006324:	00a7f7b3          	and	a5,a5,a0
80006328:	fd870713          	addi	a4,a4,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
8000632c:	00f74a63          	blt	a4,a5,80006340 <sinf+0x34>
80006330:	00000613          	li	a2,0
80006334:	00000593          	li	a1,0
80006338:	749000ef          	jal	ra,80007280 <__kernel_sinf>
8000633c:	0140006f          	j	80006350 <sinf+0x44>
80006340:	7f800737          	lui	a4,0x7f800
80006344:	00e7ce63          	blt	a5,a4,80006360 <sinf+0x54>
80006348:	00050593          	mv	a1,a0
8000634c:	008030ef          	jal	ra,80009354 <__subsf3>
80006350:	01c12083          	lw	ra,28(sp)
80006354:	01812403          	lw	s0,24(sp)
80006358:	02010113          	addi	sp,sp,32
8000635c:	00008067          	ret
80006360:	00810593          	addi	a1,sp,8
80006364:	04c000ef          	jal	ra,800063b0 <__ieee754_rem_pio2f>
80006368:	00357793          	andi	a5,a0,3
8000636c:	00100713          	li	a4,1
80006370:	00c12583          	lw	a1,12(sp)
80006374:	00812503          	lw	a0,8(sp)
80006378:	00e78c63          	beq	a5,a4,80006390 <sinf+0x84>
8000637c:	00200713          	li	a4,2
80006380:	00e78c63          	beq	a5,a4,80006398 <sinf+0x8c>
80006384:	02079263          	bnez	a5,800063a8 <sinf+0x9c>
80006388:	00100613          	li	a2,1
8000638c:	fadff06f          	j	80006338 <sinf+0x2c>
80006390:	484000ef          	jal	ra,80006814 <__kernel_cosf>
80006394:	fbdff06f          	j	80006350 <sinf+0x44>
80006398:	00100613          	li	a2,1
8000639c:	6e5000ef          	jal	ra,80007280 <__kernel_sinf>
800063a0:	00a44533          	xor	a0,s0,a0
800063a4:	fadff06f          	j	80006350 <sinf+0x44>
800063a8:	46c000ef          	jal	ra,80006814 <__kernel_cosf>
800063ac:	ff5ff06f          	j	800063a0 <sinf+0x94>

800063b0 <__ieee754_rem_pio2f>:
800063b0:	fc010113          	addi	sp,sp,-64
800063b4:	02912a23          	sw	s1,52(sp)
800063b8:	3f491737          	lui	a4,0x3f491
800063bc:	00151493          	slli	s1,a0,0x1
800063c0:	02112e23          	sw	ra,60(sp)
800063c4:	02812c23          	sw	s0,56(sp)
800063c8:	03212823          	sw	s2,48(sp)
800063cc:	03312623          	sw	s3,44(sp)
800063d0:	03412423          	sw	s4,40(sp)
800063d4:	03512223          	sw	s5,36(sp)
800063d8:	03612023          	sw	s6,32(sp)
800063dc:	01712e23          	sw	s7,28(sp)
800063e0:	0014d493          	srli	s1,s1,0x1
800063e4:	fd870713          	addi	a4,a4,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
800063e8:	00974c63          	blt	a4,s1,80006400 <__ieee754_rem_pio2f+0x50>
800063ec:	00000793          	li	a5,0
800063f0:	00a5a023          	sw	a0,0(a1)
800063f4:	00f5a223          	sw	a5,4(a1)
800063f8:	00000913          	li	s2,0
800063fc:	0740006f          	j	80006470 <__ieee754_rem_pio2f+0xc0>
80006400:	4016d7b7          	lui	a5,0x4016d
80006404:	be378793          	addi	a5,a5,-1053 # 4016cbe3 <_stack_size+0x40164be3>
80006408:	00058413          	mv	s0,a1
8000640c:	00050993          	mv	s3,a0
80006410:	00050593          	mv	a1,a0
80006414:	1097ca63          	blt	a5,s1,80006528 <__ieee754_rem_pio2f+0x178>
80006418:	00004797          	auipc	a5,0x4
8000641c:	09c78793          	addi	a5,a5,156 # 8000a4b4 <_etext+0x1c>
80006420:	ff04f493          	andi	s1,s1,-16
80006424:	0007a583          	lw	a1,0(a5)
80006428:	08a05c63          	blez	a0,800064c0 <__ieee754_rem_pio2f+0x110>
8000642c:	729020ef          	jal	ra,80009354 <__subsf3>
80006430:	3fc917b7          	lui	a5,0x3fc91
80006434:	fd078793          	addi	a5,a5,-48 # 3fc90fd0 <_stack_size+0x3fc88fd0>
80006438:	00050913          	mv	s2,a0
8000643c:	06f48263          	beq	s1,a5,800064a0 <__ieee754_rem_pio2f+0xf0>
80006440:	00004497          	auipc	s1,0x4
80006444:	07848493          	addi	s1,s1,120 # 8000a4b8 <_etext+0x20>
80006448:	0004a583          	lw	a1,0(s1)
8000644c:	709020ef          	jal	ra,80009354 <__subsf3>
80006450:	00050593          	mv	a1,a0
80006454:	00a42023          	sw	a0,0(s0) # 80000000 <_stack_top+0xffc00000>
80006458:	00090513          	mv	a0,s2
8000645c:	6f9020ef          	jal	ra,80009354 <__subsf3>
80006460:	0004a583          	lw	a1,0(s1)
80006464:	00100913          	li	s2,1
80006468:	6ed020ef          	jal	ra,80009354 <__subsf3>
8000646c:	00a42223          	sw	a0,4(s0)
80006470:	03c12083          	lw	ra,60(sp)
80006474:	03812403          	lw	s0,56(sp)
80006478:	00090513          	mv	a0,s2
8000647c:	03412483          	lw	s1,52(sp)
80006480:	03012903          	lw	s2,48(sp)
80006484:	02c12983          	lw	s3,44(sp)
80006488:	02812a03          	lw	s4,40(sp)
8000648c:	02412a83          	lw	s5,36(sp)
80006490:	02012b03          	lw	s6,32(sp)
80006494:	01c12b83          	lw	s7,28(sp)
80006498:	04010113          	addi	sp,sp,64
8000649c:	00008067          	ret
800064a0:	00004797          	auipc	a5,0x4
800064a4:	01c78793          	addi	a5,a5,28 # 8000a4bc <_etext+0x24>
800064a8:	0007a583          	lw	a1,0(a5)
800064ac:	00004497          	auipc	s1,0x4
800064b0:	01448493          	addi	s1,s1,20 # 8000a4c0 <_etext+0x28>
800064b4:	6a1020ef          	jal	ra,80009354 <__subsf3>
800064b8:	00050913          	mv	s2,a0
800064bc:	f8dff06f          	j	80006448 <__ieee754_rem_pio2f+0x98>
800064c0:	294020ef          	jal	ra,80008754 <__addsf3>
800064c4:	3fc917b7          	lui	a5,0x3fc91
800064c8:	fd078793          	addi	a5,a5,-48 # 3fc90fd0 <_stack_size+0x3fc88fd0>
800064cc:	00050913          	mv	s2,a0
800064d0:	02f48c63          	beq	s1,a5,80006508 <__ieee754_rem_pio2f+0x158>
800064d4:	00004497          	auipc	s1,0x4
800064d8:	fe448493          	addi	s1,s1,-28 # 8000a4b8 <_etext+0x20>
800064dc:	0004a583          	lw	a1,0(s1)
800064e0:	274020ef          	jal	ra,80008754 <__addsf3>
800064e4:	00050593          	mv	a1,a0
800064e8:	00a42023          	sw	a0,0(s0)
800064ec:	00090513          	mv	a0,s2
800064f0:	665020ef          	jal	ra,80009354 <__subsf3>
800064f4:	0004a583          	lw	a1,0(s1)
800064f8:	fff00913          	li	s2,-1
800064fc:	258020ef          	jal	ra,80008754 <__addsf3>
80006500:	00a42223          	sw	a0,4(s0)
80006504:	f6dff06f          	j	80006470 <__ieee754_rem_pio2f+0xc0>
80006508:	00004797          	auipc	a5,0x4
8000650c:	fb478793          	addi	a5,a5,-76 # 8000a4bc <_etext+0x24>
80006510:	0007a583          	lw	a1,0(a5)
80006514:	00004497          	auipc	s1,0x4
80006518:	fac48493          	addi	s1,s1,-84 # 8000a4c0 <_etext+0x28>
8000651c:	238020ef          	jal	ra,80008754 <__addsf3>
80006520:	00050913          	mv	s2,a0
80006524:	fb9ff06f          	j	800064dc <__ieee754_rem_pio2f+0x12c>
80006528:	434917b7          	lui	a5,0x43491
8000652c:	f8078793          	addi	a5,a5,-128 # 43490f80 <_stack_size+0x43488f80>
80006530:	2097c063          	blt	a5,s1,80006730 <__ieee754_rem_pio2f+0x380>
80006534:	6f5000ef          	jal	ra,80007428 <fabsf>
80006538:	00004797          	auipc	a5,0x4
8000653c:	f8c78793          	addi	a5,a5,-116 # 8000a4c4 <_etext+0x2c>
80006540:	0007a583          	lw	a1,0(a5)
80006544:	00050a13          	mv	s4,a0
80006548:	2e9020ef          	jal	ra,80009030 <__mulsf3>
8000654c:	00004797          	auipc	a5,0x4
80006550:	f6478793          	addi	a5,a5,-156 # 8000a4b0 <_etext+0x18>
80006554:	0007a583          	lw	a1,0(a5)
80006558:	1fc020ef          	jal	ra,80008754 <__addsf3>
8000655c:	244030ef          	jal	ra,800097a0 <__fixsfsi>
80006560:	00050913          	mv	s2,a0
80006564:	2ac030ef          	jal	ra,80009810 <__floatsisf>
80006568:	00004797          	auipc	a5,0x4
8000656c:	f4c78793          	addi	a5,a5,-180 # 8000a4b4 <_etext+0x1c>
80006570:	0007a583          	lw	a1,0(a5)
80006574:	00050b13          	mv	s6,a0
80006578:	2b9020ef          	jal	ra,80009030 <__mulsf3>
8000657c:	00050593          	mv	a1,a0
80006580:	000a0513          	mv	a0,s4
80006584:	5d1020ef          	jal	ra,80009354 <__subsf3>
80006588:	00004797          	auipc	a5,0x4
8000658c:	f3078793          	addi	a5,a5,-208 # 8000a4b8 <_etext+0x20>
80006590:	0007a583          	lw	a1,0(a5)
80006594:	00050a13          	mv	s4,a0
80006598:	000b0513          	mv	a0,s6
8000659c:	295020ef          	jal	ra,80009030 <__mulsf3>
800065a0:	01f00793          	li	a5,31
800065a4:	00050a93          	mv	s5,a0
800065a8:	00050593          	mv	a1,a0
800065ac:	000a0513          	mv	a0,s4
800065b0:	0327c663          	blt	a5,s2,800065dc <__ieee754_rem_pio2f+0x22c>
800065b4:	fff90713          	addi	a4,s2,-1
800065b8:	00271693          	slli	a3,a4,0x2
800065bc:	00004717          	auipc	a4,0x4
800065c0:	99470713          	addi	a4,a4,-1644 # 80009f50 <npio2_hw>
800065c4:	00d70733          	add	a4,a4,a3
800065c8:	00072703          	lw	a4,0(a4)
800065cc:	f004f793          	andi	a5,s1,-256
800065d0:	00e78663          	beq	a5,a4,800065dc <__ieee754_rem_pio2f+0x22c>
800065d4:	581020ef          	jal	ra,80009354 <__subsf3>
800065d8:	0200006f          	j	800065f8 <__ieee754_rem_pio2f+0x248>
800065dc:	579020ef          	jal	ra,80009354 <__subsf3>
800065e0:	01755793          	srli	a5,a0,0x17
800065e4:	4174d493          	srai	s1,s1,0x17
800065e8:	0ff7f793          	andi	a5,a5,255
800065ec:	40f487b3          	sub	a5,s1,a5
800065f0:	00800713          	li	a4,8
800065f4:	00f74663          	blt	a4,a5,80006600 <__ieee754_rem_pio2f+0x250>
800065f8:	00a42023          	sw	a0,0(s0)
800065fc:	08c0006f          	j	80006688 <__ieee754_rem_pio2f+0x2d8>
80006600:	00004797          	auipc	a5,0x4
80006604:	ebc78793          	addi	a5,a5,-324 # 8000a4bc <_etext+0x24>
80006608:	0007a583          	lw	a1,0(a5)
8000660c:	000b0513          	mv	a0,s6
80006610:	221020ef          	jal	ra,80009030 <__mulsf3>
80006614:	00050a93          	mv	s5,a0
80006618:	00050593          	mv	a1,a0
8000661c:	000a0513          	mv	a0,s4
80006620:	535020ef          	jal	ra,80009354 <__subsf3>
80006624:	00050593          	mv	a1,a0
80006628:	00050b93          	mv	s7,a0
8000662c:	000a0513          	mv	a0,s4
80006630:	525020ef          	jal	ra,80009354 <__subsf3>
80006634:	000a8593          	mv	a1,s5
80006638:	51d020ef          	jal	ra,80009354 <__subsf3>
8000663c:	00004797          	auipc	a5,0x4
80006640:	e8478793          	addi	a5,a5,-380 # 8000a4c0 <_etext+0x28>
80006644:	0007a583          	lw	a1,0(a5)
80006648:	00050a13          	mv	s4,a0
8000664c:	000b0513          	mv	a0,s6
80006650:	1e1020ef          	jal	ra,80009030 <__mulsf3>
80006654:	000a0593          	mv	a1,s4
80006658:	4fd020ef          	jal	ra,80009354 <__subsf3>
8000665c:	00050593          	mv	a1,a0
80006660:	00050a93          	mv	s5,a0
80006664:	000b8513          	mv	a0,s7
80006668:	4ed020ef          	jal	ra,80009354 <__subsf3>
8000666c:	01755793          	srli	a5,a0,0x17
80006670:	0ff7f793          	andi	a5,a5,255
80006674:	40f484b3          	sub	s1,s1,a5
80006678:	01900793          	li	a5,25
8000667c:	0497c463          	blt	a5,s1,800066c4 <__ieee754_rem_pio2f+0x314>
80006680:	00a42023          	sw	a0,0(s0)
80006684:	000b8a13          	mv	s4,s7
80006688:	00042483          	lw	s1,0(s0)
8000668c:	000a0513          	mv	a0,s4
80006690:	00048593          	mv	a1,s1
80006694:	4c1020ef          	jal	ra,80009354 <__subsf3>
80006698:	000a8593          	mv	a1,s5
8000669c:	4b9020ef          	jal	ra,80009354 <__subsf3>
800066a0:	00a42223          	sw	a0,4(s0)
800066a4:	dc09d6e3          	bgez	s3,80006470 <__ieee754_rem_pio2f+0xc0>
800066a8:	800007b7          	lui	a5,0x80000
800066ac:	0097c4b3          	xor	s1,a5,s1
800066b0:	00942023          	sw	s1,0(s0)
800066b4:	00a7c7b3          	xor	a5,a5,a0
800066b8:	00f42223          	sw	a5,4(s0)
800066bc:	41200933          	neg	s2,s2
800066c0:	db1ff06f          	j	80006470 <__ieee754_rem_pio2f+0xc0>
800066c4:	00004797          	auipc	a5,0x4
800066c8:	e0478793          	addi	a5,a5,-508 # 8000a4c8 <_etext+0x30>
800066cc:	0007a583          	lw	a1,0(a5)
800066d0:	000b0513          	mv	a0,s6
800066d4:	15d020ef          	jal	ra,80009030 <__mulsf3>
800066d8:	00050493          	mv	s1,a0
800066dc:	00050593          	mv	a1,a0
800066e0:	000b8513          	mv	a0,s7
800066e4:	471020ef          	jal	ra,80009354 <__subsf3>
800066e8:	00050593          	mv	a1,a0
800066ec:	00050a13          	mv	s4,a0
800066f0:	000b8513          	mv	a0,s7
800066f4:	461020ef          	jal	ra,80009354 <__subsf3>
800066f8:	00048593          	mv	a1,s1
800066fc:	459020ef          	jal	ra,80009354 <__subsf3>
80006700:	00004797          	auipc	a5,0x4
80006704:	dcc78793          	addi	a5,a5,-564 # 8000a4cc <_etext+0x34>
80006708:	0007a583          	lw	a1,0(a5)
8000670c:	00050493          	mv	s1,a0
80006710:	000b0513          	mv	a0,s6
80006714:	11d020ef          	jal	ra,80009030 <__mulsf3>
80006718:	00048593          	mv	a1,s1
8000671c:	439020ef          	jal	ra,80009354 <__subsf3>
80006720:	00050a93          	mv	s5,a0
80006724:	00050593          	mv	a1,a0
80006728:	000a0513          	mv	a0,s4
8000672c:	ea9ff06f          	j	800065d4 <__ieee754_rem_pio2f+0x224>
80006730:	7f8007b7          	lui	a5,0x7f800
80006734:	00f4ca63          	blt	s1,a5,80006748 <__ieee754_rem_pio2f+0x398>
80006738:	41d020ef          	jal	ra,80009354 <__subsf3>
8000673c:	00a42223          	sw	a0,4(s0)
80006740:	00a42023          	sw	a0,0(s0)
80006744:	cb5ff06f          	j	800063f8 <__ieee754_rem_pio2f+0x48>
80006748:	4174d913          	srai	s2,s1,0x17
8000674c:	f7a90913          	addi	s2,s2,-134
80006750:	01791793          	slli	a5,s2,0x17
80006754:	40f484b3          	sub	s1,s1,a5
80006758:	00048513          	mv	a0,s1
8000675c:	044030ef          	jal	ra,800097a0 <__fixsfsi>
80006760:	0b0030ef          	jal	ra,80009810 <__floatsisf>
80006764:	00050593          	mv	a1,a0
80006768:	00a12223          	sw	a0,4(sp)
8000676c:	00048513          	mv	a0,s1
80006770:	3e5020ef          	jal	ra,80009354 <__subsf3>
80006774:	00004a17          	auipc	s4,0x4
80006778:	d5ca0a13          	addi	s4,s4,-676 # 8000a4d0 <_etext+0x38>
8000677c:	000a2583          	lw	a1,0(s4)
80006780:	0b1020ef          	jal	ra,80009030 <__mulsf3>
80006784:	00050a93          	mv	s5,a0
80006788:	018030ef          	jal	ra,800097a0 <__fixsfsi>
8000678c:	084030ef          	jal	ra,80009810 <__floatsisf>
80006790:	00050593          	mv	a1,a0
80006794:	00a12423          	sw	a0,8(sp)
80006798:	00050493          	mv	s1,a0
8000679c:	000a8513          	mv	a0,s5
800067a0:	3b5020ef          	jal	ra,80009354 <__subsf3>
800067a4:	000a2583          	lw	a1,0(s4)
800067a8:	089020ef          	jal	ra,80009030 <__mulsf3>
800067ac:	00000593          	li	a1,0
800067b0:	00a12623          	sw	a0,12(sp)
800067b4:	754020ef          	jal	ra,80008f08 <__eqsf2>
800067b8:	00300693          	li	a3,3
800067bc:	00051c63          	bnez	a0,800067d4 <__ieee754_rem_pio2f+0x424>
800067c0:	00000593          	li	a1,0
800067c4:	00048513          	mv	a0,s1
800067c8:	740020ef          	jal	ra,80008f08 <__eqsf2>
800067cc:	00a036b3          	snez	a3,a0
800067d0:	00168693          	addi	a3,a3,1
800067d4:	00090613          	mv	a2,s2
800067d8:	00003797          	auipc	a5,0x3
800067dc:	7f878793          	addi	a5,a5,2040 # 80009fd0 <two_over_pi>
800067e0:	00200713          	li	a4,2
800067e4:	00040593          	mv	a1,s0
800067e8:	00410513          	addi	a0,sp,4
800067ec:	1e8000ef          	jal	ra,800069d4 <__kernel_rem_pio2f>
800067f0:	00050913          	mv	s2,a0
800067f4:	c609dee3          	bgez	s3,80006470 <__ieee754_rem_pio2f+0xc0>
800067f8:	00042703          	lw	a4,0(s0)
800067fc:	00442783          	lw	a5,4(s0)
80006800:	800006b7          	lui	a3,0x80000
80006804:	00d74733          	xor	a4,a4,a3
80006808:	00e42023          	sw	a4,0(s0)
8000680c:	00d7c7b3          	xor	a5,a5,a3
80006810:	ea9ff06f          	j	800066b8 <__ieee754_rem_pio2f+0x308>

80006814 <__kernel_cosf>:
80006814:	fe010113          	addi	sp,sp,-32
80006818:	00812c23          	sw	s0,24(sp)
8000681c:	00151413          	slli	s0,a0,0x1
80006820:	01212823          	sw	s2,16(sp)
80006824:	01312623          	sw	s3,12(sp)
80006828:	01512223          	sw	s5,4(sp)
8000682c:	00112e23          	sw	ra,28(sp)
80006830:	00912a23          	sw	s1,20(sp)
80006834:	01412423          	sw	s4,8(sp)
80006838:	00145413          	srli	s0,s0,0x1
8000683c:	320007b7          	lui	a5,0x32000
80006840:	00050913          	mv	s2,a0
80006844:	00058a93          	mv	s5,a1
80006848:	00004997          	auipc	s3,0x4
8000684c:	c9098993          	addi	s3,s3,-880 # 8000a4d8 <_etext+0x40>
80006850:	00f45663          	bge	s0,a5,8000685c <__kernel_cosf+0x48>
80006854:	74d020ef          	jal	ra,800097a0 <__fixsfsi>
80006858:	16050a63          	beqz	a0,800069cc <__kernel_cosf+0x1b8>
8000685c:	00090593          	mv	a1,s2
80006860:	00090513          	mv	a0,s2
80006864:	7cc020ef          	jal	ra,80009030 <__mulsf3>
80006868:	00004797          	auipc	a5,0x4
8000686c:	c4878793          	addi	a5,a5,-952 # 8000a4b0 <_etext+0x18>
80006870:	0007a583          	lw	a1,0(a5)
80006874:	00050493          	mv	s1,a0
80006878:	7b8020ef          	jal	ra,80009030 <__mulsf3>
8000687c:	00004797          	auipc	a5,0x4
80006880:	c6078793          	addi	a5,a5,-928 # 8000a4dc <_etext+0x44>
80006884:	0007a583          	lw	a1,0(a5)
80006888:	00050a13          	mv	s4,a0
8000688c:	00048513          	mv	a0,s1
80006890:	7a0020ef          	jal	ra,80009030 <__mulsf3>
80006894:	00004797          	auipc	a5,0x4
80006898:	c4c78793          	addi	a5,a5,-948 # 8000a4e0 <_etext+0x48>
8000689c:	0007a583          	lw	a1,0(a5)
800068a0:	6b5010ef          	jal	ra,80008754 <__addsf3>
800068a4:	00048593          	mv	a1,s1
800068a8:	788020ef          	jal	ra,80009030 <__mulsf3>
800068ac:	00004797          	auipc	a5,0x4
800068b0:	c3878793          	addi	a5,a5,-968 # 8000a4e4 <_etext+0x4c>
800068b4:	0007a583          	lw	a1,0(a5)
800068b8:	29d020ef          	jal	ra,80009354 <__subsf3>
800068bc:	00048593          	mv	a1,s1
800068c0:	770020ef          	jal	ra,80009030 <__mulsf3>
800068c4:	00004797          	auipc	a5,0x4
800068c8:	c2478793          	addi	a5,a5,-988 # 8000a4e8 <_etext+0x50>
800068cc:	0007a583          	lw	a1,0(a5)
800068d0:	685010ef          	jal	ra,80008754 <__addsf3>
800068d4:	00048593          	mv	a1,s1
800068d8:	758020ef          	jal	ra,80009030 <__mulsf3>
800068dc:	00004797          	auipc	a5,0x4
800068e0:	c1078793          	addi	a5,a5,-1008 # 8000a4ec <_etext+0x54>
800068e4:	0007a583          	lw	a1,0(a5)
800068e8:	26d020ef          	jal	ra,80009354 <__subsf3>
800068ec:	00048593          	mv	a1,s1
800068f0:	740020ef          	jal	ra,80009030 <__mulsf3>
800068f4:	00004797          	auipc	a5,0x4
800068f8:	bfc78793          	addi	a5,a5,-1028 # 8000a4f0 <_etext+0x58>
800068fc:	0007a583          	lw	a1,0(a5)
80006900:	655010ef          	jal	ra,80008754 <__addsf3>
80006904:	00048593          	mv	a1,s1
80006908:	728020ef          	jal	ra,80009030 <__mulsf3>
8000690c:	00048593          	mv	a1,s1
80006910:	720020ef          	jal	ra,80009030 <__mulsf3>
80006914:	00050493          	mv	s1,a0
80006918:	000a8593          	mv	a1,s5
8000691c:	00090513          	mv	a0,s2
80006920:	710020ef          	jal	ra,80009030 <__mulsf3>
80006924:	00050593          	mv	a1,a0
80006928:	00048513          	mv	a0,s1
8000692c:	229020ef          	jal	ra,80009354 <__subsf3>
80006930:	3e99a7b7          	lui	a5,0x3e99a
80006934:	99978793          	addi	a5,a5,-1639 # 3e999999 <_stack_size+0x3e991999>
80006938:	00050493          	mv	s1,a0
8000693c:	0487c063          	blt	a5,s0,8000697c <__kernel_cosf+0x168>
80006940:	00050593          	mv	a1,a0
80006944:	000a0513          	mv	a0,s4
80006948:	20d020ef          	jal	ra,80009354 <__subsf3>
8000694c:	00050593          	mv	a1,a0
80006950:	0009a503          	lw	a0,0(s3)
80006954:	201020ef          	jal	ra,80009354 <__subsf3>
80006958:	01c12083          	lw	ra,28(sp)
8000695c:	01812403          	lw	s0,24(sp)
80006960:	01412483          	lw	s1,20(sp)
80006964:	01012903          	lw	s2,16(sp)
80006968:	00c12983          	lw	s3,12(sp)
8000696c:	00812a03          	lw	s4,8(sp)
80006970:	00412a83          	lw	s5,4(sp)
80006974:	02010113          	addi	sp,sp,32
80006978:	00008067          	ret
8000697c:	3f4807b7          	lui	a5,0x3f480
80006980:	0287ce63          	blt	a5,s0,800069bc <__kernel_cosf+0x1a8>
80006984:	ff0007b7          	lui	a5,0xff000
80006988:	00f40433          	add	s0,s0,a5
8000698c:	0009a503          	lw	a0,0(s3)
80006990:	00040593          	mv	a1,s0
80006994:	1c1020ef          	jal	ra,80009354 <__subsf3>
80006998:	00050913          	mv	s2,a0
8000699c:	00040593          	mv	a1,s0
800069a0:	000a0513          	mv	a0,s4
800069a4:	1b1020ef          	jal	ra,80009354 <__subsf3>
800069a8:	00048593          	mv	a1,s1
800069ac:	1a9020ef          	jal	ra,80009354 <__subsf3>
800069b0:	00050593          	mv	a1,a0
800069b4:	00090513          	mv	a0,s2
800069b8:	f9dff06f          	j	80006954 <__kernel_cosf+0x140>
800069bc:	00004797          	auipc	a5,0x4
800069c0:	b1878793          	addi	a5,a5,-1256 # 8000a4d4 <_etext+0x3c>
800069c4:	0007a403          	lw	s0,0(a5)
800069c8:	fc5ff06f          	j	8000698c <__kernel_cosf+0x178>
800069cc:	0009a503          	lw	a0,0(s3)
800069d0:	f89ff06f          	j	80006958 <__kernel_cosf+0x144>

800069d4 <__kernel_rem_pio2f>:
800069d4:	e5010113          	addi	sp,sp,-432
800069d8:	19712623          	sw	s7,396(sp)
800069dc:	00f12c23          	sw	a5,24(sp)
800069e0:	00070b93          	mv	s7,a4
800069e4:	00004797          	auipc	a5,0x4
800069e8:	90478793          	addi	a5,a5,-1788 # 8000a2e8 <init_jk>
800069ec:	00271713          	slli	a4,a4,0x2
800069f0:	00e787b3          	add	a5,a5,a4
800069f4:	1a812423          	sw	s0,424(sp)
800069f8:	19312e23          	sw	s3,412(sp)
800069fc:	19512a23          	sw	s5,404(sp)
80006a00:	19812423          	sw	s8,392(sp)
80006a04:	19912223          	sw	s9,388(sp)
80006a08:	0007aa83          	lw	s5,0(a5)
80006a0c:	1a112623          	sw	ra,428(sp)
80006a10:	1a912223          	sw	s1,420(sp)
80006a14:	1b212023          	sw	s2,416(sp)
80006a18:	19412c23          	sw	s4,408(sp)
80006a1c:	19612823          	sw	s6,400(sp)
80006a20:	19a12023          	sw	s10,384(sp)
80006a24:	17b12e23          	sw	s11,380(sp)
80006a28:	00a12a23          	sw	a0,20(sp)
80006a2c:	00d12623          	sw	a3,12(sp)
80006a30:	ffc00793          	li	a5,-4
80006a34:	00058993          	mv	s3,a1
80006a38:	00060c13          	mv	s8,a2
80006a3c:	fff68c93          	addi	s9,a3,-1 # 7fffffff <_stack_top+0xffbfffff>
80006a40:	00000413          	li	s0,0
80006a44:	00f64c63          	blt	a2,a5,80006a5c <__kernel_rem_pio2f+0x88>
80006a48:	ffd60793          	addi	a5,a2,-3
80006a4c:	41f7d413          	srai	s0,a5,0x1f
80006a50:	00747413          	andi	s0,s0,7
80006a54:	00f40433          	add	s0,s0,a5
80006a58:	40345413          	srai	s0,s0,0x3
80006a5c:	00140793          	addi	a5,s0,1
80006a60:	00379793          	slli	a5,a5,0x3
80006a64:	41940b33          	sub	s6,s0,s9
80006a68:	00f12823          	sw	a5,16(sp)
80006a6c:	40fc0933          	sub	s2,s8,a5
80006a70:	019a8d33          	add	s10,s5,s9
80006a74:	08010a13          	addi	s4,sp,128
80006a78:	000b0493          	mv	s1,s6
80006a7c:	416487b3          	sub	a5,s1,s6
80006a80:	20fd5863          	bge	s10,a5,80006c90 <__kernel_rem_pio2f+0x2bc>
80006a84:	00c12783          	lw	a5,12(sp)
80006a88:	00000a13          	li	s4,0
80006a8c:	00279493          	slli	s1,a5,0x2
80006a90:	08010793          	addi	a5,sp,128
80006a94:	009784b3          	add	s1,a5,s1
80006a98:	274ada63          	bge	s5,s4,80006d0c <__kernel_rem_pio2f+0x338>
80006a9c:	002a9793          	slli	a5,s5,0x2
80006aa0:	03010713          	addi	a4,sp,48
80006aa4:	00f707b3          	add	a5,a4,a5
80006aa8:	02f12223          	sw	a5,36(sp)
80006aac:	00241793          	slli	a5,s0,0x2
80006ab0:	02f12023          	sw	a5,32(sp)
80006ab4:	00800793          	li	a5,8
80006ab8:	412787b3          	sub	a5,a5,s2
80006abc:	000a8493          	mv	s1,s5
80006ac0:	00f12e23          	sw	a5,28(sp)
80006ac4:	00249a13          	slli	s4,s1,0x2
80006ac8:	17010793          	addi	a5,sp,368
80006acc:	014787b3          	add	a5,a5,s4
80006ad0:	fb07a403          	lw	s0,-80(a5)
80006ad4:	03010d13          	addi	s10,sp,48
80006ad8:	000d0d93          	mv	s11,s10
80006adc:	00048b13          	mv	s6,s1
80006ae0:	23604e63          	bgtz	s6,80006d1c <__kernel_rem_pio2f+0x348>
80006ae4:	00090593          	mv	a1,s2
80006ae8:	00040513          	mv	a0,s0
80006aec:	235000ef          	jal	ra,80007520 <scalbnf>
80006af0:	00004797          	auipc	a5,0x4
80006af4:	a0878793          	addi	a5,a5,-1528 # 8000a4f8 <_etext+0x60>
80006af8:	0007a583          	lw	a1,0(a5)
80006afc:	00050413          	mv	s0,a0
80006b00:	530020ef          	jal	ra,80009030 <__mulsf3>
80006b04:	131000ef          	jal	ra,80007434 <floorf>
80006b08:	00004797          	auipc	a5,0x4
80006b0c:	9f478793          	addi	a5,a5,-1548 # 8000a4fc <_etext+0x64>
80006b10:	0007a583          	lw	a1,0(a5)
80006b14:	51c020ef          	jal	ra,80009030 <__mulsf3>
80006b18:	00050593          	mv	a1,a0
80006b1c:	00040513          	mv	a0,s0
80006b20:	035020ef          	jal	ra,80009354 <__subsf3>
80006b24:	00050413          	mv	s0,a0
80006b28:	479020ef          	jal	ra,800097a0 <__fixsfsi>
80006b2c:	00050b13          	mv	s6,a0
80006b30:	4e1020ef          	jal	ra,80009810 <__floatsisf>
80006b34:	00050593          	mv	a1,a0
80006b38:	00040513          	mv	a0,s0
80006b3c:	019020ef          	jal	ra,80009354 <__subsf3>
80006b40:	00050d93          	mv	s11,a0
80006b44:	25205463          	blez	s2,80006d8c <__kernel_rem_pio2f+0x3b8>
80006b48:	fff48793          	addi	a5,s1,-1
80006b4c:	17010713          	addi	a4,sp,368
80006b50:	00279793          	slli	a5,a5,0x2
80006b54:	00f707b3          	add	a5,a4,a5
80006b58:	ec07a403          	lw	s0,-320(a5)
80006b5c:	01c12703          	lw	a4,28(sp)
80006b60:	40e45633          	sra	a2,s0,a4
80006b64:	00cb0b33          	add	s6,s6,a2
80006b68:	00e61633          	sll	a2,a2,a4
80006b6c:	40c40433          	sub	s0,s0,a2
80006b70:	ec87a023          	sw	s0,-320(a5)
80006b74:	00700793          	li	a5,7
80006b78:	412787b3          	sub	a5,a5,s2
80006b7c:	40f45433          	sra	s0,s0,a5
80006b80:	08805063          	blez	s0,80006c00 <__kernel_rem_pio2f+0x22c>
80006b84:	001b0b13          	addi	s6,s6,1
80006b88:	00000593          	li	a1,0
80006b8c:	00000613          	li	a2,0
80006b90:	0ff00513          	li	a0,255
80006b94:	10000813          	li	a6,256
80006b98:	2295ca63          	blt	a1,s1,80006dcc <__kernel_rem_pio2f+0x3f8>
80006b9c:	01205a63          	blez	s2,80006bb0 <__kernel_rem_pio2f+0x1dc>
80006ba0:	00100793          	li	a5,1
80006ba4:	26f90063          	beq	s2,a5,80006e04 <__kernel_rem_pio2f+0x430>
80006ba8:	00200793          	li	a5,2
80006bac:	26f90c63          	beq	s2,a5,80006e24 <__kernel_rem_pio2f+0x450>
80006bb0:	00200793          	li	a5,2
80006bb4:	04f41663          	bne	s0,a5,80006c00 <__kernel_rem_pio2f+0x22c>
80006bb8:	00004797          	auipc	a5,0x4
80006bbc:	92078793          	addi	a5,a5,-1760 # 8000a4d8 <_etext+0x40>
80006bc0:	0007a503          	lw	a0,0(a5)
80006bc4:	000d8593          	mv	a1,s11
80006bc8:	02c12423          	sw	a2,40(sp)
80006bcc:	788020ef          	jal	ra,80009354 <__subsf3>
80006bd0:	02812603          	lw	a2,40(sp)
80006bd4:	00050d93          	mv	s11,a0
80006bd8:	00004797          	auipc	a5,0x4
80006bdc:	90078793          	addi	a5,a5,-1792 # 8000a4d8 <_etext+0x40>
80006be0:	02060063          	beqz	a2,80006c00 <__kernel_rem_pio2f+0x22c>
80006be4:	0007a503          	lw	a0,0(a5)
80006be8:	00090593          	mv	a1,s2
80006bec:	135000ef          	jal	ra,80007520 <scalbnf>
80006bf0:	00050593          	mv	a1,a0
80006bf4:	000d8513          	mv	a0,s11
80006bf8:	75c020ef          	jal	ra,80009354 <__subsf3>
80006bfc:	00050d93          	mv	s11,a0
80006c00:	00000593          	li	a1,0
80006c04:	000d8513          	mv	a0,s11
80006c08:	300020ef          	jal	ra,80008f08 <__eqsf2>
80006c0c:	32051063          	bnez	a0,80006f2c <__kernel_rem_pio2f+0x558>
80006c10:	fff48a13          	addi	s4,s1,-1
80006c14:	000a0793          	mv	a5,s4
80006c18:	00000713          	li	a4,0
80006c1c:	2357d263          	bge	a5,s5,80006e40 <__kernel_rem_pio2f+0x46c>
80006c20:	2a070a63          	beqz	a4,80006ed4 <__kernel_rem_pio2f+0x500>
80006c24:	002a1793          	slli	a5,s4,0x2
80006c28:	03010713          	addi	a4,sp,48
80006c2c:	00f707b3          	add	a5,a4,a5
80006c30:	0007a783          	lw	a5,0(a5)
80006c34:	ff890913          	addi	s2,s2,-8
80006c38:	2e078663          	beqz	a5,80006f24 <__kernel_rem_pio2f+0x550>
80006c3c:	00004797          	auipc	a5,0x4
80006c40:	89c78793          	addi	a5,a5,-1892 # 8000a4d8 <_etext+0x40>
80006c44:	0007a503          	lw	a0,0(a5)
80006c48:	00090593          	mv	a1,s2
80006c4c:	000a0493          	mv	s1,s4
80006c50:	0d1000ef          	jal	ra,80007520 <scalbnf>
80006c54:	00050913          	mv	s2,a0
80006c58:	00004c17          	auipc	s8,0x4
80006c5c:	89cc0c13          	addi	s8,s8,-1892 # 8000a4f4 <_etext+0x5c>
80006c60:	3604de63          	bgez	s1,80006fdc <__kernel_rem_pio2f+0x608>
80006c64:	000a0c13          	mv	s8,s4
80006c68:	00000c93          	li	s9,0
80006c6c:	00003d97          	auipc	s11,0x3
80006c70:	688d8d93          	addi	s11,s11,1672 # 8000a2f4 <PIo2>
80006c74:	3e0c4c63          	bltz	s8,8000706c <__kernel_rem_pio2f+0x698>
80006c78:	002c1913          	slli	s2,s8,0x2
80006c7c:	12010793          	addi	a5,sp,288
80006c80:	00f90933          	add	s2,s2,a5
80006c84:	00000d13          	li	s10,0
80006c88:	00000493          	li	s1,0
80006c8c:	3bc0006f          	j	80007048 <__kernel_rem_pio2f+0x674>
80006c90:	00000513          	li	a0,0
80006c94:	0004cc63          	bltz	s1,80006cac <__kernel_rem_pio2f+0x2d8>
80006c98:	01812703          	lw	a4,24(sp)
80006c9c:	00249793          	slli	a5,s1,0x2
80006ca0:	00f707b3          	add	a5,a4,a5
80006ca4:	0007a503          	lw	a0,0(a5)
80006ca8:	369020ef          	jal	ra,80009810 <__floatsisf>
80006cac:	00aa2023          	sw	a0,0(s4)
80006cb0:	00148493          	addi	s1,s1,1
80006cb4:	004a0a13          	addi	s4,s4,4
80006cb8:	dc5ff06f          	j	80006a7c <__kernel_rem_pio2f+0xa8>
80006cbc:	01412783          	lw	a5,20(sp)
80006cc0:	002b1693          	slli	a3,s6,0x2
80006cc4:	000da583          	lw	a1,0(s11)
80006cc8:	00d786b3          	add	a3,a5,a3
80006ccc:	0006a503          	lw	a0,0(a3)
80006cd0:	001b0b13          	addi	s6,s6,1
80006cd4:	35c020ef          	jal	ra,80009030 <__mulsf3>
80006cd8:	00050593          	mv	a1,a0
80006cdc:	000d0513          	mv	a0,s10
80006ce0:	275010ef          	jal	ra,80008754 <__addsf3>
80006ce4:	00050d13          	mv	s10,a0
80006ce8:	ffcd8d93          	addi	s11,s11,-4
80006cec:	fd6cd8e3          	bge	s9,s6,80006cbc <__kernel_rem_pio2f+0x2e8>
80006cf0:	002a1793          	slli	a5,s4,0x2
80006cf4:	12010713          	addi	a4,sp,288
80006cf8:	00f707b3          	add	a5,a4,a5
80006cfc:	01a7a023          	sw	s10,0(a5)
80006d00:	001a0a13          	addi	s4,s4,1
80006d04:	00448493          	addi	s1,s1,4
80006d08:	d91ff06f          	j	80006a98 <__kernel_rem_pio2f+0xc4>
80006d0c:	00048d93          	mv	s11,s1
80006d10:	00000d13          	li	s10,0
80006d14:	00000b13          	li	s6,0
80006d18:	fd1ff06f          	j	80006ce8 <__kernel_rem_pio2f+0x314>
80006d1c:	00003797          	auipc	a5,0x3
80006d20:	7d878793          	addi	a5,a5,2008 # 8000a4f4 <_etext+0x5c>
80006d24:	0007a583          	lw	a1,0(a5)
80006d28:	00040513          	mv	a0,s0
80006d2c:	fffb0b13          	addi	s6,s6,-1
80006d30:	300020ef          	jal	ra,80009030 <__mulsf3>
80006d34:	26d020ef          	jal	ra,800097a0 <__fixsfsi>
80006d38:	2d9020ef          	jal	ra,80009810 <__floatsisf>
80006d3c:	00003797          	auipc	a5,0x3
80006d40:	79478793          	addi	a5,a5,1940 # 8000a4d0 <_etext+0x38>
80006d44:	0007a583          	lw	a1,0(a5)
80006d48:	02a12423          	sw	a0,40(sp)
80006d4c:	004d8d93          	addi	s11,s11,4
80006d50:	2e0020ef          	jal	ra,80009030 <__mulsf3>
80006d54:	00050593          	mv	a1,a0
80006d58:	00040513          	mv	a0,s0
80006d5c:	5f8020ef          	jal	ra,80009354 <__subsf3>
80006d60:	241020ef          	jal	ra,800097a0 <__fixsfsi>
80006d64:	12010793          	addi	a5,sp,288
80006d68:	002b1713          	slli	a4,s6,0x2
80006d6c:	00e78733          	add	a4,a5,a4
80006d70:	02812603          	lw	a2,40(sp)
80006d74:	00072583          	lw	a1,0(a4)
80006d78:	feadae23          	sw	a0,-4(s11)
80006d7c:	00060513          	mv	a0,a2
80006d80:	1d5010ef          	jal	ra,80008754 <__addsf3>
80006d84:	00050413          	mv	s0,a0
80006d88:	d59ff06f          	j	80006ae0 <__kernel_rem_pio2f+0x10c>
80006d8c:	02091063          	bnez	s2,80006dac <__kernel_rem_pio2f+0x3d8>
80006d90:	fff48793          	addi	a5,s1,-1
80006d94:	00279793          	slli	a5,a5,0x2
80006d98:	17010713          	addi	a4,sp,368
80006d9c:	00f707b3          	add	a5,a4,a5
80006da0:	ec07a403          	lw	s0,-320(a5)
80006da4:	40845413          	srai	s0,s0,0x8
80006da8:	dd9ff06f          	j	80006b80 <__kernel_rem_pio2f+0x1ac>
80006dac:	00003797          	auipc	a5,0x3
80006db0:	70478793          	addi	a5,a5,1796 # 8000a4b0 <_etext+0x18>
80006db4:	0007a583          	lw	a1,0(a5)
80006db8:	00000413          	li	s0,0
80006dbc:	1b8020ef          	jal	ra,80008f74 <__gesf2>
80006dc0:	e40540e3          	bltz	a0,80006c00 <__kernel_rem_pio2f+0x22c>
80006dc4:	00200413          	li	s0,2
80006dc8:	dbdff06f          	j	80006b84 <__kernel_rem_pio2f+0x1b0>
80006dcc:	000d2783          	lw	a5,0(s10)
80006dd0:	02061263          	bnez	a2,80006df4 <__kernel_rem_pio2f+0x420>
80006dd4:	00078863          	beqz	a5,80006de4 <__kernel_rem_pio2f+0x410>
80006dd8:	40f807b3          	sub	a5,a6,a5
80006ddc:	00fd2023          	sw	a5,0(s10)
80006de0:	00100793          	li	a5,1
80006de4:	00158593          	addi	a1,a1,1
80006de8:	004d0d13          	addi	s10,s10,4
80006dec:	00078613          	mv	a2,a5
80006df0:	da9ff06f          	j	80006b98 <__kernel_rem_pio2f+0x1c4>
80006df4:	40f507b3          	sub	a5,a0,a5
80006df8:	00fd2023          	sw	a5,0(s10)
80006dfc:	00060793          	mv	a5,a2
80006e00:	fe5ff06f          	j	80006de4 <__kernel_rem_pio2f+0x410>
80006e04:	fff48793          	addi	a5,s1,-1
80006e08:	00279793          	slli	a5,a5,0x2
80006e0c:	17010713          	addi	a4,sp,368
80006e10:	00f707b3          	add	a5,a4,a5
80006e14:	ec07a683          	lw	a3,-320(a5)
80006e18:	07f6f693          	andi	a3,a3,127
80006e1c:	ecd7a023          	sw	a3,-320(a5)
80006e20:	d91ff06f          	j	80006bb0 <__kernel_rem_pio2f+0x1dc>
80006e24:	fff48793          	addi	a5,s1,-1
80006e28:	00279793          	slli	a5,a5,0x2
80006e2c:	17010713          	addi	a4,sp,368
80006e30:	00f707b3          	add	a5,a4,a5
80006e34:	ec07a683          	lw	a3,-320(a5)
80006e38:	03f6f693          	andi	a3,a3,63
80006e3c:	fe1ff06f          	j	80006e1c <__kernel_rem_pio2f+0x448>
80006e40:	00279693          	slli	a3,a5,0x2
80006e44:	03010613          	addi	a2,sp,48
80006e48:	00d606b3          	add	a3,a2,a3
80006e4c:	0006a683          	lw	a3,0(a3)
80006e50:	fff78793          	addi	a5,a5,-1
80006e54:	00d76733          	or	a4,a4,a3
80006e58:	dc5ff06f          	j	80006c1c <__kernel_rem_pio2f+0x248>
80006e5c:	00178793          	addi	a5,a5,1
80006e60:	ffc70713          	addi	a4,a4,-4
80006e64:	00072683          	lw	a3,0(a4)
80006e68:	fe068ae3          	beqz	a3,80006e5c <__kernel_rem_pio2f+0x488>
80006e6c:	00c12703          	lw	a4,12(sp)
80006e70:	00148b13          	addi	s6,s1,1
80006e74:	00e48a33          	add	s4,s1,a4
80006e78:	002a1a13          	slli	s4,s4,0x2
80006e7c:	08010713          	addi	a4,sp,128
80006e80:	01470a33          	add	s4,a4,s4
80006e84:	00f484b3          	add	s1,s1,a5
80006e88:	c364cee3          	blt	s1,s6,80006ac4 <__kernel_rem_pio2f+0xf0>
80006e8c:	02012783          	lw	a5,32(sp)
80006e90:	01812703          	lw	a4,24(sp)
80006e94:	002b1413          	slli	s0,s6,0x2
80006e98:	008787b3          	add	a5,a5,s0
80006e9c:	00f707b3          	add	a5,a4,a5
80006ea0:	0007a503          	lw	a0,0(a5)
80006ea4:	00000d93          	li	s11,0
80006ea8:	169020ef          	jal	ra,80009810 <__floatsisf>
80006eac:	00aa2023          	sw	a0,0(s4)
80006eb0:	000a0693          	mv	a3,s4
80006eb4:	00000793          	li	a5,0
80006eb8:	02fcd463          	bge	s9,a5,80006ee0 <__kernel_rem_pio2f+0x50c>
80006ebc:	12010793          	addi	a5,sp,288
80006ec0:	00878433          	add	s0,a5,s0
80006ec4:	01b42023          	sw	s11,0(s0)
80006ec8:	001b0b13          	addi	s6,s6,1
80006ecc:	004a0a13          	addi	s4,s4,4
80006ed0:	fb9ff06f          	j	80006e88 <__kernel_rem_pio2f+0x4b4>
80006ed4:	02412703          	lw	a4,36(sp)
80006ed8:	00100793          	li	a5,1
80006edc:	f85ff06f          	j	80006e60 <__kernel_rem_pio2f+0x48c>
80006ee0:	00279613          	slli	a2,a5,0x2
80006ee4:	02f12623          	sw	a5,44(sp)
80006ee8:	01412783          	lw	a5,20(sp)
80006eec:	0006a583          	lw	a1,0(a3)
80006ef0:	02d12423          	sw	a3,40(sp)
80006ef4:	00c78633          	add	a2,a5,a2
80006ef8:	00062503          	lw	a0,0(a2)
80006efc:	134020ef          	jal	ra,80009030 <__mulsf3>
80006f00:	00050593          	mv	a1,a0
80006f04:	000d8513          	mv	a0,s11
80006f08:	04d010ef          	jal	ra,80008754 <__addsf3>
80006f0c:	02c12783          	lw	a5,44(sp)
80006f10:	02812683          	lw	a3,40(sp)
80006f14:	00050d93          	mv	s11,a0
80006f18:	00178793          	addi	a5,a5,1
80006f1c:	ffc68693          	addi	a3,a3,-4
80006f20:	f99ff06f          	j	80006eb8 <__kernel_rem_pio2f+0x4e4>
80006f24:	fffa0a13          	addi	s4,s4,-1
80006f28:	cfdff06f          	j	80006c24 <__kernel_rem_pio2f+0x250>
80006f2c:	01012783          	lw	a5,16(sp)
80006f30:	000d8513          	mv	a0,s11
80006f34:	418785b3          	sub	a1,a5,s8
80006f38:	5e8000ef          	jal	ra,80007520 <scalbnf>
80006f3c:	00003797          	auipc	a5,0x3
80006f40:	59478793          	addi	a5,a5,1428 # 8000a4d0 <_etext+0x38>
80006f44:	0007ac83          	lw	s9,0(a5)
80006f48:	00050c13          	mv	s8,a0
80006f4c:	000c8593          	mv	a1,s9
80006f50:	024020ef          	jal	ra,80008f74 <__gesf2>
80006f54:	06054663          	bltz	a0,80006fc0 <__kernel_rem_pio2f+0x5ec>
80006f58:	00003797          	auipc	a5,0x3
80006f5c:	59c78793          	addi	a5,a5,1436 # 8000a4f4 <_etext+0x5c>
80006f60:	0007a583          	lw	a1,0(a5)
80006f64:	000c0513          	mv	a0,s8
80006f68:	00890913          	addi	s2,s2,8
80006f6c:	0c4020ef          	jal	ra,80009030 <__mulsf3>
80006f70:	031020ef          	jal	ra,800097a0 <__fixsfsi>
80006f74:	09d020ef          	jal	ra,80009810 <__floatsisf>
80006f78:	17010793          	addi	a5,sp,368
80006f7c:	000c8593          	mv	a1,s9
80006f80:	01478a33          	add	s4,a5,s4
80006f84:	00050d13          	mv	s10,a0
80006f88:	0a8020ef          	jal	ra,80009030 <__mulsf3>
80006f8c:	00050593          	mv	a1,a0
80006f90:	000c0513          	mv	a0,s8
80006f94:	3c0020ef          	jal	ra,80009354 <__subsf3>
80006f98:	009020ef          	jal	ra,800097a0 <__fixsfsi>
80006f9c:	ecaa2023          	sw	a0,-320(s4)
80006fa0:	00148a13          	addi	s4,s1,1
80006fa4:	17010793          	addi	a5,sp,368
80006fa8:	002a1493          	slli	s1,s4,0x2
80006fac:	000d0513          	mv	a0,s10
80006fb0:	009784b3          	add	s1,a5,s1
80006fb4:	7ec020ef          	jal	ra,800097a0 <__fixsfsi>
80006fb8:	eca4a023          	sw	a0,-320(s1)
80006fbc:	c81ff06f          	j	80006c3c <__kernel_rem_pio2f+0x268>
80006fc0:	17010793          	addi	a5,sp,368
80006fc4:	000c0513          	mv	a0,s8
80006fc8:	01478a33          	add	s4,a5,s4
80006fcc:	7d4020ef          	jal	ra,800097a0 <__fixsfsi>
80006fd0:	ecaa2023          	sw	a0,-320(s4)
80006fd4:	00048a13          	mv	s4,s1
80006fd8:	c65ff06f          	j	80006c3c <__kernel_rem_pio2f+0x268>
80006fdc:	00249793          	slli	a5,s1,0x2
80006fe0:	12010713          	addi	a4,sp,288
80006fe4:	00f70cb3          	add	s9,a4,a5
80006fe8:	03010713          	addi	a4,sp,48
80006fec:	00f707b3          	add	a5,a4,a5
80006ff0:	0007a503          	lw	a0,0(a5)
80006ff4:	fff48493          	addi	s1,s1,-1
80006ff8:	019020ef          	jal	ra,80009810 <__floatsisf>
80006ffc:	00090593          	mv	a1,s2
80007000:	030020ef          	jal	ra,80009030 <__mulsf3>
80007004:	000c2583          	lw	a1,0(s8)
80007008:	00aca023          	sw	a0,0(s9)
8000700c:	00090513          	mv	a0,s2
80007010:	020020ef          	jal	ra,80009030 <__mulsf3>
80007014:	00050913          	mv	s2,a0
80007018:	c49ff06f          	j	80006c60 <__kernel_rem_pio2f+0x28c>
8000701c:	00249793          	slli	a5,s1,0x2
80007020:	00fd87b3          	add	a5,s11,a5
80007024:	00092583          	lw	a1,0(s2)
80007028:	0007a503          	lw	a0,0(a5)
8000702c:	00148493          	addi	s1,s1,1
80007030:	00490913          	addi	s2,s2,4
80007034:	7fd010ef          	jal	ra,80009030 <__mulsf3>
80007038:	00050593          	mv	a1,a0
8000703c:	000d0513          	mv	a0,s10
80007040:	714010ef          	jal	ra,80008754 <__addsf3>
80007044:	00050d13          	mv	s10,a0
80007048:	009ac463          	blt	s5,s1,80007050 <__kernel_rem_pio2f+0x67c>
8000704c:	fc9cd8e3          	bge	s9,s1,8000701c <__kernel_rem_pio2f+0x648>
80007050:	002c9793          	slli	a5,s9,0x2
80007054:	17010713          	addi	a4,sp,368
80007058:	00f707b3          	add	a5,a4,a5
8000705c:	f7a7a023          	sw	s10,-160(a5)
80007060:	fffc0c13          	addi	s8,s8,-1
80007064:	001c8c93          	addi	s9,s9,1
80007068:	c0dff06f          	j	80006c74 <__kernel_rem_pio2f+0x2a0>
8000706c:	00200793          	li	a5,2
80007070:	0577c863          	blt	a5,s7,800070c0 <__kernel_rem_pio2f+0x6ec>
80007074:	13704863          	bgtz	s7,800071a4 <__kernel_rem_pio2f+0x7d0>
80007078:	00000513          	li	a0,0
8000707c:	0a0b8c63          	beqz	s7,80007134 <__kernel_rem_pio2f+0x760>
80007080:	1ac12083          	lw	ra,428(sp)
80007084:	1a812403          	lw	s0,424(sp)
80007088:	007b7513          	andi	a0,s6,7
8000708c:	1a412483          	lw	s1,420(sp)
80007090:	1a012903          	lw	s2,416(sp)
80007094:	19c12983          	lw	s3,412(sp)
80007098:	19812a03          	lw	s4,408(sp)
8000709c:	19412a83          	lw	s5,404(sp)
800070a0:	19012b03          	lw	s6,400(sp)
800070a4:	18c12b83          	lw	s7,396(sp)
800070a8:	18812c03          	lw	s8,392(sp)
800070ac:	18412c83          	lw	s9,388(sp)
800070b0:	18012d03          	lw	s10,384(sp)
800070b4:	17c12d83          	lw	s11,380(sp)
800070b8:	1b010113          	addi	sp,sp,432
800070bc:	00008067          	ret
800070c0:	00300793          	li	a5,3
800070c4:	fafb9ee3          	bne	s7,a5,80007080 <__kernel_rem_pio2f+0x6ac>
800070c8:	002a1493          	slli	s1,s4,0x2
800070cc:	0d010793          	addi	a5,sp,208
800070d0:	009784b3          	add	s1,a5,s1
800070d4:	00048913          	mv	s2,s1
800070d8:	000a0a93          	mv	s5,s4
800070dc:	ffc90913          	addi	s2,s2,-4
800070e0:	0f504663          	bgtz	s5,800071cc <__kernel_rem_pio2f+0x7f8>
800070e4:	000a0913          	mv	s2,s4
800070e8:	00100c93          	li	s9,1
800070ec:	ffc48493          	addi	s1,s1,-4
800070f0:	112ccc63          	blt	s9,s2,80007208 <__kernel_rem_pio2f+0x834>
800070f4:	00000513          	li	a0,0
800070f8:	00100493          	li	s1,1
800070fc:	1544c463          	blt	s1,s4,80007244 <__kernel_rem_pio2f+0x870>
80007100:	0d012683          	lw	a3,208(sp)
80007104:	0d412703          	lw	a4,212(sp)
80007108:	14041c63          	bnez	s0,80007260 <__kernel_rem_pio2f+0x88c>
8000710c:	00d9a023          	sw	a3,0(s3)
80007110:	00e9a223          	sw	a4,4(s3)
80007114:	00a9a423          	sw	a0,8(s3)
80007118:	f69ff06f          	j	80007080 <__kernel_rem_pio2f+0x6ac>
8000711c:	002a1793          	slli	a5,s4,0x2
80007120:	0d010713          	addi	a4,sp,208
80007124:	00f707b3          	add	a5,a4,a5
80007128:	0007a583          	lw	a1,0(a5)
8000712c:	fffa0a13          	addi	s4,s4,-1
80007130:	624010ef          	jal	ra,80008754 <__addsf3>
80007134:	fe0a54e3          	bgez	s4,8000711c <__kernel_rem_pio2f+0x748>
80007138:	00040663          	beqz	s0,80007144 <__kernel_rem_pio2f+0x770>
8000713c:	800007b7          	lui	a5,0x80000
80007140:	00a7c533          	xor	a0,a5,a0
80007144:	00a9a023          	sw	a0,0(s3)
80007148:	f39ff06f          	j	80007080 <__kernel_rem_pio2f+0x6ac>
8000714c:	00249793          	slli	a5,s1,0x2
80007150:	0d010713          	addi	a4,sp,208
80007154:	00f707b3          	add	a5,a4,a5
80007158:	0007a583          	lw	a1,0(a5) # 80000000 <_stack_top+0xffc00000>
8000715c:	fff48493          	addi	s1,s1,-1
80007160:	5f4010ef          	jal	ra,80008754 <__addsf3>
80007164:	fe04d4e3          	bgez	s1,8000714c <__kernel_rem_pio2f+0x778>
80007168:	00050793          	mv	a5,a0
8000716c:	00040663          	beqz	s0,80007178 <__kernel_rem_pio2f+0x7a4>
80007170:	800007b7          	lui	a5,0x80000
80007174:	00a7c7b3          	xor	a5,a5,a0
80007178:	00050593          	mv	a1,a0
8000717c:	0d012503          	lw	a0,208(sp)
80007180:	00f9a023          	sw	a5,0(s3)
80007184:	00100493          	li	s1,1
80007188:	1cc020ef          	jal	ra,80009354 <__subsf3>
8000718c:	029a5263          	bge	s4,s1,800071b0 <__kernel_rem_pio2f+0x7dc>
80007190:	00040663          	beqz	s0,8000719c <__kernel_rem_pio2f+0x7c8>
80007194:	800007b7          	lui	a5,0x80000
80007198:	00a7c533          	xor	a0,a5,a0
8000719c:	00a9a223          	sw	a0,4(s3)
800071a0:	ee1ff06f          	j	80007080 <__kernel_rem_pio2f+0x6ac>
800071a4:	000a0493          	mv	s1,s4
800071a8:	00000513          	li	a0,0
800071ac:	fb9ff06f          	j	80007164 <__kernel_rem_pio2f+0x790>
800071b0:	00249793          	slli	a5,s1,0x2
800071b4:	0d010713          	addi	a4,sp,208
800071b8:	00f707b3          	add	a5,a4,a5
800071bc:	0007a583          	lw	a1,0(a5) # 80000000 <_stack_top+0xffc00000>
800071c0:	00148493          	addi	s1,s1,1
800071c4:	590010ef          	jal	ra,80008754 <__addsf3>
800071c8:	fc5ff06f          	j	8000718c <__kernel_rem_pio2f+0x7b8>
800071cc:	00092c83          	lw	s9,0(s2)
800071d0:	00492c03          	lw	s8,4(s2)
800071d4:	fffa8a93          	addi	s5,s5,-1
800071d8:	000c8513          	mv	a0,s9
800071dc:	000c0593          	mv	a1,s8
800071e0:	574010ef          	jal	ra,80008754 <__addsf3>
800071e4:	00050593          	mv	a1,a0
800071e8:	00050b93          	mv	s7,a0
800071ec:	000c8513          	mv	a0,s9
800071f0:	164020ef          	jal	ra,80009354 <__subsf3>
800071f4:	000c0593          	mv	a1,s8
800071f8:	55c010ef          	jal	ra,80008754 <__addsf3>
800071fc:	00a92223          	sw	a0,4(s2)
80007200:	01792023          	sw	s7,0(s2)
80007204:	ed9ff06f          	j	800070dc <__kernel_rem_pio2f+0x708>
80007208:	0004ac03          	lw	s8,0(s1)
8000720c:	0044ab83          	lw	s7,4(s1)
80007210:	fff90913          	addi	s2,s2,-1
80007214:	000c0513          	mv	a0,s8
80007218:	000b8593          	mv	a1,s7
8000721c:	538010ef          	jal	ra,80008754 <__addsf3>
80007220:	00050593          	mv	a1,a0
80007224:	00050a93          	mv	s5,a0
80007228:	000c0513          	mv	a0,s8
8000722c:	128020ef          	jal	ra,80009354 <__subsf3>
80007230:	000b8593          	mv	a1,s7
80007234:	520010ef          	jal	ra,80008754 <__addsf3>
80007238:	00a4a223          	sw	a0,4(s1)
8000723c:	0154a023          	sw	s5,0(s1)
80007240:	eadff06f          	j	800070ec <__kernel_rem_pio2f+0x718>
80007244:	002a1793          	slli	a5,s4,0x2
80007248:	0d010713          	addi	a4,sp,208
8000724c:	00f707b3          	add	a5,a4,a5
80007250:	0007a583          	lw	a1,0(a5)
80007254:	fffa0a13          	addi	s4,s4,-1
80007258:	4fc010ef          	jal	ra,80008754 <__addsf3>
8000725c:	ea1ff06f          	j	800070fc <__kernel_rem_pio2f+0x728>
80007260:	800007b7          	lui	a5,0x80000
80007264:	00d7c6b3          	xor	a3,a5,a3
80007268:	00e7c733          	xor	a4,a5,a4
8000726c:	00a7c7b3          	xor	a5,a5,a0
80007270:	00d9a023          	sw	a3,0(s3)
80007274:	00e9a223          	sw	a4,4(s3)
80007278:	00f9a423          	sw	a5,8(s3)
8000727c:	e05ff06f          	j	80007080 <__kernel_rem_pio2f+0x6ac>

80007280 <__kernel_sinf>:
80007280:	fe010113          	addi	sp,sp,-32
80007284:	00151793          	slli	a5,a0,0x1
80007288:	00812c23          	sw	s0,24(sp)
8000728c:	01412423          	sw	s4,8(sp)
80007290:	01612023          	sw	s6,0(sp)
80007294:	00112e23          	sw	ra,28(sp)
80007298:	00912a23          	sw	s1,20(sp)
8000729c:	01212823          	sw	s2,16(sp)
800072a0:	01312623          	sw	s3,12(sp)
800072a4:	01512223          	sw	s5,4(sp)
800072a8:	0017d793          	srli	a5,a5,0x1
800072ac:	32000737          	lui	a4,0x32000
800072b0:	00050413          	mv	s0,a0
800072b4:	00058a13          	mv	s4,a1
800072b8:	00060b13          	mv	s6,a2
800072bc:	00e7d663          	bge	a5,a4,800072c8 <__kernel_sinf+0x48>
800072c0:	4e0020ef          	jal	ra,800097a0 <__fixsfsi>
800072c4:	0c050663          	beqz	a0,80007390 <__kernel_sinf+0x110>
800072c8:	00040593          	mv	a1,s0
800072cc:	00040513          	mv	a0,s0
800072d0:	561010ef          	jal	ra,80009030 <__mulsf3>
800072d4:	00050493          	mv	s1,a0
800072d8:	00050593          	mv	a1,a0
800072dc:	00040513          	mv	a0,s0
800072e0:	551010ef          	jal	ra,80009030 <__mulsf3>
800072e4:	00003797          	auipc	a5,0x3
800072e8:	21c78793          	addi	a5,a5,540 # 8000a500 <_etext+0x68>
800072ec:	0007a583          	lw	a1,0(a5)
800072f0:	00050913          	mv	s2,a0
800072f4:	00048513          	mv	a0,s1
800072f8:	539010ef          	jal	ra,80009030 <__mulsf3>
800072fc:	00003797          	auipc	a5,0x3
80007300:	20878793          	addi	a5,a5,520 # 8000a504 <_etext+0x6c>
80007304:	0007a583          	lw	a1,0(a5)
80007308:	00003997          	auipc	s3,0x3
8000730c:	20c98993          	addi	s3,s3,524 # 8000a514 <_etext+0x7c>
80007310:	044020ef          	jal	ra,80009354 <__subsf3>
80007314:	00048593          	mv	a1,s1
80007318:	519010ef          	jal	ra,80009030 <__mulsf3>
8000731c:	00003797          	auipc	a5,0x3
80007320:	1ec78793          	addi	a5,a5,492 # 8000a508 <_etext+0x70>
80007324:	0007a583          	lw	a1,0(a5)
80007328:	42c010ef          	jal	ra,80008754 <__addsf3>
8000732c:	00048593          	mv	a1,s1
80007330:	501010ef          	jal	ra,80009030 <__mulsf3>
80007334:	00003797          	auipc	a5,0x3
80007338:	1d878793          	addi	a5,a5,472 # 8000a50c <_etext+0x74>
8000733c:	0007a583          	lw	a1,0(a5)
80007340:	014020ef          	jal	ra,80009354 <__subsf3>
80007344:	00048593          	mv	a1,s1
80007348:	4e9010ef          	jal	ra,80009030 <__mulsf3>
8000734c:	00003797          	auipc	a5,0x3
80007350:	1c478793          	addi	a5,a5,452 # 8000a510 <_etext+0x78>
80007354:	0007a583          	lw	a1,0(a5)
80007358:	3fc010ef          	jal	ra,80008754 <__addsf3>
8000735c:	00050a93          	mv	s5,a0
80007360:	040b1e63          	bnez	s6,800073bc <__kernel_sinf+0x13c>
80007364:	00050593          	mv	a1,a0
80007368:	00048513          	mv	a0,s1
8000736c:	4c5010ef          	jal	ra,80009030 <__mulsf3>
80007370:	0009a583          	lw	a1,0(s3)
80007374:	7e1010ef          	jal	ra,80009354 <__subsf3>
80007378:	00090593          	mv	a1,s2
8000737c:	4b5010ef          	jal	ra,80009030 <__mulsf3>
80007380:	00050593          	mv	a1,a0
80007384:	00040513          	mv	a0,s0
80007388:	3cc010ef          	jal	ra,80008754 <__addsf3>
8000738c:	00050413          	mv	s0,a0
80007390:	00040513          	mv	a0,s0
80007394:	01c12083          	lw	ra,28(sp)
80007398:	01812403          	lw	s0,24(sp)
8000739c:	01412483          	lw	s1,20(sp)
800073a0:	01012903          	lw	s2,16(sp)
800073a4:	00c12983          	lw	s3,12(sp)
800073a8:	00812a03          	lw	s4,8(sp)
800073ac:	00412a83          	lw	s5,4(sp)
800073b0:	00012b03          	lw	s6,0(sp)
800073b4:	02010113          	addi	sp,sp,32
800073b8:	00008067          	ret
800073bc:	00003797          	auipc	a5,0x3
800073c0:	0f478793          	addi	a5,a5,244 # 8000a4b0 <_etext+0x18>
800073c4:	0007a583          	lw	a1,0(a5)
800073c8:	000a0513          	mv	a0,s4
800073cc:	465010ef          	jal	ra,80009030 <__mulsf3>
800073d0:	00050b13          	mv	s6,a0
800073d4:	000a8593          	mv	a1,s5
800073d8:	00090513          	mv	a0,s2
800073dc:	455010ef          	jal	ra,80009030 <__mulsf3>
800073e0:	00050593          	mv	a1,a0
800073e4:	000b0513          	mv	a0,s6
800073e8:	76d010ef          	jal	ra,80009354 <__subsf3>
800073ec:	00048593          	mv	a1,s1
800073f0:	441010ef          	jal	ra,80009030 <__mulsf3>
800073f4:	000a0593          	mv	a1,s4
800073f8:	75d010ef          	jal	ra,80009354 <__subsf3>
800073fc:	0009a583          	lw	a1,0(s3)
80007400:	00050493          	mv	s1,a0
80007404:	00090513          	mv	a0,s2
80007408:	429010ef          	jal	ra,80009030 <__mulsf3>
8000740c:	00050593          	mv	a1,a0
80007410:	00048513          	mv	a0,s1
80007414:	340010ef          	jal	ra,80008754 <__addsf3>
80007418:	00050593          	mv	a1,a0
8000741c:	00040513          	mv	a0,s0
80007420:	735010ef          	jal	ra,80009354 <__subsf3>
80007424:	f69ff06f          	j	8000738c <__kernel_sinf+0x10c>

80007428 <fabsf>:
80007428:	00151513          	slli	a0,a0,0x1
8000742c:	00155513          	srli	a0,a0,0x1
80007430:	00008067          	ret

80007434 <floorf>:
80007434:	fe010113          	addi	sp,sp,-32
80007438:	00912a23          	sw	s1,20(sp)
8000743c:	00151493          	slli	s1,a0,0x1
80007440:	0014d493          	srli	s1,s1,0x1
80007444:	01212823          	sw	s2,16(sp)
80007448:	0174d913          	srli	s2,s1,0x17
8000744c:	00112e23          	sw	ra,28(sp)
80007450:	00812c23          	sw	s0,24(sp)
80007454:	01312623          	sw	s3,12(sp)
80007458:	f8190913          	addi	s2,s2,-127
8000745c:	01600793          	li	a5,22
80007460:	00050593          	mv	a1,a0
80007464:	0927c263          	blt	a5,s2,800074e8 <floorf+0xb4>
80007468:	00050413          	mv	s0,a0
8000746c:	02095a63          	bgez	s2,800074a0 <floorf+0x6c>
80007470:	00003797          	auipc	a5,0x3
80007474:	0a878793          	addi	a5,a5,168 # 8000a518 <_etext+0x80>
80007478:	0007a583          	lw	a1,0(a5)
8000747c:	2d8010ef          	jal	ra,80008754 <__addsf3>
80007480:	00000593          	li	a1,0
80007484:	2f1010ef          	jal	ra,80008f74 <__gesf2>
80007488:	00a05863          	blez	a0,80007498 <floorf+0x64>
8000748c:	08045663          	bgez	s0,80007518 <floorf+0xe4>
80007490:	00048463          	beqz	s1,80007498 <floorf+0x64>
80007494:	bf800437          	lui	s0,0xbf800
80007498:	00040593          	mv	a1,s0
8000749c:	05c0006f          	j	800074f8 <floorf+0xc4>
800074a0:	008009b7          	lui	s3,0x800
800074a4:	fff98493          	addi	s1,s3,-1 # 7fffff <_stack_size+0x7f7fff>
800074a8:	4124d4b3          	sra	s1,s1,s2
800074ac:	00a4f7b3          	and	a5,s1,a0
800074b0:	04078463          	beqz	a5,800074f8 <floorf+0xc4>
800074b4:	00003797          	auipc	a5,0x3
800074b8:	06478793          	addi	a5,a5,100 # 8000a518 <_etext+0x80>
800074bc:	0007a583          	lw	a1,0(a5)
800074c0:	294010ef          	jal	ra,80008754 <__addsf3>
800074c4:	00000593          	li	a1,0
800074c8:	2ad010ef          	jal	ra,80008f74 <__gesf2>
800074cc:	fca056e3          	blez	a0,80007498 <floorf+0x64>
800074d0:	00045663          	bgez	s0,800074dc <floorf+0xa8>
800074d4:	4129d933          	sra	s2,s3,s2
800074d8:	01240433          	add	s0,s0,s2
800074dc:	fff4c493          	not	s1,s1
800074e0:	0084f433          	and	s0,s1,s0
800074e4:	fb5ff06f          	j	80007498 <floorf+0x64>
800074e8:	7f8007b7          	lui	a5,0x7f800
800074ec:	00f4e663          	bltu	s1,a5,800074f8 <floorf+0xc4>
800074f0:	264010ef          	jal	ra,80008754 <__addsf3>
800074f4:	00050593          	mv	a1,a0
800074f8:	01c12083          	lw	ra,28(sp)
800074fc:	01812403          	lw	s0,24(sp)
80007500:	01412483          	lw	s1,20(sp)
80007504:	01012903          	lw	s2,16(sp)
80007508:	00c12983          	lw	s3,12(sp)
8000750c:	00058513          	mv	a0,a1
80007510:	02010113          	addi	sp,sp,32
80007514:	00008067          	ret
80007518:	00000413          	li	s0,0
8000751c:	f7dff06f          	j	80007498 <floorf+0x64>

80007520 <scalbnf>:
80007520:	00151793          	slli	a5,a0,0x1
80007524:	0017d793          	srli	a5,a5,0x1
80007528:	00050713          	mv	a4,a0
8000752c:	10078e63          	beqz	a5,80007648 <scalbnf+0x128>
80007530:	ff010113          	addi	sp,sp,-16
80007534:	00112623          	sw	ra,12(sp)
80007538:	00812423          	sw	s0,8(sp)
8000753c:	7f800637          	lui	a2,0x7f800
80007540:	00c7ea63          	bltu	a5,a2,80007554 <scalbnf+0x34>
80007544:	00050593          	mv	a1,a0
80007548:	20c010ef          	jal	ra,80008754 <__addsf3>
8000754c:	00050713          	mv	a4,a0
80007550:	09c0006f          	j	800075ec <scalbnf+0xcc>
80007554:	00c576b3          	and	a3,a0,a2
80007558:	00058413          	mv	s0,a1
8000755c:	06069863          	bnez	a3,800075cc <scalbnf+0xac>
80007560:	00003797          	auipc	a5,0x3
80007564:	fbc78793          	addi	a5,a5,-68 # 8000a51c <_etext+0x84>
80007568:	0007a583          	lw	a1,0(a5)
8000756c:	2c5010ef          	jal	ra,80009030 <__mulsf3>
80007570:	ffff47b7          	lui	a5,0xffff4
80007574:	cb078793          	addi	a5,a5,-848 # ffff3cb0 <_stack_top+0x7fbf3cb0>
80007578:	00050713          	mv	a4,a0
8000757c:	02f44e63          	blt	s0,a5,800075b8 <scalbnf+0x98>
80007580:	41755793          	srai	a5,a0,0x17
80007584:	0ff7f793          	andi	a5,a5,255
80007588:	fe778793          	addi	a5,a5,-25
8000758c:	008787b3          	add	a5,a5,s0
80007590:	0fe00693          	li	a3,254
80007594:	04f6d063          	bge	a3,a5,800075d4 <scalbnf+0xb4>
80007598:	00003797          	auipc	a5,0x3
8000759c:	f8078793          	addi	a5,a5,-128 # 8000a518 <_etext+0x80>
800075a0:	0007a403          	lw	s0,0(a5)
800075a4:	00070593          	mv	a1,a4
800075a8:	00040513          	mv	a0,s0
800075ac:	0a0000ef          	jal	ra,8000764c <copysignf>
800075b0:	00040593          	mv	a1,s0
800075b4:	0100006f          	j	800075c4 <scalbnf+0xa4>
800075b8:	00003797          	auipc	a5,0x3
800075bc:	f6878793          	addi	a5,a5,-152 # 8000a520 <_etext+0x88>
800075c0:	0007a583          	lw	a1,0(a5)
800075c4:	26d010ef          	jal	ra,80009030 <__mulsf3>
800075c8:	f85ff06f          	j	8000754c <scalbnf+0x2c>
800075cc:	0177d793          	srli	a5,a5,0x17
800075d0:	fbdff06f          	j	8000758c <scalbnf+0x6c>
800075d4:	02f05663          	blez	a5,80007600 <scalbnf+0xe0>
800075d8:	80800737          	lui	a4,0x80800
800075dc:	fff70713          	addi	a4,a4,-1 # 807fffff <_stack_top+0x3fffff>
800075e0:	00e57533          	and	a0,a0,a4
800075e4:	01779793          	slli	a5,a5,0x17
800075e8:	00f56733          	or	a4,a0,a5
800075ec:	00c12083          	lw	ra,12(sp)
800075f0:	00812403          	lw	s0,8(sp)
800075f4:	00070513          	mv	a0,a4
800075f8:	01010113          	addi	sp,sp,16
800075fc:	00008067          	ret
80007600:	fea00693          	li	a3,-22
80007604:	00d7de63          	bge	a5,a3,80007620 <scalbnf+0x100>
80007608:	0000c7b7          	lui	a5,0xc
8000760c:	35078793          	addi	a5,a5,848 # c350 <_stack_size+0x4350>
80007610:	f887c4e3          	blt	a5,s0,80007598 <scalbnf+0x78>
80007614:	00003797          	auipc	a5,0x3
80007618:	f0c78793          	addi	a5,a5,-244 # 8000a520 <_etext+0x88>
8000761c:	f85ff06f          	j	800075a0 <scalbnf+0x80>
80007620:	80800737          	lui	a4,0x80800
80007624:	fff70713          	addi	a4,a4,-1 # 807fffff <_stack_top+0x3fffff>
80007628:	01978793          	addi	a5,a5,25
8000762c:	00e57533          	and	a0,a0,a4
80007630:	01779793          	slli	a5,a5,0x17
80007634:	00003717          	auipc	a4,0x3
80007638:	ef070713          	addi	a4,a4,-272 # 8000a524 <_etext+0x8c>
8000763c:	00072583          	lw	a1,0(a4)
80007640:	00a7e533          	or	a0,a5,a0
80007644:	f81ff06f          	j	800075c4 <scalbnf+0xa4>
80007648:	00008067          	ret

8000764c <copysignf>:
8000764c:	800007b7          	lui	a5,0x80000
80007650:	fff7c713          	not	a4,a5
80007654:	00e57533          	and	a0,a0,a4
80007658:	00b7f5b3          	and	a1,a5,a1
8000765c:	00b56533          	or	a0,a0,a1
80007660:	00008067          	ret

80007664 <__divdi3>:
80007664:	fc010113          	addi	sp,sp,-64
80007668:	02812c23          	sw	s0,56(sp)
8000766c:	03212823          	sw	s2,48(sp)
80007670:	03512223          	sw	s5,36(sp)
80007674:	02112e23          	sw	ra,60(sp)
80007678:	02912a23          	sw	s1,52(sp)
8000767c:	03312623          	sw	s3,44(sp)
80007680:	03412423          	sw	s4,40(sp)
80007684:	03612023          	sw	s6,32(sp)
80007688:	01712e23          	sw	s7,28(sp)
8000768c:	01812c23          	sw	s8,24(sp)
80007690:	01912a23          	sw	s9,20(sp)
80007694:	01a12823          	sw	s10,16(sp)
80007698:	01b12623          	sw	s11,12(sp)
8000769c:	00050a93          	mv	s5,a0
800076a0:	00058413          	mv	s0,a1
800076a4:	00000913          	li	s2,0
800076a8:	0005dc63          	bgez	a1,800076c0 <__divdi3+0x5c>
800076ac:	40a00ab3          	neg	s5,a0
800076b0:	015035b3          	snez	a1,s5
800076b4:	40800433          	neg	s0,s0
800076b8:	40b40433          	sub	s0,s0,a1
800076bc:	fff00913          	li	s2,-1
800076c0:	0006dc63          	bgez	a3,800076d8 <__divdi3+0x74>
800076c4:	40c00633          	neg	a2,a2
800076c8:	00c037b3          	snez	a5,a2
800076cc:	40d006b3          	neg	a3,a3
800076d0:	fff94913          	not	s2,s2
800076d4:	40f686b3          	sub	a3,a3,a5
800076d8:	00060993          	mv	s3,a2
800076dc:	00068a13          	mv	s4,a3
800076e0:	000a8b13          	mv	s6,s5
800076e4:	00040b93          	mv	s7,s0
800076e8:	3a069263          	bnez	a3,80007a8c <__divdi3+0x428>
800076ec:	00003497          	auipc	s1,0x3
800076f0:	cac48493          	addi	s1,s1,-852 # 8000a398 <__clz_tab>
800076f4:	12c47663          	bgeu	s0,a2,80007820 <__divdi3+0x1bc>
800076f8:	000107b7          	lui	a5,0x10
800076fc:	10f67863          	bgeu	a2,a5,8000780c <__divdi3+0x1a8>
80007700:	0ff00713          	li	a4,255
80007704:	00c73733          	sltu	a4,a4,a2
80007708:	00371713          	slli	a4,a4,0x3
8000770c:	00e657b3          	srl	a5,a2,a4
80007710:	00f484b3          	add	s1,s1,a5
80007714:	0004c683          	lbu	a3,0(s1)
80007718:	00e68733          	add	a4,a3,a4
8000771c:	02000693          	li	a3,32
80007720:	40e686b3          	sub	a3,a3,a4
80007724:	00068c63          	beqz	a3,8000773c <__divdi3+0xd8>
80007728:	00d41433          	sll	s0,s0,a3
8000772c:	00ead733          	srl	a4,s5,a4
80007730:	00d619b3          	sll	s3,a2,a3
80007734:	00876bb3          	or	s7,a4,s0
80007738:	00da9b33          	sll	s6,s5,a3
8000773c:	0109da93          	srli	s5,s3,0x10
80007740:	000a8593          	mv	a1,s5
80007744:	000b8513          	mv	a0,s7
80007748:	2d4020ef          	jal	ra,80009a1c <__umodsi3>
8000774c:	00050493          	mv	s1,a0
80007750:	000a8593          	mv	a1,s5
80007754:	01099c13          	slli	s8,s3,0x10
80007758:	000b8513          	mv	a0,s7
8000775c:	278020ef          	jal	ra,800099d4 <__udivsi3>
80007760:	010c5c13          	srli	s8,s8,0x10
80007764:	00050413          	mv	s0,a0
80007768:	00050593          	mv	a1,a0
8000776c:	000c0513          	mv	a0,s8
80007770:	1a8020ef          	jal	ra,80009918 <__mulsi3>
80007774:	01049493          	slli	s1,s1,0x10
80007778:	010b5713          	srli	a4,s6,0x10
8000777c:	00e4e733          	or	a4,s1,a4
80007780:	00040a13          	mv	s4,s0
80007784:	00a77e63          	bgeu	a4,a0,800077a0 <__divdi3+0x13c>
80007788:	01370733          	add	a4,a4,s3
8000778c:	fff40a13          	addi	s4,s0,-1 # bf7fffff <_stack_top+0x3f3fffff>
80007790:	01376863          	bltu	a4,s3,800077a0 <__divdi3+0x13c>
80007794:	00a77663          	bgeu	a4,a0,800077a0 <__divdi3+0x13c>
80007798:	ffe40a13          	addi	s4,s0,-2
8000779c:	01370733          	add	a4,a4,s3
800077a0:	40a70433          	sub	s0,a4,a0
800077a4:	000a8593          	mv	a1,s5
800077a8:	00040513          	mv	a0,s0
800077ac:	270020ef          	jal	ra,80009a1c <__umodsi3>
800077b0:	00050493          	mv	s1,a0
800077b4:	000a8593          	mv	a1,s5
800077b8:	00040513          	mv	a0,s0
800077bc:	218020ef          	jal	ra,800099d4 <__udivsi3>
800077c0:	010b1b13          	slli	s6,s6,0x10
800077c4:	00050413          	mv	s0,a0
800077c8:	00050593          	mv	a1,a0
800077cc:	01049493          	slli	s1,s1,0x10
800077d0:	000c0513          	mv	a0,s8
800077d4:	010b5b13          	srli	s6,s6,0x10
800077d8:	140020ef          	jal	ra,80009918 <__mulsi3>
800077dc:	0164eb33          	or	s6,s1,s6
800077e0:	00040613          	mv	a2,s0
800077e4:	00ab7c63          	bgeu	s6,a0,800077fc <__divdi3+0x198>
800077e8:	01698b33          	add	s6,s3,s6
800077ec:	fff40613          	addi	a2,s0,-1
800077f0:	013b6663          	bltu	s6,s3,800077fc <__divdi3+0x198>
800077f4:	00ab7463          	bgeu	s6,a0,800077fc <__divdi3+0x198>
800077f8:	ffe40613          	addi	a2,s0,-2
800077fc:	010a1793          	slli	a5,s4,0x10
80007800:	00c7e7b3          	or	a5,a5,a2
80007804:	00000a13          	li	s4,0
80007808:	12c0006f          	j	80007934 <__divdi3+0x2d0>
8000780c:	010007b7          	lui	a5,0x1000
80007810:	01000713          	li	a4,16
80007814:	eef66ce3          	bltu	a2,a5,8000770c <__divdi3+0xa8>
80007818:	01800713          	li	a4,24
8000781c:	ef1ff06f          	j	8000770c <__divdi3+0xa8>
80007820:	00061a63          	bnez	a2,80007834 <__divdi3+0x1d0>
80007824:	00000593          	li	a1,0
80007828:	00100513          	li	a0,1
8000782c:	1a8020ef          	jal	ra,800099d4 <__udivsi3>
80007830:	00050993          	mv	s3,a0
80007834:	000107b7          	lui	a5,0x10
80007838:	14f9fa63          	bgeu	s3,a5,8000798c <__divdi3+0x328>
8000783c:	0ff00793          	li	a5,255
80007840:	0137f463          	bgeu	a5,s3,80007848 <__divdi3+0x1e4>
80007844:	00800a13          	li	s4,8
80007848:	0149d7b3          	srl	a5,s3,s4
8000784c:	00f484b3          	add	s1,s1,a5
80007850:	0004c703          	lbu	a4,0(s1)
80007854:	02000693          	li	a3,32
80007858:	01470733          	add	a4,a4,s4
8000785c:	40e686b3          	sub	a3,a3,a4
80007860:	14069063          	bnez	a3,800079a0 <__divdi3+0x33c>
80007864:	41340433          	sub	s0,s0,s3
80007868:	00100a13          	li	s4,1
8000786c:	0109da93          	srli	s5,s3,0x10
80007870:	000a8593          	mv	a1,s5
80007874:	00040513          	mv	a0,s0
80007878:	1a4020ef          	jal	ra,80009a1c <__umodsi3>
8000787c:	00050493          	mv	s1,a0
80007880:	000a8593          	mv	a1,s5
80007884:	00040513          	mv	a0,s0
80007888:	01099b93          	slli	s7,s3,0x10
8000788c:	148020ef          	jal	ra,800099d4 <__udivsi3>
80007890:	010bdb93          	srli	s7,s7,0x10
80007894:	00050413          	mv	s0,a0
80007898:	00050593          	mv	a1,a0
8000789c:	000b8513          	mv	a0,s7
800078a0:	078020ef          	jal	ra,80009918 <__mulsi3>
800078a4:	01049493          	slli	s1,s1,0x10
800078a8:	010b5713          	srli	a4,s6,0x10
800078ac:	00e4e733          	or	a4,s1,a4
800078b0:	00040c13          	mv	s8,s0
800078b4:	00a77e63          	bgeu	a4,a0,800078d0 <__divdi3+0x26c>
800078b8:	01370733          	add	a4,a4,s3
800078bc:	fff40c13          	addi	s8,s0,-1
800078c0:	01376863          	bltu	a4,s3,800078d0 <__divdi3+0x26c>
800078c4:	00a77663          	bgeu	a4,a0,800078d0 <__divdi3+0x26c>
800078c8:	ffe40c13          	addi	s8,s0,-2
800078cc:	01370733          	add	a4,a4,s3
800078d0:	40a70433          	sub	s0,a4,a0
800078d4:	000a8593          	mv	a1,s5
800078d8:	00040513          	mv	a0,s0
800078dc:	140020ef          	jal	ra,80009a1c <__umodsi3>
800078e0:	00050493          	mv	s1,a0
800078e4:	000a8593          	mv	a1,s5
800078e8:	00040513          	mv	a0,s0
800078ec:	0e8020ef          	jal	ra,800099d4 <__udivsi3>
800078f0:	010b1b13          	slli	s6,s6,0x10
800078f4:	00050413          	mv	s0,a0
800078f8:	00050593          	mv	a1,a0
800078fc:	01049493          	slli	s1,s1,0x10
80007900:	000b8513          	mv	a0,s7
80007904:	010b5b13          	srli	s6,s6,0x10
80007908:	010020ef          	jal	ra,80009918 <__mulsi3>
8000790c:	0164eb33          	or	s6,s1,s6
80007910:	00040613          	mv	a2,s0
80007914:	00ab7c63          	bgeu	s6,a0,8000792c <__divdi3+0x2c8>
80007918:	01698b33          	add	s6,s3,s6
8000791c:	fff40613          	addi	a2,s0,-1
80007920:	013b6663          	bltu	s6,s3,8000792c <__divdi3+0x2c8>
80007924:	00ab7463          	bgeu	s6,a0,8000792c <__divdi3+0x2c8>
80007928:	ffe40613          	addi	a2,s0,-2
8000792c:	010c1793          	slli	a5,s8,0x10
80007930:	00c7e7b3          	or	a5,a5,a2
80007934:	000a0593          	mv	a1,s4
80007938:	00090a63          	beqz	s2,8000794c <__divdi3+0x2e8>
8000793c:	40f007b3          	neg	a5,a5
80007940:	00f03733          	snez	a4,a5
80007944:	414005b3          	neg	a1,s4
80007948:	40e585b3          	sub	a1,a1,a4
8000794c:	00078513          	mv	a0,a5
80007950:	03c12083          	lw	ra,60(sp)
80007954:	03812403          	lw	s0,56(sp)
80007958:	03412483          	lw	s1,52(sp)
8000795c:	03012903          	lw	s2,48(sp)
80007960:	02c12983          	lw	s3,44(sp)
80007964:	02812a03          	lw	s4,40(sp)
80007968:	02412a83          	lw	s5,36(sp)
8000796c:	02012b03          	lw	s6,32(sp)
80007970:	01c12b83          	lw	s7,28(sp)
80007974:	01812c03          	lw	s8,24(sp)
80007978:	01412c83          	lw	s9,20(sp)
8000797c:	01012d03          	lw	s10,16(sp)
80007980:	00c12d83          	lw	s11,12(sp)
80007984:	04010113          	addi	sp,sp,64
80007988:	00008067          	ret
8000798c:	010007b7          	lui	a5,0x1000
80007990:	01000a13          	li	s4,16
80007994:	eaf9eae3          	bltu	s3,a5,80007848 <__divdi3+0x1e4>
80007998:	01800a13          	li	s4,24
8000799c:	eadff06f          	j	80007848 <__divdi3+0x1e4>
800079a0:	00d999b3          	sll	s3,s3,a3
800079a4:	00e45a33          	srl	s4,s0,a4
800079a8:	0109db93          	srli	s7,s3,0x10
800079ac:	00ead733          	srl	a4,s5,a4
800079b0:	00d41433          	sll	s0,s0,a3
800079b4:	000b8593          	mv	a1,s7
800079b8:	000a0513          	mv	a0,s4
800079bc:	00876433          	or	s0,a4,s0
800079c0:	00da9b33          	sll	s6,s5,a3
800079c4:	058020ef          	jal	ra,80009a1c <__umodsi3>
800079c8:	00050493          	mv	s1,a0
800079cc:	000b8593          	mv	a1,s7
800079d0:	000a0513          	mv	a0,s4
800079d4:	01099c13          	slli	s8,s3,0x10
800079d8:	7fd010ef          	jal	ra,800099d4 <__udivsi3>
800079dc:	010c5c13          	srli	s8,s8,0x10
800079e0:	00050a93          	mv	s5,a0
800079e4:	00050593          	mv	a1,a0
800079e8:	000c0513          	mv	a0,s8
800079ec:	72d010ef          	jal	ra,80009918 <__mulsi3>
800079f0:	01049493          	slli	s1,s1,0x10
800079f4:	01045713          	srli	a4,s0,0x10
800079f8:	00e4e733          	or	a4,s1,a4
800079fc:	000a8a13          	mv	s4,s5
80007a00:	00a77e63          	bgeu	a4,a0,80007a1c <__divdi3+0x3b8>
80007a04:	01370733          	add	a4,a4,s3
80007a08:	fffa8a13          	addi	s4,s5,-1
80007a0c:	01376863          	bltu	a4,s3,80007a1c <__divdi3+0x3b8>
80007a10:	00a77663          	bgeu	a4,a0,80007a1c <__divdi3+0x3b8>
80007a14:	ffea8a13          	addi	s4,s5,-2
80007a18:	01370733          	add	a4,a4,s3
80007a1c:	40a70ab3          	sub	s5,a4,a0
80007a20:	000b8593          	mv	a1,s7
80007a24:	000a8513          	mv	a0,s5
80007a28:	7f5010ef          	jal	ra,80009a1c <__umodsi3>
80007a2c:	00050493          	mv	s1,a0
80007a30:	000b8593          	mv	a1,s7
80007a34:	000a8513          	mv	a0,s5
80007a38:	79d010ef          	jal	ra,800099d4 <__udivsi3>
80007a3c:	00050593          	mv	a1,a0
80007a40:	00050a93          	mv	s5,a0
80007a44:	000c0513          	mv	a0,s8
80007a48:	6d1010ef          	jal	ra,80009918 <__mulsi3>
80007a4c:	01041713          	slli	a4,s0,0x10
80007a50:	01049493          	slli	s1,s1,0x10
80007a54:	01075713          	srli	a4,a4,0x10
80007a58:	00e4e7b3          	or	a5,s1,a4
80007a5c:	000a8593          	mv	a1,s5
80007a60:	00a7fe63          	bgeu	a5,a0,80007a7c <__divdi3+0x418>
80007a64:	013787b3          	add	a5,a5,s3
80007a68:	fffa8593          	addi	a1,s5,-1
80007a6c:	0137e863          	bltu	a5,s3,80007a7c <__divdi3+0x418>
80007a70:	00a7f663          	bgeu	a5,a0,80007a7c <__divdi3+0x418>
80007a74:	ffea8593          	addi	a1,s5,-2
80007a78:	013787b3          	add	a5,a5,s3
80007a7c:	010a1a13          	slli	s4,s4,0x10
80007a80:	40a78433          	sub	s0,a5,a0
80007a84:	00ba6a33          	or	s4,s4,a1
80007a88:	de5ff06f          	j	8000786c <__divdi3+0x208>
80007a8c:	1ed46c63          	bltu	s0,a3,80007c84 <__divdi3+0x620>
80007a90:	000107b7          	lui	a5,0x10
80007a94:	04f6f463          	bgeu	a3,a5,80007adc <__divdi3+0x478>
80007a98:	0ff00b93          	li	s7,255
80007a9c:	00dbb733          	sltu	a4,s7,a3
80007aa0:	00371713          	slli	a4,a4,0x3
80007aa4:	00e6d5b3          	srl	a1,a3,a4
80007aa8:	00003797          	auipc	a5,0x3
80007aac:	8f078793          	addi	a5,a5,-1808 # 8000a398 <__clz_tab>
80007ab0:	00b787b3          	add	a5,a5,a1
80007ab4:	0007cb83          	lbu	s7,0(a5)
80007ab8:	02000593          	li	a1,32
80007abc:	00eb8bb3          	add	s7,s7,a4
80007ac0:	41758a33          	sub	s4,a1,s7
80007ac4:	020a1663          	bnez	s4,80007af0 <__divdi3+0x48c>
80007ac8:	00100793          	li	a5,1
80007acc:	e686e4e3          	bltu	a3,s0,80007934 <__divdi3+0x2d0>
80007ad0:	00cab633          	sltu	a2,s5,a2
80007ad4:	00164793          	xori	a5,a2,1
80007ad8:	e5dff06f          	j	80007934 <__divdi3+0x2d0>
80007adc:	010007b7          	lui	a5,0x1000
80007ae0:	01000713          	li	a4,16
80007ae4:	fcf6e0e3          	bltu	a3,a5,80007aa4 <__divdi3+0x440>
80007ae8:	01800713          	li	a4,24
80007aec:	fb9ff06f          	j	80007aa4 <__divdi3+0x440>
80007af0:	01765d33          	srl	s10,a2,s7
80007af4:	014696b3          	sll	a3,a3,s4
80007af8:	00dd6d33          	or	s10,s10,a3
80007afc:	017454b3          	srl	s1,s0,s7
80007b00:	010d5c13          	srli	s8,s10,0x10
80007b04:	000c0593          	mv	a1,s8
80007b08:	00048513          	mv	a0,s1
80007b0c:	014619b3          	sll	s3,a2,s4
80007b10:	01441433          	sll	s0,s0,s4
80007b14:	709010ef          	jal	ra,80009a1c <__umodsi3>
80007b18:	017adbb3          	srl	s7,s5,s7
80007b1c:	008bebb3          	or	s7,s7,s0
80007b20:	000c0593          	mv	a1,s8
80007b24:	00050413          	mv	s0,a0
80007b28:	010d1c93          	slli	s9,s10,0x10
80007b2c:	00048513          	mv	a0,s1
80007b30:	6a5010ef          	jal	ra,800099d4 <__udivsi3>
80007b34:	010cdc93          	srli	s9,s9,0x10
80007b38:	00050493          	mv	s1,a0
80007b3c:	00050593          	mv	a1,a0
80007b40:	000c8513          	mv	a0,s9
80007b44:	5d5010ef          	jal	ra,80009918 <__mulsi3>
80007b48:	01041413          	slli	s0,s0,0x10
80007b4c:	010bd713          	srli	a4,s7,0x10
80007b50:	00e46733          	or	a4,s0,a4
80007b54:	00048d93          	mv	s11,s1
80007b58:	00a77e63          	bgeu	a4,a0,80007b74 <__divdi3+0x510>
80007b5c:	01a70733          	add	a4,a4,s10
80007b60:	fff48d93          	addi	s11,s1,-1
80007b64:	01a76863          	bltu	a4,s10,80007b74 <__divdi3+0x510>
80007b68:	00a77663          	bgeu	a4,a0,80007b74 <__divdi3+0x510>
80007b6c:	ffe48d93          	addi	s11,s1,-2
80007b70:	01a70733          	add	a4,a4,s10
80007b74:	40a704b3          	sub	s1,a4,a0
80007b78:	000c0593          	mv	a1,s8
80007b7c:	00048513          	mv	a0,s1
80007b80:	69d010ef          	jal	ra,80009a1c <__umodsi3>
80007b84:	00050b13          	mv	s6,a0
80007b88:	000c0593          	mv	a1,s8
80007b8c:	00048513          	mv	a0,s1
80007b90:	645010ef          	jal	ra,800099d4 <__udivsi3>
80007b94:	010b9413          	slli	s0,s7,0x10
80007b98:	00050493          	mv	s1,a0
80007b9c:	00050593          	mv	a1,a0
80007ba0:	010b1b13          	slli	s6,s6,0x10
80007ba4:	000c8513          	mv	a0,s9
80007ba8:	01045413          	srli	s0,s0,0x10
80007bac:	56d010ef          	jal	ra,80009918 <__mulsi3>
80007bb0:	008b6433          	or	s0,s6,s0
80007bb4:	00048613          	mv	a2,s1
80007bb8:	00a47e63          	bgeu	s0,a0,80007bd4 <__divdi3+0x570>
80007bbc:	01a40433          	add	s0,s0,s10
80007bc0:	fff48613          	addi	a2,s1,-1
80007bc4:	01a46863          	bltu	s0,s10,80007bd4 <__divdi3+0x570>
80007bc8:	00a47663          	bgeu	s0,a0,80007bd4 <__divdi3+0x570>
80007bcc:	ffe48613          	addi	a2,s1,-2
80007bd0:	01a40433          	add	s0,s0,s10
80007bd4:	010d9793          	slli	a5,s11,0x10
80007bd8:	00010337          	lui	t1,0x10
80007bdc:	00c7e7b3          	or	a5,a5,a2
80007be0:	fff30813          	addi	a6,t1,-1 # ffff <_stack_size+0x7fff>
80007be4:	0107f733          	and	a4,a5,a6
80007be8:	0109f833          	and	a6,s3,a6
80007bec:	40a40433          	sub	s0,s0,a0
80007bf0:	0107de13          	srli	t3,a5,0x10
80007bf4:	0109d993          	srli	s3,s3,0x10
80007bf8:	00070513          	mv	a0,a4
80007bfc:	00080593          	mv	a1,a6
80007c00:	519010ef          	jal	ra,80009918 <__mulsi3>
80007c04:	00050893          	mv	a7,a0
80007c08:	00098593          	mv	a1,s3
80007c0c:	00070513          	mv	a0,a4
80007c10:	509010ef          	jal	ra,80009918 <__mulsi3>
80007c14:	00050713          	mv	a4,a0
80007c18:	00080593          	mv	a1,a6
80007c1c:	000e0513          	mv	a0,t3
80007c20:	4f9010ef          	jal	ra,80009918 <__mulsi3>
80007c24:	00050813          	mv	a6,a0
80007c28:	00098593          	mv	a1,s3
80007c2c:	000e0513          	mv	a0,t3
80007c30:	4e9010ef          	jal	ra,80009918 <__mulsi3>
80007c34:	01070733          	add	a4,a4,a6
80007c38:	0108d693          	srli	a3,a7,0x10
80007c3c:	00d70733          	add	a4,a4,a3
80007c40:	01077463          	bgeu	a4,a6,80007c48 <__divdi3+0x5e4>
80007c44:	00650533          	add	a0,a0,t1
80007c48:	01075693          	srli	a3,a4,0x10
80007c4c:	00a68533          	add	a0,a3,a0
80007c50:	02a46663          	bltu	s0,a0,80007c7c <__divdi3+0x618>
80007c54:	baa418e3          	bne	s0,a0,80007804 <__divdi3+0x1a0>
80007c58:	000106b7          	lui	a3,0x10
80007c5c:	fff68693          	addi	a3,a3,-1 # ffff <_stack_size+0x7fff>
80007c60:	00d77733          	and	a4,a4,a3
80007c64:	01071713          	slli	a4,a4,0x10
80007c68:	00d8f8b3          	and	a7,a7,a3
80007c6c:	014a9ab3          	sll	s5,s5,s4
80007c70:	01170733          	add	a4,a4,a7
80007c74:	00000a13          	li	s4,0
80007c78:	caeafee3          	bgeu	s5,a4,80007934 <__divdi3+0x2d0>
80007c7c:	fff78793          	addi	a5,a5,-1 # ffffff <_stack_size+0xff7fff>
80007c80:	b85ff06f          	j	80007804 <__divdi3+0x1a0>
80007c84:	00000a13          	li	s4,0
80007c88:	00000793          	li	a5,0
80007c8c:	ca9ff06f          	j	80007934 <__divdi3+0x2d0>

80007c90 <__udivdi3>:
80007c90:	fd010113          	addi	sp,sp,-48
80007c94:	02912223          	sw	s1,36(sp)
80007c98:	01612823          	sw	s6,16(sp)
80007c9c:	02112623          	sw	ra,44(sp)
80007ca0:	02812423          	sw	s0,40(sp)
80007ca4:	03212023          	sw	s2,32(sp)
80007ca8:	01312e23          	sw	s3,28(sp)
80007cac:	01412c23          	sw	s4,24(sp)
80007cb0:	01512a23          	sw	s5,20(sp)
80007cb4:	01712623          	sw	s7,12(sp)
80007cb8:	01812423          	sw	s8,8(sp)
80007cbc:	01912223          	sw	s9,4(sp)
80007cc0:	00050b13          	mv	s6,a0
80007cc4:	00058493          	mv	s1,a1
80007cc8:	38069c63          	bnez	a3,80008060 <__udivdi3+0x3d0>
80007ccc:	00060413          	mv	s0,a2
80007cd0:	00050993          	mv	s3,a0
80007cd4:	00002917          	auipc	s2,0x2
80007cd8:	6c490913          	addi	s2,s2,1732 # 8000a398 <__clz_tab>
80007cdc:	12c5f863          	bgeu	a1,a2,80007e0c <__udivdi3+0x17c>
80007ce0:	000107b7          	lui	a5,0x10
80007ce4:	00058a93          	mv	s5,a1
80007ce8:	10f67863          	bgeu	a2,a5,80007df8 <__udivdi3+0x168>
80007cec:	0ff00693          	li	a3,255
80007cf0:	00c6b6b3          	sltu	a3,a3,a2
80007cf4:	00369693          	slli	a3,a3,0x3
80007cf8:	00d657b3          	srl	a5,a2,a3
80007cfc:	00f90933          	add	s2,s2,a5
80007d00:	00094703          	lbu	a4,0(s2)
80007d04:	00d706b3          	add	a3,a4,a3
80007d08:	02000713          	li	a4,32
80007d0c:	40d70733          	sub	a4,a4,a3
80007d10:	00070c63          	beqz	a4,80007d28 <__udivdi3+0x98>
80007d14:	00e494b3          	sll	s1,s1,a4
80007d18:	00db56b3          	srl	a3,s6,a3
80007d1c:	00e61433          	sll	s0,a2,a4
80007d20:	0096eab3          	or	s5,a3,s1
80007d24:	00eb19b3          	sll	s3,s6,a4
80007d28:	01045b13          	srli	s6,s0,0x10
80007d2c:	000b0593          	mv	a1,s6
80007d30:	000a8513          	mv	a0,s5
80007d34:	4e9010ef          	jal	ra,80009a1c <__umodsi3>
80007d38:	00050913          	mv	s2,a0
80007d3c:	000b0593          	mv	a1,s6
80007d40:	01041b93          	slli	s7,s0,0x10
80007d44:	000a8513          	mv	a0,s5
80007d48:	48d010ef          	jal	ra,800099d4 <__udivsi3>
80007d4c:	010bdb93          	srli	s7,s7,0x10
80007d50:	00050493          	mv	s1,a0
80007d54:	00050593          	mv	a1,a0
80007d58:	000b8513          	mv	a0,s7
80007d5c:	3bd010ef          	jal	ra,80009918 <__mulsi3>
80007d60:	01091913          	slli	s2,s2,0x10
80007d64:	0109d713          	srli	a4,s3,0x10
80007d68:	00e96733          	or	a4,s2,a4
80007d6c:	00048a13          	mv	s4,s1
80007d70:	00a77e63          	bgeu	a4,a0,80007d8c <__udivdi3+0xfc>
80007d74:	00870733          	add	a4,a4,s0
80007d78:	fff48a13          	addi	s4,s1,-1
80007d7c:	00876863          	bltu	a4,s0,80007d8c <__udivdi3+0xfc>
80007d80:	00a77663          	bgeu	a4,a0,80007d8c <__udivdi3+0xfc>
80007d84:	ffe48a13          	addi	s4,s1,-2
80007d88:	00870733          	add	a4,a4,s0
80007d8c:	40a704b3          	sub	s1,a4,a0
80007d90:	000b0593          	mv	a1,s6
80007d94:	00048513          	mv	a0,s1
80007d98:	485010ef          	jal	ra,80009a1c <__umodsi3>
80007d9c:	00050913          	mv	s2,a0
80007da0:	000b0593          	mv	a1,s6
80007da4:	00048513          	mv	a0,s1
80007da8:	42d010ef          	jal	ra,800099d4 <__udivsi3>
80007dac:	01099993          	slli	s3,s3,0x10
80007db0:	00050493          	mv	s1,a0
80007db4:	00050593          	mv	a1,a0
80007db8:	01091913          	slli	s2,s2,0x10
80007dbc:	000b8513          	mv	a0,s7
80007dc0:	0109d993          	srli	s3,s3,0x10
80007dc4:	355010ef          	jal	ra,80009918 <__mulsi3>
80007dc8:	013969b3          	or	s3,s2,s3
80007dcc:	00048613          	mv	a2,s1
80007dd0:	00a9fc63          	bgeu	s3,a0,80007de8 <__udivdi3+0x158>
80007dd4:	013409b3          	add	s3,s0,s3
80007dd8:	fff48613          	addi	a2,s1,-1
80007ddc:	0089e663          	bltu	s3,s0,80007de8 <__udivdi3+0x158>
80007de0:	00a9f463          	bgeu	s3,a0,80007de8 <__udivdi3+0x158>
80007de4:	ffe48613          	addi	a2,s1,-2
80007de8:	010a1793          	slli	a5,s4,0x10
80007dec:	00c7e7b3          	or	a5,a5,a2
80007df0:	00000a13          	li	s4,0
80007df4:	1300006f          	j	80007f24 <__udivdi3+0x294>
80007df8:	010007b7          	lui	a5,0x1000
80007dfc:	01000693          	li	a3,16
80007e00:	eef66ce3          	bltu	a2,a5,80007cf8 <__udivdi3+0x68>
80007e04:	01800693          	li	a3,24
80007e08:	ef1ff06f          	j	80007cf8 <__udivdi3+0x68>
80007e0c:	00068a13          	mv	s4,a3
80007e10:	00061a63          	bnez	a2,80007e24 <__udivdi3+0x194>
80007e14:	00000593          	li	a1,0
80007e18:	00100513          	li	a0,1
80007e1c:	3b9010ef          	jal	ra,800099d4 <__udivsi3>
80007e20:	00050413          	mv	s0,a0
80007e24:	000107b7          	lui	a5,0x10
80007e28:	12f47c63          	bgeu	s0,a5,80007f60 <__udivdi3+0x2d0>
80007e2c:	0ff00793          	li	a5,255
80007e30:	0087f463          	bgeu	a5,s0,80007e38 <__udivdi3+0x1a8>
80007e34:	00800a13          	li	s4,8
80007e38:	014457b3          	srl	a5,s0,s4
80007e3c:	00f90933          	add	s2,s2,a5
80007e40:	00094683          	lbu	a3,0(s2)
80007e44:	02000613          	li	a2,32
80007e48:	014686b3          	add	a3,a3,s4
80007e4c:	40d60633          	sub	a2,a2,a3
80007e50:	12061263          	bnez	a2,80007f74 <__udivdi3+0x2e4>
80007e54:	408484b3          	sub	s1,s1,s0
80007e58:	00100a13          	li	s4,1
80007e5c:	01045b13          	srli	s6,s0,0x10
80007e60:	000b0593          	mv	a1,s6
80007e64:	00048513          	mv	a0,s1
80007e68:	3b5010ef          	jal	ra,80009a1c <__umodsi3>
80007e6c:	00050913          	mv	s2,a0
80007e70:	000b0593          	mv	a1,s6
80007e74:	00048513          	mv	a0,s1
80007e78:	01041b93          	slli	s7,s0,0x10
80007e7c:	359010ef          	jal	ra,800099d4 <__udivsi3>
80007e80:	010bdb93          	srli	s7,s7,0x10
80007e84:	00050493          	mv	s1,a0
80007e88:	00050593          	mv	a1,a0
80007e8c:	000b8513          	mv	a0,s7
80007e90:	289010ef          	jal	ra,80009918 <__mulsi3>
80007e94:	01091913          	slli	s2,s2,0x10
80007e98:	0109d713          	srli	a4,s3,0x10
80007e9c:	00e96733          	or	a4,s2,a4
80007ea0:	00048a93          	mv	s5,s1
80007ea4:	00a77e63          	bgeu	a4,a0,80007ec0 <__udivdi3+0x230>
80007ea8:	00870733          	add	a4,a4,s0
80007eac:	fff48a93          	addi	s5,s1,-1
80007eb0:	00876863          	bltu	a4,s0,80007ec0 <__udivdi3+0x230>
80007eb4:	00a77663          	bgeu	a4,a0,80007ec0 <__udivdi3+0x230>
80007eb8:	ffe48a93          	addi	s5,s1,-2
80007ebc:	00870733          	add	a4,a4,s0
80007ec0:	40a704b3          	sub	s1,a4,a0
80007ec4:	000b0593          	mv	a1,s6
80007ec8:	00048513          	mv	a0,s1
80007ecc:	351010ef          	jal	ra,80009a1c <__umodsi3>
80007ed0:	00050913          	mv	s2,a0
80007ed4:	000b0593          	mv	a1,s6
80007ed8:	00048513          	mv	a0,s1
80007edc:	2f9010ef          	jal	ra,800099d4 <__udivsi3>
80007ee0:	01099993          	slli	s3,s3,0x10
80007ee4:	00050493          	mv	s1,a0
80007ee8:	00050593          	mv	a1,a0
80007eec:	01091913          	slli	s2,s2,0x10
80007ef0:	000b8513          	mv	a0,s7
80007ef4:	0109d993          	srli	s3,s3,0x10
80007ef8:	221010ef          	jal	ra,80009918 <__mulsi3>
80007efc:	013969b3          	or	s3,s2,s3
80007f00:	00048613          	mv	a2,s1
80007f04:	00a9fc63          	bgeu	s3,a0,80007f1c <__udivdi3+0x28c>
80007f08:	013409b3          	add	s3,s0,s3
80007f0c:	fff48613          	addi	a2,s1,-1
80007f10:	0089e663          	bltu	s3,s0,80007f1c <__udivdi3+0x28c>
80007f14:	00a9f463          	bgeu	s3,a0,80007f1c <__udivdi3+0x28c>
80007f18:	ffe48613          	addi	a2,s1,-2
80007f1c:	010a9793          	slli	a5,s5,0x10
80007f20:	00c7e7b3          	or	a5,a5,a2
80007f24:	00078513          	mv	a0,a5
80007f28:	000a0593          	mv	a1,s4
80007f2c:	02c12083          	lw	ra,44(sp)
80007f30:	02812403          	lw	s0,40(sp)
80007f34:	02412483          	lw	s1,36(sp)
80007f38:	02012903          	lw	s2,32(sp)
80007f3c:	01c12983          	lw	s3,28(sp)
80007f40:	01812a03          	lw	s4,24(sp)
80007f44:	01412a83          	lw	s5,20(sp)
80007f48:	01012b03          	lw	s6,16(sp)
80007f4c:	00c12b83          	lw	s7,12(sp)
80007f50:	00812c03          	lw	s8,8(sp)
80007f54:	00412c83          	lw	s9,4(sp)
80007f58:	03010113          	addi	sp,sp,48
80007f5c:	00008067          	ret
80007f60:	010007b7          	lui	a5,0x1000
80007f64:	01000a13          	li	s4,16
80007f68:	ecf468e3          	bltu	s0,a5,80007e38 <__udivdi3+0x1a8>
80007f6c:	01800a13          	li	s4,24
80007f70:	ec9ff06f          	j	80007e38 <__udivdi3+0x1a8>
80007f74:	00c41433          	sll	s0,s0,a2
80007f78:	00d4da33          	srl	s4,s1,a3
80007f7c:	00cb19b3          	sll	s3,s6,a2
80007f80:	00db56b3          	srl	a3,s6,a3
80007f84:	01045b13          	srli	s6,s0,0x10
80007f88:	00c494b3          	sll	s1,s1,a2
80007f8c:	000b0593          	mv	a1,s6
80007f90:	000a0513          	mv	a0,s4
80007f94:	0096eab3          	or	s5,a3,s1
80007f98:	285010ef          	jal	ra,80009a1c <__umodsi3>
80007f9c:	00050913          	mv	s2,a0
80007fa0:	000b0593          	mv	a1,s6
80007fa4:	000a0513          	mv	a0,s4
80007fa8:	01041b93          	slli	s7,s0,0x10
80007fac:	229010ef          	jal	ra,800099d4 <__udivsi3>
80007fb0:	010bdb93          	srli	s7,s7,0x10
80007fb4:	00050493          	mv	s1,a0
80007fb8:	00050593          	mv	a1,a0
80007fbc:	000b8513          	mv	a0,s7
80007fc0:	159010ef          	jal	ra,80009918 <__mulsi3>
80007fc4:	01091913          	slli	s2,s2,0x10
80007fc8:	010ad713          	srli	a4,s5,0x10
80007fcc:	00e96733          	or	a4,s2,a4
80007fd0:	00048a13          	mv	s4,s1
80007fd4:	00a77e63          	bgeu	a4,a0,80007ff0 <__udivdi3+0x360>
80007fd8:	00870733          	add	a4,a4,s0
80007fdc:	fff48a13          	addi	s4,s1,-1
80007fe0:	00876863          	bltu	a4,s0,80007ff0 <__udivdi3+0x360>
80007fe4:	00a77663          	bgeu	a4,a0,80007ff0 <__udivdi3+0x360>
80007fe8:	ffe48a13          	addi	s4,s1,-2
80007fec:	00870733          	add	a4,a4,s0
80007ff0:	40a704b3          	sub	s1,a4,a0
80007ff4:	000b0593          	mv	a1,s6
80007ff8:	00048513          	mv	a0,s1
80007ffc:	221010ef          	jal	ra,80009a1c <__umodsi3>
80008000:	00050913          	mv	s2,a0
80008004:	000b0593          	mv	a1,s6
80008008:	00048513          	mv	a0,s1
8000800c:	1c9010ef          	jal	ra,800099d4 <__udivsi3>
80008010:	00050493          	mv	s1,a0
80008014:	00050593          	mv	a1,a0
80008018:	000b8513          	mv	a0,s7
8000801c:	0fd010ef          	jal	ra,80009918 <__mulsi3>
80008020:	010a9693          	slli	a3,s5,0x10
80008024:	01091913          	slli	s2,s2,0x10
80008028:	0106d693          	srli	a3,a3,0x10
8000802c:	00d967b3          	or	a5,s2,a3
80008030:	00048713          	mv	a4,s1
80008034:	00a7fe63          	bgeu	a5,a0,80008050 <__udivdi3+0x3c0>
80008038:	008787b3          	add	a5,a5,s0
8000803c:	fff48713          	addi	a4,s1,-1
80008040:	0087e863          	bltu	a5,s0,80008050 <__udivdi3+0x3c0>
80008044:	00a7f663          	bgeu	a5,a0,80008050 <__udivdi3+0x3c0>
80008048:	ffe48713          	addi	a4,s1,-2
8000804c:	008787b3          	add	a5,a5,s0
80008050:	010a1a13          	slli	s4,s4,0x10
80008054:	40a784b3          	sub	s1,a5,a0
80008058:	00ea6a33          	or	s4,s4,a4
8000805c:	e01ff06f          	j	80007e5c <__udivdi3+0x1cc>
80008060:	1ed5ec63          	bltu	a1,a3,80008258 <__udivdi3+0x5c8>
80008064:	000107b7          	lui	a5,0x10
80008068:	04f6f463          	bgeu	a3,a5,800080b0 <__udivdi3+0x420>
8000806c:	0ff00593          	li	a1,255
80008070:	00d5b533          	sltu	a0,a1,a3
80008074:	00351513          	slli	a0,a0,0x3
80008078:	00a6d733          	srl	a4,a3,a0
8000807c:	00002797          	auipc	a5,0x2
80008080:	31c78793          	addi	a5,a5,796 # 8000a398 <__clz_tab>
80008084:	00e787b3          	add	a5,a5,a4
80008088:	0007c583          	lbu	a1,0(a5)
8000808c:	02000a13          	li	s4,32
80008090:	00a585b3          	add	a1,a1,a0
80008094:	40ba0a33          	sub	s4,s4,a1
80008098:	020a1663          	bnez	s4,800080c4 <__udivdi3+0x434>
8000809c:	00100793          	li	a5,1
800080a0:	e896e2e3          	bltu	a3,s1,80007f24 <__udivdi3+0x294>
800080a4:	00cb3633          	sltu	a2,s6,a2
800080a8:	00164793          	xori	a5,a2,1
800080ac:	e79ff06f          	j	80007f24 <__udivdi3+0x294>
800080b0:	010007b7          	lui	a5,0x1000
800080b4:	01000513          	li	a0,16
800080b8:	fcf6e0e3          	bltu	a3,a5,80008078 <__udivdi3+0x3e8>
800080bc:	01800513          	li	a0,24
800080c0:	fb9ff06f          	j	80008078 <__udivdi3+0x3e8>
800080c4:	00b65ab3          	srl	s5,a2,a1
800080c8:	014696b3          	sll	a3,a3,s4
800080cc:	00daeab3          	or	s5,s5,a3
800080d0:	00b4d933          	srl	s2,s1,a1
800080d4:	014497b3          	sll	a5,s1,s4
800080d8:	00bb55b3          	srl	a1,s6,a1
800080dc:	010adb93          	srli	s7,s5,0x10
800080e0:	00f5e4b3          	or	s1,a1,a5
800080e4:	00090513          	mv	a0,s2
800080e8:	000b8593          	mv	a1,s7
800080ec:	014619b3          	sll	s3,a2,s4
800080f0:	12d010ef          	jal	ra,80009a1c <__umodsi3>
800080f4:	00050413          	mv	s0,a0
800080f8:	000b8593          	mv	a1,s7
800080fc:	00090513          	mv	a0,s2
80008100:	010a9c13          	slli	s8,s5,0x10
80008104:	0d1010ef          	jal	ra,800099d4 <__udivsi3>
80008108:	010c5c13          	srli	s8,s8,0x10
8000810c:	00050913          	mv	s2,a0
80008110:	00050593          	mv	a1,a0
80008114:	000c0513          	mv	a0,s8
80008118:	001010ef          	jal	ra,80009918 <__mulsi3>
8000811c:	01041413          	slli	s0,s0,0x10
80008120:	0104d713          	srli	a4,s1,0x10
80008124:	00e46733          	or	a4,s0,a4
80008128:	00090c93          	mv	s9,s2
8000812c:	00a77e63          	bgeu	a4,a0,80008148 <__udivdi3+0x4b8>
80008130:	01570733          	add	a4,a4,s5
80008134:	fff90c93          	addi	s9,s2,-1
80008138:	01576863          	bltu	a4,s5,80008148 <__udivdi3+0x4b8>
8000813c:	00a77663          	bgeu	a4,a0,80008148 <__udivdi3+0x4b8>
80008140:	ffe90c93          	addi	s9,s2,-2
80008144:	01570733          	add	a4,a4,s5
80008148:	40a70933          	sub	s2,a4,a0
8000814c:	000b8593          	mv	a1,s7
80008150:	00090513          	mv	a0,s2
80008154:	0c9010ef          	jal	ra,80009a1c <__umodsi3>
80008158:	00050413          	mv	s0,a0
8000815c:	000b8593          	mv	a1,s7
80008160:	00090513          	mv	a0,s2
80008164:	071010ef          	jal	ra,800099d4 <__udivsi3>
80008168:	00050913          	mv	s2,a0
8000816c:	00050593          	mv	a1,a0
80008170:	000c0513          	mv	a0,s8
80008174:	7a4010ef          	jal	ra,80009918 <__mulsi3>
80008178:	01049793          	slli	a5,s1,0x10
8000817c:	01041413          	slli	s0,s0,0x10
80008180:	0107d793          	srli	a5,a5,0x10
80008184:	00f46733          	or	a4,s0,a5
80008188:	00090613          	mv	a2,s2
8000818c:	00a77e63          	bgeu	a4,a0,800081a8 <__udivdi3+0x518>
80008190:	01570733          	add	a4,a4,s5
80008194:	fff90613          	addi	a2,s2,-1
80008198:	01576863          	bltu	a4,s5,800081a8 <__udivdi3+0x518>
8000819c:	00a77663          	bgeu	a4,a0,800081a8 <__udivdi3+0x518>
800081a0:	ffe90613          	addi	a2,s2,-2
800081a4:	01570733          	add	a4,a4,s5
800081a8:	010c9793          	slli	a5,s9,0x10
800081ac:	00010e37          	lui	t3,0x10
800081b0:	00c7e7b3          	or	a5,a5,a2
800081b4:	fffe0813          	addi	a6,t3,-1 # ffff <_stack_size+0x7fff>
800081b8:	0107f333          	and	t1,a5,a6
800081bc:	0109f833          	and	a6,s3,a6
800081c0:	40a70733          	sub	a4,a4,a0
800081c4:	0107de93          	srli	t4,a5,0x10
800081c8:	0109d993          	srli	s3,s3,0x10
800081cc:	00030513          	mv	a0,t1
800081d0:	00080593          	mv	a1,a6
800081d4:	744010ef          	jal	ra,80009918 <__mulsi3>
800081d8:	00050893          	mv	a7,a0
800081dc:	00098593          	mv	a1,s3
800081e0:	00030513          	mv	a0,t1
800081e4:	734010ef          	jal	ra,80009918 <__mulsi3>
800081e8:	00050313          	mv	t1,a0
800081ec:	00080593          	mv	a1,a6
800081f0:	000e8513          	mv	a0,t4
800081f4:	724010ef          	jal	ra,80009918 <__mulsi3>
800081f8:	00050813          	mv	a6,a0
800081fc:	00098593          	mv	a1,s3
80008200:	000e8513          	mv	a0,t4
80008204:	714010ef          	jal	ra,80009918 <__mulsi3>
80008208:	0108d693          	srli	a3,a7,0x10
8000820c:	01030333          	add	t1,t1,a6
80008210:	006686b3          	add	a3,a3,t1
80008214:	0106f463          	bgeu	a3,a6,8000821c <__udivdi3+0x58c>
80008218:	01c50533          	add	a0,a0,t3
8000821c:	0106d613          	srli	a2,a3,0x10
80008220:	00a60533          	add	a0,a2,a0
80008224:	02a76663          	bltu	a4,a0,80008250 <__udivdi3+0x5c0>
80008228:	bca714e3          	bne	a4,a0,80007df0 <__udivdi3+0x160>
8000822c:	00010737          	lui	a4,0x10
80008230:	fff70713          	addi	a4,a4,-1 # ffff <_stack_size+0x7fff>
80008234:	00e6f6b3          	and	a3,a3,a4
80008238:	01069693          	slli	a3,a3,0x10
8000823c:	00e8f8b3          	and	a7,a7,a4
80008240:	014b1633          	sll	a2,s6,s4
80008244:	011686b3          	add	a3,a3,a7
80008248:	00000a13          	li	s4,0
8000824c:	ccd67ce3          	bgeu	a2,a3,80007f24 <__udivdi3+0x294>
80008250:	fff78793          	addi	a5,a5,-1 # ffffff <_stack_size+0xff7fff>
80008254:	b9dff06f          	j	80007df0 <__udivdi3+0x160>
80008258:	00000a13          	li	s4,0
8000825c:	00000793          	li	a5,0
80008260:	cc5ff06f          	j	80007f24 <__udivdi3+0x294>

80008264 <__umoddi3>:
80008264:	fd010113          	addi	sp,sp,-48
80008268:	02812423          	sw	s0,40(sp)
8000826c:	02912223          	sw	s1,36(sp)
80008270:	01312e23          	sw	s3,28(sp)
80008274:	01612823          	sw	s6,16(sp)
80008278:	02112623          	sw	ra,44(sp)
8000827c:	03212023          	sw	s2,32(sp)
80008280:	01412c23          	sw	s4,24(sp)
80008284:	01512a23          	sw	s5,20(sp)
80008288:	01712623          	sw	s7,12(sp)
8000828c:	01812423          	sw	s8,8(sp)
80008290:	01912223          	sw	s9,4(sp)
80008294:	01a12023          	sw	s10,0(sp)
80008298:	00050b13          	mv	s6,a0
8000829c:	00058993          	mv	s3,a1
800082a0:	00050413          	mv	s0,a0
800082a4:	00058493          	mv	s1,a1
800082a8:	26069c63          	bnez	a3,80008520 <__umoddi3+0x2bc>
800082ac:	00060913          	mv	s2,a2
800082b0:	00068a13          	mv	s4,a3
800082b4:	00002a97          	auipc	s5,0x2
800082b8:	0e4a8a93          	addi	s5,s5,228 # 8000a398 <__clz_tab>
800082bc:	14c5f263          	bgeu	a1,a2,80008400 <__umoddi3+0x19c>
800082c0:	000107b7          	lui	a5,0x10
800082c4:	12f67463          	bgeu	a2,a5,800083ec <__umoddi3+0x188>
800082c8:	0ff00793          	li	a5,255
800082cc:	00c7f463          	bgeu	a5,a2,800082d4 <__umoddi3+0x70>
800082d0:	00800a13          	li	s4,8
800082d4:	014657b3          	srl	a5,a2,s4
800082d8:	00fa8ab3          	add	s5,s5,a5
800082dc:	000ac703          	lbu	a4,0(s5)
800082e0:	02000513          	li	a0,32
800082e4:	01470733          	add	a4,a4,s4
800082e8:	40e50a33          	sub	s4,a0,a4
800082ec:	000a0c63          	beqz	s4,80008304 <__umoddi3+0xa0>
800082f0:	014995b3          	sll	a1,s3,s4
800082f4:	00eb5733          	srl	a4,s6,a4
800082f8:	01461933          	sll	s2,a2,s4
800082fc:	00b764b3          	or	s1,a4,a1
80008300:	014b1433          	sll	s0,s6,s4
80008304:	01095a93          	srli	s5,s2,0x10
80008308:	000a8593          	mv	a1,s5
8000830c:	00048513          	mv	a0,s1
80008310:	70c010ef          	jal	ra,80009a1c <__umodsi3>
80008314:	00050993          	mv	s3,a0
80008318:	000a8593          	mv	a1,s5
8000831c:	01091b13          	slli	s6,s2,0x10
80008320:	00048513          	mv	a0,s1
80008324:	6b0010ef          	jal	ra,800099d4 <__udivsi3>
80008328:	010b5b13          	srli	s6,s6,0x10
8000832c:	00050593          	mv	a1,a0
80008330:	000b0513          	mv	a0,s6
80008334:	5e4010ef          	jal	ra,80009918 <__mulsi3>
80008338:	01099993          	slli	s3,s3,0x10
8000833c:	01045793          	srli	a5,s0,0x10
80008340:	00f9e7b3          	or	a5,s3,a5
80008344:	00a7fa63          	bgeu	a5,a0,80008358 <__umoddi3+0xf4>
80008348:	012787b3          	add	a5,a5,s2
8000834c:	0127e663          	bltu	a5,s2,80008358 <__umoddi3+0xf4>
80008350:	00a7f463          	bgeu	a5,a0,80008358 <__umoddi3+0xf4>
80008354:	012787b3          	add	a5,a5,s2
80008358:	40a784b3          	sub	s1,a5,a0
8000835c:	000a8593          	mv	a1,s5
80008360:	00048513          	mv	a0,s1
80008364:	6b8010ef          	jal	ra,80009a1c <__umodsi3>
80008368:	00050993          	mv	s3,a0
8000836c:	000a8593          	mv	a1,s5
80008370:	00048513          	mv	a0,s1
80008374:	660010ef          	jal	ra,800099d4 <__udivsi3>
80008378:	01041413          	slli	s0,s0,0x10
8000837c:	00050593          	mv	a1,a0
80008380:	01099993          	slli	s3,s3,0x10
80008384:	000b0513          	mv	a0,s6
80008388:	01045413          	srli	s0,s0,0x10
8000838c:	58c010ef          	jal	ra,80009918 <__mulsi3>
80008390:	0089e433          	or	s0,s3,s0
80008394:	00a47a63          	bgeu	s0,a0,800083a8 <__umoddi3+0x144>
80008398:	01240433          	add	s0,s0,s2
8000839c:	01246663          	bltu	s0,s2,800083a8 <__umoddi3+0x144>
800083a0:	00a47463          	bgeu	s0,a0,800083a8 <__umoddi3+0x144>
800083a4:	01240433          	add	s0,s0,s2
800083a8:	40a40433          	sub	s0,s0,a0
800083ac:	01445533          	srl	a0,s0,s4
800083b0:	00000593          	li	a1,0
800083b4:	02c12083          	lw	ra,44(sp)
800083b8:	02812403          	lw	s0,40(sp)
800083bc:	02412483          	lw	s1,36(sp)
800083c0:	02012903          	lw	s2,32(sp)
800083c4:	01c12983          	lw	s3,28(sp)
800083c8:	01812a03          	lw	s4,24(sp)
800083cc:	01412a83          	lw	s5,20(sp)
800083d0:	01012b03          	lw	s6,16(sp)
800083d4:	00c12b83          	lw	s7,12(sp)
800083d8:	00812c03          	lw	s8,8(sp)
800083dc:	00412c83          	lw	s9,4(sp)
800083e0:	00012d03          	lw	s10,0(sp)
800083e4:	03010113          	addi	sp,sp,48
800083e8:	00008067          	ret
800083ec:	010007b7          	lui	a5,0x1000
800083f0:	01000a13          	li	s4,16
800083f4:	eef660e3          	bltu	a2,a5,800082d4 <__umoddi3+0x70>
800083f8:	01800a13          	li	s4,24
800083fc:	ed9ff06f          	j	800082d4 <__umoddi3+0x70>
80008400:	00061a63          	bnez	a2,80008414 <__umoddi3+0x1b0>
80008404:	00000593          	li	a1,0
80008408:	00100513          	li	a0,1
8000840c:	5c8010ef          	jal	ra,800099d4 <__udivsi3>
80008410:	00050913          	mv	s2,a0
80008414:	000107b7          	lui	a5,0x10
80008418:	0ef97a63          	bgeu	s2,a5,8000850c <__umoddi3+0x2a8>
8000841c:	0ff00793          	li	a5,255
80008420:	0127f463          	bgeu	a5,s2,80008428 <__umoddi3+0x1c4>
80008424:	00800a13          	li	s4,8
80008428:	014957b3          	srl	a5,s2,s4
8000842c:	00fa8ab3          	add	s5,s5,a5
80008430:	000ac703          	lbu	a4,0(s5)
80008434:	02000513          	li	a0,32
80008438:	412984b3          	sub	s1,s3,s2
8000843c:	01470733          	add	a4,a4,s4
80008440:	40e50a33          	sub	s4,a0,a4
80008444:	ec0a00e3          	beqz	s4,80008304 <__umoddi3+0xa0>
80008448:	01491933          	sll	s2,s2,s4
8000844c:	00e9dab3          	srl	s5,s3,a4
80008450:	014995b3          	sll	a1,s3,s4
80008454:	00eb5733          	srl	a4,s6,a4
80008458:	01095493          	srli	s1,s2,0x10
8000845c:	00b76bb3          	or	s7,a4,a1
80008460:	000a8513          	mv	a0,s5
80008464:	00048593          	mv	a1,s1
80008468:	5b4010ef          	jal	ra,80009a1c <__umodsi3>
8000846c:	00050993          	mv	s3,a0
80008470:	00048593          	mv	a1,s1
80008474:	014b1433          	sll	s0,s6,s4
80008478:	000a8513          	mv	a0,s5
8000847c:	01091b13          	slli	s6,s2,0x10
80008480:	554010ef          	jal	ra,800099d4 <__udivsi3>
80008484:	010b5b13          	srli	s6,s6,0x10
80008488:	00050593          	mv	a1,a0
8000848c:	000b0513          	mv	a0,s6
80008490:	488010ef          	jal	ra,80009918 <__mulsi3>
80008494:	01099993          	slli	s3,s3,0x10
80008498:	010bd793          	srli	a5,s7,0x10
8000849c:	00f9e7b3          	or	a5,s3,a5
800084a0:	00a7fa63          	bgeu	a5,a0,800084b4 <__umoddi3+0x250>
800084a4:	012787b3          	add	a5,a5,s2
800084a8:	0127e663          	bltu	a5,s2,800084b4 <__umoddi3+0x250>
800084ac:	00a7f463          	bgeu	a5,a0,800084b4 <__umoddi3+0x250>
800084b0:	012787b3          	add	a5,a5,s2
800084b4:	40a78ab3          	sub	s5,a5,a0
800084b8:	00048593          	mv	a1,s1
800084bc:	000a8513          	mv	a0,s5
800084c0:	55c010ef          	jal	ra,80009a1c <__umodsi3>
800084c4:	00050993          	mv	s3,a0
800084c8:	00048593          	mv	a1,s1
800084cc:	000a8513          	mv	a0,s5
800084d0:	504010ef          	jal	ra,800099d4 <__udivsi3>
800084d4:	00050593          	mv	a1,a0
800084d8:	000b0513          	mv	a0,s6
800084dc:	43c010ef          	jal	ra,80009918 <__mulsi3>
800084e0:	010b9593          	slli	a1,s7,0x10
800084e4:	01099993          	slli	s3,s3,0x10
800084e8:	0105d593          	srli	a1,a1,0x10
800084ec:	00b9e5b3          	or	a1,s3,a1
800084f0:	00a5fa63          	bgeu	a1,a0,80008504 <__umoddi3+0x2a0>
800084f4:	012585b3          	add	a1,a1,s2
800084f8:	0125e663          	bltu	a1,s2,80008504 <__umoddi3+0x2a0>
800084fc:	00a5f463          	bgeu	a1,a0,80008504 <__umoddi3+0x2a0>
80008500:	012585b3          	add	a1,a1,s2
80008504:	40a584b3          	sub	s1,a1,a0
80008508:	dfdff06f          	j	80008304 <__umoddi3+0xa0>
8000850c:	010007b7          	lui	a5,0x1000
80008510:	01000a13          	li	s4,16
80008514:	f0f96ae3          	bltu	s2,a5,80008428 <__umoddi3+0x1c4>
80008518:	01800a13          	li	s4,24
8000851c:	f0dff06f          	j	80008428 <__umoddi3+0x1c4>
80008520:	e8d5eae3          	bltu	a1,a3,800083b4 <__umoddi3+0x150>
80008524:	000107b7          	lui	a5,0x10
80008528:	04f6fc63          	bgeu	a3,a5,80008580 <__umoddi3+0x31c>
8000852c:	0ff00a93          	li	s5,255
80008530:	00dab533          	sltu	a0,s5,a3
80008534:	00351513          	slli	a0,a0,0x3
80008538:	00a6d733          	srl	a4,a3,a0
8000853c:	00002797          	auipc	a5,0x2
80008540:	e5c78793          	addi	a5,a5,-420 # 8000a398 <__clz_tab>
80008544:	00e787b3          	add	a5,a5,a4
80008548:	0007ca83          	lbu	s5,0(a5)
8000854c:	02000593          	li	a1,32
80008550:	00aa8ab3          	add	s5,s5,a0
80008554:	41558a33          	sub	s4,a1,s5
80008558:	020a1e63          	bnez	s4,80008594 <__umoddi3+0x330>
8000855c:	0136e463          	bltu	a3,s3,80008564 <__umoddi3+0x300>
80008560:	00cb6a63          	bltu	s6,a2,80008574 <__umoddi3+0x310>
80008564:	40cb0433          	sub	s0,s6,a2
80008568:	40d986b3          	sub	a3,s3,a3
8000856c:	008b3b33          	sltu	s6,s6,s0
80008570:	416684b3          	sub	s1,a3,s6
80008574:	00040513          	mv	a0,s0
80008578:	00048593          	mv	a1,s1
8000857c:	e39ff06f          	j	800083b4 <__umoddi3+0x150>
80008580:	010007b7          	lui	a5,0x1000
80008584:	01000513          	li	a0,16
80008588:	faf6e8e3          	bltu	a3,a5,80008538 <__umoddi3+0x2d4>
8000858c:	01800513          	li	a0,24
80008590:	fa9ff06f          	j	80008538 <__umoddi3+0x2d4>
80008594:	014696b3          	sll	a3,a3,s4
80008598:	015657b3          	srl	a5,a2,s5
8000859c:	00d7ebb3          	or	s7,a5,a3
800085a0:	0159d433          	srl	s0,s3,s5
800085a4:	014995b3          	sll	a1,s3,s4
800085a8:	015b54b3          	srl	s1,s6,s5
800085ac:	010bdc13          	srli	s8,s7,0x10
800085b0:	00b4e4b3          	or	s1,s1,a1
800085b4:	00040513          	mv	a0,s0
800085b8:	000c0593          	mv	a1,s8
800085bc:	01461d33          	sll	s10,a2,s4
800085c0:	45c010ef          	jal	ra,80009a1c <__umodsi3>
800085c4:	00050993          	mv	s3,a0
800085c8:	000c0593          	mv	a1,s8
800085cc:	00040513          	mv	a0,s0
800085d0:	010b9c93          	slli	s9,s7,0x10
800085d4:	400010ef          	jal	ra,800099d4 <__udivsi3>
800085d8:	010cdc93          	srli	s9,s9,0x10
800085dc:	00050413          	mv	s0,a0
800085e0:	00050593          	mv	a1,a0
800085e4:	000c8513          	mv	a0,s9
800085e8:	330010ef          	jal	ra,80009918 <__mulsi3>
800085ec:	01099993          	slli	s3,s3,0x10
800085f0:	0104d713          	srli	a4,s1,0x10
800085f4:	00e9e733          	or	a4,s3,a4
800085f8:	014b1b33          	sll	s6,s6,s4
800085fc:	00040993          	mv	s3,s0
80008600:	00a77e63          	bgeu	a4,a0,8000861c <__umoddi3+0x3b8>
80008604:	01770733          	add	a4,a4,s7
80008608:	fff40993          	addi	s3,s0,-1
8000860c:	01776863          	bltu	a4,s7,8000861c <__umoddi3+0x3b8>
80008610:	00a77663          	bgeu	a4,a0,8000861c <__umoddi3+0x3b8>
80008614:	ffe40993          	addi	s3,s0,-2
80008618:	01770733          	add	a4,a4,s7
8000861c:	40a70933          	sub	s2,a4,a0
80008620:	000c0593          	mv	a1,s8
80008624:	00090513          	mv	a0,s2
80008628:	3f4010ef          	jal	ra,80009a1c <__umodsi3>
8000862c:	00050413          	mv	s0,a0
80008630:	000c0593          	mv	a1,s8
80008634:	00090513          	mv	a0,s2
80008638:	39c010ef          	jal	ra,800099d4 <__udivsi3>
8000863c:	00050593          	mv	a1,a0
80008640:	00050913          	mv	s2,a0
80008644:	000c8513          	mv	a0,s9
80008648:	2d0010ef          	jal	ra,80009918 <__mulsi3>
8000864c:	01049593          	slli	a1,s1,0x10
80008650:	01041413          	slli	s0,s0,0x10
80008654:	0105d593          	srli	a1,a1,0x10
80008658:	00b465b3          	or	a1,s0,a1
8000865c:	00090793          	mv	a5,s2
80008660:	00a5fe63          	bgeu	a1,a0,8000867c <__umoddi3+0x418>
80008664:	017585b3          	add	a1,a1,s7
80008668:	fff90793          	addi	a5,s2,-1
8000866c:	0175e863          	bltu	a1,s7,8000867c <__umoddi3+0x418>
80008670:	00a5f663          	bgeu	a1,a0,8000867c <__umoddi3+0x418>
80008674:	ffe90793          	addi	a5,s2,-2
80008678:	017585b3          	add	a1,a1,s7
8000867c:	00010e37          	lui	t3,0x10
80008680:	01099993          	slli	s3,s3,0x10
80008684:	00f9e9b3          	or	s3,s3,a5
80008688:	fffe0813          	addi	a6,t3,-1 # ffff <_stack_size+0x7fff>
8000868c:	0109f733          	and	a4,s3,a6
80008690:	010d7833          	and	a6,s10,a6
80008694:	40a584b3          	sub	s1,a1,a0
80008698:	0109d993          	srli	s3,s3,0x10
8000869c:	010d5893          	srli	a7,s10,0x10
800086a0:	00070513          	mv	a0,a4
800086a4:	00080593          	mv	a1,a6
800086a8:	270010ef          	jal	ra,80009918 <__mulsi3>
800086ac:	00050793          	mv	a5,a0
800086b0:	00088593          	mv	a1,a7
800086b4:	00070513          	mv	a0,a4
800086b8:	260010ef          	jal	ra,80009918 <__mulsi3>
800086bc:	00050313          	mv	t1,a0
800086c0:	00080593          	mv	a1,a6
800086c4:	00098513          	mv	a0,s3
800086c8:	250010ef          	jal	ra,80009918 <__mulsi3>
800086cc:	00050813          	mv	a6,a0
800086d0:	00088593          	mv	a1,a7
800086d4:	00098513          	mv	a0,s3
800086d8:	240010ef          	jal	ra,80009918 <__mulsi3>
800086dc:	0107d713          	srli	a4,a5,0x10
800086e0:	01030333          	add	t1,t1,a6
800086e4:	00670733          	add	a4,a4,t1
800086e8:	01077463          	bgeu	a4,a6,800086f0 <__umoddi3+0x48c>
800086ec:	01c50533          	add	a0,a0,t3
800086f0:	000106b7          	lui	a3,0x10
800086f4:	fff68693          	addi	a3,a3,-1 # ffff <_stack_size+0x7fff>
800086f8:	01075593          	srli	a1,a4,0x10
800086fc:	00d77733          	and	a4,a4,a3
80008700:	01071713          	slli	a4,a4,0x10
80008704:	00d7f7b3          	and	a5,a5,a3
80008708:	00a585b3          	add	a1,a1,a0
8000870c:	00f707b3          	add	a5,a4,a5
80008710:	00b4e663          	bltu	s1,a1,8000871c <__umoddi3+0x4b8>
80008714:	00b49e63          	bne	s1,a1,80008730 <__umoddi3+0x4cc>
80008718:	00fb7c63          	bgeu	s6,a5,80008730 <__umoddi3+0x4cc>
8000871c:	41a78633          	sub	a2,a5,s10
80008720:	00c7b7b3          	sltu	a5,a5,a2
80008724:	017787b3          	add	a5,a5,s7
80008728:	40f585b3          	sub	a1,a1,a5
8000872c:	00060793          	mv	a5,a2
80008730:	40fb07b3          	sub	a5,s6,a5
80008734:	00fb3b33          	sltu	s6,s6,a5
80008738:	40b485b3          	sub	a1,s1,a1
8000873c:	416585b3          	sub	a1,a1,s6
80008740:	01559433          	sll	s0,a1,s5
80008744:	0147d7b3          	srl	a5,a5,s4
80008748:	00f46533          	or	a0,s0,a5
8000874c:	0145d5b3          	srl	a1,a1,s4
80008750:	c65ff06f          	j	800083b4 <__umoddi3+0x150>

80008754 <__addsf3>:
80008754:	00800737          	lui	a4,0x800
80008758:	ff010113          	addi	sp,sp,-16
8000875c:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
80008760:	00a777b3          	and	a5,a4,a0
80008764:	00912223          	sw	s1,4(sp)
80008768:	01212023          	sw	s2,0(sp)
8000876c:	01f55493          	srli	s1,a0,0x1f
80008770:	01755913          	srli	s2,a0,0x17
80008774:	0175d513          	srli	a0,a1,0x17
80008778:	00b77733          	and	a4,a4,a1
8000877c:	0ff97913          	andi	s2,s2,255
80008780:	0ff57513          	andi	a0,a0,255
80008784:	00112623          	sw	ra,12(sp)
80008788:	00812423          	sw	s0,8(sp)
8000878c:	01f5d593          	srli	a1,a1,0x1f
80008790:	00379793          	slli	a5,a5,0x3
80008794:	00371713          	slli	a4,a4,0x3
80008798:	40a906b3          	sub	a3,s2,a0
8000879c:	18b49463          	bne	s1,a1,80008924 <__addsf3+0x1d0>
800087a0:	08d05c63          	blez	a3,80008838 <__addsf3+0xe4>
800087a4:	04051c63          	bnez	a0,800087fc <__addsf3+0xa8>
800087a8:	34070663          	beqz	a4,80008af4 <__addsf3+0x3a0>
800087ac:	fff68693          	addi	a3,a3,-1
800087b0:	02069e63          	bnez	a3,800087ec <__addsf3+0x98>
800087b4:	00e787b3          	add	a5,a5,a4
800087b8:	00090513          	mv	a0,s2
800087bc:	00579713          	slli	a4,a5,0x5
800087c0:	10075c63          	bgez	a4,800088d8 <__addsf3+0x184>
800087c4:	00150513          	addi	a0,a0,1
800087c8:	0ff00713          	li	a4,255
800087cc:	32e50e63          	beq	a0,a4,80008b08 <__addsf3+0x3b4>
800087d0:	7e000737          	lui	a4,0x7e000
800087d4:	0017f693          	andi	a3,a5,1
800087d8:	fff70713          	addi	a4,a4,-1 # 7dffffff <_stack_size+0x7dff7fff>
800087dc:	0017d793          	srli	a5,a5,0x1
800087e0:	00e7f7b3          	and	a5,a5,a4
800087e4:	00d7e7b3          	or	a5,a5,a3
800087e8:	0f00006f          	j	800088d8 <__addsf3+0x184>
800087ec:	0ff00613          	li	a2,255
800087f0:	00c91e63          	bne	s2,a2,8000880c <__addsf3+0xb8>
800087f4:	0ff00513          	li	a0,255
800087f8:	0e00006f          	j	800088d8 <__addsf3+0x184>
800087fc:	0ff00613          	li	a2,255
80008800:	fec90ae3          	beq	s2,a2,800087f4 <__addsf3+0xa0>
80008804:	04000637          	lui	a2,0x4000
80008808:	00c76733          	or	a4,a4,a2
8000880c:	01b00613          	li	a2,27
80008810:	00d65663          	bge	a2,a3,8000881c <__addsf3+0xc8>
80008814:	00100713          	li	a4,1
80008818:	f9dff06f          	j	800087b4 <__addsf3+0x60>
8000881c:	02000613          	li	a2,32
80008820:	00d755b3          	srl	a1,a4,a3
80008824:	40d606b3          	sub	a3,a2,a3
80008828:	00d71733          	sll	a4,a4,a3
8000882c:	00e03733          	snez	a4,a4
80008830:	00e5e733          	or	a4,a1,a4
80008834:	f81ff06f          	j	800087b4 <__addsf3+0x60>
80008838:	06068663          	beqz	a3,800088a4 <__addsf3+0x150>
8000883c:	41250633          	sub	a2,a0,s2
80008840:	02091463          	bnez	s2,80008868 <__addsf3+0x114>
80008844:	00078e63          	beqz	a5,80008860 <__addsf3+0x10c>
80008848:	fff60613          	addi	a2,a2,-1 # 3ffffff <_stack_size+0x3ff7fff>
8000884c:	00061663          	bnez	a2,80008858 <__addsf3+0x104>
80008850:	00e787b3          	add	a5,a5,a4
80008854:	f69ff06f          	j	800087bc <__addsf3+0x68>
80008858:	0ff00693          	li	a3,255
8000885c:	00d51e63          	bne	a0,a3,80008878 <__addsf3+0x124>
80008860:	00070793          	mv	a5,a4
80008864:	0740006f          	j	800088d8 <__addsf3+0x184>
80008868:	0ff00693          	li	a3,255
8000886c:	fed50ae3          	beq	a0,a3,80008860 <__addsf3+0x10c>
80008870:	040006b7          	lui	a3,0x4000
80008874:	00d7e7b3          	or	a5,a5,a3
80008878:	01b00693          	li	a3,27
8000887c:	00c6d663          	bge	a3,a2,80008888 <__addsf3+0x134>
80008880:	00100793          	li	a5,1
80008884:	fcdff06f          	j	80008850 <__addsf3+0xfc>
80008888:	02000693          	li	a3,32
8000888c:	40c686b3          	sub	a3,a3,a2
80008890:	00c7d5b3          	srl	a1,a5,a2
80008894:	00d797b3          	sll	a5,a5,a3
80008898:	00f037b3          	snez	a5,a5
8000889c:	00f5e7b3          	or	a5,a1,a5
800088a0:	fb1ff06f          	j	80008850 <__addsf3+0xfc>
800088a4:	00190693          	addi	a3,s2,1
800088a8:	0fe6f513          	andi	a0,a3,254
800088ac:	06051063          	bnez	a0,8000890c <__addsf3+0x1b8>
800088b0:	04091263          	bnez	s2,800088f4 <__addsf3+0x1a0>
800088b4:	fa0786e3          	beqz	a5,80008860 <__addsf3+0x10c>
800088b8:	02070063          	beqz	a4,800088d8 <__addsf3+0x184>
800088bc:	00e787b3          	add	a5,a5,a4
800088c0:	00579713          	slli	a4,a5,0x5
800088c4:	00075a63          	bgez	a4,800088d8 <__addsf3+0x184>
800088c8:	fc000737          	lui	a4,0xfc000
800088cc:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
800088d0:	00e7f7b3          	and	a5,a5,a4
800088d4:	00100513          	li	a0,1
800088d8:	0077f713          	andi	a4,a5,7
800088dc:	22070863          	beqz	a4,80008b0c <__addsf3+0x3b8>
800088e0:	00f7f713          	andi	a4,a5,15
800088e4:	00400693          	li	a3,4
800088e8:	22d70263          	beq	a4,a3,80008b0c <__addsf3+0x3b8>
800088ec:	00478793          	addi	a5,a5,4 # 1000004 <_stack_size+0xff8004>
800088f0:	21c0006f          	j	80008b0c <__addsf3+0x3b8>
800088f4:	20078463          	beqz	a5,80008afc <__addsf3+0x3a8>
800088f8:	ee070ee3          	beqz	a4,800087f4 <__addsf3+0xa0>
800088fc:	00000493          	li	s1,0
80008900:	020007b7          	lui	a5,0x2000
80008904:	0ff00513          	li	a0,255
80008908:	2040006f          	j	80008b0c <__addsf3+0x3b8>
8000890c:	0ff00613          	li	a2,255
80008910:	1ec68a63          	beq	a3,a2,80008b04 <__addsf3+0x3b0>
80008914:	00e787b3          	add	a5,a5,a4
80008918:	0017d793          	srli	a5,a5,0x1
8000891c:	00068513          	mv	a0,a3
80008920:	fb9ff06f          	j	800088d8 <__addsf3+0x184>
80008924:	08d05863          	blez	a3,800089b4 <__addsf3+0x260>
80008928:	04051863          	bnez	a0,80008978 <__addsf3+0x224>
8000892c:	00090513          	mv	a0,s2
80008930:	fa0704e3          	beqz	a4,800088d8 <__addsf3+0x184>
80008934:	fff68693          	addi	a3,a3,-1 # 3ffffff <_stack_size+0x3ff7fff>
80008938:	02069263          	bnez	a3,8000895c <__addsf3+0x208>
8000893c:	40e787b3          	sub	a5,a5,a4
80008940:	00579713          	slli	a4,a5,0x5
80008944:	f8075ae3          	bgez	a4,800088d8 <__addsf3+0x184>
80008948:	04000437          	lui	s0,0x4000
8000894c:	fff40413          	addi	s0,s0,-1 # 3ffffff <_stack_size+0x3ff7fff>
80008950:	0087f433          	and	s0,a5,s0
80008954:	00050913          	mv	s2,a0
80008958:	13c0006f          	j	80008a94 <__addsf3+0x340>
8000895c:	0ff00613          	li	a2,255
80008960:	0ff00513          	li	a0,255
80008964:	f6c90ae3          	beq	s2,a2,800088d8 <__addsf3+0x184>
80008968:	01b00613          	li	a2,27
8000896c:	02d65263          	bge	a2,a3,80008990 <__addsf3+0x23c>
80008970:	00100713          	li	a4,1
80008974:	0340006f          	j	800089a8 <__addsf3+0x254>
80008978:	0ff00613          	li	a2,255
8000897c:	0ff00513          	li	a0,255
80008980:	f4c90ce3          	beq	s2,a2,800088d8 <__addsf3+0x184>
80008984:	04000637          	lui	a2,0x4000
80008988:	00c76733          	or	a4,a4,a2
8000898c:	fddff06f          	j	80008968 <__addsf3+0x214>
80008990:	02000613          	li	a2,32
80008994:	00d755b3          	srl	a1,a4,a3
80008998:	40d606b3          	sub	a3,a2,a3
8000899c:	00d71733          	sll	a4,a4,a3
800089a0:	00e03733          	snez	a4,a4
800089a4:	00e5e733          	or	a4,a1,a4
800089a8:	40e787b3          	sub	a5,a5,a4
800089ac:	00090513          	mv	a0,s2
800089b0:	f91ff06f          	j	80008940 <__addsf3+0x1ec>
800089b4:	06068a63          	beqz	a3,80008a28 <__addsf3+0x2d4>
800089b8:	41250633          	sub	a2,a0,s2
800089bc:	02091863          	bnez	s2,800089ec <__addsf3+0x298>
800089c0:	02078063          	beqz	a5,800089e0 <__addsf3+0x28c>
800089c4:	fff60613          	addi	a2,a2,-1 # 3ffffff <_stack_size+0x3ff7fff>
800089c8:	00061863          	bnez	a2,800089d8 <__addsf3+0x284>
800089cc:	40f707b3          	sub	a5,a4,a5
800089d0:	00058493          	mv	s1,a1
800089d4:	f6dff06f          	j	80008940 <__addsf3+0x1ec>
800089d8:	0ff00693          	li	a3,255
800089dc:	02d51063          	bne	a0,a3,800089fc <__addsf3+0x2a8>
800089e0:	00070793          	mv	a5,a4
800089e4:	00058493          	mv	s1,a1
800089e8:	ef1ff06f          	j	800088d8 <__addsf3+0x184>
800089ec:	0ff00693          	li	a3,255
800089f0:	fed508e3          	beq	a0,a3,800089e0 <__addsf3+0x28c>
800089f4:	040006b7          	lui	a3,0x4000
800089f8:	00d7e7b3          	or	a5,a5,a3
800089fc:	01b00693          	li	a3,27
80008a00:	00c6d663          	bge	a3,a2,80008a0c <__addsf3+0x2b8>
80008a04:	00100793          	li	a5,1
80008a08:	fc5ff06f          	j	800089cc <__addsf3+0x278>
80008a0c:	02000693          	li	a3,32
80008a10:	40c686b3          	sub	a3,a3,a2
80008a14:	00c7d833          	srl	a6,a5,a2
80008a18:	00d797b3          	sll	a5,a5,a3
80008a1c:	00f037b3          	snez	a5,a5
80008a20:	00f867b3          	or	a5,a6,a5
80008a24:	fa9ff06f          	j	800089cc <__addsf3+0x278>
80008a28:	00190513          	addi	a0,s2,1
80008a2c:	0fe57513          	andi	a0,a0,254
80008a30:	04051863          	bnez	a0,80008a80 <__addsf3+0x32c>
80008a34:	02091c63          	bnez	s2,80008a6c <__addsf3+0x318>
80008a38:	00079a63          	bnez	a5,80008a4c <__addsf3+0x2f8>
80008a3c:	fa0712e3          	bnez	a4,800089e0 <__addsf3+0x28c>
80008a40:	00000793          	li	a5,0
80008a44:	00000493          	li	s1,0
80008a48:	0c40006f          	j	80008b0c <__addsf3+0x3b8>
80008a4c:	e80706e3          	beqz	a4,800088d8 <__addsf3+0x184>
80008a50:	40e786b3          	sub	a3,a5,a4
80008a54:	00569613          	slli	a2,a3,0x5
80008a58:	40f707b3          	sub	a5,a4,a5
80008a5c:	f80644e3          	bltz	a2,800089e4 <__addsf3+0x290>
80008a60:	fe0680e3          	beqz	a3,80008a40 <__addsf3+0x2ec>
80008a64:	00068793          	mv	a5,a3
80008a68:	e71ff06f          	j	800088d8 <__addsf3+0x184>
80008a6c:	e80796e3          	bnez	a5,800088f8 <__addsf3+0x1a4>
80008a70:	e80706e3          	beqz	a4,800088fc <__addsf3+0x1a8>
80008a74:	00070793          	mv	a5,a4
80008a78:	00058493          	mv	s1,a1
80008a7c:	d79ff06f          	j	800087f4 <__addsf3+0xa0>
80008a80:	40e78433          	sub	s0,a5,a4
80008a84:	00541693          	slli	a3,s0,0x5
80008a88:	0406d463          	bgez	a3,80008ad0 <__addsf3+0x37c>
80008a8c:	40f70433          	sub	s0,a4,a5
80008a90:	00058493          	mv	s1,a1
80008a94:	00040513          	mv	a0,s0
80008a98:	7e9000ef          	jal	ra,80009a80 <__clzsi2>
80008a9c:	ffb50513          	addi	a0,a0,-5
80008aa0:	00a41433          	sll	s0,s0,a0
80008aa4:	03254e63          	blt	a0,s2,80008ae0 <__addsf3+0x38c>
80008aa8:	41250533          	sub	a0,a0,s2
80008aac:	00150513          	addi	a0,a0,1
80008ab0:	02000713          	li	a4,32
80008ab4:	00a457b3          	srl	a5,s0,a0
80008ab8:	40a70533          	sub	a0,a4,a0
80008abc:	00a41433          	sll	s0,s0,a0
80008ac0:	00803433          	snez	s0,s0
80008ac4:	0087e7b3          	or	a5,a5,s0
80008ac8:	00000513          	li	a0,0
80008acc:	e0dff06f          	j	800088d8 <__addsf3+0x184>
80008ad0:	fc0412e3          	bnez	s0,80008a94 <__addsf3+0x340>
80008ad4:	00000793          	li	a5,0
80008ad8:	00000513          	li	a0,0
80008adc:	f69ff06f          	j	80008a44 <__addsf3+0x2f0>
80008ae0:	fc0007b7          	lui	a5,0xfc000
80008ae4:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0x7bbfffff>
80008ae8:	40a90533          	sub	a0,s2,a0
80008aec:	00f477b3          	and	a5,s0,a5
80008af0:	de9ff06f          	j	800088d8 <__addsf3+0x184>
80008af4:	00090513          	mv	a0,s2
80008af8:	de1ff06f          	j	800088d8 <__addsf3+0x184>
80008afc:	00070793          	mv	a5,a4
80008b00:	cf5ff06f          	j	800087f4 <__addsf3+0xa0>
80008b04:	0ff00513          	li	a0,255
80008b08:	00000793          	li	a5,0
80008b0c:	00579713          	slli	a4,a5,0x5
80008b10:	00075e63          	bgez	a4,80008b2c <__addsf3+0x3d8>
80008b14:	00150513          	addi	a0,a0,1
80008b18:	0ff00713          	li	a4,255
80008b1c:	04e50e63          	beq	a0,a4,80008b78 <__addsf3+0x424>
80008b20:	fc000737          	lui	a4,0xfc000
80008b24:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
80008b28:	00e7f7b3          	and	a5,a5,a4
80008b2c:	0ff00713          	li	a4,255
80008b30:	0037d793          	srli	a5,a5,0x3
80008b34:	00e51863          	bne	a0,a4,80008b44 <__addsf3+0x3f0>
80008b38:	00078663          	beqz	a5,80008b44 <__addsf3+0x3f0>
80008b3c:	004007b7          	lui	a5,0x400
80008b40:	00000493          	li	s1,0
80008b44:	0ff57513          	andi	a0,a0,255
80008b48:	00c12083          	lw	ra,12(sp)
80008b4c:	00812403          	lw	s0,8(sp)
80008b50:	00979793          	slli	a5,a5,0x9
80008b54:	01751713          	slli	a4,a0,0x17
80008b58:	0097d513          	srli	a0,a5,0x9
80008b5c:	01f49493          	slli	s1,s1,0x1f
80008b60:	00e56533          	or	a0,a0,a4
80008b64:	00956533          	or	a0,a0,s1
80008b68:	00012903          	lw	s2,0(sp)
80008b6c:	00412483          	lw	s1,4(sp)
80008b70:	01010113          	addi	sp,sp,16
80008b74:	00008067          	ret
80008b78:	00000793          	li	a5,0
80008b7c:	fb1ff06f          	j	80008b2c <__addsf3+0x3d8>

80008b80 <__divsf3>:
80008b80:	fd010113          	addi	sp,sp,-48
80008b84:	02912223          	sw	s1,36(sp)
80008b88:	01755493          	srli	s1,a0,0x17
80008b8c:	01312e23          	sw	s3,28(sp)
80008b90:	01512a23          	sw	s5,20(sp)
80008b94:	01612823          	sw	s6,16(sp)
80008b98:	00951a93          	slli	s5,a0,0x9
80008b9c:	02112623          	sw	ra,44(sp)
80008ba0:	02812423          	sw	s0,40(sp)
80008ba4:	03212023          	sw	s2,32(sp)
80008ba8:	01412c23          	sw	s4,24(sp)
80008bac:	01712623          	sw	s7,12(sp)
80008bb0:	01812423          	sw	s8,8(sp)
80008bb4:	01912223          	sw	s9,4(sp)
80008bb8:	0ff4f493          	andi	s1,s1,255
80008bbc:	00058b13          	mv	s6,a1
80008bc0:	009ada93          	srli	s5,s5,0x9
80008bc4:	01f55993          	srli	s3,a0,0x1f
80008bc8:	08048663          	beqz	s1,80008c54 <__divsf3+0xd4>
80008bcc:	0ff00793          	li	a5,255
80008bd0:	0af48263          	beq	s1,a5,80008c74 <__divsf3+0xf4>
80008bd4:	003a9a93          	slli	s5,s5,0x3
80008bd8:	040007b7          	lui	a5,0x4000
80008bdc:	00faeab3          	or	s5,s5,a5
80008be0:	f8148493          	addi	s1,s1,-127
80008be4:	00000b93          	li	s7,0
80008be8:	017b5513          	srli	a0,s6,0x17
80008bec:	009b1413          	slli	s0,s6,0x9
80008bf0:	0ff57513          	andi	a0,a0,255
80008bf4:	00945413          	srli	s0,s0,0x9
80008bf8:	01fb5b13          	srli	s6,s6,0x1f
80008bfc:	08050c63          	beqz	a0,80008c94 <__divsf3+0x114>
80008c00:	0ff00793          	li	a5,255
80008c04:	0af50863          	beq	a0,a5,80008cb4 <__divsf3+0x134>
80008c08:	00341413          	slli	s0,s0,0x3
80008c0c:	040007b7          	lui	a5,0x4000
80008c10:	00f46433          	or	s0,s0,a5
80008c14:	f8150513          	addi	a0,a0,-127
80008c18:	00000793          	li	a5,0
80008c1c:	002b9713          	slli	a4,s7,0x2
80008c20:	00f76733          	or	a4,a4,a5
80008c24:	fff70713          	addi	a4,a4,-1
80008c28:	00e00693          	li	a3,14
80008c2c:	0169c933          	xor	s2,s3,s6
80008c30:	40a48a33          	sub	s4,s1,a0
80008c34:	0ae6e063          	bltu	a3,a4,80008cd4 <__divsf3+0x154>
80008c38:	00001697          	auipc	a3,0x1
80008c3c:	6e868693          	addi	a3,a3,1768 # 8000a320 <PIo2+0x2c>
80008c40:	00271713          	slli	a4,a4,0x2
80008c44:	00d70733          	add	a4,a4,a3
80008c48:	00072703          	lw	a4,0(a4)
80008c4c:	00d70733          	add	a4,a4,a3
80008c50:	00070067          	jr	a4
80008c54:	020a8a63          	beqz	s5,80008c88 <__divsf3+0x108>
80008c58:	000a8513          	mv	a0,s5
80008c5c:	625000ef          	jal	ra,80009a80 <__clzsi2>
80008c60:	ffb50793          	addi	a5,a0,-5
80008c64:	f8a00493          	li	s1,-118
80008c68:	00fa9ab3          	sll	s5,s5,a5
80008c6c:	40a484b3          	sub	s1,s1,a0
80008c70:	f75ff06f          	j	80008be4 <__divsf3+0x64>
80008c74:	0ff00493          	li	s1,255
80008c78:	00200b93          	li	s7,2
80008c7c:	f60a86e3          	beqz	s5,80008be8 <__divsf3+0x68>
80008c80:	00300b93          	li	s7,3
80008c84:	f65ff06f          	j	80008be8 <__divsf3+0x68>
80008c88:	00000493          	li	s1,0
80008c8c:	00100b93          	li	s7,1
80008c90:	f59ff06f          	j	80008be8 <__divsf3+0x68>
80008c94:	02040a63          	beqz	s0,80008cc8 <__divsf3+0x148>
80008c98:	00040513          	mv	a0,s0
80008c9c:	5e5000ef          	jal	ra,80009a80 <__clzsi2>
80008ca0:	ffb50793          	addi	a5,a0,-5
80008ca4:	00f41433          	sll	s0,s0,a5
80008ca8:	f8a00793          	li	a5,-118
80008cac:	40a78533          	sub	a0,a5,a0
80008cb0:	f69ff06f          	j	80008c18 <__divsf3+0x98>
80008cb4:	0ff00513          	li	a0,255
80008cb8:	00200793          	li	a5,2
80008cbc:	f60400e3          	beqz	s0,80008c1c <__divsf3+0x9c>
80008cc0:	00300793          	li	a5,3
80008cc4:	f59ff06f          	j	80008c1c <__divsf3+0x9c>
80008cc8:	00000513          	li	a0,0
80008ccc:	00100793          	li	a5,1
80008cd0:	f4dff06f          	j	80008c1c <__divsf3+0x9c>
80008cd4:	00541b13          	slli	s6,s0,0x5
80008cd8:	128af663          	bgeu	s5,s0,80008e04 <__divsf3+0x284>
80008cdc:	fffa0a13          	addi	s4,s4,-1
80008ce0:	00000493          	li	s1,0
80008ce4:	010b5b93          	srli	s7,s6,0x10
80008ce8:	00010437          	lui	s0,0x10
80008cec:	000b8593          	mv	a1,s7
80008cf0:	fff40413          	addi	s0,s0,-1 # ffff <_stack_size+0x7fff>
80008cf4:	000a8513          	mv	a0,s5
80008cf8:	4dd000ef          	jal	ra,800099d4 <__udivsi3>
80008cfc:	008b7433          	and	s0,s6,s0
80008d00:	00050593          	mv	a1,a0
80008d04:	00050c93          	mv	s9,a0
80008d08:	00040513          	mv	a0,s0
80008d0c:	40d000ef          	jal	ra,80009918 <__mulsi3>
80008d10:	00050c13          	mv	s8,a0
80008d14:	000b8593          	mv	a1,s7
80008d18:	000a8513          	mv	a0,s5
80008d1c:	501000ef          	jal	ra,80009a1c <__umodsi3>
80008d20:	01051513          	slli	a0,a0,0x10
80008d24:	0104d493          	srli	s1,s1,0x10
80008d28:	00a4e533          	or	a0,s1,a0
80008d2c:	000c8993          	mv	s3,s9
80008d30:	01857e63          	bgeu	a0,s8,80008d4c <__divsf3+0x1cc>
80008d34:	01650533          	add	a0,a0,s6
80008d38:	fffc8993          	addi	s3,s9,-1
80008d3c:	01656863          	bltu	a0,s6,80008d4c <__divsf3+0x1cc>
80008d40:	01857663          	bgeu	a0,s8,80008d4c <__divsf3+0x1cc>
80008d44:	ffec8993          	addi	s3,s9,-2
80008d48:	01650533          	add	a0,a0,s6
80008d4c:	418504b3          	sub	s1,a0,s8
80008d50:	000b8593          	mv	a1,s7
80008d54:	00048513          	mv	a0,s1
80008d58:	47d000ef          	jal	ra,800099d4 <__udivsi3>
80008d5c:	00050593          	mv	a1,a0
80008d60:	00050c13          	mv	s8,a0
80008d64:	00040513          	mv	a0,s0
80008d68:	3b1000ef          	jal	ra,80009918 <__mulsi3>
80008d6c:	00050a93          	mv	s5,a0
80008d70:	000b8593          	mv	a1,s7
80008d74:	00048513          	mv	a0,s1
80008d78:	4a5000ef          	jal	ra,80009a1c <__umodsi3>
80008d7c:	01051513          	slli	a0,a0,0x10
80008d80:	000c0413          	mv	s0,s8
80008d84:	01557e63          	bgeu	a0,s5,80008da0 <__divsf3+0x220>
80008d88:	01650533          	add	a0,a0,s6
80008d8c:	fffc0413          	addi	s0,s8,-1
80008d90:	01656863          	bltu	a0,s6,80008da0 <__divsf3+0x220>
80008d94:	01557663          	bgeu	a0,s5,80008da0 <__divsf3+0x220>
80008d98:	ffec0413          	addi	s0,s8,-2
80008d9c:	01650533          	add	a0,a0,s6
80008da0:	01099993          	slli	s3,s3,0x10
80008da4:	41550533          	sub	a0,a0,s5
80008da8:	0089e9b3          	or	s3,s3,s0
80008dac:	00a03533          	snez	a0,a0
80008db0:	00a9e433          	or	s0,s3,a0
80008db4:	07fa0713          	addi	a4,s4,127
80008db8:	0ee05663          	blez	a4,80008ea4 <__divsf3+0x324>
80008dbc:	00747793          	andi	a5,s0,7
80008dc0:	00078a63          	beqz	a5,80008dd4 <__divsf3+0x254>
80008dc4:	00f47793          	andi	a5,s0,15
80008dc8:	00400693          	li	a3,4
80008dcc:	00d78463          	beq	a5,a3,80008dd4 <__divsf3+0x254>
80008dd0:	00440413          	addi	s0,s0,4
80008dd4:	00441793          	slli	a5,s0,0x4
80008dd8:	0007da63          	bgez	a5,80008dec <__divsf3+0x26c>
80008ddc:	f80007b7          	lui	a5,0xf8000
80008de0:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_top+0x77bfffff>
80008de4:	00f47433          	and	s0,s0,a5
80008de8:	080a0713          	addi	a4,s4,128
80008dec:	0fe00793          	li	a5,254
80008df0:	00345413          	srli	s0,s0,0x3
80008df4:	04e7d463          	bge	a5,a4,80008e3c <__divsf3+0x2bc>
80008df8:	00000413          	li	s0,0
80008dfc:	0ff00713          	li	a4,255
80008e00:	03c0006f          	j	80008e3c <__divsf3+0x2bc>
80008e04:	01fa9493          	slli	s1,s5,0x1f
80008e08:	001ada93          	srli	s5,s5,0x1
80008e0c:	ed9ff06f          	j	80008ce4 <__divsf3+0x164>
80008e10:	00098913          	mv	s2,s3
80008e14:	000a8413          	mv	s0,s5
80008e18:	000b8793          	mv	a5,s7
80008e1c:	00200713          	li	a4,2
80008e20:	fce78ce3          	beq	a5,a4,80008df8 <__divsf3+0x278>
80008e24:	00300713          	li	a4,3
80008e28:	0ce78863          	beq	a5,a4,80008ef8 <__divsf3+0x378>
80008e2c:	00100713          	li	a4,1
80008e30:	f8e792e3          	bne	a5,a4,80008db4 <__divsf3+0x234>
80008e34:	00000413          	li	s0,0
80008e38:	00000713          	li	a4,0
80008e3c:	00941413          	slli	s0,s0,0x9
80008e40:	0ff77713          	andi	a4,a4,255
80008e44:	01771713          	slli	a4,a4,0x17
80008e48:	00945413          	srli	s0,s0,0x9
80008e4c:	01f91513          	slli	a0,s2,0x1f
80008e50:	00e46433          	or	s0,s0,a4
80008e54:	00a46533          	or	a0,s0,a0
80008e58:	02c12083          	lw	ra,44(sp)
80008e5c:	02812403          	lw	s0,40(sp)
80008e60:	02412483          	lw	s1,36(sp)
80008e64:	02012903          	lw	s2,32(sp)
80008e68:	01c12983          	lw	s3,28(sp)
80008e6c:	01812a03          	lw	s4,24(sp)
80008e70:	01412a83          	lw	s5,20(sp)
80008e74:	01012b03          	lw	s6,16(sp)
80008e78:	00c12b83          	lw	s7,12(sp)
80008e7c:	00812c03          	lw	s8,8(sp)
80008e80:	00412c83          	lw	s9,4(sp)
80008e84:	03010113          	addi	sp,sp,48
80008e88:	00008067          	ret
80008e8c:	000b0913          	mv	s2,s6
80008e90:	f8dff06f          	j	80008e1c <__divsf3+0x29c>
80008e94:	00400437          	lui	s0,0x400
80008e98:	00000913          	li	s2,0
80008e9c:	00300793          	li	a5,3
80008ea0:	f7dff06f          	j	80008e1c <__divsf3+0x29c>
80008ea4:	00100793          	li	a5,1
80008ea8:	40e787b3          	sub	a5,a5,a4
80008eac:	01b00713          	li	a4,27
80008eb0:	f8f742e3          	blt	a4,a5,80008e34 <__divsf3+0x2b4>
80008eb4:	09ea0513          	addi	a0,s4,158
80008eb8:	00f457b3          	srl	a5,s0,a5
80008ebc:	00a41433          	sll	s0,s0,a0
80008ec0:	00803433          	snez	s0,s0
80008ec4:	0087e433          	or	s0,a5,s0
80008ec8:	00747793          	andi	a5,s0,7
80008ecc:	00078a63          	beqz	a5,80008ee0 <__divsf3+0x360>
80008ed0:	00f47793          	andi	a5,s0,15
80008ed4:	00400713          	li	a4,4
80008ed8:	00e78463          	beq	a5,a4,80008ee0 <__divsf3+0x360>
80008edc:	00440413          	addi	s0,s0,4 # 400004 <_stack_size+0x3f8004>
80008ee0:	00541793          	slli	a5,s0,0x5
80008ee4:	00345413          	srli	s0,s0,0x3
80008ee8:	f407d8e3          	bgez	a5,80008e38 <__divsf3+0x2b8>
80008eec:	00000413          	li	s0,0
80008ef0:	00100713          	li	a4,1
80008ef4:	f49ff06f          	j	80008e3c <__divsf3+0x2bc>
80008ef8:	00400437          	lui	s0,0x400
80008efc:	0ff00713          	li	a4,255
80008f00:	00000913          	li	s2,0
80008f04:	f39ff06f          	j	80008e3c <__divsf3+0x2bc>

80008f08 <__eqsf2>:
80008f08:	008007b7          	lui	a5,0x800
80008f0c:	fff78793          	addi	a5,a5,-1 # 7fffff <_stack_size+0x7f7fff>
80008f10:	01755713          	srli	a4,a0,0x17
80008f14:	00a7f833          	and	a6,a5,a0
80008f18:	0175d613          	srli	a2,a1,0x17
80008f1c:	01f55693          	srli	a3,a0,0x1f
80008f20:	0ff77713          	andi	a4,a4,255
80008f24:	0ff00513          	li	a0,255
80008f28:	00b7f7b3          	and	a5,a5,a1
80008f2c:	0ff67613          	andi	a2,a2,255
80008f30:	01f5d593          	srli	a1,a1,0x1f
80008f34:	00a71663          	bne	a4,a0,80008f40 <__eqsf2+0x38>
80008f38:	00100513          	li	a0,1
80008f3c:	02081a63          	bnez	a6,80008f70 <__eqsf2+0x68>
80008f40:	0ff00513          	li	a0,255
80008f44:	00a61663          	bne	a2,a0,80008f50 <__eqsf2+0x48>
80008f48:	00100513          	li	a0,1
80008f4c:	02079263          	bnez	a5,80008f70 <__eqsf2+0x68>
80008f50:	00100513          	li	a0,1
80008f54:	00c71e63          	bne	a4,a2,80008f70 <__eqsf2+0x68>
80008f58:	00f81c63          	bne	a6,a5,80008f70 <__eqsf2+0x68>
80008f5c:	00b68863          	beq	a3,a1,80008f6c <__eqsf2+0x64>
80008f60:	00071863          	bnez	a4,80008f70 <__eqsf2+0x68>
80008f64:	01003533          	snez	a0,a6
80008f68:	00008067          	ret
80008f6c:	00000513          	li	a0,0
80008f70:	00008067          	ret

80008f74 <__gesf2>:
80008f74:	00800737          	lui	a4,0x800
80008f78:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
80008f7c:	01755613          	srli	a2,a0,0x17
80008f80:	00a77833          	and	a6,a4,a0
80008f84:	0175d693          	srli	a3,a1,0x17
80008f88:	01f55793          	srli	a5,a0,0x1f
80008f8c:	0ff67613          	andi	a2,a2,255
80008f90:	0ff00513          	li	a0,255
80008f94:	00b77733          	and	a4,a4,a1
80008f98:	0ff6f693          	andi	a3,a3,255
80008f9c:	01f5d593          	srli	a1,a1,0x1f
80008fa0:	00a61863          	bne	a2,a0,80008fb0 <__gesf2+0x3c>
80008fa4:	ffe00513          	li	a0,-2
80008fa8:	06080c63          	beqz	a6,80009020 <__gesf2+0xac>
80008fac:	00008067          	ret
80008fb0:	00a69663          	bne	a3,a0,80008fbc <__gesf2+0x48>
80008fb4:	ffe00513          	li	a0,-2
80008fb8:	04071c63          	bnez	a4,80009010 <__gesf2+0x9c>
80008fbc:	06061463          	bnez	a2,80009024 <__gesf2+0xb0>
80008fc0:	00069463          	bnez	a3,80008fc8 <__gesf2+0x54>
80008fc4:	04070863          	beqz	a4,80009014 <__gesf2+0xa0>
80008fc8:	00080e63          	beqz	a6,80008fe4 <__gesf2+0x70>
80008fcc:	00b79463          	bne	a5,a1,80008fd4 <__gesf2+0x60>
80008fd0:	02c6d263          	bge	a3,a2,80008ff4 <__gesf2+0x80>
80008fd4:	00100513          	li	a0,1
80008fd8:	02078c63          	beqz	a5,80009010 <__gesf2+0x9c>
80008fdc:	fff00513          	li	a0,-1
80008fe0:	00008067          	ret
80008fe4:	fff00513          	li	a0,-1
80008fe8:	02058463          	beqz	a1,80009010 <__gesf2+0x9c>
80008fec:	00100513          	li	a0,1
80008ff0:	00008067          	ret
80008ff4:	00d65863          	bge	a2,a3,80009004 <__gesf2+0x90>
80008ff8:	fff00513          	li	a0,-1
80008ffc:	fe0798e3          	bnez	a5,80008fec <__gesf2+0x78>
80009000:	0100006f          	j	80009010 <__gesf2+0x9c>
80009004:	fd0768e3          	bltu	a4,a6,80008fd4 <__gesf2+0x60>
80009008:	00000513          	li	a0,0
8000900c:	fee866e3          	bltu	a6,a4,80008ff8 <__gesf2+0x84>
80009010:	00008067          	ret
80009014:	00000513          	li	a0,0
80009018:	fe080ce3          	beqz	a6,80009010 <__gesf2+0x9c>
8000901c:	fb9ff06f          	j	80008fd4 <__gesf2+0x60>
80009020:	f8c68ae3          	beq	a3,a2,80008fb4 <__gesf2+0x40>
80009024:	fa0694e3          	bnez	a3,80008fcc <__gesf2+0x58>
80009028:	fa0706e3          	beqz	a4,80008fd4 <__gesf2+0x60>
8000902c:	fa1ff06f          	j	80008fcc <__gesf2+0x58>

80009030 <__mulsf3>:
80009030:	fe010113          	addi	sp,sp,-32
80009034:	01212823          	sw	s2,16(sp)
80009038:	01755913          	srli	s2,a0,0x17
8000903c:	00912a23          	sw	s1,20(sp)
80009040:	01312623          	sw	s3,12(sp)
80009044:	01512223          	sw	s5,4(sp)
80009048:	00951493          	slli	s1,a0,0x9
8000904c:	00112e23          	sw	ra,28(sp)
80009050:	00812c23          	sw	s0,24(sp)
80009054:	01412423          	sw	s4,8(sp)
80009058:	0ff97913          	andi	s2,s2,255
8000905c:	00058a93          	mv	s5,a1
80009060:	0094d493          	srli	s1,s1,0x9
80009064:	01f55993          	srli	s3,a0,0x1f
80009068:	08090863          	beqz	s2,800090f8 <__mulsf3+0xc8>
8000906c:	0ff00793          	li	a5,255
80009070:	0af90463          	beq	s2,a5,80009118 <__mulsf3+0xe8>
80009074:	00349493          	slli	s1,s1,0x3
80009078:	040007b7          	lui	a5,0x4000
8000907c:	00f4e4b3          	or	s1,s1,a5
80009080:	f8190913          	addi	s2,s2,-127
80009084:	00000a13          	li	s4,0
80009088:	017ad513          	srli	a0,s5,0x17
8000908c:	009a9413          	slli	s0,s5,0x9
80009090:	0ff57513          	andi	a0,a0,255
80009094:	00945413          	srli	s0,s0,0x9
80009098:	01fada93          	srli	s5,s5,0x1f
8000909c:	08050e63          	beqz	a0,80009138 <__mulsf3+0x108>
800090a0:	0ff00793          	li	a5,255
800090a4:	0af50a63          	beq	a0,a5,80009158 <__mulsf3+0x128>
800090a8:	00341413          	slli	s0,s0,0x3
800090ac:	040007b7          	lui	a5,0x4000
800090b0:	00f46433          	or	s0,s0,a5
800090b4:	f8150513          	addi	a0,a0,-127
800090b8:	00000793          	li	a5,0
800090bc:	002a1713          	slli	a4,s4,0x2
800090c0:	00f76733          	or	a4,a4,a5
800090c4:	00a90933          	add	s2,s2,a0
800090c8:	fff70713          	addi	a4,a4,-1
800090cc:	00e00693          	li	a3,14
800090d0:	0159c833          	xor	a6,s3,s5
800090d4:	00190893          	addi	a7,s2,1
800090d8:	0ae6e063          	bltu	a3,a4,80009178 <__mulsf3+0x148>
800090dc:	00001697          	auipc	a3,0x1
800090e0:	28068693          	addi	a3,a3,640 # 8000a35c <PIo2+0x68>
800090e4:	00271713          	slli	a4,a4,0x2
800090e8:	00d70733          	add	a4,a4,a3
800090ec:	00072703          	lw	a4,0(a4)
800090f0:	00d70733          	add	a4,a4,a3
800090f4:	00070067          	jr	a4
800090f8:	02048a63          	beqz	s1,8000912c <__mulsf3+0xfc>
800090fc:	00048513          	mv	a0,s1
80009100:	181000ef          	jal	ra,80009a80 <__clzsi2>
80009104:	ffb50793          	addi	a5,a0,-5
80009108:	f8a00913          	li	s2,-118
8000910c:	00f494b3          	sll	s1,s1,a5
80009110:	40a90933          	sub	s2,s2,a0
80009114:	f71ff06f          	j	80009084 <__mulsf3+0x54>
80009118:	0ff00913          	li	s2,255
8000911c:	00200a13          	li	s4,2
80009120:	f60484e3          	beqz	s1,80009088 <__mulsf3+0x58>
80009124:	00300a13          	li	s4,3
80009128:	f61ff06f          	j	80009088 <__mulsf3+0x58>
8000912c:	00000913          	li	s2,0
80009130:	00100a13          	li	s4,1
80009134:	f55ff06f          	j	80009088 <__mulsf3+0x58>
80009138:	02040a63          	beqz	s0,8000916c <__mulsf3+0x13c>
8000913c:	00040513          	mv	a0,s0
80009140:	141000ef          	jal	ra,80009a80 <__clzsi2>
80009144:	ffb50793          	addi	a5,a0,-5
80009148:	00f41433          	sll	s0,s0,a5
8000914c:	f8a00793          	li	a5,-118
80009150:	40a78533          	sub	a0,a5,a0
80009154:	f65ff06f          	j	800090b8 <__mulsf3+0x88>
80009158:	0ff00513          	li	a0,255
8000915c:	00200793          	li	a5,2
80009160:	f4040ee3          	beqz	s0,800090bc <__mulsf3+0x8c>
80009164:	00300793          	li	a5,3
80009168:	f55ff06f          	j	800090bc <__mulsf3+0x8c>
8000916c:	00000513          	li	a0,0
80009170:	00100793          	li	a5,1
80009174:	f49ff06f          	j	800090bc <__mulsf3+0x8c>
80009178:	00010eb7          	lui	t4,0x10
8000917c:	fffe8e13          	addi	t3,t4,-1 # ffff <_stack_size+0x7fff>
80009180:	0104df93          	srli	t6,s1,0x10
80009184:	01045793          	srli	a5,s0,0x10
80009188:	01c4f4b3          	and	s1,s1,t3
8000918c:	01c47433          	and	s0,s0,t3
80009190:	00048513          	mv	a0,s1
80009194:	00040593          	mv	a1,s0
80009198:	780000ef          	jal	ra,80009918 <__mulsi3>
8000919c:	00050313          	mv	t1,a0
800091a0:	00078593          	mv	a1,a5
800091a4:	00048513          	mv	a0,s1
800091a8:	770000ef          	jal	ra,80009918 <__mulsi3>
800091ac:	00050713          	mv	a4,a0
800091b0:	00040593          	mv	a1,s0
800091b4:	000f8513          	mv	a0,t6
800091b8:	760000ef          	jal	ra,80009918 <__mulsi3>
800091bc:	00050f13          	mv	t5,a0
800091c0:	00078593          	mv	a1,a5
800091c4:	000f8513          	mv	a0,t6
800091c8:	750000ef          	jal	ra,80009918 <__mulsi3>
800091cc:	01035793          	srli	a5,t1,0x10
800091d0:	01e70733          	add	a4,a4,t5
800091d4:	00e787b3          	add	a5,a5,a4
800091d8:	01e7f463          	bgeu	a5,t5,800091e0 <__mulsf3+0x1b0>
800091dc:	01d50533          	add	a0,a0,t4
800091e0:	01c7f733          	and	a4,a5,t3
800091e4:	01071713          	slli	a4,a4,0x10
800091e8:	01c37333          	and	t1,t1,t3
800091ec:	00670733          	add	a4,a4,t1
800091f0:	00671413          	slli	s0,a4,0x6
800091f4:	0107d793          	srli	a5,a5,0x10
800091f8:	00803433          	snez	s0,s0
800091fc:	01a75713          	srli	a4,a4,0x1a
80009200:	00a787b3          	add	a5,a5,a0
80009204:	00679793          	slli	a5,a5,0x6
80009208:	00e46733          	or	a4,s0,a4
8000920c:	00e7e433          	or	s0,a5,a4
80009210:	00441793          	slli	a5,s0,0x4
80009214:	0807dc63          	bgez	a5,800092ac <__mulsf3+0x27c>
80009218:	00145793          	srli	a5,s0,0x1
8000921c:	00147413          	andi	s0,s0,1
80009220:	0087e433          	or	s0,a5,s0
80009224:	07f88713          	addi	a4,a7,127
80009228:	08e05663          	blez	a4,800092b4 <__mulsf3+0x284>
8000922c:	00747793          	andi	a5,s0,7
80009230:	00078a63          	beqz	a5,80009244 <__mulsf3+0x214>
80009234:	00f47793          	andi	a5,s0,15
80009238:	00400693          	li	a3,4
8000923c:	00d78463          	beq	a5,a3,80009244 <__mulsf3+0x214>
80009240:	00440413          	addi	s0,s0,4 # 400004 <_stack_size+0x3f8004>
80009244:	00441793          	slli	a5,s0,0x4
80009248:	0007da63          	bgez	a5,8000925c <__mulsf3+0x22c>
8000924c:	f80007b7          	lui	a5,0xf8000
80009250:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_top+0x77bfffff>
80009254:	00f47433          	and	s0,s0,a5
80009258:	08088713          	addi	a4,a7,128
8000925c:	0fe00793          	li	a5,254
80009260:	00345413          	srli	s0,s0,0x3
80009264:	0ae7d863          	bge	a5,a4,80009314 <__mulsf3+0x2e4>
80009268:	00000413          	li	s0,0
8000926c:	0ff00713          	li	a4,255
80009270:	0a40006f          	j	80009314 <__mulsf3+0x2e4>
80009274:	00098813          	mv	a6,s3
80009278:	00048413          	mv	s0,s1
8000927c:	000a0793          	mv	a5,s4
80009280:	00200713          	li	a4,2
80009284:	fee782e3          	beq	a5,a4,80009268 <__mulsf3+0x238>
80009288:	00300713          	li	a4,3
8000928c:	06e78e63          	beq	a5,a4,80009308 <__mulsf3+0x2d8>
80009290:	00100713          	li	a4,1
80009294:	f8e798e3          	bne	a5,a4,80009224 <__mulsf3+0x1f4>
80009298:	00000413          	li	s0,0
8000929c:	00000713          	li	a4,0
800092a0:	0740006f          	j	80009314 <__mulsf3+0x2e4>
800092a4:	000a8813          	mv	a6,s5
800092a8:	fd9ff06f          	j	80009280 <__mulsf3+0x250>
800092ac:	00090893          	mv	a7,s2
800092b0:	f75ff06f          	j	80009224 <__mulsf3+0x1f4>
800092b4:	00100793          	li	a5,1
800092b8:	40e787b3          	sub	a5,a5,a4
800092bc:	01b00713          	li	a4,27
800092c0:	fcf74ce3          	blt	a4,a5,80009298 <__mulsf3+0x268>
800092c4:	09e88893          	addi	a7,a7,158
800092c8:	00f457b3          	srl	a5,s0,a5
800092cc:	01141433          	sll	s0,s0,a7
800092d0:	00803433          	snez	s0,s0
800092d4:	0087e433          	or	s0,a5,s0
800092d8:	00747793          	andi	a5,s0,7
800092dc:	00078a63          	beqz	a5,800092f0 <__mulsf3+0x2c0>
800092e0:	00f47793          	andi	a5,s0,15
800092e4:	00400713          	li	a4,4
800092e8:	00e78463          	beq	a5,a4,800092f0 <__mulsf3+0x2c0>
800092ec:	00440413          	addi	s0,s0,4
800092f0:	00541793          	slli	a5,s0,0x5
800092f4:	00345413          	srli	s0,s0,0x3
800092f8:	fa07d2e3          	bgez	a5,8000929c <__mulsf3+0x26c>
800092fc:	00000413          	li	s0,0
80009300:	00100713          	li	a4,1
80009304:	0100006f          	j	80009314 <__mulsf3+0x2e4>
80009308:	00400437          	lui	s0,0x400
8000930c:	0ff00713          	li	a4,255
80009310:	00000813          	li	a6,0
80009314:	00941413          	slli	s0,s0,0x9
80009318:	0ff77713          	andi	a4,a4,255
8000931c:	01771713          	slli	a4,a4,0x17
80009320:	00945413          	srli	s0,s0,0x9
80009324:	00e46433          	or	s0,s0,a4
80009328:	01f81513          	slli	a0,a6,0x1f
8000932c:	00a46533          	or	a0,s0,a0
80009330:	01c12083          	lw	ra,28(sp)
80009334:	01812403          	lw	s0,24(sp)
80009338:	01412483          	lw	s1,20(sp)
8000933c:	01012903          	lw	s2,16(sp)
80009340:	00c12983          	lw	s3,12(sp)
80009344:	00812a03          	lw	s4,8(sp)
80009348:	00412a83          	lw	s5,4(sp)
8000934c:	02010113          	addi	sp,sp,32
80009350:	00008067          	ret

80009354 <__subsf3>:
80009354:	00800737          	lui	a4,0x800
80009358:	ff010113          	addi	sp,sp,-16
8000935c:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
80009360:	01755693          	srli	a3,a0,0x17
80009364:	0175d813          	srli	a6,a1,0x17
80009368:	00a777b3          	and	a5,a4,a0
8000936c:	00912223          	sw	s1,4(sp)
80009370:	00b77733          	and	a4,a4,a1
80009374:	01212023          	sw	s2,0(sp)
80009378:	0ff6f693          	andi	a3,a3,255
8000937c:	0ff87813          	andi	a6,a6,255
80009380:	00112623          	sw	ra,12(sp)
80009384:	00812423          	sw	s0,8(sp)
80009388:	0ff00613          	li	a2,255
8000938c:	01f55493          	srli	s1,a0,0x1f
80009390:	00068913          	mv	s2,a3
80009394:	00379793          	slli	a5,a5,0x3
80009398:	00080513          	mv	a0,a6
8000939c:	01f5d593          	srli	a1,a1,0x1f
800093a0:	00371713          	slli	a4,a4,0x3
800093a4:	00c81463          	bne	a6,a2,800093ac <__subsf3+0x58>
800093a8:	00071463          	bnez	a4,800093b0 <__subsf3+0x5c>
800093ac:	0015c593          	xori	a1,a1,1
800093b0:	41068633          	sub	a2,a3,a6
800093b4:	16959e63          	bne	a1,s1,80009530 <__subsf3+0x1dc>
800093b8:	08c05c63          	blez	a2,80009450 <__subsf3+0xfc>
800093bc:	04081c63          	bnez	a6,80009414 <__subsf3+0xc0>
800093c0:	34070663          	beqz	a4,8000970c <__subsf3+0x3b8>
800093c4:	fff60613          	addi	a2,a2,-1
800093c8:	02061e63          	bnez	a2,80009404 <__subsf3+0xb0>
800093cc:	00e787b3          	add	a5,a5,a4
800093d0:	00068513          	mv	a0,a3
800093d4:	00579713          	slli	a4,a5,0x5
800093d8:	10075c63          	bgez	a4,800094f0 <__subsf3+0x19c>
800093dc:	00150513          	addi	a0,a0,1
800093e0:	0ff00713          	li	a4,255
800093e4:	32e50e63          	beq	a0,a4,80009720 <__subsf3+0x3cc>
800093e8:	7e000737          	lui	a4,0x7e000
800093ec:	0017f693          	andi	a3,a5,1
800093f0:	fff70713          	addi	a4,a4,-1 # 7dffffff <_stack_size+0x7dff7fff>
800093f4:	0017d793          	srli	a5,a5,0x1
800093f8:	00e7f7b3          	and	a5,a5,a4
800093fc:	00d7e7b3          	or	a5,a5,a3
80009400:	0f00006f          	j	800094f0 <__subsf3+0x19c>
80009404:	0ff00593          	li	a1,255
80009408:	00b69e63          	bne	a3,a1,80009424 <__subsf3+0xd0>
8000940c:	0ff00513          	li	a0,255
80009410:	0e00006f          	j	800094f0 <__subsf3+0x19c>
80009414:	0ff00593          	li	a1,255
80009418:	feb68ae3          	beq	a3,a1,8000940c <__subsf3+0xb8>
8000941c:	040005b7          	lui	a1,0x4000
80009420:	00b76733          	or	a4,a4,a1
80009424:	01b00593          	li	a1,27
80009428:	00c5d663          	bge	a1,a2,80009434 <__subsf3+0xe0>
8000942c:	00100713          	li	a4,1
80009430:	f9dff06f          	j	800093cc <__subsf3+0x78>
80009434:	02000593          	li	a1,32
80009438:	00c75533          	srl	a0,a4,a2
8000943c:	40c58633          	sub	a2,a1,a2
80009440:	00c71733          	sll	a4,a4,a2
80009444:	00e03733          	snez	a4,a4
80009448:	00e56733          	or	a4,a0,a4
8000944c:	f81ff06f          	j	800093cc <__subsf3+0x78>
80009450:	06060663          	beqz	a2,800094bc <__subsf3+0x168>
80009454:	40d80633          	sub	a2,a6,a3
80009458:	02069463          	bnez	a3,80009480 <__subsf3+0x12c>
8000945c:	2a078c63          	beqz	a5,80009714 <__subsf3+0x3c0>
80009460:	fff60613          	addi	a2,a2,-1
80009464:	00061663          	bnez	a2,80009470 <__subsf3+0x11c>
80009468:	00e787b3          	add	a5,a5,a4
8000946c:	f69ff06f          	j	800093d4 <__subsf3+0x80>
80009470:	0ff00693          	li	a3,255
80009474:	00d81e63          	bne	a6,a3,80009490 <__subsf3+0x13c>
80009478:	00070793          	mv	a5,a4
8000947c:	f91ff06f          	j	8000940c <__subsf3+0xb8>
80009480:	0ff00693          	li	a3,255
80009484:	fed80ae3          	beq	a6,a3,80009478 <__subsf3+0x124>
80009488:	040006b7          	lui	a3,0x4000
8000948c:	00d7e7b3          	or	a5,a5,a3
80009490:	01b00693          	li	a3,27
80009494:	00c6d663          	bge	a3,a2,800094a0 <__subsf3+0x14c>
80009498:	00100793          	li	a5,1
8000949c:	fcdff06f          	j	80009468 <__subsf3+0x114>
800094a0:	02000693          	li	a3,32
800094a4:	40c686b3          	sub	a3,a3,a2
800094a8:	00c7d5b3          	srl	a1,a5,a2
800094ac:	00d797b3          	sll	a5,a5,a3
800094b0:	00f037b3          	snez	a5,a5
800094b4:	00f5e7b3          	or	a5,a1,a5
800094b8:	fb1ff06f          	j	80009468 <__subsf3+0x114>
800094bc:	00168613          	addi	a2,a3,1 # 4000001 <_stack_size+0x3ff8001>
800094c0:	0fe67513          	andi	a0,a2,254
800094c4:	04051a63          	bnez	a0,80009518 <__subsf3+0x1c4>
800094c8:	04069263          	bnez	a3,8000950c <__subsf3+0x1b8>
800094cc:	24078463          	beqz	a5,80009714 <__subsf3+0x3c0>
800094d0:	02070063          	beqz	a4,800094f0 <__subsf3+0x19c>
800094d4:	00e787b3          	add	a5,a5,a4
800094d8:	00579713          	slli	a4,a5,0x5
800094dc:	00075a63          	bgez	a4,800094f0 <__subsf3+0x19c>
800094e0:	fc000737          	lui	a4,0xfc000
800094e4:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
800094e8:	00e7f7b3          	and	a5,a5,a4
800094ec:	00100513          	li	a0,1
800094f0:	0077f713          	andi	a4,a5,7
800094f4:	22070863          	beqz	a4,80009724 <__subsf3+0x3d0>
800094f8:	00f7f713          	andi	a4,a5,15
800094fc:	00400693          	li	a3,4
80009500:	22d70263          	beq	a4,a3,80009724 <__subsf3+0x3d0>
80009504:	00478793          	addi	a5,a5,4
80009508:	21c0006f          	j	80009724 <__subsf3+0x3d0>
8000950c:	f60786e3          	beqz	a5,80009478 <__subsf3+0x124>
80009510:	ee070ee3          	beqz	a4,8000940c <__subsf3+0xb8>
80009514:	1740006f          	j	80009688 <__subsf3+0x334>
80009518:	0ff00693          	li	a3,255
8000951c:	20d60063          	beq	a2,a3,8000971c <__subsf3+0x3c8>
80009520:	00e787b3          	add	a5,a5,a4
80009524:	0017d793          	srli	a5,a5,0x1
80009528:	00060513          	mv	a0,a2
8000952c:	fc5ff06f          	j	800094f0 <__subsf3+0x19c>
80009530:	08c05863          	blez	a2,800095c0 <__subsf3+0x26c>
80009534:	04081863          	bnez	a6,80009584 <__subsf3+0x230>
80009538:	00068513          	mv	a0,a3
8000953c:	fa070ae3          	beqz	a4,800094f0 <__subsf3+0x19c>
80009540:	fff60613          	addi	a2,a2,-1
80009544:	02061263          	bnez	a2,80009568 <__subsf3+0x214>
80009548:	40e787b3          	sub	a5,a5,a4
8000954c:	00579713          	slli	a4,a5,0x5
80009550:	fa0750e3          	bgez	a4,800094f0 <__subsf3+0x19c>
80009554:	04000437          	lui	s0,0x4000
80009558:	fff40413          	addi	s0,s0,-1 # 3ffffff <_stack_size+0x3ff7fff>
8000955c:	0087f433          	and	s0,a5,s0
80009560:	00050913          	mv	s2,a0
80009564:	1480006f          	j	800096ac <__subsf3+0x358>
80009568:	0ff00593          	li	a1,255
8000956c:	0ff00513          	li	a0,255
80009570:	f8b680e3          	beq	a3,a1,800094f0 <__subsf3+0x19c>
80009574:	01b00593          	li	a1,27
80009578:	02c5d263          	bge	a1,a2,8000959c <__subsf3+0x248>
8000957c:	00100713          	li	a4,1
80009580:	0340006f          	j	800095b4 <__subsf3+0x260>
80009584:	0ff00593          	li	a1,255
80009588:	0ff00513          	li	a0,255
8000958c:	f6b682e3          	beq	a3,a1,800094f0 <__subsf3+0x19c>
80009590:	040005b7          	lui	a1,0x4000
80009594:	00b76733          	or	a4,a4,a1
80009598:	fddff06f          	j	80009574 <__subsf3+0x220>
8000959c:	02000593          	li	a1,32
800095a0:	00c75533          	srl	a0,a4,a2
800095a4:	40c58633          	sub	a2,a1,a2
800095a8:	00c71733          	sll	a4,a4,a2
800095ac:	00e03733          	snez	a4,a4
800095b0:	00e56733          	or	a4,a0,a4
800095b4:	40e787b3          	sub	a5,a5,a4
800095b8:	00068513          	mv	a0,a3
800095bc:	f91ff06f          	j	8000954c <__subsf3+0x1f8>
800095c0:	06060a63          	beqz	a2,80009634 <__subsf3+0x2e0>
800095c4:	40d80633          	sub	a2,a6,a3
800095c8:	02069863          	bnez	a3,800095f8 <__subsf3+0x2a4>
800095cc:	08078063          	beqz	a5,8000964c <__subsf3+0x2f8>
800095d0:	fff60613          	addi	a2,a2,-1
800095d4:	00061863          	bnez	a2,800095e4 <__subsf3+0x290>
800095d8:	40f707b3          	sub	a5,a4,a5
800095dc:	00058493          	mv	s1,a1
800095e0:	f6dff06f          	j	8000954c <__subsf3+0x1f8>
800095e4:	0ff00693          	li	a3,255
800095e8:	02d81063          	bne	a6,a3,80009608 <__subsf3+0x2b4>
800095ec:	00070793          	mv	a5,a4
800095f0:	00058493          	mv	s1,a1
800095f4:	e19ff06f          	j	8000940c <__subsf3+0xb8>
800095f8:	0ff00693          	li	a3,255
800095fc:	fed808e3          	beq	a6,a3,800095ec <__subsf3+0x298>
80009600:	040006b7          	lui	a3,0x4000
80009604:	00d7e7b3          	or	a5,a5,a3
80009608:	01b00693          	li	a3,27
8000960c:	00c6d663          	bge	a3,a2,80009618 <__subsf3+0x2c4>
80009610:	00100793          	li	a5,1
80009614:	fc5ff06f          	j	800095d8 <__subsf3+0x284>
80009618:	02000693          	li	a3,32
8000961c:	40c686b3          	sub	a3,a3,a2
80009620:	00c7d833          	srl	a6,a5,a2
80009624:	00d797b3          	sll	a5,a5,a3
80009628:	00f037b3          	snez	a5,a5
8000962c:	00f867b3          	or	a5,a6,a5
80009630:	fa9ff06f          	j	800095d8 <__subsf3+0x284>
80009634:	00168513          	addi	a0,a3,1 # 4000001 <_stack_size+0x3ff8001>
80009638:	0fe57513          	andi	a0,a0,254
8000963c:	04051e63          	bnez	a0,80009698 <__subsf3+0x344>
80009640:	04069063          	bnez	a3,80009680 <__subsf3+0x32c>
80009644:	00079863          	bnez	a5,80009654 <__subsf3+0x300>
80009648:	02070663          	beqz	a4,80009674 <__subsf3+0x320>
8000964c:	00070793          	mv	a5,a4
80009650:	0180006f          	j	80009668 <__subsf3+0x314>
80009654:	e8070ee3          	beqz	a4,800094f0 <__subsf3+0x19c>
80009658:	40e786b3          	sub	a3,a5,a4
8000965c:	00569613          	slli	a2,a3,0x5
80009660:	00065863          	bgez	a2,80009670 <__subsf3+0x31c>
80009664:	40f707b3          	sub	a5,a4,a5
80009668:	00058493          	mv	s1,a1
8000966c:	e85ff06f          	j	800094f0 <__subsf3+0x19c>
80009670:	12069063          	bnez	a3,80009790 <__subsf3+0x43c>
80009674:	00000793          	li	a5,0
80009678:	00000493          	li	s1,0
8000967c:	0a80006f          	j	80009724 <__subsf3+0x3d0>
80009680:	e80798e3          	bnez	a5,80009510 <__subsf3+0x1bc>
80009684:	f60714e3          	bnez	a4,800095ec <__subsf3+0x298>
80009688:	00000493          	li	s1,0
8000968c:	020007b7          	lui	a5,0x2000
80009690:	0ff00513          	li	a0,255
80009694:	0900006f          	j	80009724 <__subsf3+0x3d0>
80009698:	40e78433          	sub	s0,a5,a4
8000969c:	00541693          	slli	a3,s0,0x5
800096a0:	0406d463          	bgez	a3,800096e8 <__subsf3+0x394>
800096a4:	40f70433          	sub	s0,a4,a5
800096a8:	00058493          	mv	s1,a1
800096ac:	00040513          	mv	a0,s0
800096b0:	3d0000ef          	jal	ra,80009a80 <__clzsi2>
800096b4:	ffb50513          	addi	a0,a0,-5
800096b8:	00a41433          	sll	s0,s0,a0
800096bc:	03254e63          	blt	a0,s2,800096f8 <__subsf3+0x3a4>
800096c0:	41250533          	sub	a0,a0,s2
800096c4:	00150513          	addi	a0,a0,1
800096c8:	02000713          	li	a4,32
800096cc:	00a457b3          	srl	a5,s0,a0
800096d0:	40a70533          	sub	a0,a4,a0
800096d4:	00a41433          	sll	s0,s0,a0
800096d8:	00803433          	snez	s0,s0
800096dc:	0087e7b3          	or	a5,a5,s0
800096e0:	00000513          	li	a0,0
800096e4:	e0dff06f          	j	800094f0 <__subsf3+0x19c>
800096e8:	fc0412e3          	bnez	s0,800096ac <__subsf3+0x358>
800096ec:	00000793          	li	a5,0
800096f0:	00000513          	li	a0,0
800096f4:	f85ff06f          	j	80009678 <__subsf3+0x324>
800096f8:	fc0007b7          	lui	a5,0xfc000
800096fc:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0x7bbfffff>
80009700:	40a90533          	sub	a0,s2,a0
80009704:	00f477b3          	and	a5,s0,a5
80009708:	de9ff06f          	j	800094f0 <__subsf3+0x19c>
8000970c:	00068513          	mv	a0,a3
80009710:	de1ff06f          	j	800094f0 <__subsf3+0x19c>
80009714:	00070793          	mv	a5,a4
80009718:	dd9ff06f          	j	800094f0 <__subsf3+0x19c>
8000971c:	0ff00513          	li	a0,255
80009720:	00000793          	li	a5,0
80009724:	00579713          	slli	a4,a5,0x5
80009728:	00075e63          	bgez	a4,80009744 <__subsf3+0x3f0>
8000972c:	00150513          	addi	a0,a0,1
80009730:	0ff00713          	li	a4,255
80009734:	06e50263          	beq	a0,a4,80009798 <__subsf3+0x444>
80009738:	fc000737          	lui	a4,0xfc000
8000973c:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
80009740:	00e7f7b3          	and	a5,a5,a4
80009744:	0ff00713          	li	a4,255
80009748:	0037d793          	srli	a5,a5,0x3
8000974c:	00e51863          	bne	a0,a4,8000975c <__subsf3+0x408>
80009750:	00078663          	beqz	a5,8000975c <__subsf3+0x408>
80009754:	004007b7          	lui	a5,0x400
80009758:	00000493          	li	s1,0
8000975c:	0ff57513          	andi	a0,a0,255
80009760:	00c12083          	lw	ra,12(sp)
80009764:	00812403          	lw	s0,8(sp)
80009768:	00979793          	slli	a5,a5,0x9
8000976c:	01751713          	slli	a4,a0,0x17
80009770:	0097d513          	srli	a0,a5,0x9
80009774:	01f49493          	slli	s1,s1,0x1f
80009778:	00e56533          	or	a0,a0,a4
8000977c:	00956533          	or	a0,a0,s1
80009780:	00012903          	lw	s2,0(sp)
80009784:	00412483          	lw	s1,4(sp)
80009788:	01010113          	addi	sp,sp,16
8000978c:	00008067          	ret
80009790:	00068793          	mv	a5,a3
80009794:	d5dff06f          	j	800094f0 <__subsf3+0x19c>
80009798:	00000793          	li	a5,0
8000979c:	fa9ff06f          	j	80009744 <__subsf3+0x3f0>

800097a0 <__fixsfsi>:
800097a0:	00800637          	lui	a2,0x800
800097a4:	01755713          	srli	a4,a0,0x17
800097a8:	fff60793          	addi	a5,a2,-1 # 7fffff <_stack_size+0x7f7fff>
800097ac:	0ff77713          	andi	a4,a4,255
800097b0:	07e00593          	li	a1,126
800097b4:	00a7f7b3          	and	a5,a5,a0
800097b8:	01f55693          	srli	a3,a0,0x1f
800097bc:	04e5f663          	bgeu	a1,a4,80009808 <__fixsfsi+0x68>
800097c0:	09d00593          	li	a1,157
800097c4:	00e5fa63          	bgeu	a1,a4,800097d8 <__fixsfsi+0x38>
800097c8:	80000537          	lui	a0,0x80000
800097cc:	fff54513          	not	a0,a0
800097d0:	00a68533          	add	a0,a3,a0
800097d4:	00008067          	ret
800097d8:	00c7e533          	or	a0,a5,a2
800097dc:	09500793          	li	a5,149
800097e0:	00e7dc63          	bge	a5,a4,800097f8 <__fixsfsi+0x58>
800097e4:	f6a70713          	addi	a4,a4,-150
800097e8:	00e51533          	sll	a0,a0,a4
800097ec:	02068063          	beqz	a3,8000980c <__fixsfsi+0x6c>
800097f0:	40a00533          	neg	a0,a0
800097f4:	00008067          	ret
800097f8:	09600793          	li	a5,150
800097fc:	40e78733          	sub	a4,a5,a4
80009800:	00e55533          	srl	a0,a0,a4
80009804:	fe9ff06f          	j	800097ec <__fixsfsi+0x4c>
80009808:	00000513          	li	a0,0
8000980c:	00008067          	ret

80009810 <__floatsisf>:
80009810:	ff010113          	addi	sp,sp,-16
80009814:	00112623          	sw	ra,12(sp)
80009818:	00812423          	sw	s0,8(sp)
8000981c:	00912223          	sw	s1,4(sp)
80009820:	0e050463          	beqz	a0,80009908 <__floatsisf+0xf8>
80009824:	41f55793          	srai	a5,a0,0x1f
80009828:	00a7c433          	xor	s0,a5,a0
8000982c:	40f40433          	sub	s0,s0,a5
80009830:	01f55493          	srli	s1,a0,0x1f
80009834:	00040513          	mv	a0,s0
80009838:	248000ef          	jal	ra,80009a80 <__clzsi2>
8000983c:	09e00793          	li	a5,158
80009840:	40a787b3          	sub	a5,a5,a0
80009844:	09600713          	li	a4,150
80009848:	04f74263          	blt	a4,a5,8000988c <__floatsisf+0x7c>
8000984c:	00800713          	li	a4,8
80009850:	00a75663          	bge	a4,a0,8000985c <__floatsisf+0x4c>
80009854:	ff850513          	addi	a0,a0,-8 # 7ffffff8 <_stack_top+0xffbffff8>
80009858:	00a41433          	sll	s0,s0,a0
8000985c:	00941413          	slli	s0,s0,0x9
80009860:	0ff7f793          	andi	a5,a5,255
80009864:	01779793          	slli	a5,a5,0x17
80009868:	00945413          	srli	s0,s0,0x9
8000986c:	01f49513          	slli	a0,s1,0x1f
80009870:	00f46433          	or	s0,s0,a5
80009874:	00a46533          	or	a0,s0,a0
80009878:	00c12083          	lw	ra,12(sp)
8000987c:	00812403          	lw	s0,8(sp)
80009880:	00412483          	lw	s1,4(sp)
80009884:	01010113          	addi	sp,sp,16
80009888:	00008067          	ret
8000988c:	09900713          	li	a4,153
80009890:	02f75063          	bge	a4,a5,800098b0 <__floatsisf+0xa0>
80009894:	00500713          	li	a4,5
80009898:	40a70733          	sub	a4,a4,a0
8000989c:	01b50693          	addi	a3,a0,27
800098a0:	00e45733          	srl	a4,s0,a4
800098a4:	00d41433          	sll	s0,s0,a3
800098a8:	00803433          	snez	s0,s0
800098ac:	00876433          	or	s0,a4,s0
800098b0:	00500713          	li	a4,5
800098b4:	00a75663          	bge	a4,a0,800098c0 <__floatsisf+0xb0>
800098b8:	ffb50713          	addi	a4,a0,-5
800098bc:	00e41433          	sll	s0,s0,a4
800098c0:	fc000737          	lui	a4,0xfc000
800098c4:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
800098c8:	00747693          	andi	a3,s0,7
800098cc:	00e47733          	and	a4,s0,a4
800098d0:	00068a63          	beqz	a3,800098e4 <__floatsisf+0xd4>
800098d4:	00f47413          	andi	s0,s0,15
800098d8:	00400693          	li	a3,4
800098dc:	00d40463          	beq	s0,a3,800098e4 <__floatsisf+0xd4>
800098e0:	00470713          	addi	a4,a4,4
800098e4:	00571693          	slli	a3,a4,0x5
800098e8:	0006dc63          	bgez	a3,80009900 <__floatsisf+0xf0>
800098ec:	fc0007b7          	lui	a5,0xfc000
800098f0:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0x7bbfffff>
800098f4:	00f77733          	and	a4,a4,a5
800098f8:	09f00793          	li	a5,159
800098fc:	40a787b3          	sub	a5,a5,a0
80009900:	00375413          	srli	s0,a4,0x3
80009904:	f59ff06f          	j	8000985c <__floatsisf+0x4c>
80009908:	00000413          	li	s0,0
8000990c:	00000793          	li	a5,0
80009910:	00000493          	li	s1,0
80009914:	f49ff06f          	j	8000985c <__floatsisf+0x4c>

80009918 <__mulsi3>:
80009918:	00050613          	mv	a2,a0
8000991c:	00000513          	li	a0,0
80009920:	0015f693          	andi	a3,a1,1
80009924:	00068463          	beqz	a3,8000992c <__mulsi3+0x14>
80009928:	00c50533          	add	a0,a0,a2
8000992c:	0015d593          	srli	a1,a1,0x1
80009930:	00161613          	slli	a2,a2,0x1
80009934:	fe0596e3          	bnez	a1,80009920 <__mulsi3+0x8>
80009938:	00008067          	ret

8000993c <__muldi3>:
8000993c:	ff010113          	addi	sp,sp,-16
80009940:	00068313          	mv	t1,a3
80009944:	00112623          	sw	ra,12(sp)
80009948:	00050e13          	mv	t3,a0
8000994c:	00050893          	mv	a7,a0
80009950:	00060693          	mv	a3,a2
80009954:	00000713          	li	a4,0
80009958:	00000793          	li	a5,0
8000995c:	00000813          	li	a6,0
80009960:	0016f513          	andi	a0,a3,1
80009964:	00171e93          	slli	t4,a4,0x1
80009968:	00050c63          	beqz	a0,80009980 <__muldi3+0x44>
8000996c:	01088533          	add	a0,a7,a6
80009970:	01053833          	sltu	a6,a0,a6
80009974:	00e787b3          	add	a5,a5,a4
80009978:	00f807b3          	add	a5,a6,a5
8000997c:	00050813          	mv	a6,a0
80009980:	01f8d713          	srli	a4,a7,0x1f
80009984:	0016d693          	srli	a3,a3,0x1
80009988:	00eee733          	or	a4,t4,a4
8000998c:	00189893          	slli	a7,a7,0x1
80009990:	fc0698e3          	bnez	a3,80009960 <__muldi3+0x24>
80009994:	00058863          	beqz	a1,800099a4 <__muldi3+0x68>
80009998:	00060513          	mv	a0,a2
8000999c:	f7dff0ef          	jal	ra,80009918 <__mulsi3>
800099a0:	00a787b3          	add	a5,a5,a0
800099a4:	00030a63          	beqz	t1,800099b8 <__muldi3+0x7c>
800099a8:	000e0513          	mv	a0,t3
800099ac:	00030593          	mv	a1,t1
800099b0:	f69ff0ef          	jal	ra,80009918 <__mulsi3>
800099b4:	00f507b3          	add	a5,a0,a5
800099b8:	00c12083          	lw	ra,12(sp)
800099bc:	00080513          	mv	a0,a6
800099c0:	00078593          	mv	a1,a5
800099c4:	01010113          	addi	sp,sp,16
800099c8:	00008067          	ret

800099cc <__divsi3>:
800099cc:	06054063          	bltz	a0,80009a2c <__umodsi3+0x10>
800099d0:	0605c663          	bltz	a1,80009a3c <__umodsi3+0x20>

800099d4 <__udivsi3>:
800099d4:	00058613          	mv	a2,a1
800099d8:	00050593          	mv	a1,a0
800099dc:	fff00513          	li	a0,-1
800099e0:	02060c63          	beqz	a2,80009a18 <__udivsi3+0x44>
800099e4:	00100693          	li	a3,1
800099e8:	00b67a63          	bgeu	a2,a1,800099fc <__udivsi3+0x28>
800099ec:	00c05863          	blez	a2,800099fc <__udivsi3+0x28>
800099f0:	00161613          	slli	a2,a2,0x1
800099f4:	00169693          	slli	a3,a3,0x1
800099f8:	feb66ae3          	bltu	a2,a1,800099ec <__udivsi3+0x18>
800099fc:	00000513          	li	a0,0
80009a00:	00c5e663          	bltu	a1,a2,80009a0c <__udivsi3+0x38>
80009a04:	40c585b3          	sub	a1,a1,a2
80009a08:	00d56533          	or	a0,a0,a3
80009a0c:	0016d693          	srli	a3,a3,0x1
80009a10:	00165613          	srli	a2,a2,0x1
80009a14:	fe0696e3          	bnez	a3,80009a00 <__udivsi3+0x2c>
80009a18:	00008067          	ret

80009a1c <__umodsi3>:
80009a1c:	00008293          	mv	t0,ra
80009a20:	fb5ff0ef          	jal	ra,800099d4 <__udivsi3>
80009a24:	00058513          	mv	a0,a1
80009a28:	00028067          	jr	t0
80009a2c:	40a00533          	neg	a0,a0
80009a30:	0005d863          	bgez	a1,80009a40 <__umodsi3+0x24>
80009a34:	40b005b3          	neg	a1,a1
80009a38:	f9dff06f          	j	800099d4 <__udivsi3>
80009a3c:	40b005b3          	neg	a1,a1
80009a40:	00008293          	mv	t0,ra
80009a44:	f91ff0ef          	jal	ra,800099d4 <__udivsi3>
80009a48:	40a00533          	neg	a0,a0
80009a4c:	00028067          	jr	t0

80009a50 <__modsi3>:
80009a50:	00008293          	mv	t0,ra
80009a54:	0005ca63          	bltz	a1,80009a68 <__modsi3+0x18>
80009a58:	00054c63          	bltz	a0,80009a70 <__modsi3+0x20>
80009a5c:	f79ff0ef          	jal	ra,800099d4 <__udivsi3>
80009a60:	00058513          	mv	a0,a1
80009a64:	00028067          	jr	t0
80009a68:	40b005b3          	neg	a1,a1
80009a6c:	fe0558e3          	bgez	a0,80009a5c <__modsi3+0xc>
80009a70:	40a00533          	neg	a0,a0
80009a74:	f61ff0ef          	jal	ra,800099d4 <__udivsi3>
80009a78:	40b00533          	neg	a0,a1
80009a7c:	00028067          	jr	t0

80009a80 <__clzsi2>:
80009a80:	000107b7          	lui	a5,0x10
80009a84:	02f57a63          	bgeu	a0,a5,80009ab8 <__clzsi2+0x38>
80009a88:	0ff00793          	li	a5,255
80009a8c:	00a7b7b3          	sltu	a5,a5,a0
80009a90:	00379793          	slli	a5,a5,0x3
80009a94:	02000713          	li	a4,32
80009a98:	40f70733          	sub	a4,a4,a5
80009a9c:	00f557b3          	srl	a5,a0,a5
80009aa0:	00001517          	auipc	a0,0x1
80009aa4:	8f850513          	addi	a0,a0,-1800 # 8000a398 <__clz_tab>
80009aa8:	00f507b3          	add	a5,a0,a5
80009aac:	0007c503          	lbu	a0,0(a5) # 10000 <_stack_size+0x8000>
80009ab0:	40a70533          	sub	a0,a4,a0
80009ab4:	00008067          	ret
80009ab8:	01000737          	lui	a4,0x1000
80009abc:	01000793          	li	a5,16
80009ac0:	fce56ae3          	bltu	a0,a4,80009a94 <__clzsi2+0x14>
80009ac4:	01800793          	li	a5,24
80009ac8:	fcdff06f          	j	80009a94 <__clzsi2+0x14>
80009acc:	72617453          	0x72617453
80009ad0:	6974                	flw	fa3,84(a0)
80009ad2:	676e                	flw	fa4,216(sp)
80009ad4:	4620                	lw	s0,72(a2)
80009ad6:	6172                	flw	ft2,28(sp)
80009ad8:	656d                	lui	a0,0x1b
80009ada:	4220                	lw	s0,64(a2)
80009adc:	6675                	lui	a2,0x1d
80009ade:	6566                	flw	fa0,88(sp)
80009ae0:	2072                	fld	ft0,280(sp)
80009ae2:	6554                	flw	fa3,12(a0)
80009ae4:	0a0d7473          	csrrci	s0,0xa0,26
80009ae8:	0000                	unimp
80009aea:	0000                	unimp
80009aec:	65726353          	0x65726353
80009af0:	6e65                	lui	t3,0x19
80009af2:	6320                	flw	fs0,64(a4)
80009af4:	6168                	flw	fa0,68(a0)
80009af6:	676e                	flw	fa4,216(sp)
80009af8:	2065                	jal	80009ba0 <__clzsi2+0x120>
80009afa:	7274                	flw	fa3,100(a2)
80009afc:	6769                	lui	a4,0x1a
80009afe:	65726567          	0x65726567
80009b02:	2064                	fld	fs1,192(s0)
80009b04:	0a0d4e4f          	fnmadd.d	ft8,fs10,ft0,ft1,rmm
80009b08:	0000                	unimp
80009b0a:	0000                	unimp
80009b0c:	65726353          	0x65726353
80009b10:	6e65                	lui	t3,0x19
80009b12:	6620                	flw	fs0,72(a2)
80009b14:	6c69                	lui	s8,0x1a
80009b16:	656c                	flw	fa1,76(a0)
80009b18:	2064                	fld	fs1,192(s0)
80009b1a:	68746977          	0x68746977
80009b1e:	6220                	flw	fs0,64(a2)
80009b20:	756c                	flw	fa1,108(a0)
80009b22:	0d65                	addi	s10,s10,25
80009b24:	000a                	c.slli	zero,0x2
80009b26:	0000                	unimp
80009b28:	7246                	flw	ft4,112(sp)
80009b2a:	6d61                	lui	s10,0x18
80009b2c:	2065                	jal	80009bd4 <__clzsi2+0x154>
80009b2e:	6425                	lui	s0,0x9
80009b30:	0a0d                	addi	s4,s4,3
80009b32:	0000                	unimp
80009b34:	0080                	addi	s0,sp,64
80009b36:	0000                	unimp
80009b38:	0400                	addi	s0,sp,512
80009b3a:	0000                	unimp
80009b3c:	2000                	fld	fs0,0(s0)
80009b3e:	0000                	unimp
80009b40:	c350                	sw	a2,4(a4)
80009b42:	0000                	unimp
80009b44:	e800                	fsw	fs0,16(s0)
80009b46:	d0000003          	lb	zero,-768(zero) # fffffd00 <_stack_top+0x7fbffd00>
80009b4a:	31300007          	0x31300007
80009b4e:	3332                	fld	ft6,296(sp)
80009b50:	3534                	fld	fa3,104(a0)
80009b52:	3736                	fld	fa4,360(sp)
80009b54:	3938                	fld	fa4,112(a0)
80009b56:	4241                	li	tp,16
80009b58:	46454443          	fmadd.q	fs0,fa0,ft4,fs0,rmm
80009b5c:	0000                	unimp
80009b5e:	0000                	unimp
80009b60:	614d                	addi	sp,sp,176
80009b62:	5b636967          	0x5b636967
80009b66:	6425                	lui	s0,0x9
80009b68:	205d                	jal	80009c0e <__clzsi2+0x18e>
80009b6a:	203d                	jal	80009b98 <__clzsi2+0x118>
80009b6c:	6325                	lui	t1,0x9
80009b6e:	0a0d                	addi	s4,s4,3
80009b70:	0000                	unimp
80009b72:	0000                	unimp
80009b74:	6e49                	lui	t3,0x12
80009b76:	6176                	flw	ft2,92(sp)
80009b78:	696c                	flw	fa1,84(a0)
80009b7a:	2064                	fld	fs1,192(s0)
80009b7c:	616d                	addi	sp,sp,240
80009b7e:	20636967          	0x20636967
80009b82:	756e                	flw	fa0,248(sp)
80009b84:	626d                	lui	tp,0x1b
80009b86:	7265                	lui	tp,0xffff9
80009b88:	6120                	flw	fs0,64(a0)
80009b8a:	2074                	fld	fa3,192(s0)
80009b8c:	6f70                	flw	fa2,92(a4)
80009b8e:	69746973          	csrrsi	s2,0x697,8
80009b92:	25206e6f          	jal	t3,8000fde4 <_heap_start+0x5488>
80009b96:	0d64                	addi	s1,sp,668
80009b98:	000a                	c.slli	zero,0x2
80009b9a:	0000                	unimp
80009b9c:	7250                	flw	fa2,36(a2)
80009b9e:	6172676f          	jal	a4,800309b4 <_heap_start+0x26058>
80009ba2:	206d                	jal	80009c4c <__clzsi2+0x1cc>
80009ba4:	6e756f63          	bltu	a0,t2,8000a2a2 <two_over_pi+0x2d2>
80009ba8:	3a74                	fld	fa3,240(a2)
80009baa:	2520                	fld	fs0,72(a0)
80009bac:	0d64                	addi	s1,sp,668
80009bae:	000a                	c.slli	zero,0x2
80009bb0:	63656843          	fmadd.d	fa6,fa0,fs6,fa2,unknown
80009bb4:	676e696b          	0x676e696b
80009bb8:	7020                	flw	fs0,96(s0)
80009bba:	6f72                	flw	ft10,28(sp)
80009bbc:	6d617267          	0x6d617267
80009bc0:	2520                	fld	fs0,72(a0)
80009bc2:	2e64                	fld	fs1,216(a2)
80009bc4:	2e2e                	fld	ft8,200(sp)
80009bc6:	0a0d                	addi	s4,s4,3
80009bc8:	0000                	unimp
80009bca:	0000                	unimp
80009bcc:	2020                	fld	fs0,64(s0)
80009bce:	72616843          	fmadd.d	fa6,ft2,ft6,fa4,unknown
80009bd2:	2520                	fld	fs0,72(a0)
80009bd4:	3a64                	fld	fs1,240(a2)
80009bd6:	2720                	fld	fs0,72(a4)
80009bd8:	6325                	lui	t1,0x9
80009bda:	66282027          	fsw	ft2,1632(a6)
80009bde:	616c                	flw	fa1,68(a0)
80009be0:	20296873          	csrrsi	a6,hedeleg,18
80009be4:	7376                	flw	ft6,124(sp)
80009be6:	2720                	fld	fs0,72(a4)
80009be8:	6325                	lui	t1,0x9
80009bea:	69282027          	fsw	fs2,1664(a6)
80009bee:	706e                	flw	ft0,248(sp)
80009bf0:	7475                	lui	s0,0xffffd
80009bf2:	0d29                	addi	s10,s10,10
80009bf4:	000a                	c.slli	zero,0x2
80009bf6:	0000                	unimp
80009bf8:	2020                	fld	fs0,64(s0)
80009bfa:	614d                	addi	sp,sp,176
80009bfc:	6374                	flw	fa3,68(a4)
80009bfe:	2068                	fld	fa0,192(s0)
80009c00:	6f66                	flw	ft10,88(sp)
80009c02:	6e75                	lui	t3,0x1d
80009c04:	2164                	fld	fs1,192(a0)
80009c06:	5320                	lw	s0,96(a4)
80009c08:	6174                	flw	fa3,68(a0)
80009c0a:	7472                	flw	fs0,60(sp)
80009c0c:	6120                	flw	fs0,64(a0)
80009c0e:	6464                	flw	fs1,76(s0)
80009c10:	6572                	flw	fa0,28(sp)
80009c12:	203a7373          	csrrci	t1,hideleg,20
80009c16:	7830                	flw	fa2,112(s0)
80009c18:	7825                	lui	a6,0xfffe9
80009c1a:	0a0d                	addi	s4,s4,3
80009c1c:	0000                	unimp
80009c1e:	0000                	unimp
80009c20:	2020                	fld	fs0,64(s0)
80009c22:	6e45                	lui	t3,0x11
80009c24:	2064                	fld	fs1,192(s0)
80009c26:	6461                	lui	s0,0x18
80009c28:	7264                	flw	fs1,100(a2)
80009c2a:	7365                	lui	t1,0xffff9
80009c2c:	30203a73          	csrrc	s4,medeleg,zero
80009c30:	2578                	fld	fa4,200(a0)
80009c32:	0d78                	addi	a4,sp,668
80009c34:	000a                	c.slli	zero,0x2
80009c36:	0000                	unimp
80009c38:	6946                	flw	fs2,80(sp)
80009c3a:	656c                	flw	fa1,76(a0)
80009c3c:	6e20                	flw	fs0,88(a2)
80009c3e:	6620746f          	jal	s0,800112a0 <_heap_start+0x6944>
80009c42:	646e756f          	jal	a0,800f1288 <_heap_start+0xe692c>
80009c46:	203a                	fld	ft0,392(sp)
80009c48:	7325                	lui	t1,0xfffe9
80009c4a:	0a0d                	addi	s4,s4,3
80009c4c:	0000                	unimp
80009c4e:	0000                	unimp
80009c50:	7245                	lui	tp,0xffff1
80009c52:	6f72                	flw	ft10,28(sp)
80009c54:	3a72                	fld	fs4,312(sp)
80009c56:	4620                	lw	s0,72(a2)
80009c58:	6c69                	lui	s8,0x1a
80009c5a:	2065                	jal	80009d02 <__clzsi2+0x282>
80009c5c:	6f6e                	flw	ft10,216(sp)
80009c5e:	2074                	fld	fa3,192(s0)
80009c60:	6f66                	flw	ft10,88(sp)
80009c62:	6e75                	lui	t3,0x1d
80009c64:	2064                	fld	fs1,192(s0)
80009c66:	202d                	jal	80009c90 <__clzsi2+0x210>
80009c68:	7325                	lui	t1,0xfffe9
80009c6a:	0a0d                	addi	s4,s4,3
80009c6c:	0000                	unimp
80009c6e:	0000                	unimp
80009c70:	7830                	flw	fa2,112(s0)
80009c72:	7825                	lui	a6,0xfffe9
80009c74:	7420                	flw	fs0,104(s0)
80009c76:	7830206f          	j	8000cbf8 <_heap_start+0x229c>
80009c7a:	7825                	lui	a6,0xfffe9
80009c7c:	0a0d                	addi	s4,s4,3
80009c7e:	0000                	unimp
80009c80:	7245                	lui	tp,0xffff1
80009c82:	6f72                	flw	ft10,28(sp)
80009c84:	3a72                	fld	fs4,312(sp)
80009c86:	4d20                	lw	s0,88(a0)
80009c88:	7861                	lui	a6,0xffff8
80009c8a:	6d69                	lui	s10,0x1a
80009c8c:	6d75                	lui	s10,0x1d
80009c8e:	6620                	flw	fs0,72(a2)
80009c90:	6c69                	lui	s8,0x1a
80009c92:	2065                	jal	80009d3a <__clzsi2+0x2ba>
80009c94:	6e756f63          	bltu	a0,t2,8000a392 <PIo2+0x9e>
80009c98:	2074                	fld	fa3,192(s0)
80009c9a:	6572                	flw	fa0,28(sp)
80009c9c:	6361                	lui	t1,0x18
80009c9e:	6568                	flw	fa0,76(a0)
80009ca0:	2e64                	fld	fs1,216(a2)
80009ca2:	0a0d                	addi	s4,s4,3
80009ca4:	0000                	unimp
80009ca6:	0000                	unimp
80009ca8:	7245                	lui	tp,0xffff1
80009caa:	6f72                	flw	ft10,28(sp)
80009cac:	3a72                	fld	fs4,312(sp)
80009cae:	4920                	lw	s0,80(a0)
80009cb0:	766e                	flw	fa2,248(sp)
80009cb2:	6c61                	lui	s8,0x18
80009cb4:	6469                	lui	s0,0x1a
80009cb6:	6620                	flw	fs0,72(a2)
80009cb8:	6c69                	lui	s8,0x1a
80009cba:	2065                	jal	80009d62 <__clzsi2+0x2e2>
80009cbc:	6168                	flw	fa0,68(a0)
80009cbe:	646e                	flw	fs0,216(sp)
80009cc0:	656c                	flw	fa1,76(a0)
80009cc2:	2520                	fld	fs0,72(a0)
80009cc4:	0d64                	addi	s1,sp,668
80009cc6:	000a                	c.slli	zero,0x2
80009cc8:	7245                	lui	tp,0xffff1
80009cca:	6f72                	flw	ft10,28(sp)
80009ccc:	3a72                	fld	fs4,312(sp)
80009cce:	5220                	lw	s0,96(a2)
80009cd0:	6165                	addi	sp,sp,112
80009cd2:	2064                	fld	fs1,192(s0)
80009cd4:	7865                	lui	a6,0xffff9
80009cd6:	64656563          	bltu	a0,t1,8000a320 <PIo2+0x2c>
80009cda:	69662073          	csrs	0x696,a2
80009cde:	656c                	flw	fa1,76(a0)
80009ce0:	6520                	flw	fs0,72(a0)
80009ce2:	646e                	flw	fs0,216(sp)
80009ce4:	6120                	flw	fs0,64(a0)
80009ce6:	6464                	flw	fs1,76(s0)
80009ce8:	6572                	flw	fa0,28(sp)
80009cea:	0d2e7373          	csrrci	t1,0xd2,28
80009cee:	000a                	c.slli	zero,0x2
80009cf0:	7245                	lui	tp,0xffff1
80009cf2:	6f72                	flw	ft10,28(sp)
80009cf4:	3a72                	fld	fs4,312(sp)
80009cf6:	4520                	lw	s0,72(a0)
80009cf8:	646e                	flw	fs0,216(sp)
80009cfa:	6f20                	flw	fs0,88(a4)
80009cfc:	2066                	fld	ft0,88(sp)
80009cfe:	6966                	flw	fs2,88(sp)
80009d00:	656c                	flw	fa1,76(a0)
80009d02:	7220                	flw	fs0,96(a2)
80009d04:	6165                	addi	sp,sp,112
80009d06:	64656863          	bltu	a0,t1,8000a356 <PIo2+0x62>
80009d0a:	0d2e                	slli	s10,s10,0xb
80009d0c:	000a                	c.slli	zero,0x2
80009d0e:	0000                	unimp
80009d10:	6548                	flw	fa0,12(a0)
80009d12:	7061                	c.lui	zero,0xffff8
80009d14:	6f20                	flw	fs0,88(a4)
80009d16:	6576                	flw	fa0,92(sp)
80009d18:	6672                	flw	fa2,28(sp)
80009d1a:	6f6c                	flw	fa1,92(a4)
80009d1c:	52202177          	0x52202177
80009d20:	7165                	addi	sp,sp,-400
80009d22:	6575                	lui	a0,0x1d
80009d24:	64657473          	csrrci	s0,0x646,10
80009d28:	2520                	fld	fs0,72(a0)
80009d2a:	2075                	jal	80009dd6 <__clzsi2+0x356>
80009d2c:	7962                	flw	fs2,56(sp)
80009d2e:	6574                	flw	fa3,76(a0)
80009d30:	000a0d73          	0xa0d73
80009d34:	7245                	lui	tp,0xffff1
80009d36:	6f72                	flw	ft10,28(sp)
80009d38:	3a72                	fld	fs4,312(sp)
80009d3a:	4920                	lw	s0,80(a0)
80009d3c:	766e                	flw	fa2,248(sp)
80009d3e:	6c61                	lui	s8,0x18
80009d40:	6469                	lui	s0,0x1a
80009d42:	6f20                	flw	fs0,88(a4)
80009d44:	6666                	flw	fa2,88(sp)
80009d46:	20746573          	csrrsi	a0,0x207,8
80009d4a:	6f66                	flw	ft10,88(sp)
80009d4c:	2072                	fld	ft0,280(sp)
80009d4e:	4b454553          	0x4b454553
80009d52:	535f 5445 0a0d      	0xa0d5445535f
80009d58:	0000                	unimp
80009d5a:	0000                	unimp
80009d5c:	7245                	lui	tp,0xffff1
80009d5e:	6f72                	flw	ft10,28(sp)
80009d60:	3a72                	fld	fs4,312(sp)
80009d62:	4920                	lw	s0,80(a0)
80009d64:	766e                	flw	fa2,248(sp)
80009d66:	6c61                	lui	s8,0x18
80009d68:	6469                	lui	s0,0x1a
80009d6a:	6f20                	flw	fs0,88(a4)
80009d6c:	6666                	flw	fa2,88(sp)
80009d6e:	20746573          	csrrsi	a0,0x207,8
80009d72:	6f66                	flw	ft10,88(sp)
80009d74:	2072                	fld	ft0,280(sp)
80009d76:	4b454553          	0x4b454553
80009d7a:	435f 5255 0a0d      	0xa0d5255435f
80009d80:	0000                	unimp
80009d82:	0000                	unimp
80009d84:	7245                	lui	tp,0xffff1
80009d86:	6f72                	flw	ft10,28(sp)
80009d88:	3a72                	fld	fs4,312(sp)
80009d8a:	4920                	lw	s0,80(a0)
80009d8c:	766e                	flw	fa2,248(sp)
80009d8e:	6c61                	lui	s8,0x18
80009d90:	6469                	lui	s0,0x1a
80009d92:	6f20                	flw	fs0,88(a4)
80009d94:	6666                	flw	fa2,88(sp)
80009d96:	20746573          	csrrsi	a0,0x207,8
80009d9a:	6f66                	flw	ft10,88(sp)
80009d9c:	2072                	fld	ft0,280(sp)
80009d9e:	4b454553          	0x4b454553
80009da2:	455f 444e 0a0d      	0xa0d444e455f
80009da8:	0000                	unimp
80009daa:	0000                	unimp
80009dac:	7245                	lui	tp,0xffff1
80009dae:	6f72                	flw	ft10,28(sp)
80009db0:	3a72                	fld	fs4,312(sp)
80009db2:	4920                	lw	s0,80(a0)
80009db4:	766e                	flw	fa2,248(sp)
80009db6:	6c61                	lui	s8,0x18
80009db8:	6469                	lui	s0,0x1a
80009dba:	7720                	flw	fs0,104(a4)
80009dbc:	6568                	flw	fa0,76(a0)
80009dbe:	636e                	flw	ft6,216(sp)
80009dc0:	2065                	jal	80009e68 <__clzsi2+0x3e8>
80009dc2:	6176                	flw	ft2,92(sp)
80009dc4:	756c                	flw	fa1,108(a0)
80009dc6:	0d65                	addi	s10,s10,25
80009dc8:	000a                	c.slli	zero,0x2
80009dca:	0000                	unimp
80009dcc:	7245                	lui	tp,0xffff1
80009dce:	6f72                	flw	ft10,28(sp)
80009dd0:	3a72                	fld	fs4,312(sp)
80009dd2:	6220                	flw	fs0,64(a2)
80009dd4:	6461                	lui	s0,0x18
80009dd6:	6d20                	flw	fs0,88(a0)
80009dd8:	6761                	lui	a4,0x18
80009dda:	6369                	lui	t1,0x1a
80009ddc:	6120                	flw	fs0,64(a0)
80009dde:	2074                	fld	fa3,192(s0)
80009de0:	7525                	lui	a0,0xfffe9
80009de2:	2820                	fld	fs0,80(s0)
80009de4:	20746f67          	0x20746f67
80009de8:	27632527          	fsw	fs6,618(t1) # 1a26a <_stack_size+0x1226a>
80009dec:	202c                	fld	fa1,64(s0)
80009dee:	7865                	lui	a6,0xffff9
80009df0:	6570                	flw	fa2,76(a0)
80009df2:	64657463          	bgeu	a0,t1,8000a43a <__clz_tab+0xa2>
80009df6:	2720                	fld	fs0,72(a4)
80009df8:	6325                	lui	t1,0x9
80009dfa:	0a0d2927          	fsw	ft0,178(s10) # 1d0b2 <_stack_size+0x150b2>
80009dfe:	0000                	unimp
80009e00:	6946                	flw	fs2,80(sp)
80009e02:	656c                	flw	fa1,76(a0)
80009e04:	25203a73          	csrrc	s4,0x252,zero
80009e08:	0d64                	addi	s1,sp,668
80009e0a:	000a                	c.slli	zero,0x2
80009e0c:	6425                	lui	s0,0x9
80009e0e:	2029                	jal	80009e18 <__clzsi2+0x398>
80009e10:	7325                	lui	t1,0xfffe9
80009e12:	2020                	fld	fs0,64(s0)
80009e14:	2578305b          	0x2578305b
80009e18:	2078                	fld	fa4,192(s0)
80009e1a:	202d                	jal	80009e44 <__clzsi2+0x3c4>
80009e1c:	7830                	flw	fa2,112(s0)
80009e1e:	7825                	lui	a6,0xfffe9
80009e20:	0a5d                	addi	s4,s4,23
80009e22:	0000                	unimp
80009e24:	00004b4f          	fnmadd.s	fs6,ft0,ft0,ft0,rmm
80009e28:	4146                	lw	sp,80(sp)
80009e2a:	4c49                	li	s8,18
80009e2c:	0000                	unimp
80009e2e:	0000                	unimp
80009e30:	3d3d                	jal	80009c6e <__clzsi2+0x1ee>
80009e32:	3d3d                	jal	80009c70 <__clzsi2+0x1f0>
80009e34:	203d                	jal	80009e62 <__clzsi2+0x3e2>
80009e36:	6548                	flw	fa0,12(a0)
80009e38:	7061                	c.lui	zero,0xffff8
80009e3a:	5420                	lw	s0,104(s0)
80009e3c:	7365                	lui	t1,0xffff9
80009e3e:	2074                	fld	fa3,192(s0)
80009e40:	72617453          	0x72617453
80009e44:	2074                	fld	fa3,192(s0)
80009e46:	3d3d                	jal	80009c84 <__clzsi2+0x204>
80009e48:	3d3d                	jal	80009c86 <__clzsi2+0x206>
80009e4a:	0d3d                	addi	s10,s10,15
80009e4c:	000a                	c.slli	zero,0x2
80009e4e:	0000                	unimp
80009e50:	6548                	flw	fa0,12(a0)
80009e52:	7061                	c.lui	zero,0xffff8
80009e54:	7220                	flw	fs0,96(a2)
80009e56:	6e61                	lui	t3,0x18
80009e58:	203a6567          	0x203a6567
80009e5c:	7830                	flw	fa2,112(s0)
80009e5e:	7825                	lui	a6,0xfffe9
80009e60:	2d20                	fld	fs0,88(a0)
80009e62:	3020                	fld	fs0,96(s0)
80009e64:	2578                	fld	fa4,200(a0)
80009e66:	0d78                	addi	a4,sp,668
80009e68:	000a                	c.slli	zero,0x2
80009e6a:	0000                	unimp
80009e6c:	6548                	flw	fa0,12(a0)
80009e6e:	7061                	c.lui	zero,0xffff8
80009e70:	7320                	flw	fs0,96(a4)
80009e72:	7a69                	lui	s4,0xffffa
80009e74:	2065                	jal	80009f1c <__clzsi2+0x49c>
80009e76:	203a                	fld	ft0,392(sp)
80009e78:	6425                	lui	s0,0x9
80009e7a:	6220                	flw	fs0,64(a2)
80009e7c:	7479                	lui	s0,0xffffe
80009e7e:	7365                	lui	t1,0xffff9
80009e80:	0a0d                	addi	s4,s4,3
80009e82:	0000                	unimp
80009e84:	5d64255b          	0x5d64255b
80009e88:	4120                	lw	s0,64(a0)
80009e8a:	6c6c                	flw	fa1,92(s0)
80009e8c:	2520636f          	jal	t1,800100de <_heap_start+0x5782>
80009e90:	2064                	fld	fs1,192(s0)
80009e92:	7962                	flw	fs2,56(sp)
80009e94:	6574                	flw	fa3,76(a0)
80009e96:	3e2d2073          	csrs	0x3e2,s10
80009e9a:	2520                	fld	fs0,72(a0)
80009e9c:	61282073          	csrs	0x612,a6
80009ea0:	6464                	flw	fs1,76(s0)
80009ea2:	3d72                	fld	fs10,312(sp)
80009ea4:	7830                	flw	fa2,112(s0)
80009ea6:	7825                	lui	a6,0xfffe9
80009ea8:	0d29                	addi	s10,s10,10
80009eaa:	000a                	c.slli	zero,0x2
80009eac:	0a0d                	addi	s4,s4,3
80009eae:	6556                	flw	fa0,84(sp)
80009eb0:	6972                	flw	fs2,28(sp)
80009eb2:	7966                	flw	fs2,120(sp)
80009eb4:	6e69                	lui	t3,0x1a
80009eb6:	6f632067          	0x6f632067
80009eba:	746e                	flw	fs0,248(sp)
80009ebc:	6e65                	lui	t3,0x19
80009ebe:	7374                	flw	fa3,100(a4)
80009ec0:	2e2e                	fld	ft8,200(sp)
80009ec2:	0d2e                	slli	s10,s10,0xb
80009ec4:	000a                	c.slli	zero,0x2
80009ec6:	0000                	unimp
80009ec8:	2020                	fld	fs0,64(s0)
80009eca:	694d                	lui	s2,0x13
80009ecc:	74616d73          	csrrsi	s10,0x746,2
80009ed0:	40206863          	bltu	zero,sp,8000a2e0 <two_over_pi+0x310>
80009ed4:	6425                	lui	s0,0x9
80009ed6:	5d64255b          	0x5d64255b
80009eda:	203a                	fld	ft0,392(sp)
80009edc:	20746f67          	0x20746f67
80009ee0:	6425                	lui	s0,0x9
80009ee2:	6520                	flw	fs0,72(a0)
80009ee4:	7078                	flw	fa4,100(s0)
80009ee6:	6365                	lui	t1,0x19
80009ee8:	6574                	flw	fa3,76(a0)
80009eea:	2064                	fld	fs1,192(s0)
80009eec:	6425                	lui	s0,0x9
80009eee:	0a0d                	addi	s4,s4,3
80009ef0:	0000                	unimp
80009ef2:	0000                	unimp
80009ef4:	5d64255b          	0x5d64255b
80009ef8:	7620                	flw	fs0,104(a2)
80009efa:	7265                	lui	tp,0xffff9
80009efc:	6669                	lui	a2,0x1a
80009efe:	2079                	jal	80009f8c <npio2_hw+0x3c>
80009f00:	3e2d                	jal	80009a3a <__umodsi3+0x1e>
80009f02:	2520                	fld	fs0,72(a0)
80009f04:	25282073          	csrs	0x252,a6
80009f08:	2064                	fld	fs1,192(s0)
80009f0a:	7265                	lui	tp,0xffff9
80009f0c:	6f72                	flw	ft10,28(sp)
80009f0e:	7372                	flw	ft6,60(sp)
80009f10:	0d29                	addi	s10,s10,10
80009f12:	000a                	c.slli	zero,0x2
80009f14:	0a0d                	addi	s4,s4,3
80009f16:	6f54                	flw	fa3,28(a4)
80009f18:	6174                	flw	fa3,68(a0)
80009f1a:	206c                	fld	fa1,192(s0)
80009f1c:	6568                	flw	fa0,76(a0)
80009f1e:	7061                	c.lui	zero,0xffff8
80009f20:	7520                	flw	fs0,104(a0)
80009f22:	3a646573          	csrrsi	a0,0x3a6,8
80009f26:	2520                	fld	fs0,72(a0)
80009f28:	2064                	fld	fs1,192(s0)
80009f2a:	7962                	flw	fs2,56(sp)
80009f2c:	6574                	flw	fa3,76(a0)
80009f2e:	000a0d73          	0xa0d73
80009f32:	0000                	unimp
80009f34:	3d3d                	jal	80009d72 <__clzsi2+0x2f2>
80009f36:	3d3d                	jal	80009d74 <__clzsi2+0x2f4>
80009f38:	203d                	jal	80009f66 <npio2_hw+0x16>
80009f3a:	6548                	flw	fa0,12(a0)
80009f3c:	7061                	c.lui	zero,0xffff8
80009f3e:	5420                	lw	s0,104(s0)
80009f40:	7365                	lui	t1,0xffff9
80009f42:	2074                	fld	fa3,192(s0)
80009f44:	6e45                	lui	t3,0x11
80009f46:	2064                	fld	fs1,192(s0)
80009f48:	3d3d                	jal	80009d86 <__clzsi2+0x306>
80009f4a:	3d3d                	jal	80009d88 <__clzsi2+0x308>
80009f4c:	0d3d                	addi	s10,s10,15
80009f4e:	000a                	c.slli	zero,0x2

80009f50 <npio2_hw>:
80009f50:	0f00 3fc9 0f00 4049 cb00 4096 0f00 40c9     ...?..I@...@...@
80009f60:	5300 40fb cb00 4116 ed00 412f 0f00 4149     .S.@...A../A..IA
80009f70:	3100 4162 5300 417b 3a00 418a cb00 4196     .1bA.S{A.:.A...A
80009f80:	5c00 41a3 ed00 41af 7e00 41bc 0f00 41c9     .\.A...A.~.A...A
80009f90:	a000 41d5 3100 41e2 c200 41ee 5300 41fb     ...A.1.A...A.S.A
80009fa0:	f200 4203 3a00 420a 8300 4210 cb00 4216     ...B.:.B...B...B
80009fb0:	1400 421d 5c00 4223 a500 4229 ed00 422f     ...B.\#B..)B../B
80009fc0:	3600 4236 7e00 423c c700 4242 0f00 4249     .66B.~<B..BB..IB

80009fd0 <two_over_pi>:
80009fd0:	00a2 0000 00f9 0000 0083 0000 006e 0000     ............n...
80009fe0:	004e 0000 0044 0000 0015 0000 0029 0000     N...D.......)...
80009ff0:	00fc 0000 0027 0000 0057 0000 00d1 0000     ....'...W.......
8000a000:	00f5 0000 0034 0000 00dd 0000 00c0 0000     ....4...........
8000a010:	00db 0000 0062 0000 0095 0000 0099 0000     ....b...........
8000a020:	003c 0000 0043 0000 0090 0000 0041 0000     <...C.......A...
8000a030:	00fe 0000 0051 0000 0063 0000 00ab 0000     ....Q...c.......
8000a040:	00de 0000 00bb 0000 00c5 0000 0061 0000     ............a...
8000a050:	00b7 0000 0024 0000 006e 0000 003a 0000     ....$...n...:...
8000a060:	0042 0000 004d 0000 00d2 0000 00e0 0000     B...M...........
8000a070:	0006 0000 0049 0000 002e 0000 00ea 0000     ....I...........
8000a080:	0009 0000 00d1 0000 0092 0000 001c 0000     ................
8000a090:	00fe 0000 001d 0000 00eb 0000 001c 0000     ................
8000a0a0:	00b1 0000 0029 0000 00a7 0000 003e 0000     ....).......>...
8000a0b0:	00e8 0000 0082 0000 0035 0000 00f5 0000     ........5.......
8000a0c0:	002e 0000 00bb 0000 0044 0000 0084 0000     ........D.......
8000a0d0:	00e9 0000 009c 0000 0070 0000 0026 0000     ........p...&...
8000a0e0:	00b4 0000 005f 0000 007e 0000 0041 0000     ...._...~...A...
8000a0f0:	0039 0000 0091 0000 00d6 0000 0039 0000     9...........9...
8000a100:	0083 0000 0053 0000 0039 0000 00f4 0000     ....S...9.......
8000a110:	009c 0000 0084 0000 005f 0000 008b 0000     ........_.......
8000a120:	00bd 0000 00f9 0000 0028 0000 003b 0000     ........(...;...
8000a130:	001f 0000 00f8 0000 0097 0000 00ff 0000     ................
8000a140:	00de 0000 0005 0000 0098 0000 000f 0000     ................
8000a150:	00ef 0000 002f 0000 0011 0000 008b 0000     ..../...........
8000a160:	005a 0000 000a 0000 006d 0000 001f 0000     Z.......m.......
8000a170:	006d 0000 0036 0000 007e 0000 00cf 0000     m...6...~.......
8000a180:	0027 0000 00cb 0000 0009 0000 00b7 0000     '...............
8000a190:	004f 0000 0046 0000 003f 0000 0066 0000     O...F...?...f...
8000a1a0:	009e 0000 005f 0000 00ea 0000 002d 0000     ...._.......-...
8000a1b0:	0075 0000 0027 0000 00ba 0000 00c7 0000     u...'...........
8000a1c0:	00eb 0000 00e5 0000 00f1 0000 007b 0000     ............{...
8000a1d0:	003d 0000 0007 0000 0039 0000 00f7 0000     =.......9.......
8000a1e0:	008a 0000 0052 0000 0092 0000 00ea 0000     ....R...........
8000a1f0:	006b 0000 00fb 0000 005f 0000 00b1 0000     k......._.......
8000a200:	001f 0000 008d 0000 005d 0000 0008 0000     ........].......
8000a210:	0056 0000 0003 0000 0030 0000 0046 0000     V.......0...F...
8000a220:	00fc 0000 007b 0000 006b 0000 00ab 0000     ....{...k.......
8000a230:	00f0 0000 00cf 0000 00bc 0000 0020 0000     ............ ...
8000a240:	009a 0000 00f4 0000 0036 0000 001d 0000     ........6.......
8000a250:	00a9 0000 00e3 0000 0091 0000 0061 0000     ............a...
8000a260:	005e 0000 00e6 0000 001b 0000 0008 0000     ^...............
8000a270:	0065 0000 0099 0000 0085 0000 005f 0000     e..........._...
8000a280:	0014 0000 00a0 0000 0068 0000 0040 0000     ........h...@...
8000a290:	008d 0000 00ff 0000 00d8 0000 0080 0000     ................
8000a2a0:	004d 0000 0073 0000 0027 0000 0031 0000     M...s...'...1...
8000a2b0:	0006 0000 0006 0000 0015 0000 0056 0000     ............V...
8000a2c0:	00ca 0000 0073 0000 00a8 0000 00c9 0000     ....s...........
8000a2d0:	0060 0000 00e2 0000 007b 0000 00c0 0000     `.......{.......
8000a2e0:	008c 0000 006b 0000                         ....k...

8000a2e8 <init_jk>:
8000a2e8:	0004 0000 0007 0000 0009 0000               ............

8000a2f4 <PIo2>:
8000a2f4:	0000 3fc9 0000 39f0 0000 37da 0000 33a2     ...?...9...7...3
8000a304:	0000 2e84 0000 2b50 0000 27c2 0000 22d0     ......P+...'..."
8000a314:	0000 1fc4 0000 1bc6 0000 1744 ead8 ffff     ..........D.....
8000a324:	eb14 ffff eb6c ffff eb14 ffff ebd8 ffff     ....l...........
8000a334:	eb14 ffff eb6c ffff ead8 ffff ead8 ffff     ....l...........
8000a344:	ebd8 ffff eb6c ffff eaf0 ffff eaf0 ffff     ....l...........
8000a354:	eaf0 ffff eb74 ffff ef24 ffff ef24 ffff     ....t...$...$...
8000a364:	ef48 ffff ef1c ffff ef1c ffff efac ffff     H...............
8000a374:	ef48 ffff ef1c ffff efac ffff ef1c ffff     H...............
8000a384:	ef48 ffff ef18 ffff ef18 ffff ef18 ffff     H...............
8000a394:	efac ffff                                   ....

8000a398 <__clz_tab>:
8000a398:	0100 0202 0303 0303 0404 0404 0404 0404     ................
8000a3a8:	0505 0505 0505 0505 0505 0505 0505 0505     ................
8000a3b8:	0606 0606 0606 0606 0606 0606 0606 0606     ................
8000a3c8:	0606 0606 0606 0606 0606 0606 0606 0606     ................
8000a3d8:	0707 0707 0707 0707 0707 0707 0707 0707     ................
8000a3e8:	0707 0707 0707 0707 0707 0707 0707 0707     ................
8000a3f8:	0707 0707 0707 0707 0707 0707 0707 0707     ................
8000a408:	0707 0707 0707 0707 0707 0707 0707 0707     ................
8000a418:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000a428:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000a438:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000a448:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000a458:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000a468:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000a478:	0808 0808 0808 0808 0808 0808 0808 0808     ................
8000a488:	0808 0808 0808 0808 0808 0808 0808 0808     ................
