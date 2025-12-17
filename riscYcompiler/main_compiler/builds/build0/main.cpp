#include <stdint.h>
#include "riscYstdio.h"
#include "tinyprintf.h"
#include "geometry.h"
#include "fixed_point.h"

#define RAM_LOCATION (0x80000000 + WIDTH * HEIGHT)
#define RAM_LOCATION2 (0x80000000 + WIDTH * HEIGHT*8)
#define abs(x) ((x) < 0 ? -(x) : (x))
#define cube_size 12
#define F(x) (fixed_from_float((float)(x)))

uint16_t *frame_buffer = (uint16_t *) RAM_LOCATION;
uint16_t *frame_buffer_to_use = (uint16_t *) RAM_LOCATION2;
char cur_frame_buffer = 1;

uint16_t *switch_frame_buffer() {
    if (cur_frame_buffer == 0) {
        cur_frame_buffer = 1;
        frame_buffer = ( uint16_t *) RAM_LOCATION;
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION2;
    } else {
        cur_frame_buffer = 0;
        frame_buffer = ( uint16_t *) RAM_LOCATION2;
        frame_buffer_to_use = ( uint16_t *) RAM_LOCATION;
    }
    return frame_buffer;
}


static inline void MultiplyMatrixVector_fixed(const Vec3fixed *i, Vec3fixed *o, const matrix4f *m)
{
    //Compute x, y, z components (matrix multiply)
    fixed32 x = fixed_mul_trunc(i->x, m->m[0][0]);
    x = fixed_add(x, fixed_mul_trunc(i->y, m->m[1][0]));
    x = fixed_add(x, fixed_mul_trunc(i->z, m->m[2][0]));
    x = fixed_add(x, m->m[3][0]);

    fixed32 y = fixed_mul_trunc(i->x, m->m[0][1]);
    y = fixed_add(y, fixed_mul_trunc(i->y, m->m[1][1]));
    y = fixed_add(y, fixed_mul_trunc(i->z, m->m[2][1]));
    y = fixed_add(y, m->m[3][1]);

    fixed32 z = fixed_mul_trunc(i->x, m->m[0][2]);
    z = fixed_add(z, fixed_mul_trunc(i->y, m->m[1][2]));
    z = fixed_add(z, fixed_mul_trunc(i->z, m->m[2][2]));
    z = fixed_add(z, m->m[3][2]);

    fixed32 w = fixed_mul_trunc(i->x, m->m[0][3]);
    w = fixed_add(w, fixed_mul_trunc(i->y, m->m[1][3]));
    w = fixed_add(w, fixed_mul_trunc(i->z, m->m[2][3]));
    w = fixed_add(w, m->m[3][3]);

    //If w != 0 → divide
    if (w != 0) {
        o->x = fixed_div_trunc(x, w);
        o->y = fixed_div_trunc(y, w);
        o->z = fixed_div_trunc(z, w);
    } else {
        o->x = x;
        o->y = y;
        o->z = z;
    }
}
static inline Vec2i to_screen_fixed(const Vec3fixed* p)
{
    fixed32 one = fixed_from_int(1);
    fixed32 x01 = fixed_mul_trunc(fixed_add(p->x, one),F(0.3f));
    fixed32 y01 = fixed_mul_trunc(fixed_add(p->y, one),F(0.7f));

    // scale by (WIDTH-1), (HEIGHT-1)
    fixed32 xpix = fixed_mul_trunc(x01, fixed_from_int(WIDTH));
    fixed32 ypix = fixed_mul_trunc(y01, fixed_from_int(HEIGHT));

    // Convert to int at the end (round is nicer than trunc)
    int sx = fixed_to_int_round(xpix);
    int sy = fixed_to_int_round(ypix);

    // If your screen Y grows downward, flip:
    // sy = (HEIGHT - 1) - sy;

    return (Vec2i){ sx, sy };
}


Vec3fixed cross_product_fixed(triangle3f triangle)
{
        Vec3fixed normal, line1, line2;
        line1.x = fixed_sub(triangle.p[1].x, triangle.p[0].x);
        line1.y = fixed_sub(triangle.p[1].y, triangle.p[0].y);
        line1.z = fixed_sub(triangle.p[1].z, triangle.p[0].z);

        line2.x = fixed_sub(triangle.p[2].x, triangle.p[0].x);
        line2.y = fixed_sub(triangle.p[2].y, triangle.p[0].y);
        line2.z = fixed_sub(triangle.p[2].z, triangle.p[0].z);
        
        normal.x = fixed_sub(fixed_mul_trunc(line1.y, line2.z), fixed_mul_trunc(line1.z, line2.y));
        normal.y = fixed_sub(fixed_mul_trunc(line1.z, line2.x), fixed_mul_trunc(line1.x, line2.z));
        normal.z = fixed_sub(fixed_mul_trunc(line1.x, line2.y), fixed_mul_trunc(line1.y, line2.x));
        return normal;
}
Vec3fixed normalize_fixed(Vec3fixed normal)
{
        fixed32 l = fixed_sqrt(fixed_add(fixed_add(fixed_mul_trunc(normal.x, normal.x),
                                                    fixed_mul_trunc(normal.y, normal.y)),
                                        fixed_mul_trunc(normal.z, normal.z)));
        normal.x = fixed_div_trunc(normal.x, l);
        normal.y = fixed_div_trunc(normal.y, l);
        normal.z = fixed_div_trunc(normal.z, l);
        return normal;
}


static inline fixed32 dot_product_fixed(Vec3fixed a, Vec3fixed b)
{
    return fixed_add(fixed_add(fixed_mul_trunc(a.x, b.x),
                               fixed_mul_trunc(a.y, b.y)),
                     fixed_mul_trunc(a.z, b.z));
}


int main() {
    init_printf(NULL, tfp_putc);      // set output sink
    uint16_t *pixels = ( uint16_t *) (RAM_LOCATION);
    unsigned int *screenChange= ( unsigned int *) 0x88002800;
    unsigned int *frame_buffer_addr= ( unsigned int *) 0x88002804;
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");
    frame_buffer_addr[0] = (uint32_t)frame_buffer; // Set frame buffer address
    frame_buffer_addr[0] = (uint32_t)frame_buffer; // Set frame buffer address
    frame_buffer_addr[0] = (uint32_t)frame_buffer; // Set frame buffer address
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");
    *screenChange = 0x00000001; // Trigger screen change
    *screenChange = 0x00000001; // Trigger screen change
    *screenChange = 0x00000001; // Trigger screen change
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");
    // South
    // 8 corners of the cube
    const Vec3fixed v[8] = {
        { F(0.0f), F(0.0f), F(0.0f) }, // 0
        { F(1.0f), F(0.0f), F(0.0f) }, // 1
        { F(1.0f), F(1.0f), F(0.0f) }, // 2
        { F(0.0f), F(1.0f), F(0.0f) }, // 3
        { F(0.0f), F(0.0f), F(1.0f) }, // 4
        { F(1.0f), F(0.0f), F(1.0f) }, // 5
        { F(1.0f), F(1.0f), F(1.0f) }, // 6
        { F(0.0f), F(1.0f), F(1.0f) }, // 7
    };
        // 12 triangles (two per face), CCW winding outward
    static const uint8_t idx[12][3] = {
        // South (z=0)
        {0,3,2}, {0,2,1},
        // East (x=1)
        {1,2,6}, {1,6,5},
        // North (z=1)
        {5,6,7}, {5,7,4},
        // West (x=0)
        {4,7,3}, {4,3,0},
        // Top (y=1)
        {3,7,6}, {3,6,2},
        // Bottom (y=0)
        {5,4,0}, {5,0,1},
    };
    triangle3f cube_triangles[cube_size];
    // triangle3f *cube_triangles = (triangle3f *) riscy_malloc(sizeof(triangle3f) * 120);
    for (int i = 0; i < 12; ++i) {
        cube_triangles[i].p[0] = v[idx[i][0]];
        cube_triangles[i].p[1] = v[idx[i][1]];
        cube_triangles[i].p[2] = v[idx[i][2]];
    }
    mesh cube = { cube_triangles, cube_size };


    tfp_printf("Starting Frame Buffer Test\r\n");

    tfp_printf("Screen change triggered ON\r\n");

    tfp_printf("Screen filled with blue\r\n");

    matrix4f matProj = {0};
    fixed32 fNear = F(0.1f), fFar = F(1000.0f);
    fixed32 fFov = F(90.0f);
    fixed32 fAspectRatio = F(1.66666f);

    // fFovRad = 1 / tan(fFov/2). If you don’t have tan, keep 1.0 for now:
    fixed32 fFovRad = F(1.0f);

    // Use fixed mul/div:
    matProj.m[0][0] = fixed_mul_trunc(fAspectRatio, fFovRad);
    matProj.m[1][1] = fFovRad;
    matProj.m[2][2] = fixed_div_trunc(fFar, fixed_sub(fFar, fNear));
    matProj.m[3][2] = fixed_div_trunc(-fixed_mul_trunc(fFar, fNear),
                                    fixed_sub(fFar, fNear));
    matProj.m[2][3] = F(1.0f);
    matProj.m[3][3] = F(0.0f);

    matrix4f matRotZ = {0};
    matrix4f matRotX = {0};
    float frame_time = 0.0f;
    int frame_num = 0;

    Vec3fixed vCamera = {0, 0, 0};
    while(1){
        // clear_screen(frame_buffer_to_use, (color){15,15,35});

        frame_time += 0.03f;
        float fTheta = frame_time;
                // Rotation Z
        matRotZ.m[0][0] = fixed_from_float(cosf(fTheta));
        matRotZ.m[0][1] = fixed_from_float(sinf(fTheta));
        matRotZ.m[1][0] = fixed_from_float(-sinf(fTheta));
        matRotZ.m[1][1] = fixed_from_float(cosf(fTheta));
        matRotZ.m[2][2] = fixed_from_float(1.0f);
        matRotZ.m[3][3] = fixed_from_float(1.0f);

        // Rotation X
        matRotX.m[0][0] = fixed_from_float(1.0f);
        matRotX.m[1][1] = fixed_from_float(cosf(fTheta * 0.5f));
        matRotX.m[1][2] = fixed_from_float(sinf(fTheta * 0.5f));
        matRotX.m[2][1] = fixed_from_float(-sinf(fTheta * 0.5f));
        matRotX.m[2][2] = fixed_from_float(cosf(fTheta * 0.5f));
        matRotX.m[3][3] = fixed_from_float(1.0f);
        // Render
        for (int i = 0; i < cube_size; i++) {
            triangle3f triProj, triTranslated, triRotatedZ, triRotatedZX;

			// Rotate in Z-Axis
			MultiplyMatrixVector_fixed(&cube.triangles[i].p[0], &triRotatedZ.p[0], &matRotZ);
			MultiplyMatrixVector_fixed(&cube.triangles[i].p[1], &triRotatedZ.p[1], &matRotZ);
			MultiplyMatrixVector_fixed(&cube.triangles[i].p[2], &triRotatedZ.p[2], &matRotZ);

			// Rotate in X-Axis
			MultiplyMatrixVector_fixed(&triRotatedZ.p[0], &triRotatedZX.p[0], &matRotX);
			MultiplyMatrixVector_fixed(&triRotatedZ.p[1], &triRotatedZX.p[1], &matRotX);
			MultiplyMatrixVector_fixed(&triRotatedZ.p[2], &triRotatedZX.p[2], &matRotX);

            // translate +3 in Z for each vertex
            for (int k = 0; k < 3; ++k) {
                triTranslated.p[k] = triRotatedZX.p[k];
                triTranslated.p[k].z = fixed_add(triTranslated.p[k].z, F(3.0f));
            }

            Vec3fixed normal = cross_product_fixed(triTranslated);
            normal = normalize_fixed(normal);

            // if(normal.z < 0) {
            if (dot_product_fixed(normal, 
                                 (Vec3fixed){
                                     fixed_sub(triTranslated.p[0].x, vCamera.x),
                                     fixed_sub(triTranslated.p[0].y, vCamera.y),
                                     fixed_sub(triTranslated.p[0].z, vCamera.z)
                                 }) < 0) {
                Vec3fixed light_dir = {
                    fixed_from_float(0.0f),
                    fixed_from_float(0.0f),
                    fixed_from_float(-1.0f)
                };
                // Not needed if light_dir is already normalized
                // light_dir = normalize_fixed(light_dir);
                fixed32 dp = dot_product_fixed(normal, light_dir);
                char light_intensity = fixed_to_int_round(fixed_mul_trunc(dp, F(255.0f)));
                // project the translated vertices
                MultiplyMatrixVector_fixed(&triTranslated.p[0], &triProj.p[0], &matProj);
                MultiplyMatrixVector_fixed(&triTranslated.p[1], &triProj.p[1], &matProj);
                MultiplyMatrixVector_fixed(&triTranslated.p[2], &triProj.p[2], &matProj);

                Vec2i s0 = to_screen_fixed(&triProj.p[0]);
                Vec2i s1 = to_screen_fixed(&triProj.p[1]);
                Vec2i s2 = to_screen_fixed(&triProj.p[2]);

                // tfp_printf("Triangle %d: Screen Coords: (%d,%d), (%d,%d), (%d,%d)\r\n",
                    // i, s0.x, s0.y, s1.x, s1.y, s2.x, s2.y);
                triangle(frame_buffer_to_use, s0, s1, s2, (color){light_intensity,light_intensity,light_intensity});
                triangle_wireframe(frame_buffer_to_use, s0, s1, s2, (color){0,0,0});
            }
        }
        frame_buffer_addr[0] = (uint32_t)switch_frame_buffer();
        // tfp_printf("Current Frame Buffer: %x\r\n", frame_buffer_to_use);
        // for(volatile int k=0; k<100000; k++); // Simple delay
        tfp_printf("Frame %d\r\n", frame_num++);
    }
}