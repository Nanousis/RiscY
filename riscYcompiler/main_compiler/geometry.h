#ifndef __GEOMETRY_H__
#define __GEOMETRY_H__
#include "fixed_point.h"
#include <cmath>


#define WIDTH  800
#define HEIGHT 480
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

template <class t> struct Vec2 {
	union {
		struct {t u, v;};
		struct {t x, y;};
		t raw[2];
	};
	Vec2() : u(0), v(0) {}
	Vec2(t _u, t _v) : u(_u),v(_v) {}
	inline Vec2<t> operator +(const Vec2<t> &V) const { return Vec2<t>(u+V.u, v+V.v); }
	inline Vec2<t> operator -(const Vec2<t> &V) const { return Vec2<t>(u-V.u, v-V.v); }
	inline Vec2<t> operator *(float f)          const { return Vec2<t>(u*f, v*f); }
};

template <class t> struct Vec3 {
	union {
		struct {t x, y, z;};
		struct { t ivert, iuv, inorm; };
		t raw[3];
	};
	Vec3() : x(0), y(0), z(0) {}
	Vec3(t _x, t _y, t _z) : x(_x),y(_y),z(_z) {}
	inline Vec3<t> operator ^(const Vec3<t> &v) const { return Vec3<t>(y*v.z-z*v.y, z*v.x-x*v.z, x*v.y-y*v.x); }
	inline Vec3<t> operator +(const Vec3<t> &v) const { return Vec3<t>(x+v.x, y+v.y, z+v.z); }
	inline Vec3<t> operator -(const Vec3<t> &v) const { return Vec3<t>(x-v.x, y-v.y, z-v.z); }
	inline Vec3<t> operator *(float f)          const { return Vec3<t>(x*f, y*f, z*f); }
	inline t       operator *(const Vec3<t> &v) const { return x*v.x + y*v.y + z*v.z; }
	float norm () const { return std::sqrt(x*x+y*y+z*z); }
	Vec3<t> & normalize(t l=1) { *this = (*this)*(l/norm()); return *this; }
};

typedef Vec2<float> Vec2f;
typedef Vec2<int>   Vec2i;
typedef Vec3<float> Vec3f;
typedef Vec3<int>   Vec3i;
Vec3f rotateY(const Vec3f &v, float angle) {
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x * ca + v.z * sa,
        v.y,
        -v.x * sa + v.z * ca
    );
}

Vec3f rotateX(const Vec3f &v, float angle) {
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x,
        v.y * ca - v.z * sa,
        v.y * sa + v.z * ca
    );
}

Vec3f rotateZ(const Vec3f &v, float angle) {
    float ca = std::cos(angle);
    float sa = std::sin(angle);
    return Vec3f(
        v.x * ca - v.y * sa,
        v.x * sa + v.y * ca,
        v.z
    );
}

typedef struct{
    char r, g, b;
}color;

struct Vec3fixed{
    fixed32 x, y, z;
};

struct triangle3f{
    Vec3fixed p[3];
};
struct mesh{
	triangle3f *triangles;
	unsigned int triangleCount;
};
struct matrix4f{
	fixed32 m[4][4]={0};
};
void draw_pixel(uint16_t* pixels, int x, int y, color col) {
	uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    if(x<0 || x>=WIDTH || y<0 || y>=HEIGHT) return;
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
    pixels[y * WIDTH + x] = color;
    return;
}
void draw_pixel_double(uint16_t* pixels, int x, int y, color col) {
    uint16_t r5 = (col.r >> 3) & 0x1F;  // 5 bits
    uint16_t g6 = (col.g >> 2) & 0x3F;  // 6 bits
    uint16_t b5 = (col.b >> 3) & 0x1F;  // 5 bits
    uint16_t color = (r5 << 11) | (g6 << 5) | b5;
    if(x<0 || x>=WIDTH>>1 || y<0 || y>=HEIGHT) return;
    y= HEIGHT - y + 1; // Invert y-axis for framebuffer
    uint32_t *base_addr = (uint32_t *)pixels;
    base_addr[(y * WIDTH>>1) + x] = color<<16 | color;
    return;
}
void clear_screen(uint16_t* pixels, color col) {
    for(int j=0; j<HEIGHT; j++) {
	    for(int i=0; i<WIDTH>>1; i++) {
			draw_pixel_double(pixels, i, j, col);
		}
	}
}
// Midpoint (Bresenham) Line Drawing Algorithm
void draw_line(uint16_t* pixels, int x0, int y0, int x1, int y1,
               uint8_t r, uint8_t g, uint8_t b) {
    int dx = abs(x1 - x0);
    int dy = abs(y1 - y0);
    int sx = (x0 < x1) ? 1 : -1;
    int sy = (y0 < y1) ? 1 : -1;
    int err = dx - dy;
    while (1) {
        draw_pixel(pixels, x0, y0, (color){r, g, b});
        if (x0 == x1 && y0 == y1) break;
        int e2 = 2 * err;
        if (e2 > -dy) {
            err -= dy;
            x0 += sx;
        }
        if (e2 < dx) {
            err += dx;
            y0 += sy;
        }
    }
}

void triangle(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
    // Finding the top two vertices
    if (t0.y > t1.y) {
        Vec2i temp = t0;
        t0 = t1;
        t1 = temp;
    }
    if (t0.y > t2.y) {
        Vec2i temp = t0;
        t0 = t2;
        t2 = temp;
    }
    if (t1.y > t2.y) {
        Vec2i temp = t1;
        t1 = t2;
        t2 = temp;
    }
    int total_height = t2.y-t0.y; 
    for (int i=0; i<total_height; i++) { 
        char second_half = i>t1.y-t0.y || t1.y==t0.y; 
        int segment_height = second_half ? t2.y-t1.y : t1.y-t0.y; 
        float alpha = (float)i/total_height; 
        float beta  = (float)(i-(second_half ? t1.y-t0.y : 0))/segment_height; // be careful: with above conditions no division by zero here 
        Vec2i A = t0 + (t2 - t0)*alpha; 
        Vec2i B = second_half ? t1 + (t2 - t1)*beta : t0 + (t1 - t0)*beta; 
        if (A.x > B.x) {
            Vec2i temp = A;
            A = B;
            B = temp;
        }
        for (int j=A.x; j<=B.x; j++) { 
            draw_pixel(pixels, j, t0.y+i, col);
        } 
    } 
}


void triangle_wireframe(uint16_t* pixels, Vec2i t0, Vec2i t1, Vec2i t2, color col) { 
    draw_line(pixels, t0.x, t0.y, t1.x, t1.y, col.r, col.g, col.b);
    draw_line(pixels, t1.x, t1.y, t2.x, t2.y, col.r, col.g, col.b);
    draw_line(pixels, t2.x, t2.y, t0.x, t0.y, col.r, col.g, col.b);
}


#endif //__GEOMETRY_H__