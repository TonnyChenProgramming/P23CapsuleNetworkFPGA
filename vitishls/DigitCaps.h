// DigitCaps.h
#ifndef DIGIT_CAPS_H
#define DIGIT_CAPS_H

#include <ap_fixed.h>
#include "constants.h"

typedef ap_fixed<32, 16> fixed_t;

void dynamic_routing(fixed_t *input,
                     fixed_t *weights,
                     fixed_t *prediction);

#endif