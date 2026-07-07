/*
 * DigitCapsValidated.cpp
 * Conservative three-argument HLS implementation of CapsNet DigitCaps.
 */

#include <ap_fixed.h>
#include <hls_math.h>

static const int NUM_INPUT_CAPSULES  = 1152;
static const int INPUT_CAPSULE_DIM   = 8;
static const int NUM_OUTPUT_CAPSULES = 10;
static const int OUTPUT_CAPSULE_DIM  = 16;
static const int ROUTING_ITERATIONS  = 3;

static const int INPUT_SIZE = NUM_INPUT_CAPSULES * INPUT_CAPSULE_DIM;
static const int WEIGHT_SIZE = NUM_OUTPUT_CAPSULES * NUM_INPUT_CAPSULES * OUTPUT_CAPSULE_DIM * INPUT_CAPSULE_DIM;
static const int OUTPUT_SIZE = NUM_OUTPUT_CAPSULES * OUTPUT_CAPSULE_DIM;

typedef ap_fixed<32,16,AP_RND,AP_SAT> fixed_t;
typedef ap_fixed<48,24,AP_RND,AP_SAT> accum_t;
typedef ap_fixed<32,16> math_fixed_t;
typedef ap_fixed<48,24> math_accum_t;

static int input_index(int i, int d) {
#pragma HLS INLINE
    return i * INPUT_CAPSULE_DIM + d;
}

static int weight_index(int j, int i, int od, int id) {
#pragma HLS INLINE
    return (((j * NUM_INPUT_CAPSULES + i) * OUTPUT_CAPSULE_DIM + od) * INPUT_CAPSULE_DIM + id);
}
static int output_index(int j, int d) {
#pragma HLS INLINE
    return j * OUTPUT_CAPSULE_DIM + d;
}

static void squash_capsule(
    const accum_t in_vec[OUTPUT_CAPSULE_DIM],
    fixed_t out_vec[OUTPUT_CAPSULE_DIM]
) {
#pragma HLS INLINE off
    accum_t squared_norm = 0;

squash_norm:
    for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS PIPELINE II=1
        squared_norm += in_vec[d] * in_vec[d];
    }

    const accum_t epsilon = accum_t(0.0000001);
    fixed_t scale = 0;

    if (squared_norm > epsilon) {
        math_accum_t squared_norm_math = math_accum_t(squared_norm);
        math_accum_t norm_math = hls::sqrt(squared_norm_math);
        accum_t norm = accum_t(norm_math);
        accum_t denom = (accum_t(1) + squared_norm) * (norm + epsilon);
        scale = fixed_t(squared_norm / denom);
    }

squash_apply:
    for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS PIPELINE II=1
        out_vec[d] = fixed_t(in_vec[d]) * scale;
    }
}

static void softmax_one(
    const fixed_t logits[NUM_OUTPUT_CAPSULES],
    fixed_t coeffs[NUM_OUTPUT_CAPSULES]
) {
#pragma HLS INLINE off
    fixed_t max_value = logits[0];

softmax_max:
    for (int j = 1; j < NUM_OUTPUT_CAPSULES; ++j) {
#pragma HLS PIPELINE II=1
        if (logits[j] > max_value) max_value = logits[j];
    }

    fixed_t exps[NUM_OUTPUT_CAPSULES];
#pragma HLS ARRAY_PARTITION variable=exps complete dim=1
    accum_t denom = 0;

softmax_exp:
    for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
#pragma HLS PIPELINE II=1
        fixed_t shifted = logits[j] - max_value;
        math_fixed_t shifted_math = math_fixed_t(shifted);
        math_fixed_t exp_math = hls::exp(shifted_math);
        fixed_t e = fixed_t(exp_math);
        exps[j] = e;
        denom += e;
    }

    const accum_t epsilon = accum_t(0.0000001);

softmax_div:
    for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
#pragma HLS PIPELINE II=1
        coeffs[j] = fixed_t(accum_t(exps[j]) / (denom + epsilon));
    }
}

extern "C" void digitcaps_accel(
    const fixed_t* input,
    const fixed_t* weights,
    fixed_t* prediction
) {
#pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem0 depth=INPUT_SIZE
#pragma HLS INTERFACE m_axi port=weights offset=slave bundle=gmem1 depth=WEIGHT_SIZE
#pragma HLS INTERFACE m_axi port=prediction offset=slave bundle=gmem2 depth=OUTPUT_SIZE
#pragma HLS INTERFACE s_axilite port=input bundle=control
#pragma HLS INTERFACE s_axilite port=weights bundle=control
#pragma HLS INTERFACE s_axilite port=prediction bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    fixed_t input_local[NUM_INPUT_CAPSULES][INPUT_CAPSULE_DIM];
    fixed_t u_hat[NUM_OUTPUT_CAPSULES][NUM_INPUT_CAPSULES][OUTPUT_CAPSULE_DIM];
    fixed_t b_ij[NUM_INPUT_CAPSULES][NUM_OUTPUT_CAPSULES];
    fixed_t c_ij[NUM_INPUT_CAPSULES][NUM_OUTPUT_CAPSULES];
    accum_t s_j[NUM_OUTPUT_CAPSULES][OUTPUT_CAPSULE_DIM];
    fixed_t v_j[NUM_OUTPUT_CAPSULES][OUTPUT_CAPSULE_DIM];

#pragma HLS ARRAY_PARTITION variable=input_local complete dim=2
#pragma HLS ARRAY_PARTITION variable=s_j complete dim=2
#pragma HLS ARRAY_PARTITION variable=v_j complete dim=2

load_input:
    for (int i = 0; i < NUM_INPUT_CAPSULES; ++i) {
        for (int d = 0; d < INPUT_CAPSULE_DIM; ++d) {
#pragma HLS PIPELINE II=1
            input_local[i][d] = input[input_index(i,d)];
        }
    }

compute_u_hat:
    for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
        for (int i = 0; i < NUM_INPUT_CAPSULES; ++i) {
            for (int od = 0; od < OUTPUT_CAPSULE_DIM; ++od) {
                accum_t sum = 0;
                for (int id = 0; id < INPUT_CAPSULE_DIM; ++id) {
#pragma HLS PIPELINE II=1
                    sum += accum_t(input_local[i][id]) * accum_t(weights[weight_index(j,i,od,id)]);
                }
                u_hat[j][i][od] = fixed_t(sum);
            }
        }
    }

init_routing:
    for (int i = 0; i < NUM_INPUT_CAPSULES; ++i) {
        for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
#pragma HLS PIPELINE II=1
            b_ij[i][j] = fixed_t(0);
            c_ij[i][j] = fixed_t(0);
        }
    }

init_output:
    for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
        for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS PIPELINE II=1
            v_j[j][d] = fixed_t(0);
        }
    }

routing_loop:
    for (int r = 0; r < ROUTING_ITERATIONS; ++r) {

softmax_all:
        for (int i = 0; i < NUM_INPUT_CAPSULES; ++i) {
            fixed_t logits[NUM_OUTPUT_CAPSULES];
            fixed_t coeffs[NUM_OUTPUT_CAPSULES];
#pragma HLS ARRAY_PARTITION variable=logits complete dim=1
#pragma HLS ARRAY_PARTITION variable=coeffs complete dim=1

            for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
#pragma HLS UNROLL
                logits[j] = b_ij[i][j];
            }

            softmax_one(logits, coeffs);

            for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
#pragma HLS UNROLL
                c_ij[i][j] = coeffs[j];
            }
        }

clear_s:
        for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
            for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS PIPELINE II=1
                s_j[j][d] = accum_t(0);
            }
        }

weighted_sum:
        for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
            for (int i = 0; i < NUM_INPUT_CAPSULES; ++i) {
                fixed_t coeff = c_ij[i][j];
                for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS PIPELINE II=1
                    s_j[j][d] += accum_t(coeff) * accum_t(u_hat[j][i][d]);
                }
            }
        }

squash_all:
        for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
            accum_t in_vec[OUTPUT_CAPSULE_DIM];
            fixed_t out_vec[OUTPUT_CAPSULE_DIM];
#pragma HLS ARRAY_PARTITION variable=in_vec complete dim=1
#pragma HLS ARRAY_PARTITION variable=out_vec complete dim=1

            for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS UNROLL
                in_vec[d] = s_j[j][d];
            }

            squash_capsule(in_vec, out_vec);

            for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS UNROLL
                v_j[j][d] = out_vec[d];
            }
        }

        if (r < ROUTING_ITERATIONS - 1) {
update_logits:
            for (int i = 0; i < NUM_INPUT_CAPSULES; ++i) {
                for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
                    accum_t agreement = 0;
                    for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS PIPELINE II=1
                        agreement += accum_t(u_hat[j][i][d]) * accum_t(v_j[j][d]);
                    }
                    b_ij[i][j] += fixed_t(agreement);
                }
            }
        }
    }

write_output:
    for (int j = 0; j < NUM_OUTPUT_CAPSULES; ++j) {
        for (int d = 0; d < OUTPUT_CAPSULE_DIM; ++d) {
#pragma HLS PIPELINE II=1
            prediction[output_index(j,d)] = v_j[j][d];
        }
    }
}
