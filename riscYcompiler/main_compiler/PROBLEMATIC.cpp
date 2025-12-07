// This code causes overflow on the branch because we do branch
// blez with 0x80000000 whose twos compliment is 0x80000000
// and the comparison fails because the sign bit is set.


#include <stdint.h>
#include "riscYstdio.h"
#include "tinyprintf.h"
#include "geometry.h"
#include "fixed_point.h"

#define RAM_LOCATION (0x80000000 + WIDTH * HEIGHT * 2)
#define abs(x) ((x) < 0 ? -(x) : (x))
#define cube_size 12
#define F(x) (fixed_from_float((float)(x)))


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

// static inline Vec2i to_screen(const Vec3f& p)
// {
//     int sx = (int)((p.x + 1.0f) * 0.5f * (WIDTH  - 1));
//     int sy = (int)((p.y + 1.0f) * 0.5f * (HEIGHT - 1));
//     return Vec2i{sx, sy};
// }


int main() {
    init_printf(NULL, tfp_putc);      // set output sink
    uint16_t *pixels = ( uint16_t *) (RAM_LOCATION);
    unsigned int *screenChange= ( unsigned int *) 0x88002800;
    unsigned int *frame_buffer_addr= ( unsigned int *) 0x88002804;
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
    frame_buffer_addr[0] = (uint32_t)pixels; // Set frame buffer address
    *screenChange = 0x00000001; // Trigger screen change
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
    tfp_printf("Frame buffer1: %x\r\n", uint32_t(pixels));
    while(1){
        for(volatile int k=0; k<100; k++); // Simple delay
        tfp_printf("Frame %d\r\n", frame_num++);
    }




    tfp_printf("Lines drawn\r\n");
    char received_char;
    while(1){
        received_char = uart_read_byte();
        tfp_printf("Received character: %c\r\n", received_char);
    }
}

