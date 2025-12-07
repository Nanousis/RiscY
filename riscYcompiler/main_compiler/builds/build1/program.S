
builds/build1/program.elf:     file format elf32-littleriscv


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
8000008c:	371070ef          	jal	ra,80007bfc <_etext>
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
8000009c:	2cd0006f          	j	80000b68 <_Z11vOutNS16550h>

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
800000d4:	585030ef          	jal	ra,80003e58 <cosf>
800000d8:	00050993          	mv	s3,a0
  using ::sin;

#ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
  inline _GLIBCXX_CONSTEXPR float
  sin(float __x)
  { return __builtin_sinf(__x); }
800000dc:	00090513          	mv	a0,s2
800000e0:	615030ef          	jal	ra,80003ef4 <sinf>
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x * ca + v.z * sa,
800000e4:	0004aa03          	lw	s4,0(s1)
800000e8:	0084a903          	lw	s2,8(s1)
800000ec:	00050a93          	mv	s5,a0
800000f0:	00098593          	mv	a1,s3
800000f4:	000a0513          	mv	a0,s4
800000f8:	321060ef          	jal	ra,80006c18 <__mulsf3>
800000fc:	00050b13          	mv	s6,a0
80000100:	000a8593          	mv	a1,s5
80000104:	00090513          	mv	a0,s2
80000108:	311060ef          	jal	ra,80006c18 <__mulsf3>
        v.y,
8000010c:	0044a483          	lw	s1,4(s1)
        -v.x * sa + v.z * ca
    );
80000110:	00050593          	mv	a1,a0
80000114:	000b0513          	mv	a0,s6
80000118:	224060ef          	jal	ra,8000633c <__addsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
8000011c:	00a42023          	sw	a0,0(s0)
        -v.x * sa + v.z * ca
80000120:	80000537          	lui	a0,0x80000
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
80000124:	00942223          	sw	s1,4(s0)
        -v.x * sa + v.z * ca
80000128:	000a8593          	mv	a1,s5
8000012c:	01454533          	xor	a0,a0,s4
80000130:	2e9060ef          	jal	ra,80006c18 <__mulsf3>
80000134:	00050493          	mv	s1,a0
80000138:	00098593          	mv	a1,s3
8000013c:	00090513          	mv	a0,s2
80000140:	2d9060ef          	jal	ra,80006c18 <__mulsf3>
    );
80000144:	00050593          	mv	a1,a0
80000148:	00048513          	mv	a0,s1
8000014c:	1f0060ef          	jal	ra,8000633c <__addsf3>
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
800001b0:	4a9030ef          	jal	ra,80003e58 <cosf>
800001b4:	00050913          	mv	s2,a0
  { return __builtin_sinf(__x); }
800001b8:	00098513          	mv	a0,s3
800001bc:	539030ef          	jal	ra,80003ef4 <sinf>
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
800001dc:	23d060ef          	jal	ra,80006c18 <__mulsf3>
800001e0:	00050a93          	mv	s5,a0
800001e4:	000a0593          	mv	a1,s4
800001e8:	00048513          	mv	a0,s1
800001ec:	22d060ef          	jal	ra,80006c18 <__mulsf3>
        v.y * sa + v.z * ca
    );
800001f0:	00050593          	mv	a1,a0
800001f4:	000a8513          	mv	a0,s5
800001f8:	545060ef          	jal	ra,80006f3c <__subsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800001fc:	00a42223          	sw	a0,4(s0)
        v.y * sa + v.z * ca
80000200:	000a0593          	mv	a1,s4
80000204:	00098513          	mv	a0,s3
80000208:	211060ef          	jal	ra,80006c18 <__mulsf3>
8000020c:	00050993          	mv	s3,a0
80000210:	00090593          	mv	a1,s2
80000214:	00048513          	mv	a0,s1
80000218:	201060ef          	jal	ra,80006c18 <__mulsf3>
    );
8000021c:	00050593          	mv	a1,a0
80000220:	00098513          	mv	a0,s3
80000224:	118060ef          	jal	ra,8000633c <__addsf3>
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
80000288:	3d1030ef          	jal	ra,80003e58 <cosf>
8000028c:	00050993          	mv	s3,a0
  { return __builtin_sinf(__x); }
80000290:	00090513          	mv	a0,s2
80000294:	461030ef          	jal	ra,80003ef4 <sinf>
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x * ca - v.y * sa,
80000298:	0004aa03          	lw	s4,0(s1)
8000029c:	0044a903          	lw	s2,4(s1)
800002a0:	00050a93          	mv	s5,a0
800002a4:	00098593          	mv	a1,s3
800002a8:	000a0513          	mv	a0,s4
800002ac:	16d060ef          	jal	ra,80006c18 <__mulsf3>
800002b0:	00050b13          	mv	s6,a0
800002b4:	000a8593          	mv	a1,s5
800002b8:	00090513          	mv	a0,s2
800002bc:	15d060ef          	jal	ra,80006c18 <__mulsf3>
        v.x * sa + v.y * ca,
        v.z
    );
800002c0:	00050593          	mv	a1,a0
800002c4:	000b0513          	mv	a0,s6
800002c8:	475060ef          	jal	ra,80006f3c <__subsf3>
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
800002cc:	00a42023          	sw	a0,0(s0)
        v.x * sa + v.y * ca,
800002d0:	000a8593          	mv	a1,s5
800002d4:	000a0513          	mv	a0,s4
800002d8:	141060ef          	jal	ra,80006c18 <__mulsf3>
800002dc:	00050a13          	mv	s4,a0
800002e0:	00098593          	mv	a1,s3
800002e4:	00090513          	mv	a0,s2
800002e8:	131060ef          	jal	ra,80006c18 <__mulsf3>
        v.z
800002ec:	0084a483          	lw	s1,8(s1)
    );
800002f0:	00050593          	mv	a1,a0
800002f4:	000a0513          	mv	a0,s4
800002f8:	044060ef          	jal	ra,8000633c <__addsf3>
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
8000063c:	5bd060ef          	jal	ra,800073f8 <__floatsisf>
80000640:	00a12023          	sw	a0,0(sp)
80000644:	000a8513          	mv	a0,s5
80000648:	5b1060ef          	jal	ra,800073f8 <__floatsisf>
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
800006ac:	54d060ef          	jal	ra,800073f8 <__floatsisf>
800006b0:	000c0593          	mv	a1,s8
800006b4:	00050c93          	mv	s9,a0
800006b8:	0b0060ef          	jal	ra,80006768 <__divsf3>
800006bc:	00012583          	lw	a1,0(sp)
800006c0:	558060ef          	jal	ra,80006c18 <__mulsf3>
800006c4:	4c5060ef          	jal	ra,80007388 <__fixsfsi>
800006c8:	01350433          	add	s0,a0,s3
800006cc:	19490263          	beq	s2,s4,80000850 <_Z8trianglePt4Vec2IiES1_S1_5color+0x2dc>
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
800006d0:	01812503          	lw	a0,24(sp)
800006d4:	525060ef          	jal	ra,800073f8 <__floatsisf>
800006d8:	00a12623          	sw	a0,12(sp)
        int segment_height = second_half ? t2.y-t1.y : t1.y-t0.y; 
        float alpha = (float)i/total_height; 
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
800006dc:	00412503          	lw	a0,4(sp)
800006e0:	519060ef          	jal	ra,800073f8 <__floatsisf>
800006e4:	00050593          	mv	a1,a0
800006e8:	000c8513          	mv	a0,s9
800006ec:	07c060ef          	jal	ra,80006768 <__divsf3>
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
800006f0:	00c12703          	lw	a4,12(sp)
800006f4:	00050593          	mv	a1,a0
800006f8:	00070513          	mv	a0,a4
800006fc:	51c060ef          	jal	ra,80006c18 <__mulsf3>
80000700:	489060ef          	jal	ra,80007388 <__fixsfsi>
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
800007a8:	451060ef          	jal	ra,800073f8 <__floatsisf>
800007ac:	000c0593          	mv	a1,s8
800007b0:	7b9050ef          	jal	ra,80006768 <__divsf3>
800007b4:	00012583          	lw	a1,0(sp)
800007b8:	460060ef          	jal	ra,80006c18 <__mulsf3>
800007bc:	3cd060ef          	jal	ra,80007388 <__fixsfsi>
800007c0:	01350cb3          	add	s9,a0,s3
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
800007c4:	00040513          	mv	a0,s0
800007c8:	431060ef          	jal	ra,800073f8 <__floatsisf>
800007cc:	00050a13          	mv	s4,a0
800007d0:	00c12503          	lw	a0,12(sp)
800007d4:	425060ef          	jal	ra,800073f8 <__floatsisf>
800007d8:	00050593          	mv	a1,a0
800007dc:	000a0513          	mv	a0,s4
800007e0:	789050ef          	jal	ra,80006768 <__divsf3>
800007e4:	00050a13          	mv	s4,a0
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
800007e8:	00812503          	lw	a0,8(sp)
800007ec:	40d060ef          	jal	ra,800073f8 <__floatsisf>
800007f0:	00050593          	mv	a1,a0
800007f4:	000a0513          	mv	a0,s4
800007f8:	420060ef          	jal	ra,80006c18 <__mulsf3>
800007fc:	38d060ef          	jal	ra,80007388 <__fixsfsi>
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
80000858:	3a1060ef          	jal	ra,800073f8 <__floatsisf>
8000085c:	00050c93          	mv	s9,a0
80000860:	000a8513          	mv	a0,s5
80000864:	395060ef          	jal	ra,800073f8 <__floatsisf>
80000868:	00050593          	mv	a1,a0
8000086c:	000c8513          	mv	a0,s9
80000870:	6f9050ef          	jal	ra,80006768 <__divsf3>
80000874:	00050c93          	mv	s9,a0
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
80000878:	01012503          	lw	a0,16(sp)
8000087c:	37d060ef          	jal	ra,800073f8 <__floatsisf>
80000880:	00050593          	mv	a1,a0
80000884:	000c8513          	mv	a0,s9
80000888:	390060ef          	jal	ra,80006c18 <__mulsf3>
8000088c:	2fd060ef          	jal	ra,80007388 <__fixsfsi>
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
8000093c:	0088df13          	srli	t5,a7,0x8
80000940:	03312e23          	sw	s3,60(sp)
80000944:	03412c23          	sw	s4,56(sp)
80000948:	00060993          	mv	s3,a2
8000094c:	00058a13          	mv	s4,a1
80000950:	00070613          	mv	a2,a4
80000954:	00068593          	mv	a1,a3
    int dy = abs(y1 - y0);
80000958:	41370733          	sub	a4,a4,s3
    int dx = abs(x1 - x0);
8000095c:	414686b3          	sub	a3,a3,s4
80000960:	0ff8ff93          	andi	t6,a7,255
80000964:	0fff7f13          	andi	t5,t5,255
80000968:	41f6d393          	srai	t2,a3,0x1f
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
8000096c:	003fde93          	srli	t4,t6,0x3
void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
80000970:	04112623          	sw	ra,76(sp)
80000974:	0108d893          	srli	a7,a7,0x10
    int dy = abs(y1 - y0);
80000978:	41f75093          	srai	ra,a4,0x1f
    int sx = (x0 < x1) ? 1 : -1;
8000097c:	00ba2e33          	slt	t3,s4,a1
    int sy = (y0 < y1) ? 1 : -1;
80000980:	00c9a333          	slt	t1,s3,a2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000984:	002f5293          	srli	t0,t5,0x2
    int dx = abs(x1 - x0);
80000988:	00d3c6b3          	xor	a3,t2,a3
    int dy = abs(y1 - y0);
8000098c:	00e0c733          	xor	a4,ra,a4
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
80000990:	00529293          	slli	t0,t0,0x5
void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
80000994:	05212023          	sw	s2,64(sp)
80000998:	0ff8f893          	andi	a7,a7,255
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
8000099c:	00be9913          	slli	s2,t4,0xb
    int sx = (x0 < x1) ? 1 : -1;
800009a0:	41c00e33          	neg	t3,t3
    int sy = (y0 < y1) ? 1 : -1;
800009a4:	40600333          	neg	t1,t1
    int dy = abs(y1 - y0);
800009a8:	40170733          	sub	a4,a4,ra
    int dx = abs(x1 - x0);
800009ac:	407686b3          	sub	a3,a3,t2
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800009b0:	00596933          	or	s2,s2,t0
    int sx = (x0 < x1) ? 1 : -1;
800009b4:	002e7e13          	andi	t3,t3,2
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
800009b8:	0038d293          	srli	t0,a7,0x3
    int sy = (y0 < y1) ? 1 : -1;
800009bc:	00237313          	andi	t1,t1,2
void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
800009c0:	04812423          	sw	s0,72(sp)
800009c4:	04912223          	sw	s1,68(sp)
800009c8:	03512a23          	sw	s5,52(sp)
800009cc:	03612823          	sw	s6,48(sp)
800009d0:	00050a93          	mv	s5,a0
800009d4:	00080413          	mv	s0,a6
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800009d8:	00596933          	or	s2,s2,t0
void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
800009dc:	03712623          	sw	s7,44(sp)
800009e0:	00078493          	mv	s1,a5
    int sx = (x0 < x1) ? 1 : -1;
800009e4:	fffe0e13          	addi	t3,t3,-1
    int sy = (y0 < y1) ? 1 : -1;
800009e8:	fff30313          	addi	t1,t1,-1
    int err = dx - dy;
800009ec:	40e68eb3          	sub	t4,a3,a4
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
800009f0:	00098813          	mv	a6,s3
800009f4:	000a0513          	mv	a0,s4
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
800009f8:	31f00b13          	li	s6,799
800009fc:	1df00093          	li	ra,479
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000a00:	1e100393          	li	t2,481
        if (e2 > -dy) {
80000a04:	40e002b3          	neg	t0,a4
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000a08:	41038bb3          	sub	s7,t2,a6
    pixels[y * WIDTH + x] = color;
80000a0c:	001b9793          	slli	a5,s7,0x1
80000a10:	017787b3          	add	a5,a5,s7
80000a14:	00379793          	slli	a5,a5,0x3
80000a18:	017787b3          	add	a5,a5,s7
80000a1c:	00579793          	slli	a5,a5,0x5
80000a20:	00a787b3          	add	a5,a5,a0
80000a24:	00179793          	slli	a5,a5,0x1
        int e2 = 2 * err;
80000a28:	001e9b93          	slli	s7,t4,0x1
    pixels[y * WIDTH + x] = color;
80000a2c:	00fa87b3          	add	a5,s5,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000a30:	00ab6663          	bltu	s6,a0,80000a3c <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x104>
80000a34:	0100e463          	bltu	ra,a6,80000a3c <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x104>
    pixels[y * WIDTH + x] = color;
80000a38:	01279023          	sh	s2,0(a5)
        if (x0 == x1 && y0 == y1) break;
80000a3c:	02a58063          	beq	a1,a0,80000a5c <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x124>
        if (e2 > -dy) {
80000a40:	0172d663          	bge	t0,s7,80000a4c <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x114>
            err -= dy;
80000a44:	40ee8eb3          	sub	t4,t4,a4
            x0 += sx;
80000a48:	01c50533          	add	a0,a0,t3
        if (e2 < dx) {
80000a4c:	fadbdee3          	bge	s7,a3,80000a08 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0xd0>
            err += dx;
80000a50:	00de8eb3          	add	t4,t4,a3
            y0 += sy;
80000a54:	00680833          	add	a6,a6,t1
80000a58:	fb1ff06f          	j	80000a08 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0xd0>
        if (x0 == x1 && y0 == y1) break;
80000a5c:	ff0612e3          	bne	a2,a6,80000a40 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x108>
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
    draw_line(pixels, t1.x, t1.y, t2.x, t2.y, col.r, col.g, col.b);
80000a60:	000f8793          	mv	a5,t6
80000a64:	00040713          	mv	a4,s0
80000a68:	00048693          	mv	a3,s1
80000a6c:	000a8513          	mv	a0,s5
80000a70:	000f0813          	mv	a6,t5
80000a74:	a1dff0ef          	jal	ra,80000490 <_Z9draw_linePtiiiihhh>
    int dx = abs(x1 - x0);
80000a78:	409a0533          	sub	a0,s4,s1
    int dy = abs(y1 - y0);
80000a7c:	40898733          	sub	a4,s3,s0
80000a80:	41f75593          	srai	a1,a4,0x1f
    int dx = abs(x1 - x0);
80000a84:	41f55793          	srai	a5,a0,0x1f
    int sx = (x0 < x1) ? 1 : -1;
80000a88:	0144a633          	slt	a2,s1,s4
    int sy = (y0 < y1) ? 1 : -1;
80000a8c:	013426b3          	slt	a3,s0,s3
    int dy = abs(y1 - y0);
80000a90:	00e5c733          	xor	a4,a1,a4
    int dx = abs(x1 - x0);
80000a94:	00a7c533          	xor	a0,a5,a0
    int sx = (x0 < x1) ? 1 : -1;
80000a98:	40c00633          	neg	a2,a2
    int sy = (y0 < y1) ? 1 : -1;
80000a9c:	40d006b3          	neg	a3,a3
    int dy = abs(y1 - y0);
80000aa0:	40b70733          	sub	a4,a4,a1
    int dx = abs(x1 - x0);
80000aa4:	40f50533          	sub	a0,a0,a5
    int sx = (x0 < x1) ? 1 : -1;
80000aa8:	00267613          	andi	a2,a2,2
    int sy = (y0 < y1) ? 1 : -1;
80000aac:	0026f693          	andi	a3,a3,2
    int sx = (x0 < x1) ? 1 : -1;
80000ab0:	fff60613          	addi	a2,a2,-1
    int sy = (y0 < y1) ? 1 : -1;
80000ab4:	fff68693          	addi	a3,a3,-1
    int err = dx - dy;
80000ab8:	40e505b3          	sub	a1,a0,a4
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000abc:	31f00e93          	li	t4,799
80000ac0:	1df00e13          	li	t3,479
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000ac4:	1e100313          	li	t1,481
        if (e2 > -dy) {
80000ac8:	40e008b3          	neg	a7,a4
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
80000acc:	40830833          	sub	a6,t1,s0
    pixels[y * WIDTH + x] = color;
80000ad0:	00181793          	slli	a5,a6,0x1
80000ad4:	010787b3          	add	a5,a5,a6
80000ad8:	00379793          	slli	a5,a5,0x3
80000adc:	010787b3          	add	a5,a5,a6
80000ae0:	00579793          	slli	a5,a5,0x5
80000ae4:	009787b3          	add	a5,a5,s1
80000ae8:	00179793          	slli	a5,a5,0x1
        int e2 = 2 * err;
80000aec:	00159813          	slli	a6,a1,0x1
    pixels[y * WIDTH + x] = color;
80000af0:	00fa87b3          	add	a5,s5,a5
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
80000af4:	009ee663          	bltu	t4,s1,80000b00 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1c8>
80000af8:	008e6463          	bltu	t3,s0,80000b00 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1c8>
    pixels[y * WIDTH + x] = color;
80000afc:	01279023          	sh	s2,0(a5)
        if (x0 == x1 && y0 == y1) break;
80000b00:	029a0063          	beq	s4,s1,80000b20 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1e8>
        if (e2 > -dy) {
80000b04:	0108d663          	bge	a7,a6,80000b10 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1d8>
            err -= dy;
80000b08:	40e585b3          	sub	a1,a1,a4
            x0 += sx;
80000b0c:	00c484b3          	add	s1,s1,a2
        if (e2 < dx) {
80000b10:	faa85ee3          	bge	a6,a0,80000acc <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x194>
            err += dx;
80000b14:	00a585b3          	add	a1,a1,a0
            y0 += sy;
80000b18:	00d40433          	add	s0,s0,a3
80000b1c:	fb1ff06f          	j	80000acc <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x194>
        if (x0 == x1 && y0 == y1) break;
80000b20:	fe8992e3          	bne	s3,s0,80000b04 <_Z18triangle_wireframePt4Vec2IiES1_S1_5color+0x1cc>
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
}
80000b24:	04c12083          	lw	ra,76(sp)
80000b28:	04812403          	lw	s0,72(sp)
80000b2c:	04412483          	lw	s1,68(sp)
80000b30:	04012903          	lw	s2,64(sp)
80000b34:	03c12983          	lw	s3,60(sp)
80000b38:	03812a03          	lw	s4,56(sp)
80000b3c:	03412a83          	lw	s5,52(sp)
80000b40:	03012b03          	lw	s6,48(sp)
80000b44:	02c12b83          	lw	s7,44(sp)
80000b48:	05010113          	addi	sp,sp,80
80000b4c:	00008067          	ret

80000b50 <_Z14uart_read_bytev>:

#define LSR_DR          0x01

uint8_t uart_read_byte() {
    // Wait until data is ready
    while ((*(volatile uint8_t *)UART_REG_LSR & LSR_DR) == 0);
80000b50:	10000737          	lui	a4,0x10000
80000b54:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
80000b58:	0017f793          	andi	a5,a5,1
80000b5c:	fe078ce3          	beqz	a5,80000b54 <_Z14uart_read_bytev+0x4>
    // Read received byte
    return *(volatile uint8_t *)UART_REG_RBR;
80000b60:	00074503          	lbu	a0,0(a4)
}
80000b64:	00008067          	ret

80000b68 <_Z11vOutNS16550h>:

static uint8_t readb( uintptr_t addr )
{
	return *( (volatile uint8_t *) addr );
80000b68:	10000737          	lui	a4,0x10000
80000b6c:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>

    // uintptr_t *ptr = (uintptr_t *) UART_ADDRESS;
    // ptr[0] = c;
    // putch(129,'T', 15);
    // uintptr_t ptr = (uintptr_t *)UART_ADDRESS;
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80000b70:	0207f793          	andi	a5,a5,32
80000b74:	fe078ce3          	beqz	a5,80000b6c <_Z11vOutNS16550h+0x4>
	*( (uint8_t *) addr ) = b;
80000b78:	00a70023          	sb	a0,0(a4)
		/* busy wait */
	}
	writeb( c, UART_ADDRESS + REG_THR );
}
80000b7c:	00008067          	ret

80000b80 <_Z8get_timev>:

long get_time() {
    // Read the current time from the mtime register
    volatile unsigned long *mtime = (volatile unsigned long *)MTIME_ADDR;
    return *mtime;
80000b80:	0200c7b7          	lui	a5,0x200c
80000b84:	ff87a503          	lw	a0,-8(a5) # 200bff8 <_stack_size+0x2003ff8>
}
80000b88:	00008067          	ret

80000b8c <_Z9getButtonc>:
// }
// *****************************************************************************
// returns 1 if the button is pressed, 0 otherwise
char getButton(char btn){
    char *buttons = (char *)BUTTONS;
    return buttons[btn];
80000b8c:	890007b7          	lui	a5,0x89000
80000b90:	00a78533          	add	a0,a5,a0
}
80000b94:	00054503          	lbu	a0,0(a0)
80000b98:	00008067          	ret

80000b9c <_Z13getButtonDownv>:
char getButtonDown(){
    char *buttons = (char *)BUTTONS;
    return buttons[0];
80000b9c:	890007b7          	lui	a5,0x89000
}
80000ba0:	0007c503          	lbu	a0,0(a5) # 89000000 <_stack_top+0x8c00000>
80000ba4:	00008067          	ret

80000ba8 <_Z11getButtonUpv>:
char getButtonUp(){
    char *buttons = (char *)BUTTONS;
    return buttons[1];
80000ba8:	890007b7          	lui	a5,0x89000
}
80000bac:	0017c503          	lbu	a0,1(a5) # 89000001 <_stack_top+0x8c00001>
80000bb0:	00008067          	ret

80000bb4 <_Z13getButtonLeftv>:
char getButtonLeft(){
    char *buttons = (char *)BUTTONS;
    return buttons[2];
80000bb4:	890007b7          	lui	a5,0x89000
}
80000bb8:	0027c503          	lbu	a0,2(a5) # 89000002 <_stack_top+0x8c00002>
80000bbc:	00008067          	ret

80000bc0 <_Z14getButtonRightv>:
char getButtonRight(){
    char *buttons = (char *)BUTTONS;
    return buttons[3];
80000bc0:	890007b7          	lui	a5,0x89000
}
80000bc4:	0037c503          	lbu	a0,3(a5) # 89000003 <_stack_top+0x8c00003>
80000bc8:	00008067          	ret

80000bcc <_Z5putchicc>:

// *****************************************************************************
// Puts a character at the specified location with the specified color.
// The colors are as the Text Mode format in https://en.wikipedia.org/wiki/VGA_text_mode
unsigned char putch(int location, char c, char color) {
80000bcc:	00050793          	mv	a5,a0
    if(location<0){
80000bd0:	02054863          	bltz	a0,80000c00 <_Z5putchicc+0x34>
        vOutNS16550(c);
        return 0;
    }
    if(location>SCREEN_SIZE){
80000bd4:	4c000713          	li	a4,1216
        return 0;
80000bd8:	00000513          	li	a0,0
    if(location>SCREEN_SIZE){
80000bdc:	02f74063          	blt	a4,a5,80000bfc <_Z5putchicc+0x30>
    }
    // for the big screen
    volatile unsigned short *screen = (unsigned short *)SCREEN_LOCATION;
    unsigned short buffer = (color << 8) | c;
    screen[location] = buffer;
80000be0:	88000537          	lui	a0,0x88000
    unsigned short buffer = (color << 8) | c;
80000be4:	00861613          	slli	a2,a2,0x8
    screen[location] = buffer;
80000be8:	00179793          	slli	a5,a5,0x1
80000bec:	00f507b3          	add	a5,a0,a5
    unsigned short buffer = (color << 8) | c;
80000bf0:	00b66633          	or	a2,a2,a1
    screen[location] = buffer;
80000bf4:	00c79023          	sh	a2,0(a5)
    return 1;
80000bf8:	00100513          	li	a0,1
}
80000bfc:	00008067          	ret
	return *( (volatile uint8_t *) addr );
80000c00:	10000737          	lui	a4,0x10000
80000c04:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80000c08:	0207f793          	andi	a5,a5,32
80000c0c:	fe078ce3          	beqz	a5,80000c04 <_Z5putchicc+0x38>
	*( (uint8_t *) addr ) = b;
80000c10:	00b70023          	sb	a1,0(a4)
80000c14:	00000513          	li	a0,0
80000c18:	00008067          	ret

80000c1c <_Z11printStringiPcc>:
// Prints the string. If color is 0, it will print in rainbow colors
// If this returns 0, there was an error
unsigned int printString(int location, char *string, char color){
    int i = 0;
    char rainbow=0;
    if(color==0){
80000c1c:	08061863          	bnez	a2,80000cac <_Z11printStringiPcc+0x90>
80000c20:	00000793          	li	a5,0
        rainbow=1;
        color=1;
80000c24:	00100693          	li	a3,1
    }
    while(string[i] != '\0'){
        if(string[i]=='\n'){
80000c28:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80000c2c:	4c000f13          	li	t5,1216
    screen[location] = buffer;
80000c30:	88000e37          	lui	t3,0x88000
            return 0;
        }
        i++;
        if(rainbow==1){
            color++;
            if(color>15){
80000c34:	00f00e93          	li	t4,15
    while(string[i] != '\0'){
80000c38:	00f58733          	add	a4,a1,a5
80000c3c:	00074703          	lbu	a4,0(a4)
        if(!putch(location + i, string[i],color)){
80000c40:	00f50633          	add	a2,a0,a5
    while(string[i] != '\0'){
80000c44:	04070a63          	beqz	a4,80000c98 <_Z11printStringiPcc+0x7c>
        if(string[i]=='\n'){
80000c48:	0c670663          	beq	a4,t1,80000d14 <_Z11printStringiPcc+0xf8>
    unsigned short buffer = (color << 8) | c;
80000c4c:	00869893          	slli	a7,a3,0x8
    screen[location] = buffer;
80000c50:	00161813          	slli	a6,a2,0x1
            color++;
80000c54:	00168693          	addi	a3,a3,1
    unsigned short buffer = (color << 8) | c;
80000c58:	00e8e8b3          	or	a7,a7,a4
    screen[location] = buffer;
80000c5c:	010e0833          	add	a6,t3,a6
            color++;
80000c60:	0ff6f693          	andi	a3,a3,255
    if(location<0){
80000c64:	00064e63          	bltz	a2,80000c80 <_Z11printStringiPcc+0x64>
    if(location>SCREEN_SIZE){
80000c68:	02cf4c63          	blt	t5,a2,80000ca0 <_Z11printStringiPcc+0x84>
    screen[location] = buffer;
80000c6c:	01181023          	sh	a7,0(a6)
            if(color>15){
80000c70:	00def463          	bgeu	t4,a3,80000c78 <_Z11printStringiPcc+0x5c>
                color=1;
80000c74:	00100693          	li	a3,1
80000c78:	00178793          	addi	a5,a5,1
80000c7c:	fbdff06f          	j	80000c38 <_Z11printStringiPcc+0x1c>
	return *( (volatile uint8_t *) addr );
80000c80:	100006b7          	lui	a3,0x10000
80000c84:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80000c88:	0207f793          	andi	a5,a5,32
80000c8c:	fe078ce3          	beqz	a5,80000c84 <_Z11printStringiPcc+0x68>
	*( (uint8_t *) addr ) = b;
80000c90:	00e68023          	sb	a4,0(a3)
            return 0;
80000c94:	00000793          	li	a5,0
            }
        }
    }
    return i;
}
80000c98:	00078513          	mv	a0,a5
80000c9c:	00008067          	ret
            return 0;
80000ca0:	00000793          	li	a5,0
}
80000ca4:	00078513          	mv	a0,a5
80000ca8:	00008067          	ret
    unsigned short buffer = (color << 8) | c;
80000cac:	00861613          	slli	a2,a2,0x8
80000cb0:	01061893          	slli	a7,a2,0x10
80000cb4:	4108d893          	srai	a7,a7,0x10
80000cb8:	00000793          	li	a5,0
        if(string[i]=='\n'){
80000cbc:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80000cc0:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80000cc4:	88000e37          	lui	t3,0x88000
    while(string[i] != '\0'){
80000cc8:	00f58733          	add	a4,a1,a5
80000ccc:	00074703          	lbu	a4,0(a4)
        if(!putch(location + i, string[i],color)){
80000cd0:	00a78633          	add	a2,a5,a0
    while(string[i] != '\0'){
80000cd4:	fc0702e3          	beqz	a4,80000c98 <_Z11printStringiPcc+0x7c>
        if(string[i]=='\n'){
80000cd8:	02670663          	beq	a4,t1,80000d04 <_Z11printStringiPcc+0xe8>
    unsigned short buffer = (color << 8) | c;
80000cdc:	00e8e6b3          	or	a3,a7,a4
    screen[location] = buffer;
80000ce0:	00161813          	slli	a6,a2,0x1
    unsigned short buffer = (color << 8) | c;
80000ce4:	01069693          	slli	a3,a3,0x10
80000ce8:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
80000cec:	010e0833          	add	a6,t3,a6
    if(location<0){
80000cf0:	f80648e3          	bltz	a2,80000c80 <_Z11printStringiPcc+0x64>
    if(location>SCREEN_SIZE){
80000cf4:	facec6e3          	blt	t4,a2,80000ca0 <_Z11printStringiPcc+0x84>
    screen[location] = buffer;
80000cf8:	00d81023          	sh	a3,0(a6)
        if(rainbow==1){
80000cfc:	00178793          	addi	a5,a5,1
80000d00:	fc9ff06f          	j	80000cc8 <_Z11printStringiPcc+0xac>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80000d04:	fc057513          	andi	a0,a0,-64
80000d08:	04050513          	addi	a0,a0,64 # 88000040 <_stack_top+0x7c00040>
            continue;
80000d0c:	00178793          	addi	a5,a5,1
80000d10:	fb9ff06f          	j	80000cc8 <_Z11printStringiPcc+0xac>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80000d14:	fc057513          	andi	a0,a0,-64
80000d18:	04050513          	addi	a0,a0,64
            continue;
80000d1c:	00178793          	addi	a5,a5,1
80000d20:	f19ff06f          	j	80000c38 <_Z11printStringiPcc+0x1c>

80000d24 <_Z8printHexiic>:

// *****************************************************************************
// Prints the hex value at the specified location. If color is 0, it will print in rainbow colors
unsigned char printHex(int location, int value, char color) {
    char hexChars[] = "0123456789ABCDEF";
80000d24:	00008797          	auipc	a5,0x8
80000d28:	eb878793          	addi	a5,a5,-328 # 80008bdc <_etext+0xfe0>
80000d2c:	0107c803          	lbu	a6,16(a5)
80000d30:	0007af03          	lw	t5,0(a5)
80000d34:	0047ae83          	lw	t4,4(a5)
80000d38:	0087ae03          	lw	t3,8(a5)
80000d3c:	00c7a883          	lw	a7,12(a5)
unsigned char printHex(int location, int value, char color) {
80000d40:	fe010113          	addi	sp,sp,-32
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
    buffer[8] = '\0'; // Null-terminate the string
    
    for(int i = 7; i >= 0; i--) {
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80000d44:	40c5d793          	srai	a5,a1,0xc
80000d48:	4085d713          	srai	a4,a1,0x8
80000d4c:	4185d693          	srai	a3,a1,0x18
    char hexChars[] = "0123456789ABCDEF";
80000d50:	01010e23          	sb	a6,28(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80000d54:	01c5d313          	srli	t1,a1,0x1c
80000d58:	02010813          	addi	a6,sp,32
80000d5c:	00f7f793          	andi	a5,a5,15
80000d60:	00f77713          	andi	a4,a4,15
80000d64:	00f6f693          	andi	a3,a3,15
    char hexChars[] = "0123456789ABCDEF";
80000d68:	01112c23          	sw	a7,24(sp)
80000d6c:	01e12623          	sw	t5,12(sp)
80000d70:	01d12823          	sw	t4,16(sp)
80000d74:	01c12a23          	sw	t3,20(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80000d78:	00e80733          	add	a4,a6,a4
80000d7c:	00680333          	add	t1,a6,t1
80000d80:	00d806b3          	add	a3,a6,a3
80000d84:	00f807b3          	add	a5,a6,a5
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80000d88:	4045d893          	srai	a7,a1,0x4
80000d8c:	4145d813          	srai	a6,a1,0x14
80000d90:	fec74f83          	lbu	t6,-20(a4)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80000d94:	fec6cf03          	lbu	t5,-20(a3)
80000d98:	fec34703          	lbu	a4,-20(t1)
80000d9c:	02010693          	addi	a3,sp,32
80000da0:	fec7c783          	lbu	a5,-20(a5)
80000da4:	00f8f893          	andi	a7,a7,15
80000da8:	00f87813          	andi	a6,a6,15
80000dac:	011688b3          	add	a7,a3,a7
80000db0:	01068833          	add	a6,a3,a6
80000db4:	ffff0337          	lui	t1,0xffff0
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80000db8:	4105d693          	srai	a3,a1,0x10
80000dbc:	0ff30313          	addi	t1,t1,255 # ffff00ff <_stack_top+0x7fbf00ff>
80000dc0:	fec8ce83          	lbu	t4,-20(a7)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80000dc4:	fec84e03          	lbu	t3,-20(a6)
80000dc8:	00f5f593          	andi	a1,a1,15
80000dcc:	02010813          	addi	a6,sp,32
80000dd0:	00f6f693          	andi	a3,a3,15
80000dd4:	00b805b3          	add	a1,a6,a1
80000dd8:	00d806b3          	add	a3,a6,a3
80000ddc:	0067f7b3          	and	a5,a5,t1
80000de0:	00677733          	and	a4,a4,t1
80000de4:	008f9f93          	slli	t6,t6,0x8
80000de8:	008f1f13          	slli	t5,t5,0x8
80000dec:	ff010837          	lui	a6,0xff010
80000df0:	fff80813          	addi	a6,a6,-1 # ff00ffff <_stack_top+0x7ec0ffff>
80000df4:	fec5c883          	lbu	a7,-20(a1)
80000df8:	01f7e7b3          	or	a5,a5,t6
80000dfc:	fec6c583          	lbu	a1,-20(a3)
80000e00:	01e76733          	or	a4,a4,t5
80000e04:	0107f7b3          	and	a5,a5,a6
80000e08:	01077733          	and	a4,a4,a6
80000e0c:	010e9e93          	slli	t4,t4,0x10
80000e10:	010e1313          	slli	t1,t3,0x10
80000e14:	010006b7          	lui	a3,0x1000
80000e18:	fff68693          	addi	a3,a3,-1 # ffffff <_stack_size+0xff7fff>
80000e1c:	01d7e7b3          	or	a5,a5,t4
80000e20:	00676733          	or	a4,a4,t1
80000e24:	01889813          	slli	a6,a7,0x18
80000e28:	00d7f7b3          	and	a5,a5,a3
80000e2c:	01859593          	slli	a1,a1,0x18
80000e30:	00d77733          	and	a4,a4,a3
80000e34:	0107e7b3          	or	a5,a5,a6
80000e38:	00b76733          	or	a4,a4,a1
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80000e3c:	00010423          	sb	zero,8(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80000e40:	00e12023          	sw	a4,0(sp)
80000e44:	00f12223          	sw	a5,4(sp)
    if(color==0){
80000e48:	08061a63          	bnez	a2,80000edc <_Z8printHexiic+0x1b8>
80000e4c:	00010593          	mv	a1,sp
80000e50:	00000793          	li	a5,0
        color=1;
80000e54:	00100693          	li	a3,1
        if(string[i]=='\n'){
80000e58:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80000e5c:	4c000f13          	li	t5,1216
    screen[location] = buffer;
80000e60:	88000e37          	lui	t3,0x88000
            if(color>15){
80000e64:	00f00e93          	li	t4,15
    while(string[i] != '\0'){
80000e68:	0005c703          	lbu	a4,0(a1)
        if(!putch(location + i, string[i],color)){
80000e6c:	00a78633          	add	a2,a5,a0
    while(string[i] != '\0'){
80000e70:	0c070863          	beqz	a4,80000f40 <_Z8printHexiic+0x21c>
        if(string[i]=='\n'){
80000e74:	0e670263          	beq	a4,t1,80000f58 <_Z8printHexiic+0x234>
    unsigned short buffer = (color << 8) | c;
80000e78:	00869893          	slli	a7,a3,0x8
    screen[location] = buffer;
80000e7c:	00161813          	slli	a6,a2,0x1
            color++;
80000e80:	00168693          	addi	a3,a3,1
    unsigned short buffer = (color << 8) | c;
80000e84:	00e8e8b3          	or	a7,a7,a4
    screen[location] = buffer;
80000e88:	010e0833          	add	a6,t3,a6
            color++;
80000e8c:	0ff6f693          	andi	a3,a3,255
    if(location<0){
80000e90:	02064063          	bltz	a2,80000eb0 <_Z8printHexiic+0x18c>
    if(location>SCREEN_SIZE){
80000e94:	02cf4e63          	blt	t5,a2,80000ed0 <_Z8printHexiic+0x1ac>
    screen[location] = buffer;
80000e98:	01181023          	sh	a7,0(a6)
            if(color>15){
80000e9c:	00def463          	bgeu	t4,a3,80000ea4 <_Z8printHexiic+0x180>
                color=1;
80000ea0:	00100693          	li	a3,1
80000ea4:	00178793          	addi	a5,a5,1
80000ea8:	00158593          	addi	a1,a1,1
80000eac:	fbdff06f          	j	80000e68 <_Z8printHexiic+0x144>
	return *( (volatile uint8_t *) addr );
80000eb0:	100006b7          	lui	a3,0x10000
80000eb4:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80000eb8:	0207f793          	andi	a5,a5,32
80000ebc:	fe078ce3          	beqz	a5,80000eb4 <_Z8printHexiic+0x190>
	*( (uint8_t *) addr ) = b;
80000ec0:	00e68023          	sb	a4,0(a3)
80000ec4:	00000513          	li	a0,0
    }
    return printString(location, buffer, color);
}
80000ec8:	02010113          	addi	sp,sp,32
80000ecc:	00008067          	ret
    if(location>SCREEN_SIZE){
80000ed0:	00000513          	li	a0,0
}
80000ed4:	02010113          	addi	sp,sp,32
80000ed8:	00008067          	ret
80000edc:	00010813          	mv	a6,sp
    while(string[i] != '\0'){
80000ee0:	00084703          	lbu	a4,0(a6)
    unsigned short buffer = (color << 8) | c;
80000ee4:	00861613          	slli	a2,a2,0x8
80000ee8:	01061893          	slli	a7,a2,0x10
80000eec:	00000793          	li	a5,0
80000ef0:	4108d893          	srai	a7,a7,0x10
        if(string[i]=='\n'){
80000ef4:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80000ef8:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80000efc:	88000e37          	lui	t3,0x88000
        if(!putch(location + i, string[i],color)){
80000f00:	00a78633          	add	a2,a5,a0
    while(string[i] != '\0'){
80000f04:	02070e63          	beqz	a4,80000f40 <_Z8printHexiic+0x21c>
        if(string[i]=='\n'){
80000f08:	04670263          	beq	a4,t1,80000f4c <_Z8printHexiic+0x228>
    unsigned short buffer = (color << 8) | c;
80000f0c:	00e8e6b3          	or	a3,a7,a4
    screen[location] = buffer;
80000f10:	00161593          	slli	a1,a2,0x1
    unsigned short buffer = (color << 8) | c;
80000f14:	01069693          	slli	a3,a3,0x10
80000f18:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
80000f1c:	00be05b3          	add	a1,t3,a1
    if(location<0){
80000f20:	f80648e3          	bltz	a2,80000eb0 <_Z8printHexiic+0x18c>
    if(location>SCREEN_SIZE){
80000f24:	facec6e3          	blt	t4,a2,80000ed0 <_Z8printHexiic+0x1ac>
    screen[location] = buffer;
80000f28:	00d59023          	sh	a3,0(a1)
        if(rainbow==1){
80000f2c:	00180813          	addi	a6,a6,1
    while(string[i] != '\0'){
80000f30:	00084703          	lbu	a4,0(a6)
80000f34:	00178793          	addi	a5,a5,1
        if(!putch(location + i, string[i],color)){
80000f38:	00a78633          	add	a2,a5,a0
    while(string[i] != '\0'){
80000f3c:	fc0716e3          	bnez	a4,80000f08 <_Z8printHexiic+0x1e4>
80000f40:	0ff7f513          	andi	a0,a5,255
}
80000f44:	02010113          	addi	sp,sp,32
80000f48:	00008067          	ret
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80000f4c:	fc057513          	andi	a0,a0,-64
80000f50:	04050513          	addi	a0,a0,64
            continue;
80000f54:	fd9ff06f          	j	80000f2c <_Z8printHexiic+0x208>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80000f58:	fc057513          	andi	a0,a0,-64
80000f5c:	04050513          	addi	a0,a0,64
            continue;
80000f60:	00178793          	addi	a5,a5,1
80000f64:	00158593          	addi	a1,a1,1
80000f68:	f01ff06f          	j	80000e68 <_Z8printHexiic+0x144>

80000f6c <_Z8printDeciic>:

// *****************************************************************************
// Prints the decimal value at the specified location. If color is 0, it will print in rainbow colors
unsigned char printDec(int location, int num, char color) {
80000f6c:	fd010113          	addi	sp,sp,-48
80000f70:	02812423          	sw	s0,40(sp)
80000f74:	02912223          	sw	s1,36(sp)
80000f78:	03212023          	sw	s2,32(sp)
80000f7c:	02112623          	sw	ra,44(sp)
80000f80:	01312e23          	sw	s3,28(sp)
80000f84:	01412c23          	sw	s4,24(sp)
80000f88:	00058413          	mv	s0,a1
80000f8c:	00050493          	mv	s1,a0
80000f90:	00060913          	mv	s2,a2
    char digits[12]; // Enough for -2147483648 + null terminator
    int index = 0;
    int isNegative = 0;

    // Handle zero explicitly
    if (num == 0) {
80000f94:	30058463          	beqz	a1,8000129c <_Z8printDeciic+0x330>
        digits[index] = '\0';
        return printString(location, digits, color);
    }

    // Handle negative numbers
    if (num < 0) {
80000f98:	2a05c463          	bltz	a1,80001240 <_Z8printDeciic+0x2d4>
    }

    // Convert number to string in reverse
    unsigned int absNum = (unsigned int)num;
    while (absNum > 0) {
        digits[index++] = '0' + (absNum % 10);
80000f9c:	00a00593          	li	a1,10
80000fa0:	00040513          	mv	a0,s0
80000fa4:	660060ef          	jal	ra,80007604 <__umodsi3>
80000fa8:	03050793          	addi	a5,a0,48
        absNum /= 10;
80000fac:	00a00593          	li	a1,10
80000fb0:	00040513          	mv	a0,s0
        digits[index++] = '0' + (absNum % 10);
80000fb4:	00f10223          	sb	a5,4(sp)
        absNum /= 10;
80000fb8:	604060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
80000fbc:	00900793          	li	a5,9
80000fc0:	5287dc63          	bge	a5,s0,800014f8 <_Z8printDeciic+0x58c>
        digits[index++] = '0' + (absNum % 10);
80000fc4:	00a00593          	li	a1,10
80000fc8:	63c060ef          	jal	ra,80007604 <__umodsi3>
80000fcc:	03050793          	addi	a5,a0,48
        absNum /= 10;
80000fd0:	06400593          	li	a1,100
80000fd4:	00040513          	mv	a0,s0
        digits[index++] = '0' + (absNum % 10);
80000fd8:	00f102a3          	sb	a5,5(sp)
        absNum /= 10;
80000fdc:	5e0060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
80000fe0:	06300793          	li	a5,99
        absNum /= 10;
80000fe4:	00050993          	mv	s3,a0
    while (absNum > 0) {
80000fe8:	5087fc63          	bgeu	a5,s0,80001500 <_Z8printDeciic+0x594>
        isNegative = 0;
80000fec:	00000a13          	li	s4,0
        digits[index++] = '0' + (absNum % 10);
80000ff0:	00a00593          	li	a1,10
80000ff4:	00098513          	mv	a0,s3
80000ff8:	60c060ef          	jal	ra,80007604 <__umodsi3>
80000ffc:	03050793          	addi	a5,a0,48
        absNum /= 10;
80001000:	00a00593          	li	a1,10
80001004:	00098513          	mv	a0,s3
        digits[index++] = '0' + (absNum % 10);
80001008:	00f10323          	sb	a5,6(sp)
        absNum /= 10;
8000100c:	5b0060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
80001010:	00900793          	li	a5,9
80001014:	4b37f063          	bgeu	a5,s3,800014b4 <_Z8printDeciic+0x548>
        digits[index++] = '0' + (absNum % 10);
80001018:	00a00593          	li	a1,10
8000101c:	5e8060ef          	jal	ra,80007604 <__umodsi3>
80001020:	03050793          	addi	a5,a0,48
        absNum /= 10;
80001024:	06400593          	li	a1,100
80001028:	00098513          	mv	a0,s3
        digits[index++] = '0' + (absNum % 10);
8000102c:	00f103a3          	sb	a5,7(sp)
        absNum /= 10;
80001030:	58c060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
80001034:	06300793          	li	a5,99
80001038:	4b37f463          	bgeu	a5,s3,800014e0 <_Z8printDeciic+0x574>
        digits[index++] = '0' + (absNum % 10);
8000103c:	00a00593          	li	a1,10
80001040:	5c4060ef          	jal	ra,80007604 <__umodsi3>
80001044:	03050793          	addi	a5,a0,48
        absNum /= 10;
80001048:	3e800593          	li	a1,1000
8000104c:	00098513          	mv	a0,s3
        digits[index++] = '0' + (absNum % 10);
80001050:	00f10423          	sb	a5,8(sp)
        absNum /= 10;
80001054:	568060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
80001058:	3e700793          	li	a5,999
8000105c:	4937f863          	bgeu	a5,s3,800014ec <_Z8printDeciic+0x580>
        digits[index++] = '0' + (absNum % 10);
80001060:	00a00593          	li	a1,10
80001064:	5a0060ef          	jal	ra,80007604 <__umodsi3>
        absNum /= 10;
80001068:	00002437          	lui	s0,0x2
        digits[index++] = '0' + (absNum % 10);
8000106c:	03050793          	addi	a5,a0,48
        absNum /= 10;
80001070:	71040593          	addi	a1,s0,1808 # 2710 <_stack_size-0x58f0>
80001074:	00098513          	mv	a0,s3
    while (absNum > 0) {
80001078:	70f40413          	addi	s0,s0,1807
        digits[index++] = '0' + (absNum % 10);
8000107c:	00f104a3          	sb	a5,9(sp)
        absNum /= 10;
80001080:	53c060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
80001084:	49347463          	bgeu	s0,s3,8000150c <_Z8printDeciic+0x5a0>
        digits[index++] = '0' + (absNum % 10);
80001088:	00a00593          	li	a1,10
8000108c:	578060ef          	jal	ra,80007604 <__umodsi3>
        absNum /= 10;
80001090:	00018437          	lui	s0,0x18
        digits[index++] = '0' + (absNum % 10);
80001094:	03050793          	addi	a5,a0,48
        absNum /= 10;
80001098:	6a040593          	addi	a1,s0,1696 # 186a0 <_stack_size+0x106a0>
8000109c:	00098513          	mv	a0,s3
    while (absNum > 0) {
800010a0:	69f40413          	addi	s0,s0,1695
        digits[index++] = '0' + (absNum % 10);
800010a4:	00f10523          	sb	a5,10(sp)
        absNum /= 10;
800010a8:	514060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
800010ac:	47347663          	bgeu	s0,s3,80001518 <_Z8printDeciic+0x5ac>
        digits[index++] = '0' + (absNum % 10);
800010b0:	00a00593          	li	a1,10
800010b4:	550060ef          	jal	ra,80007604 <__umodsi3>
        absNum /= 10;
800010b8:	000f4437          	lui	s0,0xf4
        digits[index++] = '0' + (absNum % 10);
800010bc:	03050793          	addi	a5,a0,48
        absNum /= 10;
800010c0:	24040593          	addi	a1,s0,576 # f4240 <_stack_size+0xec240>
800010c4:	00098513          	mv	a0,s3
    while (absNum > 0) {
800010c8:	23f40413          	addi	s0,s0,575
        digits[index++] = '0' + (absNum % 10);
800010cc:	00f105a3          	sb	a5,11(sp)
        absNum /= 10;
800010d0:	4ec060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
800010d4:	45347e63          	bgeu	s0,s3,80001530 <_Z8printDeciic+0x5c4>
        digits[index++] = '0' + (absNum % 10);
800010d8:	00a00593          	li	a1,10
800010dc:	528060ef          	jal	ra,80007604 <__umodsi3>
        absNum /= 10;
800010e0:	00989437          	lui	s0,0x989
        digits[index++] = '0' + (absNum % 10);
800010e4:	03050793          	addi	a5,a0,48
        absNum /= 10;
800010e8:	68040593          	addi	a1,s0,1664 # 989680 <_stack_size+0x981680>
800010ec:	00098513          	mv	a0,s3
    while (absNum > 0) {
800010f0:	67f40413          	addi	s0,s0,1663
        digits[index++] = '0' + (absNum % 10);
800010f4:	00f10623          	sb	a5,12(sp)
        absNum /= 10;
800010f8:	4c4060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
800010fc:	45347663          	bgeu	s0,s3,80001548 <_Z8printDeciic+0x5dc>
        digits[index++] = '0' + (absNum % 10);
80001100:	03050513          	addi	a0,a0,48
80001104:	00a106a3          	sb	a0,13(sp)
    }

    if (isNegative) {
80001108:	2a0a1663          	bnez	s4,800013b4 <_Z8printDeciic+0x448>

    digits[index] = '\0';

    // Reverse the string
    for (int i = 0; i < index / 2; i++) {
        char tmp = digits[i];
8000110c:	00414783          	lbu	a5,4(sp)
    digits[index] = '\0';
80001110:	00010723          	sb	zero,14(sp)
        digits[i] = digits[index - 1 - i];
80001114:	00a10223          	sb	a0,4(sp)
        digits[index - 1 - i] = tmp;
80001118:	00f106a3          	sb	a5,13(sp)
        digits[index++] = '0' + (absNum % 10);
8000111c:	00900513          	li	a0,9
        digits[index - 1 - i] = tmp;
80001120:	00500713          	li	a4,5
        digits[i] = digits[index - 1 - i];
80001124:	01010693          	addi	a3,sp,16
80001128:	fff50793          	addi	a5,a0,-1
8000112c:	00f687b3          	add	a5,a3,a5
80001130:	ff47c583          	lbu	a1,-12(a5)
        char tmp = digits[i];
80001134:	00514603          	lbu	a2,5(sp)
    for (int i = 0; i < index / 2; i++) {
80001138:	00200693          	li	a3,2
        digits[i] = digits[index - 1 - i];
8000113c:	00b102a3          	sb	a1,5(sp)
        digits[index - 1 - i] = tmp;
80001140:	fec78a23          	sb	a2,-12(a5)
    for (int i = 0; i < index / 2; i++) {
80001144:	06d70463          	beq	a4,a3,800011ac <_Z8printDeciic+0x240>
        digits[i] = digits[index - 1 - i];
80001148:	01010693          	addi	a3,sp,16
8000114c:	ffe50793          	addi	a5,a0,-2
80001150:	00f687b3          	add	a5,a3,a5
80001154:	ff47c583          	lbu	a1,-12(a5)
        char tmp = digits[i];
80001158:	00614603          	lbu	a2,6(sp)
    for (int i = 0; i < index / 2; i++) {
8000115c:	00300693          	li	a3,3
        digits[i] = digits[index - 1 - i];
80001160:	00b10323          	sb	a1,6(sp)
        digits[index - 1 - i] = tmp;
80001164:	fec78a23          	sb	a2,-12(a5)
    for (int i = 0; i < index / 2; i++) {
80001168:	04d70263          	beq	a4,a3,800011ac <_Z8printDeciic+0x240>
        digits[i] = digits[index - 1 - i];
8000116c:	01010693          	addi	a3,sp,16
80001170:	ffd50793          	addi	a5,a0,-3
80001174:	00f687b3          	add	a5,a3,a5
80001178:	ff47c583          	lbu	a1,-12(a5)
        char tmp = digits[i];
8000117c:	00714603          	lbu	a2,7(sp)
    for (int i = 0; i < index / 2; i++) {
80001180:	00400693          	li	a3,4
        digits[i] = digits[index - 1 - i];
80001184:	00b103a3          	sb	a1,7(sp)
        digits[index - 1 - i] = tmp;
80001188:	fec78a23          	sb	a2,-12(a5)
    for (int i = 0; i < index / 2; i++) {
8000118c:	02d70063          	beq	a4,a3,800011ac <_Z8printDeciic+0x240>
        digits[i] = digits[index - 1 - i];
80001190:	01010713          	addi	a4,sp,16
80001194:	ffc50793          	addi	a5,a0,-4
80001198:	00f707b3          	add	a5,a4,a5
8000119c:	ff47c683          	lbu	a3,-12(a5)
        char tmp = digits[i];
800011a0:	00814703          	lbu	a4,8(sp)
        digits[i] = digits[index - 1 - i];
800011a4:	00d10423          	sb	a3,8(sp)
        digits[index - 1 - i] = tmp;
800011a8:	fee78a23          	sb	a4,-12(a5)
    if(color==0){
800011ac:	24091863          	bnez	s2,800013fc <_Z8printDeciic+0x490>
800011b0:	00410593          	addi	a1,sp,4
    while(string[i] != '\0'){
800011b4:	0005c703          	lbu	a4,0(a1)
    if(color==0){
800011b8:	00000793          	li	a5,0
        color=1;
800011bc:	00100693          	li	a3,1
        if(string[i]=='\n'){
800011c0:	00a00893          	li	a7,10
    if(location>SCREEN_SIZE){
800011c4:	4c000e93          	li	t4,1216
    screen[location] = buffer;
800011c8:	88000337          	lui	t1,0x88000
            if(color>15){
800011cc:	00f00e13          	li	t3,15
        if(!putch(location + i, string[i],color)){
800011d0:	00978633          	add	a2,a5,s1
    while(string[i] != '\0'){
800011d4:	04070463          	beqz	a4,8000121c <_Z8printDeciic+0x2b0>
        if(string[i]=='\n'){
800011d8:	2d170863          	beq	a4,a7,800014a8 <_Z8printDeciic+0x53c>
    unsigned short buffer = (color << 8) | c;
800011dc:	00869813          	slli	a6,a3,0x8
    screen[location] = buffer;
800011e0:	00161513          	slli	a0,a2,0x1
            color++;
800011e4:	00168693          	addi	a3,a3,1
    unsigned short buffer = (color << 8) | c;
800011e8:	00e86833          	or	a6,a6,a4
    screen[location] = buffer;
800011ec:	00a30533          	add	a0,t1,a0
            color++;
800011f0:	0ff6f693          	andi	a3,a3,255
    if(location<0){
800011f4:	26064e63          	bltz	a2,80001470 <_Z8printDeciic+0x504>
    if(location>SCREEN_SIZE){
800011f8:	16cecc63          	blt	t4,a2,80001370 <_Z8printDeciic+0x404>
    screen[location] = buffer;
800011fc:	01051023          	sh	a6,0(a0)
            if(color>15){
80001200:	00de7463          	bgeu	t3,a3,80001208 <_Z8printDeciic+0x29c>
                color=1;
80001204:	00100693          	li	a3,1
80001208:	00158593          	addi	a1,a1,1
    while(string[i] != '\0'){
8000120c:	0005c703          	lbu	a4,0(a1)
80001210:	00178793          	addi	a5,a5,1
        if(!putch(location + i, string[i],color)){
80001214:	00978633          	add	a2,a5,s1
    while(string[i] != '\0'){
80001218:	fc0710e3          	bnez	a4,800011d8 <_Z8printDeciic+0x26c>
    }

    return printString(location, digits, color);
}
8000121c:	02c12083          	lw	ra,44(sp)
80001220:	02812403          	lw	s0,40(sp)
80001224:	02412483          	lw	s1,36(sp)
80001228:	02012903          	lw	s2,32(sp)
8000122c:	01c12983          	lw	s3,28(sp)
80001230:	01812a03          	lw	s4,24(sp)
80001234:	0ff7f513          	andi	a0,a5,255
80001238:	03010113          	addi	sp,sp,48
8000123c:	00008067          	ret
        unsigned int absNum = (unsigned int)(-((long)num));
80001240:	40b00a33          	neg	s4,a1
        digits[index++] = '0' + (absNum % 10);
80001244:	000a0513          	mv	a0,s4
80001248:	00a00593          	li	a1,10
8000124c:	3b8060ef          	jal	ra,80007604 <__umodsi3>
80001250:	03050793          	addi	a5,a0,48
        absNum /= 10;
80001254:	00a00593          	li	a1,10
80001258:	000a0513          	mv	a0,s4
        digits[index++] = '0' + (absNum % 10);
8000125c:	00f10223          	sb	a5,4(sp)
        absNum /= 10;
80001260:	35c060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
80001264:	ff700793          	li	a5,-9
80001268:	2af45e63          	bge	s0,a5,80001524 <_Z8printDeciic+0x5b8>
        digits[index++] = '0' + (absNum % 10);
8000126c:	00a00593          	li	a1,10
80001270:	394060ef          	jal	ra,80007604 <__umodsi3>
80001274:	03050793          	addi	a5,a0,48
        absNum /= 10;
80001278:	06400593          	li	a1,100
8000127c:	000a0513          	mv	a0,s4
        digits[index++] = '0' + (absNum % 10);
80001280:	00f102a3          	sb	a5,5(sp)
        absNum /= 10;
80001284:	338060ef          	jal	ra,800075bc <__udivsi3>
    while (absNum > 0) {
80001288:	06300793          	li	a5,99
        absNum /= 10;
8000128c:	00050993          	mv	s3,a0
    while (absNum > 0) {
80001290:	2b47f663          	bgeu	a5,s4,8000153c <_Z8printDeciic+0x5d0>
        isNegative = 1;
80001294:	00100a13          	li	s4,1
80001298:	d59ff06f          	j	80000ff0 <_Z8printDeciic+0x84>
        digits[index++] = '0';
8000129c:	03000793          	li	a5,48
800012a0:	00f11223          	sh	a5,4(sp)
    char rainbow=0;
800012a4:	00000593          	li	a1,0
    if(color==0){
800012a8:	10060063          	beqz	a2,800013a8 <_Z8printDeciic+0x43c>
        if(!putch(location + i, string[i],color)){
800012ac:	008487b3          	add	a5,s1,s0
    while(string[i] != '\0'){
800012b0:	03000693          	li	a3,48
    if(location>SCREEN_SIZE){
800012b4:	4c000893          	li	a7,1216
    screen[location] = buffer;
800012b8:	88000837          	lui	a6,0x88000
        if(rainbow==1){
800012bc:	00100513          	li	a0,1
            if(color>15){
800012c0:	00f00313          	li	t1,15
        if(string[i]=='\n'){
800012c4:	00a00613          	li	a2,10
    if(location<0){
800012c8:	0407c663          	bltz	a5,80001314 <_Z8printDeciic+0x3a8>
    if(location>SCREEN_SIZE){
800012cc:	0af8c263          	blt	a7,a5,80001370 <_Z8printDeciic+0x404>
    unsigned short buffer = (color << 8) | c;
800012d0:	00891713          	slli	a4,s2,0x8
    screen[location] = buffer;
800012d4:	00179793          	slli	a5,a5,0x1
800012d8:	00f807b3          	add	a5,a6,a5
    unsigned short buffer = (color << 8) | c;
800012dc:	00d76733          	or	a4,a4,a3
    screen[location] = buffer;
800012e0:	00e79023          	sh	a4,0(a5)
        i++;
800012e4:	00140793          	addi	a5,s0,1
        if(rainbow==1){
800012e8:	0aa58663          	beq	a1,a0,80001394 <_Z8printDeciic+0x428>
    while(string[i] != '\0'){
800012ec:	01010713          	addi	a4,sp,16
800012f0:	00f70733          	add	a4,a4,a5
800012f4:	ff474683          	lbu	a3,-12(a4)
800012f8:	f20682e3          	beqz	a3,8000121c <_Z8printDeciic+0x2b0>
        if(string[i]=='\n'){
800012fc:	00410713          	addi	a4,sp,4
80001300:	00870433          	add	s0,a4,s0
80001304:	04c68463          	beq	a3,a2,8000134c <_Z8printDeciic+0x3e0>
    while(string[i] != '\0'){
80001308:	00078413          	mv	s0,a5
        if(!putch(location + i, string[i],color)){
8000130c:	008487b3          	add	a5,s1,s0
    if(location<0){
80001310:	fa07dee3          	bgez	a5,800012cc <_Z8printDeciic+0x360>
	return *( (volatile uint8_t *) addr );
80001314:	10000737          	lui	a4,0x10000
80001318:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
8000131c:	0207f793          	andi	a5,a5,32
80001320:	fe078ce3          	beqz	a5,80001318 <_Z8printDeciic+0x3ac>
	*( (uint8_t *) addr ) = b;
80001324:	00d70023          	sb	a3,0(a4)
}
80001328:	02c12083          	lw	ra,44(sp)
8000132c:	02812403          	lw	s0,40(sp)
80001330:	02412483          	lw	s1,36(sp)
80001334:	02012903          	lw	s2,32(sp)
80001338:	01c12983          	lw	s3,28(sp)
8000133c:	01812a03          	lw	s4,24(sp)
	*( (uint8_t *) addr ) = b;
80001340:	00000513          	li	a0,0
}
80001344:	03010113          	addi	sp,sp,48
80001348:	00008067          	ret
    while(string[i] != '\0'){
8000134c:	00244683          	lbu	a3,2(s0)
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80001350:	fc04f493          	andi	s1,s1,-64
80001354:	04048493          	addi	s1,s1,64
            i++;
80001358:	00178793          	addi	a5,a5,1
    while(string[i] != '\0'){
8000135c:	ec0680e3          	beqz	a3,8000121c <_Z8printDeciic+0x2b0>
80001360:	00140413          	addi	s0,s0,1
        if(string[i]=='\n'){
80001364:	fec684e3          	beq	a3,a2,8000134c <_Z8printDeciic+0x3e0>
    while(string[i] != '\0'){
80001368:	00078413          	mv	s0,a5
8000136c:	fa1ff06f          	j	8000130c <_Z8printDeciic+0x3a0>
}
80001370:	02c12083          	lw	ra,44(sp)
80001374:	02812403          	lw	s0,40(sp)
80001378:	02412483          	lw	s1,36(sp)
8000137c:	02012903          	lw	s2,32(sp)
80001380:	01c12983          	lw	s3,28(sp)
80001384:	01812a03          	lw	s4,24(sp)
    if(location>SCREEN_SIZE){
80001388:	00000513          	li	a0,0
}
8000138c:	03010113          	addi	sp,sp,48
80001390:	00008067          	ret
            color++;
80001394:	00190913          	addi	s2,s2,1
80001398:	0ff97913          	andi	s2,s2,255
            if(color>15){
8000139c:	f52378e3          	bgeu	t1,s2,800012ec <_Z8printDeciic+0x380>
                color=1;
800013a0:	00100913          	li	s2,1
800013a4:	f49ff06f          	j	800012ec <_Z8printDeciic+0x380>
        rainbow=1;
800013a8:	00100593          	li	a1,1
        color=1;
800013ac:	00100913          	li	s2,1
800013b0:	efdff06f          	j	800012ac <_Z8printDeciic+0x340>
        digits[index++] = '0' + (absNum % 10);
800013b4:	00900793          	li	a5,9
800013b8:	00a00513          	li	a0,10
        digits[index++] = '-';
800013bc:	00278713          	addi	a4,a5,2
800013c0:	01010793          	addi	a5,sp,16
800013c4:	02d00693          	li	a3,45
800013c8:	00a787b3          	add	a5,a5,a0
800013cc:	fed78a23          	sb	a3,-12(a5)
    digits[index] = '\0';
800013d0:	01010693          	addi	a3,sp,16
800013d4:	00e686b3          	add	a3,a3,a4
800013d8:	fe068a23          	sb	zero,-12(a3)
    for (int i = 0; i < index / 2; i++) {
800013dc:	40175713          	srai	a4,a4,0x1
        digits[i] = digits[index - 1 - i];
800013e0:	ff47c583          	lbu	a1,-12(a5)
        char tmp = digits[i];
800013e4:	00414603          	lbu	a2,4(sp)
    for (int i = 0; i < index / 2; i++) {
800013e8:	00100693          	li	a3,1
        digits[i] = digits[index - 1 - i];
800013ec:	00b10223          	sb	a1,4(sp)
        digits[index - 1 - i] = tmp;
800013f0:	fec78a23          	sb	a2,-12(a5)
    for (int i = 0; i < index / 2; i++) {
800013f4:	d2d718e3          	bne	a4,a3,80001124 <_Z8printDeciic+0x1b8>
    if(color==0){
800013f8:	da090ce3          	beqz	s2,800011b0 <_Z8printDeciic+0x244>
800013fc:	00410513          	addi	a0,sp,4
    while(string[i] != '\0'){
80001400:	00054703          	lbu	a4,0(a0)
    unsigned short buffer = (color << 8) | c;
80001404:	00891913          	slli	s2,s2,0x8
80001408:	01091913          	slli	s2,s2,0x10
8000140c:	00000793          	li	a5,0
80001410:	41095913          	srai	s2,s2,0x10
        if(string[i]=='\n'){
80001414:	00a00813          	li	a6,10
    if(location>SCREEN_SIZE){
80001418:	4c000313          	li	t1,1216
    screen[location] = buffer;
8000141c:	880008b7          	lui	a7,0x88000
        if(!putch(location + i, string[i],color)){
80001420:	00978633          	add	a2,a5,s1
    while(string[i] != '\0'){
80001424:	de070ce3          	beqz	a4,8000121c <_Z8printDeciic+0x2b0>
        if(string[i]=='\n'){
80001428:	03070e63          	beq	a4,a6,80001464 <_Z8printDeciic+0x4f8>
    unsigned short buffer = (color << 8) | c;
8000142c:	00e966b3          	or	a3,s2,a4
    screen[location] = buffer;
80001430:	00161593          	slli	a1,a2,0x1
    unsigned short buffer = (color << 8) | c;
80001434:	01069693          	slli	a3,a3,0x10
80001438:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
8000143c:	00b885b3          	add	a1,a7,a1
    if(location<0){
80001440:	02064863          	bltz	a2,80001470 <_Z8printDeciic+0x504>
    if(location>SCREEN_SIZE){
80001444:	f2c346e3          	blt	t1,a2,80001370 <_Z8printDeciic+0x404>
    screen[location] = buffer;
80001448:	00d59023          	sh	a3,0(a1)
        if(rainbow==1){
8000144c:	00150513          	addi	a0,a0,1
    while(string[i] != '\0'){
80001450:	00054703          	lbu	a4,0(a0)
80001454:	00178793          	addi	a5,a5,1
        if(!putch(location + i, string[i],color)){
80001458:	00978633          	add	a2,a5,s1
    while(string[i] != '\0'){
8000145c:	dc0700e3          	beqz	a4,8000121c <_Z8printDeciic+0x2b0>
        if(string[i]=='\n'){
80001460:	fd0716e3          	bne	a4,a6,8000142c <_Z8printDeciic+0x4c0>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80001464:	fc04f493          	andi	s1,s1,-64
80001468:	04048493          	addi	s1,s1,64
            continue;
8000146c:	fe1ff06f          	j	8000144c <_Z8printDeciic+0x4e0>
	return *( (volatile uint8_t *) addr );
80001470:	100006b7          	lui	a3,0x10000
80001474:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80001478:	0207f793          	andi	a5,a5,32
8000147c:	fe078ce3          	beqz	a5,80001474 <_Z8printDeciic+0x508>
	*( (uint8_t *) addr ) = b;
80001480:	00e68023          	sb	a4,0(a3)
}
80001484:	02c12083          	lw	ra,44(sp)
80001488:	02812403          	lw	s0,40(sp)
8000148c:	02412483          	lw	s1,36(sp)
80001490:	02012903          	lw	s2,32(sp)
80001494:	01c12983          	lw	s3,28(sp)
80001498:	01812a03          	lw	s4,24(sp)
	*( (uint8_t *) addr ) = b;
8000149c:	00000513          	li	a0,0
}
800014a0:	03010113          	addi	sp,sp,48
800014a4:	00008067          	ret
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
800014a8:	fc04f493          	andi	s1,s1,-64
800014ac:	04048493          	addi	s1,s1,64
            continue;
800014b0:	d59ff06f          	j	80001208 <_Z8printDeciic+0x29c>
        digits[index++] = '0' + (absNum % 10);
800014b4:	00200793          	li	a5,2
800014b8:	00300513          	li	a0,3
    if (isNegative) {
800014bc:	f00a10e3          	bnez	s4,800013bc <_Z8printDeciic+0x450>
    digits[index] = '\0';
800014c0:	01010713          	addi	a4,sp,16
800014c4:	00a706b3          	add	a3,a4,a0
    for (int i = 0; i < index / 2; i++) {
800014c8:	40155713          	srai	a4,a0,0x1
800014cc:	00078513          	mv	a0,a5
800014d0:	01010793          	addi	a5,sp,16
    digits[index] = '\0';
800014d4:	fe068a23          	sb	zero,-12(a3)
    for (int i = 0; i < index / 2; i++) {
800014d8:	00a787b3          	add	a5,a5,a0
800014dc:	f05ff06f          	j	800013e0 <_Z8printDeciic+0x474>
        digits[index++] = '0' + (absNum % 10);
800014e0:	00300793          	li	a5,3
800014e4:	00400513          	li	a0,4
800014e8:	fd5ff06f          	j	800014bc <_Z8printDeciic+0x550>
800014ec:	00400793          	li	a5,4
800014f0:	00500513          	li	a0,5
800014f4:	fc9ff06f          	j	800014bc <_Z8printDeciic+0x550>
    digits[index] = '\0';
800014f8:	000102a3          	sb	zero,5(sp)
    for (int i = 0; i < index / 2; i++) {
800014fc:	cb1ff06f          	j	800011ac <_Z8printDeciic+0x240>
        digits[index++] = '0' + (absNum % 10);
80001500:	00100793          	li	a5,1
80001504:	00200513          	li	a0,2
80001508:	fb9ff06f          	j	800014c0 <_Z8printDeciic+0x554>
8000150c:	00500793          	li	a5,5
80001510:	00600513          	li	a0,6
80001514:	fa9ff06f          	j	800014bc <_Z8printDeciic+0x550>
80001518:	00600793          	li	a5,6
8000151c:	00700513          	li	a0,7
80001520:	f9dff06f          	j	800014bc <_Z8printDeciic+0x550>
    int index = 0;
80001524:	00000793          	li	a5,0
        digits[index++] = '0' + (absNum % 10);
80001528:	00100513          	li	a0,1
8000152c:	e91ff06f          	j	800013bc <_Z8printDeciic+0x450>
80001530:	00700793          	li	a5,7
80001534:	00800513          	li	a0,8
80001538:	f85ff06f          	j	800014bc <_Z8printDeciic+0x550>
8000153c:	00100793          	li	a5,1
80001540:	00200513          	li	a0,2
80001544:	e79ff06f          	j	800013bc <_Z8printDeciic+0x450>
80001548:	00800793          	li	a5,8
8000154c:	00900513          	li	a0,9
80001550:	f6dff06f          	j	800014bc <_Z8printDeciic+0x550>

80001554 <_Z6printfPKcz>:
// It returns the location of the next character to be printed

// General purpose variable to track where to print on the screen
short screenPos;
int printf(const char* str, ...) 
{ 
80001554:	f9010113          	addi	sp,sp,-112
80001558:	04112623          	sw	ra,76(sp)
8000155c:	04812423          	sw	s0,72(sp)
80001560:	04912223          	sw	s1,68(sp)
80001564:	05212023          	sw	s2,64(sp)
80001568:	03312e23          	sw	s3,60(sp)
8000156c:	03412c23          	sw	s4,56(sp)
80001570:	03512a23          	sw	s5,52(sp)
    char color=15;
    // initializing list pointer 
    va_list ptr; 
    va_start(ptr, str);  
    int i=0;
    for (i = 0; str[i] != '\0'; i++) {
80001574:	00054303          	lbu	t1,0(a0)
{ 
80001578:	06f12223          	sw	a5,100(sp)
    va_start(ptr, str);  
8000157c:	05410793          	addi	a5,sp,84
{ 
80001580:	04b12a23          	sw	a1,84(sp)
80001584:	04c12c23          	sw	a2,88(sp)
80001588:	04d12e23          	sw	a3,92(sp)
8000158c:	06e12023          	sw	a4,96(sp)
80001590:	07012423          	sw	a6,104(sp)
80001594:	07112623          	sw	a7,108(sp)
    va_start(ptr, str);  
80001598:	00f12623          	sw	a5,12(sp)
    for (i = 0; str[i] != '\0'; i++) {
8000159c:	48030e63          	beqz	t1,80001a38 <_Z6printfPKcz+0x4e4>
800015a0:	00008997          	auipc	s3,0x8
800015a4:	d3498993          	addi	s3,s3,-716 # 800092d4 <screenPos>
800015a8:	00050493          	mv	s1,a0
800015ac:	00099503          	lh	a0,0(s3)
    unsigned short buffer = (color << 8) | c;
800015b0:	00001937          	lui	s2,0x1
    screen[location] = buffer;
800015b4:	00001ab7          	lui	s5,0x1
    for (i = 0; str[i] != '\0'; i++) {
800015b8:	00000413          	li	s0,0
800015bc:	00000793          	li	a5,0
    unsigned short buffer = (color << 8) | c;
800015c0:	f0090913          	addi	s2,s2,-256 # f00 <_stack_size-0x7100>
    screen[location] = buffer;
800015c4:	f25a8a93          	addi	s5,s5,-219 # f25 <_stack_size-0x70db>
    char hexChars[] = "0123456789ABCDEF";
800015c8:	00007a17          	auipc	s4,0x7
800015cc:	614a0a13          	addi	s4,s4,1556 # 80008bdc <_etext+0xfe0>
        // Gandles newline 
        if(str[i]=='\n'){
800015d0:	00a00713          	li	a4,10
800015d4:	00140613          	addi	a2,s0,1
800015d8:	0ce30a63          	beq	t1,a4,800016ac <_Z6printfPKcz+0x158>
            screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
            continue;    
        }
        // Handles variables
        // needs to be improved to handle attributes like %6d
        if(str[i]=='%'){
800015dc:	02500693          	li	a3,37
800015e0:	08d31e63          	bne	t1,a3,8000167c <_Z6printfPKcz+0x128>
            if(str[i+1]=='x'){
800015e4:	00f487b3          	add	a5,s1,a5
800015e8:	0017c783          	lbu	a5,1(a5)
800015ec:	07800693          	li	a3,120
800015f0:	14d78a63          	beq	a5,a3,80001744 <_Z6printfPKcz+0x1f0>
                i++;
                int value=va_arg(ptr, int);
                screenPos+=printHex(screenPos,value,color);
            }
            else if(str[i+1]=='d'){
800015f4:	06400693          	li	a3,100
800015f8:	32d78063          	beq	a5,a3,80001918 <_Z6printfPKcz+0x3c4>
                i++;
                unsigned int value=va_arg(ptr, unsigned int);
                screenPos+=printDec(screenPos,value,color);
            }
            else if(str[i+1]=='c'){
800015fc:	06300693          	li	a3,99
80001600:	0ed78463          	beq	a5,a3,800016e8 <_Z6printfPKcz+0x194>
                    continue;    
                }
                putch(screenPos,value,color);
                screenPos++;
            }
            else if (str[i+1]=='s')
80001604:	07300713          	li	a4,115
80001608:	00050813          	mv	a6,a0
8000160c:	36e78063          	beq	a5,a4,8000196c <_Z6printfPKcz+0x418>
    if(location<0){
80001610:	3e054663          	bltz	a0,800019fc <_Z6printfPKcz+0x4a8>
    if(location>SCREEN_SIZE){
80001614:	4c000793          	li	a5,1216
80001618:	00a7cc63          	blt	a5,a0,80001630 <_Z6printfPKcz+0xdc>
    screen[location] = buffer;
8000161c:	00151513          	slli	a0,a0,0x1
80001620:	880007b7          	lui	a5,0x88000
80001624:	00a78533          	add	a0,a5,a0
80001628:	01551023          	sh	s5,0(a0)
    return 1;
8000162c:	00099503          	lh	a0,0(s3)
                screenPos++;
            }
        }
        else{
            putch(screenPos,str[i],color);
            screenPos++;
80001630:	00150513          	addi	a0,a0,1
80001634:	01051513          	slli	a0,a0,0x10
80001638:	41055513          	srai	a0,a0,0x10
8000163c:	00008797          	auipc	a5,0x8
80001640:	c8a79c23          	sh	a0,-872(a5) # 800092d4 <screenPos>
80001644:	00060413          	mv	s0,a2
    for (i = 0; str[i] != '\0'; i++) {
80001648:	008487b3          	add	a5,s1,s0
8000164c:	0007c303          	lbu	t1,0(a5)
80001650:	00040793          	mv	a5,s0
80001654:	f6031ee3          	bnez	t1,800015d0 <_Z6printfPKcz+0x7c>
    } 
  
    // ending traversal 
    va_end(ptr); 
    return screenPos; 
}
80001658:	04c12083          	lw	ra,76(sp)
8000165c:	04812403          	lw	s0,72(sp)
80001660:	04412483          	lw	s1,68(sp)
80001664:	04012903          	lw	s2,64(sp)
80001668:	03c12983          	lw	s3,60(sp)
8000166c:	03812a03          	lw	s4,56(sp)
80001670:	03412a83          	lw	s5,52(sp)
80001674:	07010113          	addi	sp,sp,112
80001678:	00008067          	ret
    if(location<0){
8000167c:	04054863          	bltz	a0,800016cc <_Z6printfPKcz+0x178>
    if(location>SCREEN_SIZE){
80001680:	4c000793          	li	a5,1216
80001684:	faa7c6e3          	blt	a5,a0,80001630 <_Z6printfPKcz+0xdc>
    unsigned short buffer = (color << 8) | c;
80001688:	01236333          	or	t1,t1,s2
    screen[location] = buffer;
8000168c:	00151513          	slli	a0,a0,0x1
    unsigned short buffer = (color << 8) | c;
80001690:	01031313          	slli	t1,t1,0x10
    screen[location] = buffer;
80001694:	880007b7          	lui	a5,0x88000
80001698:	00a78533          	add	a0,a5,a0
    unsigned short buffer = (color << 8) | c;
8000169c:	01035313          	srli	t1,t1,0x10
    screen[location] = buffer;
800016a0:	00651023          	sh	t1,0(a0)
    return 1;
800016a4:	00099503          	lh	a0,0(s3)
800016a8:	f89ff06f          	j	80001630 <_Z6printfPKcz+0xdc>
            screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
800016ac:	fc057513          	andi	a0,a0,-64
800016b0:	04050513          	addi	a0,a0,64
800016b4:	01051513          	slli	a0,a0,0x10
800016b8:	41055513          	srai	a0,a0,0x10
800016bc:	00008797          	auipc	a5,0x8
800016c0:	c0a79c23          	sh	a0,-1000(a5) # 800092d4 <screenPos>
            continue;    
800016c4:	00060413          	mv	s0,a2
800016c8:	f81ff06f          	j	80001648 <_Z6printfPKcz+0xf4>
	return *( (volatile uint8_t *) addr );
800016cc:	10000737          	lui	a4,0x10000
800016d0:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800016d4:	0207f793          	andi	a5,a5,32
800016d8:	fe078ce3          	beqz	a5,800016d0 <_Z6printfPKcz+0x17c>
	*( (uint8_t *) addr ) = b;
800016dc:	00670023          	sb	t1,0(a4)
        return 0;
800016e0:	00099503          	lh	a0,0(s3)
800016e4:	f4dff06f          	j	80001630 <_Z6printfPKcz+0xdc>
                char value=va_arg(ptr, int);
800016e8:	00c12783          	lw	a5,12(sp)
800016ec:	00240413          	addi	s0,s0,2
800016f0:	0007c683          	lbu	a3,0(a5)
800016f4:	00478793          	addi	a5,a5,4
800016f8:	00f12623          	sw	a5,12(sp)
                if(value=='\n'){
800016fc:	24e68a63          	beq	a3,a4,80001950 <_Z6printfPKcz+0x3fc>
    if(location<0){
80001700:	30054e63          	bltz	a0,80001a1c <_Z6printfPKcz+0x4c8>
    if(location>SCREEN_SIZE){
80001704:	4c000793          	li	a5,1216
80001708:	02a7c263          	blt	a5,a0,8000172c <_Z6printfPKcz+0x1d8>
    unsigned short buffer = (color << 8) | c;
8000170c:	0126e6b3          	or	a3,a3,s2
    screen[location] = buffer;
80001710:	00151513          	slli	a0,a0,0x1
    unsigned short buffer = (color << 8) | c;
80001714:	01069693          	slli	a3,a3,0x10
    screen[location] = buffer;
80001718:	880007b7          	lui	a5,0x88000
8000171c:	00a78533          	add	a0,a5,a0
    unsigned short buffer = (color << 8) | c;
80001720:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
80001724:	00d51023          	sh	a3,0(a0)
    return 1;
80001728:	00099503          	lh	a0,0(s3)
                screenPos++;
8000172c:	00150513          	addi	a0,a0,1
80001730:	01051513          	slli	a0,a0,0x10
80001734:	41055513          	srai	a0,a0,0x10
80001738:	00008797          	auipc	a5,0x8
8000173c:	b8a79e23          	sh	a0,-1124(a5) # 800092d4 <screenPos>
80001740:	f09ff06f          	j	80001648 <_Z6printfPKcz+0xf4>
                int value=va_arg(ptr, int);
80001744:	00c12883          	lw	a7,12(sp)
    char hexChars[] = "0123456789ABCDEF";
80001748:	010a4803          	lbu	a6,16(s4)
8000174c:	000a2f03          	lw	t5,0(s4)
                int value=va_arg(ptr, int);
80001750:	0008a683          	lw	a3,0(a7) # 88000000 <_stack_top+0x7c00000>
    char hexChars[] = "0123456789ABCDEF";
80001754:	004a2e83          	lw	t4,4(s4)
80001758:	008a2e03          	lw	t3,8(s4)
8000175c:	00ca2303          	lw	t1,12(s4)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80001760:	4086d613          	srai	a2,a3,0x8
    char hexChars[] = "0123456789ABCDEF";
80001764:	03010623          	sb	a6,44(sp)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80001768:	40c6d793          	srai	a5,a3,0xc
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
8000176c:	03010813          	addi	a6,sp,48
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80001770:	4186d713          	srai	a4,a3,0x18
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001774:	00f67613          	andi	a2,a2,15
    char hexChars[] = "0123456789ABCDEF";
80001778:	02612423          	sw	t1,40(sp)
8000177c:	01e12e23          	sw	t5,28(sp)
80001780:	03d12023          	sw	t4,32(sp)
80001784:	03c12223          	sw	t3,36(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001788:	00c80633          	add	a2,a6,a2
8000178c:	01c6d593          	srli	a1,a3,0x1c
80001790:	00f7f793          	andi	a5,a5,15
80001794:	00f77713          	andi	a4,a4,15
80001798:	00b805b3          	add	a1,a6,a1
8000179c:	00e80733          	add	a4,a6,a4
800017a0:	fec64f03          	lbu	t5,-20(a2)
800017a4:	00f807b3          	add	a5,a6,a5
        value >>= 4; // Shift right by 4 bits to get the next hex digit
800017a8:	4046d313          	srai	t1,a3,0x4
800017ac:	4146d813          	srai	a6,a3,0x14
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
800017b0:	fec5c603          	lbu	a2,-20(a1)
800017b4:	fec74e83          	lbu	t4,-20(a4)
800017b8:	fec7c783          	lbu	a5,-20(a5)
800017bc:	03010713          	addi	a4,sp,48
800017c0:	00f37313          	andi	t1,t1,15
800017c4:	00f87813          	andi	a6,a6,15
800017c8:	00670333          	add	t1,a4,t1
800017cc:	01070833          	add	a6,a4,a6
        value >>= 4; // Shift right by 4 bits to get the next hex digit
800017d0:	4106d593          	srai	a1,a3,0x10
800017d4:	ffff0737          	lui	a4,0xffff0
800017d8:	0ff70713          	addi	a4,a4,255 # ffff00ff <_stack_top+0x7fbf00ff>
800017dc:	fec34e03          	lbu	t3,-20(t1) # 87ffffec <_stack_top+0x7bfffec>
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
800017e0:	00f5f593          	andi	a1,a1,15
800017e4:	fec84303          	lbu	t1,-20(a6) # 87ffffec <_stack_top+0x7bfffec>
800017e8:	00f6f693          	andi	a3,a3,15
800017ec:	008f1813          	slli	a6,t5,0x8
800017f0:	03010f13          	addi	t5,sp,48
800017f4:	00e7f7b3          	and	a5,a5,a4
800017f8:	00df06b3          	add	a3,t5,a3
800017fc:	00e67733          	and	a4,a2,a4
80001800:	008e9e93          	slli	t4,t4,0x8
80001804:	00bf0633          	add	a2,t5,a1
80001808:	ff0105b7          	lui	a1,0xff010
8000180c:	fff58593          	addi	a1,a1,-1 # ff00ffff <_stack_top+0x7ec0ffff>
80001810:	0107e7b3          	or	a5,a5,a6
80001814:	01d76733          	or	a4,a4,t4
80001818:	fec6c803          	lbu	a6,-20(a3)
8000181c:	fec64603          	lbu	a2,-20(a2)
80001820:	010e1e13          	slli	t3,t3,0x10
80001824:	00b7f7b3          	and	a5,a5,a1
80001828:	01031313          	slli	t1,t1,0x10
8000182c:	00b77733          	and	a4,a4,a1
80001830:	010006b7          	lui	a3,0x1000
80001834:	fff68693          	addi	a3,a3,-1 # ffffff <_stack_size+0xff7fff>
80001838:	01c7e7b3          	or	a5,a5,t3
8000183c:	00676733          	or	a4,a4,t1
80001840:	01881593          	slli	a1,a6,0x18
80001844:	00d7f7b3          	and	a5,a5,a3
80001848:	01861613          	slli	a2,a2,0x18
8000184c:	00d77733          	and	a4,a4,a3
80001850:	00c76733          	or	a4,a4,a2
80001854:	00b7e7b3          	or	a5,a5,a1
80001858:	00e12823          	sw	a4,16(sp)
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
8000185c:	00010c23          	sb	zero,24(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001860:	00f12a23          	sw	a5,20(sp)
80001864:	01010813          	addi	a6,sp,16
    while(string[i] != '\0'){
80001868:	00084683          	lbu	a3,0(a6)
                int value=va_arg(ptr, int);
8000186c:	00488893          	addi	a7,a7,4
80001870:	01112623          	sw	a7,12(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001874:	00000713          	li	a4,0
        if(string[i]=='\n'){
80001878:	00a00893          	li	a7,10
    if(location>SCREEN_SIZE){
8000187c:	4c000e13          	li	t3,1216
    screen[location] = buffer;
80001880:	88000337          	lui	t1,0x88000
        if(!putch(location + i, string[i],color)){
80001884:	00a70633          	add	a2,a4,a0
    while(string[i] != '\0'){
80001888:	02068e63          	beqz	a3,800018c4 <_Z6printfPKcz+0x370>
        if(string[i]=='\n'){
8000188c:	07168c63          	beq	a3,a7,80001904 <_Z6printfPKcz+0x3b0>
    unsigned short buffer = (color << 8) | c;
80001890:	0126e7b3          	or	a5,a3,s2
    screen[location] = buffer;
80001894:	00161593          	slli	a1,a2,0x1
    unsigned short buffer = (color << 8) | c;
80001898:	01079793          	slli	a5,a5,0x10
8000189c:	0107d793          	srli	a5,a5,0x10
    screen[location] = buffer;
800018a0:	00b305b3          	add	a1,t1,a1
    if(location<0){
800018a4:	02064463          	bltz	a2,800018cc <_Z6printfPKcz+0x378>
    if(location>SCREEN_SIZE){
800018a8:	06ce4463          	blt	t3,a2,80001910 <_Z6printfPKcz+0x3bc>
    screen[location] = buffer;
800018ac:	00f59023          	sh	a5,0(a1)
        if(rainbow==1){
800018b0:	00180813          	addi	a6,a6,1
    while(string[i] != '\0'){
800018b4:	00084683          	lbu	a3,0(a6)
800018b8:	00170713          	addi	a4,a4,1
        if(!putch(location + i, string[i],color)){
800018bc:	00a70633          	add	a2,a4,a0
    while(string[i] != '\0'){
800018c0:	fc0696e3          	bnez	a3,8000188c <_Z6printfPKcz+0x338>
800018c4:	0ff77513          	andi	a0,a4,255
800018c8:	01c0006f          	j	800018e4 <_Z6printfPKcz+0x390>
	return *( (volatile uint8_t *) addr );
800018cc:	10000737          	lui	a4,0x10000
800018d0:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800018d4:	0207f793          	andi	a5,a5,32
800018d8:	fe078ce3          	beqz	a5,800018d0 <_Z6printfPKcz+0x37c>
	*( (uint8_t *) addr ) = b;
800018dc:	00d70023          	sb	a3,0(a4)
800018e0:	00000513          	li	a0,0
                screenPos+=printHex(screenPos,value,color);
800018e4:	0009d703          	lhu	a4,0(s3)
800018e8:	00240413          	addi	s0,s0,2
800018ec:	00e50533          	add	a0,a0,a4
800018f0:	01051513          	slli	a0,a0,0x10
800018f4:	41055513          	srai	a0,a0,0x10
800018f8:	00008797          	auipc	a5,0x8
800018fc:	9ca79e23          	sh	a0,-1572(a5) # 800092d4 <screenPos>
80001900:	d49ff06f          	j	80001648 <_Z6printfPKcz+0xf4>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80001904:	fc057513          	andi	a0,a0,-64
80001908:	04050513          	addi	a0,a0,64
            continue;
8000190c:	fa5ff06f          	j	800018b0 <_Z6printfPKcz+0x35c>
    if(location>SCREEN_SIZE){
80001910:	00000513          	li	a0,0
80001914:	fd1ff06f          	j	800018e4 <_Z6printfPKcz+0x390>
                unsigned int value=va_arg(ptr, unsigned int);
80001918:	00c12783          	lw	a5,12(sp)
                screenPos+=printDec(screenPos,value,color);
8000191c:	00f00613          	li	a2,15
80001920:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
80001924:	00478793          	addi	a5,a5,4
80001928:	00f12623          	sw	a5,12(sp)
                screenPos+=printDec(screenPos,value,color);
8000192c:	e40ff0ef          	jal	ra,80000f6c <_Z8printDeciic>
                screenPos+=printString(screenPos,value,color);
80001930:	0009d783          	lhu	a5,0(s3)
80001934:	00240413          	addi	s0,s0,2
80001938:	00f50533          	add	a0,a0,a5
8000193c:	01051513          	slli	a0,a0,0x10
80001940:	41055513          	srai	a0,a0,0x10
80001944:	00008797          	auipc	a5,0x8
80001948:	98a79823          	sh	a0,-1648(a5) # 800092d4 <screenPos>
8000194c:	cfdff06f          	j	80001648 <_Z6printfPKcz+0xf4>
                    screenPos = (screenPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
80001950:	fc057513          	andi	a0,a0,-64
80001954:	04050513          	addi	a0,a0,64
80001958:	01051513          	slli	a0,a0,0x10
8000195c:	41055513          	srai	a0,a0,0x10
80001960:	00008797          	auipc	a5,0x8
80001964:	96a79a23          	sh	a0,-1676(a5) # 800092d4 <screenPos>
                    continue;    
80001968:	ce1ff06f          	j	80001648 <_Z6printfPKcz+0xf4>
                char *value=va_arg(ptr, char*);
8000196c:	00c12703          	lw	a4,12(sp)
80001970:	00000793          	li	a5,0
        if(string[i]=='\n'){
80001974:	00a00893          	li	a7,10
                char *value=va_arg(ptr, char*);
80001978:	00072503          	lw	a0,0(a4)
8000197c:	00470693          	addi	a3,a4,4
80001980:	00d12623          	sw	a3,12(sp)
    if(location>SCREEN_SIZE){
80001984:	4c000e13          	li	t3,1216
    screen[location] = buffer;
80001988:	88000337          	lui	t1,0x88000
    while(string[i] != '\0'){
8000198c:	00f50733          	add	a4,a0,a5
80001990:	00074683          	lbu	a3,0(a4)
        if(!putch(location + i, string[i],color)){
80001994:	01078633          	add	a2,a5,a6
    while(string[i] != '\0'){
80001998:	0a068863          	beqz	a3,80001a48 <_Z6printfPKcz+0x4f4>
        if(string[i]=='\n'){
8000199c:	05168463          	beq	a3,a7,800019e4 <_Z6printfPKcz+0x490>
    unsigned short buffer = (color << 8) | c;
800019a0:	0126e733          	or	a4,a3,s2
    screen[location] = buffer;
800019a4:	00161593          	slli	a1,a2,0x1
    unsigned short buffer = (color << 8) | c;
800019a8:	01071713          	slli	a4,a4,0x10
800019ac:	01075713          	srli	a4,a4,0x10
    screen[location] = buffer;
800019b0:	00b305b3          	add	a1,t1,a1
    if(location<0){
800019b4:	00064a63          	bltz	a2,800019c8 <_Z6printfPKcz+0x474>
    if(location>SCREEN_SIZE){
800019b8:	02ce4e63          	blt	t3,a2,800019f4 <_Z6printfPKcz+0x4a0>
    screen[location] = buffer;
800019bc:	00e59023          	sh	a4,0(a1)
        if(rainbow==1){
800019c0:	00178793          	addi	a5,a5,1
800019c4:	fc9ff06f          	j	8000198c <_Z6printfPKcz+0x438>
	return *( (volatile uint8_t *) addr );
800019c8:	10000737          	lui	a4,0x10000
800019cc:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800019d0:	0207f793          	andi	a5,a5,32
800019d4:	fe078ce3          	beqz	a5,800019cc <_Z6printfPKcz+0x478>
	*( (uint8_t *) addr ) = b;
800019d8:	00d70023          	sb	a3,0(a4)
800019dc:	00000513          	li	a0,0
800019e0:	f51ff06f          	j	80001930 <_Z6printfPKcz+0x3dc>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
800019e4:	fc087813          	andi	a6,a6,-64
800019e8:	04080813          	addi	a6,a6,64
            continue;
800019ec:	00178793          	addi	a5,a5,1
800019f0:	f9dff06f          	j	8000198c <_Z6printfPKcz+0x438>
    if(location>SCREEN_SIZE){
800019f4:	00000513          	li	a0,0
800019f8:	f39ff06f          	j	80001930 <_Z6printfPKcz+0x3dc>
	return *( (volatile uint8_t *) addr );
800019fc:	10000737          	lui	a4,0x10000
80001a00:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80001a04:	0207f793          	andi	a5,a5,32
80001a08:	fe078ce3          	beqz	a5,80001a00 <_Z6printfPKcz+0x4ac>
	*( (uint8_t *) addr ) = b;
80001a0c:	02500793          	li	a5,37
80001a10:	00f70023          	sb	a5,0(a4)
        return 0;
80001a14:	00099503          	lh	a0,0(s3)
80001a18:	c19ff06f          	j	80001630 <_Z6printfPKcz+0xdc>
	return *( (volatile uint8_t *) addr );
80001a1c:	10000737          	lui	a4,0x10000
80001a20:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80001a24:	0207f793          	andi	a5,a5,32
80001a28:	fe078ce3          	beqz	a5,80001a20 <_Z6printfPKcz+0x4cc>
	*( (uint8_t *) addr ) = b;
80001a2c:	00d70023          	sb	a3,0(a4)
        return 0;
80001a30:	00099503          	lh	a0,0(s3)
80001a34:	cf9ff06f          	j	8000172c <_Z6printfPKcz+0x1d8>
80001a38:	00008797          	auipc	a5,0x8
80001a3c:	89c78793          	addi	a5,a5,-1892 # 800092d4 <screenPos>
80001a40:	00079503          	lh	a0,0(a5)
80001a44:	c15ff06f          	j	80001658 <_Z6printfPKcz+0x104>
80001a48:	01079513          	slli	a0,a5,0x10
80001a4c:	01055513          	srli	a0,a0,0x10
80001a50:	ee1ff06f          	j	80001930 <_Z6printfPKcz+0x3dc>

80001a54 <_Z9printfSCRicPKcz>:

// *****************************************************************************
// Same as printf but you can set the color and the location on the screen
// It returns the size of the string printed
int printfSCR(int location, char color,const char* str, ...) 
{ 
80001a54:	f6010113          	addi	sp,sp,-160
80001a58:	06112e23          	sw	ra,124(sp)
80001a5c:	06812c23          	sw	s0,120(sp)
80001a60:	06912a23          	sw	s1,116(sp)
80001a64:	07212823          	sw	s2,112(sp)
80001a68:	07312623          	sw	s3,108(sp)
80001a6c:	07412423          	sw	s4,104(sp)
80001a70:	07512223          	sw	s5,100(sp)
80001a74:	07612023          	sw	s6,96(sp)
80001a78:	05712e23          	sw	s7,92(sp)
80001a7c:	05812c23          	sw	s8,88(sp)
80001a80:	05912a23          	sw	s9,84(sp)
80001a84:	05a12823          	sw	s10,80(sp)
80001a88:	05b12623          	sw	s11,76(sp)
    // index of where to store the characters of str in 
    // token 
    int strPos=0;
    // parsing the formatted string 
    int i=0;
    for (i = 0; str[i] != '\0'; i++) { 
80001a8c:	00064303          	lbu	t1,0(a2)
{ 
80001a90:	08f12a23          	sw	a5,148(sp)
    va_start(ptr, str);  
80001a94:	08c10793          	addi	a5,sp,140
{ 
80001a98:	08d12623          	sw	a3,140(sp)
80001a9c:	08e12823          	sw	a4,144(sp)
80001aa0:	09012c23          	sw	a6,152(sp)
80001aa4:	09112e23          	sw	a7,156(sp)
    va_start(ptr, str);  
80001aa8:	00f12e23          	sw	a5,28(sp)
    for (i = 0; str[i] != '\0'; i++) { 
80001aac:	54030863          	beqz	t1,80001ffc <_Z9printfSCRicPKcz+0x5a8>
    unsigned short buffer = (color << 8) | c;
80001ab0:	00859b93          	slli	s7,a1,0x8
80001ab4:	010b9713          	slli	a4,s7,0x10
80001ab8:	41075713          	srai	a4,a4,0x10
80001abc:	025beb93          	ori	s7,s7,37
80001ac0:	00100b13          	li	s6,1
80001ac4:	36059663          	bnez	a1,80001e30 <_Z9printfSCRicPKcz+0x3dc>
80001ac8:	008b1a93          	slli	s5,s6,0x8
80001acc:	010a9a93          	slli	s5,s5,0x10
80001ad0:	ffff0d37          	lui	s10,0xffff0
80001ad4:	ff010cb7          	lui	s9,0xff010
80001ad8:	01000c37          	lui	s8,0x1000
80001adc:	00058a13          	mv	s4,a1
80001ae0:	00050993          	mv	s3,a0
80001ae4:	00060913          	mv	s2,a2
80001ae8:	0015bd93          	seqz	s11,a1
80001aec:	410ada93          	srai	s5,s5,0x10
    for (i = 0; str[i] != '\0'; i++) { 
80001af0:	00000413          	li	s0,0
    int strPos=0;
80001af4:	00000493          	li	s1,0
    for (i = 0; str[i] != '\0'; i++) { 
80001af8:	00000793          	li	a5,0
80001afc:	0ffd0d13          	addi	s10,s10,255 # ffff00ff <_stack_top+0x7fbf00ff>
80001b00:	fffc8c93          	addi	s9,s9,-1 # ff00ffff <_stack_top+0x7ec0ffff>
80001b04:	fffc0c13          	addi	s8,s8,-1 # ffffff <_stack_size+0xff7fff>
80001b08:	0600006f          	j	80001b68 <_Z9printfSCRicPKcz+0x114>
        if(str[i]=='\n'){
            strPos = (strPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
            continue;    
        }
        if(str[i]=='%'){
            if(str[i+1]=='x'){
80001b0c:	00f907b3          	add	a5,s2,a5
80001b10:	0017c783          	lbu	a5,1(a5)
80001b14:	07800693          	li	a3,120
80001b18:	10d78463          	beq	a5,a3,80001c20 <_Z9printfSCRicPKcz+0x1cc>
                i++;
                int value=va_arg(ptr, int);
                strPos+=printHex(location+strPos,value,color);
            }
            else if(str[i+1]=='d'){
80001b1c:	06400693          	li	a3,100
80001b20:	2ed78263          	beq	a5,a3,80001e04 <_Z9printfSCRicPKcz+0x3b0>
                i++;
                unsigned int value=va_arg(ptr, unsigned int);
                strPos+=printDec(location+strPos,value,color);
            }
            else if(str[i+1]=='c'){
80001b24:	06300693          	li	a3,99
80001b28:	3cd78663          	beq	a5,a3,80001ef4 <_Z9printfSCRicPKcz+0x4a0>
                i++;
                char value=va_arg(ptr, int);
                putch(location+strPos,value,color);
                strPos++;
            }
            else if (str[i+1]=='s')
80001b2c:	07300693          	li	a3,115
80001b30:	26d78a63          	beq	a5,a3,80001da4 <_Z9printfSCRicPKcz+0x350>
    if(location<0){
80001b34:	42054063          	bltz	a0,80001f54 <_Z9printfSCRicPKcz+0x500>
    if(location>SCREEN_SIZE){
80001b38:	4c000793          	li	a5,1216
80001b3c:	00a7ca63          	blt	a5,a0,80001b50 <_Z9printfSCRicPKcz+0xfc>
    screen[location] = buffer;
80001b40:	00151513          	slli	a0,a0,0x1
80001b44:	880007b7          	lui	a5,0x88000
80001b48:	00a78533          	add	a0,a5,a0
80001b4c:	01751023          	sh	s7,0(a0)
                strPos++;
            }
        }
        else{
            putch(location+strPos,str[i],color);
            strPos++;
80001b50:	00148493          	addi	s1,s1,1
80001b54:	00060413          	mv	s0,a2
    for (i = 0; str[i] != '\0'; i++) { 
80001b58:	008907b3          	add	a5,s2,s0
80001b5c:	0007c303          	lbu	t1,0(a5) # 88000000 <_stack_top+0x7c00000>
80001b60:	00040793          	mv	a5,s0
80001b64:	06030263          	beqz	t1,80001bc8 <_Z9printfSCRicPKcz+0x174>
        if(str[i]=='\n'){
80001b68:	00a00693          	li	a3,10
80001b6c:	00140613          	addi	a2,s0,1
80001b70:	02d30e63          	beq	t1,a3,80001bac <_Z9printfSCRicPKcz+0x158>
        if(str[i]=='%'){
80001b74:	02500693          	li	a3,37
80001b78:	00998533          	add	a0,s3,s1
80001b7c:	f8d308e3          	beq	t1,a3,80001b0c <_Z9printfSCRicPKcz+0xb8>
    if(location<0){
80001b80:	08054463          	bltz	a0,80001c08 <_Z9printfSCRicPKcz+0x1b4>
    if(location>SCREEN_SIZE){
80001b84:	4c000793          	li	a5,1216
80001b88:	fca7c4e3          	blt	a5,a0,80001b50 <_Z9printfSCRicPKcz+0xfc>
    unsigned short buffer = (color << 8) | c;
80001b8c:	00676333          	or	t1,a4,t1
    screen[location] = buffer;
80001b90:	00151793          	slli	a5,a0,0x1
    unsigned short buffer = (color << 8) | c;
80001b94:	01031313          	slli	t1,t1,0x10
    screen[location] = buffer;
80001b98:	88000537          	lui	a0,0x88000
    unsigned short buffer = (color << 8) | c;
80001b9c:	01035313          	srli	t1,t1,0x10
    screen[location] = buffer;
80001ba0:	00f50533          	add	a0,a0,a5
80001ba4:	00651023          	sh	t1,0(a0) # 88000000 <_stack_top+0x7c00000>
    return 1;
80001ba8:	fa9ff06f          	j	80001b50 <_Z9printfSCRicPKcz+0xfc>
            continue;    
80001bac:	00060413          	mv	s0,a2
    for (i = 0; str[i] != '\0'; i++) { 
80001bb0:	008907b3          	add	a5,s2,s0
80001bb4:	0007c303          	lbu	t1,0(a5)
            strPos = (strPos& ~(SCREEN_WIDTH-1))+SCREEN_WIDTH;
80001bb8:	fc04f493          	andi	s1,s1,-64
80001bbc:	04048493          	addi	s1,s1,64
    for (i = 0; str[i] != '\0'; i++) { 
80001bc0:	00040793          	mv	a5,s0
80001bc4:	fa0312e3          	bnez	t1,80001b68 <_Z9printfSCRicPKcz+0x114>
    } 
  
    // ending traversal 
    va_end(ptr); 
    return strPos; 
} 
80001bc8:	07c12083          	lw	ra,124(sp)
80001bcc:	07812403          	lw	s0,120(sp)
80001bd0:	00048513          	mv	a0,s1
80001bd4:	07012903          	lw	s2,112(sp)
80001bd8:	07412483          	lw	s1,116(sp)
80001bdc:	06c12983          	lw	s3,108(sp)
80001be0:	06812a03          	lw	s4,104(sp)
80001be4:	06412a83          	lw	s5,100(sp)
80001be8:	06012b03          	lw	s6,96(sp)
80001bec:	05c12b83          	lw	s7,92(sp)
80001bf0:	05812c03          	lw	s8,88(sp)
80001bf4:	05412c83          	lw	s9,84(sp)
80001bf8:	05012d03          	lw	s10,80(sp)
80001bfc:	04c12d83          	lw	s11,76(sp)
80001c00:	0a010113          	addi	sp,sp,160
80001c04:	00008067          	ret
	return *( (volatile uint8_t *) addr );
80001c08:	100006b7          	lui	a3,0x10000
80001c0c:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80001c10:	0207f793          	andi	a5,a5,32
80001c14:	fe078ce3          	beqz	a5,80001c0c <_Z9printfSCRicPKcz+0x1b8>
	*( (uint8_t *) addr ) = b;
80001c18:	00668023          	sb	t1,0(a3)
        return 0;
80001c1c:	f35ff06f          	j	80001b50 <_Z9printfSCRicPKcz+0xfc>
                int value=va_arg(ptr, int);
80001c20:	01c12603          	lw	a2,28(sp)
    char hexChars[] = "0123456789ABCDEF";
80001c24:	00007797          	auipc	a5,0x7
80001c28:	fb878793          	addi	a5,a5,-72 # 80008bdc <_etext+0xfe0>
80001c2c:	00c7a803          	lw	a6,12(a5)
                int value=va_arg(ptr, int);
80001c30:	00062583          	lw	a1,0(a2)
    char hexChars[] = "0123456789ABCDEF";
80001c34:	0007af03          	lw	t5,0(a5)
80001c38:	0047ae03          	lw	t3,4(a5)
80001c3c:	0087a883          	lw	a7,8(a5)
80001c40:	0107cf83          	lbu	t6,16(a5)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80001c44:	4085d693          	srai	a3,a1,0x8
80001c48:	40c5d793          	srai	a5,a1,0xc
80001c4c:	4185d313          	srai	t1,a1,0x18
    char hexChars[] = "0123456789ABCDEF";
80001c50:	03012c23          	sw	a6,56(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001c54:	01c5de93          	srli	t4,a1,0x1c
80001c58:	04010813          	addi	a6,sp,64
80001c5c:	00f7f793          	andi	a5,a5,15
80001c60:	00f6f693          	andi	a3,a3,15
80001c64:	00f37313          	andi	t1,t1,15
    char hexChars[] = "0123456789ABCDEF";
80001c68:	03e12623          	sw	t5,44(sp)
80001c6c:	03112a23          	sw	a7,52(sp)
80001c70:	03c12823          	sw	t3,48(sp)
80001c74:	03f10e23          	sb	t6,60(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001c78:	00d806b3          	add	a3,a6,a3
80001c7c:	01d80eb3          	add	t4,a6,t4
80001c80:	00f807b3          	add	a5,a6,a5
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80001c84:	4045d893          	srai	a7,a1,0x4
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001c88:	00680333          	add	t1,a6,t1
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80001c8c:	4145d813          	srai	a6,a1,0x14
80001c90:	fec6ce03          	lbu	t3,-20(a3)
80001c94:	fec7c783          	lbu	a5,-20(a5)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001c98:	fecec683          	lbu	a3,-20(t4)
80001c9c:	00f8f893          	andi	a7,a7,15
80001ca0:	04010e93          	addi	t4,sp,64
80001ca4:	fec34303          	lbu	t1,-20(t1) # 87ffffec <_stack_top+0x7bfffec>
80001ca8:	00f87813          	andi	a6,a6,15
80001cac:	011e88b3          	add	a7,t4,a7
80001cb0:	010e8833          	add	a6,t4,a6
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80001cb4:	4105de93          	srai	t4,a1,0x10
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001cb8:	04010f13          	addi	t5,sp,64
80001cbc:	fec8c883          	lbu	a7,-20(a7)
80001cc0:	00f5f593          	andi	a1,a1,15
80001cc4:	fec84803          	lbu	a6,-20(a6)
80001cc8:	00fefe93          	andi	t4,t4,15
80001ccc:	008e1e13          	slli	t3,t3,0x8
80001cd0:	00bf05b3          	add	a1,t5,a1
80001cd4:	01a7f7b3          	and	a5,a5,s10
80001cd8:	00831313          	slli	t1,t1,0x8
80001cdc:	01a6f6b3          	and	a3,a3,s10
80001ce0:	01df0eb3          	add	t4,t5,t4
80001ce4:	01c7e7b3          	or	a5,a5,t3
80001ce8:	0066e6b3          	or	a3,a3,t1
80001cec:	fec5ce03          	lbu	t3,-20(a1)
80001cf0:	fecec583          	lbu	a1,-20(t4)
80001cf4:	01081813          	slli	a6,a6,0x10
80001cf8:	01089893          	slli	a7,a7,0x10
80001cfc:	0197f7b3          	and	a5,a5,s9
80001d00:	0196f6b3          	and	a3,a3,s9
80001d04:	0106e6b3          	or	a3,a3,a6
80001d08:	0117e7b3          	or	a5,a5,a7
80001d0c:	018e1813          	slli	a6,t3,0x18
80001d10:	01859593          	slli	a1,a1,0x18
80001d14:	0187f7b3          	and	a5,a5,s8
80001d18:	0186f6b3          	and	a3,a3,s8
80001d1c:	0107e7b3          	or	a5,a5,a6
80001d20:	00b6e6b3          	or	a3,a3,a1
                int value=va_arg(ptr, int);
80001d24:	00460613          	addi	a2,a2,4
80001d28:	00c12e23          	sw	a2,28(sp)
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
80001d2c:	02010423          	sb	zero,40(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001d30:	02d12023          	sw	a3,32(sp)
80001d34:	02f12223          	sw	a5,36(sp)
    if(color==0){
80001d38:	02010593          	addi	a1,sp,32
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001d3c:	00000813          	li	a6,0
80001d40:	0e0d9c63          	bnez	s11,80001e38 <_Z9printfSCRicPKcz+0x3e4>
    while(string[i] != '\0'){
80001d44:	0005c683          	lbu	a3,0(a1)
        if(string[i]=='\n'){
80001d48:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80001d4c:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80001d50:	88000e37          	lui	t3,0x88000
        if(!putch(location + i, string[i],color)){
80001d54:	00a80633          	add	a2,a6,a0
    while(string[i] != '\0'){
80001d58:	02068e63          	beqz	a3,80001d94 <_Z9printfSCRicPKcz+0x340>
        if(string[i]=='\n'){
80001d5c:	1c668e63          	beq	a3,t1,80001f38 <_Z9printfSCRicPKcz+0x4e4>
    unsigned short buffer = (color << 8) | c;
80001d60:	00dae7b3          	or	a5,s5,a3
    screen[location] = buffer;
80001d64:	00161893          	slli	a7,a2,0x1
    unsigned short buffer = (color << 8) | c;
80001d68:	01079793          	slli	a5,a5,0x10
80001d6c:	0107d793          	srli	a5,a5,0x10
    screen[location] = buffer;
80001d70:	011e08b3          	add	a7,t3,a7
    if(location<0){
80001d74:	12064c63          	bltz	a2,80001eac <_Z9printfSCRicPKcz+0x458>
    if(location>SCREEN_SIZE){
80001d78:	02cec263          	blt	t4,a2,80001d9c <_Z9printfSCRicPKcz+0x348>
    screen[location] = buffer;
80001d7c:	00f89023          	sh	a5,0(a7)
        if(rainbow==1){
80001d80:	00158593          	addi	a1,a1,1
    while(string[i] != '\0'){
80001d84:	0005c683          	lbu	a3,0(a1)
80001d88:	00180813          	addi	a6,a6,1
        if(!putch(location + i, string[i],color)){
80001d8c:	00a80633          	add	a2,a6,a0
    while(string[i] != '\0'){
80001d90:	fc0696e3          	bnez	a3,80001d5c <_Z9printfSCRicPKcz+0x308>
80001d94:	0ff87793          	andi	a5,a6,255
80001d98:	00f484b3          	add	s1,s1,a5
80001d9c:	00240413          	addi	s0,s0,2
80001da0:	db9ff06f          	j	80001b58 <_Z9printfSCRicPKcz+0x104>
                char *value=va_arg(ptr, char*);
80001da4:	01c12783          	lw	a5,28(sp)
80001da8:	00478693          	addi	a3,a5,4
80001dac:	00d12e23          	sw	a3,28(sp)
80001db0:	0007a883          	lw	a7,0(a5)
    if(color==0){
80001db4:	1a0d9e63          	bnez	s11,80001f70 <_Z9printfSCRicPKcz+0x51c>
                char *value=va_arg(ptr, char*);
80001db8:	00000793          	li	a5,0
        if(string[i]=='\n'){
80001dbc:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80001dc0:	4c000e93          	li	t4,1216
    screen[location] = buffer;
80001dc4:	88000e37          	lui	t3,0x88000
    while(string[i] != '\0'){
80001dc8:	00f886b3          	add	a3,a7,a5
80001dcc:	0006c683          	lbu	a3,0(a3)
        if(!putch(location + i, string[i],color)){
80001dd0:	00a785b3          	add	a1,a5,a0
    while(string[i] != '\0'){
80001dd4:	fc0682e3          	beqz	a3,80001d98 <_Z9printfSCRicPKcz+0x344>
        if(string[i]=='\n'){
80001dd8:	16668663          	beq	a3,t1,80001f44 <_Z9printfSCRicPKcz+0x4f0>
    unsigned short buffer = (color << 8) | c;
80001ddc:	00dae633          	or	a2,s5,a3
    screen[location] = buffer;
80001de0:	00159813          	slli	a6,a1,0x1
    unsigned short buffer = (color << 8) | c;
80001de4:	01061613          	slli	a2,a2,0x10
80001de8:	01065613          	srli	a2,a2,0x10
    screen[location] = buffer;
80001dec:	010e0833          	add	a6,t3,a6
    if(location<0){
80001df0:	0c05cc63          	bltz	a1,80001ec8 <_Z9printfSCRicPKcz+0x474>
    if(location>SCREEN_SIZE){
80001df4:	0ebeca63          	blt	t4,a1,80001ee8 <_Z9printfSCRicPKcz+0x494>
    screen[location] = buffer;
80001df8:	00c81023          	sh	a2,0(a6)
        if(rainbow==1){
80001dfc:	00178793          	addi	a5,a5,1
80001e00:	fc9ff06f          	j	80001dc8 <_Z9printfSCRicPKcz+0x374>
                unsigned int value=va_arg(ptr, unsigned int);
80001e04:	01c12783          	lw	a5,28(sp)
                strPos+=printDec(location+strPos,value,color);
80001e08:	000a0613          	mv	a2,s4
80001e0c:	00e12623          	sw	a4,12(sp)
80001e10:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
80001e14:	00478793          	addi	a5,a5,4
80001e18:	00f12e23          	sw	a5,28(sp)
                strPos+=printDec(location+strPos,value,color);
80001e1c:	950ff0ef          	jal	ra,80000f6c <_Z8printDeciic>
80001e20:	00a484b3          	add	s1,s1,a0
80001e24:	00240413          	addi	s0,s0,2
80001e28:	00c12703          	lw	a4,12(sp)
80001e2c:	d2dff06f          	j	80001b58 <_Z9printfSCRicPKcz+0x104>
80001e30:	0ff5fb13          	andi	s6,a1,255
80001e34:	c95ff06f          	j	80001ac8 <_Z9printfSCRicPKcz+0x74>
    while(string[i] != '\0'){
80001e38:	0005c683          	lbu	a3,0(a1)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80001e3c:	000b0793          	mv	a5,s6
        if(string[i]=='\n'){
80001e40:	00a00e13          	li	t3,10
    if(location>SCREEN_SIZE){
80001e44:	4c000f93          	li	t6,1216
    screen[location] = buffer;
80001e48:	88000eb7          	lui	t4,0x88000
            if(color>15){
80001e4c:	00f00f13          	li	t5,15
        if(!putch(location + i, string[i],color)){
80001e50:	00a80333          	add	t1,a6,a0
    while(string[i] != '\0'){
80001e54:	f40680e3          	beqz	a3,80001d94 <_Z9printfSCRicPKcz+0x340>
        if(string[i]=='\n'){
80001e58:	05c68463          	beq	a3,t3,80001ea0 <_Z9printfSCRicPKcz+0x44c>
    unsigned short buffer = (color << 8) | c;
80001e5c:	00879893          	slli	a7,a5,0x8
    screen[location] = buffer;
80001e60:	00131613          	slli	a2,t1,0x1
            color++;
80001e64:	00178793          	addi	a5,a5,1
    unsigned short buffer = (color << 8) | c;
80001e68:	00d8e8b3          	or	a7,a7,a3
    screen[location] = buffer;
80001e6c:	00ce8633          	add	a2,t4,a2
            color++;
80001e70:	0ff7f793          	andi	a5,a5,255
    if(location<0){
80001e74:	02034c63          	bltz	t1,80001eac <_Z9printfSCRicPKcz+0x458>
    if(location>SCREEN_SIZE){
80001e78:	f26fc2e3          	blt	t6,t1,80001d9c <_Z9printfSCRicPKcz+0x348>
    screen[location] = buffer;
80001e7c:	01161023          	sh	a7,0(a2)
            if(color>15){
80001e80:	00ff7463          	bgeu	t5,a5,80001e88 <_Z9printfSCRicPKcz+0x434>
                color=1;
80001e84:	000d8793          	mv	a5,s11
80001e88:	00158593          	addi	a1,a1,1
    while(string[i] != '\0'){
80001e8c:	0005c683          	lbu	a3,0(a1)
80001e90:	00180813          	addi	a6,a6,1
        if(!putch(location + i, string[i],color)){
80001e94:	00a80333          	add	t1,a6,a0
    while(string[i] != '\0'){
80001e98:	ee068ee3          	beqz	a3,80001d94 <_Z9printfSCRicPKcz+0x340>
        if(string[i]=='\n'){
80001e9c:	fdc690e3          	bne	a3,t3,80001e5c <_Z9printfSCRicPKcz+0x408>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80001ea0:	fc057513          	andi	a0,a0,-64
80001ea4:	04050513          	addi	a0,a0,64
            continue;
80001ea8:	fe1ff06f          	j	80001e88 <_Z9printfSCRicPKcz+0x434>
	return *( (volatile uint8_t *) addr );
80001eac:	10000637          	lui	a2,0x10000
80001eb0:	00564783          	lbu	a5,5(a2) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80001eb4:	0207f793          	andi	a5,a5,32
80001eb8:	fe078ce3          	beqz	a5,80001eb0 <_Z9printfSCRicPKcz+0x45c>
	*( (uint8_t *) addr ) = b;
80001ebc:	00d60023          	sb	a3,0(a2)
        return 0;
80001ec0:	00240413          	addi	s0,s0,2
80001ec4:	c95ff06f          	j	80001b58 <_Z9printfSCRicPKcz+0x104>
	return *( (volatile uint8_t *) addr );
80001ec8:	10000637          	lui	a2,0x10000
80001ecc:	00564783          	lbu	a5,5(a2) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80001ed0:	0207f793          	andi	a5,a5,32
80001ed4:	fe078ce3          	beqz	a5,80001ecc <_Z9printfSCRicPKcz+0x478>
            return 0;
80001ed8:	00000793          	li	a5,0
	*( (uint8_t *) addr ) = b;
80001edc:	00d60023          	sb	a3,0(a2)
        return 0;
80001ee0:	00f484b3          	add	s1,s1,a5
80001ee4:	eb9ff06f          	j	80001d9c <_Z9printfSCRicPKcz+0x348>
            return 0;
80001ee8:	00000793          	li	a5,0
80001eec:	00f484b3          	add	s1,s1,a5
80001ef0:	eadff06f          	j	80001d9c <_Z9printfSCRicPKcz+0x348>
                char value=va_arg(ptr, int);
80001ef4:	01c12783          	lw	a5,28(sp)
80001ef8:	00478693          	addi	a3,a5,4
80001efc:	00d12e23          	sw	a3,28(sp)
80001f00:	0007c683          	lbu	a3,0(a5)
    if(location<0){
80001f04:	0c054e63          	bltz	a0,80001fe0 <_Z9printfSCRicPKcz+0x58c>
    if(location>SCREEN_SIZE){
80001f08:	4c000793          	li	a5,1216
80001f0c:	02a7c063          	blt	a5,a0,80001f2c <_Z9printfSCRicPKcz+0x4d8>
    unsigned short buffer = (color << 8) | c;
80001f10:	00d766b3          	or	a3,a4,a3
    screen[location] = buffer;
80001f14:	00151513          	slli	a0,a0,0x1
    unsigned short buffer = (color << 8) | c;
80001f18:	01069693          	slli	a3,a3,0x10
    screen[location] = buffer;
80001f1c:	880007b7          	lui	a5,0x88000
    unsigned short buffer = (color << 8) | c;
80001f20:	0106d693          	srli	a3,a3,0x10
    screen[location] = buffer;
80001f24:	00a78533          	add	a0,a5,a0
80001f28:	00d51023          	sh	a3,0(a0)
                strPos++;
80001f2c:	00148493          	addi	s1,s1,1
80001f30:	00240413          	addi	s0,s0,2
80001f34:	c25ff06f          	j	80001b58 <_Z9printfSCRicPKcz+0x104>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80001f38:	fc057513          	andi	a0,a0,-64
80001f3c:	04050513          	addi	a0,a0,64
            continue;
80001f40:	e41ff06f          	j	80001d80 <_Z9printfSCRicPKcz+0x32c>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80001f44:	fc057513          	andi	a0,a0,-64
80001f48:	04050513          	addi	a0,a0,64
            continue;
80001f4c:	00178793          	addi	a5,a5,1 # 88000001 <_stack_top+0x7c00001>
80001f50:	e79ff06f          	j	80001dc8 <_Z9printfSCRicPKcz+0x374>
	return *( (volatile uint8_t *) addr );
80001f54:	100006b7          	lui	a3,0x10000
80001f58:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80001f5c:	0207f793          	andi	a5,a5,32
80001f60:	fe078ce3          	beqz	a5,80001f58 <_Z9printfSCRicPKcz+0x504>
	*( (uint8_t *) addr ) = b;
80001f64:	02500793          	li	a5,37
80001f68:	00f68023          	sb	a5,0(a3)
        return 0;
80001f6c:	be5ff06f          	j	80001b50 <_Z9printfSCRicPKcz+0xfc>
                char *value=va_arg(ptr, char*);
80001f70:	000b0813          	mv	a6,s6
80001f74:	00000793          	li	a5,0
        if(string[i]=='\n'){
80001f78:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80001f7c:	4c000f13          	li	t5,1216
    screen[location] = buffer;
80001f80:	88000e37          	lui	t3,0x88000
            if(color>15){
80001f84:	00f00e93          	li	t4,15
    while(string[i] != '\0'){
80001f88:	00f886b3          	add	a3,a7,a5
80001f8c:	0006c683          	lbu	a3,0(a3)
        if(!putch(location + i, string[i],color)){
80001f90:	00a78fb3          	add	t6,a5,a0
    while(string[i] != '\0'){
80001f94:	e00682e3          	beqz	a3,80001d98 <_Z9printfSCRicPKcz+0x344>
        if(string[i]=='\n'){
80001f98:	02668c63          	beq	a3,t1,80001fd0 <_Z9printfSCRicPKcz+0x57c>
    unsigned short buffer = (color << 8) | c;
80001f9c:	00881593          	slli	a1,a6,0x8
    screen[location] = buffer;
80001fa0:	001f9613          	slli	a2,t6,0x1
            color++;
80001fa4:	00180813          	addi	a6,a6,1
    unsigned short buffer = (color << 8) | c;
80001fa8:	00d5e5b3          	or	a1,a1,a3
    screen[location] = buffer;
80001fac:	00ce0633          	add	a2,t3,a2
            color++;
80001fb0:	0ff87813          	andi	a6,a6,255
    if(location<0){
80001fb4:	f00fcae3          	bltz	t6,80001ec8 <_Z9printfSCRicPKcz+0x474>
    if(location>SCREEN_SIZE){
80001fb8:	f3ff48e3          	blt	t5,t6,80001ee8 <_Z9printfSCRicPKcz+0x494>
    screen[location] = buffer;
80001fbc:	00b61023          	sh	a1,0(a2)
            if(color>15){
80001fc0:	010ef463          	bgeu	t4,a6,80001fc8 <_Z9printfSCRicPKcz+0x574>
                color=1;
80001fc4:	000d8813          	mv	a6,s11
80001fc8:	00178793          	addi	a5,a5,1
80001fcc:	fbdff06f          	j	80001f88 <_Z9printfSCRicPKcz+0x534>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80001fd0:	fc057513          	andi	a0,a0,-64
80001fd4:	04050513          	addi	a0,a0,64
            continue;
80001fd8:	00178793          	addi	a5,a5,1
80001fdc:	fadff06f          	j	80001f88 <_Z9printfSCRicPKcz+0x534>
	return *( (volatile uint8_t *) addr );
80001fe0:	10000637          	lui	a2,0x10000
80001fe4:	00564783          	lbu	a5,5(a2) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80001fe8:	0207f793          	andi	a5,a5,32
80001fec:	fe078ce3          	beqz	a5,80001fe4 <_Z9printfSCRicPKcz+0x590>
	*( (uint8_t *) addr ) = b;
80001ff0:	00d60023          	sb	a3,0(a2)
                strPos++;
80001ff4:	00148493          	addi	s1,s1,1
80001ff8:	f39ff06f          	j	80001f30 <_Z9printfSCRicPKcz+0x4dc>
    int strPos=0;
80001ffc:	00000493          	li	s1,0
    return strPos; 
80002000:	bc9ff06f          	j	80001bc8 <_Z9printfSCRicPKcz+0x174>

80002004 <_Z11uart_printfPKcz>:

// same as all the other printfs but sends the data to uart
int uart_printf(const char* str, ...) 
{ 
80002004:	f9010113          	addi	sp,sp,-112
80002008:	04112623          	sw	ra,76(sp)
8000200c:	04812423          	sw	s0,72(sp)
80002010:	04912223          	sw	s1,68(sp)
80002014:	05212023          	sw	s2,64(sp)
80002018:	03312e23          	sw	s3,60(sp)
8000201c:	03412c23          	sw	s4,56(sp)
80002020:	03512a23          	sw	s5,52(sp)
    // index of where to store the characters of str in 
    // token 
    int strPos=0;
    // parsing the formatted string 
    int i=0;
    for (i = 0; str[i] != '\0'; i++) { 
80002024:	00054303          	lbu	t1,0(a0)
{ 
80002028:	06f12223          	sw	a5,100(sp)
    va_start(ptr, str);  
8000202c:	05410793          	addi	a5,sp,84
{ 
80002030:	04b12a23          	sw	a1,84(sp)
80002034:	04c12c23          	sw	a2,88(sp)
80002038:	04d12e23          	sw	a3,92(sp)
8000203c:	06e12023          	sw	a4,96(sp)
80002040:	07012423          	sw	a6,104(sp)
80002044:	07112623          	sw	a7,108(sp)
    va_start(ptr, str);  
80002048:	00f12623          	sw	a5,12(sp)
    for (i = 0; str[i] != '\0'; i++) { 
8000204c:	3a030c63          	beqz	t1,80002404 <_Z11uart_printfPKcz+0x400>
80002050:	ffff0ab7          	lui	s5,0xffff0
80002054:	ff010a37          	lui	s4,0xff010
80002058:	010009b7          	lui	s3,0x1000
8000205c:	00050913          	mv	s2,a0
80002060:	00000413          	li	s0,0
    int strPos=0;
80002064:	00000493          	li	s1,0
    for (i = 0; str[i] != '\0'; i++) { 
80002068:	00000793          	li	a5,0
8000206c:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <_stack_top+0x7fbf00ff>
80002070:	fffa0a13          	addi	s4,s4,-1 # ff00ffff <_stack_top+0x7ec0ffff>
80002074:	fff98993          	addi	s3,s3,-1 # ffffff <_stack_size+0xff7fff>
        if(str[i]=='%'){
80002078:	02500713          	li	a4,37
8000207c:	00140693          	addi	a3,s0,1
80002080:	04e30c63          	beq	t1,a4,800020d8 <_Z11uart_printfPKcz+0xd4>
	return *( (volatile uint8_t *) addr );
80002084:	10000737          	lui	a4,0x10000
80002088:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
8000208c:	0207f793          	andi	a5,a5,32
80002090:	fe078ce3          	beqz	a5,80002088 <_Z11uart_printfPKcz+0x84>
	*( (uint8_t *) addr ) = b;
80002094:	00670023          	sb	t1,0(a4)
                strPos++;
            }
        }
        else{
            putch(-100,str[i],0);
            strPos++;
80002098:	00148493          	addi	s1,s1,1
8000209c:	00068413          	mv	s0,a3
    for (i = 0; str[i] != '\0'; i++) { 
800020a0:	008907b3          	add	a5,s2,s0
800020a4:	0007c303          	lbu	t1,0(a5)
800020a8:	00040793          	mv	a5,s0
800020ac:	fc0316e3          	bnez	t1,80002078 <_Z11uart_printfPKcz+0x74>
    } 
  
    // ending traversal 
    va_end(ptr); 
    return strPos; 
} 
800020b0:	04c12083          	lw	ra,76(sp)
800020b4:	04812403          	lw	s0,72(sp)
800020b8:	00048513          	mv	a0,s1
800020bc:	04012903          	lw	s2,64(sp)
800020c0:	04412483          	lw	s1,68(sp)
800020c4:	03c12983          	lw	s3,60(sp)
800020c8:	03812a03          	lw	s4,56(sp)
800020cc:	03412a83          	lw	s5,52(sp)
800020d0:	07010113          	addi	sp,sp,112
800020d4:	00008067          	ret
            if(str[i+1]=='x'){
800020d8:	00f907b3          	add	a5,s2,a5
800020dc:	0017c783          	lbu	a5,1(a5)
800020e0:	07800713          	li	a4,120
800020e4:	04e78063          	beq	a5,a4,80002124 <_Z11uart_printfPKcz+0x120>
            else if(str[i+1]=='d'){
800020e8:	06400713          	li	a4,100
800020ec:	28e78263          	beq	a5,a4,80002370 <_Z11uart_printfPKcz+0x36c>
            else if(str[i+1]=='c'){
800020f0:	06300713          	li	a4,99
800020f4:	2ee78063          	beq	a5,a4,800023d4 <_Z11uart_printfPKcz+0x3d0>
            else if (str[i+1]=='s')
800020f8:	07300613          	li	a2,115
	return *( (volatile uint8_t *) addr );
800020fc:	10000737          	lui	a4,0x10000
            else if (str[i+1]=='s')
80002100:	1cc78c63          	beq	a5,a2,800022d8 <_Z11uart_printfPKcz+0x2d4>
	return *( (volatile uint8_t *) addr );
80002104:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
80002108:	0207f793          	andi	a5,a5,32
8000210c:	fe078ce3          	beqz	a5,80002104 <_Z11uart_printfPKcz+0x100>
	*( (uint8_t *) addr ) = b;
80002110:	02500793          	li	a5,37
80002114:	00f70023          	sb	a5,0(a4)
                strPos++;
80002118:	00148493          	addi	s1,s1,1
8000211c:	00068413          	mv	s0,a3
80002120:	f81ff06f          	j	800020a0 <_Z11uart_printfPKcz+0x9c>
                int value=va_arg(ptr, int);
80002124:	00c12503          	lw	a0,12(sp)
    char hexChars[] = "0123456789ABCDEF";
80002128:	00007797          	auipc	a5,0x7
8000212c:	ab478793          	addi	a5,a5,-1356 # 80008bdc <_etext+0xfe0>
80002130:	0107c583          	lbu	a1,16(a5)
                int value=va_arg(ptr, int);
80002134:	00052683          	lw	a3,0(a0)
    char hexChars[] = "0123456789ABCDEF";
80002138:	0007ae83          	lw	t4,0(a5)
8000213c:	0047ae03          	lw	t3,4(a5)
80002140:	0087a303          	lw	t1,8(a5)
80002144:	00c7a803          	lw	a6,12(a5)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80002148:	4086d713          	srai	a4,a3,0x8
    char hexChars[] = "0123456789ABCDEF";
8000214c:	02b10623          	sb	a1,44(sp)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80002150:	40c6d793          	srai	a5,a3,0xc
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002154:	03010593          	addi	a1,sp,48
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80002158:	4186d613          	srai	a2,a3,0x18
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
8000215c:	00f77713          	andi	a4,a4,15
    char hexChars[] = "0123456789ABCDEF";
80002160:	01d12e23          	sw	t4,28(sp)
80002164:	03012423          	sw	a6,40(sp)
80002168:	03c12023          	sw	t3,32(sp)
8000216c:	02612223          	sw	t1,36(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002170:	00e58733          	add	a4,a1,a4
80002174:	01c6d893          	srli	a7,a3,0x1c
80002178:	00f7f793          	andi	a5,a5,15
8000217c:	00f67613          	andi	a2,a2,15
80002180:	011588b3          	add	a7,a1,a7
80002184:	00c58633          	add	a2,a1,a2
80002188:	fec74e03          	lbu	t3,-20(a4)
8000218c:	00f587b3          	add	a5,a1,a5
        value >>= 4; // Shift right by 4 bits to get the next hex digit
80002190:	4046d813          	srai	a6,a3,0x4
80002194:	4146d593          	srai	a1,a3,0x14
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002198:	fec8c703          	lbu	a4,-20(a7)
8000219c:	fec64303          	lbu	t1,-20(a2)
800021a0:	fec7c783          	lbu	a5,-20(a5)
800021a4:	03010613          	addi	a2,sp,48
800021a8:	00f87813          	andi	a6,a6,15
800021ac:	00f5f593          	andi	a1,a1,15
800021b0:	01060833          	add	a6,a2,a6
800021b4:	00b605b3          	add	a1,a2,a1
        value >>= 4; // Shift right by 4 bits to get the next hex digit
800021b8:	4106d613          	srai	a2,a3,0x10
800021bc:	fec84883          	lbu	a7,-20(a6)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
800021c0:	00f6f693          	andi	a3,a3,15
800021c4:	fec5c803          	lbu	a6,-20(a1)
800021c8:	00f67613          	andi	a2,a2,15
800021cc:	008e1593          	slli	a1,t3,0x8
800021d0:	03010e13          	addi	t3,sp,48
800021d4:	00de06b3          	add	a3,t3,a3
800021d8:	00ce0633          	add	a2,t3,a2
800021dc:	00831313          	slli	t1,t1,0x8
800021e0:	0157f7b3          	and	a5,a5,s5
800021e4:	01577733          	and	a4,a4,s5
800021e8:	00b7e7b3          	or	a5,a5,a1
800021ec:	00676733          	or	a4,a4,t1
800021f0:	fec6c583          	lbu	a1,-20(a3)
800021f4:	fec64683          	lbu	a3,-20(a2)
800021f8:	01089893          	slli	a7,a7,0x10
800021fc:	01081613          	slli	a2,a6,0x10
80002200:	0147f7b3          	and	a5,a5,s4
80002204:	01477733          	and	a4,a4,s4
80002208:	0117e7b3          	or	a5,a5,a7
8000220c:	00c76733          	or	a4,a4,a2
80002210:	01869693          	slli	a3,a3,0x18
80002214:	01859613          	slli	a2,a1,0x18
80002218:	0137f7b3          	and	a5,a5,s3
8000221c:	01377733          	and	a4,a4,s3
80002220:	00d76733          	or	a4,a4,a3
80002224:	00c7e7b3          	or	a5,a5,a2
80002228:	00f12a23          	sw	a5,20(sp)
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
8000222c:	00010c23          	sb	zero,24(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002230:	00e12823          	sw	a4,16(sp)
80002234:	01010813          	addi	a6,sp,16
    while(string[i] != '\0'){
80002238:	00084703          	lbu	a4,0(a6)
                int value=va_arg(ptr, int);
8000223c:	00450513          	addi	a0,a0,4
80002240:	00a12623          	sw	a0,12(sp)
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
80002244:	f9c00893          	li	a7,-100
80002248:	00000513          	li	a0,0
8000224c:	00100793          	li	a5,1
        if(string[i]=='\n'){
80002250:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80002254:	4c000f13          	li	t5,1216
    screen[location] = buffer;
80002258:	88000e37          	lui	t3,0x88000
            if(color>15){
8000225c:	00f00e93          	li	t4,15
        if(!putch(location + i, string[i],color)){
80002260:	011506b3          	add	a3,a0,a7
    while(string[i] != '\0'){
80002264:	04070463          	beqz	a4,800022ac <_Z11uart_printfPKcz+0x2a8>
        if(string[i]=='\n'){
80002268:	0e670e63          	beq	a4,t1,80002364 <_Z11uart_printfPKcz+0x360>
    unsigned short buffer = (color << 8) | c;
8000226c:	00879593          	slli	a1,a5,0x8
    screen[location] = buffer;
80002270:	00169613          	slli	a2,a3,0x1
            color++;
80002274:	00178793          	addi	a5,a5,1
    unsigned short buffer = (color << 8) | c;
80002278:	00e5e5b3          	or	a1,a1,a4
    screen[location] = buffer;
8000227c:	00ce0633          	add	a2,t3,a2
            color++;
80002280:	0ff7f793          	andi	a5,a5,255
    if(location<0){
80002284:	0206cc63          	bltz	a3,800022bc <_Z11uart_printfPKcz+0x2b8>
    if(location>SCREEN_SIZE){
80002288:	02df4663          	blt	t5,a3,800022b4 <_Z11uart_printfPKcz+0x2b0>
    screen[location] = buffer;
8000228c:	00b61023          	sh	a1,0(a2)
            if(color>15){
80002290:	00fef463          	bgeu	t4,a5,80002298 <_Z11uart_printfPKcz+0x294>
                color=1;
80002294:	00100793          	li	a5,1
80002298:	00180813          	addi	a6,a6,1
    while(string[i] != '\0'){
8000229c:	00084703          	lbu	a4,0(a6)
800022a0:	00150513          	addi	a0,a0,1
        if(!putch(location + i, string[i],color)){
800022a4:	011506b3          	add	a3,a0,a7
    while(string[i] != '\0'){
800022a8:	fc0710e3          	bnez	a4,80002268 <_Z11uart_printfPKcz+0x264>
800022ac:	0ff57513          	andi	a0,a0,255
800022b0:	00a484b3          	add	s1,s1,a0
800022b4:	00240413          	addi	s0,s0,2
800022b8:	de9ff06f          	j	800020a0 <_Z11uart_printfPKcz+0x9c>
	return *( (volatile uint8_t *) addr );
800022bc:	100006b7          	lui	a3,0x10000
800022c0:	0056c783          	lbu	a5,5(a3) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800022c4:	0207f793          	andi	a5,a5,32
800022c8:	fe078ce3          	beqz	a5,800022c0 <_Z11uart_printfPKcz+0x2bc>
	*( (uint8_t *) addr ) = b;
800022cc:	00e68023          	sb	a4,0(a3)
        return 0;
800022d0:	00240413          	addi	s0,s0,2
800022d4:	dcdff06f          	j	800020a0 <_Z11uart_printfPKcz+0x9c>
                char *value=va_arg(ptr, char*);
800022d8:	00c12683          	lw	a3,12(sp)
800022dc:	00000713          	li	a4,0
800022e0:	f9c00813          	li	a6,-100
800022e4:	0006a883          	lw	a7,0(a3)
800022e8:	00468613          	addi	a2,a3,4
800022ec:	00c12623          	sw	a2,12(sp)
    while(string[i] != '\0'){
800022f0:	00e886b3          	add	a3,a7,a4
800022f4:	0006c683          	lbu	a3,0(a3)
                char *value=va_arg(ptr, char*);
800022f8:	00100793          	li	a5,1
        if(string[i]=='\n'){
800022fc:	00a00313          	li	t1,10
    if(location>SCREEN_SIZE){
80002300:	4c000f13          	li	t5,1216
    screen[location] = buffer;
80002304:	88000e37          	lui	t3,0x88000
            if(color>15){
80002308:	00f00e93          	li	t4,15
        if(!putch(location + i, string[i],color)){
8000230c:	01070633          	add	a2,a4,a6
    while(string[i] != '\0'){
80002310:	04068463          	beqz	a3,80002358 <_Z11uart_printfPKcz+0x354>
        if(string[i]=='\n'){
80002314:	0a668263          	beq	a3,t1,800023b8 <_Z11uart_printfPKcz+0x3b4>
    unsigned short buffer = (color << 8) | c;
80002318:	00879513          	slli	a0,a5,0x8
    screen[location] = buffer;
8000231c:	00161593          	slli	a1,a2,0x1
            color++;
80002320:	00178793          	addi	a5,a5,1
    unsigned short buffer = (color << 8) | c;
80002324:	00d56533          	or	a0,a0,a3
    screen[location] = buffer;
80002328:	00be05b3          	add	a1,t3,a1
            color++;
8000232c:	0ff7f793          	andi	a5,a5,255
    if(location<0){
80002330:	06064463          	bltz	a2,80002398 <_Z11uart_printfPKcz+0x394>
    if(location>SCREEN_SIZE){
80002334:	08cf4a63          	blt	t5,a2,800023c8 <_Z11uart_printfPKcz+0x3c4>
    screen[location] = buffer;
80002338:	00a59023          	sh	a0,0(a1)
            if(color>15){
8000233c:	00fef463          	bgeu	t4,a5,80002344 <_Z11uart_printfPKcz+0x340>
                color=1;
80002340:	00100793          	li	a5,1
80002344:	00170713          	addi	a4,a4,1
    while(string[i] != '\0'){
80002348:	00e886b3          	add	a3,a7,a4
8000234c:	0006c683          	lbu	a3,0(a3)
        if(!putch(location + i, string[i],color)){
80002350:	01070633          	add	a2,a4,a6
    while(string[i] != '\0'){
80002354:	fc0690e3          	bnez	a3,80002314 <_Z11uart_printfPKcz+0x310>
                strPos+=printString(-100,value,0);
80002358:	00e484b3          	add	s1,s1,a4
8000235c:	00240413          	addi	s0,s0,2
80002360:	d41ff06f          	j	800020a0 <_Z11uart_printfPKcz+0x9c>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
80002364:	fc08f893          	andi	a7,a7,-64
80002368:	04088893          	addi	a7,a7,64
            continue;
8000236c:	f2dff06f          	j	80002298 <_Z11uart_printfPKcz+0x294>
                unsigned int value=va_arg(ptr, unsigned int);
80002370:	00c12783          	lw	a5,12(sp)
                strPos+=printDec(-100,value,0);
80002374:	00000613          	li	a2,0
80002378:	f9c00513          	li	a0,-100
8000237c:	0007a583          	lw	a1,0(a5)
                unsigned int value=va_arg(ptr, unsigned int);
80002380:	00478793          	addi	a5,a5,4
80002384:	00f12623          	sw	a5,12(sp)
                strPos+=printDec(-100,value,0);
80002388:	be5fe0ef          	jal	ra,80000f6c <_Z8printDeciic>
8000238c:	00a484b3          	add	s1,s1,a0
80002390:	00240413          	addi	s0,s0,2
80002394:	d0dff06f          	j	800020a0 <_Z11uart_printfPKcz+0x9c>
	return *( (volatile uint8_t *) addr );
80002398:	10000737          	lui	a4,0x10000
8000239c:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800023a0:	0207f793          	andi	a5,a5,32
800023a4:	fe078ce3          	beqz	a5,8000239c <_Z11uart_printfPKcz+0x398>
	*( (uint8_t *) addr ) = b;
800023a8:	00d70023          	sb	a3,0(a4)
            return 0;
800023ac:	00000713          	li	a4,0
                strPos+=printString(-100,value,0);
800023b0:	00e484b3          	add	s1,s1,a4
800023b4:	fa9ff06f          	j	8000235c <_Z11uart_printfPKcz+0x358>
            location = (location & ~(SCREEN_WIDTH-1)) + SCREEN_WIDTH; // Move to the next line
800023b8:	fc087813          	andi	a6,a6,-64
800023bc:	04080813          	addi	a6,a6,64
            continue;
800023c0:	00170713          	addi	a4,a4,1
800023c4:	f85ff06f          	j	80002348 <_Z11uart_printfPKcz+0x344>
            return 0;
800023c8:	00000713          	li	a4,0
                strPos+=printString(-100,value,0);
800023cc:	00e484b3          	add	s1,s1,a4
800023d0:	f8dff06f          	j	8000235c <_Z11uart_printfPKcz+0x358>
                char value=va_arg(ptr, int);
800023d4:	00c12783          	lw	a5,12(sp)
	return *( (volatile uint8_t *) addr );
800023d8:	10000737          	lui	a4,0x10000
                char value=va_arg(ptr, int);
800023dc:	0007c683          	lbu	a3,0(a5)
800023e0:	00478793          	addi	a5,a5,4
800023e4:	00f12623          	sw	a5,12(sp)
	return *( (volatile uint8_t *) addr );
800023e8:	00574783          	lbu	a5,5(a4) # 10000005 <_stack_size+0xfff8005>
	while ( (readb(UART_ADDRESS + REG_LSR ) & LSR_THRE) == 0 ) {
800023ec:	0207f793          	andi	a5,a5,32
800023f0:	fe078ce3          	beqz	a5,800023e8 <_Z11uart_printfPKcz+0x3e4>
	*( (uint8_t *) addr ) = b;
800023f4:	00d70023          	sb	a3,0(a4)
                strPos++;
800023f8:	00148493          	addi	s1,s1,1
800023fc:	00240413          	addi	s0,s0,2
80002400:	ca1ff06f          	j	800020a0 <_Z11uart_printfPKcz+0x9c>
    int strPos=0;
80002404:	00000493          	li	s1,0
    return strPos; 
80002408:	ca9ff06f          	j	800020b0 <_Z11uart_printfPKcz+0xac>

8000240c <_Z11clearScreenv>:
    screen[location] = buffer;
8000240c:	000016b7          	lui	a3,0x1

// *****************************************************************************
// Clears the screen and resets the screenPos
void clearScreen(){
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
80002410:	88001737          	lui	a4,0x88001
void clearScreen(){
80002414:	880007b7          	lui	a5,0x88000
    screen[location] = buffer;
80002418:	f2068693          	addi	a3,a3,-224 # f20 <_stack_size-0x70e0>
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
8000241c:	98070713          	addi	a4,a4,-1664 # 88000980 <_stack_top+0x7c00980>
    screen[location] = buffer;
80002420:	00d79023          	sh	a3,0(a5) # 88000000 <_stack_top+0x7c00000>
    return 1;
80002424:	00278793          	addi	a5,a5,2
    for(int i=0;i<SCREEN_HEIGHT*SCREEN_WIDTH;i++){
80002428:	fee79ce3          	bne	a5,a4,80002420 <_Z11clearScreenv+0x14>
        putch(i,' ',15);
    }
    screenPos=0;
8000242c:	00007797          	auipc	a5,0x7
80002430:	ea079423          	sh	zero,-344(a5) # 800092d4 <screenPos>
}
80002434:	00008067          	ret

80002438 <_Z17resetScreenVectorv>:
void resetScreenVector(){
    screenPos=0;
80002438:	00007797          	auipc	a5,0x7
8000243c:	e8079e23          	sh	zero,-356(a5) # 800092d4 <screenPos>
}
80002440:	00008067          	ret

80002444 <_Z9readFlashj>:
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C
unsigned int readFlash(unsigned int adress){
80002444:	ff010113          	addi	sp,sp,-16
    volatile char *flashReady = (char *)FLASH_READY;
    volatile char *flashRen = (char *)FLASH_REN;
    volatile unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
    volatile unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
    volatile unsigned int data = 0;
80002448:	00012623          	sw	zero,12(sp)
    *flashAdress = adress;
8000244c:	8b0007b7          	lui	a5,0x8b000
80002450:	00a7a223          	sw	a0,4(a5) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
80002454:	00100713          	li	a4,1
80002458:	00e780a3          	sb	a4,1(a5)
    // FML it get stuck if you dont do the nop here
    asm volatile ("nop");
8000245c:	00000013          	nop
    asm volatile ("nop");
80002460:	00000013          	nop
    asm volatile ("nop");
80002464:	00000013          	nop
    while(1){
        if(*flashReady != 0) {
80002468:	8b000737          	lui	a4,0x8b000
8000246c:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
80002470:	0ff7f793          	andi	a5,a5,255
80002474:	fe078ce3          	beqz	a5,8000246c <_Z9readFlashj+0x28>
            break; // Wait until flash is ready
        }
    }
    data = *flashData;
80002478:	00c72783          	lw	a5,12(a4)
8000247c:	00f12623          	sw	a5,12(sp)
    return data;
80002480:	00c12503          	lw	a0,12(sp)
}
80002484:	01010113          	addi	sp,sp,16
80002488:	00008067          	ret

8000248c <_Z25getFileStartAddressByNamePKcPmS1_>:
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
    volatile uint32_t tempAddress = 0;
    volatile uint32_t readData;

    // Check magic number
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
8000248c:	435357b7          	lui	a5,0x43535
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
80002490:	f8010113          	addi	sp,sp,-128
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
80002494:	95278793          	addi	a5,a5,-1710 # 43534952 <_stack_size+0x4352c952>
80002498:	02f12c23          	sw	a5,56(sp)
8000249c:	534637b7          	lui	a5,0x53463
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
800024a0:	05912a23          	sw	s9,84(sp)
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
800024a4:	e5978793          	addi	a5,a5,-423 # 53462e59 <_stack_size+0x5345ae59>
    *flashAdress = adress;
800024a8:	8b000cb7          	lui	s9,0x8b000
unsigned int getFileStartAddressByName(const char *filename, uint32_t *file_start, uint32_t *file_end) {
800024ac:	06812c23          	sw	s0,120(sp)
800024b0:	06912a23          	sw	s1,116(sp)
800024b4:	07212823          	sw	s2,112(sp)
800024b8:	07312623          	sw	s3,108(sp)
800024bc:	07412423          	sw	s4,104(sp)
800024c0:	07512223          	sw	s5,100(sp)
800024c4:	07612023          	sw	s6,96(sp)
800024c8:	05712e23          	sw	s7,92(sp)
800024cc:	06112e23          	sw	ra,124(sp)
800024d0:	05812c23          	sw	s8,88(sp)
800024d4:	05a12823          	sw	s10,80(sp)
800024d8:	05b12623          	sw	s11,76(sp)
800024dc:	00050493          	mv	s1,a0
800024e0:	00b12423          	sw	a1,8(sp)
800024e4:	00c12623          	sw	a2,12(sp)
    volatile uint32_t tempAddress = 0;
800024e8:	00012e23          	sw	zero,28(sp)
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
800024ec:	02f12e23          	sw	a5,60(sp)
    for (int i = 0; i < 2; i++) {
800024f0:	03810913          	addi	s2,sp,56
    const char expectedMagic[8] = {'R','I','S','C','Y','.','F','S'};
800024f4:	00000413          	li	s0,0
    *flashRen = 1;
800024f8:	001c8b13          	addi	s6,s9,1 # 8b000001 <_stack_top+0xac00001>
800024fc:	00100a93          	li	s5,1
        readData = readFlash(tempAddress);
        for (int j = 0; j < 4; j++) {
            char c = (readData >> (8 * j)) & 0xFF;
            uart_printf("Magic[%d] = %c\r\n", i * 4 + j, c);
80002500:	00006997          	auipc	s3,0x6
80002504:	6f098993          	addi	s3,s3,1776 # 80008bf0 <_etext+0xff4>
        for (int j = 0; j < 4; j++) {
80002508:	00400a13          	li	s4,4
    for (int i = 0; i < 2; i++) {
8000250c:	00800b93          	li	s7,8
        readData = readFlash(tempAddress);
80002510:	01c12783          	lw	a5,28(sp)
    volatile unsigned int data = 0;
80002514:	02012223          	sw	zero,36(sp)
    *flashAdress = adress;
80002518:	00fca223          	sw	a5,4(s9)
    *flashRen = 1;
8000251c:	015b0023          	sb	s5,0(s6)
    asm volatile ("nop");
80002520:	00000013          	nop
    asm volatile ("nop");
80002524:	00000013          	nop
    asm volatile ("nop");
80002528:	00000013          	nop
        if(*flashReady != 0) {
8000252c:	000cc783          	lbu	a5,0(s9)
80002530:	0ff7f793          	andi	a5,a5,255
80002534:	fe078ce3          	beqz	a5,8000252c <_Z25getFileStartAddressByNamePKcPmS1_+0xa0>
    data = *flashData;
80002538:	00cca783          	lw	a5,12(s9)
        for (int j = 0; j < 4; j++) {
8000253c:	00000d93          	li	s11,0
    data = *flashData;
80002540:	02f12223          	sw	a5,36(sp)
    return data;
80002544:	02412783          	lw	a5,36(sp)
        readData = readFlash(tempAddress);
80002548:	02f12023          	sw	a5,32(sp)
            char c = (readData >> (8 * j)) & 0xFF;
8000254c:	02012d03          	lw	s10,32(sp)
80002550:	003d9693          	slli	a3,s11,0x3
80002554:	008d8c33          	add	s8,s11,s0
80002558:	00dd5d33          	srl	s10,s10,a3
            uart_printf("Magic[%d] = %c\r\n", i * 4 + j, c);
8000255c:	0ffd7613          	andi	a2,s10,255
80002560:	000c0593          	mv	a1,s8
80002564:	00098513          	mv	a0,s3
80002568:	a9dff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
            if (c != expectedMagic[i * 4 + j]) {
8000256c:	01b906b3          	add	a3,s2,s11
80002570:	0006c683          	lbu	a3,0(a3)
80002574:	0ffd7d13          	andi	s10,s10,255
        for (int j = 0; j < 4; j++) {
80002578:	001d8d93          	addi	s11,s11,1
            if (c != expectedMagic[i * 4 + j]) {
8000257c:	29a69663          	bne	a3,s10,80002808 <_Z25getFileStartAddressByNamePKcPmS1_+0x37c>
        for (int j = 0; j < 4; j++) {
80002580:	fd4d96e3          	bne	s11,s4,8000254c <_Z25getFileStartAddressByNamePKcPmS1_+0xc0>
                uart_printf("Invalid magic number at position %d\r\n", i * 4 + j);
                return 0xFFFFFFFF;
            }
        }
        tempAddress += 4;
80002584:	01c12783          	lw	a5,28(sp)
80002588:	00440413          	addi	s0,s0,4
8000258c:	00490913          	addi	s2,s2,4
80002590:	00478793          	addi	a5,a5,4
80002594:	00f12e23          	sw	a5,28(sp)
    for (int i = 0; i < 2; i++) {
80002598:	f7741ce3          	bne	s0,s7,80002510 <_Z25getFileStartAddressByNamePKcPmS1_+0x84>
    }

    // Read program count
    unsigned char programCount = readFlash(tempAddress)& 0xFF;
8000259c:	01c12703          	lw	a4,28(sp)
    *flashAdress = adress;
800025a0:	8b0007b7          	lui	a5,0x8b000
    volatile unsigned int data = 0;
800025a4:	02012423          	sw	zero,40(sp)
    *flashAdress = adress;
800025a8:	00e7a223          	sw	a4,4(a5) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
800025ac:	00100713          	li	a4,1
800025b0:	00e780a3          	sb	a4,1(a5)
    asm volatile ("nop");
800025b4:	00000013          	nop
    asm volatile ("nop");
800025b8:	00000013          	nop
    asm volatile ("nop");
800025bc:	00000013          	nop
        if(*flashReady != 0) {
800025c0:	8b000737          	lui	a4,0x8b000
800025c4:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
800025c8:	0ff7f793          	andi	a5,a5,255
800025cc:	fe078ce3          	beqz	a5,800025c4 <_Z25getFileStartAddressByNamePKcPmS1_+0x138>
    data = *flashData;
800025d0:	00c72783          	lw	a5,12(a4)
    uart_printf("Program count: %d\r\n", programCount);
800025d4:	00006517          	auipc	a0,0x6
800025d8:	65850513          	addi	a0,a0,1624 # 80008c2c <_etext+0x1030>
    data = *flashData;
800025dc:	02f12423          	sw	a5,40(sp)
    return data;
800025e0:	02812403          	lw	s0,40(sp)
    uart_printf("Program count: %d\r\n", programCount);
800025e4:	0ff47593          	andi	a1,s0,255
    unsigned char programCount = readFlash(tempAddress)& 0xFF;
800025e8:	00058413          	mv	s0,a1
    uart_printf("Program count: %d\r\n", programCount);
800025ec:	a19ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
    // signed char programCount = 2;

    tempAddress += 1;
800025f0:	01c12783          	lw	a5,28(sp)
    uint32_t headersAddress = 0;
    // For each program
    while(programCount--) {
800025f4:	fff40a93          	addi	s5,s0,-1
800025f8:	0ffafa93          	andi	s5,s5,255
    tempAddress += 1;
800025fc:	00178793          	addi	a5,a5,1
80002600:	00f12e23          	sw	a5,28(sp)
    while(programCount--) {
80002604:	0e040663          	beqz	s0,800026f0 <_Z25getFileStartAddressByNamePKcPmS1_+0x264>
80002608:	001a8a93          	addi	s5,s5,1
        uart_printf("Checking program %d...\r\n", programCount+1);
8000260c:	00006b97          	auipc	s7,0x6
80002610:	634b8b93          	addi	s7,s7,1588 # 80008c40 <_etext+0x1044>
    *flashAdress = adress;
80002614:	8b000db7          	lui	s11,0x8b000
    *flashRen = 1;
80002618:	00100993          	li	s3,1
        headersAddress = tempAddress;
        while (c_flash != 0) {
            readData = readFlash(tempAddress); 
            c_flash = readData & 0xFF;
            c_input = filename[pos];
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);
8000261c:	00006917          	auipc	s2,0x6
80002620:	64090913          	addi	s2,s2,1600 # 80008c5c <_etext+0x1060>
        uart_printf("Checking program %d...\r\n", programCount+1);
80002624:	000a8593          	mv	a1,s5
80002628:	000b8513          	mv	a0,s7
8000262c:	9d9ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
        headersAddress = tempAddress;
80002630:	01c12b03          	lw	s6,28(sp)
        int pos = 0;
80002634:	00000c13          	li	s8,0
        int match = 1;
80002638:	00100a13          	li	s4,1
    *flashRen = 1;
8000263c:	001d8413          	addi	s0,s11,1 # 8b000001 <_stack_top+0xac00001>
            readData = readFlash(tempAddress); 
80002640:	01c12783          	lw	a5,28(sp)
    volatile unsigned int data = 0;
80002644:	02012623          	sw	zero,44(sp)
    *flashAdress = adress;
80002648:	00fda223          	sw	a5,4(s11)
    *flashRen = 1;
8000264c:	01340023          	sb	s3,0(s0)
    asm volatile ("nop");
80002650:	00000013          	nop
    asm volatile ("nop");
80002654:	00000013          	nop
    asm volatile ("nop");
80002658:	00000013          	nop
        if(*flashReady != 0) {
8000265c:	000dc783          	lbu	a5,0(s11)
80002660:	0ff7f793          	andi	a5,a5,255
80002664:	fe078ce3          	beqz	a5,8000265c <_Z25getFileStartAddressByNamePKcPmS1_+0x1d0>
    data = *flashData;
80002668:	00cda683          	lw	a3,12(s11)
            c_input = filename[pos];
8000266c:	018487b3          	add	a5,s1,s8
80002670:	0007cd03          	lbu	s10,0(a5)
    data = *flashData;
80002674:	02d12623          	sw	a3,44(sp)
    return data;
80002678:	02c12603          	lw	a2,44(sp)
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);
8000267c:	000c0593          	mv	a1,s8
80002680:	000d0693          	mv	a3,s10
            readData = readFlash(tempAddress); 
80002684:	02c12023          	sw	a2,32(sp)
            c_flash = readData & 0xFF;
80002688:	02012603          	lw	a2,32(sp)
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);
8000268c:	00090513          	mv	a0,s2
            if (c_flash != c_input) {
                match = 0;
            }

            tempAddress += 1;
            pos++;
80002690:	001c0c13          	addi	s8,s8,1
            c_flash = readData & 0xFF;
80002694:	0ff67c93          	andi	s9,a2,255
            uart_printf("  Char %d: '%c' (flash) vs '%c' (input)\r\n", pos, c_flash, c_input);
80002698:	000c8613          	mv	a2,s9
8000269c:	969ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
            tempAddress += 1;
800026a0:	01c12783          	lw	a5,28(sp)
800026a4:	00178793          	addi	a5,a5,1
800026a8:	00f12e23          	sw	a5,28(sp)
            if (c_flash != c_input) {
800026ac:	01ac8863          	beq	s9,s10,800026bc <_Z25getFileStartAddressByNamePKcPmS1_+0x230>
        while (c_flash != 0) {
800026b0:	000c8a63          	beqz	s9,800026c4 <_Z25getFileStartAddressByNamePKcPmS1_+0x238>
                match = 0;
800026b4:	00000a13          	li	s4,0
800026b8:	f89ff06f          	j	80002640 <_Z25getFileStartAddressByNamePKcPmS1_+0x1b4>
        while (c_flash != 0) {
800026bc:	f80c92e3          	bnez	s9,80002640 <_Z25getFileStartAddressByNamePKcPmS1_+0x1b4>
          }
          // Found match
          if (match) {
800026c0:	080a1263          	bnez	s4,80002744 <_Z25getFileStartAddressByNamePKcPmS1_+0x2b8>
            // Returns the headers address
            return headersAddress;
          }
          
          // Skip start and end addresses
          tempAddress += 4; // start
800026c4:	01c12783          	lw	a5,28(sp)
800026c8:	fffa8a93          	addi	s5,s5,-1
800026cc:	00478793          	addi	a5,a5,4
800026d0:	00f12e23          	sw	a5,28(sp)
          tempAddress += 4; // end
800026d4:	01c12783          	lw	a5,28(sp)
800026d8:	00478793          	addi	a5,a5,4
800026dc:	00f12e23          	sw	a5,28(sp)
          
          // Skip 256 bytes of sprite
          tempAddress += 256;
800026e0:	01c12783          	lw	a5,28(sp)
800026e4:	10078793          	addi	a5,a5,256
800026e8:	00f12e23          	sw	a5,28(sp)
    while(programCount--) {
800026ec:	f20a9ce3          	bnez	s5,80002624 <_Z25getFileStartAddressByNamePKcPmS1_+0x198>
        }
    uart_printf("File not found: %s\r\n", filename);
800026f0:	00048593          	mv	a1,s1
800026f4:	00006517          	auipc	a0,0x6
800026f8:	5d450513          	addi	a0,a0,1492 # 80008cc8 <_etext+0x10cc>
800026fc:	909ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
    return 0xFFFFFFFF;
80002700:	fff00b13          	li	s6,-1
}
80002704:	07c12083          	lw	ra,124(sp)
80002708:	07812403          	lw	s0,120(sp)
8000270c:	000b0513          	mv	a0,s6
80002710:	07412483          	lw	s1,116(sp)
80002714:	07012903          	lw	s2,112(sp)
80002718:	06c12983          	lw	s3,108(sp)
8000271c:	06812a03          	lw	s4,104(sp)
80002720:	06412a83          	lw	s5,100(sp)
80002724:	06012b03          	lw	s6,96(sp)
80002728:	05c12b83          	lw	s7,92(sp)
8000272c:	05812c03          	lw	s8,88(sp)
80002730:	05412c83          	lw	s9,84(sp)
80002734:	05012d03          	lw	s10,80(sp)
80002738:	04c12d83          	lw	s11,76(sp)
8000273c:	08010113          	addi	sp,sp,128
80002740:	00008067          	ret
            asm volatile ("nop");
80002744:	00000013          	nop
            asm volatile ("nop");
80002748:	00000013          	nop
            uint32_t start_address = readFlash(tempAddress);
8000274c:	01c12783          	lw	a5,28(sp)
    *flashAdress = adress;
80002750:	8b000737          	lui	a4,0x8b000
    volatile unsigned int data = 0;
80002754:	02012a23          	sw	zero,52(sp)
    *flashAdress = adress;
80002758:	00f72223          	sw	a5,4(a4) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
8000275c:	00100793          	li	a5,1
80002760:	00f700a3          	sb	a5,1(a4)
    asm volatile ("nop");
80002764:	00000013          	nop
    asm volatile ("nop");
80002768:	00000013          	nop
    asm volatile ("nop");
8000276c:	00000013          	nop
        if(*flashReady != 0) {
80002770:	8b000437          	lui	s0,0x8b000
80002774:	00044783          	lbu	a5,0(s0) # 8b000000 <_stack_top+0xac00000>
80002778:	0ff7f793          	andi	a5,a5,255
8000277c:	fe078ce3          	beqz	a5,80002774 <_Z25getFileStartAddressByNamePKcPmS1_+0x2e8>
    data = *flashData;
80002780:	00c42783          	lw	a5,12(s0)
            uart_printf("  Match found! Start address: 0x%x\r\n", start_address);
80002784:	00006517          	auipc	a0,0x6
80002788:	50450513          	addi	a0,a0,1284 # 80008c88 <_etext+0x108c>
    data = *flashData;
8000278c:	02f12a23          	sw	a5,52(sp)
    return data;
80002790:	03412483          	lw	s1,52(sp)
            uart_printf("  Match found! Start address: 0x%x\r\n", start_address);
80002794:	00048593          	mv	a1,s1
80002798:	86dff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
            tempAddress += 4; // Move past start address
8000279c:	01c12783          	lw	a5,28(sp)
800027a0:	00478793          	addi	a5,a5,4
800027a4:	00f12e23          	sw	a5,28(sp)
            uint32_t end_address = readFlash(tempAddress);
800027a8:	01c12783          	lw	a5,28(sp)
    volatile unsigned int data = 0;
800027ac:	02012823          	sw	zero,48(sp)
    *flashAdress = adress;
800027b0:	00f42223          	sw	a5,4(s0)
    *flashRen = 1;
800027b4:	00100793          	li	a5,1
800027b8:	00f400a3          	sb	a5,1(s0)
    asm volatile ("nop");
800027bc:	00000013          	nop
    asm volatile ("nop");
800027c0:	00000013          	nop
    asm volatile ("nop");
800027c4:	00000013          	nop
        if(*flashReady != 0) {
800027c8:	8b000737          	lui	a4,0x8b000
800027cc:	00074783          	lbu	a5,0(a4) # 8b000000 <_stack_top+0xac00000>
800027d0:	0ff7f793          	andi	a5,a5,255
800027d4:	fe078ce3          	beqz	a5,800027cc <_Z25getFileStartAddressByNamePKcPmS1_+0x340>
    data = *flashData;
800027d8:	00c72783          	lw	a5,12(a4)
            uart_printf("  End address: 0x%x\r\n", end_address);
800027dc:	00006517          	auipc	a0,0x6
800027e0:	4d450513          	addi	a0,a0,1236 # 80008cb0 <_etext+0x10b4>
    data = *flashData;
800027e4:	02f12823          	sw	a5,48(sp)
    return data;
800027e8:	03012403          	lw	s0,48(sp)
            uart_printf("  End address: 0x%x\r\n", end_address);
800027ec:	00040593          	mv	a1,s0
800027f0:	815ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
            *file_start = start_address;
800027f4:	00812783          	lw	a5,8(sp)
800027f8:	0097a023          	sw	s1,0(a5)
            *file_end = end_address;
800027fc:	00c12783          	lw	a5,12(sp)
80002800:	0087a023          	sw	s0,0(a5)
            return headersAddress;
80002804:	f01ff06f          	j	80002704 <_Z25getFileStartAddressByNamePKcPmS1_+0x278>
                uart_printf("Invalid magic number at position %d\r\n", i * 4 + j);
80002808:	000c0593          	mv	a1,s8
8000280c:	00006517          	auipc	a0,0x6
80002810:	3f850513          	addi	a0,a0,1016 # 80008c04 <_etext+0x1008>
80002814:	ff0ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
                return 0xFFFFFFFF;
80002818:	fff00b13          	li	s6,-1
8000281c:	ee9ff06f          	j	80002704 <_Z25getFileStartAddressByNamePKcPmS1_+0x278>

80002820 <_Z11riscy_fopenPKc>:
} file_t;

file_t files[MAX_FILES];
unsigned int fileCount = 0;

int16_t riscy_fopen(const char* filename) {
80002820:	fd010113          	addi	sp,sp,-48
    uint32_t startAddress = 0;
    uint32_t endAddress = 0;
    
    // Look up the file by its name
    uint32_t headerAddress = getFileStartAddressByName(filename, &startAddress, &endAddress);
80002824:	00c10613          	addi	a2,sp,12
80002828:	00810593          	addi	a1,sp,8
int16_t riscy_fopen(const char* filename) {
8000282c:	02912223          	sw	s1,36(sp)
80002830:	02112623          	sw	ra,44(sp)
80002834:	02812423          	sw	s0,40(sp)
80002838:	03212023          	sw	s2,32(sp)
8000283c:	01312e23          	sw	s3,28(sp)
80002840:	00050493          	mv	s1,a0
    uint32_t startAddress = 0;
80002844:	00012423          	sw	zero,8(sp)
    uint32_t endAddress = 0;
80002848:	00012623          	sw	zero,12(sp)
    uint32_t headerAddress = getFileStartAddressByName(filename, &startAddress, &endAddress);
8000284c:	c41ff0ef          	jal	ra,8000248c <_Z25getFileStartAddressByNamePKcPmS1_>
    
    if (headerAddress == 0xFFFFFFFF) {
80002850:	fff00793          	li	a5,-1
80002854:	0ef50c63          	beq	a0,a5,8000294c <_Z11riscy_fopenPKc+0x12c>
        uart_printf("Error: File not found - %s\r\n", filename);
        return 0;
    }

    // If file is found, initialize the file structure
    if (fileCount < MAX_FILES) {
80002858:	00007997          	auipc	s3,0x7
8000285c:	a7898993          	addi	s3,s3,-1416 # 800092d0 <_ebss>
80002860:	0009a703          	lw	a4,0(s3)
80002864:	00f00793          	li	a5,15
80002868:	0ae7ec63          	bltu	a5,a4,80002920 <_Z11riscy_fopenPKc+0x100>
        file_t* newFile = &files[fileCount];
        newFile->startAddress = startAddress;
8000286c:	00171913          	slli	s2,a4,0x1
80002870:	00812683          	lw	a3,8(sp)
        newFile->endAddress = endAddress;
80002874:	00c12803          	lw	a6,12(sp)
        newFile->startAddress = startAddress;
80002878:	00e90933          	add	s2,s2,a4
8000287c:	00491913          	slli	s2,s2,0x4
80002880:	00006417          	auipc	s0,0x6
80002884:	75040413          	addi	s0,s0,1872 # 80008fd0 <files>
80002888:	012407b3          	add	a5,s0,s2
        newFile->currentAddress = startAddress;
        newFile->valid = 1; // Mark the file as valid
8000288c:	00100713          	li	a4,1
        newFile->startAddress = startAddress;
80002890:	00d7a023          	sw	a3,0(a5)
        newFile->endAddress = endAddress;
80002894:	0107a223          	sw	a6,4(a5)
        newFile->currentAddress = startAddress;
80002898:	00d7a423          	sw	a3,8(a5)
        newFile->valid = 1; // Mark the file as valid
8000289c:	00e78623          	sb	a4,12(a5)
        printf("0x%x to 0x%x\r\n",newFile->startAddress, newFile->endAddress);
800028a0:	00080613          	mv	a2,a6
800028a4:	00068593          	mv	a1,a3
800028a8:	00006517          	auipc	a0,0x6
800028ac:	45850513          	addi	a0,a0,1112 # 80008d00 <_etext+0x1104>
800028b0:	ca5fe0ef          	jal	ra,80001554 <_Z6printfPKcz>

        short fileNameLength = 0;
        while(*filename && fileNameLength < MAX_FILE_NAME_LENGTH) {
800028b4:	0004c783          	lbu	a5,0(s1)
800028b8:	02078a63          	beqz	a5,800028ec <_Z11riscy_fopenPKc+0xcc>
800028bc:	00d90713          	addi	a4,s2,13
800028c0:	00048793          	mv	a5,s1
800028c4:	00e40733          	add	a4,s0,a4
800028c8:	02048613          	addi	a2,s1,32
800028cc:	0080006f          	j	800028d4 <_Z11riscy_fopenPKc+0xb4>
800028d0:	00c78e63          	beq	a5,a2,800028ec <_Z11riscy_fopenPKc+0xcc>
            newFile->name[fileNameLength++] = filename[fileNameLength];
800028d4:	0007c683          	lbu	a3,0(a5)
800028d8:	00170713          	addi	a4,a4,1
800028dc:	00178793          	addi	a5,a5,1
800028e0:	fed70fa3          	sb	a3,-1(a4)
        while(*filename && fileNameLength < MAX_FILE_NAME_LENGTH) {
800028e4:	0004c683          	lbu	a3,0(s1)
800028e8:	fe0694e3          	bnez	a3,800028d0 <_Z11riscy_fopenPKc+0xb0>
        }
        return ++fileCount;
800028ec:	0009a503          	lw	a0,0(s3)
    }

    // If there is no space left for new files
    uart_printf("Error: Maximum file count reached.\r\n");
    return 0;
}
800028f0:	02c12083          	lw	ra,44(sp)
800028f4:	02812403          	lw	s0,40(sp)
        return ++fileCount;
800028f8:	00150513          	addi	a0,a0,1
800028fc:	00007797          	auipc	a5,0x7
80002900:	9ca7aa23          	sw	a0,-1580(a5) # 800092d0 <_ebss>
80002904:	01051513          	slli	a0,a0,0x10
}
80002908:	02412483          	lw	s1,36(sp)
8000290c:	02012903          	lw	s2,32(sp)
80002910:	01c12983          	lw	s3,28(sp)
        return ++fileCount;
80002914:	41055513          	srai	a0,a0,0x10
}
80002918:	03010113          	addi	sp,sp,48
8000291c:	00008067          	ret
    uart_printf("Error: Maximum file count reached.\r\n");
80002920:	00006517          	auipc	a0,0x6
80002924:	3f050513          	addi	a0,a0,1008 # 80008d10 <_etext+0x1114>
80002928:	edcff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
}
8000292c:	02c12083          	lw	ra,44(sp)
80002930:	02812403          	lw	s0,40(sp)
80002934:	02412483          	lw	s1,36(sp)
80002938:	02012903          	lw	s2,32(sp)
8000293c:	01c12983          	lw	s3,28(sp)
    return 0;
80002940:	00000513          	li	a0,0
}
80002944:	03010113          	addi	sp,sp,48
80002948:	00008067          	ret
        uart_printf("Error: File not found - %s\r\n", filename);
8000294c:	00048593          	mv	a1,s1
80002950:	00006517          	auipc	a0,0x6
80002954:	39050513          	addi	a0,a0,912 # 80008ce0 <_etext+0x10e4>
80002958:	eacff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
}
8000295c:	02c12083          	lw	ra,44(sp)
80002960:	02812403          	lw	s0,40(sp)
80002964:	02412483          	lw	s1,36(sp)
80002968:	02012903          	lw	s2,32(sp)
8000296c:	01c12983          	lw	s3,28(sp)
        return 0;
80002970:	00000513          	li	a0,0
}
80002974:	03010113          	addi	sp,sp,48
80002978:	00008067          	ret

8000297c <_Z11riscy_freadsPvm>:

int32_t riscy_fread(int16_t fileHandle, void* buffer, uint32_t size) {
8000297c:	fe010113          	addi	sp,sp,-32
80002980:	00112e23          	sw	ra,28(sp)
80002984:	00812c23          	sw	s0,24(sp)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80002988:	0e050463          	beqz	a0,80002a70 <_Z11riscy_freadsPvm+0xf4>
8000298c:	00007797          	auipc	a5,0x7
80002990:	94478793          	addi	a5,a5,-1724 # 800092d0 <_ebss>
80002994:	0007a783          	lw	a5,0(a5)
80002998:	0ca7ec63          	bltu	a5,a0,80002a70 <_Z11riscy_freadsPvm+0xf4>
8000299c:	fff50f93          	addi	t6,a0,-1
800029a0:	001f9793          	slli	a5,t6,0x1
800029a4:	01f787b3          	add	a5,a5,t6
800029a8:	00006f17          	auipc	t5,0x6
800029ac:	628f0f13          	addi	t5,t5,1576 # 80008fd0 <files>
800029b0:	00479793          	slli	a5,a5,0x4
800029b4:	00ff07b3          	add	a5,t5,a5
800029b8:	00c7c783          	lbu	a5,12(a5)
800029bc:	0a078a63          	beqz	a5,80002a70 <_Z11riscy_freadsPvm+0xf4>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 0;
    }
    fileHandle -= 1; // Adjust for 0-based index
    file_t* file = &files[fileHandle];
800029c0:	010f9f93          	slli	t6,t6,0x10
800029c4:	410fdf93          	srai	t6,t6,0x10
    if (file->currentAddress + size > file->endAddress) {
800029c8:	001f9293          	slli	t0,t6,0x1
800029cc:	01f288b3          	add	a7,t0,t6
800029d0:	00489893          	slli	a7,a7,0x4
800029d4:	011f08b3          	add	a7,t5,a7
800029d8:	0088a783          	lw	a5,8(a7)
800029dc:	0048a703          	lw	a4,4(a7)
800029e0:	00c786b3          	add	a3,a5,a2
800029e4:	16d76463          	bltu	a4,a3,80002b4c <_Z11riscy_freadsPvm+0x1d0>
        uart_printf("Error: Read exceeds file end address.\r\n");
        return 0;
    }

    // Read data from flash into the buffer
    for (uint32_t i = 0; i < size/4; i ++) {
800029e8:	00265713          	srli	a4,a2,0x2
800029ec:	0a070c63          	beqz	a4,80002aa4 <_Z11riscy_freadsPvm+0x128>
800029f0:	00271e93          	slli	t4,a4,0x2
    *flashAdress = adress;
800029f4:	8b000737          	lui	a4,0x8b000
800029f8:	00058693          	mv	a3,a1
800029fc:	00be8eb3          	add	t4,t4,a1
    for (uint32_t i = 0; i < size/4; i ++) {
80002a00:	00000813          	li	a6,0
    *flashRen = 1;
80002a04:	00170413          	addi	s0,a4,1 # 8b000001 <_stack_top+0xac00001>
80002a08:	00100393          	li	t2,1
    volatile unsigned int data = 0;
80002a0c:	00012423          	sw	zero,8(sp)
        unsigned int data = readFlash(file->currentAddress + i*4);
80002a10:	010787b3          	add	a5,a5,a6
    *flashAdress = adress;
80002a14:	00f72223          	sw	a5,4(a4)
    *flashRen = 1;
80002a18:	00740023          	sb	t2,0(s0)
    asm volatile ("nop");
80002a1c:	00000013          	nop
    asm volatile ("nop");
80002a20:	00000013          	nop
    asm volatile ("nop");
80002a24:	00000013          	nop
        if(*flashReady != 0) {
80002a28:	00074783          	lbu	a5,0(a4)
80002a2c:	0ff7f793          	andi	a5,a5,255
80002a30:	fe078ce3          	beqz	a5,80002a28 <_Z11riscy_freadsPvm+0xac>
    data = *flashData;
80002a34:	00c72783          	lw	a5,12(a4)
80002a38:	00468693          	addi	a3,a3,4
80002a3c:	00480813          	addi	a6,a6,4
80002a40:	00f12423          	sw	a5,8(sp)
    return data;
80002a44:	00812783          	lw	a5,8(sp)
        ((uint8_t*)buffer)[i*4] = data & 0xFF;
        ((uint8_t*)buffer)[i*4 + 1] = (data >> 8) & 0xFF;
80002a48:	0087de13          	srli	t3,a5,0x8
        ((uint8_t*)buffer)[i*4 + 2] = (data >> 16) & 0xFF;
80002a4c:	0107d313          	srli	t1,a5,0x10
        ((uint8_t*)buffer)[i*4 + 3] = (data >> 24) & 0xFF;
80002a50:	0187d513          	srli	a0,a5,0x18
        ((uint8_t*)buffer)[i*4] = data & 0xFF;
80002a54:	fef68e23          	sb	a5,-4(a3)
        ((uint8_t*)buffer)[i*4 + 1] = (data >> 8) & 0xFF;
80002a58:	ffc68ea3          	sb	t3,-3(a3)
        ((uint8_t*)buffer)[i*4 + 2] = (data >> 16) & 0xFF;
80002a5c:	fe668f23          	sb	t1,-2(a3)
        ((uint8_t*)buffer)[i*4 + 3] = (data >> 24) & 0xFF;
80002a60:	fea68fa3          	sb	a0,-1(a3)
    for (uint32_t i = 0; i < size/4; i ++) {
80002a64:	02de8863          	beq	t4,a3,80002a94 <_Z11riscy_freadsPvm+0x118>
80002a68:	0088a783          	lw	a5,8(a7)
80002a6c:	fa1ff06f          	j	80002a0c <_Z11riscy_freadsPvm+0x90>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002a70:	00050593          	mv	a1,a0
80002a74:	00006517          	auipc	a0,0x6
80002a78:	2c450513          	addi	a0,a0,708 # 80008d38 <_etext+0x113c>
80002a7c:	d88ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
        return 0;
80002a80:	00000513          	li	a0,0
    }
    // Update current address
    file->currentAddress += size;

    return size;
}
80002a84:	01c12083          	lw	ra,28(sp)
80002a88:	01812403          	lw	s0,24(sp)
80002a8c:	02010113          	addi	sp,sp,32
80002a90:	00008067          	ret
80002a94:	01f287b3          	add	a5,t0,t6
80002a98:	00479793          	slli	a5,a5,0x4
80002a9c:	00ff07b3          	add	a5,t5,a5
80002aa0:	0087a783          	lw	a5,8(a5)
    if (size % 4 != 0) {
80002aa4:	00367693          	andi	a3,a2,3
80002aa8:	06068e63          	beqz	a3,80002b24 <_Z11riscy_freadsPvm+0x1a8>
        unsigned int data = readFlash(file->currentAddress + (size/4)*4);
80002aac:	ffc67513          	andi	a0,a2,-4
    volatile unsigned int data = 0;
80002ab0:	00012623          	sw	zero,12(sp)
    *flashAdress = adress;
80002ab4:	8b000737          	lui	a4,0x8b000
        unsigned int data = readFlash(file->currentAddress + (size/4)*4);
80002ab8:	00f507b3          	add	a5,a0,a5
    *flashAdress = adress;
80002abc:	00f72223          	sw	a5,4(a4) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
80002ac0:	00100793          	li	a5,1
80002ac4:	00f700a3          	sb	a5,1(a4)
    asm volatile ("nop");
80002ac8:	00000013          	nop
    asm volatile ("nop");
80002acc:	00000013          	nop
    asm volatile ("nop");
80002ad0:	00000013          	nop
        if(*flashReady != 0) {
80002ad4:	00074783          	lbu	a5,0(a4)
80002ad8:	0ff7f793          	andi	a5,a5,255
80002adc:	fe078ce3          	beqz	a5,80002ad4 <_Z11riscy_freadsPvm+0x158>
    data = *flashData;
80002ae0:	00c72783          	lw	a5,12(a4)
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
80002ae4:	00a585b3          	add	a1,a1,a0
        for (uint32_t i = 0; i < size % 4; i++) {
80002ae8:	00100713          	li	a4,1
    data = *flashData;
80002aec:	00f12623          	sw	a5,12(sp)
    return data;
80002af0:	00c12783          	lw	a5,12(sp)
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
80002af4:	00f58023          	sb	a5,0(a1)
        for (uint32_t i = 0; i < size % 4; i++) {
80002af8:	00e68e63          	beq	a3,a4,80002b14 <_Z11riscy_freadsPvm+0x198>
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
80002afc:	0087d713          	srli	a4,a5,0x8
80002b00:	00e580a3          	sb	a4,1(a1)
        for (uint32_t i = 0; i < size % 4; i++) {
80002b04:	00200713          	li	a4,2
80002b08:	00e68663          	beq	a3,a4,80002b14 <_Z11riscy_freadsPvm+0x198>
            ((uint8_t*)buffer)[(size/4)*4 + i] = (data >> (i * 8)) & 0xFF;
80002b0c:	0107d793          	srli	a5,a5,0x10
80002b10:	00f58123          	sb	a5,2(a1)
80002b14:	01f287b3          	add	a5,t0,t6
80002b18:	00479793          	slli	a5,a5,0x4
80002b1c:	00ff07b3          	add	a5,t5,a5
80002b20:	0087a783          	lw	a5,8(a5)
    file->currentAddress += size;
80002b24:	01f28733          	add	a4,t0,t6
80002b28:	00471713          	slli	a4,a4,0x4
80002b2c:	00ef0f33          	add	t5,t5,a4
80002b30:	00f607b3          	add	a5,a2,a5
80002b34:	00ff2423          	sw	a5,8(t5)
}
80002b38:	01c12083          	lw	ra,28(sp)
80002b3c:	01812403          	lw	s0,24(sp)
    return size;
80002b40:	00060513          	mv	a0,a2
}
80002b44:	02010113          	addi	sp,sp,32
80002b48:	00008067          	ret
        uart_printf("Error: Read exceeds file end address.\r\n");
80002b4c:	00006517          	auipc	a0,0x6
80002b50:	20c50513          	addi	a0,a0,524 # 80008d58 <_etext+0x115c>
80002b54:	cb0ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
        return 0;
80002b58:	00000513          	li	a0,0
80002b5c:	f29ff06f          	j	80002a84 <_Z11riscy_freadsPvm+0x108>

80002b60 <_Z11riscy_fgetcs>:

char riscy_fgetc(int16_t fileHandle) {
80002b60:	fe010113          	addi	sp,sp,-32
80002b64:	00112e23          	sw	ra,28(sp)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80002b68:	0c050063          	beqz	a0,80002c28 <_Z11riscy_fgetcs+0xc8>
80002b6c:	00006797          	auipc	a5,0x6
80002b70:	76478793          	addi	a5,a5,1892 # 800092d0 <_ebss>
80002b74:	0007a783          	lw	a5,0(a5)
80002b78:	0aa7e863          	bltu	a5,a0,80002c28 <_Z11riscy_fgetcs+0xc8>
80002b7c:	fff50713          	addi	a4,a0,-1
80002b80:	00171793          	slli	a5,a4,0x1
80002b84:	00e787b3          	add	a5,a5,a4
80002b88:	00006617          	auipc	a2,0x6
80002b8c:	44860613          	addi	a2,a2,1096 # 80008fd0 <files>
80002b90:	00479793          	slli	a5,a5,0x4
80002b94:	00f607b3          	add	a5,a2,a5
80002b98:	00c7c783          	lbu	a5,12(a5)
80002b9c:	08078663          	beqz	a5,80002c28 <_Z11riscy_fgetcs+0xc8>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 0;
    }
    fileHandle -= 1; // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80002ba0:	01071713          	slli	a4,a4,0x10
80002ba4:	41075713          	srai	a4,a4,0x10
    if (file->currentAddress >= file->endAddress) {
80002ba8:	00171593          	slli	a1,a4,0x1
80002bac:	00e587b3          	add	a5,a1,a4
80002bb0:	00479793          	slli	a5,a5,0x4
80002bb4:	00f607b3          	add	a5,a2,a5
80002bb8:	0087a683          	lw	a3,8(a5)
80002bbc:	0047a783          	lw	a5,4(a5)
80002bc0:	08f6f463          	bgeu	a3,a5,80002c48 <_Z11riscy_fgetcs+0xe8>
    volatile unsigned int data = 0;
80002bc4:	00012623          	sw	zero,12(sp)
    *flashAdress = adress;
80002bc8:	8b0007b7          	lui	a5,0x8b000
80002bcc:	00d7a223          	sw	a3,4(a5) # 8b000004 <_stack_top+0xac00004>
    *flashRen = 1;
80002bd0:	00100693          	li	a3,1
80002bd4:	00d780a3          	sb	a3,1(a5)
    asm volatile ("nop");
80002bd8:	00000013          	nop
    asm volatile ("nop");
80002bdc:	00000013          	nop
    asm volatile ("nop");
80002be0:	00000013          	nop
        if(*flashReady != 0) {
80002be4:	8b0006b7          	lui	a3,0x8b000
80002be8:	0006c783          	lbu	a5,0(a3) # 8b000000 <_stack_top+0xac00000>
80002bec:	0ff7f793          	andi	a5,a5,255
80002bf0:	fe078ce3          	beqz	a5,80002be8 <_Z11riscy_fgetcs+0x88>
    }

    // Read a single byte from flash
    unsigned int data = readFlash(file->currentAddress);
    char byte = data & 0xFF; // Get the first byte
    file->currentAddress += 1; // Move to the next byte
80002bf4:	00e58733          	add	a4,a1,a4
80002bf8:	00471713          	slli	a4,a4,0x4
80002bfc:	00e60633          	add	a2,a2,a4
80002c00:	00862783          	lw	a5,8(a2)
    data = *flashData;
80002c04:	00c6a683          	lw	a3,12(a3)
    file->currentAddress += 1; // Move to the next byte
80002c08:	00178793          	addi	a5,a5,1
    data = *flashData;
80002c0c:	00d12623          	sw	a3,12(sp)
    file->currentAddress += 1; // Move to the next byte
80002c10:	00f62423          	sw	a5,8(a2)
    return data;
80002c14:	00c12503          	lw	a0,12(sp)
    return byte;
}
80002c18:	01c12083          	lw	ra,28(sp)
    char byte = data & 0xFF; // Get the first byte
80002c1c:	0ff57513          	andi	a0,a0,255
}
80002c20:	02010113          	addi	sp,sp,32
80002c24:	00008067          	ret
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002c28:	00050593          	mv	a1,a0
80002c2c:	00006517          	auipc	a0,0x6
80002c30:	10c50513          	addi	a0,a0,268 # 80008d38 <_etext+0x113c>
80002c34:	bd0ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
        return 0;
80002c38:	00000513          	li	a0,0
}
80002c3c:	01c12083          	lw	ra,28(sp)
80002c40:	02010113          	addi	sp,sp,32
80002c44:	00008067          	ret
        uart_printf("Error: End of file reached.\r\n");
80002c48:	00006517          	auipc	a0,0x6
80002c4c:	13850513          	addi	a0,a0,312 # 80008d80 <_etext+0x1184>
80002c50:	bb4ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
        return 0;
80002c54:	00000513          	li	a0,0
80002c58:	fe5ff06f          	j	80002c3c <_Z11riscy_fgetcs+0xdc>

80002c5c <_Z12riscy_fcloses>:

uint8_t riscy_fclose(int16_t fileHandle) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80002c5c:	04050e63          	beqz	a0,80002cb8 <_Z12riscy_fcloses+0x5c>
80002c60:	00006797          	auipc	a5,0x6
80002c64:	67078793          	addi	a5,a5,1648 # 800092d0 <_ebss>
80002c68:	0007a783          	lw	a5,0(a5)
80002c6c:	04a7e663          	bltu	a5,a0,80002cb8 <_Z12riscy_fcloses+0x5c>
80002c70:	fff50713          	addi	a4,a0,-1
80002c74:	00171793          	slli	a5,a4,0x1
80002c78:	00e787b3          	add	a5,a5,a4
80002c7c:	00006697          	auipc	a3,0x6
80002c80:	35468693          	addi	a3,a3,852 # 80008fd0 <files>
80002c84:	00479793          	slli	a5,a5,0x4
80002c88:	00f687b3          	add	a5,a3,a5
80002c8c:	00c7c783          	lbu	a5,12(a5)
80002c90:	02078463          	beqz	a5,80002cb8 <_Z12riscy_fcloses+0x5c>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return 1; // Error
    }
    fileHandle -= 1; // Adjust for 0-based index
    // Mark the file as invalid
    files[fileHandle].valid = 0;
80002c94:	01071713          	slli	a4,a4,0x10
80002c98:	41075713          	srai	a4,a4,0x10
80002c9c:	00171793          	slli	a5,a4,0x1
80002ca0:	00e78733          	add	a4,a5,a4
80002ca4:	00471713          	slli	a4,a4,0x4
80002ca8:	00e686b3          	add	a3,a3,a4
80002cac:	00068623          	sb	zero,12(a3)
    return 0; // Success
80002cb0:	00000513          	li	a0,0
}
80002cb4:	00008067          	ret
uint8_t riscy_fclose(int16_t fileHandle) {
80002cb8:	ff010113          	addi	sp,sp,-16
80002cbc:	00050593          	mv	a1,a0
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002cc0:	00006517          	auipc	a0,0x6
80002cc4:	07850513          	addi	a0,a0,120 # 80008d38 <_etext+0x113c>
uint8_t riscy_fclose(int16_t fileHandle) {
80002cc8:	00112623          	sw	ra,12(sp)
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002ccc:	b38ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
}
80002cd0:	00c12083          	lw	ra,12(sp)
        return 1; // Error
80002cd4:	00100513          	li	a0,1
}
80002cd8:	01010113          	addi	sp,sp,16
80002cdc:	00008067          	ret

80002ce0 <_Z12riscy_mallocj>:
#define HEAP_START (RAM_LOCATION + 0x400000)

uint32_t current_heap = HEAP_START; // Start of the heap

void* riscy_malloc(size_t size) {
    int previous_heap = current_heap;
80002ce0:	00006717          	auipc	a4,0x6
80002ce4:	2ec70713          	addi	a4,a4,748 # 80008fcc <current_heap>
    current_heap += size/64 * 64 + 64; // Align to 64 bytes
80002ce8:	00072783          	lw	a5,0(a4)
80002cec:	fc057693          	andi	a3,a0,-64
80002cf0:	04078793          	addi	a5,a5,64
80002cf4:	00d787b3          	add	a5,a5,a3
80002cf8:	00f72023          	sw	a5,0(a4)
    return (void*)(current_heap - size);
}
80002cfc:	40a78533          	sub	a0,a5,a0
80002d00:	00008067          	ret

80002d04 <_Z11riscy_fseeksli>:


int riscy_fseek(int16_t fileHandle, long offset, int whence) {
80002d04:	ff010113          	addi	sp,sp,-16
80002d08:	00112623          	sw	ra,12(sp)
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80002d0c:	10050263          	beqz	a0,80002e10 <_Z11riscy_fseeksli+0x10c>
80002d10:	00006797          	auipc	a5,0x6
80002d14:	5c078793          	addi	a5,a5,1472 # 800092d0 <_ebss>
80002d18:	0007a783          	lw	a5,0(a5)
80002d1c:	0ea7ea63          	bltu	a5,a0,80002e10 <_Z11riscy_fseeksli+0x10c>
80002d20:	fff50693          	addi	a3,a0,-1
80002d24:	00169793          	slli	a5,a3,0x1
80002d28:	00d787b3          	add	a5,a5,a3
80002d2c:	00006717          	auipc	a4,0x6
80002d30:	2a470713          	addi	a4,a4,676 # 80008fd0 <files>
80002d34:	00479793          	slli	a5,a5,0x4
80002d38:	00f707b3          	add	a5,a4,a5
80002d3c:	00c7c783          	lbu	a5,12(a5)
80002d40:	0c078863          	beqz	a5,80002e10 <_Z11riscy_fseeksli+0x10c>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return -1;  // Error
    }

    fileHandle -= 1;  // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80002d44:	01069693          	slli	a3,a3,0x10
80002d48:	4106d693          	srai	a3,a3,0x10

    if (whence == SEEK_SET) {
80002d4c:	04060663          	beqz	a2,80002d98 <_Z11riscy_fseeksli+0x94>
        if (offset < 0 || offset > (file->endAddress - file->startAddress)) {
            uart_printf("Error: Invalid offset for SEEK_SET\r\n");
            return -1;
        }
        file->currentAddress = file->startAddress + offset;
    } else if (whence == SEEK_CUR) {
80002d50:	00100793          	li	a5,1
80002d54:	08f60063          	beq	a2,a5,80002dd4 <_Z11riscy_fseeksli+0xd0>
        if (file->currentAddress + offset < file->startAddress || file->currentAddress + offset > file->endAddress) {
            uart_printf("Error: Invalid offset for SEEK_CUR\r\n");
            return -1;
        }
        file->currentAddress += offset;
    } else if (whence == SEEK_END) {
80002d58:	00200793          	li	a5,2
80002d5c:	0ef61a63          	bne	a2,a5,80002e50 <_Z11riscy_fseeksli+0x14c>
        // Set position from the end of the file
        if (offset > 0 || file->endAddress + offset < file->startAddress) {
80002d60:	0cb04e63          	bgtz	a1,80002e3c <_Z11riscy_fseeksli+0x138>
80002d64:	00169793          	slli	a5,a3,0x1
80002d68:	00d786b3          	add	a3,a5,a3
80002d6c:	00469693          	slli	a3,a3,0x4
80002d70:	00d70733          	add	a4,a4,a3
80002d74:	00472683          	lw	a3,4(a4)
80002d78:	00072783          	lw	a5,0(a4)
80002d7c:	00d585b3          	add	a1,a1,a3
80002d80:	0af5ee63          	bltu	a1,a5,80002e3c <_Z11riscy_fseeksli+0x138>
            uart_printf("Error: Invalid offset for SEEK_END\r\n");
            return -1;
        }
        file->currentAddress = file->endAddress + offset;
80002d84:	00b72423          	sw	a1,8(a4)
    } else {
        uart_printf("Error: Invalid whence value\r\n");
        return -1;
    }

    return 0;  // Success
80002d88:	00000513          	li	a0,0
}
80002d8c:	00c12083          	lw	ra,12(sp)
80002d90:	01010113          	addi	sp,sp,16
80002d94:	00008067          	ret
        if (offset < 0 || offset > (file->endAddress - file->startAddress)) {
80002d98:	0805c863          	bltz	a1,80002e28 <_Z11riscy_fseeksli+0x124>
80002d9c:	00169793          	slli	a5,a3,0x1
80002da0:	00d786b3          	add	a3,a5,a3
80002da4:	00469693          	slli	a3,a3,0x4
80002da8:	00d70733          	add	a4,a4,a3
80002dac:	00072783          	lw	a5,0(a4)
80002db0:	00472683          	lw	a3,4(a4)
80002db4:	40f686b3          	sub	a3,a3,a5
80002db8:	06b6e863          	bltu	a3,a1,80002e28 <_Z11riscy_fseeksli+0x124>
        file->currentAddress = file->startAddress + offset;
80002dbc:	00b785b3          	add	a1,a5,a1
80002dc0:	00b72423          	sw	a1,8(a4)
}
80002dc4:	00c12083          	lw	ra,12(sp)
    return 0;  // Success
80002dc8:	00000513          	li	a0,0
}
80002dcc:	01010113          	addi	sp,sp,16
80002dd0:	00008067          	ret
        if (file->currentAddress + offset < file->startAddress || file->currentAddress + offset > file->endAddress) {
80002dd4:	00169793          	slli	a5,a3,0x1
80002dd8:	00d786b3          	add	a3,a5,a3
80002ddc:	00469693          	slli	a3,a3,0x4
80002de0:	00d70733          	add	a4,a4,a3
80002de4:	00872783          	lw	a5,8(a4)
80002de8:	00072683          	lw	a3,0(a4)
80002dec:	00f585b3          	add	a1,a1,a5
80002df0:	00d5e663          	bltu	a1,a3,80002dfc <_Z11riscy_fseeksli+0xf8>
80002df4:	00472783          	lw	a5,4(a4)
80002df8:	f8b7f6e3          	bgeu	a5,a1,80002d84 <_Z11riscy_fseeksli+0x80>
            uart_printf("Error: Invalid offset for SEEK_CUR\r\n");
80002dfc:	00006517          	auipc	a0,0x6
80002e00:	fcc50513          	addi	a0,a0,-52 # 80008dc8 <_etext+0x11cc>
80002e04:	a00ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
            return -1;
80002e08:	fff00513          	li	a0,-1
80002e0c:	f81ff06f          	j	80002d8c <_Z11riscy_fseeksli+0x88>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002e10:	00050593          	mv	a1,a0
80002e14:	00006517          	auipc	a0,0x6
80002e18:	f2450513          	addi	a0,a0,-220 # 80008d38 <_etext+0x113c>
80002e1c:	9e8ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
        return -1;  // Error
80002e20:	fff00513          	li	a0,-1
80002e24:	f69ff06f          	j	80002d8c <_Z11riscy_fseeksli+0x88>
            uart_printf("Error: Invalid offset for SEEK_SET\r\n");
80002e28:	00006517          	auipc	a0,0x6
80002e2c:	f7850513          	addi	a0,a0,-136 # 80008da0 <_etext+0x11a4>
80002e30:	9d4ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
            return -1;
80002e34:	fff00513          	li	a0,-1
80002e38:	f55ff06f          	j	80002d8c <_Z11riscy_fseeksli+0x88>
            uart_printf("Error: Invalid offset for SEEK_END\r\n");
80002e3c:	00006517          	auipc	a0,0x6
80002e40:	fb450513          	addi	a0,a0,-76 # 80008df0 <_etext+0x11f4>
80002e44:	9c0ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
            return -1;
80002e48:	fff00513          	li	a0,-1
80002e4c:	f41ff06f          	j	80002d8c <_Z11riscy_fseeksli+0x88>
        uart_printf("Error: Invalid whence value\r\n");
80002e50:	00006517          	auipc	a0,0x6
80002e54:	fc850513          	addi	a0,a0,-56 # 80008e18 <_etext+0x121c>
80002e58:	9acff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
        return -1;
80002e5c:	fff00513          	li	a0,-1
80002e60:	f2dff06f          	j	80002d8c <_Z11riscy_fseeksli+0x88>

80002e64 <_Z11riscy_ftells>:

int riscy_ftell(int16_t fileHandle) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80002e64:	06050063          	beqz	a0,80002ec4 <_Z11riscy_ftells+0x60>
80002e68:	00006797          	auipc	a5,0x6
80002e6c:	46878793          	addi	a5,a5,1128 # 800092d0 <_ebss>
80002e70:	0007a783          	lw	a5,0(a5)
80002e74:	04a7e863          	bltu	a5,a0,80002ec4 <_Z11riscy_ftells+0x60>
80002e78:	fff50713          	addi	a4,a0,-1
80002e7c:	00171793          	slli	a5,a4,0x1
80002e80:	00e787b3          	add	a5,a5,a4
80002e84:	00006697          	auipc	a3,0x6
80002e88:	14c68693          	addi	a3,a3,332 # 80008fd0 <files>
80002e8c:	00479793          	slli	a5,a5,0x4
80002e90:	00f687b3          	add	a5,a3,a5
80002e94:	00c7c783          	lbu	a5,12(a5)
80002e98:	02078663          	beqz	a5,80002ec4 <_Z11riscy_ftells+0x60>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return -1;  // Error
    }

    fileHandle -= 1;  // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80002e9c:	01071713          	slli	a4,a4,0x10
80002ea0:	41075713          	srai	a4,a4,0x10

    // Return the current position relative to the beginning of the file
    return file->currentAddress - file->startAddress;
80002ea4:	00171793          	slli	a5,a4,0x1
80002ea8:	00e78733          	add	a4,a5,a4
80002eac:	00471713          	slli	a4,a4,0x4
80002eb0:	00e686b3          	add	a3,a3,a4
80002eb4:	0086a503          	lw	a0,8(a3)
80002eb8:	0006a783          	lw	a5,0(a3)
80002ebc:	40f50533          	sub	a0,a0,a5
}
80002ec0:	00008067          	ret
int riscy_ftell(int16_t fileHandle) {
80002ec4:	ff010113          	addi	sp,sp,-16
80002ec8:	00050593          	mv	a1,a0
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002ecc:	00006517          	auipc	a0,0x6
80002ed0:	e6c50513          	addi	a0,a0,-404 # 80008d38 <_etext+0x113c>
int riscy_ftell(int16_t fileHandle) {
80002ed4:	00112623          	sw	ra,12(sp)
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002ed8:	92cff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
}
80002edc:	00c12083          	lw	ra,12(sp)
        return -1;  // Error
80002ee0:	fff00513          	li	a0,-1
}
80002ee4:	01010113          	addi	sp,sp,16
80002ee8:	00008067          	ret

80002eec <_Z10riscy_feofs>:
int riscy_feof(int16_t fileHandle) {
    if (fileHandle == 0 || fileHandle > fileCount || !files[fileHandle-1].valid) {
80002eec:	06050263          	beqz	a0,80002f50 <_Z10riscy_feofs+0x64>
80002ef0:	00006797          	auipc	a5,0x6
80002ef4:	3e078793          	addi	a5,a5,992 # 800092d0 <_ebss>
80002ef8:	0007a783          	lw	a5,0(a5)
80002efc:	04a7ea63          	bltu	a5,a0,80002f50 <_Z10riscy_feofs+0x64>
80002f00:	fff50713          	addi	a4,a0,-1
80002f04:	00171793          	slli	a5,a4,0x1
80002f08:	00e787b3          	add	a5,a5,a4
80002f0c:	00006697          	auipc	a3,0x6
80002f10:	0c468693          	addi	a3,a3,196 # 80008fd0 <files>
80002f14:	00479793          	slli	a5,a5,0x4
80002f18:	00f687b3          	add	a5,a3,a5
80002f1c:	00c7c783          	lbu	a5,12(a5)
80002f20:	02078863          	beqz	a5,80002f50 <_Z10riscy_feofs+0x64>
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
        return -1;  // Error
    }

    fileHandle -= 1;  // Adjust for 0-based index
    file_t* file = &files[fileHandle];
80002f24:	01071713          	slli	a4,a4,0x10
80002f28:	41075713          	srai	a4,a4,0x10

    // Check if the current address is at or beyond the end of the file
    if (file->currentAddress >= file->endAddress) {
80002f2c:	00171793          	slli	a5,a4,0x1
80002f30:	00e78733          	add	a4,a5,a4
80002f34:	00471713          	slli	a4,a4,0x4
80002f38:	00e686b3          	add	a3,a3,a4
80002f3c:	0086a503          	lw	a0,8(a3)
80002f40:	0046a783          	lw	a5,4(a3)
80002f44:	00f53533          	sltu	a0,a0,a5
80002f48:	00154513          	xori	a0,a0,1
        return 1;  // EOF reached
    }
    
    return 0;  // Not EOF
}
80002f4c:	00008067          	ret
int riscy_feof(int16_t fileHandle) {
80002f50:	ff010113          	addi	sp,sp,-16
80002f54:	00050593          	mv	a1,a0
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002f58:	00006517          	auipc	a0,0x6
80002f5c:	de050513          	addi	a0,a0,-544 # 80008d38 <_etext+0x113c>
int riscy_feof(int16_t fileHandle) {
80002f60:	00112623          	sw	ra,12(sp)
        uart_printf("Error: Invalid file handle %d\r\n", fileHandle);
80002f64:	8a0ff0ef          	jal	ra,80002004 <_Z11uart_printfPKcz>
}
80002f68:	00c12083          	lw	ra,12(sp)
        return -1;  // Error
80002f6c:	fff00513          	li	a0,-1
}
80002f70:	01010113          	addi	sp,sp,16
80002f74:	00008067          	ret

80002f78 <_ZL6ulli2ayP5param>:


#ifdef PRINTF_LONG_LONG_SUPPORT
static void _TFP_GCC_NO_INLINE_ ulli2a(
    unsigned long long int num, struct param *p)
{
80002f78:	fc010113          	addi	sp,sp,-64
80002f7c:	02812c23          	sw	s0,56(sp)
80002f80:	02912a23          	sw	s1,52(sp)
80002f84:	03212823          	sw	s2,48(sp)
80002f88:	03312623          	sw	s3,44(sp)
80002f8c:	03412423          	sw	s4,40(sp)
80002f90:	03512223          	sw	s5,36(sp)
80002f94:	03612023          	sw	s6,32(sp)
80002f98:	01712e23          	sw	s7,28(sp)
80002f9c:	02112e23          	sw	ra,60(sp)
80002fa0:	01812c23          	sw	s8,24(sp)
80002fa4:	01912a23          	sw	s9,20(sp)
80002fa8:	01a12823          	sw	s10,16(sp)
80002fac:	01b12623          	sw	s11,12(sp)
80002fb0:	00060b13          	mv	s6,a2
80002fb4:	00058913          	mv	s2,a1
80002fb8:	00050993          	mv	s3,a0
    int n = 0;
    unsigned long long int d = 1;
    char *bf = p->bf;
80002fbc:	01062a03          	lw	s4,16(a2)
    while (num / d >= p->base)
80002fc0:	00c62a83          	lw	s5,12(a2)
80002fc4:	00000b93          	li	s7,0
    unsigned long long int d = 1;
80002fc8:	00100493          	li	s1,1
80002fcc:	00000413          	li	s0,0
    while (num / d >= p->base)
80002fd0:	12058e63          	beqz	a1,8000310c <_ZL6ulli2ayP5param+0x194>
        d *= p->base;
80002fd4:	000a8613          	mv	a2,s5
80002fd8:	00000693          	li	a3,0
80002fdc:	00048513          	mv	a0,s1
80002fe0:	00040593          	mv	a1,s0
80002fe4:	540040ef          	jal	ra,80007524 <__muldi3>
80002fe8:	00050493          	mv	s1,a0
80002fec:	00058413          	mv	s0,a1
    while (num / d >= p->base)
80002ff0:	00050613          	mv	a2,a0
80002ff4:	00058693          	mv	a3,a1
80002ff8:	00098513          	mv	a0,s3
80002ffc:	00090593          	mv	a1,s2
80003000:	079020ef          	jal	ra,80005878 <__udivdi3>
80003004:	fcbb98e3          	bne	s7,a1,80002fd4 <_ZL6ulli2ayP5param+0x5c>
80003008:	fd5576e3          	bgeu	a0,s5,80002fd4 <_ZL6ulli2ayP5param+0x5c>
    while (d != 0) {
8000300c:	0084e7b3          	or	a5,s1,s0
80003010:	0a078663          	beqz	a5,800030bc <_ZL6ulli2ayP5param+0x144>
    unsigned long long int d = 1;
80003014:	00000d13          	li	s10,0
        int dgt = num / d;
        num %= d;
        d /= p->base;
80003018:	00000b93          	li	s7,0
        if (n || dgt > 0 || d == 0) {
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
8000301c:	00900c13          	li	s8,9
        int dgt = num / d;
80003020:	00048613          	mv	a2,s1
80003024:	00040693          	mv	a3,s0
80003028:	00098513          	mv	a0,s3
8000302c:	00090593          	mv	a1,s2
80003030:	049020ef          	jal	ra,80005878 <__udivdi3>
80003034:	00050c93          	mv	s9,a0
        num %= d;
80003038:	00048613          	mv	a2,s1
8000303c:	00040693          	mv	a3,s0
80003040:	00098513          	mv	a0,s3
80003044:	00090593          	mv	a1,s2
80003048:	605020ef          	jal	ra,80005e4c <__umoddi3>
8000304c:	00050993          	mv	s3,a0
80003050:	00058913          	mv	s2,a1
        d /= p->base;
80003054:	000a8613          	mv	a2,s5
80003058:	00000693          	li	a3,0
8000305c:	00048513          	mv	a0,s1
80003060:	00040593          	mv	a1,s0
80003064:	015020ef          	jal	ra,80005878 <__udivdi3>
        int dgt = num / d;
80003068:	000c8713          	mv	a4,s9
        if (n || dgt > 0 || d == 0) {
8000306c:	000d1463          	bnez	s10,80003074 <_ZL6ulli2ayP5param+0xfc>
80003070:	09905663          	blez	s9,800030fc <_ZL6ulli2ayP5param+0x184>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003074:	03000793          	li	a5,48
80003078:	00ec5e63          	bge	s8,a4,80003094 <_ZL6ulli2ayP5param+0x11c>
8000307c:	000b4783          	lbu	a5,0(s6)
80003080:	0047f793          	andi	a5,a5,4
80003084:	0017b793          	seqz	a5,a5
80003088:	40f007b3          	neg	a5,a5
8000308c:	0207f793          	andi	a5,a5,32
80003090:	03778793          	addi	a5,a5,55
80003094:	019787b3          	add	a5,a5,s9
80003098:	00fa0023          	sb	a5,0(s4)
            ++n;
8000309c:	001d0d13          	addi	s10,s10,1
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800030a0:	001a0a13          	addi	s4,s4,1
    while (d != 0) {
800030a4:	008b8a63          	beq	s7,s0,800030b8 <_ZL6ulli2ayP5param+0x140>
800030a8:	00cb2a83          	lw	s5,12(s6)
    unsigned long long int d = 1;
800030ac:	00050493          	mv	s1,a0
800030b0:	00058413          	mv	s0,a1
800030b4:	f6dff06f          	j	80003020 <_ZL6ulli2ayP5param+0xa8>
    while (d != 0) {
800030b8:	ff54f8e3          	bgeu	s1,s5,800030a8 <_ZL6ulli2ayP5param+0x130>
        }
    }
    *bf = 0;
800030bc:	000a0023          	sb	zero,0(s4)
}
800030c0:	03c12083          	lw	ra,60(sp)
800030c4:	03812403          	lw	s0,56(sp)
800030c8:	03412483          	lw	s1,52(sp)
800030cc:	03012903          	lw	s2,48(sp)
800030d0:	02c12983          	lw	s3,44(sp)
800030d4:	02812a03          	lw	s4,40(sp)
800030d8:	02412a83          	lw	s5,36(sp)
800030dc:	02012b03          	lw	s6,32(sp)
800030e0:	01c12b83          	lw	s7,28(sp)
800030e4:	01812c03          	lw	s8,24(sp)
800030e8:	01412c83          	lw	s9,20(sp)
800030ec:	01012d03          	lw	s10,16(sp)
800030f0:	00c12d83          	lw	s11,12(sp)
800030f4:	04010113          	addi	sp,sp,64
800030f8:	00008067          	ret
        if (n || dgt > 0 || d == 0) {
800030fc:	fa0418e3          	bnez	s0,800030ac <_ZL6ulli2ayP5param+0x134>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003100:	03000793          	li	a5,48
        if (n || dgt > 0 || d == 0) {
80003104:	f954e8e3          	bltu	s1,s5,80003094 <_ZL6ulli2ayP5param+0x11c>
80003108:	fa5ff06f          	j	800030ac <_ZL6ulli2ayP5param+0x134>
    while (num / d >= p->base)
8000310c:	ed5574e3          	bgeu	a0,s5,80002fd4 <_ZL6ulli2ayP5param+0x5c>
80003110:	f05ff06f          	j	80003014 <_ZL6ulli2ayP5param+0x9c>

80003114 <_ZL6putchwPvPFvS_cEP5param>:

static void putchw(void *putp, putcf putf, struct param *p)
{
    char ch;
    int n = p->width;
    char *bf = p->bf;
80003114:	01062783          	lw	a5,16(a2)
{
80003118:	fe010113          	addi	sp,sp,-32
8000311c:	00812c23          	sw	s0,24(sp)
80003120:	01212823          	sw	s2,16(sp)
80003124:	01312623          	sw	s3,12(sp)
80003128:	01412423          	sw	s4,8(sp)
8000312c:	00112e23          	sw	ra,28(sp)
80003130:	00912a23          	sw	s1,20(sp)

    /* Number of filling characters */
    while (*bf++ && n > 0)
80003134:	0007c703          	lbu	a4,0(a5)
{
80003138:	00060a13          	mv	s4,a2
8000313c:	00050913          	mv	s2,a0
80003140:	00058993          	mv	s3,a1
    int n = p->width;
80003144:	00462403          	lw	s0,4(a2)
    while (*bf++ && n > 0)
80003148:	02070263          	beqz	a4,8000316c <_ZL6putchwPvPFvS_cEP5param+0x58>
8000314c:	00178793          	addi	a5,a5,1
80003150:	00804663          	bgtz	s0,8000315c <_ZL6putchwPvPFvS_cEP5param+0x48>
80003154:	0180006f          	j	8000316c <_ZL6putchwPvPFvS_cEP5param+0x58>
80003158:	00040a63          	beqz	s0,8000316c <_ZL6putchwPvPFvS_cEP5param+0x58>
8000315c:	00178793          	addi	a5,a5,1
80003160:	fff7c703          	lbu	a4,-1(a5)
        n--;
80003164:	fff40413          	addi	s0,s0,-1
    while (*bf++ && n > 0)
80003168:	fe0718e3          	bnez	a4,80003158 <_ZL6putchwPvPFvS_cEP5param+0x44>
    if (p->sign)
8000316c:	008a4583          	lbu	a1,8(s4)
        n--;
    if (p->alt && p->base == 16)
80003170:	000a4783          	lbu	a5,0(s4)
        n--;
80003174:	00b03733          	snez	a4,a1
    if (p->alt && p->base == 16)
80003178:	0027f793          	andi	a5,a5,2
        n--;
8000317c:	40e40433          	sub	s0,s0,a4
    if (p->alt && p->base == 16)
80003180:	00078e63          	beqz	a5,8000319c <_ZL6putchwPvPFvS_cEP5param+0x88>
80003184:	00ca2783          	lw	a5,12(s4)
80003188:	01000713          	li	a4,16
8000318c:	12e78863          	beq	a5,a4,800032bc <_ZL6putchwPvPFvS_cEP5param+0x1a8>
        n -= 2;
    else if (p->alt && p->base == 8)
        n--;
80003190:	ff878793          	addi	a5,a5,-8
80003194:	0017b793          	seqz	a5,a5
80003198:	40f40433          	sub	s0,s0,a5

    /* Fill with space to align to the right, before alternate or sign */
    if (!p->lz && !p->align_left) {
8000319c:	000a2783          	lw	a5,0(s4)
800031a0:	0097f793          	andi	a5,a5,9
800031a4:	02079663          	bnez	a5,800031d0 <_ZL6putchwPvPFvS_cEP5param+0xbc>
        while (n-- > 0)
800031a8:	fff40493          	addi	s1,s0,-1
800031ac:	14805e63          	blez	s0,80003308 <_ZL6putchwPvPFvS_cEP5param+0x1f4>
800031b0:	fff00413          	li	s0,-1
800031b4:	fff48493          	addi	s1,s1,-1
            putf(putp, ' ');
800031b8:	02000593          	li	a1,32
800031bc:	00090513          	mv	a0,s2
800031c0:	000980e7          	jalr	s3
        while (n-- > 0)
800031c4:	fe8498e3          	bne	s1,s0,800031b4 <_ZL6putchwPvPFvS_cEP5param+0xa0>
800031c8:	008a4583          	lbu	a1,8(s4)
800031cc:	fff00413          	li	s0,-1
    }

    /* print sign */
    if (p->sign)
800031d0:	00058663          	beqz	a1,800031dc <_ZL6putchwPvPFvS_cEP5param+0xc8>
        putf(putp, p->sign);
800031d4:	00090513          	mv	a0,s2
800031d8:	000980e7          	jalr	s3

    /* Alternate */
    if (p->alt && p->base == 16) {
800031dc:	000a4783          	lbu	a5,0(s4)
800031e0:	0027f713          	andi	a4,a5,2
800031e4:	00070c63          	beqz	a4,800031fc <_ZL6putchwPvPFvS_cEP5param+0xe8>
800031e8:	00ca2703          	lw	a4,12(s4)
800031ec:	01000693          	li	a3,16
800031f0:	0cd70a63          	beq	a4,a3,800032c4 <_ZL6putchwPvPFvS_cEP5param+0x1b0>
        putf(putp, '0');
        putf(putp, (p->uc ? 'X' : 'x'));
    } else if (p->alt && p->base == 8) {
800031f4:	00800693          	li	a3,8
800031f8:	0ed70e63          	beq	a4,a3,800032f4 <_ZL6putchwPvPFvS_cEP5param+0x1e0>
        putf(putp, '0');
    }

    /* Fill with zeros, after alternate or sign */
    if (p->lz) {
800031fc:	0017f793          	andi	a5,a5,1
80003200:	02078463          	beqz	a5,80003228 <_ZL6putchwPvPFvS_cEP5param+0x114>
        while (n-- > 0)
80003204:	fff40493          	addi	s1,s0,-1
80003208:	10805463          	blez	s0,80003310 <_ZL6putchwPvPFvS_cEP5param+0x1fc>
8000320c:	fff00413          	li	s0,-1
80003210:	fff48493          	addi	s1,s1,-1
            putf(putp, '0');
80003214:	03000593          	li	a1,48
80003218:	00090513          	mv	a0,s2
8000321c:	000980e7          	jalr	s3
        while (n-- > 0)
80003220:	fe8498e3          	bne	s1,s0,80003210 <_ZL6putchwPvPFvS_cEP5param+0xfc>
80003224:	fff00413          	li	s0,-1
    }

    /* Put actual buffer */
    bf = p->bf;
80003228:	010a2483          	lw	s1,16(s4)
    while ((ch = *bf++))
8000322c:	0004c583          	lbu	a1,0(s1)
80003230:	00148493          	addi	s1,s1,1
80003234:	00058c63          	beqz	a1,8000324c <_ZL6putchwPvPFvS_cEP5param+0x138>
        putf(putp, ch);
80003238:	00090513          	mv	a0,s2
    while ((ch = *bf++))
8000323c:	00148493          	addi	s1,s1,1
        putf(putp, ch);
80003240:	000980e7          	jalr	s3
    while ((ch = *bf++))
80003244:	fff4c583          	lbu	a1,-1(s1)
80003248:	fe0598e3          	bnez	a1,80003238 <_ZL6putchwPvPFvS_cEP5param+0x124>

    /* Fill with space to align to the left, after string */
    if (!p->lz && p->align_left) {
8000324c:	000a2783          	lw	a5,0(s4)
80003250:	00800713          	li	a4,8
80003254:	0097f793          	andi	a5,a5,9
80003258:	02e78263          	beq	a5,a4,8000327c <_ZL6putchwPvPFvS_cEP5param+0x168>
        while (n-- > 0)
            putf(putp, ' ');
    }
}
8000325c:	01c12083          	lw	ra,28(sp)
80003260:	01812403          	lw	s0,24(sp)
80003264:	01412483          	lw	s1,20(sp)
80003268:	01012903          	lw	s2,16(sp)
8000326c:	00c12983          	lw	s3,12(sp)
80003270:	00812a03          	lw	s4,8(sp)
80003274:	02010113          	addi	sp,sp,32
80003278:	00008067          	ret
        while (n-- > 0)
8000327c:	fff40493          	addi	s1,s0,-1
80003280:	fc805ee3          	blez	s0,8000325c <_ZL6putchwPvPFvS_cEP5param+0x148>
80003284:	fff00413          	li	s0,-1
80003288:	fff48493          	addi	s1,s1,-1
            putf(putp, ' ');
8000328c:	02000593          	li	a1,32
80003290:	00090513          	mv	a0,s2
80003294:	000980e7          	jalr	s3
        while (n-- > 0)
80003298:	fe8498e3          	bne	s1,s0,80003288 <_ZL6putchwPvPFvS_cEP5param+0x174>
}
8000329c:	01c12083          	lw	ra,28(sp)
800032a0:	01812403          	lw	s0,24(sp)
800032a4:	01412483          	lw	s1,20(sp)
800032a8:	01012903          	lw	s2,16(sp)
800032ac:	00c12983          	lw	s3,12(sp)
800032b0:	00812a03          	lw	s4,8(sp)
800032b4:	02010113          	addi	sp,sp,32
800032b8:	00008067          	ret
        n -= 2;
800032bc:	ffe40413          	addi	s0,s0,-2
800032c0:	eddff06f          	j	8000319c <_ZL6putchwPvPFvS_cEP5param+0x88>
        putf(putp, '0');
800032c4:	03000593          	li	a1,48
800032c8:	00090513          	mv	a0,s2
800032cc:	000980e7          	jalr	s3
        putf(putp, (p->uc ? 'X' : 'x'));
800032d0:	000a4583          	lbu	a1,0(s4)
800032d4:	00090513          	mv	a0,s2
800032d8:	01d59593          	slli	a1,a1,0x1d
800032dc:	41f5d593          	srai	a1,a1,0x1f
800032e0:	fe05f593          	andi	a1,a1,-32
800032e4:	07858593          	addi	a1,a1,120
800032e8:	000980e7          	jalr	s3
800032ec:	000a4783          	lbu	a5,0(s4)
800032f0:	f0dff06f          	j	800031fc <_ZL6putchwPvPFvS_cEP5param+0xe8>
        putf(putp, '0');
800032f4:	03000593          	li	a1,48
800032f8:	00090513          	mv	a0,s2
800032fc:	000980e7          	jalr	s3
80003300:	000a4783          	lbu	a5,0(s4)
80003304:	ef9ff06f          	j	800031fc <_ZL6putchwPvPFvS_cEP5param+0xe8>
        while (n-- > 0)
80003308:	00048413          	mv	s0,s1
8000330c:	ec5ff06f          	j	800031d0 <_ZL6putchwPvPFvS_cEP5param+0xbc>
        while (n-- > 0)
80003310:	00048413          	mv	s0,s1
80003314:	f15ff06f          	j	80003228 <_ZL6putchwPvPFvS_cEP5param+0x114>

80003318 <tfp_format>:

void tfp_format(void *putp, putcf putf, const char *fmt, va_list va)
{
80003318:	f8010113          	addi	sp,sp,-128
    char bf[23];  /* long = 64b on some architectures */
#else
    char bf[12];  /* int = 32b on some architectures */
#endif
    char ch;
    p.bf = bf;
8000331c:	02810793          	addi	a5,sp,40
{
80003320:	06912a23          	sw	s1,116(sp)
80003324:	07212823          	sw	s2,112(sp)
80003328:	07312623          	sw	s3,108(sp)
8000332c:	07412423          	sw	s4,104(sp)
80003330:	07512223          	sw	s5,100(sp)
80003334:	07612023          	sw	s6,96(sp)
80003338:	05712e23          	sw	s7,92(sp)
8000333c:	05812c23          	sw	s8,88(sp)
80003340:	06112e23          	sw	ra,124(sp)
80003344:	06812c23          	sw	s0,120(sp)
80003348:	05912a23          	sw	s9,84(sp)
8000334c:	05a12823          	sw	s10,80(sp)
80003350:	05b12623          	sw	s11,76(sp)
80003354:	00050993          	mv	s3,a0
80003358:	00058913          	mv	s2,a1
8000335c:	00060c13          	mv	s8,a2
80003360:	00068b93          	mv	s7,a3
    p.bf = bf;
80003364:	02f12223          	sw	a5,36(sp)

    while ((ch = *(fmt++))) {
        if (ch != '%') {
80003368:	02500493          	li	s1,37
8000336c:	02d00b13          	li	s6,45
80003370:	03000a93          	li	s5,48
80003374:	02300a13          	li	s4,35
    while ((ch = *(fmt++))) {
80003378:	000c4583          	lbu	a1,0(s8)
8000337c:	001c0413          	addi	s0,s8,1
80003380:	02058063          	beqz	a1,800033a0 <tfp_format+0x88>
        if (ch != '%') {
80003384:	04958c63          	beq	a1,s1,800033dc <tfp_format+0xc4>
            putf(putp, ch);
80003388:	00098513          	mv	a0,s3
    while ((ch = *(fmt++))) {
8000338c:	00040c13          	mv	s8,s0
            putf(putp, ch);
80003390:	000900e7          	jalr	s2
    while ((ch = *(fmt++))) {
80003394:	000c4583          	lbu	a1,0(s8)
80003398:	001c0413          	addi	s0,s8,1
8000339c:	fe0594e3          	bnez	a1,80003384 <tfp_format+0x6c>
                break;
            }
        }
    }
 abort:;
}
800033a0:	07c12083          	lw	ra,124(sp)
800033a4:	07812403          	lw	s0,120(sp)
800033a8:	07412483          	lw	s1,116(sp)
800033ac:	07012903          	lw	s2,112(sp)
800033b0:	06c12983          	lw	s3,108(sp)
800033b4:	06812a03          	lw	s4,104(sp)
800033b8:	06412a83          	lw	s5,100(sp)
800033bc:	06012b03          	lw	s6,96(sp)
800033c0:	05c12b83          	lw	s7,92(sp)
800033c4:	05812c03          	lw	s8,88(sp)
800033c8:	05412c83          	lw	s9,84(sp)
800033cc:	05012d03          	lw	s10,80(sp)
800033d0:	04c12d83          	lw	s11,76(sp)
800033d4:	08010113          	addi	sp,sp,128
800033d8:	00008067          	ret
            p.lz = 0;
800033dc:	01414783          	lbu	a5,20(sp)
            p.width = 0;
800033e0:	00012c23          	sw	zero,24(sp)
            p.sign = 0;
800033e4:	00010e23          	sb	zero,28(sp)
            p.lz = 0;
800033e8:	ff47f793          	andi	a5,a5,-12
800033ec:	00f10a23          	sb	a5,20(sp)
            p.sign = 0;
800033f0:	00000593          	li	a1,0
800033f4:	00000713          	li	a4,0
800033f8:	00000693          	li	a3,0
800033fc:	00000513          	li	a0,0
80003400:	00000613          	li	a2,0
            while ((ch = *(fmt++))) {
80003404:	00140413          	addi	s0,s0,1
80003408:	fff44783          	lbu	a5,-1(s0)
8000340c:	f8078ae3          	beqz	a5,800033a0 <tfp_format+0x88>
80003410:	1b678e63          	beq	a5,s6,800035cc <tfp_format+0x2b4>
80003414:	1b578663          	beq	a5,s5,800035c0 <tfp_format+0x2a8>
80003418:	19478e63          	beq	a5,s4,800035b4 <tfp_format+0x29c>
8000341c:	00060863          	beqz	a2,8000342c <tfp_format+0x114>
80003420:	01414603          	lbu	a2,20(sp)
80003424:	00866613          	ori	a2,a2,8
80003428:	00c10a23          	sb	a2,20(sp)
8000342c:	00068a63          	beqz	a3,80003440 <tfp_format+0x128>
80003430:	01414683          	lbu	a3,20(sp)
80003434:	ffe6f693          	andi	a3,a3,-2
80003438:	00a6e533          	or	a0,a3,a0
8000343c:	00a10a23          	sb	a0,20(sp)
80003440:	00058c63          	beqz	a1,80003458 <tfp_format+0x140>
80003444:	01414683          	lbu	a3,20(sp)
80003448:	00171713          	slli	a4,a4,0x1
8000344c:	ffd6f693          	andi	a3,a3,-3
80003450:	00e6e733          	or	a4,a3,a4
80003454:	00e10a23          	sb	a4,20(sp)
            if (ch >= '0' && ch <= '9') {
80003458:	fd078613          	addi	a2,a5,-48
8000345c:	0ff67693          	andi	a3,a2,255
80003460:	00900713          	li	a4,9
80003464:	4ad77863          	bgeu	a4,a3,80003914 <tfp_format+0x5fc>
            if (ch == '.') {
80003468:	02e00713          	li	a4,46
8000346c:	50e78863          	beq	a5,a4,8000397c <tfp_format+0x664>
            if (ch == 'z') {
80003470:	07a00713          	li	a4,122
80003474:	48e78863          	beq	a5,a4,80003904 <tfp_format+0x5ec>
            if (ch == 'l') {
80003478:	06c00713          	li	a4,108
8000347c:	52e78463          	beq	a5,a4,800039a4 <tfp_format+0x68c>
80003480:	00040c13          	mv	s8,s0
            char lng = 0;  /* 1 for long, 2 for long long */
80003484:	00000693          	li	a3,0
            switch (ch) {
80003488:	06900713          	li	a4,105
8000348c:	26e78e63          	beq	a5,a4,80003708 <tfp_format+0x3f0>
80003490:	22f77863          	bgeu	a4,a5,800036c0 <tfp_format+0x3a8>
80003494:	07300713          	li	a4,115
80003498:	5ee78c63          	beq	a5,a4,80003a90 <tfp_format+0x778>
8000349c:	12f76c63          	bltu	a4,a5,800035d4 <tfp_format+0x2bc>
800034a0:	06f00713          	li	a4,111
800034a4:	50e78a63          	beq	a5,a4,800039b8 <tfp_format+0x6a0>
800034a8:	07000713          	li	a4,112
800034ac:	ece796e3          	bne	a5,a4,80003378 <tfp_format+0x60>
                p.alt = 1;
800034b0:	01414783          	lbu	a5,20(sp)
800034b4:	02412c83          	lw	s9,36(sp)
                p.base = 16;
800034b8:	01000713          	li	a4,16
                p.alt = 1;
800034bc:	ff97f793          	andi	a5,a5,-7
800034c0:	0027e793          	ori	a5,a5,2
800034c4:	000ba403          	lw	s0,0(s7)
                p.base = 16;
800034c8:	02e12023          	sw	a4,32(sp)
                p.alt = 1;
800034cc:	00f10a23          	sb	a5,20(sp)
                  if (1 == lng)
800034d0:	004b8b93          	addi	s7,s7,4
    while (num / d >= p->base)
800034d4:	00f00793          	li	a5,15
    unsigned int d = 1;
800034d8:	00100d93          	li	s11,1
    while (num / d >= p->base)
800034dc:	0287f063          	bgeu	a5,s0,800034fc <tfp_format+0x1e4>
800034e0:	00f00d13          	li	s10,15
        d *= p->base;
800034e4:	004d9d93          	slli	s11,s11,0x4
    while (num / d >= p->base)
800034e8:	000d8593          	mv	a1,s11
800034ec:	00040513          	mv	a0,s0
800034f0:	0cc040ef          	jal	ra,800075bc <__udivsi3>
800034f4:	fead68e3          	bltu	s10,a0,800034e4 <tfp_format+0x1cc>
    while (d != 0) {
800034f8:	680d8663          	beqz	s11,80003b84 <tfp_format+0x86c>
    unsigned int d = 1;
800034fc:	01000d13          	li	s10,16
80003500:	00000613          	li	a2,0
80003504:	0480006f          	j	8000354c <tfp_format+0x234>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003508:	00900693          	li	a3,9
8000350c:	03000713          	li	a4,48
80003510:	00f6de63          	bge	a3,a5,8000352c <tfp_format+0x214>
80003514:	01414703          	lbu	a4,20(sp)
80003518:	00477713          	andi	a4,a4,4
8000351c:	00173713          	seqz	a4,a4
80003520:	40e00733          	neg	a4,a4
80003524:	02077713          	andi	a4,a4,32
80003528:	03770713          	addi	a4,a4,55
8000352c:	00f70733          	add	a4,a4,a5
80003530:	00ec8023          	sb	a4,0(s9)
80003534:	001c8693          	addi	a3,s9,1
            ++n;
80003538:	00160613          	addi	a2,a2,1
    while (d != 0) {
8000353c:	07ade063          	bltu	s11,s10,8000359c <tfp_format+0x284>
80003540:	02012d03          	lw	s10,32(sp)
    unsigned int d = 1;
80003544:	00068c93          	mv	s9,a3
80003548:	00050d93          	mv	s11,a0
        int dgt = num / d;
8000354c:	000d8593          	mv	a1,s11
80003550:	00040513          	mv	a0,s0
80003554:	00c12623          	sw	a2,12(sp)
80003558:	064040ef          	jal	ra,800075bc <__udivsi3>
8000355c:	00a12423          	sw	a0,8(sp)
        num %= d;
80003560:	000d8593          	mv	a1,s11
80003564:	00040513          	mv	a0,s0
80003568:	09c040ef          	jal	ra,80007604 <__umodsi3>
8000356c:	00050413          	mv	s0,a0
        d /= p->base;
80003570:	000d0593          	mv	a1,s10
80003574:	000d8513          	mv	a0,s11
80003578:	044040ef          	jal	ra,800075bc <__udivsi3>
        if (n || dgt > 0 || d == 0) {
8000357c:	00c12603          	lw	a2,12(sp)
80003580:	00812783          	lw	a5,8(sp)
80003584:	f80612e3          	bnez	a2,80003508 <tfp_format+0x1f0>
80003588:	f8f040e3          	bgtz	a5,80003508 <tfp_format+0x1f0>
8000358c:	53adf663          	bgeu	s11,s10,80003ab8 <tfp_format+0x7a0>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003590:	03078713          	addi	a4,a5,48
80003594:	001c8693          	addi	a3,s9,1
80003598:	00ec8023          	sb	a4,0(s9)
    *bf = 0;
8000359c:	00068023          	sb	zero,0(a3)
                putchw(putp, putf, &p);
800035a0:	01410613          	addi	a2,sp,20
800035a4:	00090593          	mv	a1,s2
800035a8:	00098513          	mv	a0,s3
800035ac:	b69ff0ef          	jal	ra,80003114 <_ZL6putchwPvPFvS_cEP5param>
                break;
800035b0:	dc9ff06f          	j	80003378 <tfp_format+0x60>
            while ((ch = *(fmt++))) {
800035b4:	00100593          	li	a1,1
                    p.alt = 1;
800035b8:	00100713          	li	a4,1
800035bc:	e49ff06f          	j	80003404 <tfp_format+0xec>
            while ((ch = *(fmt++))) {
800035c0:	00100693          	li	a3,1
                    p.lz = 1;
800035c4:	00100513          	li	a0,1
800035c8:	e3dff06f          	j	80003404 <tfp_format+0xec>
                    p.align_left = 1;
800035cc:	00100613          	li	a2,1
800035d0:	e35ff06f          	j	80003404 <tfp_format+0xec>
800035d4:	07500713          	li	a4,117
800035d8:	22e79663          	bne	a5,a4,80003804 <tfp_format+0x4ec>
                p.base = 10;
800035dc:	00a00793          	li	a5,10
800035e0:	02f12023          	sw	a5,32(sp)
                  if (1 == lng)
800035e4:	000ba403          	lw	s0,0(s7)
800035e8:	02412c83          	lw	s9,36(sp)
800035ec:	004b8b93          	addi	s7,s7,4
    while (num / d >= p->base)
800035f0:	00900793          	li	a5,9
    unsigned long int d = 1;
800035f4:	00100d93          	li	s11,1
                  if (1 == lng)
800035f8:	4c069463          	bnez	a3,80003ac0 <tfp_format+0x7a8>
    while (num / d >= p->base)
800035fc:	0287f463          	bgeu	a5,s0,80003624 <tfp_format+0x30c>
80003600:	00900d13          	li	s10,9
        d *= p->base;
80003604:	002d9713          	slli	a4,s11,0x2
80003608:	01b707b3          	add	a5,a4,s11
8000360c:	00179d93          	slli	s11,a5,0x1
    while (num / d >= p->base)
80003610:	000d8593          	mv	a1,s11
80003614:	00040513          	mv	a0,s0
80003618:	7a5030ef          	jal	ra,800075bc <__udivsi3>
8000361c:	fead64e3          	bltu	s10,a0,80003604 <tfp_format+0x2ec>
    while (d != 0) {
80003620:	560d8263          	beqz	s11,80003b84 <tfp_format+0x86c>
    unsigned int d = 1;
80003624:	00a00d13          	li	s10,10
80003628:	00000613          	li	a2,0
8000362c:	0480006f          	j	80003674 <tfp_format+0x35c>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003630:	00900693          	li	a3,9
80003634:	03000713          	li	a4,48
80003638:	00f6de63          	bge	a3,a5,80003654 <tfp_format+0x33c>
8000363c:	01414703          	lbu	a4,20(sp)
80003640:	00477713          	andi	a4,a4,4
80003644:	00173713          	seqz	a4,a4
80003648:	40e00733          	neg	a4,a4
8000364c:	02077713          	andi	a4,a4,32
80003650:	03770713          	addi	a4,a4,55
80003654:	00f70733          	add	a4,a4,a5
80003658:	00ec8023          	sb	a4,0(s9)
8000365c:	001c8693          	addi	a3,s9,1
            ++n;
80003660:	00160613          	addi	a2,a2,1
    while (d != 0) {
80003664:	f3adece3          	bltu	s11,s10,8000359c <tfp_format+0x284>
80003668:	02012d03          	lw	s10,32(sp)
    unsigned int d = 1;
8000366c:	00068c93          	mv	s9,a3
80003670:	00050d93          	mv	s11,a0
        int dgt = num / d;
80003674:	000d8593          	mv	a1,s11
80003678:	00040513          	mv	a0,s0
8000367c:	00c12623          	sw	a2,12(sp)
80003680:	73d030ef          	jal	ra,800075bc <__udivsi3>
80003684:	00a12423          	sw	a0,8(sp)
        num %= d;
80003688:	000d8593          	mv	a1,s11
8000368c:	00040513          	mv	a0,s0
80003690:	775030ef          	jal	ra,80007604 <__umodsi3>
80003694:	00050413          	mv	s0,a0
        d /= p->base;
80003698:	000d0593          	mv	a1,s10
8000369c:	000d8513          	mv	a0,s11
800036a0:	71d030ef          	jal	ra,800075bc <__udivsi3>
        if (n || dgt > 0 || d == 0) {
800036a4:	00c12603          	lw	a2,12(sp)
800036a8:	00812783          	lw	a5,8(sp)
800036ac:	f80612e3          	bnez	a2,80003630 <tfp_format+0x318>
800036b0:	f8f040e3          	bgtz	a5,80003630 <tfp_format+0x318>
800036b4:	edadeee3          	bltu	s11,s10,80003590 <tfp_format+0x278>
800036b8:	000c8693          	mv	a3,s9
800036bc:	fadff06f          	j	80003668 <tfp_format+0x350>
800036c0:	05800713          	li	a4,88
800036c4:	14e78463          	beq	a5,a4,8000380c <tfp_format+0x4f4>
800036c8:	02f77063          	bgeu	a4,a5,800036e8 <tfp_format+0x3d0>
800036cc:	06300713          	li	a4,99
800036d0:	02e79863          	bne	a5,a4,80003700 <tfp_format+0x3e8>
                putf(putp, (char)(va_arg(va, int)));
800036d4:	000bc583          	lbu	a1,0(s7)
800036d8:	00098513          	mv	a0,s3
800036dc:	004b8b93          	addi	s7,s7,4
800036e0:	000900e7          	jalr	s2
                break;
800036e4:	c95ff06f          	j	80003378 <tfp_format+0x60>
800036e8:	ca078ce3          	beqz	a5,800033a0 <tfp_format+0x88>
800036ec:	c89796e3          	bne	a5,s1,80003378 <tfp_format+0x60>
                putf(putp, ch);
800036f0:	02500593          	li	a1,37
800036f4:	00098513          	mv	a0,s3
800036f8:	000900e7          	jalr	s2
800036fc:	c7dff06f          	j	80003378 <tfp_format+0x60>
80003700:	06400713          	li	a4,100
80003704:	c6e79ae3          	bne	a5,a4,80003378 <tfp_format+0x60>
                p.base = 10;
80003708:	00a00793          	li	a5,10
8000370c:	02f12023          	sw	a5,32(sp)
                  if (1 == lng)
80003710:	004b8793          	addi	a5,s7,4
80003714:	00f12623          	sw	a5,12(sp)
80003718:	5a069263          	bnez	a3,80003cbc <tfp_format+0x9a4>
                    i2a(va_arg(va, int), &p);
8000371c:	000bab83          	lw	s7,0(s7)
    if (num < 0) {
80003720:	000bd863          	bgez	s7,80003730 <tfp_format+0x418>
        p->sign = '-';
80003724:	02d00793          	li	a5,45
        num = -num;
80003728:	41700bb3          	neg	s7,s7
        p->sign = '-';
8000372c:	00f10e23          	sb	a5,28(sp)
    char *bf = p->bf;
80003730:	02412703          	lw	a4,36(sp)
    while (num / d >= p->base)
80003734:	00900793          	li	a5,9
    ui2a(num, p);
80003738:	000b8413          	mv	s0,s7
    char *bf = p->bf;
8000373c:	00e12423          	sw	a4,8(sp)
    unsigned int d = 1;
80003740:	00100c93          	li	s9,1
    while (num / d >= p->base)
80003744:	0377d463          	bge	a5,s7,8000376c <tfp_format+0x454>
80003748:	00900d93          	li	s11,9
        d *= p->base;
8000374c:	002c9713          	slli	a4,s9,0x2
80003750:	019707b3          	add	a5,a4,s9
80003754:	00179c93          	slli	s9,a5,0x1
    while (num / d >= p->base)
80003758:	000c8593          	mv	a1,s9
8000375c:	000b8513          	mv	a0,s7
80003760:	65d030ef          	jal	ra,800075bc <__udivsi3>
80003764:	feade4e3          	bltu	s11,a0,8000374c <tfp_format+0x434>
    while (d != 0) {
80003768:	520c8463          	beqz	s9,80003c90 <tfp_format+0x978>
    unsigned int d = 1;
8000376c:	00a00b93          	li	s7,10
80003770:	00000d93          	li	s11,0
80003774:	04c0006f          	j	800037c0 <tfp_format+0x4a8>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003778:	00900793          	li	a5,9
8000377c:	03000713          	li	a4,48
80003780:	01a7fe63          	bgeu	a5,s10,8000379c <tfp_format+0x484>
80003784:	01414703          	lbu	a4,20(sp)
80003788:	00477713          	andi	a4,a4,4
8000378c:	00173713          	seqz	a4,a4
80003790:	40e00733          	neg	a4,a4
80003794:	02077713          	andi	a4,a4,32
80003798:	03770713          	addi	a4,a4,55
8000379c:	00812783          	lw	a5,8(sp)
800037a0:	01a70733          	add	a4,a4,s10
            ++n;
800037a4:	001d8d93          	addi	s11,s11,1
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
800037a8:	00e78023          	sb	a4,0(a5)
800037ac:	00178693          	addi	a3,a5,1
    while (d != 0) {
800037b0:	4f7ce263          	bltu	s9,s7,80003c94 <tfp_format+0x97c>
800037b4:	02012b83          	lw	s7,32(sp)
    unsigned int d = 1;
800037b8:	00d12423          	sw	a3,8(sp)
800037bc:	00050c93          	mv	s9,a0
        int dgt = num / d;
800037c0:	000c8593          	mv	a1,s9
800037c4:	00040513          	mv	a0,s0
800037c8:	5f5030ef          	jal	ra,800075bc <__udivsi3>
800037cc:	00050d13          	mv	s10,a0
        num %= d;
800037d0:	000c8593          	mv	a1,s9
800037d4:	00040513          	mv	a0,s0
800037d8:	62d030ef          	jal	ra,80007604 <__umodsi3>
800037dc:	00050413          	mv	s0,a0
        d /= p->base;
800037e0:	000b8593          	mv	a1,s7
800037e4:	000c8513          	mv	a0,s9
800037e8:	5d5030ef          	jal	ra,800075bc <__udivsi3>
        if (n || dgt > 0 || d == 0) {
800037ec:	01ade733          	or	a4,s11,s10
800037f0:	f80714e3          	bnez	a4,80003778 <tfp_format+0x460>
800037f4:	4b7ce663          	bltu	s9,s7,80003ca0 <tfp_format+0x988>
800037f8:	00812683          	lw	a3,8(sp)
800037fc:	00000d93          	li	s11,0
80003800:	fb5ff06f          	j	800037b4 <tfp_format+0x49c>
80003804:	07800713          	li	a4,120
80003808:	b6e798e3          	bne	a5,a4,80003378 <tfp_format+0x60>
                p.uc = (ch == 'X')?1:0;
8000380c:	01414703          	lbu	a4,20(sp)
80003810:	fa878793          	addi	a5,a5,-88
80003814:	0017b793          	seqz	a5,a5
80003818:	00279613          	slli	a2,a5,0x2
8000381c:	ffb77793          	andi	a5,a4,-5
80003820:	00c7e7b3          	or	a5,a5,a2
                p.base = 16;
80003824:	01000713          	li	a4,16
80003828:	02e12023          	sw	a4,32(sp)
                p.uc = (ch == 'X')?1:0;
8000382c:	00f10a23          	sb	a5,20(sp)
                  if (1 == lng)
80003830:	000ba403          	lw	s0,0(s7)
80003834:	02412c83          	lw	s9,36(sp)
80003838:	004b8b93          	addi	s7,s7,4
8000383c:	c8068ce3          	beqz	a3,800034d4 <tfp_format+0x1bc>
    while (num / d >= p->base)
80003840:	00f00793          	li	a5,15
    unsigned long int d = 1;
80003844:	00100d93          	li	s11,1
    while (num / d >= p->base)
80003848:	0287f063          	bgeu	a5,s0,80003868 <tfp_format+0x550>
8000384c:	00f00d13          	li	s10,15
        d *= p->base;
80003850:	004d9d93          	slli	s11,s11,0x4
    while (num / d >= p->base)
80003854:	000d8593          	mv	a1,s11
80003858:	00040513          	mv	a0,s0
8000385c:	561030ef          	jal	ra,800075bc <__udivsi3>
80003860:	fead68e3          	bltu	s10,a0,80003850 <tfp_format+0x538>
    while (d != 0) {
80003864:	320d8063          	beqz	s11,80003b84 <tfp_format+0x86c>
    unsigned long int d = 1;
80003868:	01000d13          	li	s10,16
8000386c:	00000613          	li	a2,0
80003870:	0480006f          	j	800038b8 <tfp_format+0x5a0>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003874:	00900693          	li	a3,9
80003878:	03000713          	li	a4,48
8000387c:	00f6de63          	bge	a3,a5,80003898 <tfp_format+0x580>
80003880:	01414703          	lbu	a4,20(sp)
80003884:	00477713          	andi	a4,a4,4
80003888:	00173713          	seqz	a4,a4
8000388c:	40e00733          	neg	a4,a4
80003890:	02077713          	andi	a4,a4,32
80003894:	03770713          	addi	a4,a4,55
80003898:	00f70733          	add	a4,a4,a5
8000389c:	00ec8023          	sb	a4,0(s9)
800038a0:	001c8693          	addi	a3,s9,1
            ++n;
800038a4:	00160613          	addi	a2,a2,1
    while (d != 0) {
800038a8:	cfadeae3          	bltu	s11,s10,8000359c <tfp_format+0x284>
800038ac:	02012d03          	lw	s10,32(sp)
    unsigned long int d = 1;
800038b0:	00068c93          	mv	s9,a3
800038b4:	00050d93          	mv	s11,a0
        int dgt = num / d;
800038b8:	000d8593          	mv	a1,s11
800038bc:	00040513          	mv	a0,s0
800038c0:	00c12623          	sw	a2,12(sp)
800038c4:	4f9030ef          	jal	ra,800075bc <__udivsi3>
800038c8:	00a12423          	sw	a0,8(sp)
        num %= d;
800038cc:	000d8593          	mv	a1,s11
800038d0:	00040513          	mv	a0,s0
800038d4:	531030ef          	jal	ra,80007604 <__umodsi3>
800038d8:	00050413          	mv	s0,a0
        d /= p->base;
800038dc:	000d0593          	mv	a1,s10
800038e0:	000d8513          	mv	a0,s11
800038e4:	4d9030ef          	jal	ra,800075bc <__udivsi3>
        if (n || dgt > 0 || d == 0) {
800038e8:	00c12603          	lw	a2,12(sp)
800038ec:	00812783          	lw	a5,8(sp)
800038f0:	f80612e3          	bnez	a2,80003874 <tfp_format+0x55c>
800038f4:	f8f040e3          	bgtz	a5,80003874 <tfp_format+0x55c>
800038f8:	c9adece3          	bltu	s11,s10,80003590 <tfp_format+0x278>
800038fc:	000c8693          	mv	a3,s9
80003900:	fadff06f          	j	800038ac <tfp_format+0x594>
                ch = *(fmt++);
80003904:	00140c13          	addi	s8,s0,1
80003908:	00044783          	lbu	a5,0(s0)
                    lng = 1;
8000390c:	00100693          	li	a3,1
80003910:	b79ff06f          	j	80003488 <tfp_format+0x170>
    unsigned int num = 0;
80003914:	00000513          	li	a0,0
    if (ch >= '0' && ch <= '9')
80003918:	00900893          	li	a7,9
    else if (ch >= 'a' && ch <= 'f')
8000391c:	00500813          	li	a6,5
        if (digit > base)
80003920:	00a00313          	li	t1,10
    else if (ch >= 'a' && ch <= 'f')
80003924:	f9f78713          	addi	a4,a5,-97
    else if (ch >= 'A' && ch <= 'F')
80003928:	fbf78693          	addi	a3,a5,-65
    if (ch >= '0' && ch <= '9')
8000392c:	0ff67593          	andi	a1,a2,255
    else if (ch >= 'a' && ch <= 'f')
80003930:	0ff77713          	andi	a4,a4,255
    else if (ch >= 'A' && ch <= 'F')
80003934:	0ff6f693          	andi	a3,a3,255
    if (ch >= '0' && ch <= '9')
80003938:	00b8fc63          	bgeu	a7,a1,80003950 <tfp_format+0x638>
        return ch - 'a' + 10;
8000393c:	fa978613          	addi	a2,a5,-87
    else if (ch >= 'a' && ch <= 'f')
80003940:	00e87663          	bgeu	a6,a4,8000394c <tfp_format+0x634>
    else if (ch >= 'A' && ch <= 'F')
80003944:	02d86663          	bltu	a6,a3,80003970 <tfp_format+0x658>
        return ch - 'A' + 10;
80003948:	fc978613          	addi	a2,a5,-55
        if (digit > base)
8000394c:	02661263          	bne	a2,t1,80003970 <tfp_format+0x658>
        ch = *p++;
80003950:	00140413          	addi	s0,s0,1
        num = num * base + digit;
80003954:	00251713          	slli	a4,a0,0x2
        ch = *p++;
80003958:	fff44783          	lbu	a5,-1(s0)
        num = num * base + digit;
8000395c:	00a70733          	add	a4,a4,a0
80003960:	00171713          	slli	a4,a4,0x1
80003964:	00e60533          	add	a0,a2,a4
        ch = *p++;
80003968:	fd078613          	addi	a2,a5,-48
8000396c:	fb9ff06f          	j	80003924 <tfp_format+0x60c>
    *nump = num;
80003970:	00a12c23          	sw	a0,24(sp)
            if (ch == '.') {
80003974:	02e00713          	li	a4,46
80003978:	aee79ce3          	bne	a5,a4,80003470 <tfp_format+0x158>
              p.lz = 1;  /* zero-padding */
8000397c:	01414783          	lbu	a5,20(sp)
              } while ((ch >= '0') && (ch <= '9'));
80003980:	00900693          	li	a3,9
              p.lz = 1;  /* zero-padding */
80003984:	0017e793          	ori	a5,a5,1
80003988:	00f10a23          	sb	a5,20(sp)
                ch = *(fmt++);
8000398c:	00140413          	addi	s0,s0,1
80003990:	fff44783          	lbu	a5,-1(s0)
              } while ((ch >= '0') && (ch <= '9'));
80003994:	fd078713          	addi	a4,a5,-48
80003998:	0ff77713          	andi	a4,a4,255
8000399c:	fee6f8e3          	bgeu	a3,a4,8000398c <tfp_format+0x674>
800039a0:	ad1ff06f          	j	80003470 <tfp_format+0x158>
                ch = *(fmt++);
800039a4:	00044783          	lbu	a5,0(s0)
                if (ch == 'l') {
800039a8:	22e78663          	beq	a5,a4,80003bd4 <tfp_format+0x8bc>
                ch = *(fmt++);
800039ac:	00140c13          	addi	s8,s0,1
                lng = 1;
800039b0:	00100693          	li	a3,1
800039b4:	ad5ff06f          	j	80003488 <tfp_format+0x170>
                ui2a(va_arg(va, unsigned int), &p);
800039b8:	000ba403          	lw	s0,0(s7)
                p.base = 8;
800039bc:	00800793          	li	a5,8
                ui2a(va_arg(va, unsigned int), &p);
800039c0:	004b8713          	addi	a4,s7,4
                p.base = 8;
800039c4:	02f12023          	sw	a5,32(sp)
                ui2a(va_arg(va, unsigned int), &p);
800039c8:	00e12623          	sw	a4,12(sp)
    while (num / d >= p->base)
800039cc:	00700793          	li	a5,7
    char *bf = p->bf;
800039d0:	02412d03          	lw	s10,36(sp)
    unsigned int d = 1;
800039d4:	00100d93          	li	s11,1
    while (num / d >= p->base)
800039d8:	0287f063          	bgeu	a5,s0,800039f8 <tfp_format+0x6e0>
800039dc:	00700c93          	li	s9,7
        d *= p->base;
800039e0:	003d9d93          	slli	s11,s11,0x3
    while (num / d >= p->base)
800039e4:	000d8593          	mv	a1,s11
800039e8:	00040513          	mv	a0,s0
800039ec:	3d1030ef          	jal	ra,800075bc <__udivsi3>
800039f0:	feace8e3          	bltu	s9,a0,800039e0 <tfp_format+0x6c8>
    while (d != 0) {
800039f4:	180d8c63          	beqz	s11,80003b8c <tfp_format+0x874>
    unsigned int d = 1;
800039f8:	00800c93          	li	s9,8
800039fc:	00000793          	li	a5,0
80003a00:	0480006f          	j	80003a48 <tfp_format+0x730>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003a04:	00900693          	li	a3,9
80003a08:	03000713          	li	a4,48
80003a0c:	0176de63          	bge	a3,s7,80003a28 <tfp_format+0x710>
80003a10:	01414683          	lbu	a3,20(sp)
80003a14:	0046f693          	andi	a3,a3,4
80003a18:	0016b693          	seqz	a3,a3
80003a1c:	40d006b3          	neg	a3,a3
80003a20:	0206f713          	andi	a4,a3,32
80003a24:	03770713          	addi	a4,a4,55
80003a28:	01770733          	add	a4,a4,s7
80003a2c:	00ed0023          	sb	a4,0(s10)
80003a30:	001d0693          	addi	a3,s10,1
            ++n;
80003a34:	00178793          	addi	a5,a5,1
    while (d != 0) {
80003a38:	159dec63          	bltu	s11,s9,80003b90 <tfp_format+0x878>
80003a3c:	02012c83          	lw	s9,32(sp)
    unsigned int d = 1;
80003a40:	00068d13          	mv	s10,a3
80003a44:	00050d93          	mv	s11,a0
        int dgt = num / d;
80003a48:	000d8593          	mv	a1,s11
80003a4c:	00040513          	mv	a0,s0
80003a50:	00f12423          	sw	a5,8(sp)
80003a54:	369030ef          	jal	ra,800075bc <__udivsi3>
        num %= d;
80003a58:	000d8593          	mv	a1,s11
        int dgt = num / d;
80003a5c:	00050b93          	mv	s7,a0
        num %= d;
80003a60:	00040513          	mv	a0,s0
80003a64:	3a1030ef          	jal	ra,80007604 <__umodsi3>
80003a68:	00050413          	mv	s0,a0
        d /= p->base;
80003a6c:	000c8593          	mv	a1,s9
80003a70:	000d8513          	mv	a0,s11
80003a74:	349030ef          	jal	ra,800075bc <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80003a78:	00812783          	lw	a5,8(sp)
80003a7c:	f80794e3          	bnez	a5,80003a04 <tfp_format+0x6ec>
80003a80:	f97042e3          	bgtz	s7,80003a04 <tfp_format+0x6ec>
80003a84:	139de463          	bltu	s11,s9,80003bac <tfp_format+0x894>
80003a88:	000d0693          	mv	a3,s10
80003a8c:	fb1ff06f          	j	80003a3c <tfp_format+0x724>
                p.bf = va_arg(va, char *);
80003a90:	000ba783          	lw	a5,0(s7)
                putchw(putp, putf, &p);
80003a94:	01410613          	addi	a2,sp,20
80003a98:	00090593          	mv	a1,s2
80003a9c:	00098513          	mv	a0,s3
                p.bf = va_arg(va, char *);
80003aa0:	02f12223          	sw	a5,36(sp)
                putchw(putp, putf, &p);
80003aa4:	e70ff0ef          	jal	ra,80003114 <_ZL6putchwPvPFvS_cEP5param>
                p.bf = bf;
80003aa8:	02810793          	addi	a5,sp,40
                p.bf = va_arg(va, char *);
80003aac:	004b8b93          	addi	s7,s7,4
                p.bf = bf;
80003ab0:	02f12223          	sw	a5,36(sp)
                break;
80003ab4:	8c5ff06f          	j	80003378 <tfp_format+0x60>
        if (n || dgt > 0 || d == 0) {
80003ab8:	000c8693          	mv	a3,s9
80003abc:	a85ff06f          	j	80003540 <tfp_format+0x228>
    while (num / d >= p->base)
80003ac0:	0287f463          	bgeu	a5,s0,80003ae8 <tfp_format+0x7d0>
80003ac4:	00900d13          	li	s10,9
        d *= p->base;
80003ac8:	002d9713          	slli	a4,s11,0x2
80003acc:	01b707b3          	add	a5,a4,s11
80003ad0:	00179d93          	slli	s11,a5,0x1
    while (num / d >= p->base)
80003ad4:	000d8593          	mv	a1,s11
80003ad8:	00040513          	mv	a0,s0
80003adc:	2e1030ef          	jal	ra,800075bc <__udivsi3>
80003ae0:	fead64e3          	bltu	s10,a0,80003ac8 <tfp_format+0x7b0>
    while (d != 0) {
80003ae4:	0a0d8063          	beqz	s11,80003b84 <tfp_format+0x86c>
    unsigned long int d = 1;
80003ae8:	00a00d13          	li	s10,10
80003aec:	00000613          	li	a2,0
80003af0:	0480006f          	j	80003b38 <tfp_format+0x820>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003af4:	00900693          	li	a3,9
80003af8:	03000713          	li	a4,48
80003afc:	00f6de63          	bge	a3,a5,80003b18 <tfp_format+0x800>
80003b00:	01414703          	lbu	a4,20(sp)
80003b04:	00477713          	andi	a4,a4,4
80003b08:	00173713          	seqz	a4,a4
80003b0c:	40e00733          	neg	a4,a4
80003b10:	02077713          	andi	a4,a4,32
80003b14:	03770713          	addi	a4,a4,55
80003b18:	00f70733          	add	a4,a4,a5
80003b1c:	00ec8023          	sb	a4,0(s9)
80003b20:	001c8693          	addi	a3,s9,1
            ++n;
80003b24:	00160613          	addi	a2,a2,1
    while (d != 0) {
80003b28:	a7adeae3          	bltu	s11,s10,8000359c <tfp_format+0x284>
80003b2c:	02012d03          	lw	s10,32(sp)
    unsigned long int d = 1;
80003b30:	00068c93          	mv	s9,a3
80003b34:	00050d93          	mv	s11,a0
        int dgt = num / d;
80003b38:	000d8593          	mv	a1,s11
80003b3c:	00040513          	mv	a0,s0
80003b40:	00c12623          	sw	a2,12(sp)
80003b44:	279030ef          	jal	ra,800075bc <__udivsi3>
80003b48:	00a12423          	sw	a0,8(sp)
        num %= d;
80003b4c:	000d8593          	mv	a1,s11
80003b50:	00040513          	mv	a0,s0
80003b54:	2b1030ef          	jal	ra,80007604 <__umodsi3>
80003b58:	00050413          	mv	s0,a0
        d /= p->base;
80003b5c:	000d0593          	mv	a1,s10
80003b60:	000d8513          	mv	a0,s11
80003b64:	259030ef          	jal	ra,800075bc <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80003b68:	00c12603          	lw	a2,12(sp)
80003b6c:	00812783          	lw	a5,8(sp)
80003b70:	f80612e3          	bnez	a2,80003af4 <tfp_format+0x7dc>
80003b74:	f8f040e3          	bgtz	a5,80003af4 <tfp_format+0x7dc>
80003b78:	a1adece3          	bltu	s11,s10,80003590 <tfp_format+0x278>
80003b7c:	000c8693          	mv	a3,s9
80003b80:	fadff06f          	j	80003b2c <tfp_format+0x814>
    char *bf = p->bf;
80003b84:	000c8693          	mv	a3,s9
80003b88:	a15ff06f          	j	8000359c <tfp_format+0x284>
80003b8c:	000d0693          	mv	a3,s10
    *bf = 0;
80003b90:	00068023          	sb	zero,0(a3)
                putchw(putp, putf, &p);
80003b94:	01410613          	addi	a2,sp,20
80003b98:	00090593          	mv	a1,s2
80003b9c:	00098513          	mv	a0,s3
80003ba0:	d74ff0ef          	jal	ra,80003114 <_ZL6putchwPvPFvS_cEP5param>
                ui2a(va_arg(va, unsigned int), &p);
80003ba4:	00c12b83          	lw	s7,12(sp)
                break;
80003ba8:	fd0ff06f          	j	80003378 <tfp_format+0x60>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003bac:	030b8713          	addi	a4,s7,48
80003bb0:	001d0693          	addi	a3,s10,1
80003bb4:	00ed0023          	sb	a4,0(s10)
    *bf = 0;
80003bb8:	00068023          	sb	zero,0(a3)
                putchw(putp, putf, &p);
80003bbc:	01410613          	addi	a2,sp,20
80003bc0:	00090593          	mv	a1,s2
80003bc4:	00098513          	mv	a0,s3
80003bc8:	d4cff0ef          	jal	ra,80003114 <_ZL6putchwPvPFvS_cEP5param>
                ui2a(va_arg(va, unsigned int), &p);
80003bcc:	00c12b83          	lw	s7,12(sp)
80003bd0:	fa8ff06f          	j	80003378 <tfp_format+0x60>
                  ch = *(fmt++);
80003bd4:	00144783          	lbu	a5,1(s0)
80003bd8:	06900713          	li	a4,105
80003bdc:	00240c13          	addi	s8,s0,2
            switch (ch) {
80003be0:	02e78263          	beq	a5,a4,80003c04 <tfp_format+0x8ec>
80003be4:	04f76663          	bltu	a4,a5,80003c30 <tfp_format+0x918>
80003be8:	05800713          	li	a4,88
80003bec:	06e78063          	beq	a5,a4,80003c4c <tfp_format+0x934>
80003bf0:	aef77ce3          	bgeu	a4,a5,800036e8 <tfp_format+0x3d0>
80003bf4:	06300713          	li	a4,99
80003bf8:	ace78ee3          	beq	a5,a4,800036d4 <tfp_format+0x3bc>
80003bfc:	06400713          	li	a4,100
80003c00:	f6e79c63          	bne	a5,a4,80003378 <tfp_format+0x60>
                    lli2a(va_arg(va, long long int), &p);
80003c04:	007b8793          	addi	a5,s7,7
80003c08:	ff87f793          	andi	a5,a5,-8
80003c0c:	0047a583          	lw	a1,4(a5)
                p.base = 10;
80003c10:	00a00713          	li	a4,10
80003c14:	02e12023          	sw	a4,32(sp)
                    lli2a(va_arg(va, long long int), &p);
80003c18:	00878b93          	addi	s7,a5,8
80003c1c:	0007a503          	lw	a0,0(a5)
    if (num < 0) {
80003c20:	1805c263          	bltz	a1,80003da4 <tfp_format+0xa8c>
    ulli2a(num, p);
80003c24:	01410613          	addi	a2,sp,20
80003c28:	b50ff0ef          	jal	ra,80002f78 <_ZL6ulli2ayP5param>
80003c2c:	975ff06f          	j	800035a0 <tfp_format+0x288>
80003c30:	07300713          	li	a4,115
80003c34:	e4e78ee3          	beq	a5,a4,80003a90 <tfp_format+0x778>
80003c38:	86f774e3          	bgeu	a4,a5,800034a0 <tfp_format+0x188>
80003c3c:	07500713          	li	a4,117
80003c40:	18e78063          	beq	a5,a4,80003dc0 <tfp_format+0xaa8>
80003c44:	07800713          	li	a4,120
80003c48:	f2e79863          	bne	a5,a4,80003378 <tfp_format+0x60>
                p.uc = (ch == 'X')?1:0;
80003c4c:	01414703          	lbu	a4,20(sp)
                    ulli2a(va_arg(va, unsigned long long int), &p);
80003c50:	007b8b93          	addi	s7,s7,7
80003c54:	ff8bfb93          	andi	s7,s7,-8
                p.uc = (ch == 'X')?1:0;
80003c58:	fa878793          	addi	a5,a5,-88
                    ulli2a(va_arg(va, unsigned long long int), &p);
80003c5c:	000ba503          	lw	a0,0(s7)
80003c60:	004ba583          	lw	a1,4(s7)
                p.uc = (ch == 'X')?1:0;
80003c64:	0017b793          	seqz	a5,a5
80003c68:	ffb77713          	andi	a4,a4,-5
80003c6c:	00279793          	slli	a5,a5,0x2
80003c70:	00f767b3          	or	a5,a4,a5
                    ulli2a(va_arg(va, unsigned long long int), &p);
80003c74:	01410613          	addi	a2,sp,20
                p.base = 16;
80003c78:	01000713          	li	a4,16
80003c7c:	02e12023          	sw	a4,32(sp)
                p.uc = (ch == 'X')?1:0;
80003c80:	00f10a23          	sb	a5,20(sp)
                    ulli2a(va_arg(va, unsigned long long int), &p);
80003c84:	008b8b93          	addi	s7,s7,8
80003c88:	af0ff0ef          	jal	ra,80002f78 <_ZL6ulli2ayP5param>
80003c8c:	915ff06f          	j	800035a0 <tfp_format+0x288>
    char *bf = p->bf;
80003c90:	00812683          	lw	a3,8(sp)
    *bf = 0;
80003c94:	00068023          	sb	zero,0(a3)
80003c98:	00c12b83          	lw	s7,12(sp)
                putchw(putp, putf, &p);
80003c9c:	905ff06f          	j	800035a0 <tfp_format+0x288>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003ca0:	00812783          	lw	a5,8(sp)
80003ca4:	030d0713          	addi	a4,s10,48
80003ca8:	00e78023          	sb	a4,0(a5)
80003cac:	00178693          	addi	a3,a5,1
    *bf = 0;
80003cb0:	00068023          	sb	zero,0(a3)
80003cb4:	00c12b83          	lw	s7,12(sp)
                putchw(putp, putf, &p);
80003cb8:	8e9ff06f          	j	800035a0 <tfp_format+0x288>
                    li2a(va_arg(va, long int), &p);
80003cbc:	000bab83          	lw	s7,0(s7)
    if (num < 0) {
80003cc0:	000bd863          	bgez	s7,80003cd0 <tfp_format+0x9b8>
        p->sign = '-';
80003cc4:	02d00793          	li	a5,45
        num = -num;
80003cc8:	41700bb3          	neg	s7,s7
        p->sign = '-';
80003ccc:	00f10e23          	sb	a5,28(sp)
    char *bf = p->bf;
80003cd0:	02412703          	lw	a4,36(sp)
    while (num / d >= p->base)
80003cd4:	00900793          	li	a5,9
    uli2a(num, p);
80003cd8:	000b8413          	mv	s0,s7
    char *bf = p->bf;
80003cdc:	00e12423          	sw	a4,8(sp)
    unsigned long int d = 1;
80003ce0:	00100c93          	li	s9,1
    while (num / d >= p->base)
80003ce4:	0377d463          	bge	a5,s7,80003d0c <tfp_format+0x9f4>
80003ce8:	00900d93          	li	s11,9
        d *= p->base;
80003cec:	002c9713          	slli	a4,s9,0x2
80003cf0:	019707b3          	add	a5,a4,s9
80003cf4:	00179c93          	slli	s9,a5,0x1
    while (num / d >= p->base)
80003cf8:	000c8593          	mv	a1,s9
80003cfc:	000b8513          	mv	a0,s7
80003d00:	0bd030ef          	jal	ra,800075bc <__udivsi3>
80003d04:	feade4e3          	bltu	s11,a0,80003cec <tfp_format+0x9d4>
    while (d != 0) {
80003d08:	f80c84e3          	beqz	s9,80003c90 <tfp_format+0x978>
    unsigned long int d = 1;
80003d0c:	00a00b93          	li	s7,10
80003d10:	00000d93          	li	s11,0
80003d14:	04c0006f          	j	80003d60 <tfp_format+0xa48>
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003d18:	00900793          	li	a5,9
80003d1c:	03000713          	li	a4,48
80003d20:	01a7fe63          	bgeu	a5,s10,80003d3c <tfp_format+0xa24>
80003d24:	01414703          	lbu	a4,20(sp)
80003d28:	00477713          	andi	a4,a4,4
80003d2c:	00173713          	seqz	a4,a4
80003d30:	40e00733          	neg	a4,a4
80003d34:	02077713          	andi	a4,a4,32
80003d38:	03770713          	addi	a4,a4,55
80003d3c:	00812783          	lw	a5,8(sp)
80003d40:	01a70733          	add	a4,a4,s10
            ++n;
80003d44:	001d8d93          	addi	s11,s11,1
            *bf++ = dgt + (dgt < 10 ? '0' : (p->uc ? 'A' : 'a') - 10);
80003d48:	00e78023          	sb	a4,0(a5)
80003d4c:	00178693          	addi	a3,a5,1
    while (d != 0) {
80003d50:	f57ce2e3          	bltu	s9,s7,80003c94 <tfp_format+0x97c>
80003d54:	02012b83          	lw	s7,32(sp)
    unsigned long int d = 1;
80003d58:	00d12423          	sw	a3,8(sp)
80003d5c:	00050c93          	mv	s9,a0
        int dgt = num / d;
80003d60:	000c8593          	mv	a1,s9
80003d64:	00040513          	mv	a0,s0
80003d68:	055030ef          	jal	ra,800075bc <__udivsi3>
80003d6c:	00050d13          	mv	s10,a0
        num %= d;
80003d70:	000c8593          	mv	a1,s9
80003d74:	00040513          	mv	a0,s0
80003d78:	08d030ef          	jal	ra,80007604 <__umodsi3>
80003d7c:	00050413          	mv	s0,a0
        d /= p->base;
80003d80:	000b8593          	mv	a1,s7
80003d84:	000c8513          	mv	a0,s9
80003d88:	035030ef          	jal	ra,800075bc <__udivsi3>
        if (n || dgt > 0 || d == 0) {
80003d8c:	01ade733          	or	a4,s11,s10
80003d90:	f80714e3          	bnez	a4,80003d18 <tfp_format+0xa00>
80003d94:	f17ce6e3          	bltu	s9,s7,80003ca0 <tfp_format+0x988>
80003d98:	00812683          	lw	a3,8(sp)
80003d9c:	00000d93          	li	s11,0
80003da0:	fb5ff06f          	j	80003d54 <tfp_format+0xa3c>
        num = -num;
80003da4:	40a00533          	neg	a0,a0
80003da8:	00a037b3          	snez	a5,a0
80003dac:	40b005b3          	neg	a1,a1
80003db0:	40f585b3          	sub	a1,a1,a5
        p->sign = '-';
80003db4:	02d00793          	li	a5,45
80003db8:	00f10e23          	sb	a5,28(sp)
80003dbc:	e69ff06f          	j	80003c24 <tfp_format+0x90c>
                    ulli2a(va_arg(va, unsigned long long int), &p);
80003dc0:	007b8b93          	addi	s7,s7,7
80003dc4:	ff8bfb93          	andi	s7,s7,-8
80003dc8:	000ba503          	lw	a0,0(s7)
80003dcc:	004ba583          	lw	a1,4(s7)
                p.base = 10;
80003dd0:	00a00793          	li	a5,10
                    ulli2a(va_arg(va, unsigned long long int), &p);
80003dd4:	01410613          	addi	a2,sp,20
                p.base = 10;
80003dd8:	02f12023          	sw	a5,32(sp)
                    ulli2a(va_arg(va, unsigned long long int), &p);
80003ddc:	008b8b93          	addi	s7,s7,8
80003de0:	998ff0ef          	jal	ra,80002f78 <_ZL6ulli2ayP5param>
80003de4:	fbcff06f          	j	800035a0 <tfp_format+0x288>

80003de8 <init_printf>:
static putcf stdout_putf;
static void *stdout_putp;

void init_printf(void *putp, putcf putf)
{
    stdout_putf = putf;
80003de8:	00005797          	auipc	a5,0x5
80003dec:	4eb7aa23          	sw	a1,1268(a5) # 800092dc <_ZL11stdout_putf>
    stdout_putp = putp;
80003df0:	00005797          	auipc	a5,0x5
80003df4:	4ea7a423          	sw	a0,1256(a5) # 800092d8 <_ZL11stdout_putp>
}
80003df8:	00008067          	ret

80003dfc <tfp_printf>:

void tfp_printf(char *fmt, ...)
{
80003dfc:	fc010113          	addi	sp,sp,-64
80003e00:	02c12423          	sw	a2,40(sp)
80003e04:	02b12223          	sw	a1,36(sp)
    va_list va;
    va_start(va, fmt);
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80003e08:	00005617          	auipc	a2,0x5
80003e0c:	4d460613          	addi	a2,a2,1236 # 800092dc <_ZL11stdout_putf>
80003e10:	00062583          	lw	a1,0(a2)
80003e14:	00050613          	mv	a2,a0
80003e18:	00005517          	auipc	a0,0x5
80003e1c:	4c050513          	addi	a0,a0,1216 # 800092d8 <_ZL11stdout_putp>
80003e20:	00052503          	lw	a0,0(a0)
    va_start(va, fmt);
80003e24:	02410313          	addi	t1,sp,36
{
80003e28:	02d12623          	sw	a3,44(sp)
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80003e2c:	00030693          	mv	a3,t1
{
80003e30:	00112e23          	sw	ra,28(sp)
80003e34:	02e12823          	sw	a4,48(sp)
80003e38:	02f12a23          	sw	a5,52(sp)
80003e3c:	03012c23          	sw	a6,56(sp)
80003e40:	03112e23          	sw	a7,60(sp)
    va_start(va, fmt);
80003e44:	00612623          	sw	t1,12(sp)
    tfp_format(stdout_putp, stdout_putf, fmt, va);
80003e48:	cd0ff0ef          	jal	ra,80003318 <tfp_format>
    va_end(va);
}
80003e4c:	01c12083          	lw	ra,28(sp)
80003e50:	04010113          	addi	sp,sp,64
80003e54:	00008067          	ret

80003e58 <cosf>:
80003e58:	fe010113          	addi	sp,sp,-32
80003e5c:	00812c23          	sw	s0,24(sp)
80003e60:	80000437          	lui	s0,0x80000
80003e64:	fff44793          	not	a5,s0
80003e68:	3f491737          	lui	a4,0x3f491
80003e6c:	00112e23          	sw	ra,28(sp)
80003e70:	00a7f7b3          	and	a5,a5,a0
80003e74:	fd870713          	addi	a4,a4,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
80003e78:	00000593          	li	a1,0
80003e7c:	04f75663          	bge	a4,a5,80003ec8 <cosf+0x70>
80003e80:	7f800737          	lui	a4,0x7f800
80003e84:	00e7ce63          	blt	a5,a4,80003ea0 <cosf+0x48>
80003e88:	00050593          	mv	a1,a0
80003e8c:	0b0030ef          	jal	ra,80006f3c <__subsf3>
80003e90:	01c12083          	lw	ra,28(sp)
80003e94:	01812403          	lw	s0,24(sp)
80003e98:	02010113          	addi	sp,sp,32
80003e9c:	00008067          	ret
80003ea0:	00810593          	addi	a1,sp,8
80003ea4:	0f4000ef          	jal	ra,80003f98 <__ieee754_rem_pio2f>
80003ea8:	00357793          	andi	a5,a0,3
80003eac:	00100713          	li	a4,1
80003eb0:	00c12583          	lw	a1,12(sp)
80003eb4:	00812503          	lw	a0,8(sp)
80003eb8:	00e78c63          	beq	a5,a4,80003ed0 <cosf+0x78>
80003ebc:	00200713          	li	a4,2
80003ec0:	02e78063          	beq	a5,a4,80003ee0 <cosf+0x88>
80003ec4:	02079263          	bnez	a5,80003ee8 <cosf+0x90>
80003ec8:	534000ef          	jal	ra,800043fc <__kernel_cosf>
80003ecc:	fc5ff06f          	j	80003e90 <cosf+0x38>
80003ed0:	00100613          	li	a2,1
80003ed4:	795000ef          	jal	ra,80004e68 <__kernel_sinf>
80003ed8:	00a44533          	xor	a0,s0,a0
80003edc:	fb5ff06f          	j	80003e90 <cosf+0x38>
80003ee0:	51c000ef          	jal	ra,800043fc <__kernel_cosf>
80003ee4:	ff5ff06f          	j	80003ed8 <cosf+0x80>
80003ee8:	00100613          	li	a2,1
80003eec:	77d000ef          	jal	ra,80004e68 <__kernel_sinf>
80003ef0:	fa1ff06f          	j	80003e90 <cosf+0x38>

80003ef4 <sinf>:
80003ef4:	fe010113          	addi	sp,sp,-32
80003ef8:	00812c23          	sw	s0,24(sp)
80003efc:	80000437          	lui	s0,0x80000
80003f00:	fff44793          	not	a5,s0
80003f04:	3f491737          	lui	a4,0x3f491
80003f08:	00112e23          	sw	ra,28(sp)
80003f0c:	00a7f7b3          	and	a5,a5,a0
80003f10:	fd870713          	addi	a4,a4,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
80003f14:	00f74a63          	blt	a4,a5,80003f28 <sinf+0x34>
80003f18:	00000613          	li	a2,0
80003f1c:	00000593          	li	a1,0
80003f20:	749000ef          	jal	ra,80004e68 <__kernel_sinf>
80003f24:	0140006f          	j	80003f38 <sinf+0x44>
80003f28:	7f800737          	lui	a4,0x7f800
80003f2c:	00e7ce63          	blt	a5,a4,80003f48 <sinf+0x54>
80003f30:	00050593          	mv	a1,a0
80003f34:	008030ef          	jal	ra,80006f3c <__subsf3>
80003f38:	01c12083          	lw	ra,28(sp)
80003f3c:	01812403          	lw	s0,24(sp)
80003f40:	02010113          	addi	sp,sp,32
80003f44:	00008067          	ret
80003f48:	00810593          	addi	a1,sp,8
80003f4c:	04c000ef          	jal	ra,80003f98 <__ieee754_rem_pio2f>
80003f50:	00357793          	andi	a5,a0,3
80003f54:	00100713          	li	a4,1
80003f58:	00c12583          	lw	a1,12(sp)
80003f5c:	00812503          	lw	a0,8(sp)
80003f60:	00e78c63          	beq	a5,a4,80003f78 <sinf+0x84>
80003f64:	00200713          	li	a4,2
80003f68:	00e78c63          	beq	a5,a4,80003f80 <sinf+0x8c>
80003f6c:	02079263          	bnez	a5,80003f90 <sinf+0x9c>
80003f70:	00100613          	li	a2,1
80003f74:	fadff06f          	j	80003f20 <sinf+0x2c>
80003f78:	484000ef          	jal	ra,800043fc <__kernel_cosf>
80003f7c:	fbdff06f          	j	80003f38 <sinf+0x44>
80003f80:	00100613          	li	a2,1
80003f84:	6e5000ef          	jal	ra,80004e68 <__kernel_sinf>
80003f88:	00a44533          	xor	a0,s0,a0
80003f8c:	fadff06f          	j	80003f38 <sinf+0x44>
80003f90:	46c000ef          	jal	ra,800043fc <__kernel_cosf>
80003f94:	ff5ff06f          	j	80003f88 <sinf+0x94>

80003f98 <__ieee754_rem_pio2f>:
80003f98:	fc010113          	addi	sp,sp,-64
80003f9c:	02912a23          	sw	s1,52(sp)
80003fa0:	3f491737          	lui	a4,0x3f491
80003fa4:	00151493          	slli	s1,a0,0x1
80003fa8:	02112e23          	sw	ra,60(sp)
80003fac:	02812c23          	sw	s0,56(sp)
80003fb0:	03212823          	sw	s2,48(sp)
80003fb4:	03312623          	sw	s3,44(sp)
80003fb8:	03412423          	sw	s4,40(sp)
80003fbc:	03512223          	sw	s5,36(sp)
80003fc0:	03612023          	sw	s6,32(sp)
80003fc4:	01712e23          	sw	s7,28(sp)
80003fc8:	0014d493          	srli	s1,s1,0x1
80003fcc:	fd870713          	addi	a4,a4,-40 # 3f490fd8 <_stack_size+0x3f488fd8>
80003fd0:	00974c63          	blt	a4,s1,80003fe8 <__ieee754_rem_pio2f+0x50>
80003fd4:	00000793          	li	a5,0
80003fd8:	00a5a023          	sw	a0,0(a1)
80003fdc:	00f5a223          	sw	a5,4(a1)
80003fe0:	00000913          	li	s2,0
80003fe4:	0740006f          	j	80004058 <__ieee754_rem_pio2f+0xc0>
80003fe8:	4016d7b7          	lui	a5,0x4016d
80003fec:	be378793          	addi	a5,a5,-1053 # 4016cbe3 <_stack_size+0x40164be3>
80003ff0:	00058413          	mv	s0,a1
80003ff4:	00050993          	mv	s3,a0
80003ff8:	00050593          	mv	a1,a0
80003ffc:	1097ca63          	blt	a5,s1,80004110 <__ieee754_rem_pio2f+0x178>
80004000:	00005797          	auipc	a5,0x5
80004004:	e5478793          	addi	a5,a5,-428 # 80008e54 <_etext+0x1258>
80004008:	ff04f493          	andi	s1,s1,-16
8000400c:	0007a583          	lw	a1,0(a5)
80004010:	08a05c63          	blez	a0,800040a8 <__ieee754_rem_pio2f+0x110>
80004014:	729020ef          	jal	ra,80006f3c <__subsf3>
80004018:	3fc917b7          	lui	a5,0x3fc91
8000401c:	fd078793          	addi	a5,a5,-48 # 3fc90fd0 <_stack_size+0x3fc88fd0>
80004020:	00050913          	mv	s2,a0
80004024:	06f48263          	beq	s1,a5,80004088 <__ieee754_rem_pio2f+0xf0>
80004028:	00005497          	auipc	s1,0x5
8000402c:	e3048493          	addi	s1,s1,-464 # 80008e58 <_etext+0x125c>
80004030:	0004a583          	lw	a1,0(s1)
80004034:	709020ef          	jal	ra,80006f3c <__subsf3>
80004038:	00050593          	mv	a1,a0
8000403c:	00a42023          	sw	a0,0(s0) # 80000000 <_stack_top+0xffc00000>
80004040:	00090513          	mv	a0,s2
80004044:	6f9020ef          	jal	ra,80006f3c <__subsf3>
80004048:	0004a583          	lw	a1,0(s1)
8000404c:	00100913          	li	s2,1
80004050:	6ed020ef          	jal	ra,80006f3c <__subsf3>
80004054:	00a42223          	sw	a0,4(s0)
80004058:	03c12083          	lw	ra,60(sp)
8000405c:	03812403          	lw	s0,56(sp)
80004060:	00090513          	mv	a0,s2
80004064:	03412483          	lw	s1,52(sp)
80004068:	03012903          	lw	s2,48(sp)
8000406c:	02c12983          	lw	s3,44(sp)
80004070:	02812a03          	lw	s4,40(sp)
80004074:	02412a83          	lw	s5,36(sp)
80004078:	02012b03          	lw	s6,32(sp)
8000407c:	01c12b83          	lw	s7,28(sp)
80004080:	04010113          	addi	sp,sp,64
80004084:	00008067          	ret
80004088:	00005797          	auipc	a5,0x5
8000408c:	dd478793          	addi	a5,a5,-556 # 80008e5c <_etext+0x1260>
80004090:	0007a583          	lw	a1,0(a5)
80004094:	00005497          	auipc	s1,0x5
80004098:	dcc48493          	addi	s1,s1,-564 # 80008e60 <_etext+0x1264>
8000409c:	6a1020ef          	jal	ra,80006f3c <__subsf3>
800040a0:	00050913          	mv	s2,a0
800040a4:	f8dff06f          	j	80004030 <__ieee754_rem_pio2f+0x98>
800040a8:	294020ef          	jal	ra,8000633c <__addsf3>
800040ac:	3fc917b7          	lui	a5,0x3fc91
800040b0:	fd078793          	addi	a5,a5,-48 # 3fc90fd0 <_stack_size+0x3fc88fd0>
800040b4:	00050913          	mv	s2,a0
800040b8:	02f48c63          	beq	s1,a5,800040f0 <__ieee754_rem_pio2f+0x158>
800040bc:	00005497          	auipc	s1,0x5
800040c0:	d9c48493          	addi	s1,s1,-612 # 80008e58 <_etext+0x125c>
800040c4:	0004a583          	lw	a1,0(s1)
800040c8:	274020ef          	jal	ra,8000633c <__addsf3>
800040cc:	00050593          	mv	a1,a0
800040d0:	00a42023          	sw	a0,0(s0)
800040d4:	00090513          	mv	a0,s2
800040d8:	665020ef          	jal	ra,80006f3c <__subsf3>
800040dc:	0004a583          	lw	a1,0(s1)
800040e0:	fff00913          	li	s2,-1
800040e4:	258020ef          	jal	ra,8000633c <__addsf3>
800040e8:	00a42223          	sw	a0,4(s0)
800040ec:	f6dff06f          	j	80004058 <__ieee754_rem_pio2f+0xc0>
800040f0:	00005797          	auipc	a5,0x5
800040f4:	d6c78793          	addi	a5,a5,-660 # 80008e5c <_etext+0x1260>
800040f8:	0007a583          	lw	a1,0(a5)
800040fc:	00005497          	auipc	s1,0x5
80004100:	d6448493          	addi	s1,s1,-668 # 80008e60 <_etext+0x1264>
80004104:	238020ef          	jal	ra,8000633c <__addsf3>
80004108:	00050913          	mv	s2,a0
8000410c:	fb9ff06f          	j	800040c4 <__ieee754_rem_pio2f+0x12c>
80004110:	434917b7          	lui	a5,0x43491
80004114:	f8078793          	addi	a5,a5,-128 # 43490f80 <_stack_size+0x43488f80>
80004118:	2097c063          	blt	a5,s1,80004318 <__ieee754_rem_pio2f+0x380>
8000411c:	6f5000ef          	jal	ra,80005010 <fabsf>
80004120:	00005797          	auipc	a5,0x5
80004124:	d4478793          	addi	a5,a5,-700 # 80008e64 <_etext+0x1268>
80004128:	0007a583          	lw	a1,0(a5)
8000412c:	00050a13          	mv	s4,a0
80004130:	2e9020ef          	jal	ra,80006c18 <__mulsf3>
80004134:	00005797          	auipc	a5,0x5
80004138:	d1c78793          	addi	a5,a5,-740 # 80008e50 <_etext+0x1254>
8000413c:	0007a583          	lw	a1,0(a5)
80004140:	1fc020ef          	jal	ra,8000633c <__addsf3>
80004144:	244030ef          	jal	ra,80007388 <__fixsfsi>
80004148:	00050913          	mv	s2,a0
8000414c:	2ac030ef          	jal	ra,800073f8 <__floatsisf>
80004150:	00005797          	auipc	a5,0x5
80004154:	d0478793          	addi	a5,a5,-764 # 80008e54 <_etext+0x1258>
80004158:	0007a583          	lw	a1,0(a5)
8000415c:	00050b13          	mv	s6,a0
80004160:	2b9020ef          	jal	ra,80006c18 <__mulsf3>
80004164:	00050593          	mv	a1,a0
80004168:	000a0513          	mv	a0,s4
8000416c:	5d1020ef          	jal	ra,80006f3c <__subsf3>
80004170:	00005797          	auipc	a5,0x5
80004174:	ce878793          	addi	a5,a5,-792 # 80008e58 <_etext+0x125c>
80004178:	0007a583          	lw	a1,0(a5)
8000417c:	00050a13          	mv	s4,a0
80004180:	000b0513          	mv	a0,s6
80004184:	295020ef          	jal	ra,80006c18 <__mulsf3>
80004188:	01f00793          	li	a5,31
8000418c:	00050a93          	mv	s5,a0
80004190:	00050593          	mv	a1,a0
80004194:	000a0513          	mv	a0,s4
80004198:	0327c663          	blt	a5,s2,800041c4 <__ieee754_rem_pio2f+0x22c>
8000419c:	fff90713          	addi	a4,s2,-1
800041a0:	00271693          	slli	a3,a4,0x2
800041a4:	00003717          	auipc	a4,0x3
800041a8:	51070713          	addi	a4,a4,1296 # 800076b4 <npio2_hw>
800041ac:	00d70733          	add	a4,a4,a3
800041b0:	00072703          	lw	a4,0(a4)
800041b4:	f004f793          	andi	a5,s1,-256
800041b8:	00e78663          	beq	a5,a4,800041c4 <__ieee754_rem_pio2f+0x22c>
800041bc:	581020ef          	jal	ra,80006f3c <__subsf3>
800041c0:	0200006f          	j	800041e0 <__ieee754_rem_pio2f+0x248>
800041c4:	579020ef          	jal	ra,80006f3c <__subsf3>
800041c8:	01755793          	srli	a5,a0,0x17
800041cc:	4174d493          	srai	s1,s1,0x17
800041d0:	0ff7f793          	andi	a5,a5,255
800041d4:	40f487b3          	sub	a5,s1,a5
800041d8:	00800713          	li	a4,8
800041dc:	00f74663          	blt	a4,a5,800041e8 <__ieee754_rem_pio2f+0x250>
800041e0:	00a42023          	sw	a0,0(s0)
800041e4:	08c0006f          	j	80004270 <__ieee754_rem_pio2f+0x2d8>
800041e8:	00005797          	auipc	a5,0x5
800041ec:	c7478793          	addi	a5,a5,-908 # 80008e5c <_etext+0x1260>
800041f0:	0007a583          	lw	a1,0(a5)
800041f4:	000b0513          	mv	a0,s6
800041f8:	221020ef          	jal	ra,80006c18 <__mulsf3>
800041fc:	00050a93          	mv	s5,a0
80004200:	00050593          	mv	a1,a0
80004204:	000a0513          	mv	a0,s4
80004208:	535020ef          	jal	ra,80006f3c <__subsf3>
8000420c:	00050593          	mv	a1,a0
80004210:	00050b93          	mv	s7,a0
80004214:	000a0513          	mv	a0,s4
80004218:	525020ef          	jal	ra,80006f3c <__subsf3>
8000421c:	000a8593          	mv	a1,s5
80004220:	51d020ef          	jal	ra,80006f3c <__subsf3>
80004224:	00005797          	auipc	a5,0x5
80004228:	c3c78793          	addi	a5,a5,-964 # 80008e60 <_etext+0x1264>
8000422c:	0007a583          	lw	a1,0(a5)
80004230:	00050a13          	mv	s4,a0
80004234:	000b0513          	mv	a0,s6
80004238:	1e1020ef          	jal	ra,80006c18 <__mulsf3>
8000423c:	000a0593          	mv	a1,s4
80004240:	4fd020ef          	jal	ra,80006f3c <__subsf3>
80004244:	00050593          	mv	a1,a0
80004248:	00050a93          	mv	s5,a0
8000424c:	000b8513          	mv	a0,s7
80004250:	4ed020ef          	jal	ra,80006f3c <__subsf3>
80004254:	01755793          	srli	a5,a0,0x17
80004258:	0ff7f793          	andi	a5,a5,255
8000425c:	40f484b3          	sub	s1,s1,a5
80004260:	01900793          	li	a5,25
80004264:	0497c463          	blt	a5,s1,800042ac <__ieee754_rem_pio2f+0x314>
80004268:	00a42023          	sw	a0,0(s0)
8000426c:	000b8a13          	mv	s4,s7
80004270:	00042483          	lw	s1,0(s0)
80004274:	000a0513          	mv	a0,s4
80004278:	00048593          	mv	a1,s1
8000427c:	4c1020ef          	jal	ra,80006f3c <__subsf3>
80004280:	000a8593          	mv	a1,s5
80004284:	4b9020ef          	jal	ra,80006f3c <__subsf3>
80004288:	00a42223          	sw	a0,4(s0)
8000428c:	dc09d6e3          	bgez	s3,80004058 <__ieee754_rem_pio2f+0xc0>
80004290:	800007b7          	lui	a5,0x80000
80004294:	0097c4b3          	xor	s1,a5,s1
80004298:	00942023          	sw	s1,0(s0)
8000429c:	00a7c7b3          	xor	a5,a5,a0
800042a0:	00f42223          	sw	a5,4(s0)
800042a4:	41200933          	neg	s2,s2
800042a8:	db1ff06f          	j	80004058 <__ieee754_rem_pio2f+0xc0>
800042ac:	00005797          	auipc	a5,0x5
800042b0:	bbc78793          	addi	a5,a5,-1092 # 80008e68 <_etext+0x126c>
800042b4:	0007a583          	lw	a1,0(a5)
800042b8:	000b0513          	mv	a0,s6
800042bc:	15d020ef          	jal	ra,80006c18 <__mulsf3>
800042c0:	00050493          	mv	s1,a0
800042c4:	00050593          	mv	a1,a0
800042c8:	000b8513          	mv	a0,s7
800042cc:	471020ef          	jal	ra,80006f3c <__subsf3>
800042d0:	00050593          	mv	a1,a0
800042d4:	00050a13          	mv	s4,a0
800042d8:	000b8513          	mv	a0,s7
800042dc:	461020ef          	jal	ra,80006f3c <__subsf3>
800042e0:	00048593          	mv	a1,s1
800042e4:	459020ef          	jal	ra,80006f3c <__subsf3>
800042e8:	00005797          	auipc	a5,0x5
800042ec:	b8478793          	addi	a5,a5,-1148 # 80008e6c <_etext+0x1270>
800042f0:	0007a583          	lw	a1,0(a5)
800042f4:	00050493          	mv	s1,a0
800042f8:	000b0513          	mv	a0,s6
800042fc:	11d020ef          	jal	ra,80006c18 <__mulsf3>
80004300:	00048593          	mv	a1,s1
80004304:	439020ef          	jal	ra,80006f3c <__subsf3>
80004308:	00050a93          	mv	s5,a0
8000430c:	00050593          	mv	a1,a0
80004310:	000a0513          	mv	a0,s4
80004314:	ea9ff06f          	j	800041bc <__ieee754_rem_pio2f+0x224>
80004318:	7f8007b7          	lui	a5,0x7f800
8000431c:	00f4ca63          	blt	s1,a5,80004330 <__ieee754_rem_pio2f+0x398>
80004320:	41d020ef          	jal	ra,80006f3c <__subsf3>
80004324:	00a42223          	sw	a0,4(s0)
80004328:	00a42023          	sw	a0,0(s0)
8000432c:	cb5ff06f          	j	80003fe0 <__ieee754_rem_pio2f+0x48>
80004330:	4174d913          	srai	s2,s1,0x17
80004334:	f7a90913          	addi	s2,s2,-134
80004338:	01791793          	slli	a5,s2,0x17
8000433c:	40f484b3          	sub	s1,s1,a5
80004340:	00048513          	mv	a0,s1
80004344:	044030ef          	jal	ra,80007388 <__fixsfsi>
80004348:	0b0030ef          	jal	ra,800073f8 <__floatsisf>
8000434c:	00050593          	mv	a1,a0
80004350:	00a12223          	sw	a0,4(sp)
80004354:	00048513          	mv	a0,s1
80004358:	3e5020ef          	jal	ra,80006f3c <__subsf3>
8000435c:	00005a17          	auipc	s4,0x5
80004360:	b14a0a13          	addi	s4,s4,-1260 # 80008e70 <_etext+0x1274>
80004364:	000a2583          	lw	a1,0(s4)
80004368:	0b1020ef          	jal	ra,80006c18 <__mulsf3>
8000436c:	00050a93          	mv	s5,a0
80004370:	018030ef          	jal	ra,80007388 <__fixsfsi>
80004374:	084030ef          	jal	ra,800073f8 <__floatsisf>
80004378:	00050593          	mv	a1,a0
8000437c:	00a12423          	sw	a0,8(sp)
80004380:	00050493          	mv	s1,a0
80004384:	000a8513          	mv	a0,s5
80004388:	3b5020ef          	jal	ra,80006f3c <__subsf3>
8000438c:	000a2583          	lw	a1,0(s4)
80004390:	089020ef          	jal	ra,80006c18 <__mulsf3>
80004394:	00000593          	li	a1,0
80004398:	00a12623          	sw	a0,12(sp)
8000439c:	754020ef          	jal	ra,80006af0 <__eqsf2>
800043a0:	00300693          	li	a3,3
800043a4:	00051c63          	bnez	a0,800043bc <__ieee754_rem_pio2f+0x424>
800043a8:	00000593          	li	a1,0
800043ac:	00048513          	mv	a0,s1
800043b0:	740020ef          	jal	ra,80006af0 <__eqsf2>
800043b4:	00a036b3          	snez	a3,a0
800043b8:	00168693          	addi	a3,a3,1
800043bc:	00090613          	mv	a2,s2
800043c0:	00003797          	auipc	a5,0x3
800043c4:	37478793          	addi	a5,a5,884 # 80007734 <two_over_pi>
800043c8:	00200713          	li	a4,2
800043cc:	00040593          	mv	a1,s0
800043d0:	00410513          	addi	a0,sp,4
800043d4:	1e8000ef          	jal	ra,800045bc <__kernel_rem_pio2f>
800043d8:	00050913          	mv	s2,a0
800043dc:	c609dee3          	bgez	s3,80004058 <__ieee754_rem_pio2f+0xc0>
800043e0:	00042703          	lw	a4,0(s0)
800043e4:	00442783          	lw	a5,4(s0)
800043e8:	800006b7          	lui	a3,0x80000
800043ec:	00d74733          	xor	a4,a4,a3
800043f0:	00e42023          	sw	a4,0(s0)
800043f4:	00d7c7b3          	xor	a5,a5,a3
800043f8:	ea9ff06f          	j	800042a0 <__ieee754_rem_pio2f+0x308>

800043fc <__kernel_cosf>:
800043fc:	fe010113          	addi	sp,sp,-32
80004400:	00812c23          	sw	s0,24(sp)
80004404:	00151413          	slli	s0,a0,0x1
80004408:	01212823          	sw	s2,16(sp)
8000440c:	01312623          	sw	s3,12(sp)
80004410:	01512223          	sw	s5,4(sp)
80004414:	00112e23          	sw	ra,28(sp)
80004418:	00912a23          	sw	s1,20(sp)
8000441c:	01412423          	sw	s4,8(sp)
80004420:	00145413          	srli	s0,s0,0x1
80004424:	320007b7          	lui	a5,0x32000
80004428:	00050913          	mv	s2,a0
8000442c:	00058a93          	mv	s5,a1
80004430:	00005997          	auipc	s3,0x5
80004434:	a4898993          	addi	s3,s3,-1464 # 80008e78 <_etext+0x127c>
80004438:	00f45663          	bge	s0,a5,80004444 <__kernel_cosf+0x48>
8000443c:	74d020ef          	jal	ra,80007388 <__fixsfsi>
80004440:	16050a63          	beqz	a0,800045b4 <__kernel_cosf+0x1b8>
80004444:	00090593          	mv	a1,s2
80004448:	00090513          	mv	a0,s2
8000444c:	7cc020ef          	jal	ra,80006c18 <__mulsf3>
80004450:	00005797          	auipc	a5,0x5
80004454:	a0078793          	addi	a5,a5,-1536 # 80008e50 <_etext+0x1254>
80004458:	0007a583          	lw	a1,0(a5)
8000445c:	00050493          	mv	s1,a0
80004460:	7b8020ef          	jal	ra,80006c18 <__mulsf3>
80004464:	00005797          	auipc	a5,0x5
80004468:	a1878793          	addi	a5,a5,-1512 # 80008e7c <_etext+0x1280>
8000446c:	0007a583          	lw	a1,0(a5)
80004470:	00050a13          	mv	s4,a0
80004474:	00048513          	mv	a0,s1
80004478:	7a0020ef          	jal	ra,80006c18 <__mulsf3>
8000447c:	00005797          	auipc	a5,0x5
80004480:	a0478793          	addi	a5,a5,-1532 # 80008e80 <_etext+0x1284>
80004484:	0007a583          	lw	a1,0(a5)
80004488:	6b5010ef          	jal	ra,8000633c <__addsf3>
8000448c:	00048593          	mv	a1,s1
80004490:	788020ef          	jal	ra,80006c18 <__mulsf3>
80004494:	00005797          	auipc	a5,0x5
80004498:	9f078793          	addi	a5,a5,-1552 # 80008e84 <_etext+0x1288>
8000449c:	0007a583          	lw	a1,0(a5)
800044a0:	29d020ef          	jal	ra,80006f3c <__subsf3>
800044a4:	00048593          	mv	a1,s1
800044a8:	770020ef          	jal	ra,80006c18 <__mulsf3>
800044ac:	00005797          	auipc	a5,0x5
800044b0:	9dc78793          	addi	a5,a5,-1572 # 80008e88 <_etext+0x128c>
800044b4:	0007a583          	lw	a1,0(a5)
800044b8:	685010ef          	jal	ra,8000633c <__addsf3>
800044bc:	00048593          	mv	a1,s1
800044c0:	758020ef          	jal	ra,80006c18 <__mulsf3>
800044c4:	00005797          	auipc	a5,0x5
800044c8:	9c878793          	addi	a5,a5,-1592 # 80008e8c <_etext+0x1290>
800044cc:	0007a583          	lw	a1,0(a5)
800044d0:	26d020ef          	jal	ra,80006f3c <__subsf3>
800044d4:	00048593          	mv	a1,s1
800044d8:	740020ef          	jal	ra,80006c18 <__mulsf3>
800044dc:	00005797          	auipc	a5,0x5
800044e0:	9b478793          	addi	a5,a5,-1612 # 80008e90 <_etext+0x1294>
800044e4:	0007a583          	lw	a1,0(a5)
800044e8:	655010ef          	jal	ra,8000633c <__addsf3>
800044ec:	00048593          	mv	a1,s1
800044f0:	728020ef          	jal	ra,80006c18 <__mulsf3>
800044f4:	00048593          	mv	a1,s1
800044f8:	720020ef          	jal	ra,80006c18 <__mulsf3>
800044fc:	00050493          	mv	s1,a0
80004500:	000a8593          	mv	a1,s5
80004504:	00090513          	mv	a0,s2
80004508:	710020ef          	jal	ra,80006c18 <__mulsf3>
8000450c:	00050593          	mv	a1,a0
80004510:	00048513          	mv	a0,s1
80004514:	229020ef          	jal	ra,80006f3c <__subsf3>
80004518:	3e99a7b7          	lui	a5,0x3e99a
8000451c:	99978793          	addi	a5,a5,-1639 # 3e999999 <_stack_size+0x3e991999>
80004520:	00050493          	mv	s1,a0
80004524:	0487c063          	blt	a5,s0,80004564 <__kernel_cosf+0x168>
80004528:	00050593          	mv	a1,a0
8000452c:	000a0513          	mv	a0,s4
80004530:	20d020ef          	jal	ra,80006f3c <__subsf3>
80004534:	00050593          	mv	a1,a0
80004538:	0009a503          	lw	a0,0(s3)
8000453c:	201020ef          	jal	ra,80006f3c <__subsf3>
80004540:	01c12083          	lw	ra,28(sp)
80004544:	01812403          	lw	s0,24(sp)
80004548:	01412483          	lw	s1,20(sp)
8000454c:	01012903          	lw	s2,16(sp)
80004550:	00c12983          	lw	s3,12(sp)
80004554:	00812a03          	lw	s4,8(sp)
80004558:	00412a83          	lw	s5,4(sp)
8000455c:	02010113          	addi	sp,sp,32
80004560:	00008067          	ret
80004564:	3f4807b7          	lui	a5,0x3f480
80004568:	0287ce63          	blt	a5,s0,800045a4 <__kernel_cosf+0x1a8>
8000456c:	ff0007b7          	lui	a5,0xff000
80004570:	00f40433          	add	s0,s0,a5
80004574:	0009a503          	lw	a0,0(s3)
80004578:	00040593          	mv	a1,s0
8000457c:	1c1020ef          	jal	ra,80006f3c <__subsf3>
80004580:	00050913          	mv	s2,a0
80004584:	00040593          	mv	a1,s0
80004588:	000a0513          	mv	a0,s4
8000458c:	1b1020ef          	jal	ra,80006f3c <__subsf3>
80004590:	00048593          	mv	a1,s1
80004594:	1a9020ef          	jal	ra,80006f3c <__subsf3>
80004598:	00050593          	mv	a1,a0
8000459c:	00090513          	mv	a0,s2
800045a0:	f9dff06f          	j	8000453c <__kernel_cosf+0x140>
800045a4:	00005797          	auipc	a5,0x5
800045a8:	8d078793          	addi	a5,a5,-1840 # 80008e74 <_etext+0x1278>
800045ac:	0007a403          	lw	s0,0(a5)
800045b0:	fc5ff06f          	j	80004574 <__kernel_cosf+0x178>
800045b4:	0009a503          	lw	a0,0(s3)
800045b8:	f89ff06f          	j	80004540 <__kernel_cosf+0x144>

800045bc <__kernel_rem_pio2f>:
800045bc:	e5010113          	addi	sp,sp,-432
800045c0:	19712623          	sw	s7,396(sp)
800045c4:	00f12c23          	sw	a5,24(sp)
800045c8:	00070b93          	mv	s7,a4
800045cc:	00003797          	auipc	a5,0x3
800045d0:	48078793          	addi	a5,a5,1152 # 80007a4c <init_jk>
800045d4:	00271713          	slli	a4,a4,0x2
800045d8:	00e787b3          	add	a5,a5,a4
800045dc:	1a812423          	sw	s0,424(sp)
800045e0:	19312e23          	sw	s3,412(sp)
800045e4:	19512a23          	sw	s5,404(sp)
800045e8:	19812423          	sw	s8,392(sp)
800045ec:	19912223          	sw	s9,388(sp)
800045f0:	0007aa83          	lw	s5,0(a5)
800045f4:	1a112623          	sw	ra,428(sp)
800045f8:	1a912223          	sw	s1,420(sp)
800045fc:	1b212023          	sw	s2,416(sp)
80004600:	19412c23          	sw	s4,408(sp)
80004604:	19612823          	sw	s6,400(sp)
80004608:	19a12023          	sw	s10,384(sp)
8000460c:	17b12e23          	sw	s11,380(sp)
80004610:	00a12a23          	sw	a0,20(sp)
80004614:	00d12623          	sw	a3,12(sp)
80004618:	ffc00793          	li	a5,-4
8000461c:	00058993          	mv	s3,a1
80004620:	00060c13          	mv	s8,a2
80004624:	fff68c93          	addi	s9,a3,-1 # 7fffffff <_stack_top+0xffbfffff>
80004628:	00000413          	li	s0,0
8000462c:	00f64c63          	blt	a2,a5,80004644 <__kernel_rem_pio2f+0x88>
80004630:	ffd60793          	addi	a5,a2,-3
80004634:	41f7d413          	srai	s0,a5,0x1f
80004638:	00747413          	andi	s0,s0,7
8000463c:	00f40433          	add	s0,s0,a5
80004640:	40345413          	srai	s0,s0,0x3
80004644:	00140793          	addi	a5,s0,1
80004648:	00379793          	slli	a5,a5,0x3
8000464c:	41940b33          	sub	s6,s0,s9
80004650:	00f12823          	sw	a5,16(sp)
80004654:	40fc0933          	sub	s2,s8,a5
80004658:	019a8d33          	add	s10,s5,s9
8000465c:	08010a13          	addi	s4,sp,128
80004660:	000b0493          	mv	s1,s6
80004664:	416487b3          	sub	a5,s1,s6
80004668:	20fd5863          	bge	s10,a5,80004878 <__kernel_rem_pio2f+0x2bc>
8000466c:	00c12783          	lw	a5,12(sp)
80004670:	00000a13          	li	s4,0
80004674:	00279493          	slli	s1,a5,0x2
80004678:	08010793          	addi	a5,sp,128
8000467c:	009784b3          	add	s1,a5,s1
80004680:	274ada63          	bge	s5,s4,800048f4 <__kernel_rem_pio2f+0x338>
80004684:	002a9793          	slli	a5,s5,0x2
80004688:	03010713          	addi	a4,sp,48
8000468c:	00f707b3          	add	a5,a4,a5
80004690:	02f12223          	sw	a5,36(sp)
80004694:	00241793          	slli	a5,s0,0x2
80004698:	02f12023          	sw	a5,32(sp)
8000469c:	00800793          	li	a5,8
800046a0:	412787b3          	sub	a5,a5,s2
800046a4:	000a8493          	mv	s1,s5
800046a8:	00f12e23          	sw	a5,28(sp)
800046ac:	00249a13          	slli	s4,s1,0x2
800046b0:	17010793          	addi	a5,sp,368
800046b4:	014787b3          	add	a5,a5,s4
800046b8:	fb07a403          	lw	s0,-80(a5)
800046bc:	03010d13          	addi	s10,sp,48
800046c0:	000d0d93          	mv	s11,s10
800046c4:	00048b13          	mv	s6,s1
800046c8:	23604e63          	bgtz	s6,80004904 <__kernel_rem_pio2f+0x348>
800046cc:	00090593          	mv	a1,s2
800046d0:	00040513          	mv	a0,s0
800046d4:	235000ef          	jal	ra,80005108 <scalbnf>
800046d8:	00004797          	auipc	a5,0x4
800046dc:	7c078793          	addi	a5,a5,1984 # 80008e98 <_etext+0x129c>
800046e0:	0007a583          	lw	a1,0(a5)
800046e4:	00050413          	mv	s0,a0
800046e8:	530020ef          	jal	ra,80006c18 <__mulsf3>
800046ec:	131000ef          	jal	ra,8000501c <floorf>
800046f0:	00004797          	auipc	a5,0x4
800046f4:	7ac78793          	addi	a5,a5,1964 # 80008e9c <_etext+0x12a0>
800046f8:	0007a583          	lw	a1,0(a5)
800046fc:	51c020ef          	jal	ra,80006c18 <__mulsf3>
80004700:	00050593          	mv	a1,a0
80004704:	00040513          	mv	a0,s0
80004708:	035020ef          	jal	ra,80006f3c <__subsf3>
8000470c:	00050413          	mv	s0,a0
80004710:	479020ef          	jal	ra,80007388 <__fixsfsi>
80004714:	00050b13          	mv	s6,a0
80004718:	4e1020ef          	jal	ra,800073f8 <__floatsisf>
8000471c:	00050593          	mv	a1,a0
80004720:	00040513          	mv	a0,s0
80004724:	019020ef          	jal	ra,80006f3c <__subsf3>
80004728:	00050d93          	mv	s11,a0
8000472c:	25205463          	blez	s2,80004974 <__kernel_rem_pio2f+0x3b8>
80004730:	fff48793          	addi	a5,s1,-1
80004734:	17010713          	addi	a4,sp,368
80004738:	00279793          	slli	a5,a5,0x2
8000473c:	00f707b3          	add	a5,a4,a5
80004740:	ec07a403          	lw	s0,-320(a5)
80004744:	01c12703          	lw	a4,28(sp)
80004748:	40e45633          	sra	a2,s0,a4
8000474c:	00cb0b33          	add	s6,s6,a2
80004750:	00e61633          	sll	a2,a2,a4
80004754:	40c40433          	sub	s0,s0,a2
80004758:	ec87a023          	sw	s0,-320(a5)
8000475c:	00700793          	li	a5,7
80004760:	412787b3          	sub	a5,a5,s2
80004764:	40f45433          	sra	s0,s0,a5
80004768:	08805063          	blez	s0,800047e8 <__kernel_rem_pio2f+0x22c>
8000476c:	001b0b13          	addi	s6,s6,1
80004770:	00000593          	li	a1,0
80004774:	00000613          	li	a2,0
80004778:	0ff00513          	li	a0,255
8000477c:	10000813          	li	a6,256
80004780:	2295ca63          	blt	a1,s1,800049b4 <__kernel_rem_pio2f+0x3f8>
80004784:	01205a63          	blez	s2,80004798 <__kernel_rem_pio2f+0x1dc>
80004788:	00100793          	li	a5,1
8000478c:	26f90063          	beq	s2,a5,800049ec <__kernel_rem_pio2f+0x430>
80004790:	00200793          	li	a5,2
80004794:	26f90c63          	beq	s2,a5,80004a0c <__kernel_rem_pio2f+0x450>
80004798:	00200793          	li	a5,2
8000479c:	04f41663          	bne	s0,a5,800047e8 <__kernel_rem_pio2f+0x22c>
800047a0:	00004797          	auipc	a5,0x4
800047a4:	6d878793          	addi	a5,a5,1752 # 80008e78 <_etext+0x127c>
800047a8:	0007a503          	lw	a0,0(a5)
800047ac:	000d8593          	mv	a1,s11
800047b0:	02c12423          	sw	a2,40(sp)
800047b4:	788020ef          	jal	ra,80006f3c <__subsf3>
800047b8:	02812603          	lw	a2,40(sp)
800047bc:	00050d93          	mv	s11,a0
800047c0:	00004797          	auipc	a5,0x4
800047c4:	6b878793          	addi	a5,a5,1720 # 80008e78 <_etext+0x127c>
800047c8:	02060063          	beqz	a2,800047e8 <__kernel_rem_pio2f+0x22c>
800047cc:	0007a503          	lw	a0,0(a5)
800047d0:	00090593          	mv	a1,s2
800047d4:	135000ef          	jal	ra,80005108 <scalbnf>
800047d8:	00050593          	mv	a1,a0
800047dc:	000d8513          	mv	a0,s11
800047e0:	75c020ef          	jal	ra,80006f3c <__subsf3>
800047e4:	00050d93          	mv	s11,a0
800047e8:	00000593          	li	a1,0
800047ec:	000d8513          	mv	a0,s11
800047f0:	300020ef          	jal	ra,80006af0 <__eqsf2>
800047f4:	32051063          	bnez	a0,80004b14 <__kernel_rem_pio2f+0x558>
800047f8:	fff48a13          	addi	s4,s1,-1
800047fc:	000a0793          	mv	a5,s4
80004800:	00000713          	li	a4,0
80004804:	2357d263          	bge	a5,s5,80004a28 <__kernel_rem_pio2f+0x46c>
80004808:	2a070a63          	beqz	a4,80004abc <__kernel_rem_pio2f+0x500>
8000480c:	002a1793          	slli	a5,s4,0x2
80004810:	03010713          	addi	a4,sp,48
80004814:	00f707b3          	add	a5,a4,a5
80004818:	0007a783          	lw	a5,0(a5)
8000481c:	ff890913          	addi	s2,s2,-8
80004820:	2e078663          	beqz	a5,80004b0c <__kernel_rem_pio2f+0x550>
80004824:	00004797          	auipc	a5,0x4
80004828:	65478793          	addi	a5,a5,1620 # 80008e78 <_etext+0x127c>
8000482c:	0007a503          	lw	a0,0(a5)
80004830:	00090593          	mv	a1,s2
80004834:	000a0493          	mv	s1,s4
80004838:	0d1000ef          	jal	ra,80005108 <scalbnf>
8000483c:	00050913          	mv	s2,a0
80004840:	00004c17          	auipc	s8,0x4
80004844:	654c0c13          	addi	s8,s8,1620 # 80008e94 <_etext+0x1298>
80004848:	3604de63          	bgez	s1,80004bc4 <__kernel_rem_pio2f+0x608>
8000484c:	000a0c13          	mv	s8,s4
80004850:	00000c93          	li	s9,0
80004854:	00003d97          	auipc	s11,0x3
80004858:	204d8d93          	addi	s11,s11,516 # 80007a58 <PIo2>
8000485c:	3e0c4c63          	bltz	s8,80004c54 <__kernel_rem_pio2f+0x698>
80004860:	002c1913          	slli	s2,s8,0x2
80004864:	12010793          	addi	a5,sp,288
80004868:	00f90933          	add	s2,s2,a5
8000486c:	00000d13          	li	s10,0
80004870:	00000493          	li	s1,0
80004874:	3bc0006f          	j	80004c30 <__kernel_rem_pio2f+0x674>
80004878:	00000513          	li	a0,0
8000487c:	0004cc63          	bltz	s1,80004894 <__kernel_rem_pio2f+0x2d8>
80004880:	01812703          	lw	a4,24(sp)
80004884:	00249793          	slli	a5,s1,0x2
80004888:	00f707b3          	add	a5,a4,a5
8000488c:	0007a503          	lw	a0,0(a5)
80004890:	369020ef          	jal	ra,800073f8 <__floatsisf>
80004894:	00aa2023          	sw	a0,0(s4)
80004898:	00148493          	addi	s1,s1,1
8000489c:	004a0a13          	addi	s4,s4,4
800048a0:	dc5ff06f          	j	80004664 <__kernel_rem_pio2f+0xa8>
800048a4:	01412783          	lw	a5,20(sp)
800048a8:	002b1693          	slli	a3,s6,0x2
800048ac:	000da583          	lw	a1,0(s11)
800048b0:	00d786b3          	add	a3,a5,a3
800048b4:	0006a503          	lw	a0,0(a3)
800048b8:	001b0b13          	addi	s6,s6,1
800048bc:	35c020ef          	jal	ra,80006c18 <__mulsf3>
800048c0:	00050593          	mv	a1,a0
800048c4:	000d0513          	mv	a0,s10
800048c8:	275010ef          	jal	ra,8000633c <__addsf3>
800048cc:	00050d13          	mv	s10,a0
800048d0:	ffcd8d93          	addi	s11,s11,-4
800048d4:	fd6cd8e3          	bge	s9,s6,800048a4 <__kernel_rem_pio2f+0x2e8>
800048d8:	002a1793          	slli	a5,s4,0x2
800048dc:	12010713          	addi	a4,sp,288
800048e0:	00f707b3          	add	a5,a4,a5
800048e4:	01a7a023          	sw	s10,0(a5)
800048e8:	001a0a13          	addi	s4,s4,1
800048ec:	00448493          	addi	s1,s1,4
800048f0:	d91ff06f          	j	80004680 <__kernel_rem_pio2f+0xc4>
800048f4:	00048d93          	mv	s11,s1
800048f8:	00000d13          	li	s10,0
800048fc:	00000b13          	li	s6,0
80004900:	fd1ff06f          	j	800048d0 <__kernel_rem_pio2f+0x314>
80004904:	00004797          	auipc	a5,0x4
80004908:	59078793          	addi	a5,a5,1424 # 80008e94 <_etext+0x1298>
8000490c:	0007a583          	lw	a1,0(a5)
80004910:	00040513          	mv	a0,s0
80004914:	fffb0b13          	addi	s6,s6,-1
80004918:	300020ef          	jal	ra,80006c18 <__mulsf3>
8000491c:	26d020ef          	jal	ra,80007388 <__fixsfsi>
80004920:	2d9020ef          	jal	ra,800073f8 <__floatsisf>
80004924:	00004797          	auipc	a5,0x4
80004928:	54c78793          	addi	a5,a5,1356 # 80008e70 <_etext+0x1274>
8000492c:	0007a583          	lw	a1,0(a5)
80004930:	02a12423          	sw	a0,40(sp)
80004934:	004d8d93          	addi	s11,s11,4
80004938:	2e0020ef          	jal	ra,80006c18 <__mulsf3>
8000493c:	00050593          	mv	a1,a0
80004940:	00040513          	mv	a0,s0
80004944:	5f8020ef          	jal	ra,80006f3c <__subsf3>
80004948:	241020ef          	jal	ra,80007388 <__fixsfsi>
8000494c:	12010793          	addi	a5,sp,288
80004950:	002b1713          	slli	a4,s6,0x2
80004954:	00e78733          	add	a4,a5,a4
80004958:	02812603          	lw	a2,40(sp)
8000495c:	00072583          	lw	a1,0(a4)
80004960:	feadae23          	sw	a0,-4(s11)
80004964:	00060513          	mv	a0,a2
80004968:	1d5010ef          	jal	ra,8000633c <__addsf3>
8000496c:	00050413          	mv	s0,a0
80004970:	d59ff06f          	j	800046c8 <__kernel_rem_pio2f+0x10c>
80004974:	02091063          	bnez	s2,80004994 <__kernel_rem_pio2f+0x3d8>
80004978:	fff48793          	addi	a5,s1,-1
8000497c:	00279793          	slli	a5,a5,0x2
80004980:	17010713          	addi	a4,sp,368
80004984:	00f707b3          	add	a5,a4,a5
80004988:	ec07a403          	lw	s0,-320(a5)
8000498c:	40845413          	srai	s0,s0,0x8
80004990:	dd9ff06f          	j	80004768 <__kernel_rem_pio2f+0x1ac>
80004994:	00004797          	auipc	a5,0x4
80004998:	4bc78793          	addi	a5,a5,1212 # 80008e50 <_etext+0x1254>
8000499c:	0007a583          	lw	a1,0(a5)
800049a0:	00000413          	li	s0,0
800049a4:	1b8020ef          	jal	ra,80006b5c <__gesf2>
800049a8:	e40540e3          	bltz	a0,800047e8 <__kernel_rem_pio2f+0x22c>
800049ac:	00200413          	li	s0,2
800049b0:	dbdff06f          	j	8000476c <__kernel_rem_pio2f+0x1b0>
800049b4:	000d2783          	lw	a5,0(s10)
800049b8:	02061263          	bnez	a2,800049dc <__kernel_rem_pio2f+0x420>
800049bc:	00078863          	beqz	a5,800049cc <__kernel_rem_pio2f+0x410>
800049c0:	40f807b3          	sub	a5,a6,a5
800049c4:	00fd2023          	sw	a5,0(s10)
800049c8:	00100793          	li	a5,1
800049cc:	00158593          	addi	a1,a1,1
800049d0:	004d0d13          	addi	s10,s10,4
800049d4:	00078613          	mv	a2,a5
800049d8:	da9ff06f          	j	80004780 <__kernel_rem_pio2f+0x1c4>
800049dc:	40f507b3          	sub	a5,a0,a5
800049e0:	00fd2023          	sw	a5,0(s10)
800049e4:	00060793          	mv	a5,a2
800049e8:	fe5ff06f          	j	800049cc <__kernel_rem_pio2f+0x410>
800049ec:	fff48793          	addi	a5,s1,-1
800049f0:	00279793          	slli	a5,a5,0x2
800049f4:	17010713          	addi	a4,sp,368
800049f8:	00f707b3          	add	a5,a4,a5
800049fc:	ec07a683          	lw	a3,-320(a5)
80004a00:	07f6f693          	andi	a3,a3,127
80004a04:	ecd7a023          	sw	a3,-320(a5)
80004a08:	d91ff06f          	j	80004798 <__kernel_rem_pio2f+0x1dc>
80004a0c:	fff48793          	addi	a5,s1,-1
80004a10:	00279793          	slli	a5,a5,0x2
80004a14:	17010713          	addi	a4,sp,368
80004a18:	00f707b3          	add	a5,a4,a5
80004a1c:	ec07a683          	lw	a3,-320(a5)
80004a20:	03f6f693          	andi	a3,a3,63
80004a24:	fe1ff06f          	j	80004a04 <__kernel_rem_pio2f+0x448>
80004a28:	00279693          	slli	a3,a5,0x2
80004a2c:	03010613          	addi	a2,sp,48
80004a30:	00d606b3          	add	a3,a2,a3
80004a34:	0006a683          	lw	a3,0(a3)
80004a38:	fff78793          	addi	a5,a5,-1
80004a3c:	00d76733          	or	a4,a4,a3
80004a40:	dc5ff06f          	j	80004804 <__kernel_rem_pio2f+0x248>
80004a44:	00178793          	addi	a5,a5,1
80004a48:	ffc70713          	addi	a4,a4,-4
80004a4c:	00072683          	lw	a3,0(a4)
80004a50:	fe068ae3          	beqz	a3,80004a44 <__kernel_rem_pio2f+0x488>
80004a54:	00c12703          	lw	a4,12(sp)
80004a58:	00148b13          	addi	s6,s1,1
80004a5c:	00e48a33          	add	s4,s1,a4
80004a60:	002a1a13          	slli	s4,s4,0x2
80004a64:	08010713          	addi	a4,sp,128
80004a68:	01470a33          	add	s4,a4,s4
80004a6c:	00f484b3          	add	s1,s1,a5
80004a70:	c364cee3          	blt	s1,s6,800046ac <__kernel_rem_pio2f+0xf0>
80004a74:	02012783          	lw	a5,32(sp)
80004a78:	01812703          	lw	a4,24(sp)
80004a7c:	002b1413          	slli	s0,s6,0x2
80004a80:	008787b3          	add	a5,a5,s0
80004a84:	00f707b3          	add	a5,a4,a5
80004a88:	0007a503          	lw	a0,0(a5)
80004a8c:	00000d93          	li	s11,0
80004a90:	169020ef          	jal	ra,800073f8 <__floatsisf>
80004a94:	00aa2023          	sw	a0,0(s4)
80004a98:	000a0693          	mv	a3,s4
80004a9c:	00000793          	li	a5,0
80004aa0:	02fcd463          	bge	s9,a5,80004ac8 <__kernel_rem_pio2f+0x50c>
80004aa4:	12010793          	addi	a5,sp,288
80004aa8:	00878433          	add	s0,a5,s0
80004aac:	01b42023          	sw	s11,0(s0)
80004ab0:	001b0b13          	addi	s6,s6,1
80004ab4:	004a0a13          	addi	s4,s4,4
80004ab8:	fb9ff06f          	j	80004a70 <__kernel_rem_pio2f+0x4b4>
80004abc:	02412703          	lw	a4,36(sp)
80004ac0:	00100793          	li	a5,1
80004ac4:	f85ff06f          	j	80004a48 <__kernel_rem_pio2f+0x48c>
80004ac8:	00279613          	slli	a2,a5,0x2
80004acc:	02f12623          	sw	a5,44(sp)
80004ad0:	01412783          	lw	a5,20(sp)
80004ad4:	0006a583          	lw	a1,0(a3)
80004ad8:	02d12423          	sw	a3,40(sp)
80004adc:	00c78633          	add	a2,a5,a2
80004ae0:	00062503          	lw	a0,0(a2)
80004ae4:	134020ef          	jal	ra,80006c18 <__mulsf3>
80004ae8:	00050593          	mv	a1,a0
80004aec:	000d8513          	mv	a0,s11
80004af0:	04d010ef          	jal	ra,8000633c <__addsf3>
80004af4:	02c12783          	lw	a5,44(sp)
80004af8:	02812683          	lw	a3,40(sp)
80004afc:	00050d93          	mv	s11,a0
80004b00:	00178793          	addi	a5,a5,1
80004b04:	ffc68693          	addi	a3,a3,-4
80004b08:	f99ff06f          	j	80004aa0 <__kernel_rem_pio2f+0x4e4>
80004b0c:	fffa0a13          	addi	s4,s4,-1
80004b10:	cfdff06f          	j	8000480c <__kernel_rem_pio2f+0x250>
80004b14:	01012783          	lw	a5,16(sp)
80004b18:	000d8513          	mv	a0,s11
80004b1c:	418785b3          	sub	a1,a5,s8
80004b20:	5e8000ef          	jal	ra,80005108 <scalbnf>
80004b24:	00004797          	auipc	a5,0x4
80004b28:	34c78793          	addi	a5,a5,844 # 80008e70 <_etext+0x1274>
80004b2c:	0007ac83          	lw	s9,0(a5)
80004b30:	00050c13          	mv	s8,a0
80004b34:	000c8593          	mv	a1,s9
80004b38:	024020ef          	jal	ra,80006b5c <__gesf2>
80004b3c:	06054663          	bltz	a0,80004ba8 <__kernel_rem_pio2f+0x5ec>
80004b40:	00004797          	auipc	a5,0x4
80004b44:	35478793          	addi	a5,a5,852 # 80008e94 <_etext+0x1298>
80004b48:	0007a583          	lw	a1,0(a5)
80004b4c:	000c0513          	mv	a0,s8
80004b50:	00890913          	addi	s2,s2,8
80004b54:	0c4020ef          	jal	ra,80006c18 <__mulsf3>
80004b58:	031020ef          	jal	ra,80007388 <__fixsfsi>
80004b5c:	09d020ef          	jal	ra,800073f8 <__floatsisf>
80004b60:	17010793          	addi	a5,sp,368
80004b64:	000c8593          	mv	a1,s9
80004b68:	01478a33          	add	s4,a5,s4
80004b6c:	00050d13          	mv	s10,a0
80004b70:	0a8020ef          	jal	ra,80006c18 <__mulsf3>
80004b74:	00050593          	mv	a1,a0
80004b78:	000c0513          	mv	a0,s8
80004b7c:	3c0020ef          	jal	ra,80006f3c <__subsf3>
80004b80:	009020ef          	jal	ra,80007388 <__fixsfsi>
80004b84:	ecaa2023          	sw	a0,-320(s4)
80004b88:	00148a13          	addi	s4,s1,1
80004b8c:	17010793          	addi	a5,sp,368
80004b90:	002a1493          	slli	s1,s4,0x2
80004b94:	000d0513          	mv	a0,s10
80004b98:	009784b3          	add	s1,a5,s1
80004b9c:	7ec020ef          	jal	ra,80007388 <__fixsfsi>
80004ba0:	eca4a023          	sw	a0,-320(s1)
80004ba4:	c81ff06f          	j	80004824 <__kernel_rem_pio2f+0x268>
80004ba8:	17010793          	addi	a5,sp,368
80004bac:	000c0513          	mv	a0,s8
80004bb0:	01478a33          	add	s4,a5,s4
80004bb4:	7d4020ef          	jal	ra,80007388 <__fixsfsi>
80004bb8:	ecaa2023          	sw	a0,-320(s4)
80004bbc:	00048a13          	mv	s4,s1
80004bc0:	c65ff06f          	j	80004824 <__kernel_rem_pio2f+0x268>
80004bc4:	00249793          	slli	a5,s1,0x2
80004bc8:	12010713          	addi	a4,sp,288
80004bcc:	00f70cb3          	add	s9,a4,a5
80004bd0:	03010713          	addi	a4,sp,48
80004bd4:	00f707b3          	add	a5,a4,a5
80004bd8:	0007a503          	lw	a0,0(a5)
80004bdc:	fff48493          	addi	s1,s1,-1
80004be0:	019020ef          	jal	ra,800073f8 <__floatsisf>
80004be4:	00090593          	mv	a1,s2
80004be8:	030020ef          	jal	ra,80006c18 <__mulsf3>
80004bec:	000c2583          	lw	a1,0(s8)
80004bf0:	00aca023          	sw	a0,0(s9)
80004bf4:	00090513          	mv	a0,s2
80004bf8:	020020ef          	jal	ra,80006c18 <__mulsf3>
80004bfc:	00050913          	mv	s2,a0
80004c00:	c49ff06f          	j	80004848 <__kernel_rem_pio2f+0x28c>
80004c04:	00249793          	slli	a5,s1,0x2
80004c08:	00fd87b3          	add	a5,s11,a5
80004c0c:	00092583          	lw	a1,0(s2)
80004c10:	0007a503          	lw	a0,0(a5)
80004c14:	00148493          	addi	s1,s1,1
80004c18:	00490913          	addi	s2,s2,4
80004c1c:	7fd010ef          	jal	ra,80006c18 <__mulsf3>
80004c20:	00050593          	mv	a1,a0
80004c24:	000d0513          	mv	a0,s10
80004c28:	714010ef          	jal	ra,8000633c <__addsf3>
80004c2c:	00050d13          	mv	s10,a0
80004c30:	009ac463          	blt	s5,s1,80004c38 <__kernel_rem_pio2f+0x67c>
80004c34:	fc9cd8e3          	bge	s9,s1,80004c04 <__kernel_rem_pio2f+0x648>
80004c38:	002c9793          	slli	a5,s9,0x2
80004c3c:	17010713          	addi	a4,sp,368
80004c40:	00f707b3          	add	a5,a4,a5
80004c44:	f7a7a023          	sw	s10,-160(a5)
80004c48:	fffc0c13          	addi	s8,s8,-1
80004c4c:	001c8c93          	addi	s9,s9,1
80004c50:	c0dff06f          	j	8000485c <__kernel_rem_pio2f+0x2a0>
80004c54:	00200793          	li	a5,2
80004c58:	0577c863          	blt	a5,s7,80004ca8 <__kernel_rem_pio2f+0x6ec>
80004c5c:	13704863          	bgtz	s7,80004d8c <__kernel_rem_pio2f+0x7d0>
80004c60:	00000513          	li	a0,0
80004c64:	0a0b8c63          	beqz	s7,80004d1c <__kernel_rem_pio2f+0x760>
80004c68:	1ac12083          	lw	ra,428(sp)
80004c6c:	1a812403          	lw	s0,424(sp)
80004c70:	007b7513          	andi	a0,s6,7
80004c74:	1a412483          	lw	s1,420(sp)
80004c78:	1a012903          	lw	s2,416(sp)
80004c7c:	19c12983          	lw	s3,412(sp)
80004c80:	19812a03          	lw	s4,408(sp)
80004c84:	19412a83          	lw	s5,404(sp)
80004c88:	19012b03          	lw	s6,400(sp)
80004c8c:	18c12b83          	lw	s7,396(sp)
80004c90:	18812c03          	lw	s8,392(sp)
80004c94:	18412c83          	lw	s9,388(sp)
80004c98:	18012d03          	lw	s10,384(sp)
80004c9c:	17c12d83          	lw	s11,380(sp)
80004ca0:	1b010113          	addi	sp,sp,432
80004ca4:	00008067          	ret
80004ca8:	00300793          	li	a5,3
80004cac:	fafb9ee3          	bne	s7,a5,80004c68 <__kernel_rem_pio2f+0x6ac>
80004cb0:	002a1493          	slli	s1,s4,0x2
80004cb4:	0d010793          	addi	a5,sp,208
80004cb8:	009784b3          	add	s1,a5,s1
80004cbc:	00048913          	mv	s2,s1
80004cc0:	000a0a93          	mv	s5,s4
80004cc4:	ffc90913          	addi	s2,s2,-4
80004cc8:	0f504663          	bgtz	s5,80004db4 <__kernel_rem_pio2f+0x7f8>
80004ccc:	000a0913          	mv	s2,s4
80004cd0:	00100c93          	li	s9,1
80004cd4:	ffc48493          	addi	s1,s1,-4
80004cd8:	112ccc63          	blt	s9,s2,80004df0 <__kernel_rem_pio2f+0x834>
80004cdc:	00000513          	li	a0,0
80004ce0:	00100493          	li	s1,1
80004ce4:	1544c463          	blt	s1,s4,80004e2c <__kernel_rem_pio2f+0x870>
80004ce8:	0d012683          	lw	a3,208(sp)
80004cec:	0d412703          	lw	a4,212(sp)
80004cf0:	14041c63          	bnez	s0,80004e48 <__kernel_rem_pio2f+0x88c>
80004cf4:	00d9a023          	sw	a3,0(s3)
80004cf8:	00e9a223          	sw	a4,4(s3)
80004cfc:	00a9a423          	sw	a0,8(s3)
80004d00:	f69ff06f          	j	80004c68 <__kernel_rem_pio2f+0x6ac>
80004d04:	002a1793          	slli	a5,s4,0x2
80004d08:	0d010713          	addi	a4,sp,208
80004d0c:	00f707b3          	add	a5,a4,a5
80004d10:	0007a583          	lw	a1,0(a5)
80004d14:	fffa0a13          	addi	s4,s4,-1
80004d18:	624010ef          	jal	ra,8000633c <__addsf3>
80004d1c:	fe0a54e3          	bgez	s4,80004d04 <__kernel_rem_pio2f+0x748>
80004d20:	00040663          	beqz	s0,80004d2c <__kernel_rem_pio2f+0x770>
80004d24:	800007b7          	lui	a5,0x80000
80004d28:	00a7c533          	xor	a0,a5,a0
80004d2c:	00a9a023          	sw	a0,0(s3)
80004d30:	f39ff06f          	j	80004c68 <__kernel_rem_pio2f+0x6ac>
80004d34:	00249793          	slli	a5,s1,0x2
80004d38:	0d010713          	addi	a4,sp,208
80004d3c:	00f707b3          	add	a5,a4,a5
80004d40:	0007a583          	lw	a1,0(a5) # 80000000 <_stack_top+0xffc00000>
80004d44:	fff48493          	addi	s1,s1,-1
80004d48:	5f4010ef          	jal	ra,8000633c <__addsf3>
80004d4c:	fe04d4e3          	bgez	s1,80004d34 <__kernel_rem_pio2f+0x778>
80004d50:	00050793          	mv	a5,a0
80004d54:	00040663          	beqz	s0,80004d60 <__kernel_rem_pio2f+0x7a4>
80004d58:	800007b7          	lui	a5,0x80000
80004d5c:	00a7c7b3          	xor	a5,a5,a0
80004d60:	00050593          	mv	a1,a0
80004d64:	0d012503          	lw	a0,208(sp)
80004d68:	00f9a023          	sw	a5,0(s3)
80004d6c:	00100493          	li	s1,1
80004d70:	1cc020ef          	jal	ra,80006f3c <__subsf3>
80004d74:	029a5263          	bge	s4,s1,80004d98 <__kernel_rem_pio2f+0x7dc>
80004d78:	00040663          	beqz	s0,80004d84 <__kernel_rem_pio2f+0x7c8>
80004d7c:	800007b7          	lui	a5,0x80000
80004d80:	00a7c533          	xor	a0,a5,a0
80004d84:	00a9a223          	sw	a0,4(s3)
80004d88:	ee1ff06f          	j	80004c68 <__kernel_rem_pio2f+0x6ac>
80004d8c:	000a0493          	mv	s1,s4
80004d90:	00000513          	li	a0,0
80004d94:	fb9ff06f          	j	80004d4c <__kernel_rem_pio2f+0x790>
80004d98:	00249793          	slli	a5,s1,0x2
80004d9c:	0d010713          	addi	a4,sp,208
80004da0:	00f707b3          	add	a5,a4,a5
80004da4:	0007a583          	lw	a1,0(a5) # 80000000 <_stack_top+0xffc00000>
80004da8:	00148493          	addi	s1,s1,1
80004dac:	590010ef          	jal	ra,8000633c <__addsf3>
80004db0:	fc5ff06f          	j	80004d74 <__kernel_rem_pio2f+0x7b8>
80004db4:	00092c83          	lw	s9,0(s2)
80004db8:	00492c03          	lw	s8,4(s2)
80004dbc:	fffa8a93          	addi	s5,s5,-1
80004dc0:	000c8513          	mv	a0,s9
80004dc4:	000c0593          	mv	a1,s8
80004dc8:	574010ef          	jal	ra,8000633c <__addsf3>
80004dcc:	00050593          	mv	a1,a0
80004dd0:	00050b93          	mv	s7,a0
80004dd4:	000c8513          	mv	a0,s9
80004dd8:	164020ef          	jal	ra,80006f3c <__subsf3>
80004ddc:	000c0593          	mv	a1,s8
80004de0:	55c010ef          	jal	ra,8000633c <__addsf3>
80004de4:	00a92223          	sw	a0,4(s2)
80004de8:	01792023          	sw	s7,0(s2)
80004dec:	ed9ff06f          	j	80004cc4 <__kernel_rem_pio2f+0x708>
80004df0:	0004ac03          	lw	s8,0(s1)
80004df4:	0044ab83          	lw	s7,4(s1)
80004df8:	fff90913          	addi	s2,s2,-1
80004dfc:	000c0513          	mv	a0,s8
80004e00:	000b8593          	mv	a1,s7
80004e04:	538010ef          	jal	ra,8000633c <__addsf3>
80004e08:	00050593          	mv	a1,a0
80004e0c:	00050a93          	mv	s5,a0
80004e10:	000c0513          	mv	a0,s8
80004e14:	128020ef          	jal	ra,80006f3c <__subsf3>
80004e18:	000b8593          	mv	a1,s7
80004e1c:	520010ef          	jal	ra,8000633c <__addsf3>
80004e20:	00a4a223          	sw	a0,4(s1)
80004e24:	0154a023          	sw	s5,0(s1)
80004e28:	eadff06f          	j	80004cd4 <__kernel_rem_pio2f+0x718>
80004e2c:	002a1793          	slli	a5,s4,0x2
80004e30:	0d010713          	addi	a4,sp,208
80004e34:	00f707b3          	add	a5,a4,a5
80004e38:	0007a583          	lw	a1,0(a5)
80004e3c:	fffa0a13          	addi	s4,s4,-1
80004e40:	4fc010ef          	jal	ra,8000633c <__addsf3>
80004e44:	ea1ff06f          	j	80004ce4 <__kernel_rem_pio2f+0x728>
80004e48:	800007b7          	lui	a5,0x80000
80004e4c:	00d7c6b3          	xor	a3,a5,a3
80004e50:	00e7c733          	xor	a4,a5,a4
80004e54:	00a7c7b3          	xor	a5,a5,a0
80004e58:	00d9a023          	sw	a3,0(s3)
80004e5c:	00e9a223          	sw	a4,4(s3)
80004e60:	00f9a423          	sw	a5,8(s3)
80004e64:	e05ff06f          	j	80004c68 <__kernel_rem_pio2f+0x6ac>

80004e68 <__kernel_sinf>:
80004e68:	fe010113          	addi	sp,sp,-32
80004e6c:	00151793          	slli	a5,a0,0x1
80004e70:	00812c23          	sw	s0,24(sp)
80004e74:	01412423          	sw	s4,8(sp)
80004e78:	01612023          	sw	s6,0(sp)
80004e7c:	00112e23          	sw	ra,28(sp)
80004e80:	00912a23          	sw	s1,20(sp)
80004e84:	01212823          	sw	s2,16(sp)
80004e88:	01312623          	sw	s3,12(sp)
80004e8c:	01512223          	sw	s5,4(sp)
80004e90:	0017d793          	srli	a5,a5,0x1
80004e94:	32000737          	lui	a4,0x32000
80004e98:	00050413          	mv	s0,a0
80004e9c:	00058a13          	mv	s4,a1
80004ea0:	00060b13          	mv	s6,a2
80004ea4:	00e7d663          	bge	a5,a4,80004eb0 <__kernel_sinf+0x48>
80004ea8:	4e0020ef          	jal	ra,80007388 <__fixsfsi>
80004eac:	0c050663          	beqz	a0,80004f78 <__kernel_sinf+0x110>
80004eb0:	00040593          	mv	a1,s0
80004eb4:	00040513          	mv	a0,s0
80004eb8:	561010ef          	jal	ra,80006c18 <__mulsf3>
80004ebc:	00050493          	mv	s1,a0
80004ec0:	00050593          	mv	a1,a0
80004ec4:	00040513          	mv	a0,s0
80004ec8:	551010ef          	jal	ra,80006c18 <__mulsf3>
80004ecc:	00004797          	auipc	a5,0x4
80004ed0:	fd478793          	addi	a5,a5,-44 # 80008ea0 <_etext+0x12a4>
80004ed4:	0007a583          	lw	a1,0(a5)
80004ed8:	00050913          	mv	s2,a0
80004edc:	00048513          	mv	a0,s1
80004ee0:	539010ef          	jal	ra,80006c18 <__mulsf3>
80004ee4:	00004797          	auipc	a5,0x4
80004ee8:	fc078793          	addi	a5,a5,-64 # 80008ea4 <_etext+0x12a8>
80004eec:	0007a583          	lw	a1,0(a5)
80004ef0:	00004997          	auipc	s3,0x4
80004ef4:	fc498993          	addi	s3,s3,-60 # 80008eb4 <_etext+0x12b8>
80004ef8:	044020ef          	jal	ra,80006f3c <__subsf3>
80004efc:	00048593          	mv	a1,s1
80004f00:	519010ef          	jal	ra,80006c18 <__mulsf3>
80004f04:	00004797          	auipc	a5,0x4
80004f08:	fa478793          	addi	a5,a5,-92 # 80008ea8 <_etext+0x12ac>
80004f0c:	0007a583          	lw	a1,0(a5)
80004f10:	42c010ef          	jal	ra,8000633c <__addsf3>
80004f14:	00048593          	mv	a1,s1
80004f18:	501010ef          	jal	ra,80006c18 <__mulsf3>
80004f1c:	00004797          	auipc	a5,0x4
80004f20:	f9078793          	addi	a5,a5,-112 # 80008eac <_etext+0x12b0>
80004f24:	0007a583          	lw	a1,0(a5)
80004f28:	014020ef          	jal	ra,80006f3c <__subsf3>
80004f2c:	00048593          	mv	a1,s1
80004f30:	4e9010ef          	jal	ra,80006c18 <__mulsf3>
80004f34:	00004797          	auipc	a5,0x4
80004f38:	f7c78793          	addi	a5,a5,-132 # 80008eb0 <_etext+0x12b4>
80004f3c:	0007a583          	lw	a1,0(a5)
80004f40:	3fc010ef          	jal	ra,8000633c <__addsf3>
80004f44:	00050a93          	mv	s5,a0
80004f48:	040b1e63          	bnez	s6,80004fa4 <__kernel_sinf+0x13c>
80004f4c:	00050593          	mv	a1,a0
80004f50:	00048513          	mv	a0,s1
80004f54:	4c5010ef          	jal	ra,80006c18 <__mulsf3>
80004f58:	0009a583          	lw	a1,0(s3)
80004f5c:	7e1010ef          	jal	ra,80006f3c <__subsf3>
80004f60:	00090593          	mv	a1,s2
80004f64:	4b5010ef          	jal	ra,80006c18 <__mulsf3>
80004f68:	00050593          	mv	a1,a0
80004f6c:	00040513          	mv	a0,s0
80004f70:	3cc010ef          	jal	ra,8000633c <__addsf3>
80004f74:	00050413          	mv	s0,a0
80004f78:	00040513          	mv	a0,s0
80004f7c:	01c12083          	lw	ra,28(sp)
80004f80:	01812403          	lw	s0,24(sp)
80004f84:	01412483          	lw	s1,20(sp)
80004f88:	01012903          	lw	s2,16(sp)
80004f8c:	00c12983          	lw	s3,12(sp)
80004f90:	00812a03          	lw	s4,8(sp)
80004f94:	00412a83          	lw	s5,4(sp)
80004f98:	00012b03          	lw	s6,0(sp)
80004f9c:	02010113          	addi	sp,sp,32
80004fa0:	00008067          	ret
80004fa4:	00004797          	auipc	a5,0x4
80004fa8:	eac78793          	addi	a5,a5,-340 # 80008e50 <_etext+0x1254>
80004fac:	0007a583          	lw	a1,0(a5)
80004fb0:	000a0513          	mv	a0,s4
80004fb4:	465010ef          	jal	ra,80006c18 <__mulsf3>
80004fb8:	00050b13          	mv	s6,a0
80004fbc:	000a8593          	mv	a1,s5
80004fc0:	00090513          	mv	a0,s2
80004fc4:	455010ef          	jal	ra,80006c18 <__mulsf3>
80004fc8:	00050593          	mv	a1,a0
80004fcc:	000b0513          	mv	a0,s6
80004fd0:	76d010ef          	jal	ra,80006f3c <__subsf3>
80004fd4:	00048593          	mv	a1,s1
80004fd8:	441010ef          	jal	ra,80006c18 <__mulsf3>
80004fdc:	000a0593          	mv	a1,s4
80004fe0:	75d010ef          	jal	ra,80006f3c <__subsf3>
80004fe4:	0009a583          	lw	a1,0(s3)
80004fe8:	00050493          	mv	s1,a0
80004fec:	00090513          	mv	a0,s2
80004ff0:	429010ef          	jal	ra,80006c18 <__mulsf3>
80004ff4:	00050593          	mv	a1,a0
80004ff8:	00048513          	mv	a0,s1
80004ffc:	340010ef          	jal	ra,8000633c <__addsf3>
80005000:	00050593          	mv	a1,a0
80005004:	00040513          	mv	a0,s0
80005008:	735010ef          	jal	ra,80006f3c <__subsf3>
8000500c:	f69ff06f          	j	80004f74 <__kernel_sinf+0x10c>

80005010 <fabsf>:
80005010:	00151513          	slli	a0,a0,0x1
80005014:	00155513          	srli	a0,a0,0x1
80005018:	00008067          	ret

8000501c <floorf>:
8000501c:	fe010113          	addi	sp,sp,-32
80005020:	00912a23          	sw	s1,20(sp)
80005024:	00151493          	slli	s1,a0,0x1
80005028:	0014d493          	srli	s1,s1,0x1
8000502c:	01212823          	sw	s2,16(sp)
80005030:	0174d913          	srli	s2,s1,0x17
80005034:	00112e23          	sw	ra,28(sp)
80005038:	00812c23          	sw	s0,24(sp)
8000503c:	01312623          	sw	s3,12(sp)
80005040:	f8190913          	addi	s2,s2,-127
80005044:	01600793          	li	a5,22
80005048:	00050593          	mv	a1,a0
8000504c:	0927c263          	blt	a5,s2,800050d0 <floorf+0xb4>
80005050:	00050413          	mv	s0,a0
80005054:	02095a63          	bgez	s2,80005088 <floorf+0x6c>
80005058:	00004797          	auipc	a5,0x4
8000505c:	e6078793          	addi	a5,a5,-416 # 80008eb8 <_etext+0x12bc>
80005060:	0007a583          	lw	a1,0(a5)
80005064:	2d8010ef          	jal	ra,8000633c <__addsf3>
80005068:	00000593          	li	a1,0
8000506c:	2f1010ef          	jal	ra,80006b5c <__gesf2>
80005070:	00a05863          	blez	a0,80005080 <floorf+0x64>
80005074:	08045663          	bgez	s0,80005100 <floorf+0xe4>
80005078:	00048463          	beqz	s1,80005080 <floorf+0x64>
8000507c:	bf800437          	lui	s0,0xbf800
80005080:	00040593          	mv	a1,s0
80005084:	05c0006f          	j	800050e0 <floorf+0xc4>
80005088:	008009b7          	lui	s3,0x800
8000508c:	fff98493          	addi	s1,s3,-1 # 7fffff <_stack_size+0x7f7fff>
80005090:	4124d4b3          	sra	s1,s1,s2
80005094:	00a4f7b3          	and	a5,s1,a0
80005098:	04078463          	beqz	a5,800050e0 <floorf+0xc4>
8000509c:	00004797          	auipc	a5,0x4
800050a0:	e1c78793          	addi	a5,a5,-484 # 80008eb8 <_etext+0x12bc>
800050a4:	0007a583          	lw	a1,0(a5)
800050a8:	294010ef          	jal	ra,8000633c <__addsf3>
800050ac:	00000593          	li	a1,0
800050b0:	2ad010ef          	jal	ra,80006b5c <__gesf2>
800050b4:	fca056e3          	blez	a0,80005080 <floorf+0x64>
800050b8:	00045663          	bgez	s0,800050c4 <floorf+0xa8>
800050bc:	4129d933          	sra	s2,s3,s2
800050c0:	01240433          	add	s0,s0,s2
800050c4:	fff4c493          	not	s1,s1
800050c8:	0084f433          	and	s0,s1,s0
800050cc:	fb5ff06f          	j	80005080 <floorf+0x64>
800050d0:	7f8007b7          	lui	a5,0x7f800
800050d4:	00f4e663          	bltu	s1,a5,800050e0 <floorf+0xc4>
800050d8:	264010ef          	jal	ra,8000633c <__addsf3>
800050dc:	00050593          	mv	a1,a0
800050e0:	01c12083          	lw	ra,28(sp)
800050e4:	01812403          	lw	s0,24(sp)
800050e8:	01412483          	lw	s1,20(sp)
800050ec:	01012903          	lw	s2,16(sp)
800050f0:	00c12983          	lw	s3,12(sp)
800050f4:	00058513          	mv	a0,a1
800050f8:	02010113          	addi	sp,sp,32
800050fc:	00008067          	ret
80005100:	00000413          	li	s0,0
80005104:	f7dff06f          	j	80005080 <floorf+0x64>

80005108 <scalbnf>:
80005108:	00151793          	slli	a5,a0,0x1
8000510c:	0017d793          	srli	a5,a5,0x1
80005110:	00050713          	mv	a4,a0
80005114:	10078e63          	beqz	a5,80005230 <scalbnf+0x128>
80005118:	ff010113          	addi	sp,sp,-16
8000511c:	00112623          	sw	ra,12(sp)
80005120:	00812423          	sw	s0,8(sp)
80005124:	7f800637          	lui	a2,0x7f800
80005128:	00c7ea63          	bltu	a5,a2,8000513c <scalbnf+0x34>
8000512c:	00050593          	mv	a1,a0
80005130:	20c010ef          	jal	ra,8000633c <__addsf3>
80005134:	00050713          	mv	a4,a0
80005138:	09c0006f          	j	800051d4 <scalbnf+0xcc>
8000513c:	00c576b3          	and	a3,a0,a2
80005140:	00058413          	mv	s0,a1
80005144:	06069863          	bnez	a3,800051b4 <scalbnf+0xac>
80005148:	00004797          	auipc	a5,0x4
8000514c:	d7478793          	addi	a5,a5,-652 # 80008ebc <_etext+0x12c0>
80005150:	0007a583          	lw	a1,0(a5)
80005154:	2c5010ef          	jal	ra,80006c18 <__mulsf3>
80005158:	ffff47b7          	lui	a5,0xffff4
8000515c:	cb078793          	addi	a5,a5,-848 # ffff3cb0 <_stack_top+0x7fbf3cb0>
80005160:	00050713          	mv	a4,a0
80005164:	02f44e63          	blt	s0,a5,800051a0 <scalbnf+0x98>
80005168:	41755793          	srai	a5,a0,0x17
8000516c:	0ff7f793          	andi	a5,a5,255
80005170:	fe778793          	addi	a5,a5,-25
80005174:	008787b3          	add	a5,a5,s0
80005178:	0fe00693          	li	a3,254
8000517c:	04f6d063          	bge	a3,a5,800051bc <scalbnf+0xb4>
80005180:	00004797          	auipc	a5,0x4
80005184:	d3878793          	addi	a5,a5,-712 # 80008eb8 <_etext+0x12bc>
80005188:	0007a403          	lw	s0,0(a5)
8000518c:	00070593          	mv	a1,a4
80005190:	00040513          	mv	a0,s0
80005194:	0a0000ef          	jal	ra,80005234 <copysignf>
80005198:	00040593          	mv	a1,s0
8000519c:	0100006f          	j	800051ac <scalbnf+0xa4>
800051a0:	00004797          	auipc	a5,0x4
800051a4:	d2078793          	addi	a5,a5,-736 # 80008ec0 <_etext+0x12c4>
800051a8:	0007a583          	lw	a1,0(a5)
800051ac:	26d010ef          	jal	ra,80006c18 <__mulsf3>
800051b0:	f85ff06f          	j	80005134 <scalbnf+0x2c>
800051b4:	0177d793          	srli	a5,a5,0x17
800051b8:	fbdff06f          	j	80005174 <scalbnf+0x6c>
800051bc:	02f05663          	blez	a5,800051e8 <scalbnf+0xe0>
800051c0:	80800737          	lui	a4,0x80800
800051c4:	fff70713          	addi	a4,a4,-1 # 807fffff <_stack_top+0x3fffff>
800051c8:	00e57533          	and	a0,a0,a4
800051cc:	01779793          	slli	a5,a5,0x17
800051d0:	00f56733          	or	a4,a0,a5
800051d4:	00c12083          	lw	ra,12(sp)
800051d8:	00812403          	lw	s0,8(sp)
800051dc:	00070513          	mv	a0,a4
800051e0:	01010113          	addi	sp,sp,16
800051e4:	00008067          	ret
800051e8:	fea00693          	li	a3,-22
800051ec:	00d7de63          	bge	a5,a3,80005208 <scalbnf+0x100>
800051f0:	0000c7b7          	lui	a5,0xc
800051f4:	35078793          	addi	a5,a5,848 # c350 <_stack_size+0x4350>
800051f8:	f887c4e3          	blt	a5,s0,80005180 <scalbnf+0x78>
800051fc:	00004797          	auipc	a5,0x4
80005200:	cc478793          	addi	a5,a5,-828 # 80008ec0 <_etext+0x12c4>
80005204:	f85ff06f          	j	80005188 <scalbnf+0x80>
80005208:	80800737          	lui	a4,0x80800
8000520c:	fff70713          	addi	a4,a4,-1 # 807fffff <_stack_top+0x3fffff>
80005210:	01978793          	addi	a5,a5,25
80005214:	00e57533          	and	a0,a0,a4
80005218:	01779793          	slli	a5,a5,0x17
8000521c:	00004717          	auipc	a4,0x4
80005220:	ca870713          	addi	a4,a4,-856 # 80008ec4 <_etext+0x12c8>
80005224:	00072583          	lw	a1,0(a4)
80005228:	00a7e533          	or	a0,a5,a0
8000522c:	f81ff06f          	j	800051ac <scalbnf+0xa4>
80005230:	00008067          	ret

80005234 <copysignf>:
80005234:	800007b7          	lui	a5,0x80000
80005238:	fff7c713          	not	a4,a5
8000523c:	00e57533          	and	a0,a0,a4
80005240:	00b7f5b3          	and	a1,a5,a1
80005244:	00b56533          	or	a0,a0,a1
80005248:	00008067          	ret

8000524c <__divdi3>:
8000524c:	fc010113          	addi	sp,sp,-64
80005250:	02812c23          	sw	s0,56(sp)
80005254:	03212823          	sw	s2,48(sp)
80005258:	03512223          	sw	s5,36(sp)
8000525c:	02112e23          	sw	ra,60(sp)
80005260:	02912a23          	sw	s1,52(sp)
80005264:	03312623          	sw	s3,44(sp)
80005268:	03412423          	sw	s4,40(sp)
8000526c:	03612023          	sw	s6,32(sp)
80005270:	01712e23          	sw	s7,28(sp)
80005274:	01812c23          	sw	s8,24(sp)
80005278:	01912a23          	sw	s9,20(sp)
8000527c:	01a12823          	sw	s10,16(sp)
80005280:	01b12623          	sw	s11,12(sp)
80005284:	00050a93          	mv	s5,a0
80005288:	00058413          	mv	s0,a1
8000528c:	00000913          	li	s2,0
80005290:	0005dc63          	bgez	a1,800052a8 <__divdi3+0x5c>
80005294:	40a00ab3          	neg	s5,a0
80005298:	015035b3          	snez	a1,s5
8000529c:	40800433          	neg	s0,s0
800052a0:	40b40433          	sub	s0,s0,a1
800052a4:	fff00913          	li	s2,-1
800052a8:	0006dc63          	bgez	a3,800052c0 <__divdi3+0x74>
800052ac:	40c00633          	neg	a2,a2
800052b0:	00c037b3          	snez	a5,a2
800052b4:	40d006b3          	neg	a3,a3
800052b8:	fff94913          	not	s2,s2
800052bc:	40f686b3          	sub	a3,a3,a5
800052c0:	00060993          	mv	s3,a2
800052c4:	00068a13          	mv	s4,a3
800052c8:	000a8b13          	mv	s6,s5
800052cc:	00040b93          	mv	s7,s0
800052d0:	3a069263          	bnez	a3,80005674 <__divdi3+0x428>
800052d4:	00003497          	auipc	s1,0x3
800052d8:	82848493          	addi	s1,s1,-2008 # 80007afc <__clz_tab>
800052dc:	12c47663          	bgeu	s0,a2,80005408 <__divdi3+0x1bc>
800052e0:	000107b7          	lui	a5,0x10
800052e4:	10f67863          	bgeu	a2,a5,800053f4 <__divdi3+0x1a8>
800052e8:	0ff00713          	li	a4,255
800052ec:	00c73733          	sltu	a4,a4,a2
800052f0:	00371713          	slli	a4,a4,0x3
800052f4:	00e657b3          	srl	a5,a2,a4
800052f8:	00f484b3          	add	s1,s1,a5
800052fc:	0004c683          	lbu	a3,0(s1)
80005300:	00e68733          	add	a4,a3,a4
80005304:	02000693          	li	a3,32
80005308:	40e686b3          	sub	a3,a3,a4
8000530c:	00068c63          	beqz	a3,80005324 <__divdi3+0xd8>
80005310:	00d41433          	sll	s0,s0,a3
80005314:	00ead733          	srl	a4,s5,a4
80005318:	00d619b3          	sll	s3,a2,a3
8000531c:	00876bb3          	or	s7,a4,s0
80005320:	00da9b33          	sll	s6,s5,a3
80005324:	0109da93          	srli	s5,s3,0x10
80005328:	000a8593          	mv	a1,s5
8000532c:	000b8513          	mv	a0,s7
80005330:	2d4020ef          	jal	ra,80007604 <__umodsi3>
80005334:	00050493          	mv	s1,a0
80005338:	000a8593          	mv	a1,s5
8000533c:	01099c13          	slli	s8,s3,0x10
80005340:	000b8513          	mv	a0,s7
80005344:	278020ef          	jal	ra,800075bc <__udivsi3>
80005348:	010c5c13          	srli	s8,s8,0x10
8000534c:	00050413          	mv	s0,a0
80005350:	00050593          	mv	a1,a0
80005354:	000c0513          	mv	a0,s8
80005358:	1a8020ef          	jal	ra,80007500 <__mulsi3>
8000535c:	01049493          	slli	s1,s1,0x10
80005360:	010b5713          	srli	a4,s6,0x10
80005364:	00e4e733          	or	a4,s1,a4
80005368:	00040a13          	mv	s4,s0
8000536c:	00a77e63          	bgeu	a4,a0,80005388 <__divdi3+0x13c>
80005370:	01370733          	add	a4,a4,s3
80005374:	fff40a13          	addi	s4,s0,-1 # bf7fffff <_stack_top+0x3f3fffff>
80005378:	01376863          	bltu	a4,s3,80005388 <__divdi3+0x13c>
8000537c:	00a77663          	bgeu	a4,a0,80005388 <__divdi3+0x13c>
80005380:	ffe40a13          	addi	s4,s0,-2
80005384:	01370733          	add	a4,a4,s3
80005388:	40a70433          	sub	s0,a4,a0
8000538c:	000a8593          	mv	a1,s5
80005390:	00040513          	mv	a0,s0
80005394:	270020ef          	jal	ra,80007604 <__umodsi3>
80005398:	00050493          	mv	s1,a0
8000539c:	000a8593          	mv	a1,s5
800053a0:	00040513          	mv	a0,s0
800053a4:	218020ef          	jal	ra,800075bc <__udivsi3>
800053a8:	010b1b13          	slli	s6,s6,0x10
800053ac:	00050413          	mv	s0,a0
800053b0:	00050593          	mv	a1,a0
800053b4:	01049493          	slli	s1,s1,0x10
800053b8:	000c0513          	mv	a0,s8
800053bc:	010b5b13          	srli	s6,s6,0x10
800053c0:	140020ef          	jal	ra,80007500 <__mulsi3>
800053c4:	0164eb33          	or	s6,s1,s6
800053c8:	00040613          	mv	a2,s0
800053cc:	00ab7c63          	bgeu	s6,a0,800053e4 <__divdi3+0x198>
800053d0:	01698b33          	add	s6,s3,s6
800053d4:	fff40613          	addi	a2,s0,-1
800053d8:	013b6663          	bltu	s6,s3,800053e4 <__divdi3+0x198>
800053dc:	00ab7463          	bgeu	s6,a0,800053e4 <__divdi3+0x198>
800053e0:	ffe40613          	addi	a2,s0,-2
800053e4:	010a1793          	slli	a5,s4,0x10
800053e8:	00c7e7b3          	or	a5,a5,a2
800053ec:	00000a13          	li	s4,0
800053f0:	12c0006f          	j	8000551c <__divdi3+0x2d0>
800053f4:	010007b7          	lui	a5,0x1000
800053f8:	01000713          	li	a4,16
800053fc:	eef66ce3          	bltu	a2,a5,800052f4 <__divdi3+0xa8>
80005400:	01800713          	li	a4,24
80005404:	ef1ff06f          	j	800052f4 <__divdi3+0xa8>
80005408:	00061a63          	bnez	a2,8000541c <__divdi3+0x1d0>
8000540c:	00000593          	li	a1,0
80005410:	00100513          	li	a0,1
80005414:	1a8020ef          	jal	ra,800075bc <__udivsi3>
80005418:	00050993          	mv	s3,a0
8000541c:	000107b7          	lui	a5,0x10
80005420:	14f9fa63          	bgeu	s3,a5,80005574 <__divdi3+0x328>
80005424:	0ff00793          	li	a5,255
80005428:	0137f463          	bgeu	a5,s3,80005430 <__divdi3+0x1e4>
8000542c:	00800a13          	li	s4,8
80005430:	0149d7b3          	srl	a5,s3,s4
80005434:	00f484b3          	add	s1,s1,a5
80005438:	0004c703          	lbu	a4,0(s1)
8000543c:	02000693          	li	a3,32
80005440:	01470733          	add	a4,a4,s4
80005444:	40e686b3          	sub	a3,a3,a4
80005448:	14069063          	bnez	a3,80005588 <__divdi3+0x33c>
8000544c:	41340433          	sub	s0,s0,s3
80005450:	00100a13          	li	s4,1
80005454:	0109da93          	srli	s5,s3,0x10
80005458:	000a8593          	mv	a1,s5
8000545c:	00040513          	mv	a0,s0
80005460:	1a4020ef          	jal	ra,80007604 <__umodsi3>
80005464:	00050493          	mv	s1,a0
80005468:	000a8593          	mv	a1,s5
8000546c:	00040513          	mv	a0,s0
80005470:	01099b93          	slli	s7,s3,0x10
80005474:	148020ef          	jal	ra,800075bc <__udivsi3>
80005478:	010bdb93          	srli	s7,s7,0x10
8000547c:	00050413          	mv	s0,a0
80005480:	00050593          	mv	a1,a0
80005484:	000b8513          	mv	a0,s7
80005488:	078020ef          	jal	ra,80007500 <__mulsi3>
8000548c:	01049493          	slli	s1,s1,0x10
80005490:	010b5713          	srli	a4,s6,0x10
80005494:	00e4e733          	or	a4,s1,a4
80005498:	00040c13          	mv	s8,s0
8000549c:	00a77e63          	bgeu	a4,a0,800054b8 <__divdi3+0x26c>
800054a0:	01370733          	add	a4,a4,s3
800054a4:	fff40c13          	addi	s8,s0,-1
800054a8:	01376863          	bltu	a4,s3,800054b8 <__divdi3+0x26c>
800054ac:	00a77663          	bgeu	a4,a0,800054b8 <__divdi3+0x26c>
800054b0:	ffe40c13          	addi	s8,s0,-2
800054b4:	01370733          	add	a4,a4,s3
800054b8:	40a70433          	sub	s0,a4,a0
800054bc:	000a8593          	mv	a1,s5
800054c0:	00040513          	mv	a0,s0
800054c4:	140020ef          	jal	ra,80007604 <__umodsi3>
800054c8:	00050493          	mv	s1,a0
800054cc:	000a8593          	mv	a1,s5
800054d0:	00040513          	mv	a0,s0
800054d4:	0e8020ef          	jal	ra,800075bc <__udivsi3>
800054d8:	010b1b13          	slli	s6,s6,0x10
800054dc:	00050413          	mv	s0,a0
800054e0:	00050593          	mv	a1,a0
800054e4:	01049493          	slli	s1,s1,0x10
800054e8:	000b8513          	mv	a0,s7
800054ec:	010b5b13          	srli	s6,s6,0x10
800054f0:	010020ef          	jal	ra,80007500 <__mulsi3>
800054f4:	0164eb33          	or	s6,s1,s6
800054f8:	00040613          	mv	a2,s0
800054fc:	00ab7c63          	bgeu	s6,a0,80005514 <__divdi3+0x2c8>
80005500:	01698b33          	add	s6,s3,s6
80005504:	fff40613          	addi	a2,s0,-1
80005508:	013b6663          	bltu	s6,s3,80005514 <__divdi3+0x2c8>
8000550c:	00ab7463          	bgeu	s6,a0,80005514 <__divdi3+0x2c8>
80005510:	ffe40613          	addi	a2,s0,-2
80005514:	010c1793          	slli	a5,s8,0x10
80005518:	00c7e7b3          	or	a5,a5,a2
8000551c:	000a0593          	mv	a1,s4
80005520:	00090a63          	beqz	s2,80005534 <__divdi3+0x2e8>
80005524:	40f007b3          	neg	a5,a5
80005528:	00f03733          	snez	a4,a5
8000552c:	414005b3          	neg	a1,s4
80005530:	40e585b3          	sub	a1,a1,a4
80005534:	00078513          	mv	a0,a5
80005538:	03c12083          	lw	ra,60(sp)
8000553c:	03812403          	lw	s0,56(sp)
80005540:	03412483          	lw	s1,52(sp)
80005544:	03012903          	lw	s2,48(sp)
80005548:	02c12983          	lw	s3,44(sp)
8000554c:	02812a03          	lw	s4,40(sp)
80005550:	02412a83          	lw	s5,36(sp)
80005554:	02012b03          	lw	s6,32(sp)
80005558:	01c12b83          	lw	s7,28(sp)
8000555c:	01812c03          	lw	s8,24(sp)
80005560:	01412c83          	lw	s9,20(sp)
80005564:	01012d03          	lw	s10,16(sp)
80005568:	00c12d83          	lw	s11,12(sp)
8000556c:	04010113          	addi	sp,sp,64
80005570:	00008067          	ret
80005574:	010007b7          	lui	a5,0x1000
80005578:	01000a13          	li	s4,16
8000557c:	eaf9eae3          	bltu	s3,a5,80005430 <__divdi3+0x1e4>
80005580:	01800a13          	li	s4,24
80005584:	eadff06f          	j	80005430 <__divdi3+0x1e4>
80005588:	00d999b3          	sll	s3,s3,a3
8000558c:	00e45a33          	srl	s4,s0,a4
80005590:	0109db93          	srli	s7,s3,0x10
80005594:	00ead733          	srl	a4,s5,a4
80005598:	00d41433          	sll	s0,s0,a3
8000559c:	000b8593          	mv	a1,s7
800055a0:	000a0513          	mv	a0,s4
800055a4:	00876433          	or	s0,a4,s0
800055a8:	00da9b33          	sll	s6,s5,a3
800055ac:	058020ef          	jal	ra,80007604 <__umodsi3>
800055b0:	00050493          	mv	s1,a0
800055b4:	000b8593          	mv	a1,s7
800055b8:	000a0513          	mv	a0,s4
800055bc:	01099c13          	slli	s8,s3,0x10
800055c0:	7fd010ef          	jal	ra,800075bc <__udivsi3>
800055c4:	010c5c13          	srli	s8,s8,0x10
800055c8:	00050a93          	mv	s5,a0
800055cc:	00050593          	mv	a1,a0
800055d0:	000c0513          	mv	a0,s8
800055d4:	72d010ef          	jal	ra,80007500 <__mulsi3>
800055d8:	01049493          	slli	s1,s1,0x10
800055dc:	01045713          	srli	a4,s0,0x10
800055e0:	00e4e733          	or	a4,s1,a4
800055e4:	000a8a13          	mv	s4,s5
800055e8:	00a77e63          	bgeu	a4,a0,80005604 <__divdi3+0x3b8>
800055ec:	01370733          	add	a4,a4,s3
800055f0:	fffa8a13          	addi	s4,s5,-1
800055f4:	01376863          	bltu	a4,s3,80005604 <__divdi3+0x3b8>
800055f8:	00a77663          	bgeu	a4,a0,80005604 <__divdi3+0x3b8>
800055fc:	ffea8a13          	addi	s4,s5,-2
80005600:	01370733          	add	a4,a4,s3
80005604:	40a70ab3          	sub	s5,a4,a0
80005608:	000b8593          	mv	a1,s7
8000560c:	000a8513          	mv	a0,s5
80005610:	7f5010ef          	jal	ra,80007604 <__umodsi3>
80005614:	00050493          	mv	s1,a0
80005618:	000b8593          	mv	a1,s7
8000561c:	000a8513          	mv	a0,s5
80005620:	79d010ef          	jal	ra,800075bc <__udivsi3>
80005624:	00050593          	mv	a1,a0
80005628:	00050a93          	mv	s5,a0
8000562c:	000c0513          	mv	a0,s8
80005630:	6d1010ef          	jal	ra,80007500 <__mulsi3>
80005634:	01041713          	slli	a4,s0,0x10
80005638:	01049493          	slli	s1,s1,0x10
8000563c:	01075713          	srli	a4,a4,0x10
80005640:	00e4e7b3          	or	a5,s1,a4
80005644:	000a8593          	mv	a1,s5
80005648:	00a7fe63          	bgeu	a5,a0,80005664 <__divdi3+0x418>
8000564c:	013787b3          	add	a5,a5,s3
80005650:	fffa8593          	addi	a1,s5,-1
80005654:	0137e863          	bltu	a5,s3,80005664 <__divdi3+0x418>
80005658:	00a7f663          	bgeu	a5,a0,80005664 <__divdi3+0x418>
8000565c:	ffea8593          	addi	a1,s5,-2
80005660:	013787b3          	add	a5,a5,s3
80005664:	010a1a13          	slli	s4,s4,0x10
80005668:	40a78433          	sub	s0,a5,a0
8000566c:	00ba6a33          	or	s4,s4,a1
80005670:	de5ff06f          	j	80005454 <__divdi3+0x208>
80005674:	1ed46c63          	bltu	s0,a3,8000586c <__divdi3+0x620>
80005678:	000107b7          	lui	a5,0x10
8000567c:	04f6f463          	bgeu	a3,a5,800056c4 <__divdi3+0x478>
80005680:	0ff00b93          	li	s7,255
80005684:	00dbb733          	sltu	a4,s7,a3
80005688:	00371713          	slli	a4,a4,0x3
8000568c:	00e6d5b3          	srl	a1,a3,a4
80005690:	00002797          	auipc	a5,0x2
80005694:	46c78793          	addi	a5,a5,1132 # 80007afc <__clz_tab>
80005698:	00b787b3          	add	a5,a5,a1
8000569c:	0007cb83          	lbu	s7,0(a5)
800056a0:	02000593          	li	a1,32
800056a4:	00eb8bb3          	add	s7,s7,a4
800056a8:	41758a33          	sub	s4,a1,s7
800056ac:	020a1663          	bnez	s4,800056d8 <__divdi3+0x48c>
800056b0:	00100793          	li	a5,1
800056b4:	e686e4e3          	bltu	a3,s0,8000551c <__divdi3+0x2d0>
800056b8:	00cab633          	sltu	a2,s5,a2
800056bc:	00164793          	xori	a5,a2,1
800056c0:	e5dff06f          	j	8000551c <__divdi3+0x2d0>
800056c4:	010007b7          	lui	a5,0x1000
800056c8:	01000713          	li	a4,16
800056cc:	fcf6e0e3          	bltu	a3,a5,8000568c <__divdi3+0x440>
800056d0:	01800713          	li	a4,24
800056d4:	fb9ff06f          	j	8000568c <__divdi3+0x440>
800056d8:	01765d33          	srl	s10,a2,s7
800056dc:	014696b3          	sll	a3,a3,s4
800056e0:	00dd6d33          	or	s10,s10,a3
800056e4:	017454b3          	srl	s1,s0,s7
800056e8:	010d5c13          	srli	s8,s10,0x10
800056ec:	000c0593          	mv	a1,s8
800056f0:	00048513          	mv	a0,s1
800056f4:	014619b3          	sll	s3,a2,s4
800056f8:	01441433          	sll	s0,s0,s4
800056fc:	709010ef          	jal	ra,80007604 <__umodsi3>
80005700:	017adbb3          	srl	s7,s5,s7
80005704:	008bebb3          	or	s7,s7,s0
80005708:	000c0593          	mv	a1,s8
8000570c:	00050413          	mv	s0,a0
80005710:	010d1c93          	slli	s9,s10,0x10
80005714:	00048513          	mv	a0,s1
80005718:	6a5010ef          	jal	ra,800075bc <__udivsi3>
8000571c:	010cdc93          	srli	s9,s9,0x10
80005720:	00050493          	mv	s1,a0
80005724:	00050593          	mv	a1,a0
80005728:	000c8513          	mv	a0,s9
8000572c:	5d5010ef          	jal	ra,80007500 <__mulsi3>
80005730:	01041413          	slli	s0,s0,0x10
80005734:	010bd713          	srli	a4,s7,0x10
80005738:	00e46733          	or	a4,s0,a4
8000573c:	00048d93          	mv	s11,s1
80005740:	00a77e63          	bgeu	a4,a0,8000575c <__divdi3+0x510>
80005744:	01a70733          	add	a4,a4,s10
80005748:	fff48d93          	addi	s11,s1,-1
8000574c:	01a76863          	bltu	a4,s10,8000575c <__divdi3+0x510>
80005750:	00a77663          	bgeu	a4,a0,8000575c <__divdi3+0x510>
80005754:	ffe48d93          	addi	s11,s1,-2
80005758:	01a70733          	add	a4,a4,s10
8000575c:	40a704b3          	sub	s1,a4,a0
80005760:	000c0593          	mv	a1,s8
80005764:	00048513          	mv	a0,s1
80005768:	69d010ef          	jal	ra,80007604 <__umodsi3>
8000576c:	00050b13          	mv	s6,a0
80005770:	000c0593          	mv	a1,s8
80005774:	00048513          	mv	a0,s1
80005778:	645010ef          	jal	ra,800075bc <__udivsi3>
8000577c:	010b9413          	slli	s0,s7,0x10
80005780:	00050493          	mv	s1,a0
80005784:	00050593          	mv	a1,a0
80005788:	010b1b13          	slli	s6,s6,0x10
8000578c:	000c8513          	mv	a0,s9
80005790:	01045413          	srli	s0,s0,0x10
80005794:	56d010ef          	jal	ra,80007500 <__mulsi3>
80005798:	008b6433          	or	s0,s6,s0
8000579c:	00048613          	mv	a2,s1
800057a0:	00a47e63          	bgeu	s0,a0,800057bc <__divdi3+0x570>
800057a4:	01a40433          	add	s0,s0,s10
800057a8:	fff48613          	addi	a2,s1,-1
800057ac:	01a46863          	bltu	s0,s10,800057bc <__divdi3+0x570>
800057b0:	00a47663          	bgeu	s0,a0,800057bc <__divdi3+0x570>
800057b4:	ffe48613          	addi	a2,s1,-2
800057b8:	01a40433          	add	s0,s0,s10
800057bc:	010d9793          	slli	a5,s11,0x10
800057c0:	00010337          	lui	t1,0x10
800057c4:	00c7e7b3          	or	a5,a5,a2
800057c8:	fff30813          	addi	a6,t1,-1 # ffff <_stack_size+0x7fff>
800057cc:	0107f733          	and	a4,a5,a6
800057d0:	0109f833          	and	a6,s3,a6
800057d4:	40a40433          	sub	s0,s0,a0
800057d8:	0107de13          	srli	t3,a5,0x10
800057dc:	0109d993          	srli	s3,s3,0x10
800057e0:	00070513          	mv	a0,a4
800057e4:	00080593          	mv	a1,a6
800057e8:	519010ef          	jal	ra,80007500 <__mulsi3>
800057ec:	00050893          	mv	a7,a0
800057f0:	00098593          	mv	a1,s3
800057f4:	00070513          	mv	a0,a4
800057f8:	509010ef          	jal	ra,80007500 <__mulsi3>
800057fc:	00050713          	mv	a4,a0
80005800:	00080593          	mv	a1,a6
80005804:	000e0513          	mv	a0,t3
80005808:	4f9010ef          	jal	ra,80007500 <__mulsi3>
8000580c:	00050813          	mv	a6,a0
80005810:	00098593          	mv	a1,s3
80005814:	000e0513          	mv	a0,t3
80005818:	4e9010ef          	jal	ra,80007500 <__mulsi3>
8000581c:	01070733          	add	a4,a4,a6
80005820:	0108d693          	srli	a3,a7,0x10
80005824:	00d70733          	add	a4,a4,a3
80005828:	01077463          	bgeu	a4,a6,80005830 <__divdi3+0x5e4>
8000582c:	00650533          	add	a0,a0,t1
80005830:	01075693          	srli	a3,a4,0x10
80005834:	00a68533          	add	a0,a3,a0
80005838:	02a46663          	bltu	s0,a0,80005864 <__divdi3+0x618>
8000583c:	baa418e3          	bne	s0,a0,800053ec <__divdi3+0x1a0>
80005840:	000106b7          	lui	a3,0x10
80005844:	fff68693          	addi	a3,a3,-1 # ffff <_stack_size+0x7fff>
80005848:	00d77733          	and	a4,a4,a3
8000584c:	01071713          	slli	a4,a4,0x10
80005850:	00d8f8b3          	and	a7,a7,a3
80005854:	014a9ab3          	sll	s5,s5,s4
80005858:	01170733          	add	a4,a4,a7
8000585c:	00000a13          	li	s4,0
80005860:	caeafee3          	bgeu	s5,a4,8000551c <__divdi3+0x2d0>
80005864:	fff78793          	addi	a5,a5,-1 # ffffff <_stack_size+0xff7fff>
80005868:	b85ff06f          	j	800053ec <__divdi3+0x1a0>
8000586c:	00000a13          	li	s4,0
80005870:	00000793          	li	a5,0
80005874:	ca9ff06f          	j	8000551c <__divdi3+0x2d0>

80005878 <__udivdi3>:
80005878:	fd010113          	addi	sp,sp,-48
8000587c:	02912223          	sw	s1,36(sp)
80005880:	01612823          	sw	s6,16(sp)
80005884:	02112623          	sw	ra,44(sp)
80005888:	02812423          	sw	s0,40(sp)
8000588c:	03212023          	sw	s2,32(sp)
80005890:	01312e23          	sw	s3,28(sp)
80005894:	01412c23          	sw	s4,24(sp)
80005898:	01512a23          	sw	s5,20(sp)
8000589c:	01712623          	sw	s7,12(sp)
800058a0:	01812423          	sw	s8,8(sp)
800058a4:	01912223          	sw	s9,4(sp)
800058a8:	00050b13          	mv	s6,a0
800058ac:	00058493          	mv	s1,a1
800058b0:	38069c63          	bnez	a3,80005c48 <__udivdi3+0x3d0>
800058b4:	00060413          	mv	s0,a2
800058b8:	00050993          	mv	s3,a0
800058bc:	00002917          	auipc	s2,0x2
800058c0:	24090913          	addi	s2,s2,576 # 80007afc <__clz_tab>
800058c4:	12c5f863          	bgeu	a1,a2,800059f4 <__udivdi3+0x17c>
800058c8:	000107b7          	lui	a5,0x10
800058cc:	00058a93          	mv	s5,a1
800058d0:	10f67863          	bgeu	a2,a5,800059e0 <__udivdi3+0x168>
800058d4:	0ff00693          	li	a3,255
800058d8:	00c6b6b3          	sltu	a3,a3,a2
800058dc:	00369693          	slli	a3,a3,0x3
800058e0:	00d657b3          	srl	a5,a2,a3
800058e4:	00f90933          	add	s2,s2,a5
800058e8:	00094703          	lbu	a4,0(s2)
800058ec:	00d706b3          	add	a3,a4,a3
800058f0:	02000713          	li	a4,32
800058f4:	40d70733          	sub	a4,a4,a3
800058f8:	00070c63          	beqz	a4,80005910 <__udivdi3+0x98>
800058fc:	00e494b3          	sll	s1,s1,a4
80005900:	00db56b3          	srl	a3,s6,a3
80005904:	00e61433          	sll	s0,a2,a4
80005908:	0096eab3          	or	s5,a3,s1
8000590c:	00eb19b3          	sll	s3,s6,a4
80005910:	01045b13          	srli	s6,s0,0x10
80005914:	000b0593          	mv	a1,s6
80005918:	000a8513          	mv	a0,s5
8000591c:	4e9010ef          	jal	ra,80007604 <__umodsi3>
80005920:	00050913          	mv	s2,a0
80005924:	000b0593          	mv	a1,s6
80005928:	01041b93          	slli	s7,s0,0x10
8000592c:	000a8513          	mv	a0,s5
80005930:	48d010ef          	jal	ra,800075bc <__udivsi3>
80005934:	010bdb93          	srli	s7,s7,0x10
80005938:	00050493          	mv	s1,a0
8000593c:	00050593          	mv	a1,a0
80005940:	000b8513          	mv	a0,s7
80005944:	3bd010ef          	jal	ra,80007500 <__mulsi3>
80005948:	01091913          	slli	s2,s2,0x10
8000594c:	0109d713          	srli	a4,s3,0x10
80005950:	00e96733          	or	a4,s2,a4
80005954:	00048a13          	mv	s4,s1
80005958:	00a77e63          	bgeu	a4,a0,80005974 <__udivdi3+0xfc>
8000595c:	00870733          	add	a4,a4,s0
80005960:	fff48a13          	addi	s4,s1,-1
80005964:	00876863          	bltu	a4,s0,80005974 <__udivdi3+0xfc>
80005968:	00a77663          	bgeu	a4,a0,80005974 <__udivdi3+0xfc>
8000596c:	ffe48a13          	addi	s4,s1,-2
80005970:	00870733          	add	a4,a4,s0
80005974:	40a704b3          	sub	s1,a4,a0
80005978:	000b0593          	mv	a1,s6
8000597c:	00048513          	mv	a0,s1
80005980:	485010ef          	jal	ra,80007604 <__umodsi3>
80005984:	00050913          	mv	s2,a0
80005988:	000b0593          	mv	a1,s6
8000598c:	00048513          	mv	a0,s1
80005990:	42d010ef          	jal	ra,800075bc <__udivsi3>
80005994:	01099993          	slli	s3,s3,0x10
80005998:	00050493          	mv	s1,a0
8000599c:	00050593          	mv	a1,a0
800059a0:	01091913          	slli	s2,s2,0x10
800059a4:	000b8513          	mv	a0,s7
800059a8:	0109d993          	srli	s3,s3,0x10
800059ac:	355010ef          	jal	ra,80007500 <__mulsi3>
800059b0:	013969b3          	or	s3,s2,s3
800059b4:	00048613          	mv	a2,s1
800059b8:	00a9fc63          	bgeu	s3,a0,800059d0 <__udivdi3+0x158>
800059bc:	013409b3          	add	s3,s0,s3
800059c0:	fff48613          	addi	a2,s1,-1
800059c4:	0089e663          	bltu	s3,s0,800059d0 <__udivdi3+0x158>
800059c8:	00a9f463          	bgeu	s3,a0,800059d0 <__udivdi3+0x158>
800059cc:	ffe48613          	addi	a2,s1,-2
800059d0:	010a1793          	slli	a5,s4,0x10
800059d4:	00c7e7b3          	or	a5,a5,a2
800059d8:	00000a13          	li	s4,0
800059dc:	1300006f          	j	80005b0c <__udivdi3+0x294>
800059e0:	010007b7          	lui	a5,0x1000
800059e4:	01000693          	li	a3,16
800059e8:	eef66ce3          	bltu	a2,a5,800058e0 <__udivdi3+0x68>
800059ec:	01800693          	li	a3,24
800059f0:	ef1ff06f          	j	800058e0 <__udivdi3+0x68>
800059f4:	00068a13          	mv	s4,a3
800059f8:	00061a63          	bnez	a2,80005a0c <__udivdi3+0x194>
800059fc:	00000593          	li	a1,0
80005a00:	00100513          	li	a0,1
80005a04:	3b9010ef          	jal	ra,800075bc <__udivsi3>
80005a08:	00050413          	mv	s0,a0
80005a0c:	000107b7          	lui	a5,0x10
80005a10:	12f47c63          	bgeu	s0,a5,80005b48 <__udivdi3+0x2d0>
80005a14:	0ff00793          	li	a5,255
80005a18:	0087f463          	bgeu	a5,s0,80005a20 <__udivdi3+0x1a8>
80005a1c:	00800a13          	li	s4,8
80005a20:	014457b3          	srl	a5,s0,s4
80005a24:	00f90933          	add	s2,s2,a5
80005a28:	00094683          	lbu	a3,0(s2)
80005a2c:	02000613          	li	a2,32
80005a30:	014686b3          	add	a3,a3,s4
80005a34:	40d60633          	sub	a2,a2,a3
80005a38:	12061263          	bnez	a2,80005b5c <__udivdi3+0x2e4>
80005a3c:	408484b3          	sub	s1,s1,s0
80005a40:	00100a13          	li	s4,1
80005a44:	01045b13          	srli	s6,s0,0x10
80005a48:	000b0593          	mv	a1,s6
80005a4c:	00048513          	mv	a0,s1
80005a50:	3b5010ef          	jal	ra,80007604 <__umodsi3>
80005a54:	00050913          	mv	s2,a0
80005a58:	000b0593          	mv	a1,s6
80005a5c:	00048513          	mv	a0,s1
80005a60:	01041b93          	slli	s7,s0,0x10
80005a64:	359010ef          	jal	ra,800075bc <__udivsi3>
80005a68:	010bdb93          	srli	s7,s7,0x10
80005a6c:	00050493          	mv	s1,a0
80005a70:	00050593          	mv	a1,a0
80005a74:	000b8513          	mv	a0,s7
80005a78:	289010ef          	jal	ra,80007500 <__mulsi3>
80005a7c:	01091913          	slli	s2,s2,0x10
80005a80:	0109d713          	srli	a4,s3,0x10
80005a84:	00e96733          	or	a4,s2,a4
80005a88:	00048a93          	mv	s5,s1
80005a8c:	00a77e63          	bgeu	a4,a0,80005aa8 <__udivdi3+0x230>
80005a90:	00870733          	add	a4,a4,s0
80005a94:	fff48a93          	addi	s5,s1,-1
80005a98:	00876863          	bltu	a4,s0,80005aa8 <__udivdi3+0x230>
80005a9c:	00a77663          	bgeu	a4,a0,80005aa8 <__udivdi3+0x230>
80005aa0:	ffe48a93          	addi	s5,s1,-2
80005aa4:	00870733          	add	a4,a4,s0
80005aa8:	40a704b3          	sub	s1,a4,a0
80005aac:	000b0593          	mv	a1,s6
80005ab0:	00048513          	mv	a0,s1
80005ab4:	351010ef          	jal	ra,80007604 <__umodsi3>
80005ab8:	00050913          	mv	s2,a0
80005abc:	000b0593          	mv	a1,s6
80005ac0:	00048513          	mv	a0,s1
80005ac4:	2f9010ef          	jal	ra,800075bc <__udivsi3>
80005ac8:	01099993          	slli	s3,s3,0x10
80005acc:	00050493          	mv	s1,a0
80005ad0:	00050593          	mv	a1,a0
80005ad4:	01091913          	slli	s2,s2,0x10
80005ad8:	000b8513          	mv	a0,s7
80005adc:	0109d993          	srli	s3,s3,0x10
80005ae0:	221010ef          	jal	ra,80007500 <__mulsi3>
80005ae4:	013969b3          	or	s3,s2,s3
80005ae8:	00048613          	mv	a2,s1
80005aec:	00a9fc63          	bgeu	s3,a0,80005b04 <__udivdi3+0x28c>
80005af0:	013409b3          	add	s3,s0,s3
80005af4:	fff48613          	addi	a2,s1,-1
80005af8:	0089e663          	bltu	s3,s0,80005b04 <__udivdi3+0x28c>
80005afc:	00a9f463          	bgeu	s3,a0,80005b04 <__udivdi3+0x28c>
80005b00:	ffe48613          	addi	a2,s1,-2
80005b04:	010a9793          	slli	a5,s5,0x10
80005b08:	00c7e7b3          	or	a5,a5,a2
80005b0c:	00078513          	mv	a0,a5
80005b10:	000a0593          	mv	a1,s4
80005b14:	02c12083          	lw	ra,44(sp)
80005b18:	02812403          	lw	s0,40(sp)
80005b1c:	02412483          	lw	s1,36(sp)
80005b20:	02012903          	lw	s2,32(sp)
80005b24:	01c12983          	lw	s3,28(sp)
80005b28:	01812a03          	lw	s4,24(sp)
80005b2c:	01412a83          	lw	s5,20(sp)
80005b30:	01012b03          	lw	s6,16(sp)
80005b34:	00c12b83          	lw	s7,12(sp)
80005b38:	00812c03          	lw	s8,8(sp)
80005b3c:	00412c83          	lw	s9,4(sp)
80005b40:	03010113          	addi	sp,sp,48
80005b44:	00008067          	ret
80005b48:	010007b7          	lui	a5,0x1000
80005b4c:	01000a13          	li	s4,16
80005b50:	ecf468e3          	bltu	s0,a5,80005a20 <__udivdi3+0x1a8>
80005b54:	01800a13          	li	s4,24
80005b58:	ec9ff06f          	j	80005a20 <__udivdi3+0x1a8>
80005b5c:	00c41433          	sll	s0,s0,a2
80005b60:	00d4da33          	srl	s4,s1,a3
80005b64:	00cb19b3          	sll	s3,s6,a2
80005b68:	00db56b3          	srl	a3,s6,a3
80005b6c:	01045b13          	srli	s6,s0,0x10
80005b70:	00c494b3          	sll	s1,s1,a2
80005b74:	000b0593          	mv	a1,s6
80005b78:	000a0513          	mv	a0,s4
80005b7c:	0096eab3          	or	s5,a3,s1
80005b80:	285010ef          	jal	ra,80007604 <__umodsi3>
80005b84:	00050913          	mv	s2,a0
80005b88:	000b0593          	mv	a1,s6
80005b8c:	000a0513          	mv	a0,s4
80005b90:	01041b93          	slli	s7,s0,0x10
80005b94:	229010ef          	jal	ra,800075bc <__udivsi3>
80005b98:	010bdb93          	srli	s7,s7,0x10
80005b9c:	00050493          	mv	s1,a0
80005ba0:	00050593          	mv	a1,a0
80005ba4:	000b8513          	mv	a0,s7
80005ba8:	159010ef          	jal	ra,80007500 <__mulsi3>
80005bac:	01091913          	slli	s2,s2,0x10
80005bb0:	010ad713          	srli	a4,s5,0x10
80005bb4:	00e96733          	or	a4,s2,a4
80005bb8:	00048a13          	mv	s4,s1
80005bbc:	00a77e63          	bgeu	a4,a0,80005bd8 <__udivdi3+0x360>
80005bc0:	00870733          	add	a4,a4,s0
80005bc4:	fff48a13          	addi	s4,s1,-1
80005bc8:	00876863          	bltu	a4,s0,80005bd8 <__udivdi3+0x360>
80005bcc:	00a77663          	bgeu	a4,a0,80005bd8 <__udivdi3+0x360>
80005bd0:	ffe48a13          	addi	s4,s1,-2
80005bd4:	00870733          	add	a4,a4,s0
80005bd8:	40a704b3          	sub	s1,a4,a0
80005bdc:	000b0593          	mv	a1,s6
80005be0:	00048513          	mv	a0,s1
80005be4:	221010ef          	jal	ra,80007604 <__umodsi3>
80005be8:	00050913          	mv	s2,a0
80005bec:	000b0593          	mv	a1,s6
80005bf0:	00048513          	mv	a0,s1
80005bf4:	1c9010ef          	jal	ra,800075bc <__udivsi3>
80005bf8:	00050493          	mv	s1,a0
80005bfc:	00050593          	mv	a1,a0
80005c00:	000b8513          	mv	a0,s7
80005c04:	0fd010ef          	jal	ra,80007500 <__mulsi3>
80005c08:	010a9693          	slli	a3,s5,0x10
80005c0c:	01091913          	slli	s2,s2,0x10
80005c10:	0106d693          	srli	a3,a3,0x10
80005c14:	00d967b3          	or	a5,s2,a3
80005c18:	00048713          	mv	a4,s1
80005c1c:	00a7fe63          	bgeu	a5,a0,80005c38 <__udivdi3+0x3c0>
80005c20:	008787b3          	add	a5,a5,s0
80005c24:	fff48713          	addi	a4,s1,-1
80005c28:	0087e863          	bltu	a5,s0,80005c38 <__udivdi3+0x3c0>
80005c2c:	00a7f663          	bgeu	a5,a0,80005c38 <__udivdi3+0x3c0>
80005c30:	ffe48713          	addi	a4,s1,-2
80005c34:	008787b3          	add	a5,a5,s0
80005c38:	010a1a13          	slli	s4,s4,0x10
80005c3c:	40a784b3          	sub	s1,a5,a0
80005c40:	00ea6a33          	or	s4,s4,a4
80005c44:	e01ff06f          	j	80005a44 <__udivdi3+0x1cc>
80005c48:	1ed5ec63          	bltu	a1,a3,80005e40 <__udivdi3+0x5c8>
80005c4c:	000107b7          	lui	a5,0x10
80005c50:	04f6f463          	bgeu	a3,a5,80005c98 <__udivdi3+0x420>
80005c54:	0ff00593          	li	a1,255
80005c58:	00d5b533          	sltu	a0,a1,a3
80005c5c:	00351513          	slli	a0,a0,0x3
80005c60:	00a6d733          	srl	a4,a3,a0
80005c64:	00002797          	auipc	a5,0x2
80005c68:	e9878793          	addi	a5,a5,-360 # 80007afc <__clz_tab>
80005c6c:	00e787b3          	add	a5,a5,a4
80005c70:	0007c583          	lbu	a1,0(a5)
80005c74:	02000a13          	li	s4,32
80005c78:	00a585b3          	add	a1,a1,a0
80005c7c:	40ba0a33          	sub	s4,s4,a1
80005c80:	020a1663          	bnez	s4,80005cac <__udivdi3+0x434>
80005c84:	00100793          	li	a5,1
80005c88:	e896e2e3          	bltu	a3,s1,80005b0c <__udivdi3+0x294>
80005c8c:	00cb3633          	sltu	a2,s6,a2
80005c90:	00164793          	xori	a5,a2,1
80005c94:	e79ff06f          	j	80005b0c <__udivdi3+0x294>
80005c98:	010007b7          	lui	a5,0x1000
80005c9c:	01000513          	li	a0,16
80005ca0:	fcf6e0e3          	bltu	a3,a5,80005c60 <__udivdi3+0x3e8>
80005ca4:	01800513          	li	a0,24
80005ca8:	fb9ff06f          	j	80005c60 <__udivdi3+0x3e8>
80005cac:	00b65ab3          	srl	s5,a2,a1
80005cb0:	014696b3          	sll	a3,a3,s4
80005cb4:	00daeab3          	or	s5,s5,a3
80005cb8:	00b4d933          	srl	s2,s1,a1
80005cbc:	014497b3          	sll	a5,s1,s4
80005cc0:	00bb55b3          	srl	a1,s6,a1
80005cc4:	010adb93          	srli	s7,s5,0x10
80005cc8:	00f5e4b3          	or	s1,a1,a5
80005ccc:	00090513          	mv	a0,s2
80005cd0:	000b8593          	mv	a1,s7
80005cd4:	014619b3          	sll	s3,a2,s4
80005cd8:	12d010ef          	jal	ra,80007604 <__umodsi3>
80005cdc:	00050413          	mv	s0,a0
80005ce0:	000b8593          	mv	a1,s7
80005ce4:	00090513          	mv	a0,s2
80005ce8:	010a9c13          	slli	s8,s5,0x10
80005cec:	0d1010ef          	jal	ra,800075bc <__udivsi3>
80005cf0:	010c5c13          	srli	s8,s8,0x10
80005cf4:	00050913          	mv	s2,a0
80005cf8:	00050593          	mv	a1,a0
80005cfc:	000c0513          	mv	a0,s8
80005d00:	001010ef          	jal	ra,80007500 <__mulsi3>
80005d04:	01041413          	slli	s0,s0,0x10
80005d08:	0104d713          	srli	a4,s1,0x10
80005d0c:	00e46733          	or	a4,s0,a4
80005d10:	00090c93          	mv	s9,s2
80005d14:	00a77e63          	bgeu	a4,a0,80005d30 <__udivdi3+0x4b8>
80005d18:	01570733          	add	a4,a4,s5
80005d1c:	fff90c93          	addi	s9,s2,-1
80005d20:	01576863          	bltu	a4,s5,80005d30 <__udivdi3+0x4b8>
80005d24:	00a77663          	bgeu	a4,a0,80005d30 <__udivdi3+0x4b8>
80005d28:	ffe90c93          	addi	s9,s2,-2
80005d2c:	01570733          	add	a4,a4,s5
80005d30:	40a70933          	sub	s2,a4,a0
80005d34:	000b8593          	mv	a1,s7
80005d38:	00090513          	mv	a0,s2
80005d3c:	0c9010ef          	jal	ra,80007604 <__umodsi3>
80005d40:	00050413          	mv	s0,a0
80005d44:	000b8593          	mv	a1,s7
80005d48:	00090513          	mv	a0,s2
80005d4c:	071010ef          	jal	ra,800075bc <__udivsi3>
80005d50:	00050913          	mv	s2,a0
80005d54:	00050593          	mv	a1,a0
80005d58:	000c0513          	mv	a0,s8
80005d5c:	7a4010ef          	jal	ra,80007500 <__mulsi3>
80005d60:	01049793          	slli	a5,s1,0x10
80005d64:	01041413          	slli	s0,s0,0x10
80005d68:	0107d793          	srli	a5,a5,0x10
80005d6c:	00f46733          	or	a4,s0,a5
80005d70:	00090613          	mv	a2,s2
80005d74:	00a77e63          	bgeu	a4,a0,80005d90 <__udivdi3+0x518>
80005d78:	01570733          	add	a4,a4,s5
80005d7c:	fff90613          	addi	a2,s2,-1
80005d80:	01576863          	bltu	a4,s5,80005d90 <__udivdi3+0x518>
80005d84:	00a77663          	bgeu	a4,a0,80005d90 <__udivdi3+0x518>
80005d88:	ffe90613          	addi	a2,s2,-2
80005d8c:	01570733          	add	a4,a4,s5
80005d90:	010c9793          	slli	a5,s9,0x10
80005d94:	00010e37          	lui	t3,0x10
80005d98:	00c7e7b3          	or	a5,a5,a2
80005d9c:	fffe0813          	addi	a6,t3,-1 # ffff <_stack_size+0x7fff>
80005da0:	0107f333          	and	t1,a5,a6
80005da4:	0109f833          	and	a6,s3,a6
80005da8:	40a70733          	sub	a4,a4,a0
80005dac:	0107de93          	srli	t4,a5,0x10
80005db0:	0109d993          	srli	s3,s3,0x10
80005db4:	00030513          	mv	a0,t1
80005db8:	00080593          	mv	a1,a6
80005dbc:	744010ef          	jal	ra,80007500 <__mulsi3>
80005dc0:	00050893          	mv	a7,a0
80005dc4:	00098593          	mv	a1,s3
80005dc8:	00030513          	mv	a0,t1
80005dcc:	734010ef          	jal	ra,80007500 <__mulsi3>
80005dd0:	00050313          	mv	t1,a0
80005dd4:	00080593          	mv	a1,a6
80005dd8:	000e8513          	mv	a0,t4
80005ddc:	724010ef          	jal	ra,80007500 <__mulsi3>
80005de0:	00050813          	mv	a6,a0
80005de4:	00098593          	mv	a1,s3
80005de8:	000e8513          	mv	a0,t4
80005dec:	714010ef          	jal	ra,80007500 <__mulsi3>
80005df0:	0108d693          	srli	a3,a7,0x10
80005df4:	01030333          	add	t1,t1,a6
80005df8:	006686b3          	add	a3,a3,t1
80005dfc:	0106f463          	bgeu	a3,a6,80005e04 <__udivdi3+0x58c>
80005e00:	01c50533          	add	a0,a0,t3
80005e04:	0106d613          	srli	a2,a3,0x10
80005e08:	00a60533          	add	a0,a2,a0
80005e0c:	02a76663          	bltu	a4,a0,80005e38 <__udivdi3+0x5c0>
80005e10:	bca714e3          	bne	a4,a0,800059d8 <__udivdi3+0x160>
80005e14:	00010737          	lui	a4,0x10
80005e18:	fff70713          	addi	a4,a4,-1 # ffff <_stack_size+0x7fff>
80005e1c:	00e6f6b3          	and	a3,a3,a4
80005e20:	01069693          	slli	a3,a3,0x10
80005e24:	00e8f8b3          	and	a7,a7,a4
80005e28:	014b1633          	sll	a2,s6,s4
80005e2c:	011686b3          	add	a3,a3,a7
80005e30:	00000a13          	li	s4,0
80005e34:	ccd67ce3          	bgeu	a2,a3,80005b0c <__udivdi3+0x294>
80005e38:	fff78793          	addi	a5,a5,-1 # ffffff <_stack_size+0xff7fff>
80005e3c:	b9dff06f          	j	800059d8 <__udivdi3+0x160>
80005e40:	00000a13          	li	s4,0
80005e44:	00000793          	li	a5,0
80005e48:	cc5ff06f          	j	80005b0c <__udivdi3+0x294>

80005e4c <__umoddi3>:
80005e4c:	fd010113          	addi	sp,sp,-48
80005e50:	02812423          	sw	s0,40(sp)
80005e54:	02912223          	sw	s1,36(sp)
80005e58:	01312e23          	sw	s3,28(sp)
80005e5c:	01612823          	sw	s6,16(sp)
80005e60:	02112623          	sw	ra,44(sp)
80005e64:	03212023          	sw	s2,32(sp)
80005e68:	01412c23          	sw	s4,24(sp)
80005e6c:	01512a23          	sw	s5,20(sp)
80005e70:	01712623          	sw	s7,12(sp)
80005e74:	01812423          	sw	s8,8(sp)
80005e78:	01912223          	sw	s9,4(sp)
80005e7c:	01a12023          	sw	s10,0(sp)
80005e80:	00050b13          	mv	s6,a0
80005e84:	00058993          	mv	s3,a1
80005e88:	00050413          	mv	s0,a0
80005e8c:	00058493          	mv	s1,a1
80005e90:	26069c63          	bnez	a3,80006108 <__umoddi3+0x2bc>
80005e94:	00060913          	mv	s2,a2
80005e98:	00068a13          	mv	s4,a3
80005e9c:	00002a97          	auipc	s5,0x2
80005ea0:	c60a8a93          	addi	s5,s5,-928 # 80007afc <__clz_tab>
80005ea4:	14c5f263          	bgeu	a1,a2,80005fe8 <__umoddi3+0x19c>
80005ea8:	000107b7          	lui	a5,0x10
80005eac:	12f67463          	bgeu	a2,a5,80005fd4 <__umoddi3+0x188>
80005eb0:	0ff00793          	li	a5,255
80005eb4:	00c7f463          	bgeu	a5,a2,80005ebc <__umoddi3+0x70>
80005eb8:	00800a13          	li	s4,8
80005ebc:	014657b3          	srl	a5,a2,s4
80005ec0:	00fa8ab3          	add	s5,s5,a5
80005ec4:	000ac703          	lbu	a4,0(s5)
80005ec8:	02000513          	li	a0,32
80005ecc:	01470733          	add	a4,a4,s4
80005ed0:	40e50a33          	sub	s4,a0,a4
80005ed4:	000a0c63          	beqz	s4,80005eec <__umoddi3+0xa0>
80005ed8:	014995b3          	sll	a1,s3,s4
80005edc:	00eb5733          	srl	a4,s6,a4
80005ee0:	01461933          	sll	s2,a2,s4
80005ee4:	00b764b3          	or	s1,a4,a1
80005ee8:	014b1433          	sll	s0,s6,s4
80005eec:	01095a93          	srli	s5,s2,0x10
80005ef0:	000a8593          	mv	a1,s5
80005ef4:	00048513          	mv	a0,s1
80005ef8:	70c010ef          	jal	ra,80007604 <__umodsi3>
80005efc:	00050993          	mv	s3,a0
80005f00:	000a8593          	mv	a1,s5
80005f04:	01091b13          	slli	s6,s2,0x10
80005f08:	00048513          	mv	a0,s1
80005f0c:	6b0010ef          	jal	ra,800075bc <__udivsi3>
80005f10:	010b5b13          	srli	s6,s6,0x10
80005f14:	00050593          	mv	a1,a0
80005f18:	000b0513          	mv	a0,s6
80005f1c:	5e4010ef          	jal	ra,80007500 <__mulsi3>
80005f20:	01099993          	slli	s3,s3,0x10
80005f24:	01045793          	srli	a5,s0,0x10
80005f28:	00f9e7b3          	or	a5,s3,a5
80005f2c:	00a7fa63          	bgeu	a5,a0,80005f40 <__umoddi3+0xf4>
80005f30:	012787b3          	add	a5,a5,s2
80005f34:	0127e663          	bltu	a5,s2,80005f40 <__umoddi3+0xf4>
80005f38:	00a7f463          	bgeu	a5,a0,80005f40 <__umoddi3+0xf4>
80005f3c:	012787b3          	add	a5,a5,s2
80005f40:	40a784b3          	sub	s1,a5,a0
80005f44:	000a8593          	mv	a1,s5
80005f48:	00048513          	mv	a0,s1
80005f4c:	6b8010ef          	jal	ra,80007604 <__umodsi3>
80005f50:	00050993          	mv	s3,a0
80005f54:	000a8593          	mv	a1,s5
80005f58:	00048513          	mv	a0,s1
80005f5c:	660010ef          	jal	ra,800075bc <__udivsi3>
80005f60:	01041413          	slli	s0,s0,0x10
80005f64:	00050593          	mv	a1,a0
80005f68:	01099993          	slli	s3,s3,0x10
80005f6c:	000b0513          	mv	a0,s6
80005f70:	01045413          	srli	s0,s0,0x10
80005f74:	58c010ef          	jal	ra,80007500 <__mulsi3>
80005f78:	0089e433          	or	s0,s3,s0
80005f7c:	00a47a63          	bgeu	s0,a0,80005f90 <__umoddi3+0x144>
80005f80:	01240433          	add	s0,s0,s2
80005f84:	01246663          	bltu	s0,s2,80005f90 <__umoddi3+0x144>
80005f88:	00a47463          	bgeu	s0,a0,80005f90 <__umoddi3+0x144>
80005f8c:	01240433          	add	s0,s0,s2
80005f90:	40a40433          	sub	s0,s0,a0
80005f94:	01445533          	srl	a0,s0,s4
80005f98:	00000593          	li	a1,0
80005f9c:	02c12083          	lw	ra,44(sp)
80005fa0:	02812403          	lw	s0,40(sp)
80005fa4:	02412483          	lw	s1,36(sp)
80005fa8:	02012903          	lw	s2,32(sp)
80005fac:	01c12983          	lw	s3,28(sp)
80005fb0:	01812a03          	lw	s4,24(sp)
80005fb4:	01412a83          	lw	s5,20(sp)
80005fb8:	01012b03          	lw	s6,16(sp)
80005fbc:	00c12b83          	lw	s7,12(sp)
80005fc0:	00812c03          	lw	s8,8(sp)
80005fc4:	00412c83          	lw	s9,4(sp)
80005fc8:	00012d03          	lw	s10,0(sp)
80005fcc:	03010113          	addi	sp,sp,48
80005fd0:	00008067          	ret
80005fd4:	010007b7          	lui	a5,0x1000
80005fd8:	01000a13          	li	s4,16
80005fdc:	eef660e3          	bltu	a2,a5,80005ebc <__umoddi3+0x70>
80005fe0:	01800a13          	li	s4,24
80005fe4:	ed9ff06f          	j	80005ebc <__umoddi3+0x70>
80005fe8:	00061a63          	bnez	a2,80005ffc <__umoddi3+0x1b0>
80005fec:	00000593          	li	a1,0
80005ff0:	00100513          	li	a0,1
80005ff4:	5c8010ef          	jal	ra,800075bc <__udivsi3>
80005ff8:	00050913          	mv	s2,a0
80005ffc:	000107b7          	lui	a5,0x10
80006000:	0ef97a63          	bgeu	s2,a5,800060f4 <__umoddi3+0x2a8>
80006004:	0ff00793          	li	a5,255
80006008:	0127f463          	bgeu	a5,s2,80006010 <__umoddi3+0x1c4>
8000600c:	00800a13          	li	s4,8
80006010:	014957b3          	srl	a5,s2,s4
80006014:	00fa8ab3          	add	s5,s5,a5
80006018:	000ac703          	lbu	a4,0(s5)
8000601c:	02000513          	li	a0,32
80006020:	412984b3          	sub	s1,s3,s2
80006024:	01470733          	add	a4,a4,s4
80006028:	40e50a33          	sub	s4,a0,a4
8000602c:	ec0a00e3          	beqz	s4,80005eec <__umoddi3+0xa0>
80006030:	01491933          	sll	s2,s2,s4
80006034:	00e9dab3          	srl	s5,s3,a4
80006038:	014995b3          	sll	a1,s3,s4
8000603c:	00eb5733          	srl	a4,s6,a4
80006040:	01095493          	srli	s1,s2,0x10
80006044:	00b76bb3          	or	s7,a4,a1
80006048:	000a8513          	mv	a0,s5
8000604c:	00048593          	mv	a1,s1
80006050:	5b4010ef          	jal	ra,80007604 <__umodsi3>
80006054:	00050993          	mv	s3,a0
80006058:	00048593          	mv	a1,s1
8000605c:	014b1433          	sll	s0,s6,s4
80006060:	000a8513          	mv	a0,s5
80006064:	01091b13          	slli	s6,s2,0x10
80006068:	554010ef          	jal	ra,800075bc <__udivsi3>
8000606c:	010b5b13          	srli	s6,s6,0x10
80006070:	00050593          	mv	a1,a0
80006074:	000b0513          	mv	a0,s6
80006078:	488010ef          	jal	ra,80007500 <__mulsi3>
8000607c:	01099993          	slli	s3,s3,0x10
80006080:	010bd793          	srli	a5,s7,0x10
80006084:	00f9e7b3          	or	a5,s3,a5
80006088:	00a7fa63          	bgeu	a5,a0,8000609c <__umoddi3+0x250>
8000608c:	012787b3          	add	a5,a5,s2
80006090:	0127e663          	bltu	a5,s2,8000609c <__umoddi3+0x250>
80006094:	00a7f463          	bgeu	a5,a0,8000609c <__umoddi3+0x250>
80006098:	012787b3          	add	a5,a5,s2
8000609c:	40a78ab3          	sub	s5,a5,a0
800060a0:	00048593          	mv	a1,s1
800060a4:	000a8513          	mv	a0,s5
800060a8:	55c010ef          	jal	ra,80007604 <__umodsi3>
800060ac:	00050993          	mv	s3,a0
800060b0:	00048593          	mv	a1,s1
800060b4:	000a8513          	mv	a0,s5
800060b8:	504010ef          	jal	ra,800075bc <__udivsi3>
800060bc:	00050593          	mv	a1,a0
800060c0:	000b0513          	mv	a0,s6
800060c4:	43c010ef          	jal	ra,80007500 <__mulsi3>
800060c8:	010b9593          	slli	a1,s7,0x10
800060cc:	01099993          	slli	s3,s3,0x10
800060d0:	0105d593          	srli	a1,a1,0x10
800060d4:	00b9e5b3          	or	a1,s3,a1
800060d8:	00a5fa63          	bgeu	a1,a0,800060ec <__umoddi3+0x2a0>
800060dc:	012585b3          	add	a1,a1,s2
800060e0:	0125e663          	bltu	a1,s2,800060ec <__umoddi3+0x2a0>
800060e4:	00a5f463          	bgeu	a1,a0,800060ec <__umoddi3+0x2a0>
800060e8:	012585b3          	add	a1,a1,s2
800060ec:	40a584b3          	sub	s1,a1,a0
800060f0:	dfdff06f          	j	80005eec <__umoddi3+0xa0>
800060f4:	010007b7          	lui	a5,0x1000
800060f8:	01000a13          	li	s4,16
800060fc:	f0f96ae3          	bltu	s2,a5,80006010 <__umoddi3+0x1c4>
80006100:	01800a13          	li	s4,24
80006104:	f0dff06f          	j	80006010 <__umoddi3+0x1c4>
80006108:	e8d5eae3          	bltu	a1,a3,80005f9c <__umoddi3+0x150>
8000610c:	000107b7          	lui	a5,0x10
80006110:	04f6fc63          	bgeu	a3,a5,80006168 <__umoddi3+0x31c>
80006114:	0ff00a93          	li	s5,255
80006118:	00dab533          	sltu	a0,s5,a3
8000611c:	00351513          	slli	a0,a0,0x3
80006120:	00a6d733          	srl	a4,a3,a0
80006124:	00002797          	auipc	a5,0x2
80006128:	9d878793          	addi	a5,a5,-1576 # 80007afc <__clz_tab>
8000612c:	00e787b3          	add	a5,a5,a4
80006130:	0007ca83          	lbu	s5,0(a5)
80006134:	02000593          	li	a1,32
80006138:	00aa8ab3          	add	s5,s5,a0
8000613c:	41558a33          	sub	s4,a1,s5
80006140:	020a1e63          	bnez	s4,8000617c <__umoddi3+0x330>
80006144:	0136e463          	bltu	a3,s3,8000614c <__umoddi3+0x300>
80006148:	00cb6a63          	bltu	s6,a2,8000615c <__umoddi3+0x310>
8000614c:	40cb0433          	sub	s0,s6,a2
80006150:	40d986b3          	sub	a3,s3,a3
80006154:	008b3b33          	sltu	s6,s6,s0
80006158:	416684b3          	sub	s1,a3,s6
8000615c:	00040513          	mv	a0,s0
80006160:	00048593          	mv	a1,s1
80006164:	e39ff06f          	j	80005f9c <__umoddi3+0x150>
80006168:	010007b7          	lui	a5,0x1000
8000616c:	01000513          	li	a0,16
80006170:	faf6e8e3          	bltu	a3,a5,80006120 <__umoddi3+0x2d4>
80006174:	01800513          	li	a0,24
80006178:	fa9ff06f          	j	80006120 <__umoddi3+0x2d4>
8000617c:	014696b3          	sll	a3,a3,s4
80006180:	015657b3          	srl	a5,a2,s5
80006184:	00d7ebb3          	or	s7,a5,a3
80006188:	0159d433          	srl	s0,s3,s5
8000618c:	014995b3          	sll	a1,s3,s4
80006190:	015b54b3          	srl	s1,s6,s5
80006194:	010bdc13          	srli	s8,s7,0x10
80006198:	00b4e4b3          	or	s1,s1,a1
8000619c:	00040513          	mv	a0,s0
800061a0:	000c0593          	mv	a1,s8
800061a4:	01461d33          	sll	s10,a2,s4
800061a8:	45c010ef          	jal	ra,80007604 <__umodsi3>
800061ac:	00050993          	mv	s3,a0
800061b0:	000c0593          	mv	a1,s8
800061b4:	00040513          	mv	a0,s0
800061b8:	010b9c93          	slli	s9,s7,0x10
800061bc:	400010ef          	jal	ra,800075bc <__udivsi3>
800061c0:	010cdc93          	srli	s9,s9,0x10
800061c4:	00050413          	mv	s0,a0
800061c8:	00050593          	mv	a1,a0
800061cc:	000c8513          	mv	a0,s9
800061d0:	330010ef          	jal	ra,80007500 <__mulsi3>
800061d4:	01099993          	slli	s3,s3,0x10
800061d8:	0104d713          	srli	a4,s1,0x10
800061dc:	00e9e733          	or	a4,s3,a4
800061e0:	014b1b33          	sll	s6,s6,s4
800061e4:	00040993          	mv	s3,s0
800061e8:	00a77e63          	bgeu	a4,a0,80006204 <__umoddi3+0x3b8>
800061ec:	01770733          	add	a4,a4,s7
800061f0:	fff40993          	addi	s3,s0,-1
800061f4:	01776863          	bltu	a4,s7,80006204 <__umoddi3+0x3b8>
800061f8:	00a77663          	bgeu	a4,a0,80006204 <__umoddi3+0x3b8>
800061fc:	ffe40993          	addi	s3,s0,-2
80006200:	01770733          	add	a4,a4,s7
80006204:	40a70933          	sub	s2,a4,a0
80006208:	000c0593          	mv	a1,s8
8000620c:	00090513          	mv	a0,s2
80006210:	3f4010ef          	jal	ra,80007604 <__umodsi3>
80006214:	00050413          	mv	s0,a0
80006218:	000c0593          	mv	a1,s8
8000621c:	00090513          	mv	a0,s2
80006220:	39c010ef          	jal	ra,800075bc <__udivsi3>
80006224:	00050593          	mv	a1,a0
80006228:	00050913          	mv	s2,a0
8000622c:	000c8513          	mv	a0,s9
80006230:	2d0010ef          	jal	ra,80007500 <__mulsi3>
80006234:	01049593          	slli	a1,s1,0x10
80006238:	01041413          	slli	s0,s0,0x10
8000623c:	0105d593          	srli	a1,a1,0x10
80006240:	00b465b3          	or	a1,s0,a1
80006244:	00090793          	mv	a5,s2
80006248:	00a5fe63          	bgeu	a1,a0,80006264 <__umoddi3+0x418>
8000624c:	017585b3          	add	a1,a1,s7
80006250:	fff90793          	addi	a5,s2,-1
80006254:	0175e863          	bltu	a1,s7,80006264 <__umoddi3+0x418>
80006258:	00a5f663          	bgeu	a1,a0,80006264 <__umoddi3+0x418>
8000625c:	ffe90793          	addi	a5,s2,-2
80006260:	017585b3          	add	a1,a1,s7
80006264:	00010e37          	lui	t3,0x10
80006268:	01099993          	slli	s3,s3,0x10
8000626c:	00f9e9b3          	or	s3,s3,a5
80006270:	fffe0813          	addi	a6,t3,-1 # ffff <_stack_size+0x7fff>
80006274:	0109f733          	and	a4,s3,a6
80006278:	010d7833          	and	a6,s10,a6
8000627c:	40a584b3          	sub	s1,a1,a0
80006280:	0109d993          	srli	s3,s3,0x10
80006284:	010d5893          	srli	a7,s10,0x10
80006288:	00070513          	mv	a0,a4
8000628c:	00080593          	mv	a1,a6
80006290:	270010ef          	jal	ra,80007500 <__mulsi3>
80006294:	00050793          	mv	a5,a0
80006298:	00088593          	mv	a1,a7
8000629c:	00070513          	mv	a0,a4
800062a0:	260010ef          	jal	ra,80007500 <__mulsi3>
800062a4:	00050313          	mv	t1,a0
800062a8:	00080593          	mv	a1,a6
800062ac:	00098513          	mv	a0,s3
800062b0:	250010ef          	jal	ra,80007500 <__mulsi3>
800062b4:	00050813          	mv	a6,a0
800062b8:	00088593          	mv	a1,a7
800062bc:	00098513          	mv	a0,s3
800062c0:	240010ef          	jal	ra,80007500 <__mulsi3>
800062c4:	0107d713          	srli	a4,a5,0x10
800062c8:	01030333          	add	t1,t1,a6
800062cc:	00670733          	add	a4,a4,t1
800062d0:	01077463          	bgeu	a4,a6,800062d8 <__umoddi3+0x48c>
800062d4:	01c50533          	add	a0,a0,t3
800062d8:	000106b7          	lui	a3,0x10
800062dc:	fff68693          	addi	a3,a3,-1 # ffff <_stack_size+0x7fff>
800062e0:	01075593          	srli	a1,a4,0x10
800062e4:	00d77733          	and	a4,a4,a3
800062e8:	01071713          	slli	a4,a4,0x10
800062ec:	00d7f7b3          	and	a5,a5,a3
800062f0:	00a585b3          	add	a1,a1,a0
800062f4:	00f707b3          	add	a5,a4,a5
800062f8:	00b4e663          	bltu	s1,a1,80006304 <__umoddi3+0x4b8>
800062fc:	00b49e63          	bne	s1,a1,80006318 <__umoddi3+0x4cc>
80006300:	00fb7c63          	bgeu	s6,a5,80006318 <__umoddi3+0x4cc>
80006304:	41a78633          	sub	a2,a5,s10
80006308:	00c7b7b3          	sltu	a5,a5,a2
8000630c:	017787b3          	add	a5,a5,s7
80006310:	40f585b3          	sub	a1,a1,a5
80006314:	00060793          	mv	a5,a2
80006318:	40fb07b3          	sub	a5,s6,a5
8000631c:	00fb3b33          	sltu	s6,s6,a5
80006320:	40b485b3          	sub	a1,s1,a1
80006324:	416585b3          	sub	a1,a1,s6
80006328:	01559433          	sll	s0,a1,s5
8000632c:	0147d7b3          	srl	a5,a5,s4
80006330:	00f46533          	or	a0,s0,a5
80006334:	0145d5b3          	srl	a1,a1,s4
80006338:	c65ff06f          	j	80005f9c <__umoddi3+0x150>

8000633c <__addsf3>:
8000633c:	00800737          	lui	a4,0x800
80006340:	ff010113          	addi	sp,sp,-16
80006344:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
80006348:	00a777b3          	and	a5,a4,a0
8000634c:	00912223          	sw	s1,4(sp)
80006350:	01212023          	sw	s2,0(sp)
80006354:	01f55493          	srli	s1,a0,0x1f
80006358:	01755913          	srli	s2,a0,0x17
8000635c:	0175d513          	srli	a0,a1,0x17
80006360:	00b77733          	and	a4,a4,a1
80006364:	0ff97913          	andi	s2,s2,255
80006368:	0ff57513          	andi	a0,a0,255
8000636c:	00112623          	sw	ra,12(sp)
80006370:	00812423          	sw	s0,8(sp)
80006374:	01f5d593          	srli	a1,a1,0x1f
80006378:	00379793          	slli	a5,a5,0x3
8000637c:	00371713          	slli	a4,a4,0x3
80006380:	40a906b3          	sub	a3,s2,a0
80006384:	18b49463          	bne	s1,a1,8000650c <__addsf3+0x1d0>
80006388:	08d05c63          	blez	a3,80006420 <__addsf3+0xe4>
8000638c:	04051c63          	bnez	a0,800063e4 <__addsf3+0xa8>
80006390:	34070663          	beqz	a4,800066dc <__addsf3+0x3a0>
80006394:	fff68693          	addi	a3,a3,-1
80006398:	02069e63          	bnez	a3,800063d4 <__addsf3+0x98>
8000639c:	00e787b3          	add	a5,a5,a4
800063a0:	00090513          	mv	a0,s2
800063a4:	00579713          	slli	a4,a5,0x5
800063a8:	10075c63          	bgez	a4,800064c0 <__addsf3+0x184>
800063ac:	00150513          	addi	a0,a0,1
800063b0:	0ff00713          	li	a4,255
800063b4:	32e50e63          	beq	a0,a4,800066f0 <__addsf3+0x3b4>
800063b8:	7e000737          	lui	a4,0x7e000
800063bc:	0017f693          	andi	a3,a5,1
800063c0:	fff70713          	addi	a4,a4,-1 # 7dffffff <_stack_size+0x7dff7fff>
800063c4:	0017d793          	srli	a5,a5,0x1
800063c8:	00e7f7b3          	and	a5,a5,a4
800063cc:	00d7e7b3          	or	a5,a5,a3
800063d0:	0f00006f          	j	800064c0 <__addsf3+0x184>
800063d4:	0ff00613          	li	a2,255
800063d8:	00c91e63          	bne	s2,a2,800063f4 <__addsf3+0xb8>
800063dc:	0ff00513          	li	a0,255
800063e0:	0e00006f          	j	800064c0 <__addsf3+0x184>
800063e4:	0ff00613          	li	a2,255
800063e8:	fec90ae3          	beq	s2,a2,800063dc <__addsf3+0xa0>
800063ec:	04000637          	lui	a2,0x4000
800063f0:	00c76733          	or	a4,a4,a2
800063f4:	01b00613          	li	a2,27
800063f8:	00d65663          	bge	a2,a3,80006404 <__addsf3+0xc8>
800063fc:	00100713          	li	a4,1
80006400:	f9dff06f          	j	8000639c <__addsf3+0x60>
80006404:	02000613          	li	a2,32
80006408:	00d755b3          	srl	a1,a4,a3
8000640c:	40d606b3          	sub	a3,a2,a3
80006410:	00d71733          	sll	a4,a4,a3
80006414:	00e03733          	snez	a4,a4
80006418:	00e5e733          	or	a4,a1,a4
8000641c:	f81ff06f          	j	8000639c <__addsf3+0x60>
80006420:	06068663          	beqz	a3,8000648c <__addsf3+0x150>
80006424:	41250633          	sub	a2,a0,s2
80006428:	02091463          	bnez	s2,80006450 <__addsf3+0x114>
8000642c:	00078e63          	beqz	a5,80006448 <__addsf3+0x10c>
80006430:	fff60613          	addi	a2,a2,-1 # 3ffffff <_stack_size+0x3ff7fff>
80006434:	00061663          	bnez	a2,80006440 <__addsf3+0x104>
80006438:	00e787b3          	add	a5,a5,a4
8000643c:	f69ff06f          	j	800063a4 <__addsf3+0x68>
80006440:	0ff00693          	li	a3,255
80006444:	00d51e63          	bne	a0,a3,80006460 <__addsf3+0x124>
80006448:	00070793          	mv	a5,a4
8000644c:	0740006f          	j	800064c0 <__addsf3+0x184>
80006450:	0ff00693          	li	a3,255
80006454:	fed50ae3          	beq	a0,a3,80006448 <__addsf3+0x10c>
80006458:	040006b7          	lui	a3,0x4000
8000645c:	00d7e7b3          	or	a5,a5,a3
80006460:	01b00693          	li	a3,27
80006464:	00c6d663          	bge	a3,a2,80006470 <__addsf3+0x134>
80006468:	00100793          	li	a5,1
8000646c:	fcdff06f          	j	80006438 <__addsf3+0xfc>
80006470:	02000693          	li	a3,32
80006474:	40c686b3          	sub	a3,a3,a2
80006478:	00c7d5b3          	srl	a1,a5,a2
8000647c:	00d797b3          	sll	a5,a5,a3
80006480:	00f037b3          	snez	a5,a5
80006484:	00f5e7b3          	or	a5,a1,a5
80006488:	fb1ff06f          	j	80006438 <__addsf3+0xfc>
8000648c:	00190693          	addi	a3,s2,1
80006490:	0fe6f513          	andi	a0,a3,254
80006494:	06051063          	bnez	a0,800064f4 <__addsf3+0x1b8>
80006498:	04091263          	bnez	s2,800064dc <__addsf3+0x1a0>
8000649c:	fa0786e3          	beqz	a5,80006448 <__addsf3+0x10c>
800064a0:	02070063          	beqz	a4,800064c0 <__addsf3+0x184>
800064a4:	00e787b3          	add	a5,a5,a4
800064a8:	00579713          	slli	a4,a5,0x5
800064ac:	00075a63          	bgez	a4,800064c0 <__addsf3+0x184>
800064b0:	fc000737          	lui	a4,0xfc000
800064b4:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
800064b8:	00e7f7b3          	and	a5,a5,a4
800064bc:	00100513          	li	a0,1
800064c0:	0077f713          	andi	a4,a5,7
800064c4:	22070863          	beqz	a4,800066f4 <__addsf3+0x3b8>
800064c8:	00f7f713          	andi	a4,a5,15
800064cc:	00400693          	li	a3,4
800064d0:	22d70263          	beq	a4,a3,800066f4 <__addsf3+0x3b8>
800064d4:	00478793          	addi	a5,a5,4 # 1000004 <_stack_size+0xff8004>
800064d8:	21c0006f          	j	800066f4 <__addsf3+0x3b8>
800064dc:	20078463          	beqz	a5,800066e4 <__addsf3+0x3a8>
800064e0:	ee070ee3          	beqz	a4,800063dc <__addsf3+0xa0>
800064e4:	00000493          	li	s1,0
800064e8:	020007b7          	lui	a5,0x2000
800064ec:	0ff00513          	li	a0,255
800064f0:	2040006f          	j	800066f4 <__addsf3+0x3b8>
800064f4:	0ff00613          	li	a2,255
800064f8:	1ec68a63          	beq	a3,a2,800066ec <__addsf3+0x3b0>
800064fc:	00e787b3          	add	a5,a5,a4
80006500:	0017d793          	srli	a5,a5,0x1
80006504:	00068513          	mv	a0,a3
80006508:	fb9ff06f          	j	800064c0 <__addsf3+0x184>
8000650c:	08d05863          	blez	a3,8000659c <__addsf3+0x260>
80006510:	04051863          	bnez	a0,80006560 <__addsf3+0x224>
80006514:	00090513          	mv	a0,s2
80006518:	fa0704e3          	beqz	a4,800064c0 <__addsf3+0x184>
8000651c:	fff68693          	addi	a3,a3,-1 # 3ffffff <_stack_size+0x3ff7fff>
80006520:	02069263          	bnez	a3,80006544 <__addsf3+0x208>
80006524:	40e787b3          	sub	a5,a5,a4
80006528:	00579713          	slli	a4,a5,0x5
8000652c:	f8075ae3          	bgez	a4,800064c0 <__addsf3+0x184>
80006530:	04000437          	lui	s0,0x4000
80006534:	fff40413          	addi	s0,s0,-1 # 3ffffff <_stack_size+0x3ff7fff>
80006538:	0087f433          	and	s0,a5,s0
8000653c:	00050913          	mv	s2,a0
80006540:	13c0006f          	j	8000667c <__addsf3+0x340>
80006544:	0ff00613          	li	a2,255
80006548:	0ff00513          	li	a0,255
8000654c:	f6c90ae3          	beq	s2,a2,800064c0 <__addsf3+0x184>
80006550:	01b00613          	li	a2,27
80006554:	02d65263          	bge	a2,a3,80006578 <__addsf3+0x23c>
80006558:	00100713          	li	a4,1
8000655c:	0340006f          	j	80006590 <__addsf3+0x254>
80006560:	0ff00613          	li	a2,255
80006564:	0ff00513          	li	a0,255
80006568:	f4c90ce3          	beq	s2,a2,800064c0 <__addsf3+0x184>
8000656c:	04000637          	lui	a2,0x4000
80006570:	00c76733          	or	a4,a4,a2
80006574:	fddff06f          	j	80006550 <__addsf3+0x214>
80006578:	02000613          	li	a2,32
8000657c:	00d755b3          	srl	a1,a4,a3
80006580:	40d606b3          	sub	a3,a2,a3
80006584:	00d71733          	sll	a4,a4,a3
80006588:	00e03733          	snez	a4,a4
8000658c:	00e5e733          	or	a4,a1,a4
80006590:	40e787b3          	sub	a5,a5,a4
80006594:	00090513          	mv	a0,s2
80006598:	f91ff06f          	j	80006528 <__addsf3+0x1ec>
8000659c:	06068a63          	beqz	a3,80006610 <__addsf3+0x2d4>
800065a0:	41250633          	sub	a2,a0,s2
800065a4:	02091863          	bnez	s2,800065d4 <__addsf3+0x298>
800065a8:	02078063          	beqz	a5,800065c8 <__addsf3+0x28c>
800065ac:	fff60613          	addi	a2,a2,-1 # 3ffffff <_stack_size+0x3ff7fff>
800065b0:	00061863          	bnez	a2,800065c0 <__addsf3+0x284>
800065b4:	40f707b3          	sub	a5,a4,a5
800065b8:	00058493          	mv	s1,a1
800065bc:	f6dff06f          	j	80006528 <__addsf3+0x1ec>
800065c0:	0ff00693          	li	a3,255
800065c4:	02d51063          	bne	a0,a3,800065e4 <__addsf3+0x2a8>
800065c8:	00070793          	mv	a5,a4
800065cc:	00058493          	mv	s1,a1
800065d0:	ef1ff06f          	j	800064c0 <__addsf3+0x184>
800065d4:	0ff00693          	li	a3,255
800065d8:	fed508e3          	beq	a0,a3,800065c8 <__addsf3+0x28c>
800065dc:	040006b7          	lui	a3,0x4000
800065e0:	00d7e7b3          	or	a5,a5,a3
800065e4:	01b00693          	li	a3,27
800065e8:	00c6d663          	bge	a3,a2,800065f4 <__addsf3+0x2b8>
800065ec:	00100793          	li	a5,1
800065f0:	fc5ff06f          	j	800065b4 <__addsf3+0x278>
800065f4:	02000693          	li	a3,32
800065f8:	40c686b3          	sub	a3,a3,a2
800065fc:	00c7d833          	srl	a6,a5,a2
80006600:	00d797b3          	sll	a5,a5,a3
80006604:	00f037b3          	snez	a5,a5
80006608:	00f867b3          	or	a5,a6,a5
8000660c:	fa9ff06f          	j	800065b4 <__addsf3+0x278>
80006610:	00190513          	addi	a0,s2,1
80006614:	0fe57513          	andi	a0,a0,254
80006618:	04051863          	bnez	a0,80006668 <__addsf3+0x32c>
8000661c:	02091c63          	bnez	s2,80006654 <__addsf3+0x318>
80006620:	00079a63          	bnez	a5,80006634 <__addsf3+0x2f8>
80006624:	fa0712e3          	bnez	a4,800065c8 <__addsf3+0x28c>
80006628:	00000793          	li	a5,0
8000662c:	00000493          	li	s1,0
80006630:	0c40006f          	j	800066f4 <__addsf3+0x3b8>
80006634:	e80706e3          	beqz	a4,800064c0 <__addsf3+0x184>
80006638:	40e786b3          	sub	a3,a5,a4
8000663c:	00569613          	slli	a2,a3,0x5
80006640:	40f707b3          	sub	a5,a4,a5
80006644:	f80644e3          	bltz	a2,800065cc <__addsf3+0x290>
80006648:	fe0680e3          	beqz	a3,80006628 <__addsf3+0x2ec>
8000664c:	00068793          	mv	a5,a3
80006650:	e71ff06f          	j	800064c0 <__addsf3+0x184>
80006654:	e80796e3          	bnez	a5,800064e0 <__addsf3+0x1a4>
80006658:	e80706e3          	beqz	a4,800064e4 <__addsf3+0x1a8>
8000665c:	00070793          	mv	a5,a4
80006660:	00058493          	mv	s1,a1
80006664:	d79ff06f          	j	800063dc <__addsf3+0xa0>
80006668:	40e78433          	sub	s0,a5,a4
8000666c:	00541693          	slli	a3,s0,0x5
80006670:	0406d463          	bgez	a3,800066b8 <__addsf3+0x37c>
80006674:	40f70433          	sub	s0,a4,a5
80006678:	00058493          	mv	s1,a1
8000667c:	00040513          	mv	a0,s0
80006680:	7e9000ef          	jal	ra,80007668 <__clzsi2>
80006684:	ffb50513          	addi	a0,a0,-5
80006688:	00a41433          	sll	s0,s0,a0
8000668c:	03254e63          	blt	a0,s2,800066c8 <__addsf3+0x38c>
80006690:	41250533          	sub	a0,a0,s2
80006694:	00150513          	addi	a0,a0,1
80006698:	02000713          	li	a4,32
8000669c:	00a457b3          	srl	a5,s0,a0
800066a0:	40a70533          	sub	a0,a4,a0
800066a4:	00a41433          	sll	s0,s0,a0
800066a8:	00803433          	snez	s0,s0
800066ac:	0087e7b3          	or	a5,a5,s0
800066b0:	00000513          	li	a0,0
800066b4:	e0dff06f          	j	800064c0 <__addsf3+0x184>
800066b8:	fc0412e3          	bnez	s0,8000667c <__addsf3+0x340>
800066bc:	00000793          	li	a5,0
800066c0:	00000513          	li	a0,0
800066c4:	f69ff06f          	j	8000662c <__addsf3+0x2f0>
800066c8:	fc0007b7          	lui	a5,0xfc000
800066cc:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0x7bbfffff>
800066d0:	40a90533          	sub	a0,s2,a0
800066d4:	00f477b3          	and	a5,s0,a5
800066d8:	de9ff06f          	j	800064c0 <__addsf3+0x184>
800066dc:	00090513          	mv	a0,s2
800066e0:	de1ff06f          	j	800064c0 <__addsf3+0x184>
800066e4:	00070793          	mv	a5,a4
800066e8:	cf5ff06f          	j	800063dc <__addsf3+0xa0>
800066ec:	0ff00513          	li	a0,255
800066f0:	00000793          	li	a5,0
800066f4:	00579713          	slli	a4,a5,0x5
800066f8:	00075e63          	bgez	a4,80006714 <__addsf3+0x3d8>
800066fc:	00150513          	addi	a0,a0,1
80006700:	0ff00713          	li	a4,255
80006704:	04e50e63          	beq	a0,a4,80006760 <__addsf3+0x424>
80006708:	fc000737          	lui	a4,0xfc000
8000670c:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
80006710:	00e7f7b3          	and	a5,a5,a4
80006714:	0ff00713          	li	a4,255
80006718:	0037d793          	srli	a5,a5,0x3
8000671c:	00e51863          	bne	a0,a4,8000672c <__addsf3+0x3f0>
80006720:	00078663          	beqz	a5,8000672c <__addsf3+0x3f0>
80006724:	004007b7          	lui	a5,0x400
80006728:	00000493          	li	s1,0
8000672c:	0ff57513          	andi	a0,a0,255
80006730:	00c12083          	lw	ra,12(sp)
80006734:	00812403          	lw	s0,8(sp)
80006738:	00979793          	slli	a5,a5,0x9
8000673c:	01751713          	slli	a4,a0,0x17
80006740:	0097d513          	srli	a0,a5,0x9
80006744:	01f49493          	slli	s1,s1,0x1f
80006748:	00e56533          	or	a0,a0,a4
8000674c:	00956533          	or	a0,a0,s1
80006750:	00012903          	lw	s2,0(sp)
80006754:	00412483          	lw	s1,4(sp)
80006758:	01010113          	addi	sp,sp,16
8000675c:	00008067          	ret
80006760:	00000793          	li	a5,0
80006764:	fb1ff06f          	j	80006714 <__addsf3+0x3d8>

80006768 <__divsf3>:
80006768:	fd010113          	addi	sp,sp,-48
8000676c:	02912223          	sw	s1,36(sp)
80006770:	01755493          	srli	s1,a0,0x17
80006774:	01312e23          	sw	s3,28(sp)
80006778:	01512a23          	sw	s5,20(sp)
8000677c:	01612823          	sw	s6,16(sp)
80006780:	00951a93          	slli	s5,a0,0x9
80006784:	02112623          	sw	ra,44(sp)
80006788:	02812423          	sw	s0,40(sp)
8000678c:	03212023          	sw	s2,32(sp)
80006790:	01412c23          	sw	s4,24(sp)
80006794:	01712623          	sw	s7,12(sp)
80006798:	01812423          	sw	s8,8(sp)
8000679c:	01912223          	sw	s9,4(sp)
800067a0:	0ff4f493          	andi	s1,s1,255
800067a4:	00058b13          	mv	s6,a1
800067a8:	009ada93          	srli	s5,s5,0x9
800067ac:	01f55993          	srli	s3,a0,0x1f
800067b0:	08048663          	beqz	s1,8000683c <__divsf3+0xd4>
800067b4:	0ff00793          	li	a5,255
800067b8:	0af48263          	beq	s1,a5,8000685c <__divsf3+0xf4>
800067bc:	003a9a93          	slli	s5,s5,0x3
800067c0:	040007b7          	lui	a5,0x4000
800067c4:	00faeab3          	or	s5,s5,a5
800067c8:	f8148493          	addi	s1,s1,-127
800067cc:	00000b93          	li	s7,0
800067d0:	017b5513          	srli	a0,s6,0x17
800067d4:	009b1413          	slli	s0,s6,0x9
800067d8:	0ff57513          	andi	a0,a0,255
800067dc:	00945413          	srli	s0,s0,0x9
800067e0:	01fb5b13          	srli	s6,s6,0x1f
800067e4:	08050c63          	beqz	a0,8000687c <__divsf3+0x114>
800067e8:	0ff00793          	li	a5,255
800067ec:	0af50863          	beq	a0,a5,8000689c <__divsf3+0x134>
800067f0:	00341413          	slli	s0,s0,0x3
800067f4:	040007b7          	lui	a5,0x4000
800067f8:	00f46433          	or	s0,s0,a5
800067fc:	f8150513          	addi	a0,a0,-127
80006800:	00000793          	li	a5,0
80006804:	002b9713          	slli	a4,s7,0x2
80006808:	00f76733          	or	a4,a4,a5
8000680c:	fff70713          	addi	a4,a4,-1
80006810:	00e00693          	li	a3,14
80006814:	0169c933          	xor	s2,s3,s6
80006818:	40a48a33          	sub	s4,s1,a0
8000681c:	0ae6e063          	bltu	a3,a4,800068bc <__divsf3+0x154>
80006820:	00001697          	auipc	a3,0x1
80006824:	26468693          	addi	a3,a3,612 # 80007a84 <PIo2+0x2c>
80006828:	00271713          	slli	a4,a4,0x2
8000682c:	00d70733          	add	a4,a4,a3
80006830:	00072703          	lw	a4,0(a4)
80006834:	00d70733          	add	a4,a4,a3
80006838:	00070067          	jr	a4
8000683c:	020a8a63          	beqz	s5,80006870 <__divsf3+0x108>
80006840:	000a8513          	mv	a0,s5
80006844:	625000ef          	jal	ra,80007668 <__clzsi2>
80006848:	ffb50793          	addi	a5,a0,-5
8000684c:	f8a00493          	li	s1,-118
80006850:	00fa9ab3          	sll	s5,s5,a5
80006854:	40a484b3          	sub	s1,s1,a0
80006858:	f75ff06f          	j	800067cc <__divsf3+0x64>
8000685c:	0ff00493          	li	s1,255
80006860:	00200b93          	li	s7,2
80006864:	f60a86e3          	beqz	s5,800067d0 <__divsf3+0x68>
80006868:	00300b93          	li	s7,3
8000686c:	f65ff06f          	j	800067d0 <__divsf3+0x68>
80006870:	00000493          	li	s1,0
80006874:	00100b93          	li	s7,1
80006878:	f59ff06f          	j	800067d0 <__divsf3+0x68>
8000687c:	02040a63          	beqz	s0,800068b0 <__divsf3+0x148>
80006880:	00040513          	mv	a0,s0
80006884:	5e5000ef          	jal	ra,80007668 <__clzsi2>
80006888:	ffb50793          	addi	a5,a0,-5
8000688c:	00f41433          	sll	s0,s0,a5
80006890:	f8a00793          	li	a5,-118
80006894:	40a78533          	sub	a0,a5,a0
80006898:	f69ff06f          	j	80006800 <__divsf3+0x98>
8000689c:	0ff00513          	li	a0,255
800068a0:	00200793          	li	a5,2
800068a4:	f60400e3          	beqz	s0,80006804 <__divsf3+0x9c>
800068a8:	00300793          	li	a5,3
800068ac:	f59ff06f          	j	80006804 <__divsf3+0x9c>
800068b0:	00000513          	li	a0,0
800068b4:	00100793          	li	a5,1
800068b8:	f4dff06f          	j	80006804 <__divsf3+0x9c>
800068bc:	00541b13          	slli	s6,s0,0x5
800068c0:	128af663          	bgeu	s5,s0,800069ec <__divsf3+0x284>
800068c4:	fffa0a13          	addi	s4,s4,-1
800068c8:	00000493          	li	s1,0
800068cc:	010b5b93          	srli	s7,s6,0x10
800068d0:	00010437          	lui	s0,0x10
800068d4:	000b8593          	mv	a1,s7
800068d8:	fff40413          	addi	s0,s0,-1 # ffff <_stack_size+0x7fff>
800068dc:	000a8513          	mv	a0,s5
800068e0:	4dd000ef          	jal	ra,800075bc <__udivsi3>
800068e4:	008b7433          	and	s0,s6,s0
800068e8:	00050593          	mv	a1,a0
800068ec:	00050c93          	mv	s9,a0
800068f0:	00040513          	mv	a0,s0
800068f4:	40d000ef          	jal	ra,80007500 <__mulsi3>
800068f8:	00050c13          	mv	s8,a0
800068fc:	000b8593          	mv	a1,s7
80006900:	000a8513          	mv	a0,s5
80006904:	501000ef          	jal	ra,80007604 <__umodsi3>
80006908:	01051513          	slli	a0,a0,0x10
8000690c:	0104d493          	srli	s1,s1,0x10
80006910:	00a4e533          	or	a0,s1,a0
80006914:	000c8993          	mv	s3,s9
80006918:	01857e63          	bgeu	a0,s8,80006934 <__divsf3+0x1cc>
8000691c:	01650533          	add	a0,a0,s6
80006920:	fffc8993          	addi	s3,s9,-1
80006924:	01656863          	bltu	a0,s6,80006934 <__divsf3+0x1cc>
80006928:	01857663          	bgeu	a0,s8,80006934 <__divsf3+0x1cc>
8000692c:	ffec8993          	addi	s3,s9,-2
80006930:	01650533          	add	a0,a0,s6
80006934:	418504b3          	sub	s1,a0,s8
80006938:	000b8593          	mv	a1,s7
8000693c:	00048513          	mv	a0,s1
80006940:	47d000ef          	jal	ra,800075bc <__udivsi3>
80006944:	00050593          	mv	a1,a0
80006948:	00050c13          	mv	s8,a0
8000694c:	00040513          	mv	a0,s0
80006950:	3b1000ef          	jal	ra,80007500 <__mulsi3>
80006954:	00050a93          	mv	s5,a0
80006958:	000b8593          	mv	a1,s7
8000695c:	00048513          	mv	a0,s1
80006960:	4a5000ef          	jal	ra,80007604 <__umodsi3>
80006964:	01051513          	slli	a0,a0,0x10
80006968:	000c0413          	mv	s0,s8
8000696c:	01557e63          	bgeu	a0,s5,80006988 <__divsf3+0x220>
80006970:	01650533          	add	a0,a0,s6
80006974:	fffc0413          	addi	s0,s8,-1
80006978:	01656863          	bltu	a0,s6,80006988 <__divsf3+0x220>
8000697c:	01557663          	bgeu	a0,s5,80006988 <__divsf3+0x220>
80006980:	ffec0413          	addi	s0,s8,-2
80006984:	01650533          	add	a0,a0,s6
80006988:	01099993          	slli	s3,s3,0x10
8000698c:	41550533          	sub	a0,a0,s5
80006990:	0089e9b3          	or	s3,s3,s0
80006994:	00a03533          	snez	a0,a0
80006998:	00a9e433          	or	s0,s3,a0
8000699c:	07fa0713          	addi	a4,s4,127
800069a0:	0ee05663          	blez	a4,80006a8c <__divsf3+0x324>
800069a4:	00747793          	andi	a5,s0,7
800069a8:	00078a63          	beqz	a5,800069bc <__divsf3+0x254>
800069ac:	00f47793          	andi	a5,s0,15
800069b0:	00400693          	li	a3,4
800069b4:	00d78463          	beq	a5,a3,800069bc <__divsf3+0x254>
800069b8:	00440413          	addi	s0,s0,4
800069bc:	00441793          	slli	a5,s0,0x4
800069c0:	0007da63          	bgez	a5,800069d4 <__divsf3+0x26c>
800069c4:	f80007b7          	lui	a5,0xf8000
800069c8:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_top+0x77bfffff>
800069cc:	00f47433          	and	s0,s0,a5
800069d0:	080a0713          	addi	a4,s4,128
800069d4:	0fe00793          	li	a5,254
800069d8:	00345413          	srli	s0,s0,0x3
800069dc:	04e7d463          	bge	a5,a4,80006a24 <__divsf3+0x2bc>
800069e0:	00000413          	li	s0,0
800069e4:	0ff00713          	li	a4,255
800069e8:	03c0006f          	j	80006a24 <__divsf3+0x2bc>
800069ec:	01fa9493          	slli	s1,s5,0x1f
800069f0:	001ada93          	srli	s5,s5,0x1
800069f4:	ed9ff06f          	j	800068cc <__divsf3+0x164>
800069f8:	00098913          	mv	s2,s3
800069fc:	000a8413          	mv	s0,s5
80006a00:	000b8793          	mv	a5,s7
80006a04:	00200713          	li	a4,2
80006a08:	fce78ce3          	beq	a5,a4,800069e0 <__divsf3+0x278>
80006a0c:	00300713          	li	a4,3
80006a10:	0ce78863          	beq	a5,a4,80006ae0 <__divsf3+0x378>
80006a14:	00100713          	li	a4,1
80006a18:	f8e792e3          	bne	a5,a4,8000699c <__divsf3+0x234>
80006a1c:	00000413          	li	s0,0
80006a20:	00000713          	li	a4,0
80006a24:	00941413          	slli	s0,s0,0x9
80006a28:	0ff77713          	andi	a4,a4,255
80006a2c:	01771713          	slli	a4,a4,0x17
80006a30:	00945413          	srli	s0,s0,0x9
80006a34:	01f91513          	slli	a0,s2,0x1f
80006a38:	00e46433          	or	s0,s0,a4
80006a3c:	00a46533          	or	a0,s0,a0
80006a40:	02c12083          	lw	ra,44(sp)
80006a44:	02812403          	lw	s0,40(sp)
80006a48:	02412483          	lw	s1,36(sp)
80006a4c:	02012903          	lw	s2,32(sp)
80006a50:	01c12983          	lw	s3,28(sp)
80006a54:	01812a03          	lw	s4,24(sp)
80006a58:	01412a83          	lw	s5,20(sp)
80006a5c:	01012b03          	lw	s6,16(sp)
80006a60:	00c12b83          	lw	s7,12(sp)
80006a64:	00812c03          	lw	s8,8(sp)
80006a68:	00412c83          	lw	s9,4(sp)
80006a6c:	03010113          	addi	sp,sp,48
80006a70:	00008067          	ret
80006a74:	000b0913          	mv	s2,s6
80006a78:	f8dff06f          	j	80006a04 <__divsf3+0x29c>
80006a7c:	00400437          	lui	s0,0x400
80006a80:	00000913          	li	s2,0
80006a84:	00300793          	li	a5,3
80006a88:	f7dff06f          	j	80006a04 <__divsf3+0x29c>
80006a8c:	00100793          	li	a5,1
80006a90:	40e787b3          	sub	a5,a5,a4
80006a94:	01b00713          	li	a4,27
80006a98:	f8f742e3          	blt	a4,a5,80006a1c <__divsf3+0x2b4>
80006a9c:	09ea0513          	addi	a0,s4,158
80006aa0:	00f457b3          	srl	a5,s0,a5
80006aa4:	00a41433          	sll	s0,s0,a0
80006aa8:	00803433          	snez	s0,s0
80006aac:	0087e433          	or	s0,a5,s0
80006ab0:	00747793          	andi	a5,s0,7
80006ab4:	00078a63          	beqz	a5,80006ac8 <__divsf3+0x360>
80006ab8:	00f47793          	andi	a5,s0,15
80006abc:	00400713          	li	a4,4
80006ac0:	00e78463          	beq	a5,a4,80006ac8 <__divsf3+0x360>
80006ac4:	00440413          	addi	s0,s0,4 # 400004 <_stack_size+0x3f8004>
80006ac8:	00541793          	slli	a5,s0,0x5
80006acc:	00345413          	srli	s0,s0,0x3
80006ad0:	f407d8e3          	bgez	a5,80006a20 <__divsf3+0x2b8>
80006ad4:	00000413          	li	s0,0
80006ad8:	00100713          	li	a4,1
80006adc:	f49ff06f          	j	80006a24 <__divsf3+0x2bc>
80006ae0:	00400437          	lui	s0,0x400
80006ae4:	0ff00713          	li	a4,255
80006ae8:	00000913          	li	s2,0
80006aec:	f39ff06f          	j	80006a24 <__divsf3+0x2bc>

80006af0 <__eqsf2>:
80006af0:	008007b7          	lui	a5,0x800
80006af4:	fff78793          	addi	a5,a5,-1 # 7fffff <_stack_size+0x7f7fff>
80006af8:	01755713          	srli	a4,a0,0x17
80006afc:	00a7f833          	and	a6,a5,a0
80006b00:	0175d613          	srli	a2,a1,0x17
80006b04:	01f55693          	srli	a3,a0,0x1f
80006b08:	0ff77713          	andi	a4,a4,255
80006b0c:	0ff00513          	li	a0,255
80006b10:	00b7f7b3          	and	a5,a5,a1
80006b14:	0ff67613          	andi	a2,a2,255
80006b18:	01f5d593          	srli	a1,a1,0x1f
80006b1c:	00a71663          	bne	a4,a0,80006b28 <__eqsf2+0x38>
80006b20:	00100513          	li	a0,1
80006b24:	02081a63          	bnez	a6,80006b58 <__eqsf2+0x68>
80006b28:	0ff00513          	li	a0,255
80006b2c:	00a61663          	bne	a2,a0,80006b38 <__eqsf2+0x48>
80006b30:	00100513          	li	a0,1
80006b34:	02079263          	bnez	a5,80006b58 <__eqsf2+0x68>
80006b38:	00100513          	li	a0,1
80006b3c:	00c71e63          	bne	a4,a2,80006b58 <__eqsf2+0x68>
80006b40:	00f81c63          	bne	a6,a5,80006b58 <__eqsf2+0x68>
80006b44:	00b68863          	beq	a3,a1,80006b54 <__eqsf2+0x64>
80006b48:	00071863          	bnez	a4,80006b58 <__eqsf2+0x68>
80006b4c:	01003533          	snez	a0,a6
80006b50:	00008067          	ret
80006b54:	00000513          	li	a0,0
80006b58:	00008067          	ret

80006b5c <__gesf2>:
80006b5c:	00800737          	lui	a4,0x800
80006b60:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
80006b64:	01755613          	srli	a2,a0,0x17
80006b68:	00a77833          	and	a6,a4,a0
80006b6c:	0175d693          	srli	a3,a1,0x17
80006b70:	01f55793          	srli	a5,a0,0x1f
80006b74:	0ff67613          	andi	a2,a2,255
80006b78:	0ff00513          	li	a0,255
80006b7c:	00b77733          	and	a4,a4,a1
80006b80:	0ff6f693          	andi	a3,a3,255
80006b84:	01f5d593          	srli	a1,a1,0x1f
80006b88:	00a61863          	bne	a2,a0,80006b98 <__gesf2+0x3c>
80006b8c:	ffe00513          	li	a0,-2
80006b90:	06080c63          	beqz	a6,80006c08 <__gesf2+0xac>
80006b94:	00008067          	ret
80006b98:	00a69663          	bne	a3,a0,80006ba4 <__gesf2+0x48>
80006b9c:	ffe00513          	li	a0,-2
80006ba0:	04071c63          	bnez	a4,80006bf8 <__gesf2+0x9c>
80006ba4:	06061463          	bnez	a2,80006c0c <__gesf2+0xb0>
80006ba8:	00069463          	bnez	a3,80006bb0 <__gesf2+0x54>
80006bac:	04070863          	beqz	a4,80006bfc <__gesf2+0xa0>
80006bb0:	00080e63          	beqz	a6,80006bcc <__gesf2+0x70>
80006bb4:	00b79463          	bne	a5,a1,80006bbc <__gesf2+0x60>
80006bb8:	02c6d263          	bge	a3,a2,80006bdc <__gesf2+0x80>
80006bbc:	00100513          	li	a0,1
80006bc0:	02078c63          	beqz	a5,80006bf8 <__gesf2+0x9c>
80006bc4:	fff00513          	li	a0,-1
80006bc8:	00008067          	ret
80006bcc:	fff00513          	li	a0,-1
80006bd0:	02058463          	beqz	a1,80006bf8 <__gesf2+0x9c>
80006bd4:	00100513          	li	a0,1
80006bd8:	00008067          	ret
80006bdc:	00d65863          	bge	a2,a3,80006bec <__gesf2+0x90>
80006be0:	fff00513          	li	a0,-1
80006be4:	fe0798e3          	bnez	a5,80006bd4 <__gesf2+0x78>
80006be8:	0100006f          	j	80006bf8 <__gesf2+0x9c>
80006bec:	fd0768e3          	bltu	a4,a6,80006bbc <__gesf2+0x60>
80006bf0:	00000513          	li	a0,0
80006bf4:	fee866e3          	bltu	a6,a4,80006be0 <__gesf2+0x84>
80006bf8:	00008067          	ret
80006bfc:	00000513          	li	a0,0
80006c00:	fe080ce3          	beqz	a6,80006bf8 <__gesf2+0x9c>
80006c04:	fb9ff06f          	j	80006bbc <__gesf2+0x60>
80006c08:	f8c68ae3          	beq	a3,a2,80006b9c <__gesf2+0x40>
80006c0c:	fa0694e3          	bnez	a3,80006bb4 <__gesf2+0x58>
80006c10:	fa0706e3          	beqz	a4,80006bbc <__gesf2+0x60>
80006c14:	fa1ff06f          	j	80006bb4 <__gesf2+0x58>

80006c18 <__mulsf3>:
80006c18:	fe010113          	addi	sp,sp,-32
80006c1c:	01212823          	sw	s2,16(sp)
80006c20:	01755913          	srli	s2,a0,0x17
80006c24:	00912a23          	sw	s1,20(sp)
80006c28:	01312623          	sw	s3,12(sp)
80006c2c:	01512223          	sw	s5,4(sp)
80006c30:	00951493          	slli	s1,a0,0x9
80006c34:	00112e23          	sw	ra,28(sp)
80006c38:	00812c23          	sw	s0,24(sp)
80006c3c:	01412423          	sw	s4,8(sp)
80006c40:	0ff97913          	andi	s2,s2,255
80006c44:	00058a93          	mv	s5,a1
80006c48:	0094d493          	srli	s1,s1,0x9
80006c4c:	01f55993          	srli	s3,a0,0x1f
80006c50:	08090863          	beqz	s2,80006ce0 <__mulsf3+0xc8>
80006c54:	0ff00793          	li	a5,255
80006c58:	0af90463          	beq	s2,a5,80006d00 <__mulsf3+0xe8>
80006c5c:	00349493          	slli	s1,s1,0x3
80006c60:	040007b7          	lui	a5,0x4000
80006c64:	00f4e4b3          	or	s1,s1,a5
80006c68:	f8190913          	addi	s2,s2,-127
80006c6c:	00000a13          	li	s4,0
80006c70:	017ad513          	srli	a0,s5,0x17
80006c74:	009a9413          	slli	s0,s5,0x9
80006c78:	0ff57513          	andi	a0,a0,255
80006c7c:	00945413          	srli	s0,s0,0x9
80006c80:	01fada93          	srli	s5,s5,0x1f
80006c84:	08050e63          	beqz	a0,80006d20 <__mulsf3+0x108>
80006c88:	0ff00793          	li	a5,255
80006c8c:	0af50a63          	beq	a0,a5,80006d40 <__mulsf3+0x128>
80006c90:	00341413          	slli	s0,s0,0x3
80006c94:	040007b7          	lui	a5,0x4000
80006c98:	00f46433          	or	s0,s0,a5
80006c9c:	f8150513          	addi	a0,a0,-127
80006ca0:	00000793          	li	a5,0
80006ca4:	002a1713          	slli	a4,s4,0x2
80006ca8:	00f76733          	or	a4,a4,a5
80006cac:	00a90933          	add	s2,s2,a0
80006cb0:	fff70713          	addi	a4,a4,-1
80006cb4:	00e00693          	li	a3,14
80006cb8:	0159c833          	xor	a6,s3,s5
80006cbc:	00190893          	addi	a7,s2,1
80006cc0:	0ae6e063          	bltu	a3,a4,80006d60 <__mulsf3+0x148>
80006cc4:	00001697          	auipc	a3,0x1
80006cc8:	dfc68693          	addi	a3,a3,-516 # 80007ac0 <PIo2+0x68>
80006ccc:	00271713          	slli	a4,a4,0x2
80006cd0:	00d70733          	add	a4,a4,a3
80006cd4:	00072703          	lw	a4,0(a4)
80006cd8:	00d70733          	add	a4,a4,a3
80006cdc:	00070067          	jr	a4
80006ce0:	02048a63          	beqz	s1,80006d14 <__mulsf3+0xfc>
80006ce4:	00048513          	mv	a0,s1
80006ce8:	181000ef          	jal	ra,80007668 <__clzsi2>
80006cec:	ffb50793          	addi	a5,a0,-5
80006cf0:	f8a00913          	li	s2,-118
80006cf4:	00f494b3          	sll	s1,s1,a5
80006cf8:	40a90933          	sub	s2,s2,a0
80006cfc:	f71ff06f          	j	80006c6c <__mulsf3+0x54>
80006d00:	0ff00913          	li	s2,255
80006d04:	00200a13          	li	s4,2
80006d08:	f60484e3          	beqz	s1,80006c70 <__mulsf3+0x58>
80006d0c:	00300a13          	li	s4,3
80006d10:	f61ff06f          	j	80006c70 <__mulsf3+0x58>
80006d14:	00000913          	li	s2,0
80006d18:	00100a13          	li	s4,1
80006d1c:	f55ff06f          	j	80006c70 <__mulsf3+0x58>
80006d20:	02040a63          	beqz	s0,80006d54 <__mulsf3+0x13c>
80006d24:	00040513          	mv	a0,s0
80006d28:	141000ef          	jal	ra,80007668 <__clzsi2>
80006d2c:	ffb50793          	addi	a5,a0,-5
80006d30:	00f41433          	sll	s0,s0,a5
80006d34:	f8a00793          	li	a5,-118
80006d38:	40a78533          	sub	a0,a5,a0
80006d3c:	f65ff06f          	j	80006ca0 <__mulsf3+0x88>
80006d40:	0ff00513          	li	a0,255
80006d44:	00200793          	li	a5,2
80006d48:	f4040ee3          	beqz	s0,80006ca4 <__mulsf3+0x8c>
80006d4c:	00300793          	li	a5,3
80006d50:	f55ff06f          	j	80006ca4 <__mulsf3+0x8c>
80006d54:	00000513          	li	a0,0
80006d58:	00100793          	li	a5,1
80006d5c:	f49ff06f          	j	80006ca4 <__mulsf3+0x8c>
80006d60:	00010eb7          	lui	t4,0x10
80006d64:	fffe8e13          	addi	t3,t4,-1 # ffff <_stack_size+0x7fff>
80006d68:	0104df93          	srli	t6,s1,0x10
80006d6c:	01045793          	srli	a5,s0,0x10
80006d70:	01c4f4b3          	and	s1,s1,t3
80006d74:	01c47433          	and	s0,s0,t3
80006d78:	00048513          	mv	a0,s1
80006d7c:	00040593          	mv	a1,s0
80006d80:	780000ef          	jal	ra,80007500 <__mulsi3>
80006d84:	00050313          	mv	t1,a0
80006d88:	00078593          	mv	a1,a5
80006d8c:	00048513          	mv	a0,s1
80006d90:	770000ef          	jal	ra,80007500 <__mulsi3>
80006d94:	00050713          	mv	a4,a0
80006d98:	00040593          	mv	a1,s0
80006d9c:	000f8513          	mv	a0,t6
80006da0:	760000ef          	jal	ra,80007500 <__mulsi3>
80006da4:	00050f13          	mv	t5,a0
80006da8:	00078593          	mv	a1,a5
80006dac:	000f8513          	mv	a0,t6
80006db0:	750000ef          	jal	ra,80007500 <__mulsi3>
80006db4:	01035793          	srli	a5,t1,0x10
80006db8:	01e70733          	add	a4,a4,t5
80006dbc:	00e787b3          	add	a5,a5,a4
80006dc0:	01e7f463          	bgeu	a5,t5,80006dc8 <__mulsf3+0x1b0>
80006dc4:	01d50533          	add	a0,a0,t4
80006dc8:	01c7f733          	and	a4,a5,t3
80006dcc:	01071713          	slli	a4,a4,0x10
80006dd0:	01c37333          	and	t1,t1,t3
80006dd4:	00670733          	add	a4,a4,t1
80006dd8:	00671413          	slli	s0,a4,0x6
80006ddc:	0107d793          	srli	a5,a5,0x10
80006de0:	00803433          	snez	s0,s0
80006de4:	01a75713          	srli	a4,a4,0x1a
80006de8:	00a787b3          	add	a5,a5,a0
80006dec:	00679793          	slli	a5,a5,0x6
80006df0:	00e46733          	or	a4,s0,a4
80006df4:	00e7e433          	or	s0,a5,a4
80006df8:	00441793          	slli	a5,s0,0x4
80006dfc:	0807dc63          	bgez	a5,80006e94 <__mulsf3+0x27c>
80006e00:	00145793          	srli	a5,s0,0x1
80006e04:	00147413          	andi	s0,s0,1
80006e08:	0087e433          	or	s0,a5,s0
80006e0c:	07f88713          	addi	a4,a7,127
80006e10:	08e05663          	blez	a4,80006e9c <__mulsf3+0x284>
80006e14:	00747793          	andi	a5,s0,7
80006e18:	00078a63          	beqz	a5,80006e2c <__mulsf3+0x214>
80006e1c:	00f47793          	andi	a5,s0,15
80006e20:	00400693          	li	a3,4
80006e24:	00d78463          	beq	a5,a3,80006e2c <__mulsf3+0x214>
80006e28:	00440413          	addi	s0,s0,4 # 400004 <_stack_size+0x3f8004>
80006e2c:	00441793          	slli	a5,s0,0x4
80006e30:	0007da63          	bgez	a5,80006e44 <__mulsf3+0x22c>
80006e34:	f80007b7          	lui	a5,0xf8000
80006e38:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_top+0x77bfffff>
80006e3c:	00f47433          	and	s0,s0,a5
80006e40:	08088713          	addi	a4,a7,128
80006e44:	0fe00793          	li	a5,254
80006e48:	00345413          	srli	s0,s0,0x3
80006e4c:	0ae7d863          	bge	a5,a4,80006efc <__mulsf3+0x2e4>
80006e50:	00000413          	li	s0,0
80006e54:	0ff00713          	li	a4,255
80006e58:	0a40006f          	j	80006efc <__mulsf3+0x2e4>
80006e5c:	00098813          	mv	a6,s3
80006e60:	00048413          	mv	s0,s1
80006e64:	000a0793          	mv	a5,s4
80006e68:	00200713          	li	a4,2
80006e6c:	fee782e3          	beq	a5,a4,80006e50 <__mulsf3+0x238>
80006e70:	00300713          	li	a4,3
80006e74:	06e78e63          	beq	a5,a4,80006ef0 <__mulsf3+0x2d8>
80006e78:	00100713          	li	a4,1
80006e7c:	f8e798e3          	bne	a5,a4,80006e0c <__mulsf3+0x1f4>
80006e80:	00000413          	li	s0,0
80006e84:	00000713          	li	a4,0
80006e88:	0740006f          	j	80006efc <__mulsf3+0x2e4>
80006e8c:	000a8813          	mv	a6,s5
80006e90:	fd9ff06f          	j	80006e68 <__mulsf3+0x250>
80006e94:	00090893          	mv	a7,s2
80006e98:	f75ff06f          	j	80006e0c <__mulsf3+0x1f4>
80006e9c:	00100793          	li	a5,1
80006ea0:	40e787b3          	sub	a5,a5,a4
80006ea4:	01b00713          	li	a4,27
80006ea8:	fcf74ce3          	blt	a4,a5,80006e80 <__mulsf3+0x268>
80006eac:	09e88893          	addi	a7,a7,158
80006eb0:	00f457b3          	srl	a5,s0,a5
80006eb4:	01141433          	sll	s0,s0,a7
80006eb8:	00803433          	snez	s0,s0
80006ebc:	0087e433          	or	s0,a5,s0
80006ec0:	00747793          	andi	a5,s0,7
80006ec4:	00078a63          	beqz	a5,80006ed8 <__mulsf3+0x2c0>
80006ec8:	00f47793          	andi	a5,s0,15
80006ecc:	00400713          	li	a4,4
80006ed0:	00e78463          	beq	a5,a4,80006ed8 <__mulsf3+0x2c0>
80006ed4:	00440413          	addi	s0,s0,4
80006ed8:	00541793          	slli	a5,s0,0x5
80006edc:	00345413          	srli	s0,s0,0x3
80006ee0:	fa07d2e3          	bgez	a5,80006e84 <__mulsf3+0x26c>
80006ee4:	00000413          	li	s0,0
80006ee8:	00100713          	li	a4,1
80006eec:	0100006f          	j	80006efc <__mulsf3+0x2e4>
80006ef0:	00400437          	lui	s0,0x400
80006ef4:	0ff00713          	li	a4,255
80006ef8:	00000813          	li	a6,0
80006efc:	00941413          	slli	s0,s0,0x9
80006f00:	0ff77713          	andi	a4,a4,255
80006f04:	01771713          	slli	a4,a4,0x17
80006f08:	00945413          	srli	s0,s0,0x9
80006f0c:	00e46433          	or	s0,s0,a4
80006f10:	01f81513          	slli	a0,a6,0x1f
80006f14:	00a46533          	or	a0,s0,a0
80006f18:	01c12083          	lw	ra,28(sp)
80006f1c:	01812403          	lw	s0,24(sp)
80006f20:	01412483          	lw	s1,20(sp)
80006f24:	01012903          	lw	s2,16(sp)
80006f28:	00c12983          	lw	s3,12(sp)
80006f2c:	00812a03          	lw	s4,8(sp)
80006f30:	00412a83          	lw	s5,4(sp)
80006f34:	02010113          	addi	sp,sp,32
80006f38:	00008067          	ret

80006f3c <__subsf3>:
80006f3c:	00800737          	lui	a4,0x800
80006f40:	ff010113          	addi	sp,sp,-16
80006f44:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7f7fff>
80006f48:	01755693          	srli	a3,a0,0x17
80006f4c:	0175d813          	srli	a6,a1,0x17
80006f50:	00a777b3          	and	a5,a4,a0
80006f54:	00912223          	sw	s1,4(sp)
80006f58:	00b77733          	and	a4,a4,a1
80006f5c:	01212023          	sw	s2,0(sp)
80006f60:	0ff6f693          	andi	a3,a3,255
80006f64:	0ff87813          	andi	a6,a6,255
80006f68:	00112623          	sw	ra,12(sp)
80006f6c:	00812423          	sw	s0,8(sp)
80006f70:	0ff00613          	li	a2,255
80006f74:	01f55493          	srli	s1,a0,0x1f
80006f78:	00068913          	mv	s2,a3
80006f7c:	00379793          	slli	a5,a5,0x3
80006f80:	00080513          	mv	a0,a6
80006f84:	01f5d593          	srli	a1,a1,0x1f
80006f88:	00371713          	slli	a4,a4,0x3
80006f8c:	00c81463          	bne	a6,a2,80006f94 <__subsf3+0x58>
80006f90:	00071463          	bnez	a4,80006f98 <__subsf3+0x5c>
80006f94:	0015c593          	xori	a1,a1,1
80006f98:	41068633          	sub	a2,a3,a6
80006f9c:	16959e63          	bne	a1,s1,80007118 <__subsf3+0x1dc>
80006fa0:	08c05c63          	blez	a2,80007038 <__subsf3+0xfc>
80006fa4:	04081c63          	bnez	a6,80006ffc <__subsf3+0xc0>
80006fa8:	34070663          	beqz	a4,800072f4 <__subsf3+0x3b8>
80006fac:	fff60613          	addi	a2,a2,-1
80006fb0:	02061e63          	bnez	a2,80006fec <__subsf3+0xb0>
80006fb4:	00e787b3          	add	a5,a5,a4
80006fb8:	00068513          	mv	a0,a3
80006fbc:	00579713          	slli	a4,a5,0x5
80006fc0:	10075c63          	bgez	a4,800070d8 <__subsf3+0x19c>
80006fc4:	00150513          	addi	a0,a0,1
80006fc8:	0ff00713          	li	a4,255
80006fcc:	32e50e63          	beq	a0,a4,80007308 <__subsf3+0x3cc>
80006fd0:	7e000737          	lui	a4,0x7e000
80006fd4:	0017f693          	andi	a3,a5,1
80006fd8:	fff70713          	addi	a4,a4,-1 # 7dffffff <_stack_size+0x7dff7fff>
80006fdc:	0017d793          	srli	a5,a5,0x1
80006fe0:	00e7f7b3          	and	a5,a5,a4
80006fe4:	00d7e7b3          	or	a5,a5,a3
80006fe8:	0f00006f          	j	800070d8 <__subsf3+0x19c>
80006fec:	0ff00593          	li	a1,255
80006ff0:	00b69e63          	bne	a3,a1,8000700c <__subsf3+0xd0>
80006ff4:	0ff00513          	li	a0,255
80006ff8:	0e00006f          	j	800070d8 <__subsf3+0x19c>
80006ffc:	0ff00593          	li	a1,255
80007000:	feb68ae3          	beq	a3,a1,80006ff4 <__subsf3+0xb8>
80007004:	040005b7          	lui	a1,0x4000
80007008:	00b76733          	or	a4,a4,a1
8000700c:	01b00593          	li	a1,27
80007010:	00c5d663          	bge	a1,a2,8000701c <__subsf3+0xe0>
80007014:	00100713          	li	a4,1
80007018:	f9dff06f          	j	80006fb4 <__subsf3+0x78>
8000701c:	02000593          	li	a1,32
80007020:	00c75533          	srl	a0,a4,a2
80007024:	40c58633          	sub	a2,a1,a2
80007028:	00c71733          	sll	a4,a4,a2
8000702c:	00e03733          	snez	a4,a4
80007030:	00e56733          	or	a4,a0,a4
80007034:	f81ff06f          	j	80006fb4 <__subsf3+0x78>
80007038:	06060663          	beqz	a2,800070a4 <__subsf3+0x168>
8000703c:	40d80633          	sub	a2,a6,a3
80007040:	02069463          	bnez	a3,80007068 <__subsf3+0x12c>
80007044:	2a078c63          	beqz	a5,800072fc <__subsf3+0x3c0>
80007048:	fff60613          	addi	a2,a2,-1
8000704c:	00061663          	bnez	a2,80007058 <__subsf3+0x11c>
80007050:	00e787b3          	add	a5,a5,a4
80007054:	f69ff06f          	j	80006fbc <__subsf3+0x80>
80007058:	0ff00693          	li	a3,255
8000705c:	00d81e63          	bne	a6,a3,80007078 <__subsf3+0x13c>
80007060:	00070793          	mv	a5,a4
80007064:	f91ff06f          	j	80006ff4 <__subsf3+0xb8>
80007068:	0ff00693          	li	a3,255
8000706c:	fed80ae3          	beq	a6,a3,80007060 <__subsf3+0x124>
80007070:	040006b7          	lui	a3,0x4000
80007074:	00d7e7b3          	or	a5,a5,a3
80007078:	01b00693          	li	a3,27
8000707c:	00c6d663          	bge	a3,a2,80007088 <__subsf3+0x14c>
80007080:	00100793          	li	a5,1
80007084:	fcdff06f          	j	80007050 <__subsf3+0x114>
80007088:	02000693          	li	a3,32
8000708c:	40c686b3          	sub	a3,a3,a2
80007090:	00c7d5b3          	srl	a1,a5,a2
80007094:	00d797b3          	sll	a5,a5,a3
80007098:	00f037b3          	snez	a5,a5
8000709c:	00f5e7b3          	or	a5,a1,a5
800070a0:	fb1ff06f          	j	80007050 <__subsf3+0x114>
800070a4:	00168613          	addi	a2,a3,1 # 4000001 <_stack_size+0x3ff8001>
800070a8:	0fe67513          	andi	a0,a2,254
800070ac:	04051a63          	bnez	a0,80007100 <__subsf3+0x1c4>
800070b0:	04069263          	bnez	a3,800070f4 <__subsf3+0x1b8>
800070b4:	24078463          	beqz	a5,800072fc <__subsf3+0x3c0>
800070b8:	02070063          	beqz	a4,800070d8 <__subsf3+0x19c>
800070bc:	00e787b3          	add	a5,a5,a4
800070c0:	00579713          	slli	a4,a5,0x5
800070c4:	00075a63          	bgez	a4,800070d8 <__subsf3+0x19c>
800070c8:	fc000737          	lui	a4,0xfc000
800070cc:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
800070d0:	00e7f7b3          	and	a5,a5,a4
800070d4:	00100513          	li	a0,1
800070d8:	0077f713          	andi	a4,a5,7
800070dc:	22070863          	beqz	a4,8000730c <__subsf3+0x3d0>
800070e0:	00f7f713          	andi	a4,a5,15
800070e4:	00400693          	li	a3,4
800070e8:	22d70263          	beq	a4,a3,8000730c <__subsf3+0x3d0>
800070ec:	00478793          	addi	a5,a5,4
800070f0:	21c0006f          	j	8000730c <__subsf3+0x3d0>
800070f4:	f60786e3          	beqz	a5,80007060 <__subsf3+0x124>
800070f8:	ee070ee3          	beqz	a4,80006ff4 <__subsf3+0xb8>
800070fc:	1740006f          	j	80007270 <__subsf3+0x334>
80007100:	0ff00693          	li	a3,255
80007104:	20d60063          	beq	a2,a3,80007304 <__subsf3+0x3c8>
80007108:	00e787b3          	add	a5,a5,a4
8000710c:	0017d793          	srli	a5,a5,0x1
80007110:	00060513          	mv	a0,a2
80007114:	fc5ff06f          	j	800070d8 <__subsf3+0x19c>
80007118:	08c05863          	blez	a2,800071a8 <__subsf3+0x26c>
8000711c:	04081863          	bnez	a6,8000716c <__subsf3+0x230>
80007120:	00068513          	mv	a0,a3
80007124:	fa070ae3          	beqz	a4,800070d8 <__subsf3+0x19c>
80007128:	fff60613          	addi	a2,a2,-1
8000712c:	02061263          	bnez	a2,80007150 <__subsf3+0x214>
80007130:	40e787b3          	sub	a5,a5,a4
80007134:	00579713          	slli	a4,a5,0x5
80007138:	fa0750e3          	bgez	a4,800070d8 <__subsf3+0x19c>
8000713c:	04000437          	lui	s0,0x4000
80007140:	fff40413          	addi	s0,s0,-1 # 3ffffff <_stack_size+0x3ff7fff>
80007144:	0087f433          	and	s0,a5,s0
80007148:	00050913          	mv	s2,a0
8000714c:	1480006f          	j	80007294 <__subsf3+0x358>
80007150:	0ff00593          	li	a1,255
80007154:	0ff00513          	li	a0,255
80007158:	f8b680e3          	beq	a3,a1,800070d8 <__subsf3+0x19c>
8000715c:	01b00593          	li	a1,27
80007160:	02c5d263          	bge	a1,a2,80007184 <__subsf3+0x248>
80007164:	00100713          	li	a4,1
80007168:	0340006f          	j	8000719c <__subsf3+0x260>
8000716c:	0ff00593          	li	a1,255
80007170:	0ff00513          	li	a0,255
80007174:	f6b682e3          	beq	a3,a1,800070d8 <__subsf3+0x19c>
80007178:	040005b7          	lui	a1,0x4000
8000717c:	00b76733          	or	a4,a4,a1
80007180:	fddff06f          	j	8000715c <__subsf3+0x220>
80007184:	02000593          	li	a1,32
80007188:	00c75533          	srl	a0,a4,a2
8000718c:	40c58633          	sub	a2,a1,a2
80007190:	00c71733          	sll	a4,a4,a2
80007194:	00e03733          	snez	a4,a4
80007198:	00e56733          	or	a4,a0,a4
8000719c:	40e787b3          	sub	a5,a5,a4
800071a0:	00068513          	mv	a0,a3
800071a4:	f91ff06f          	j	80007134 <__subsf3+0x1f8>
800071a8:	06060a63          	beqz	a2,8000721c <__subsf3+0x2e0>
800071ac:	40d80633          	sub	a2,a6,a3
800071b0:	02069863          	bnez	a3,800071e0 <__subsf3+0x2a4>
800071b4:	08078063          	beqz	a5,80007234 <__subsf3+0x2f8>
800071b8:	fff60613          	addi	a2,a2,-1
800071bc:	00061863          	bnez	a2,800071cc <__subsf3+0x290>
800071c0:	40f707b3          	sub	a5,a4,a5
800071c4:	00058493          	mv	s1,a1
800071c8:	f6dff06f          	j	80007134 <__subsf3+0x1f8>
800071cc:	0ff00693          	li	a3,255
800071d0:	02d81063          	bne	a6,a3,800071f0 <__subsf3+0x2b4>
800071d4:	00070793          	mv	a5,a4
800071d8:	00058493          	mv	s1,a1
800071dc:	e19ff06f          	j	80006ff4 <__subsf3+0xb8>
800071e0:	0ff00693          	li	a3,255
800071e4:	fed808e3          	beq	a6,a3,800071d4 <__subsf3+0x298>
800071e8:	040006b7          	lui	a3,0x4000
800071ec:	00d7e7b3          	or	a5,a5,a3
800071f0:	01b00693          	li	a3,27
800071f4:	00c6d663          	bge	a3,a2,80007200 <__subsf3+0x2c4>
800071f8:	00100793          	li	a5,1
800071fc:	fc5ff06f          	j	800071c0 <__subsf3+0x284>
80007200:	02000693          	li	a3,32
80007204:	40c686b3          	sub	a3,a3,a2
80007208:	00c7d833          	srl	a6,a5,a2
8000720c:	00d797b3          	sll	a5,a5,a3
80007210:	00f037b3          	snez	a5,a5
80007214:	00f867b3          	or	a5,a6,a5
80007218:	fa9ff06f          	j	800071c0 <__subsf3+0x284>
8000721c:	00168513          	addi	a0,a3,1 # 4000001 <_stack_size+0x3ff8001>
80007220:	0fe57513          	andi	a0,a0,254
80007224:	04051e63          	bnez	a0,80007280 <__subsf3+0x344>
80007228:	04069063          	bnez	a3,80007268 <__subsf3+0x32c>
8000722c:	00079863          	bnez	a5,8000723c <__subsf3+0x300>
80007230:	02070663          	beqz	a4,8000725c <__subsf3+0x320>
80007234:	00070793          	mv	a5,a4
80007238:	0180006f          	j	80007250 <__subsf3+0x314>
8000723c:	e8070ee3          	beqz	a4,800070d8 <__subsf3+0x19c>
80007240:	40e786b3          	sub	a3,a5,a4
80007244:	00569613          	slli	a2,a3,0x5
80007248:	00065863          	bgez	a2,80007258 <__subsf3+0x31c>
8000724c:	40f707b3          	sub	a5,a4,a5
80007250:	00058493          	mv	s1,a1
80007254:	e85ff06f          	j	800070d8 <__subsf3+0x19c>
80007258:	12069063          	bnez	a3,80007378 <__subsf3+0x43c>
8000725c:	00000793          	li	a5,0
80007260:	00000493          	li	s1,0
80007264:	0a80006f          	j	8000730c <__subsf3+0x3d0>
80007268:	e80798e3          	bnez	a5,800070f8 <__subsf3+0x1bc>
8000726c:	f60714e3          	bnez	a4,800071d4 <__subsf3+0x298>
80007270:	00000493          	li	s1,0
80007274:	020007b7          	lui	a5,0x2000
80007278:	0ff00513          	li	a0,255
8000727c:	0900006f          	j	8000730c <__subsf3+0x3d0>
80007280:	40e78433          	sub	s0,a5,a4
80007284:	00541693          	slli	a3,s0,0x5
80007288:	0406d463          	bgez	a3,800072d0 <__subsf3+0x394>
8000728c:	40f70433          	sub	s0,a4,a5
80007290:	00058493          	mv	s1,a1
80007294:	00040513          	mv	a0,s0
80007298:	3d0000ef          	jal	ra,80007668 <__clzsi2>
8000729c:	ffb50513          	addi	a0,a0,-5
800072a0:	00a41433          	sll	s0,s0,a0
800072a4:	03254e63          	blt	a0,s2,800072e0 <__subsf3+0x3a4>
800072a8:	41250533          	sub	a0,a0,s2
800072ac:	00150513          	addi	a0,a0,1
800072b0:	02000713          	li	a4,32
800072b4:	00a457b3          	srl	a5,s0,a0
800072b8:	40a70533          	sub	a0,a4,a0
800072bc:	00a41433          	sll	s0,s0,a0
800072c0:	00803433          	snez	s0,s0
800072c4:	0087e7b3          	or	a5,a5,s0
800072c8:	00000513          	li	a0,0
800072cc:	e0dff06f          	j	800070d8 <__subsf3+0x19c>
800072d0:	fc0412e3          	bnez	s0,80007294 <__subsf3+0x358>
800072d4:	00000793          	li	a5,0
800072d8:	00000513          	li	a0,0
800072dc:	f85ff06f          	j	80007260 <__subsf3+0x324>
800072e0:	fc0007b7          	lui	a5,0xfc000
800072e4:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0x7bbfffff>
800072e8:	40a90533          	sub	a0,s2,a0
800072ec:	00f477b3          	and	a5,s0,a5
800072f0:	de9ff06f          	j	800070d8 <__subsf3+0x19c>
800072f4:	00068513          	mv	a0,a3
800072f8:	de1ff06f          	j	800070d8 <__subsf3+0x19c>
800072fc:	00070793          	mv	a5,a4
80007300:	dd9ff06f          	j	800070d8 <__subsf3+0x19c>
80007304:	0ff00513          	li	a0,255
80007308:	00000793          	li	a5,0
8000730c:	00579713          	slli	a4,a5,0x5
80007310:	00075e63          	bgez	a4,8000732c <__subsf3+0x3f0>
80007314:	00150513          	addi	a0,a0,1
80007318:	0ff00713          	li	a4,255
8000731c:	06e50263          	beq	a0,a4,80007380 <__subsf3+0x444>
80007320:	fc000737          	lui	a4,0xfc000
80007324:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
80007328:	00e7f7b3          	and	a5,a5,a4
8000732c:	0ff00713          	li	a4,255
80007330:	0037d793          	srli	a5,a5,0x3
80007334:	00e51863          	bne	a0,a4,80007344 <__subsf3+0x408>
80007338:	00078663          	beqz	a5,80007344 <__subsf3+0x408>
8000733c:	004007b7          	lui	a5,0x400
80007340:	00000493          	li	s1,0
80007344:	0ff57513          	andi	a0,a0,255
80007348:	00c12083          	lw	ra,12(sp)
8000734c:	00812403          	lw	s0,8(sp)
80007350:	00979793          	slli	a5,a5,0x9
80007354:	01751713          	slli	a4,a0,0x17
80007358:	0097d513          	srli	a0,a5,0x9
8000735c:	01f49493          	slli	s1,s1,0x1f
80007360:	00e56533          	or	a0,a0,a4
80007364:	00956533          	or	a0,a0,s1
80007368:	00012903          	lw	s2,0(sp)
8000736c:	00412483          	lw	s1,4(sp)
80007370:	01010113          	addi	sp,sp,16
80007374:	00008067          	ret
80007378:	00068793          	mv	a5,a3
8000737c:	d5dff06f          	j	800070d8 <__subsf3+0x19c>
80007380:	00000793          	li	a5,0
80007384:	fa9ff06f          	j	8000732c <__subsf3+0x3f0>

80007388 <__fixsfsi>:
80007388:	00800637          	lui	a2,0x800
8000738c:	01755713          	srli	a4,a0,0x17
80007390:	fff60793          	addi	a5,a2,-1 # 7fffff <_stack_size+0x7f7fff>
80007394:	0ff77713          	andi	a4,a4,255
80007398:	07e00593          	li	a1,126
8000739c:	00a7f7b3          	and	a5,a5,a0
800073a0:	01f55693          	srli	a3,a0,0x1f
800073a4:	04e5f663          	bgeu	a1,a4,800073f0 <__fixsfsi+0x68>
800073a8:	09d00593          	li	a1,157
800073ac:	00e5fa63          	bgeu	a1,a4,800073c0 <__fixsfsi+0x38>
800073b0:	80000537          	lui	a0,0x80000
800073b4:	fff54513          	not	a0,a0
800073b8:	00a68533          	add	a0,a3,a0
800073bc:	00008067          	ret
800073c0:	00c7e533          	or	a0,a5,a2
800073c4:	09500793          	li	a5,149
800073c8:	00e7dc63          	bge	a5,a4,800073e0 <__fixsfsi+0x58>
800073cc:	f6a70713          	addi	a4,a4,-150
800073d0:	00e51533          	sll	a0,a0,a4
800073d4:	02068063          	beqz	a3,800073f4 <__fixsfsi+0x6c>
800073d8:	40a00533          	neg	a0,a0
800073dc:	00008067          	ret
800073e0:	09600793          	li	a5,150
800073e4:	40e78733          	sub	a4,a5,a4
800073e8:	00e55533          	srl	a0,a0,a4
800073ec:	fe9ff06f          	j	800073d4 <__fixsfsi+0x4c>
800073f0:	00000513          	li	a0,0
800073f4:	00008067          	ret

800073f8 <__floatsisf>:
800073f8:	ff010113          	addi	sp,sp,-16
800073fc:	00112623          	sw	ra,12(sp)
80007400:	00812423          	sw	s0,8(sp)
80007404:	00912223          	sw	s1,4(sp)
80007408:	0e050463          	beqz	a0,800074f0 <__floatsisf+0xf8>
8000740c:	41f55793          	srai	a5,a0,0x1f
80007410:	00a7c433          	xor	s0,a5,a0
80007414:	40f40433          	sub	s0,s0,a5
80007418:	01f55493          	srli	s1,a0,0x1f
8000741c:	00040513          	mv	a0,s0
80007420:	248000ef          	jal	ra,80007668 <__clzsi2>
80007424:	09e00793          	li	a5,158
80007428:	40a787b3          	sub	a5,a5,a0
8000742c:	09600713          	li	a4,150
80007430:	04f74263          	blt	a4,a5,80007474 <__floatsisf+0x7c>
80007434:	00800713          	li	a4,8
80007438:	00a75663          	bge	a4,a0,80007444 <__floatsisf+0x4c>
8000743c:	ff850513          	addi	a0,a0,-8 # 7ffffff8 <_stack_top+0xffbffff8>
80007440:	00a41433          	sll	s0,s0,a0
80007444:	00941413          	slli	s0,s0,0x9
80007448:	0ff7f793          	andi	a5,a5,255
8000744c:	01779793          	slli	a5,a5,0x17
80007450:	00945413          	srli	s0,s0,0x9
80007454:	01f49513          	slli	a0,s1,0x1f
80007458:	00f46433          	or	s0,s0,a5
8000745c:	00a46533          	or	a0,s0,a0
80007460:	00c12083          	lw	ra,12(sp)
80007464:	00812403          	lw	s0,8(sp)
80007468:	00412483          	lw	s1,4(sp)
8000746c:	01010113          	addi	sp,sp,16
80007470:	00008067          	ret
80007474:	09900713          	li	a4,153
80007478:	02f75063          	bge	a4,a5,80007498 <__floatsisf+0xa0>
8000747c:	00500713          	li	a4,5
80007480:	40a70733          	sub	a4,a4,a0
80007484:	01b50693          	addi	a3,a0,27
80007488:	00e45733          	srl	a4,s0,a4
8000748c:	00d41433          	sll	s0,s0,a3
80007490:	00803433          	snez	s0,s0
80007494:	00876433          	or	s0,a4,s0
80007498:	00500713          	li	a4,5
8000749c:	00a75663          	bge	a4,a0,800074a8 <__floatsisf+0xb0>
800074a0:	ffb50713          	addi	a4,a0,-5
800074a4:	00e41433          	sll	s0,s0,a4
800074a8:	fc000737          	lui	a4,0xfc000
800074ac:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0x7bbfffff>
800074b0:	00747693          	andi	a3,s0,7
800074b4:	00e47733          	and	a4,s0,a4
800074b8:	00068a63          	beqz	a3,800074cc <__floatsisf+0xd4>
800074bc:	00f47413          	andi	s0,s0,15
800074c0:	00400693          	li	a3,4
800074c4:	00d40463          	beq	s0,a3,800074cc <__floatsisf+0xd4>
800074c8:	00470713          	addi	a4,a4,4
800074cc:	00571693          	slli	a3,a4,0x5
800074d0:	0006dc63          	bgez	a3,800074e8 <__floatsisf+0xf0>
800074d4:	fc0007b7          	lui	a5,0xfc000
800074d8:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0x7bbfffff>
800074dc:	00f77733          	and	a4,a4,a5
800074e0:	09f00793          	li	a5,159
800074e4:	40a787b3          	sub	a5,a5,a0
800074e8:	00375413          	srli	s0,a4,0x3
800074ec:	f59ff06f          	j	80007444 <__floatsisf+0x4c>
800074f0:	00000413          	li	s0,0
800074f4:	00000793          	li	a5,0
800074f8:	00000493          	li	s1,0
800074fc:	f49ff06f          	j	80007444 <__floatsisf+0x4c>

80007500 <__mulsi3>:
80007500:	00050613          	mv	a2,a0
80007504:	00000513          	li	a0,0
80007508:	0015f693          	andi	a3,a1,1
8000750c:	00068463          	beqz	a3,80007514 <__mulsi3+0x14>
80007510:	00c50533          	add	a0,a0,a2
80007514:	0015d593          	srli	a1,a1,0x1
80007518:	00161613          	slli	a2,a2,0x1
8000751c:	fe0596e3          	bnez	a1,80007508 <__mulsi3+0x8>
80007520:	00008067          	ret

80007524 <__muldi3>:
80007524:	ff010113          	addi	sp,sp,-16
80007528:	00068313          	mv	t1,a3
8000752c:	00112623          	sw	ra,12(sp)
80007530:	00050e13          	mv	t3,a0
80007534:	00050893          	mv	a7,a0
80007538:	00060693          	mv	a3,a2
8000753c:	00000713          	li	a4,0
80007540:	00000793          	li	a5,0
80007544:	00000813          	li	a6,0
80007548:	0016f513          	andi	a0,a3,1
8000754c:	00171e93          	slli	t4,a4,0x1
80007550:	00050c63          	beqz	a0,80007568 <__muldi3+0x44>
80007554:	01088533          	add	a0,a7,a6
80007558:	01053833          	sltu	a6,a0,a6
8000755c:	00e787b3          	add	a5,a5,a4
80007560:	00f807b3          	add	a5,a6,a5
80007564:	00050813          	mv	a6,a0
80007568:	01f8d713          	srli	a4,a7,0x1f
8000756c:	0016d693          	srli	a3,a3,0x1
80007570:	00eee733          	or	a4,t4,a4
80007574:	00189893          	slli	a7,a7,0x1
80007578:	fc0698e3          	bnez	a3,80007548 <__muldi3+0x24>
8000757c:	00058863          	beqz	a1,8000758c <__muldi3+0x68>
80007580:	00060513          	mv	a0,a2
80007584:	f7dff0ef          	jal	ra,80007500 <__mulsi3>
80007588:	00a787b3          	add	a5,a5,a0
8000758c:	00030a63          	beqz	t1,800075a0 <__muldi3+0x7c>
80007590:	000e0513          	mv	a0,t3
80007594:	00030593          	mv	a1,t1
80007598:	f69ff0ef          	jal	ra,80007500 <__mulsi3>
8000759c:	00f507b3          	add	a5,a0,a5
800075a0:	00c12083          	lw	ra,12(sp)
800075a4:	00080513          	mv	a0,a6
800075a8:	00078593          	mv	a1,a5
800075ac:	01010113          	addi	sp,sp,16
800075b0:	00008067          	ret

800075b4 <__divsi3>:
800075b4:	06054063          	bltz	a0,80007614 <__umodsi3+0x10>
800075b8:	0605c663          	bltz	a1,80007624 <__umodsi3+0x20>

800075bc <__udivsi3>:
800075bc:	00058613          	mv	a2,a1
800075c0:	00050593          	mv	a1,a0
800075c4:	fff00513          	li	a0,-1
800075c8:	02060c63          	beqz	a2,80007600 <__udivsi3+0x44>
800075cc:	00100693          	li	a3,1
800075d0:	00b67a63          	bgeu	a2,a1,800075e4 <__udivsi3+0x28>
800075d4:	00c05863          	blez	a2,800075e4 <__udivsi3+0x28>
800075d8:	00161613          	slli	a2,a2,0x1
800075dc:	00169693          	slli	a3,a3,0x1
800075e0:	feb66ae3          	bltu	a2,a1,800075d4 <__udivsi3+0x18>
800075e4:	00000513          	li	a0,0
800075e8:	00c5e663          	bltu	a1,a2,800075f4 <__udivsi3+0x38>
800075ec:	40c585b3          	sub	a1,a1,a2
800075f0:	00d56533          	or	a0,a0,a3
800075f4:	0016d693          	srli	a3,a3,0x1
800075f8:	00165613          	srli	a2,a2,0x1
800075fc:	fe0696e3          	bnez	a3,800075e8 <__udivsi3+0x2c>
80007600:	00008067          	ret

80007604 <__umodsi3>:
80007604:	00008293          	mv	t0,ra
80007608:	fb5ff0ef          	jal	ra,800075bc <__udivsi3>
8000760c:	00058513          	mv	a0,a1
80007610:	00028067          	jr	t0
80007614:	40a00533          	neg	a0,a0
80007618:	0005d863          	bgez	a1,80007628 <__umodsi3+0x24>
8000761c:	40b005b3          	neg	a1,a1
80007620:	f9dff06f          	j	800075bc <__udivsi3>
80007624:	40b005b3          	neg	a1,a1
80007628:	00008293          	mv	t0,ra
8000762c:	f91ff0ef          	jal	ra,800075bc <__udivsi3>
80007630:	40a00533          	neg	a0,a0
80007634:	00028067          	jr	t0

80007638 <__modsi3>:
80007638:	00008293          	mv	t0,ra
8000763c:	0005ca63          	bltz	a1,80007650 <__modsi3+0x18>
80007640:	00054c63          	bltz	a0,80007658 <__modsi3+0x20>
80007644:	f79ff0ef          	jal	ra,800075bc <__udivsi3>
80007648:	00058513          	mv	a0,a1
8000764c:	00028067          	jr	t0
80007650:	40b005b3          	neg	a1,a1
80007654:	fe0558e3          	bgez	a0,80007644 <__modsi3+0xc>
80007658:	40a00533          	neg	a0,a0
8000765c:	f61ff0ef          	jal	ra,800075bc <__udivsi3>
80007660:	40b00533          	neg	a0,a1
80007664:	00028067          	jr	t0

80007668 <__clzsi2>:
80007668:	000107b7          	lui	a5,0x10
8000766c:	02f57a63          	bgeu	a0,a5,800076a0 <__clzsi2+0x38>
80007670:	0ff00793          	li	a5,255
80007674:	00a7b7b3          	sltu	a5,a5,a0
80007678:	00379793          	slli	a5,a5,0x3
8000767c:	02000713          	li	a4,32
80007680:	40f70733          	sub	a4,a4,a5
80007684:	00f557b3          	srl	a5,a0,a5
80007688:	00000517          	auipc	a0,0x0
8000768c:	47450513          	addi	a0,a0,1140 # 80007afc <__clz_tab>
80007690:	00f507b3          	add	a5,a0,a5
80007694:	0007c503          	lbu	a0,0(a5) # 10000 <_stack_size+0x8000>
80007698:	40a70533          	sub	a0,a4,a0
8000769c:	00008067          	ret
800076a0:	01000737          	lui	a4,0x1000
800076a4:	01000793          	li	a5,16
800076a8:	fce56ae3          	bltu	a0,a4,8000767c <__clzsi2+0x14>
800076ac:	01800793          	li	a5,24
800076b0:	fcdff06f          	j	8000767c <__clzsi2+0x14>

800076b4 <npio2_hw>:
800076b4:	3fc90f00 40490f00 4096cb00 40c90f00     ...?..I@...@...@
800076c4:	40fb5300 4116cb00 412fed00 41490f00     .S.@...A../A..IA
800076d4:	41623100 417b5300 418a3a00 4196cb00     .1bA.S{A.:.A...A
800076e4:	41a35c00 41afed00 41bc7e00 41c90f00     .\.A...A.~.A...A
800076f4:	41d5a000 41e23100 41eec200 41fb5300     ...A.1.A...A.S.A
80007704:	4203f200 420a3a00 42108300 4216cb00     ...B.:.B...B...B
80007714:	421d1400 42235c00 4229a500 422fed00     ...B.\#B..)B../B
80007724:	42363600 423c7e00 4242c700 42490f00     .66B.~<B..BB..IB

80007734 <two_over_pi>:
80007734:	000000a2 000000f9 00000083 0000006e     ............n...
80007744:	0000004e 00000044 00000015 00000029     N...D.......)...
80007754:	000000fc 00000027 00000057 000000d1     ....'...W.......
80007764:	000000f5 00000034 000000dd 000000c0     ....4...........
80007774:	000000db 00000062 00000095 00000099     ....b...........
80007784:	0000003c 00000043 00000090 00000041     <...C.......A...
80007794:	000000fe 00000051 00000063 000000ab     ....Q...c.......
800077a4:	000000de 000000bb 000000c5 00000061     ............a...
800077b4:	000000b7 00000024 0000006e 0000003a     ....$...n...:...
800077c4:	00000042 0000004d 000000d2 000000e0     B...M...........
800077d4:	00000006 00000049 0000002e 000000ea     ....I...........
800077e4:	00000009 000000d1 00000092 0000001c     ................
800077f4:	000000fe 0000001d 000000eb 0000001c     ................
80007804:	000000b1 00000029 000000a7 0000003e     ....).......>...
80007814:	000000e8 00000082 00000035 000000f5     ........5.......
80007824:	0000002e 000000bb 00000044 00000084     ........D.......
80007834:	000000e9 0000009c 00000070 00000026     ........p...&...
80007844:	000000b4 0000005f 0000007e 00000041     ...._...~...A...
80007854:	00000039 00000091 000000d6 00000039     9...........9...
80007864:	00000083 00000053 00000039 000000f4     ....S...9.......
80007874:	0000009c 00000084 0000005f 0000008b     ........_.......
80007884:	000000bd 000000f9 00000028 0000003b     ........(...;...
80007894:	0000001f 000000f8 00000097 000000ff     ................
800078a4:	000000de 00000005 00000098 0000000f     ................
800078b4:	000000ef 0000002f 00000011 0000008b     ..../...........
800078c4:	0000005a 0000000a 0000006d 0000001f     Z.......m.......
800078d4:	0000006d 00000036 0000007e 000000cf     m...6...~.......
800078e4:	00000027 000000cb 00000009 000000b7     '...............
800078f4:	0000004f 00000046 0000003f 00000066     O...F...?...f...
80007904:	0000009e 0000005f 000000ea 0000002d     ...._.......-...
80007914:	00000075 00000027 000000ba 000000c7     u...'...........
80007924:	000000eb 000000e5 000000f1 0000007b     ............{...
80007934:	0000003d 00000007 00000039 000000f7     =.......9.......
80007944:	0000008a 00000052 00000092 000000ea     ....R...........
80007954:	0000006b 000000fb 0000005f 000000b1     k......._.......
80007964:	0000001f 0000008d 0000005d 00000008     ........].......
80007974:	00000056 00000003 00000030 00000046     V.......0...F...
80007984:	000000fc 0000007b 0000006b 000000ab     ....{...k.......
80007994:	000000f0 000000cf 000000bc 00000020     ............ ...
800079a4:	0000009a 000000f4 00000036 0000001d     ........6.......
800079b4:	000000a9 000000e3 00000091 00000061     ............a...
800079c4:	0000005e 000000e6 0000001b 00000008     ^...............
800079d4:	00000065 00000099 00000085 0000005f     e..........._...
800079e4:	00000014 000000a0 00000068 00000040     ........h...@...
800079f4:	0000008d 000000ff 000000d8 00000080     ................
80007a04:	0000004d 00000073 00000027 00000031     M...s...'...1...
80007a14:	00000006 00000006 00000015 00000056     ............V...
80007a24:	000000ca 00000073 000000a8 000000c9     ....s...........
80007a34:	00000060 000000e2 0000007b 000000c0     `.......{.......
80007a44:	0000008c 0000006b                       ....k...

80007a4c <init_jk>:
80007a4c:	00000004 00000007 00000009              ............

80007a58 <PIo2>:
80007a58:	3fc90000 39f00000 37da0000 33a20000     ...?...9...7...3
80007a68:	2e840000 2b500000 27c20000 22d00000     ......P+...'..."
80007a78:	1fc40000 1bc60000 17440000 ffffef5c     ..........D.\...
80007a88:	ffffef98 ffffeff0 ffffef98 fffff05c     ............\...
80007a98:	ffffef98 ffffeff0 ffffef5c ffffef5c     ........\...\...
80007aa8:	fffff05c ffffeff0 ffffef74 ffffef74     \.......t...t...
80007ab8:	ffffef74 ffffeff8 fffff3a8 fffff3a8     t...............
80007ac8:	fffff3cc fffff3a0 fffff3a0 fffff430     ............0...
80007ad8:	fffff3cc fffff3a0 fffff430 fffff3a0     ........0.......
80007ae8:	fffff3cc fffff39c fffff39c fffff39c     ................
80007af8:	fffff430                                0...

80007afc <__clz_tab>:
80007afc:	02020100 03030303 04040404 04040404     ................
80007b0c:	05050505 05050505 05050505 05050505     ................
80007b1c:	06060606 06060606 06060606 06060606     ................
80007b2c:	06060606 06060606 06060606 06060606     ................
80007b3c:	07070707 07070707 07070707 07070707     ................
80007b4c:	07070707 07070707 07070707 07070707     ................
80007b5c:	07070707 07070707 07070707 07070707     ................
80007b6c:	07070707 07070707 07070707 07070707     ................
80007b7c:	08080808 08080808 08080808 08080808     ................
80007b8c:	08080808 08080808 08080808 08080808     ................
80007b9c:	08080808 08080808 08080808 08080808     ................
80007bac:	08080808 08080808 08080808 08080808     ................
80007bbc:	08080808 08080808 08080808 08080808     ................
80007bcc:	08080808 08080808 08080808 08080808     ................
80007bdc:	08080808 08080808 08080808 08080808     ................
80007bec:	08080808 08080808 08080808 08080808     ................

Disassembly of section .text.startup:

80007bfc <main>:
//     int sy = (int)((p.y + 1.0f) * 0.5f * (HEIGHT - 1));
//     return Vec2i{sx, sy};
// }


int main() {
80007bfc:	d4010113          	addi	sp,sp,-704
    init_printf(NULL, tfp_putc);      // set output sink
80007c00:	ffff8597          	auipc	a1,0xffff8
80007c04:	49858593          	addi	a1,a1,1176 # 80000098 <_ZL8tfp_putcPvc>
80007c08:	00000513          	li	a0,0
int main() {
80007c0c:	2a112e23          	sw	ra,700(sp)
80007c10:	2a812c23          	sw	s0,696(sp)
80007c14:	2a912a23          	sw	s1,692(sp)
80007c18:	2b212823          	sw	s2,688(sp)
80007c1c:	2b312623          	sw	s3,684(sp)
80007c20:	2b412423          	sw	s4,680(sp)
80007c24:	29812c23          	sw	s8,664(sp)
80007c28:	29912a23          	sw	s9,660(sp)
80007c2c:	2b512223          	sw	s5,676(sp)
80007c30:	2b612023          	sw	s6,672(sp)
80007c34:	29712e23          	sw	s7,668(sp)
80007c38:	29a12823          	sw	s10,656(sp)
80007c3c:	29b12623          	sw	s11,652(sp)
    init_printf(NULL, tfp_putc);      // set output sink
80007c40:	9a8fc0ef          	jal	ra,80003de8 <init_printf>
        { F(0.0f), F(1.0f), F(0.0f) }, // 3
        { F(0.0f), F(0.0f), F(1.0f) }, // 4
        { F(1.0f), F(0.0f), F(1.0f) }, // 5
        { F(1.0f), F(1.0f), F(1.0f) }, // 6
        { F(0.0f), F(1.0f), F(1.0f) }, // 7
    };
80007c44:	000107b7          	lui	a5,0x10
80007c48:	06f12e23          	sw	a5,124(sp)
80007c4c:	08f12423          	sw	a5,136(sp)
80007c50:	08f12623          	sw	a5,140(sp)
80007c54:	08f12c23          	sw	a5,152(sp)
80007c58:	0af12423          	sw	a5,168(sp)
80007c5c:	0af12623          	sw	a5,172(sp)
80007c60:	0af12a23          	sw	a5,180(sp)
80007c64:	0af12c23          	sw	a5,184(sp)
80007c68:	0af12e23          	sw	a5,188(sp)
80007c6c:	0cf12023          	sw	a5,192(sp)
80007c70:	0cf12423          	sw	a5,200(sp)
80007c74:	0cf12623          	sw	a5,204(sp)
    };
    triangle3f cube_triangles[cube_size];
    // triangle3f *cube_triangles = (triangle3f *) riscy_malloc(sizeof(triangle3f) * 120);
    for (int i = 0; i < 12; ++i) {
        cube_triangles[i].p[0] = v[idx[i][0]];
        cube_triangles[i].p[1] = v[idx[i][1]];
80007c78:	0ef12023          	sw	a5,224(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007c7c:	0ef12423          	sw	a5,232(sp)
80007c80:	0ef12623          	sw	a5,236(sp)
    };
80007c84:	06012823          	sw	zero,112(sp)
80007c88:	06012a23          	sw	zero,116(sp)
80007c8c:	06012c23          	sw	zero,120(sp)
80007c90:	08012023          	sw	zero,128(sp)
80007c94:	08012223          	sw	zero,132(sp)
80007c98:	08012823          	sw	zero,144(sp)
80007c9c:	08012a23          	sw	zero,148(sp)
80007ca0:	08012e23          	sw	zero,156(sp)
80007ca4:	0a012023          	sw	zero,160(sp)
80007ca8:	0a012223          	sw	zero,164(sp)
80007cac:	0a012823          	sw	zero,176(sp)
80007cb0:	0c012223          	sw	zero,196(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007cb4:	0c012823          	sw	zero,208(sp)
80007cb8:	0c012a23          	sw	zero,212(sp)
80007cbc:	0c012c23          	sw	zero,216(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007cc0:	0c012e23          	sw	zero,220(sp)
80007cc4:	0e012223          	sw	zero,228(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007cc8:	0e012823          	sw	zero,240(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007ccc:	10f12023          	sw	a5,256(sp)
80007cd0:	10f12223          	sw	a5,260(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007cd4:	10f12623          	sw	a5,268(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007cd8:	10f12c23          	sw	a5,280(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007cdc:	12f12223          	sw	a5,292(sp)
80007ce0:	12f12423          	sw	a5,296(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007ce4:	12f12823          	sw	a5,304(sp)
80007ce8:	12f12a23          	sw	a5,308(sp)
80007cec:	12f12c23          	sw	a5,312(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007cf0:	12f12e23          	sw	a5,316(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007cf4:	14f12423          	sw	a5,328(sp)
80007cf8:	14f12623          	sw	a5,332(sp)
80007cfc:	14f12823          	sw	a5,336(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007d00:	14f12a23          	sw	a5,340(sp)
80007d04:	14f12e23          	sw	a5,348(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d08:	16f12023          	sw	a5,352(sp)
80007d0c:	16f12423          	sw	a5,360(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007d10:	16f12623          	sw	a5,364(sp)
80007d14:	16f12823          	sw	a5,368(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d18:	0e012a23          	sw	zero,244(sp)
80007d1c:	0e012c23          	sw	zero,248(sp)
80007d20:	0e012e23          	sw	zero,252(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007d24:	10012423          	sw	zero,264(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007d28:	10012823          	sw	zero,272(sp)
80007d2c:	10012a23          	sw	zero,276(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d30:	10012e23          	sw	zero,284(sp)
80007d34:	12012023          	sw	zero,288(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007d38:	12012623          	sw	zero,300(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d3c:	14012023          	sw	zero,320(sp)
80007d40:	14012223          	sw	zero,324(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007d44:	14012c23          	sw	zero,344(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d48:	16012223          	sw	zero,356(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007d4c:	16f12a23          	sw	a5,372(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007d50:	16f12e23          	sw	a5,380(sp)
80007d54:	18f12023          	sw	a5,384(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d58:	18f12223          	sw	a5,388(sp)
80007d5c:	18f12623          	sw	a5,396(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007d60:	18f12a23          	sw	a5,404(sp)
80007d64:	18f12c23          	sw	a5,408(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007d68:	1af12223          	sw	a5,420(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d6c:	1af12823          	sw	a5,432(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007d70:	1af12c23          	sw	a5,440(sp)
80007d74:	1af12e23          	sw	a5,444(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007d78:	1cf12223          	sw	a5,452(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d7c:	1cf12a23          	sw	a5,468(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007d80:	1cf12e23          	sw	a5,476(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d84:	1ef12a23          	sw	a5,500(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007d88:	16012c23          	sw	zero,376(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d8c:	18012423          	sw	zero,392(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007d90:	18012823          	sw	zero,400(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007d94:	18012e23          	sw	zero,412(sp)
80007d98:	1a012023          	sw	zero,416(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007d9c:	1a012423          	sw	zero,424(sp)
80007da0:	1a012623          	sw	zero,428(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007da4:	1a012a23          	sw	zero,436(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007da8:	1c012023          	sw	zero,448(sp)
80007dac:	1c012423          	sw	zero,456(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007db0:	1c012623          	sw	zero,460(sp)
80007db4:	1c012823          	sw	zero,464(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007db8:	1c012c23          	sw	zero,472(sp)
80007dbc:	1e012023          	sw	zero,480(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007dc0:	1e012223          	sw	zero,484(sp)
80007dc4:	1e012423          	sw	zero,488(sp)
80007dc8:	1e012623          	sw	zero,492(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007dcc:	1e012823          	sw	zero,496(sp)
80007dd0:	1e012c23          	sw	zero,504(sp)
    }
    mesh cube = { cube_triangles, cube_size };


    tfp_printf("Starting Frame Buffer Test\r\n");
80007dd4:	00001517          	auipc	a0,0x1
80007dd8:	d9c50513          	addi	a0,a0,-612 # 80008b70 <main+0xf74>
        cube_triangles[i].p[1] = v[idx[i][1]];
80007ddc:	20f12023          	sw	a5,512(sp)
80007de0:	20f12223          	sw	a5,516(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007de4:	20f12423          	sw	a5,520(sp)
80007de8:	20f12623          	sw	a5,524(sp)
80007dec:	20f12823          	sw	a5,528(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007df0:	20f12c23          	sw	a5,536(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007df4:	22f12023          	sw	a5,544(sp)
80007df8:	22f12223          	sw	a5,548(sp)
80007dfc:	22f12423          	sw	a5,552(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007e00:	22f12623          	sw	a5,556(sp)
80007e04:	22f12823          	sw	a5,560(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007e08:	22f12c23          	sw	a5,568(sp)
80007e0c:	24f12023          	sw	a5,576(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007e10:	24f12623          	sw	a5,588(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007e14:	24f12e23          	sw	a5,604(sp)
80007e18:	26f12223          	sw	a5,612(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007e1c:	26f12a23          	sw	a5,628(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007e20:	1e012e23          	sw	zero,508(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007e24:	20012a23          	sw	zero,532(sp)
80007e28:	20012e23          	sw	zero,540(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007e2c:	22012a23          	sw	zero,564(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007e30:	22012e23          	sw	zero,572(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007e34:	24012223          	sw	zero,580(sp)
80007e38:	24012423          	sw	zero,584(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007e3c:	24012823          	sw	zero,592(sp)
80007e40:	24012a23          	sw	zero,596(sp)
80007e44:	24012c23          	sw	zero,600(sp)
        cube_triangles[i].p[0] = v[idx[i][0]];
80007e48:	26012023          	sw	zero,608(sp)
        cube_triangles[i].p[1] = v[idx[i][1]];
80007e4c:	26012423          	sw	zero,616(sp)
80007e50:	26012623          	sw	zero,620(sp)
80007e54:	26012823          	sw	zero,624(sp)
        cube_triangles[i].p[2] = v[idx[i][2]];
80007e58:	26012c23          	sw	zero,632(sp)
80007e5c:	26012e23          	sw	zero,636(sp)
    frame_buffer_addr[0] = (uint32_t)pixels; // Set frame buffer address
80007e60:	800bc4b7          	lui	s1,0x800bc
    tfp_printf("Starting Frame Buffer Test\r\n");
80007e64:	f99fb0ef          	jal	ra,80003dfc <tfp_printf>
    frame_buffer_addr[0] = (uint32_t)pixels; // Set frame buffer address
80007e68:	880037b7          	lui	a5,0x88003
    *screenChange = 0x00000001; // Trigger screen change
80007e6c:	00100713          	li	a4,1
    frame_buffer_addr[0] = (uint32_t)pixels; // Set frame buffer address
80007e70:	80048493          	addi	s1,s1,-2048 # 800bb800 <_stack_top+0xffcbb800>
80007e74:	8097a223          	sw	s1,-2044(a5) # 88002804 <_stack_top+0x7c02804>
    *screenChange = 0x00000001; // Trigger screen change
80007e78:	80e7a023          	sw	a4,-2048(a5)
    tfp_printf("Screen change triggered ON\r\n");
80007e7c:	00001517          	auipc	a0,0x1
80007e80:	d1450513          	addi	a0,a0,-748 # 80008b90 <main+0xf94>
80007e84:	f79fb0ef          	jal	ra,80003dfc <tfp_printf>

    tfp_printf("Screen filled with nothing\r\n");
80007e88:	00001517          	auipc	a0,0x1
80007e8c:	d2850513          	addi	a0,a0,-728 # 80008bb0 <main+0xfb4>
80007e90:	f6dfb0ef          	jal	ra,80003dfc <tfp_printf>
80007e94:	00001797          	auipc	a5,0x1
80007e98:	fa478793          	addi	a5,a5,-92 # 80008e38 <main+0x123c>
80007e9c:	0007a983          	lw	s3,0(a5)
80007ea0:	00001797          	auipc	a5,0x1
80007ea4:	f9c78793          	addi	a5,a5,-100 # 80008e3c <main+0x1240>
80007ea8:	0007aa03          	lw	s4,0(a5)
80007eac:	00001797          	auipc	a5,0x1
80007eb0:	f9478793          	addi	a5,a5,-108 # 80008e40 <main+0x1244>
80007eb4:	0007a403          	lw	s0,0(a5)
80007eb8:	00001797          	auipc	a5,0x1
80007ebc:	f8c78793          	addi	a5,a5,-116 # 80008e44 <main+0x1248>
80007ec0:	0007a903          	lw	s2,0(a5)
    matProj.m[2][3] = F(1.0f);
    matProj.m[3][3] = F(0.0f);

    matrix4f matRotZ = {0};
    matrix4f matRotX = {0};
    float frame_time = 0.0f;
80007ec4:	00000793          	li	a5,0
80007ec8:	06f12423          	sw	a5,104(sp)
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80007ecc:	086317b7          	lui	a5,0x8631
80007ed0:	86378793          	addi	a5,a5,-1949 # 8630863 <_stack_size+0x8628863>
80007ed4:	00f12223          	sw	a5,4(sp)

// Division with 64-bit intermediate; truncating and rounded variants
static inline fixed32 fixed_div_trunc(fixed32 a, fixed32 b) {
    // (a << Q) / b
    int64_t n = ((int64_t)a) << FIXED_Q;
    return (fixed32)(n / b);
80007ed8:	000107b7          	lui	a5,0x10
    int frame_num = 0;
80007edc:	06012623          	sw	zero,108(sp)
80007ee0:	00048c93          	mv	s9,s1
80007ee4:	fff78c13          	addi	s8,a5,-1 # ffff <_stack_size+0x7fff>
            // tfp_printf("Triangle %d: Screen Coords: (%d,%d), (%d,%d), (%d,%d)\r\n",
                // i, s0.x, s0.y, s1.x, s1.y, s2.x, s2.y);
            triangle_wireframe(pixels, s0, s1, s2, (color){255,255,255});
        }
        // for(volatile int k=0; k<1000000; k++); // Simple delay
        tfp_printf("Frame %d\r\n", frame_num++);
80007ee8:	0005e6b7          	lui	a3,0x5e
80007eec:	800bc7b7          	lui	a5,0x800bc
80007ef0:	f2068693          	addi	a3,a3,-224 # 5df20 <_stack_size+0x55f20>
80007ef4:	e4078593          	addi	a1,a5,-448 # 800bbe40 <_stack_top+0xffcbbe40>
    for(int j=0; j<HEIGHT; j++) {
80007ef8:	32000613          	li	a2,800
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
80007efc:	4016d793          	srai	a5,a3,0x1
80007f00:	00279793          	slli	a5,a5,0x2
80007f04:	01978733          	add	a4,a5,s9
80007f08:	00b787b3          	add	a5,a5,a1
80007f0c:	00412503          	lw	a0,4(sp)
80007f10:	00470713          	addi	a4,a4,4 # 1000004 <_stack_size+0xff8004>
80007f14:	fea72e23          	sw	a0,-4(a4)
	    for(int i=0; i<WIDTH>>1; i++) {
80007f18:	fef71ae3          	bne	a4,a5,80007f0c <main+0x310>
80007f1c:	ce068693          	addi	a3,a3,-800
    for(int j=0; j<HEIGHT; j++) {
80007f20:	fcc69ee3          	bne	a3,a2,80007efc <main+0x300>
        frame_time += 0.03f;
80007f24:	00001797          	auipc	a5,0x1
80007f28:	f2478793          	addi	a5,a5,-220 # 80008e48 <main+0x124c>
80007f2c:	0007a583          	lw	a1,0(a5)
80007f30:	06812503          	lw	a0,104(sp)
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
80007f34:	00001a97          	auipc	s5,0x1
80007f38:	f18a8a93          	addi	s5,s5,-232 # 80008e4c <main+0x1250>
        matRotX.m[2][1] = fixed_from_float(-sinf(fTheta * 0.5f));
80007f3c:	800004b7          	lui	s1,0x80000
        frame_time += 0.03f;
80007f40:	bfcfe0ef          	jal	ra,8000633c <__addsf3>
80007f44:	000aa583          	lw	a1,0(s5)
80007f48:	06a12423          	sw	a0,104(sp)
80007f4c:	000a0513          	mv	a0,s4
80007f50:	cc9fe0ef          	jal	ra,80006c18 <__mulsf3>
80007f54:	c34ff0ef          	jal	ra,80007388 <__fixsfsi>
80007f58:	000aa583          	lw	a1,0(s5)
80007f5c:	00050793          	mv	a5,a0
80007f60:	41f7d793          	srai	a5,a5,0x1f
80007f64:	00a12023          	sw	a0,0(sp)
80007f68:	0134c533          	xor	a0,s1,s3
80007f6c:	00f12423          	sw	a5,8(sp)
80007f70:	ca9fe0ef          	jal	ra,80006c18 <__mulsf3>
80007f74:	c14ff0ef          	jal	ra,80007388 <__fixsfsi>
80007f78:	000aa583          	lw	a1,0(s5)
80007f7c:	00050793          	mv	a5,a0
80007f80:	41f7d793          	srai	a5,a5,0x1f
80007f84:	00a12823          	sw	a0,16(sp)
80007f88:	00098513          	mv	a0,s3
80007f8c:	00f12a23          	sw	a5,20(sp)
80007f90:	c89fe0ef          	jal	ra,80006c18 <__mulsf3>
80007f94:	bf4ff0ef          	jal	ra,80007388 <__fixsfsi>
80007f98:	000aa583          	lw	a1,0(s5)
80007f9c:	00050793          	mv	a5,a0
80007fa0:	41f7d793          	srai	a5,a5,0x1f
80007fa4:	00a12c23          	sw	a0,24(sp)
80007fa8:	00090513          	mv	a0,s2
80007fac:	00f12e23          	sw	a5,28(sp)
80007fb0:	c69fe0ef          	jal	ra,80006c18 <__mulsf3>
80007fb4:	bd4ff0ef          	jal	ra,80007388 <__fixsfsi>
80007fb8:	000aa583          	lw	a1,0(s5)
80007fbc:	00050793          	mv	a5,a0
80007fc0:	00a12623          	sw	a0,12(sp)
80007fc4:	0084c533          	xor	a0,s1,s0
80007fc8:	41f7db13          	srai	s6,a5,0x1f
80007fcc:	c4dfe0ef          	jal	ra,80006c18 <__mulsf3>
80007fd0:	bb8ff0ef          	jal	ra,80007388 <__fixsfsi>
80007fd4:	000aa583          	lw	a1,0(s5)
80007fd8:	00050793          	mv	a5,a0
80007fdc:	41f7d793          	srai	a5,a5,0x1f
80007fe0:	02a12023          	sw	a0,32(sp)
80007fe4:	00040513          	mv	a0,s0
80007fe8:	02f12223          	sw	a5,36(sp)
80007fec:	c2dfe0ef          	jal	ra,80006c18 <__mulsf3>
80007ff0:	b98ff0ef          	jal	ra,80007388 <__fixsfsi>
80007ff4:	41f55793          	srai	a5,a0,0x1f
80007ff8:	0d010d93          	addi	s11,sp,208
80007ffc:	02a12423          	sw	a0,40(sp)
80008000:	02f12623          	sw	a5,44(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80008004:	000da303          	lw	t1,0(s11)
80008008:	02c12d03          	lw	s10,44(sp)
8000800c:	004da883          	lw	a7,4(s11)
80008010:	02812603          	lw	a2,40(sp)
80008014:	41f35f93          	srai	t6,t1,0x1f
80008018:	00030513          	mv	a0,t1
8000801c:	000f8593          	mv	a1,t6
80008020:	000d0693          	mv	a3,s10
80008024:	06612223          	sw	t1,100(sp)
80008028:	07f12023          	sw	t6,96(sp)
8000802c:	03112823          	sw	a7,48(sp)
80008030:	cf4ff0ef          	jal	ra,80007524 <__muldi3>
80008034:	03012883          	lw	a7,48(sp)
80008038:	00c12b83          	lw	s7,12(sp)
    return (fixed32)(t >> FIXED_Q);
8000803c:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008040:	41f8df13          	srai	t5,a7,0x1f
80008044:	000f0593          	mv	a1,t5
80008048:	000b8613          	mv	a2,s7
    return (fixed32)(t >> FIXED_Q);
8000804c:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008050:	000b0693          	mv	a3,s6
80008054:	00088513          	mv	a0,a7
80008058:	05112e23          	sw	a7,92(sp)
8000805c:	05e12c23          	sw	t5,88(sp)
    return (fixed32)(t >> FIXED_Q);
80008060:	0087e433          	or	s0,a5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80008064:	cc0ff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80008068:	01059593          	slli	a1,a1,0x10
8000806c:	01055513          	srli	a0,a0,0x10
80008070:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008074:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80008078:	41f45a13          	srai	s4,s0,0x1f
8000807c:	01045713          	srli	a4,s0,0x10
80008080:	010a1793          	slli	a5,s4,0x10
80008084:	00f767b3          	or	a5,a4,a5
    return (fixed32)(n / b);
80008088:	41f7da13          	srai	s4,a5,0x1f
8000808c:	018a7a33          	and	s4,s4,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
80008090:	01041413          	slli	s0,s0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008094:	00cda983          	lw	s3,12(s11)
    return (fixed32)(n / b);
80008098:	008a0733          	add	a4,s4,s0
8000809c:	01473a33          	sltu	s4,a4,s4
800080a0:	00fa0a33          	add	s4,s4,a5
    int64_t t = (int64_t)a * (int64_t)b;
800080a4:	41f9da93          	srai	s5,s3,0x1f
    return (fixed32)(n / b);
800080a8:	010a1793          	slli	a5,s4,0x10
800080ac:	01075713          	srli	a4,a4,0x10
800080b0:	00e7e733          	or	a4,a5,a4
    int64_t t = (int64_t)a * (int64_t)b;
800080b4:	010da903          	lw	s2,16(s11)
800080b8:	000b8613          	mv	a2,s7
800080bc:	000b0693          	mv	a3,s6
800080c0:	00098513          	mv	a0,s3
800080c4:	000a8593          	mv	a1,s5
    return (fixed32)(n / b);
800080c8:	04e12a23          	sw	a4,84(sp)
    int64_t t = (int64_t)a * (int64_t)b;
800080cc:	c58ff0ef          	jal	ra,80007524 <__muldi3>
800080d0:	02012603          	lw	a2,32(sp)
800080d4:	02412683          	lw	a3,36(sp)
800080d8:	41f95413          	srai	s0,s2,0x1f
    return (fixed32)(t >> FIXED_Q);
800080dc:	01059793          	slli	a5,a1,0x10
800080e0:	01055493          	srli	s1,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800080e4:	00040593          	mv	a1,s0
800080e8:	00090513          	mv	a0,s2
    return (fixed32)(t >> FIXED_Q);
800080ec:	0097e4b3          	or	s1,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
800080f0:	c34ff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800080f4:	01059593          	slli	a1,a1,0x10
800080f8:	01055513          	srli	a0,a0,0x10
800080fc:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008100:	00a484b3          	add	s1,s1,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80008104:	41f4d793          	srai	a5,s1,0x1f
80008108:	0104d613          	srli	a2,s1,0x10
8000810c:	01079693          	slli	a3,a5,0x10
80008110:	00d666b3          	or	a3,a2,a3
    return (fixed32)(n / b);
80008114:	41f6d793          	srai	a5,a3,0x1f
80008118:	0187f7b3          	and	a5,a5,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
8000811c:	01049493          	slli	s1,s1,0x10
    return (fixed32)(n / b);
80008120:	009783b3          	add	t2,a5,s1
80008124:	00f3b7b3          	sltu	a5,t2,a5
80008128:	00d787b3          	add	a5,a5,a3
    int64_t t = (int64_t)a * (int64_t)b;
8000812c:	02812603          	lw	a2,40(sp)
    return (fixed32)(n / b);
80008130:	01079813          	slli	a6,a5,0x10
80008134:	0103d393          	srli	t2,t2,0x10
80008138:	007863b3          	or	t2,a6,t2
    int64_t t = (int64_t)a * (int64_t)b;
8000813c:	000d0693          	mv	a3,s10
    return (fixed32)(n / b);
80008140:	4107d793          	srai	a5,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008144:	00098513          	mv	a0,s3
80008148:	000a8593          	mv	a1,s5
    return (fixed32)(n / b);
8000814c:	04712823          	sw	t2,80(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80008150:	03a12623          	sw	s10,44(sp)
    return (fixed32)(n / b);
80008154:	02f12c23          	sw	a5,56(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80008158:	bccff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000815c:	01059793          	slli	a5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008160:	000b8613          	mv	a2,s7
    return (fixed32)(t >> FIXED_Q);
80008164:	01055493          	srli	s1,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008168:	000b0693          	mv	a3,s6
8000816c:	00090513          	mv	a0,s2
80008170:	00040593          	mv	a1,s0
    return (fixed32)(t >> FIXED_Q);
80008174:	0097e4b3          	or	s1,a5,s1
    int64_t t = (int64_t)a * (int64_t)b;
80008178:	bacff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000817c:	01059593          	slli	a1,a1,0x10
80008180:	01055513          	srli	a0,a0,0x10
80008184:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008188:	00a484b3          	add	s1,s1,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
8000818c:	41f4d793          	srai	a5,s1,0x1f
80008190:	0104d693          	srli	a3,s1,0x10
80008194:	01079793          	slli	a5,a5,0x10
80008198:	00f6e7b3          	or	a5,a3,a5
    return (fixed32)(n / b);
8000819c:	41f7d693          	srai	a3,a5,0x1f
    int64_t t = (int64_t)a * (int64_t)b;
800081a0:	018da903          	lw	s2,24(s11)
    return (fixed32)(n / b);
800081a4:	0186f6b3          	and	a3,a3,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
800081a8:	01049d13          	slli	s10,s1,0x10
    return (fixed32)(n / b);
800081ac:	01a68d33          	add	s10,a3,s10
800081b0:	00dd34b3          	sltu	s1,s10,a3
    int64_t t = (int64_t)a * (int64_t)b;
800081b4:	41f95a93          	srai	s5,s2,0x1f
    return (fixed32)(n / b);
800081b8:	00f484b3          	add	s1,s1,a5
    int64_t t = (int64_t)a * (int64_t)b;
800081bc:	01cda983          	lw	s3,28(s11)
    return (fixed32)(n / b);
800081c0:	01049793          	slli	a5,s1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800081c4:	000b8613          	mv	a2,s7
800081c8:	000b0693          	mv	a3,s6
800081cc:	00090513          	mv	a0,s2
800081d0:	000a8593          	mv	a1,s5
    return (fixed32)(n / b);
800081d4:	010d5d13          	srli	s10,s10,0x10
800081d8:	01a7ed33          	or	s10,a5,s10
    int64_t t = (int64_t)a * (int64_t)b;
800081dc:	01712623          	sw	s7,12(sp)
800081e0:	b44ff0ef          	jal	ra,80007524 <__muldi3>
800081e4:	02012603          	lw	a2,32(sp)
800081e8:	02412683          	lw	a3,36(sp)
800081ec:	41f9d413          	srai	s0,s3,0x1f
    return (fixed32)(t >> FIXED_Q);
800081f0:	01059793          	slli	a5,a1,0x10
800081f4:	01055b93          	srli	s7,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800081f8:	00040593          	mv	a1,s0
800081fc:	00098513          	mv	a0,s3
    return (fixed32)(t >> FIXED_Q);
80008200:	0177ebb3          	or	s7,a5,s7
    int64_t t = (int64_t)a * (int64_t)b;
80008204:	b20ff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80008208:	01059593          	slli	a1,a1,0x10
8000820c:	01055513          	srli	a0,a0,0x10
80008210:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008214:	00ab8533          	add	a0,s7,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80008218:	41f55793          	srai	a5,a0,0x1f
8000821c:	01055613          	srli	a2,a0,0x10
80008220:	01079693          	slli	a3,a5,0x10
80008224:	00d666b3          	or	a3,a2,a3
    return (fixed32)(n / b);
80008228:	41f6d793          	srai	a5,a3,0x1f
8000822c:	0187f7b3          	and	a5,a5,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
80008230:	01051513          	slli	a0,a0,0x10
    return (fixed32)(n / b);
80008234:	00a78533          	add	a0,a5,a0
80008238:	00f537b3          	sltu	a5,a0,a5
8000823c:	00d787b3          	add	a5,a5,a3
    int64_t t = (int64_t)a * (int64_t)b;
80008240:	02812603          	lw	a2,40(sp)
80008244:	02c12683          	lw	a3,44(sp)
    return (fixed32)(n / b);
80008248:	01079813          	slli	a6,a5,0x10
8000824c:	01055713          	srli	a4,a0,0x10
80008250:	00e86733          	or	a4,a6,a4
80008254:	4107d793          	srai	a5,a5,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008258:	00090513          	mv	a0,s2
8000825c:	000a8593          	mv	a1,s5
    return (fixed32)(n / b);
80008260:	02e12e23          	sw	a4,60(sp)
80008264:	04f12023          	sw	a5,64(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80008268:	abcff0ef          	jal	ra,80007524 <__muldi3>
8000826c:	00c12603          	lw	a2,12(sp)
    return (fixed32)(t >> FIXED_Q);
80008270:	01059793          	slli	a5,a1,0x10
80008274:	01055913          	srli	s2,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008278:	000b0693          	mv	a3,s6
8000827c:	00098513          	mv	a0,s3
80008280:	00040593          	mv	a1,s0
    return (fixed32)(t >> FIXED_Q);
80008284:	0127e933          	or	s2,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
80008288:	a9cff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000828c:	01059593          	slli	a1,a1,0x10
80008290:	01055513          	srli	a0,a0,0x10
80008294:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008298:	00a90933          	add	s2,s2,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
8000829c:	41f95413          	srai	s0,s2,0x1f
800082a0:	01095693          	srli	a3,s2,0x10
800082a4:	01041793          	slli	a5,s0,0x10
800082a8:	00f6e7b3          	or	a5,a3,a5
    return (fixed32)(n / b);
800082ac:	41f7d413          	srai	s0,a5,0x1f
800082b0:	01847433          	and	s0,s0,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
800082b4:	01091913          	slli	s2,s2,0x10
    return (fixed32)(n / b);
800082b8:	01240bb3          	add	s7,s0,s2
    int64_t t = (int64_t)a * (int64_t)b;
800082bc:	014daa83          	lw	s5,20(s11)
    return (fixed32)(n / b);
800082c0:	008bb433          	sltu	s0,s7,s0
    int64_t t = (int64_t)a * (int64_t)b;
800082c4:	00812683          	lw	a3,8(sp)
    return (fixed32)(n / b);
800082c8:	00f40433          	add	s0,s0,a5
    int64_t t = (int64_t)a * (int64_t)b;
800082cc:	00012603          	lw	a2,0(sp)
    return (fixed32)(n / b);
800082d0:	4104d493          	srai	s1,s1,0x10
800082d4:	01041793          	slli	a5,s0,0x10
800082d8:	010bdb93          	srli	s7,s7,0x10
800082dc:	0177ebb3          	or	s7,a5,s7
    int64_t t = (int64_t)a * (int64_t)b;
800082e0:	000d0513          	mv	a0,s10
800082e4:	41fad793          	srai	a5,s5,0x1f
800082e8:	00048593          	mv	a1,s1
800082ec:	00078993          	mv	s3,a5
800082f0:	a34ff0ef          	jal	ra,80007524 <__muldi3>
800082f4:	01012603          	lw	a2,16(sp)
800082f8:	01412683          	lw	a3,20(sp)
    return (fixed32)(t >> FIXED_Q);
800082fc:	01059793          	slli	a5,a1,0x10
80008300:	01055913          	srli	s2,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008304:	00098593          	mv	a1,s3
80008308:	000a8513          	mv	a0,s5
    return (fixed32)(t >> FIXED_Q);
8000830c:	0127e933          	or	s2,a5,s2
    int64_t t = (int64_t)a * (int64_t)b;
80008310:	03312823          	sw	s3,48(sp)
80008314:	a10ff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80008318:	01059593          	slli	a1,a1,0x10
8000831c:	01055513          	srli	a0,a0,0x10
80008320:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008324:	00a90933          	add	s2,s2,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80008328:	41f95813          	srai	a6,s2,0x1f
8000832c:	01095793          	srli	a5,s2,0x10
80008330:	01081693          	slli	a3,a6,0x10
80008334:	00d7e6b3          	or	a3,a5,a3
    return (fixed32)(n / b);
80008338:	41f6d813          	srai	a6,a3,0x1f
8000833c:	01887833          	and	a6,a6,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
80008340:	01091913          	slli	s2,s2,0x10
    return (fixed32)(n / b);
80008344:	012807b3          	add	a5,a6,s2
80008348:	0107b833          	sltu	a6,a5,a6
    int64_t t = (int64_t)a * (int64_t)b;
8000834c:	020da983          	lw	s3,32(s11)
    return (fixed32)(n / b);
80008350:	00d80833          	add	a6,a6,a3
80008354:	01081293          	slli	t0,a6,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008358:	00012603          	lw	a2,0(sp)
8000835c:	00812683          	lw	a3,8(sp)
    return (fixed32)(n / b);
80008360:	0107d793          	srli	a5,a5,0x10
80008364:	00f2e7b3          	or	a5,t0,a5
80008368:	41045413          	srai	s0,s0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000836c:	41f9d713          	srai	a4,s3,0x1f
80008370:	000b8513          	mv	a0,s7
80008374:	00040593          	mv	a1,s0
    return (fixed32)(n / b);
80008378:	04f12623          	sw	a5,76(sp)
8000837c:	41085793          	srai	a5,a6,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008380:	02e12a23          	sw	a4,52(sp)
    return (fixed32)(n / b);
80008384:	04f12223          	sw	a5,68(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80008388:	99cff0ef          	jal	ra,80007524 <__muldi3>
8000838c:	01012603          	lw	a2,16(sp)
80008390:	01412683          	lw	a3,20(sp)
    return (fixed32)(t >> FIXED_Q);
80008394:	01059813          	slli	a6,a1,0x10
80008398:	01055913          	srli	s2,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000839c:	41f9d593          	srai	a1,s3,0x1f
800083a0:	00098513          	mv	a0,s3
    return (fixed32)(t >> FIXED_Q);
800083a4:	01286933          	or	s2,a6,s2
    int64_t t = (int64_t)a * (int64_t)b;
800083a8:	97cff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800083ac:	01059593          	slli	a1,a1,0x10
800083b0:	01055513          	srli	a0,a0,0x10
800083b4:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800083b8:	00a90933          	add	s2,s2,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800083bc:	41f95813          	srai	a6,s2,0x1f
800083c0:	01095613          	srli	a2,s2,0x10
800083c4:	01081693          	slli	a3,a6,0x10
800083c8:	00d666b3          	or	a3,a2,a3
    return (fixed32)(n / b);
800083cc:	41f6d813          	srai	a6,a3,0x1f
800083d0:	01887833          	and	a6,a6,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
800083d4:	01091913          	slli	s2,s2,0x10
    return (fixed32)(n / b);
800083d8:	01280933          	add	s2,a6,s2
800083dc:	01093833          	sltu	a6,s2,a6
800083e0:	00d80833          	add	a6,a6,a3
    int64_t t = (int64_t)a * (int64_t)b;
800083e4:	01812603          	lw	a2,24(sp)
800083e8:	01c12683          	lw	a3,28(sp)
    return (fixed32)(n / b);
800083ec:	41085793          	srai	a5,a6,0x10
800083f0:	01081293          	slli	t0,a6,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800083f4:	000d0513          	mv	a0,s10
800083f8:	00048593          	mv	a1,s1
    return (fixed32)(n / b);
800083fc:	01095913          	srli	s2,s2,0x10
80008400:	04f12423          	sw	a5,72(sp)
80008404:	0122e933          	or	s2,t0,s2
    int64_t t = (int64_t)a * (int64_t)b;
80008408:	91cff0ef          	jal	ra,80007524 <__muldi3>
8000840c:	00812d03          	lw	s10,8(sp)
    return (fixed32)(t >> FIXED_Q);
80008410:	01059813          	slli	a6,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008414:	00012603          	lw	a2,0(sp)
80008418:	03012583          	lw	a1,48(sp)
8000841c:	000d0693          	mv	a3,s10
    return (fixed32)(t >> FIXED_Q);
80008420:	01055493          	srli	s1,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008424:	000a8513          	mv	a0,s5
    return (fixed32)(t >> FIXED_Q);
80008428:	009864b3          	or	s1,a6,s1
    int64_t t = (int64_t)a * (int64_t)b;
8000842c:	8f8ff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80008430:	01059593          	slli	a1,a1,0x10
80008434:	01055513          	srli	a0,a0,0x10
80008438:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
8000843c:	00a484b3          	add	s1,s1,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80008440:	41f4d693          	srai	a3,s1,0x1f
80008444:	0104d593          	srli	a1,s1,0x10
80008448:	01069613          	slli	a2,a3,0x10
8000844c:	00c5e633          	or	a2,a1,a2
    return (fixed32)(n / b);
80008450:	41f65693          	srai	a3,a2,0x1f
80008454:	0186f6b3          	and	a3,a3,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
80008458:	01049493          	slli	s1,s1,0x10
    return (fixed32)(n / b);
8000845c:	009684b3          	add	s1,a3,s1
80008460:	00d4b6b3          	sltu	a3,s1,a3
80008464:	00c686b3          	add	a3,a3,a2
80008468:	01069693          	slli	a3,a3,0x10
8000846c:	0104d493          	srli	s1,s1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008470:	01812603          	lw	a2,24(sp)
    return (fixed32)(n / b);
80008474:	0096e4b3          	or	s1,a3,s1
    int64_t t = (int64_t)a * (int64_t)b;
80008478:	01c12683          	lw	a3,28(sp)
8000847c:	000b8513          	mv	a0,s7
80008480:	00040593          	mv	a1,s0
80008484:	8a0ff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80008488:	01059813          	slli	a6,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000848c:	00012603          	lw	a2,0(sp)
80008490:	03412583          	lw	a1,52(sp)
80008494:	000d0693          	mv	a3,s10
    return (fixed32)(t >> FIXED_Q);
80008498:	01055413          	srli	s0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000849c:	00098513          	mv	a0,s3
    return (fixed32)(t >> FIXED_Q);
800084a0:	00886433          	or	s0,a6,s0
    int64_t t = (int64_t)a * (int64_t)b;
800084a4:	880ff0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800084a8:	01059593          	slli	a1,a1,0x10
800084ac:	01055513          	srli	a0,a0,0x10
800084b0:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800084b4:	00a40433          	add	s0,s0,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800084b8:	41f45693          	srai	a3,s0,0x1f
800084bc:	01045593          	srli	a1,s0,0x10
800084c0:	01069613          	slli	a2,a3,0x10
800084c4:	00c5e633          	or	a2,a1,a2
    return (fixed32)(n / b);
800084c8:	41f65693          	srai	a3,a2,0x1f
800084cc:	0186f6b3          	and	a3,a3,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
800084d0:	01041413          	slli	s0,s0,0x10
    return (fixed32)(n / b);
800084d4:	00868433          	add	s0,a3,s0
800084d8:	00d436b3          	sltu	a3,s0,a3
    int64_t t = (int64_t)a * (int64_t)b;
800084dc:	06012f83          	lw	t6,96(sp)
800084e0:	06412303          	lw	t1,100(sp)
    return (fixed32)(n / b);
800084e4:	00c686b3          	add	a3,a3,a2
800084e8:	01069693          	slli	a3,a3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800084ec:	00c12603          	lw	a2,12(sp)
    return (fixed32)(n / b);
800084f0:	01045413          	srli	s0,s0,0x10
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800084f4:	00030ab7          	lui	s5,0x30
    return (fixed32)(n / b);
800084f8:	0086e433          	or	s0,a3,s0
    int64_t t = (int64_t)a * (int64_t)b;
800084fc:	000f8593          	mv	a1,t6
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008500:	008a8733          	add	a4,s5,s0
    int64_t t = (int64_t)a * (int64_t)b;
80008504:	00030513          	mv	a0,t1
80008508:	000b0693          	mv	a3,s6
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
8000850c:	02e12823          	sw	a4,48(sp)
    int64_t t = (int64_t)a * (int64_t)b;
80008510:	814ff0ef          	jal	ra,80007524 <__muldi3>
80008514:	05812f03          	lw	t5,88(sp)
80008518:	05c12883          	lw	a7,92(sp)
8000851c:	02012603          	lw	a2,32(sp)
80008520:	02412683          	lw	a3,36(sp)
    return (fixed32)(t >> FIXED_Q);
80008524:	01059813          	slli	a6,a1,0x10
80008528:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000852c:	000f0593          	mv	a1,t5
80008530:	00088513          	mv	a0,a7
    return (fixed32)(t >> FIXED_Q);
80008534:	013869b3          	or	s3,a6,s3
    int64_t t = (int64_t)a * (int64_t)b;
80008538:	fedfe0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000853c:	01059593          	slli	a1,a1,0x10
80008540:	01055513          	srli	a0,a0,0x10
80008544:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008548:	00a989b3          	add	s3,s3,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
8000854c:	41f9d593          	srai	a1,s3,0x1f
80008550:	0109d693          	srli	a3,s3,0x10
80008554:	01059613          	slli	a2,a1,0x10
80008558:	00c6e633          	or	a2,a3,a2
    return (fixed32)(n / b);
8000855c:	41f65693          	srai	a3,a2,0x1f
80008560:	0186f6b3          	and	a3,a3,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
80008564:	01099993          	slli	s3,s3,0x10
    return (fixed32)(n / b);
80008568:	013689b3          	add	s3,a3,s3
8000856c:	00d9b5b3          	sltu	a1,s3,a3
80008570:	00c585b3          	add	a1,a1,a2
80008574:	01059513          	slli	a0,a1,0x10
80008578:	0109d993          	srli	s3,s3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000857c:	0001b637          	lui	a2,0x1b
80008580:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
80008584:	00000693          	li	a3,0
80008588:	01356533          	or	a0,a0,s3
8000858c:	4105d593          	srai	a1,a1,0x10
80008590:	008dab83          	lw	s7,8(s11)
80008594:	f91fe0ef          	jal	ra,80007524 <__muldi3>
80008598:	05412703          	lw	a4,84(sp)
8000859c:	00012603          	lw	a2,0(sp)
    return (fixed32)(n / b);
800085a0:	410a5a13          	srai	s4,s4,0x10
    return (fixed32)(t >> FIXED_Q);
800085a4:	01055813          	srli	a6,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800085a8:	000d0693          	mv	a3,s10
800085ac:	00070513          	mv	a0,a4
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800085b0:	009a84b3          	add	s1,s5,s1
    return (fixed32)(t >> FIXED_Q);
800085b4:	01059a93          	slli	s5,a1,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800085b8:	000a0593          	mv	a1,s4
800085bc:	02e12a23          	sw	a4,52(sp)
800085c0:	01a12423          	sw	s10,8(sp)
    return (fixed32)(t >> FIXED_Q);
800085c4:	010aeab3          	or	s5,s5,a6
    int64_t t = (int64_t)a * (int64_t)b;
800085c8:	f5dfe0ef          	jal	ra,80007524 <__muldi3>
800085cc:	01012603          	lw	a2,16(sp)
800085d0:	01412683          	lw	a3,20(sp)
800085d4:	41fbdd13          	srai	s10,s7,0x1f
    return (fixed32)(t >> FIXED_Q);
800085d8:	01059813          	slli	a6,a1,0x10
800085dc:	01055993          	srli	s3,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800085e0:	000d0593          	mv	a1,s10
800085e4:	000b8513          	mv	a0,s7
    return (fixed32)(t >> FIXED_Q);
800085e8:	013869b3          	or	s3,a6,s3
    int64_t t = (int64_t)a * (int64_t)b;
800085ec:	f39fe0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800085f0:	01059593          	slli	a1,a1,0x10
800085f4:	01055513          	srli	a0,a0,0x10
800085f8:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800085fc:	00a989b3          	add	s3,s3,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
80008600:	41f9d813          	srai	a6,s3,0x1f
80008604:	0109d693          	srli	a3,s3,0x10
80008608:	01081613          	slli	a2,a6,0x10
8000860c:	00c6e633          	or	a2,a3,a2
    return (fixed32)(n / b);
80008610:	41f65693          	srai	a3,a2,0x1f
80008614:	0186f6b3          	and	a3,a3,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
80008618:	01099993          	slli	s3,s3,0x10
    return (fixed32)(n / b);
8000861c:	013689b3          	add	s3,a3,s3
80008620:	00d9b833          	sltu	a6,s3,a3
80008624:	00c80833          	add	a6,a6,a2
80008628:	01081693          	slli	a3,a6,0x10
8000862c:	0109d993          	srli	s3,s3,0x10
80008630:	41085813          	srai	a6,a6,0x10
80008634:	0136e9b3          	or	s3,a3,s3
    int64_t t = (int64_t)a * (int64_t)b;
80008638:	03412703          	lw	a4,52(sp)
8000863c:	0109d693          	srli	a3,s3,0x10
80008640:	01081413          	slli	s0,a6,0x10
80008644:	0086e433          	or	s0,a3,s0
80008648:	01812603          	lw	a2,24(sp)
8000864c:	01c12683          	lw	a3,28(sp)
80008650:	01099993          	slli	s3,s3,0x10
    return (fixed32)(t >> FIXED_Q);
80008654:	01041313          	slli	t1,s0,0x10
80008658:	0109d893          	srli	a7,s3,0x10
    int64_t t = (int64_t)a * (int64_t)b;
8000865c:	00070513          	mv	a0,a4
80008660:	000a0593          	mv	a1,s4
    return (fixed32)(t >> FIXED_Q);
80008664:	01136a33          	or	s4,t1,a7
    int64_t t = (int64_t)a * (int64_t)b;
80008668:	ebdfe0ef          	jal	ra,80007524 <__muldi3>
8000866c:	00012603          	lw	a2,0(sp)
80008670:	00812683          	lw	a3,8(sp)
    return (fixed32)(t >> FIXED_Q);
80008674:	01059893          	slli	a7,a1,0x10
80008678:	01055713          	srli	a4,a0,0x10
8000867c:	00e8e733          	or	a4,a7,a4
    int64_t t = (int64_t)a * (int64_t)b;
80008680:	000b8513          	mv	a0,s7
80008684:	000d0593          	mv	a1,s10
    return (fixed32)(t >> FIXED_Q);
80008688:	02e12a23          	sw	a4,52(sp)
    int64_t t = (int64_t)a * (int64_t)b;
8000868c:	e99fe0ef          	jal	ra,80007524 <__muldi3>
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008690:	03412703          	lw	a4,52(sp)
    return (fixed32)(t >> FIXED_Q);
80008694:	01059593          	slli	a1,a1,0x10
80008698:	01055513          	srli	a0,a0,0x10
8000869c:	00a5e533          	or	a0,a1,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800086a0:	00a70733          	add	a4,a4,a0
    int64_t n = ((int64_t)a) << FIXED_Q;
800086a4:	41f75693          	srai	a3,a4,0x1f
800086a8:	01075613          	srli	a2,a4,0x10
800086ac:	01069593          	slli	a1,a3,0x10
800086b0:	00b665b3          	or	a1,a2,a1
    return (fixed32)(n / b);
800086b4:	41f5d693          	srai	a3,a1,0x1f
800086b8:	0186f6b3          	and	a3,a3,s8
    int64_t n = ((int64_t)a) << FIXED_Q;
800086bc:	01071713          	slli	a4,a4,0x10
    return (fixed32)(n / b);
800086c0:	00e68633          	add	a2,a3,a4
800086c4:	00d636b3          	sltu	a3,a2,a3
800086c8:	00b686b3          	add	a3,a3,a1
800086cc:	01069693          	slli	a3,a3,0x10
800086d0:	01065613          	srli	a2,a2,0x10
    return (fixed32)(t >> FIXED_Q);
800086d4:	000307b7          	lui	a5,0x30
    return (fixed32)(n / b);
800086d8:	00c6e633          	or	a2,a3,a2
    return (fixed32)(t >> FIXED_Q);
800086dc:	00c78bb3          	add	s7,a5,a2
    if (w != 0) {
800086e0:	05012383          	lw	t2,80(sp)
800086e4:	04c12783          	lw	a5,76(sp)
800086e8:	040b8863          	beqz	s7,80008738 <main+0xb3c>
    int64_t n = ((int64_t)a) << FIXED_Q;
800086ec:	41fad713          	srai	a4,s5,0x1f
    return (fixed32)(n / b);
800086f0:	41fbda13          	srai	s4,s7,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
800086f4:	01071713          	slli	a4,a4,0x10
800086f8:	010ad593          	srli	a1,s5,0x10
    return (fixed32)(n / b);
800086fc:	000a0693          	mv	a3,s4
80008700:	000b8613          	mv	a2,s7
80008704:	010a9513          	slli	a0,s5,0x10
80008708:	00e5e5b3          	or	a1,a1,a4
8000870c:	02712a23          	sw	t2,52(sp)
80008710:	b3dfc0ef          	jal	ra,8000524c <__divdi3>
80008714:	000a0693          	mv	a3,s4
80008718:	00050a93          	mv	s5,a0
8000871c:	000b8613          	mv	a2,s7
80008720:	00098513          	mv	a0,s3
80008724:	00040593          	mv	a1,s0
80008728:	b25fc0ef          	jal	ra,8000524c <__divdi3>
8000872c:	04c12783          	lw	a5,76(sp)
80008730:	03412383          	lw	t2,52(sp)
80008734:	00050a13          	mv	s4,a0
    int64_t t = (int64_t)a * (int64_t)b;
80008738:	03812583          	lw	a1,56(sp)
8000873c:	0001b637          	lui	a2,0x1b
80008740:	00000693          	li	a3,0
80008744:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
80008748:	00038513          	mv	a0,t2
8000874c:	02f12a23          	sw	a5,52(sp)
80008750:	dd5fe0ef          	jal	ra,80007524 <__muldi3>
80008754:	04412783          	lw	a5,68(sp)
    return (fixed32)(t >> FIXED_Q);
80008758:	01059593          	slli	a1,a1,0x10
8000875c:	01055513          	srli	a0,a0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008760:	01079713          	slli	a4,a5,0x10
80008764:	03412783          	lw	a5,52(sp)
    return (fixed32)(t >> FIXED_Q);
80008768:	00a5e9b3          	or	s3,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
8000876c:	0107d693          	srli	a3,a5,0x10
80008770:	00e6e733          	or	a4,a3,a4
80008774:	01079d13          	slli	s10,a5,0x10
    return (fixed32)(t >> FIXED_Q);
80008778:	01071b93          	slli	s7,a4,0x10
8000877c:	010d5793          	srli	a5,s10,0x10
80008780:	02e12a23          	sw	a4,52(sp)
80008784:	00fbebb3          	or	s7,s7,a5
80008788:	04048463          	beqz	s1,800087d0 <main+0xbd4>
    int64_t n = ((int64_t)a) << FIXED_Q;
8000878c:	41f9d793          	srai	a5,s3,0x1f
    return (fixed32)(n / b);
80008790:	41f4db93          	srai	s7,s1,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
80008794:	01079793          	slli	a5,a5,0x10
80008798:	0109d593          	srli	a1,s3,0x10
    return (fixed32)(n / b);
8000879c:	000b8693          	mv	a3,s7
800087a0:	00048613          	mv	a2,s1
800087a4:	01099513          	slli	a0,s3,0x10
800087a8:	00f5e5b3          	or	a1,a1,a5
800087ac:	aa1fc0ef          	jal	ra,8000524c <__divdi3>
800087b0:	03412703          	lw	a4,52(sp)
800087b4:	000b8693          	mv	a3,s7
800087b8:	00050993          	mv	s3,a0
800087bc:	00048613          	mv	a2,s1
800087c0:	000d0513          	mv	a0,s10
800087c4:	00070593          	mv	a1,a4
800087c8:	a85fc0ef          	jal	ra,8000524c <__divdi3>
800087cc:	00050b93          	mv	s7,a0
    int64_t t = (int64_t)a * (int64_t)b;
800087d0:	03c12503          	lw	a0,60(sp)
800087d4:	04012583          	lw	a1,64(sp)
800087d8:	0001b637          	lui	a2,0x1b
800087dc:	aaa60613          	addi	a2,a2,-1366 # 1aaaa <_stack_size+0x12aaa>
800087e0:	00000693          	li	a3,0
800087e4:	d41fe0ef          	jal	ra,80007524 <__muldi3>
800087e8:	04812783          	lw	a5,72(sp)
800087ec:	01095713          	srli	a4,s2,0x10
    return (fixed32)(t >> FIXED_Q);
800087f0:	03012403          	lw	s0,48(sp)
    int64_t t = (int64_t)a * (int64_t)b;
800087f4:	01079793          	slli	a5,a5,0x10
800087f8:	00f767b3          	or	a5,a4,a5
800087fc:	01091913          	slli	s2,s2,0x10
    return (fixed32)(t >> FIXED_Q);
80008800:	01059593          	slli	a1,a1,0x10
80008804:	01055513          	srli	a0,a0,0x10
80008808:	01079d13          	slli	s10,a5,0x10
8000880c:	01095713          	srli	a4,s2,0x10
80008810:	02f12a23          	sw	a5,52(sp)
80008814:	00a5e4b3          	or	s1,a1,a0
80008818:	00ed6d33          	or	s10,s10,a4
8000881c:	04040463          	beqz	s0,80008864 <main+0xc68>
    int64_t n = ((int64_t)a) << FIXED_Q;
80008820:	41f4d713          	srai	a4,s1,0x1f
    return (fixed32)(n / b);
80008824:	41f45d13          	srai	s10,s0,0x1f
    int64_t n = ((int64_t)a) << FIXED_Q;
80008828:	01071713          	slli	a4,a4,0x10
8000882c:	0104d593          	srli	a1,s1,0x10
    return (fixed32)(n / b);
80008830:	000d0693          	mv	a3,s10
80008834:	00040613          	mv	a2,s0
80008838:	01049513          	slli	a0,s1,0x10
8000883c:	00e5e5b3          	or	a1,a1,a4
80008840:	a0dfc0ef          	jal	ra,8000524c <__divdi3>
80008844:	03412783          	lw	a5,52(sp)
80008848:	000d0693          	mv	a3,s10
8000884c:	00050493          	mv	s1,a0
80008850:	00040613          	mv	a2,s0
80008854:	00090513          	mv	a0,s2
80008858:	00078593          	mv	a1,a5
8000885c:	9f1fc0ef          	jal	ra,8000524c <__divdi3>
80008860:	00050d13          	mv	s10,a0
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008864:	00010437          	lui	s0,0x10
80008868:	008a8533          	add	a0,s5,s0
    int64_t t = (int64_t)a * (int64_t)b;
8000886c:	00005637          	lui	a2,0x5
80008870:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
80008874:	00000693          	li	a3,0
80008878:	41f55593          	srai	a1,a0,0x1f
8000887c:	ca9fe0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80008880:	01059593          	slli	a1,a1,0x10
80008884:	01055513          	srli	a0,a0,0x10
80008888:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
8000888c:	00151793          	slli	a5,a0,0x1
80008890:	00a787b3          	add	a5,a5,a0
80008894:	00379793          	slli	a5,a5,0x3
80008898:	00a78533          	add	a0,a5,a0
8000889c:	00b55913          	srli	s2,a0,0xb
800088a0:	01551793          	slli	a5,a0,0x15
800088a4:	0000b637          	lui	a2,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800088a8:	008a0533          	add	a0,s4,s0
    return (fixed32)(t >> FIXED_Q);
800088ac:	0107d793          	srli	a5,a5,0x10
800088b0:	01091913          	slli	s2,s2,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800088b4:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
800088b8:	00000693          	li	a3,0
800088bc:	41f55593          	srai	a1,a0,0x1f
    return (fixed32)(t >> FIXED_Q);
800088c0:	00f96933          	or	s2,s2,a5
    int64_t t = (int64_t)a * (int64_t)b;
800088c4:	c61fe0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800088c8:	01059593          	slli	a1,a1,0x10
800088cc:	01055513          	srli	a0,a0,0x10
800088d0:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
800088d4:	00451713          	slli	a4,a0,0x4
800088d8:	40a70533          	sub	a0,a4,a0
800088dc:	00b55713          	srli	a4,a0,0xb
800088e0:	01551513          	slli	a0,a0,0x15
    return (fixed32)(t >> FIXED_Q);
800088e4:	01071713          	slli	a4,a4,0x10
800088e8:	01055513          	srli	a0,a0,0x10
800088ec:	00a76733          	or	a4,a4,a0
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800088f0:	000087b7          	lui	a5,0x8
800088f4:	00095463          	bgez	s2,800088fc <main+0xd00>
800088f8:	ffff87b7          	lui	a5,0xffff8
800088fc:	00f90933          	add	s2,s2,a5
80008900:	41095913          	srai	s2,s2,0x10
80008904:	000087b7          	lui	a5,0x8
80008908:	00075463          	bgez	a4,80008910 <main+0xd14>
8000890c:	ffff87b7          	lui	a5,0xffff8
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008910:	00010437          	lui	s0,0x10
80008914:	00898533          	add	a0,s3,s0
    int64_t t = (int64_t)a * (int64_t)b;
80008918:	00005637          	lui	a2,0x5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
8000891c:	00f70733          	add	a4,a4,a5
    int64_t t = (int64_t)a * (int64_t)b;
80008920:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
80008924:	00000693          	li	a3,0
80008928:	41f55593          	srai	a1,a0,0x1f
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
8000892c:	41075993          	srai	s3,a4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008930:	bf5fe0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80008934:	01059593          	slli	a1,a1,0x10
80008938:	01055513          	srli	a0,a0,0x10
8000893c:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80008940:	00151793          	slli	a5,a0,0x1
80008944:	00a787b3          	add	a5,a5,a0
80008948:	00379793          	slli	a5,a5,0x3
8000894c:	00a78533          	add	a0,a5,a0
80008950:	00b55a13          	srli	s4,a0,0xb
80008954:	01551793          	slli	a5,a0,0x15
80008958:	0000b637          	lui	a2,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
8000895c:	008b8533          	add	a0,s7,s0
    return (fixed32)(t >> FIXED_Q);
80008960:	0107d793          	srli	a5,a5,0x10
80008964:	010a1a13          	slli	s4,s4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008968:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
8000896c:	00000693          	li	a3,0
80008970:	41f55593          	srai	a1,a0,0x1f
    return (fixed32)(t >> FIXED_Q);
80008974:	00fa6a33          	or	s4,s4,a5
    int64_t t = (int64_t)a * (int64_t)b;
80008978:	badfe0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
8000897c:	01059593          	slli	a1,a1,0x10
80008980:	01055513          	srli	a0,a0,0x10
80008984:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80008988:	00451713          	slli	a4,a0,0x4
8000898c:	40a70533          	sub	a0,a4,a0
80008990:	00b55713          	srli	a4,a0,0xb
80008994:	01551513          	slli	a0,a0,0x15
    return (fixed32)(t >> FIXED_Q);
80008998:	01071713          	slli	a4,a4,0x10
8000899c:	01055513          	srli	a0,a0,0x10
800089a0:	00a76733          	or	a4,a4,a0
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800089a4:	000087b7          	lui	a5,0x8
800089a8:	000a5463          	bgez	s4,800089b0 <main+0xdb4>
800089ac:	ffff87b7          	lui	a5,0xffff8
800089b0:	00fa0a33          	add	s4,s4,a5
800089b4:	410a5a13          	srai	s4,s4,0x10
800089b8:	000087b7          	lui	a5,0x8
800089bc:	00075463          	bgez	a4,800089c4 <main+0xdc8>
800089c0:	ffff87b7          	lui	a5,0xffff8
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
800089c4:	00010ab7          	lui	s5,0x10
800089c8:	01548533          	add	a0,s1,s5
    int64_t t = (int64_t)a * (int64_t)b;
800089cc:	00005637          	lui	a2,0x5
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800089d0:	00f70733          	add	a4,a4,a5
    int64_t t = (int64_t)a * (int64_t)b;
800089d4:	ccc60613          	addi	a2,a2,-820 # 4ccc <_stack_size-0x3334>
800089d8:	00000693          	li	a3,0
800089dc:	41f55593          	srai	a1,a0,0x1f
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
800089e0:	41075493          	srai	s1,a4,0x10
    int64_t t = (int64_t)a * (int64_t)b;
800089e4:	b41fe0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
800089e8:	01059593          	slli	a1,a1,0x10
800089ec:	01055513          	srli	a0,a0,0x10
800089f0:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
800089f4:	00151793          	slli	a5,a0,0x1
800089f8:	00a787b3          	add	a5,a5,a0
800089fc:	00379793          	slli	a5,a5,0x3
80008a00:	00a78533          	add	a0,a5,a0
80008a04:	00b55413          	srli	s0,a0,0xb
80008a08:	01551793          	slli	a5,a0,0x15
80008a0c:	0000b637          	lui	a2,0xb
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
80008a10:	015d0533          	add	a0,s10,s5
    return (fixed32)(t >> FIXED_Q);
80008a14:	0107d793          	srli	a5,a5,0x10
80008a18:	01041413          	slli	s0,s0,0x10
    int64_t t = (int64_t)a * (int64_t)b;
80008a1c:	33360613          	addi	a2,a2,819 # b333 <_stack_size+0x3333>
80008a20:	00000693          	li	a3,0
80008a24:	41f55593          	srai	a1,a0,0x1f
    return (fixed32)(t >> FIXED_Q);
80008a28:	00f46433          	or	s0,s0,a5
    int64_t t = (int64_t)a * (int64_t)b;
80008a2c:	af9fe0ef          	jal	ra,80007524 <__muldi3>
    return (fixed32)(t >> FIXED_Q);
80008a30:	01059593          	slli	a1,a1,0x10
80008a34:	01055513          	srli	a0,a0,0x10
80008a38:	00a5e533          	or	a0,a1,a0
    int64_t t = (int64_t)a * (int64_t)b;
80008a3c:	00451a93          	slli	s5,a0,0x4
80008a40:	40aa8533          	sub	a0,s5,a0
80008a44:	00b55a93          	srli	s5,a0,0xb
80008a48:	01551513          	slli	a0,a0,0x15
    return (fixed32)(t >> FIXED_Q);
80008a4c:	010a9a93          	slli	s5,s5,0x10
80008a50:	01055513          	srli	a0,a0,0x10
80008a54:	00aaeab3          	or	s5,s5,a0
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }
80008a58:	000087b7          	lui	a5,0x8
80008a5c:	00045463          	bgez	s0,80008a64 <main+0xe68>
80008a60:	ffff87b7          	lui	a5,0xffff8
80008a64:	00f40433          	add	s0,s0,a5
80008a68:	41045413          	srai	s0,s0,0x10
80008a6c:	000087b7          	lui	a5,0x8
80008a70:	000ad463          	bgez	s5,80008a78 <main+0xe7c>
80008a74:	ffff87b7          	lui	a5,0xffff8
80008a78:	00fa8ab3          	add	s5,s5,a5
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
80008a7c:	0ff00893          	li	a7,255
80008a80:	0ff00813          	li	a6,255
80008a84:	0ff00793          	li	a5,255
80008a88:	00048713          	mv	a4,s1
80008a8c:	000a0693          	mv	a3,s4
80008a90:	00098613          	mv	a2,s3
80008a94:	00090593          	mv	a1,s2
80008a98:	000c8513          	mv	a0,s9
80008a9c:	9f5f70ef          	jal	ra,80000490 <_Z9draw_linePtiiiihhh>
80008aa0:	410ada93          	srai	s5,s5,0x10
    draw_line(pixels, t1.x, t1.y, t2.x, t2.y, col.r, col.g, col.b);
80008aa4:	0ff00893          	li	a7,255
80008aa8:	0ff00813          	li	a6,255
80008aac:	0ff00793          	li	a5,255
80008ab0:	000a8713          	mv	a4,s5
80008ab4:	00040693          	mv	a3,s0
80008ab8:	00048613          	mv	a2,s1
80008abc:	000a0593          	mv	a1,s4
80008ac0:	000c8513          	mv	a0,s9
80008ac4:	9cdf70ef          	jal	ra,80000490 <_Z9draw_linePtiiiihhh>
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
80008ac8:	0ff00793          	li	a5,255
80008acc:	0ff00893          	li	a7,255
80008ad0:	0ff00813          	li	a6,255
80008ad4:	00098713          	mv	a4,s3
80008ad8:	00090693          	mv	a3,s2
80008adc:	000a8613          	mv	a2,s5
80008ae0:	00040593          	mv	a1,s0
80008ae4:	000c8513          	mv	a0,s9
80008ae8:	9a9f70ef          	jal	ra,80000490 <_Z9draw_linePtiiiihhh>
80008aec:	024d8d93          	addi	s11,s11,36
        for (int i = 0; i < cube_size; i++) {
80008af0:	28010793          	addi	a5,sp,640
80008af4:	d0fd9863          	bne	s11,a5,80008004 <main+0x408>
        tfp_printf("Frame %d\r\n", frame_num++);
80008af8:	06c12403          	lw	s0,108(sp)
80008afc:	00000517          	auipc	a0,0x0
80008b00:	0d450513          	addi	a0,a0,212 # 80008bd0 <main+0xfd4>
80008b04:	00040593          	mv	a1,s0
80008b08:	af4fb0ef          	jal	ra,80003dfc <tfp_printf>
80008b0c:	00000797          	auipc	a5,0x0
80008b10:	33c78793          	addi	a5,a5,828 # 80008e48 <main+0x124c>
80008b14:	0007a583          	lw	a1,0(a5)
80008b18:	06812503          	lw	a0,104(sp)
80008b1c:	00140993          	addi	s3,s0,1 # 10001 <_stack_size+0x8001>
80008b20:	81dfd0ef          	jal	ra,8000633c <__addsf3>
80008b24:	00050493          	mv	s1,a0
80008b28:	b30fb0ef          	jal	ra,80003e58 <cosf>
80008b2c:	00050913          	mv	s2,a0
80008b30:	00048513          	mv	a0,s1
80008b34:	bc0fb0ef          	jal	ra,80003ef4 <sinf>
80008b38:	00000797          	auipc	a5,0x0
80008b3c:	31878793          	addi	a5,a5,792 # 80008e50 <main+0x1254>
80008b40:	0007a583          	lw	a1,0(a5)
80008b44:	00050413          	mv	s0,a0
80008b48:	00048513          	mv	a0,s1
80008b4c:	07312623          	sw	s3,108(sp)
80008b50:	8c8fe0ef          	jal	ra,80006c18 <__mulsf3>
80008b54:	00050493          	mv	s1,a0
80008b58:	b00fb0ef          	jal	ra,80003e58 <cosf>
80008b5c:	00050a13          	mv	s4,a0
80008b60:	00048513          	mv	a0,s1
80008b64:	b90fb0ef          	jal	ra,80003ef4 <sinf>
80008b68:	00050993          	mv	s3,a0
    }
80008b6c:	b7cff06f          	j	80007ee8 <main+0x2ec>
