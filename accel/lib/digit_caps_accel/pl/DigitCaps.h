#ifndef DIGITCAPS_H
#define DIGITCAPS_H

#include <ap_fixed.h>

// Keep this type exactly aligned with DigitCaps.cpp and the host-side fixed conversion.
// Host currently converts float -> ap_fixed<32,16>-compatible raw values.
typedef ap_fixed<32, 16> fixed_t;

#ifdef __cplusplus
extern "C" {
#endif

// HLS top function.
//
// Argument layout expected by XRT after the reset update:
//
//   arg0: input
//   arg1: weights
//   arg2: prediction
//   arg3: reset
//
// reset = 0 -> normal DigitCaps inference
// reset = 1 -> reset-only / clear-output path
//
void digitcaps_accel(
    fixed_t *input,
    fixed_t *weights,
    fixed_t *prediction,
    int clear
);

#ifdef __cplusplus
}
#endif

#endif // DIGITCAPS_H