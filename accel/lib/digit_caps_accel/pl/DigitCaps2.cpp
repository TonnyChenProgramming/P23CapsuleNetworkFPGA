/*
 * DigitCaps.cpp
 * author: nicholas wolf
 *
 * Lightweight reset-defensive version.
 *
 * This version is intentionally based on the successfully deployed DigitCaps.cpp
 * structure, with only the minimum reset changes needed for correctness:
 *
 *   1. Keep the original dataflow/array structure as much as possible.
 *   2. Add a software-visible reset argument:
 *          digitcaps_accel(input, weights, prediction, reset)
 *   3. Keep HLS/platform reset support with a tiny resettable static flag.
 *      Do NOT put #pragma HLS reset on huge arrays; that made the design too
 *      large to fit beside the DPU on ZCU102.
 *   4. Clear only the state that can create cross-inference accumulator behavior:
 *          coupling_b, coupling_c, output_agreement, prediction
 *      Do NOT clear primary_caps or weighted_input_u after every run because
 *      they are fully overwritten during normal inference.
 *
 * Host-side:
 *   Normal inference:
 *       run.set_arg(0, input_bo);
 *       run.set_arg(1, weights_bo);
 *       run.set_arg(2, prediction_bo);
 *       run.set_arg(3, 0);
 *
 *   Reset-only call:
 *       run.set_arg(3, 1);
 */

#include "DigitCaps.h"

#include <cstdlib>
#include <stdint.h>
#include <string.h>

#include "constants.h"
#include <ap_fixed.h>

#ifndef __SYNTHESIS__
#include <math.h>
#else
#include <hls_math.h>
#endif

// ------------------- PRIVATE TYPEDEF -------------------
typedef ap_fixed<32, 16> fixed_t;
// ------------------- PRIVATE TYPEDEF -------------------

// ---------------- FUNCTION DECLARATIONS ----------------
static void apply_weights(fixed_t *input_mat, fixed_t *weights, fixed_t *weighted_input);
static void softmax(fixed_t *mat_b, fixed_t *mat_c);
static void sum_of_products(fixed_t *input_mat, fixed_t *coupling_terms, fixed_t *output_mat);
static void squash(fixed_t *input_mat, fixed_t *squash_mat);
static void agreement(fixed_t *input_mat, fixed_t *squashed_mat, fixed_t *output_mat);
static void add(fixed_t *input_mat, fixed_t *coupling_terms);
static void coalesce_partial_sums(fixed_t *input, fixed_t *output);

static void clear_prediction(fixed_t *prediction);
static void clear_routing_logits(fixed_t *coupling_b);
static void clear_routing_scratch(fixed_t *coupling_c, fixed_t *output_agreement);
static void mark_prediction_clear(fixed_t *prediction);
// ---------------- FUNCTION DECLARATIONS ----------------

static void mark_prediction_clear(fixed_t *prediction)
{
MARK_PREDICTION_CLEAR_LOOP:
    for (uint32_t i = 0; i < DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE; ++i)
    {
#pragma HLS PIPELINE II=1
        prediction[i] = (fixed_t)-1.0;
    }
}
static void clear_buffer(fixed_t *buf, uint32_t count)
{
CLEAR_GENERIC_BUFFER_LOOP:
    for (uint32_t i = 0; i < count; ++i)
    {
#pragma HLS PIPELINE II=1
        buf[i] = (fixed_t)0;
    }
}
static void clear_prediction(fixed_t *prediction)
{
CLEAR_PREDICTION_LOOP:
	for (uint32_t i = 0; i < DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE; ++i)
	{
#pragma HLS PIPELINE II=1
		prediction[i] = (fixed_t)0;
	}
}

static void clear_routing_logits(fixed_t *coupling_b)
{
CLEAR_ROUTING_LOGITS_LOOP:
	for (uint32_t i = 0; i < DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES; ++i)
	{
#pragma HLS PIPELINE II=1
		coupling_b[i] = (fixed_t)0;
	}
}

static void clear_routing_scratch(fixed_t *coupling_c, fixed_t *output_agreement)
{
CLEAR_ROUTING_SCRATCH_LOOP:
	for (uint32_t i = 0; i < DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES; ++i)
	{
#pragma HLS PIPELINE II=1
		coupling_c[i] = (fixed_t)0;
		output_agreement[i] = (fixed_t)0;
	}
}

// Top-level HLS kernel.
// Keep extern "C" so the exported kernel symbol remains exactly digitcaps_accel.
extern "C" {
void digitcaps_accel(fixed_t *input, fixed_t *weights, fixed_t *prediction, int clear)
{
#pragma HLS INTERFACE mode=m_axi port=input      offset=slave bundle=gmem0 max_read_burst_length=8 max_write_burst_length=8 depth=9216
#pragma HLS INTERFACE mode=m_axi port=weights    offset=slave bundle=gmem1 max_read_burst_length=8 max_write_burst_length=8 depth=1474560
#pragma HLS INTERFACE mode=m_axi port=prediction offset=slave bundle=gmem2 max_read_burst_length=8 max_write_burst_length=8 depth=160

#pragma HLS INTERFACE mode=s_axilite port=input      bundle=control
#pragma HLS INTERFACE mode=s_axilite port=weights    bundle=control
#pragma HLS INTERFACE mode=s_axilite port=prediction bundle=control
#pragma HLS INTERFACE mode=s_axilite port=clear      bundle=control
#pragma HLS INTERFACE mode=s_axilite port=return     bundle=control

    static ap_uint<1> clear_guard = 0;
#pragma HLS RESET variable=clear_guard

    volatile int clear_local = clear;
    clear_guard = (clear_local != 0);

    fixed_t primary_caps[DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE];
#pragma HLS BIND_STORAGE variable=primary_caps type=ram_1wnr impl=lutram

    fixed_t squashed_v[DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE];
#pragma HLS BIND_STORAGE variable=squashed_v type=ram_1wnr impl=lutram

    fixed_t weighted_input_u[DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE];
#pragma HLS ARRAY_PARTITION variable=weighted_input_u dim=1 type=cyclic factor=8

    fixed_t coupling_b[DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES];
#pragma HLS BIND_STORAGE variable=coupling_b type=ram_1wnr impl=lutram

    fixed_t coupling_c[DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES];
#pragma HLS BIND_STORAGE variable=coupling_c type=ram_1wnr impl=lutram
#pragma HLS ARRAY_PARTITION variable=coupling_c dim=1 type=cyclic factor=20

    fixed_t sum_of_products_s[DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE];
#pragma HLS BIND_STORAGE variable=sum_of_products_s type=ram_1wnr impl=lutram

    fixed_t output_agreement[DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES];
#pragma HLS BIND_STORAGE variable=output_agreement type=ram_1wnr impl=lutram

    // ------------------------------------------------------------
    // Universal clear.
    // This executes for both clear=1 and clear=0.
    // ------------------------------------------------------------
    clear_prediction(prediction);

    clear_buffer(
        primary_caps,
        DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE
    );

    clear_buffer(
        weighted_input_u,
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_DIM_CAPSULE
    );

    clear_buffer(
        coupling_b,
        DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES
    );

    clear_buffer(
        coupling_c,
        DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES
    );

    clear_buffer(
        sum_of_products_s,
        DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE
    );

    clear_buffer(
        squashed_v,
        DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE
    );

    clear_buffer(
        output_agreement,
        DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES
    );

    // ------------------------------------------------------------
    // Clear-only transaction.
    // Important: no input read, no weight read, no inference.
    // ------------------------------------------------------------
    if (clear_local != 0)
    {
		mark_prediction_clear(prediction);
        return;
    }

    // ------------------------------------------------------------
    // Normal inference starts here.
    // ------------------------------------------------------------

    memcpy(primary_caps, (const fixed_t *)input,
           DIGIT_CAPS_INPUT_CAPSULES *
           DIGIT_CAPS_INPUT_DIM_CAPSULE *
           sizeof(fixed_t));

    apply_weights(primary_caps, weights, weighted_input_u);

    for (uint32_t i = 0; i < DIGIT_CAPS_ROUTING_ITERATIONS; ++i)
    {
        // Do not clear coupling_b here.
        // coupling_b is supposed to accumulate within one routing pass.

        clear_buffer(
            coupling_c,
            DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES
        );

        clear_buffer(
            output_agreement,
            DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES
        );

        clear_buffer(
            sum_of_products_s,
            DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE
        );

        clear_buffer(
            squashed_v,
            DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE
        );

        softmax(coupling_b, coupling_c);

        sum_of_products(weighted_input_u, coupling_c, sum_of_products_s);

        squash(sum_of_products_s, squashed_v);

        if (i < DIGIT_CAPS_ROUTING_ITERATIONS - 1)
        {
            agreement(weighted_input_u, squashed_v, output_agreement);
            add(output_agreement, coupling_b);
        }
    }

    memcpy(prediction, (const fixed_t *)squashed_v,
           DIGIT_CAPS_NUM_DIGITS *
           DIGIT_CAPS_DIM_CAPSULE *
           sizeof(fixed_t));
}
}

static void apply_weights(fixed_t *input_mat, fixed_t *weights, fixed_t *weighted_input)
{
	uint32_t iterator_a = 0;
	uint32_t iterator_b = 0;

	uint32_t weights_per_class = DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE;
	uint32_t num_outputs = DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE;

	for (uint32_t i = 0; i < DIGIT_CAPS_NUM_DIGITS; i++)
	{
		for (uint32_t j = 0; j < DIGIT_CAPS_INPUT_CAPSULES; j++)
		{
            #pragma HLS PIPELINE II=8
			// burst read weight array in small chunks
			fixed_t weight_buffer[DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE];
            #pragma HLS ARRAY_PARTITION variable=weight_buffer dim=1 type=complete

			memcpy(weight_buffer, (const fixed_t *)weights + weights_per_class * i + num_outputs * j,
				   DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE * sizeof(fixed_t));

			iterator_a = DIGIT_CAPS_INPUT_DIM_CAPSULE * j;
			iterator_b = DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_CAPSULES * i + DIGIT_CAPS_DIM_CAPSULE * j;

			for (uint32_t k = 0; k < DIGIT_CAPS_DIM_CAPSULE; ++k)
			{
				fixed_t product = 0.0;
				fixed_t sum = 0.0;

                #pragma HLS BIND_OP variable=sum op=fadd
                #pragma HLS BIND_OP variable=product op=fmul

				uint32_t capsule_index = DIGIT_CAPS_INPUT_DIM_CAPSULE * k;

			dot_product:
				for (uint32_t l = 0; l < DIGIT_CAPS_INPUT_DIM_CAPSULE; ++l)
				{
                #pragma HLS UNROLL
					product = weight_buffer[capsule_index + l] * input_mat[iterator_a + l];
					sum += product;
				}

				// Full assignment, not +=. No previous weighted_input_u value is used.
				weighted_input[iterator_b + k] = sum;
			}
		}
	}
}

static void softmax(fixed_t *mat_b, fixed_t *mat_c)
{
	// For all input capsules i in layer l
	for (uint32_t i = 0; i < DIGIT_CAPS_INPUT_CAPSULES; ++i)
	{
        #pragma HLS PIPELINE II=4
		fixed_t sum = 0.0;

		for (uint32_t j = 0; j < DIGIT_CAPS_NUM_DIGITS; ++j)
		{
			fixed_t entry = exp(mat_b[i + j * DIGIT_CAPS_INPUT_CAPSULES]);
			mat_c[i + j * DIGIT_CAPS_INPUT_CAPSULES] = entry;
			sum += entry;
		}

		for (uint32_t j = 0; j < DIGIT_CAPS_NUM_DIGITS; ++j)
		{
			mat_c[i + j * DIGIT_CAPS_INPUT_CAPSULES] /= (sum + (fixed_t)1e-7);
            #pragma HLS BIND_OP variable=mat_c op=ddiv impl=dsp latency=-1
		}
	}
}

static void sum_of_products(fixed_t *input_mat, fixed_t *coupling_terms, fixed_t *output_mat)
{
	for (uint32_t sum_i = 0; sum_i < DIGIT_CAPS_NUM_DIGITS; ++sum_i)
	{
		for (uint32_t sum_j = 0; sum_j < DIGIT_CAPS_DIM_CAPSULE; ++sum_j)
		{
			fixed_t sum = 0.0;

			for (uint32_t sum_k = 0; sum_k < DIGIT_CAPS_INPUT_CAPSULES; ++sum_k)
			{
            #pragma HLS PIPELINE II=1
				sum += input_mat[(sum_i * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE) +
								 (sum_k * DIGIT_CAPS_DIM_CAPSULE) + sum_j] *
					   coupling_terms[sum_i * DIGIT_CAPS_INPUT_CAPSULES + sum_k];
			}

			// Full assignment. No accumulator behavior across calls.
			output_mat[sum_i * DIGIT_CAPS_DIM_CAPSULE + sum_j] = sum;
		}
	}
}

static void coalesce_partial_sums(fixed_t *input, fixed_t *output)
{
	fixed_t result = (fixed_t)0.0;
	for (int i = 0; i < DIGIT_CAPS_INPUT_CAPSULES; ++i)
	{
        #pragma HLS DEPENDENCE variable=result type=intra direction=RAW true
        #pragma HLS PIPELINE II=3
		result += input[i];
        #pragma HLS BIND_OP variable=result op=add impl=dsp latency=2
	}
	*output = result;
}

static void squash(fixed_t *input_mat, fixed_t *squash_mat)
{
	fixed_t squared_norm = 0.0;
	fixed_t scale = 0.0;

	for (uint32_t i = 0; i < DIGIT_CAPS_NUM_DIGITS; ++i)
	{
		squared_norm = 0.0;

		for (uint32_t dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim)
		{
            #pragma HLS PIPELINE II=2
			squared_norm += input_mat[i * DIGIT_CAPS_DIM_CAPSULE + dim] *
							input_mat[i * DIGIT_CAPS_DIM_CAPSULE + dim];
		}

		scale = squared_norm / ((fixed_t)1.0 + squared_norm) /
				(fixed_t)sqrt(squared_norm + (fixed_t)1e-7);

		for (uint32_t dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim)
		{
			// Full assignment. No previous squash_mat value is used.
			squash_mat[i * DIGIT_CAPS_DIM_CAPSULE + dim] =
				(input_mat[i * DIGIT_CAPS_DIM_CAPSULE + dim] * scale);
		}
	}
}

static void agreement(fixed_t *input_mat, fixed_t *squashed_mat, fixed_t *output_mat)
{
	for (int i = 0; i < DIGIT_CAPS_NUM_DIGITS; ++i)
	{
		for (int j = 0; j < DIGIT_CAPS_INPUT_CAPSULES; ++j)
		{
			fixed_t sum = 0.0;

			for (int k = 0; k < DIGIT_CAPS_DIM_CAPSULE; ++k)
			{
				sum += input_mat[i * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE +
								 j * DIGIT_CAPS_DIM_CAPSULE + k] *
					   squashed_mat[i * DIGIT_CAPS_DIM_CAPSULE + k];
			}

			// Full assignment, not +=.
			output_mat[i * DIGIT_CAPS_INPUT_CAPSULES + j] = sum;
		}
	}
}

static void add(fixed_t *input_mat, fixed_t *coupling_terms)
{
	for (int i = 0; i < DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES; ++i)
	{
        #pragma HLS PIPELINE II=2
		// Intentional routing update inside a single inference only.
		coupling_terms[i] += input_mat[i];
    }
}