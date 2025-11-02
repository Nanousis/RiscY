#ifndef GEOMETRY_H
#define GEOMETRY_H

#include <math.h>   // sqrtf

/* ------------------------------
   Vec2 (float / int)
   ------------------------------ */

typedef struct {
    union {
        struct { float u, v; };
        struct { float x, y; };
        float raw[2];
    };
} Vec2f;

typedef struct {
    union {
        struct { int u, v; };
        struct { int x, y; };
        int raw[2];
    };
} Vec2i;

/* Constructors */
static inline Vec2f vec2f(float u, float v) { Vec2f r; r.u=u; r.v=v; return r; }
static inline Vec2i vec2i(int u, int v)     { Vec2i r; r.u=u; r.v=v; return r; }

/* Add/Sub */
static inline Vec2f vec2f_add(Vec2f a, Vec2f b){ return vec2f(a.u+b.u, a.v+b.v); }
static inline Vec2f vec2f_sub(Vec2f a, Vec2f b){ return vec2f(a.u-b.u, a.v-b.v); }
static inline Vec2i vec2i_add(Vec2i a, Vec2i b){ return vec2i(a.u+b.u, a.v+b.v); }
static inline Vec2i vec2i_sub(Vec2i a, Vec2i b){ return vec2i(a.u-b.u, a.v-b.v); }

/* Scale (note: int version truncates) */
static inline Vec2f vec2f_scale(Vec2f a, float f){ return vec2f(a.u*f, a.v*f); }
static inline Vec2i vec2i_scale(Vec2i a, float f){ return vec2i((int)(a.u*f), (int)(a.v*f)); }

/* Dot */
static inline float vec2f_dot(Vec2f a, Vec2f b){ return a.x*b.x + a.y*b.y; }
static inline int   vec2i_dot(Vec2i a, Vec2i b){ return a.x*b.x + a.y*b.y; }

/* ------------------------------
   Vec3 (float / int)
   ------------------------------ */

typedef struct {
    union {
        struct { float x, y, z; };
        struct { float ivert, iuv, inorm; };
        float raw[3];
    };
} Vec3f;

typedef struct {
    union {
        struct { int x, y, z; };
        struct { int ivert, iuv, inorm; };
        int raw[3];
    };
} Vec3i;

/* Constructors */
static inline Vec3f vec3f(float x, float y, float z){ Vec3f r; r.x=x; r.y=y; r.z=z; return r; }
static inline Vec3i vec3i(int x, int y, int z)      { Vec3i r; r.x=x; r.y=y; r.z=z; return r; }

/* Add/Sub */
static inline Vec3f vec3f_add(Vec3f a, Vec3f b){ return vec3f(a.x+b.x, a.y+b.y, a.z+b.z); }
static inline Vec3f vec3f_sub(Vec3f a, Vec3f b){ return vec3f(a.x-b.x, a.y-b.y, a.z-b.z); }
static inline Vec3i vec3i_add(Vec3i a, Vec3i b){ return vec3i(a.x+b.x, a.y+b.y, a.z+b.z); }
static inline Vec3i vec3i_sub(Vec3i a, Vec3i b){ return vec3i(a.x-b.x, a.y-b.y, a.z-b.z); }

/* Scale (note: int version truncates) */
static inline Vec3f vec3f_scale(Vec3f a, float f){ return vec3f(a.x*f, a.y*f, a.z*f); }
static inline Vec3i vec3i_scale(Vec3i a, float f){ return vec3i((int)(a.x*f), (int)(a.y*f), (int)(a.z*f)); }

/* Dot / Cross */
static inline float vec3f_dot(Vec3f a, Vec3f b){ return a.x*b.x + a.y*b.y + a.z*b.z; }
static inline int   vec3i_dot(Vec3i a, Vec3i b){ return a.x*b.x + a.y*b.y + a.z*b.z; }

static inline Vec3f vec3f_cross(Vec3f a, Vec3f b){
    return vec3f(a.y*b.z - a.z*b.y,
                 a.z*b.x - a.x*b.z,
                 a.x*b.y - a.y*b.x);
}
static inline Vec3i vec3i_cross(Vec3i a, Vec3i b){
    return vec3i(a.y*b.z - a.z*b.y,
                 a.z*b.x - a.x*b.z,
                 a.x*b.y - a.y*b.x);
}

/* Norm / Normalize (float) */
static inline float  vec3f_norm(Vec3f a){ return sqrtf(a.x*a.x + a.y*a.y + a.z*a.z); }
static inline Vec3f  vec3f_normalized(Vec3f a){
    float n = vec3f_norm(a);
    if (n > 0.0f) { float inv = 1.0f/n; a.x*=inv; a.y*=inv; a.z*=inv; }
    return a;
}
/* scale to length L (like C++ normalize(l)) */
static inline Vec3f  vec3f_normalized_to(Vec3f a, float L){
    float n = vec3f_norm(a);
    if (n > 0.0f) { float s = L/n; a.x*=s; a.y*=s; a.z*=s; }
    return a;
}

#endif /* GEOMETRY_H */
