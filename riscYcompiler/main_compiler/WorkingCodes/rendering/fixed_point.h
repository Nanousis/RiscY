#ifndef __FIXED_POINT_H__
#define __FIXED_POINT_H__


#include <stdint.h>
#include <limits.h>

#ifndef FIXED_Q
#define FIXED_Q 16              // fractional bits
#endif

typedef int32_t fixed32;        // Q(32-FIXED_Q).(FIXED_Q)
#define FIXED_ONE   ((fixed32) (1 << FIXED_Q))
#define FIXED_HALF  ((fixed32) (1 << (FIXED_Q - 1)))

// ----- Conversions -----
static inline fixed32 fixed_from_int(int32_t x)        { return (fixed32)(x << FIXED_Q); }
static inline int32_t fixed_to_int_trunc(fixed32 x)    { return (int32_t)(x >> FIXED_Q); }
static inline int32_t fixed_to_int_round(fixed32 x)    { return (int32_t)((x + (x >= 0 ? FIXED_HALF : -FIXED_HALF)) >> FIXED_Q); }

// If you have floating point available:
static inline fixed32 fixed_from_float(float f)        { return (fixed32)(f * (float)(1 << FIXED_Q)); }
static inline float   fixed_to_float(fixed32 x)        { return (float)x / (float)(1 << FIXED_Q); }

// ----- Basic ops (same Q) -----
static inline fixed32 fixed_add(fixed32 a, fixed32 b)  { return a + b; }
static inline fixed32 fixed_sub(fixed32 a, fixed32 b)  { return a - b; }

// Multiply with 64-bit intermediate; truncating and rounded variants
static inline fixed32 fixed_mul_trunc(fixed32 a, fixed32 b) {
    int64_t t = (int64_t)a * (int64_t)b;
    return (fixed32)(t >> FIXED_Q);
}
static inline fixed32 fixed_mul_round(fixed32 a, fixed32 b) {
    int64_t t = (int64_t)a * (int64_t)b;
    // Round to nearest, ties to +inf for non-negative product
    if (t >= 0) t += (int64_t)1 << (FIXED_Q - 1);
    else        t -= (int64_t)1 << (FIXED_Q - 1);
    return (fixed32)(t >> FIXED_Q);
}

// Division with 64-bit intermediate; truncating and rounded variants
static inline fixed32 fixed_div_trunc(fixed32 a, fixed32 b) {
    // (a << Q) / b
    int64_t n = ((int64_t)a) << FIXED_Q;
    return (fixed32)(n / b);
}
// static inline fixed32 fixed_div_round(fixed32 a, fixed32 b) {
//     int64_t n = ((int64_t)a) << FIXED_Q;
//     if ((n ^ b) >= 0) n += llabs((int64_t)b) >> 1; // sign-aware rounding
//     else              n -= llabs((int64_t)b) >> 1;
//     return (fixed32)(n / b);
// }
static inline fixed32 fixed_sqrt(fixed32 x) {
    if (x <= 0) return 0;
    // Newton–Raphson on integer domain. Start guess ~ scaled.
    int64_t xn = x;
    int64_t g  = (int64_t)1 << (FIXED_Q); // start at 1.0
    for (int i = 0; i < 16; ++i) {
        // g = 0.5 * (g + x/g)
        int64_t t = (xn << FIXED_Q) / g;
        g = (g + t) >> 1;
    }
    return (fixed32)g;
}

// ----- Saturating variants (avoid wrap on overflow) -----
static inline fixed32 fixed_saturate_i64_to_fixed(int64_t x) {
    if (x > INT32_MAX) return INT32_MAX;
    if (x < INT32_MIN) return INT32_MIN;
    return (fixed32)x;
}
static inline fixed32 fixed_mul_sat_round(fixed32 a, fixed32 b) {
    int64_t t = (int64_t)a * (int64_t)b;
    t += (t >= 0 ? ((int64_t)1 << (FIXED_Q - 1)) : -((int64_t)1 << (FIXED_Q - 1)));
    t >>= FIXED_Q;
    return fixed_saturate_i64_to_fixed(t);
}

// ----- Rescale between different Q formats -----
static inline int32_t fixed_rescale(int32_t x, int src_q, int dst_q) {
    if (src_q == dst_q) return x;
    if (src_q < dst_q)  return x << (dst_q - src_q);
    // Round when shifting down
    int shift = src_q - dst_q;
    if (x >= 0) return (x + (1 << (shift - 1))) >> shift;
    else        return (x - (1 << (shift - 1))) >> shift;
}

#endif