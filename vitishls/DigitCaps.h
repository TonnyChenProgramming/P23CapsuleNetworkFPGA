#ifndef DIGITCAPS_H
#define DIGITCAPS_H

#include <ap_fixed.h>

typedef ap_fixed<32, 16> fixed_t;

#ifdef __cplusplus
extern "C" {
#endif

void digitcaps_accel(
    fixed_t* input,
    fixed_t* weights,
    fixed_t* prediction,
    int reset
);

#ifdef __cplusplus
}
#endif

#endif