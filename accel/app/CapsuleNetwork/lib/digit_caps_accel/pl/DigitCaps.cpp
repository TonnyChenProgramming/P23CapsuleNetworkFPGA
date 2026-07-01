/*
 * DigitCaps.cpp
 * Defensive HLS DigitCaps accelerator implementation.
 *
 * Purpose of this rewrite:
 *   1. Treat the HLS DigitCaps IP as stateful hardware and make every kernel
 *      invocation self-cleaning.
 *   2. Add a software-visible reset argument so the host can call the kernel in
 *      reset-only mode without performing inference.
 *   3. Add HLS reset pragmas so static HLS memories are also tied to the
 *      generated hardware reset port. Vitis HLS normally generates an active-low
 *      ap_rst_n reset for the kernel/control interface. The reset pragmas below
 *      make the listed static memories respond to that hardware reset.
 *   4. Avoid accidental accumulator behaviour: every array that is written by
 *      += or participates in routing state is explicitly cleared before use.
 *
 * IMPORTANT HOST-SIDE CHANGE:
 *   The top kernel now has 4 arguments:
 *       digitcaps_accel(input, weights, prediction, reset)
 *
 *   Normal inference:
 *       run.set_arg(0, input_bo);
 *       run.set_arg(1, weights_bo);
 *       run.set_arg(2, prediction_bo);
 *       run.set_arg(3, 0);  // reset = 0
 *
 *   Reset-only call:
 *       run.set_arg(3, 1);  // reset = 1
 *
 * IMPORTANT BUILD CHANGE:
 *   Because the kernel interface changed, you must rebuild the HLS kernel and
 *   regenerate/copy the xclbin. Rebuilding only CapsuleNetwork.exe is not enough.
 */

#include "DigitCaps.h"
#include "constants.h"

#include <stdint.h>
#include <string.h>
#include <ap_fixed.h>

#ifndef __SYNTHESIS__
#include <cmath>
#else
#include <hls_math.h>
#endif

// ------------------- PRIVATE TYPEDEF -------------------
typedef ap_fixed<32, 16> fixed_t;
// ------------------- PRIVATE TYPEDEF -------------------

// ------------------- SIZE CONSTANTS ---------------------
static const uint32_t PRIMARY_CAPS_COUNT =
    DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE;

static const uint32_t WEIGHTED_INPUT_COUNT =
    DIGIT_CAPS_NUM_DIGITS *
    DIGIT_CAPS_INPUT_CAPSULES *
    DIGIT_CAPS_DIM_CAPSULE;

static const uint32_t ROUTING_COEFF_COUNT =
    DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES;

static const uint32_t DIGIT_OUTPUT_COUNT =
    DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE;

static const uint32_t WEIGHTS_COUNT =
    DIGIT_CAPS_NUM_DIGITS *
    DIGIT_CAPS_INPUT_CAPSULES *
    DIGIT_CAPS_DIM_CAPSULE *
    DIGIT_CAPS_INPUT_DIM_CAPSULE;
// ------------------- SIZE CONSTANTS ---------------------

// ---------------- FUNCTION DECLARATIONS ----------------
static fixed_t fixed_exp(fixed_t x);
static fixed_t fixed_sqrt(fixed_t x);

static void clear_primary_caps(fixed_t *primary_caps);
static void clear_weighted_input(fixed_t *weighted_input_u);
static void clear_routing_coeffs(
    fixed_t *coupling_b,
    fixed_t *coupling_c,
    fixed_t *output_agreement
);
static void clear_digit_outputs(
    fixed_t *sum_of_products_s,
    fixed_t *squashed_v
);
static void clear_prediction(fixed_t *prediction);
static void clear_all_internal_state(
    fixed_t *primary_caps,
    fixed_t *weighted_input_u,
    fixed_t *coupling_b,
    fixed_t *coupling_c,
    fixed_t *sum_of_products_s,
    fixed_t *squashed_v,
    fixed_t *output_agreement
);

static void load_primary_caps(
    const fixed_t *input,
    fixed_t *primary_caps
);
static void apply_weights(
    fixed_t *input_mat,
    fixed_t *weights,
    fixed_t *weighted_input
);
static void softmax(
    fixed_t *mat_b,
    fixed_t *mat_c
);
static void sum_of_products(
    fixed_t *input_mat,
    fixed_t *coupling_terms,
    fixed_t *output_mat
);
static void squash(
    fixed_t *input_mat,
    fixed_t *squash_mat
);
static void agreement(
    fixed_t *input_mat,
    fixed_t *squashed_mat,
    fixed_t *output_mat
);
static void add(
    fixed_t *input_mat,
    fixed_t *coupling_terms
);
static void store_prediction(
    const fixed_t *squashed_v,
    fixed_t *prediction
);

static void dynamic_routing(
    fixed_t *input,
    fixed_t *weights,
    fixed_t *prediction,
    int reset
);
// ---------------- FUNCTION DECLARATIONS ----------------

static fixed_t fixed_exp(fixed_t x)
{
#ifndef __SYNTHESIS__
    return (fixed_t)std::exp((float)x);
#else
    return (fixed_t)hls::exp((float)x);
#endif
}

static fixed_t fixed_sqrt(fixed_t x)
{
#ifndef __SYNTHESIS__
    return (fixed_t)std::sqrt((float)x);
#else
    return (fixed_t)hls::sqrt((float)x);
#endif
}

// ========================================================
// CLEAR / RESET HELPERS
// ========================================================

static void clear_primary_caps(fixed_t *primary_caps)
{
CLEAR_PRIMARY_CAPS_LOOP:
    for (uint32_t i = 0; i < PRIMARY_CAPS_COUNT; ++i)
    {
#pragma HLS PIPELINE II=1
        primary_caps[i] = (fixed_t)0;
    }
}

static void clear_weighted_input(fixed_t *weighted_input_u)
{
CLEAR_WEIGHTED_INPUT_LOOP:
    for (uint32_t i = 0; i < WEIGHTED_INPUT_COUNT; ++i)
    {
#pragma HLS PIPELINE II=1
        weighted_input_u[i] = (fixed_t)0;
    }
}

static void clear_routing_coeffs(
    fixed_t *coupling_b,
    fixed_t *coupling_c,
    fixed_t *output_agreement
)
{
CLEAR_ROUTING_COEFFS_LOOP:
    for (uint32_t i = 0; i < ROUTING_COEFF_COUNT; ++i)
    {
#pragma HLS PIPELINE II=1
        coupling_b[i] = (fixed_t)0;
        coupling_c[i] = (fixed_t)0;
        output_agreement[i] = (fixed_t)0;
    }
}

static void clear_digit_outputs(
    fixed_t *sum_of_products_s,
    fixed_t *squashed_v
)
{
CLEAR_DIGIT_OUTPUTS_LOOP:
    for (uint32_t i = 0; i < DIGIT_OUTPUT_COUNT; ++i)
    {
#pragma HLS PIPELINE II=1
        sum_of_products_s[i] = (fixed_t)0;
        squashed_v[i] = (fixed_t)0;
    }
}

static void clear_prediction(fixed_t *prediction)
{
CLEAR_PREDICTION_LOOP:
    for (uint32_t i = 0; i < DIGIT_OUTPUT_COUNT; ++i)
    {
#pragma HLS PIPELINE II=1
        prediction[i] = (fixed_t)0;
    }
}

static void clear_all_internal_state(
    fixed_t *primary_caps,
    fixed_t *weighted_input_u,
    fixed_t *coupling_b,
    fixed_t *coupling_c,
    fixed_t *sum_of_products_s,
    fixed_t *squashed_v,
    fixed_t *output_agreement
)
{
    clear_primary_caps(primary_caps);
    clear_weighted_input(weighted_input_u);
    clear_routing_coeffs(coupling_b, coupling_c, output_agreement);
    clear_digit_outputs(sum_of_products_s, squashed_v);
}

// ========================================================
// CORE DYNAMIC ROUTING
// ========================================================

static void dynamic_routing(
    fixed_t *input,
    fixed_t *weights,
    fixed_t *prediction,
    int reset
)
{
    // These arrays are static deliberately so that #pragma HLS reset can bind
    // them to the generated active-low ap_rst_n hardware reset. Because static
    // memories retain state between invocations if not cleared, we ALSO clear
    // them explicitly at the start and end of every call.
    static fixed_t primary_caps[PRIMARY_CAPS_COUNT];
	#pragma HLS reset variable=primary_caps

    static fixed_t weighted_input_u[WEIGHTED_INPUT_COUNT];
	#pragma HLS reset variable=weighted_input_u
	#pragma HLS ARRAY_PARTITION variable=weighted_input_u dim=1 type=cyclic factor=8

    static fixed_t coupling_b[ROUTING_COEFF_COUNT];
	#pragma HLS reset variable=coupling_b

    static fixed_t coupling_c[ROUTING_COEFF_COUNT];
	#pragma HLS reset variable=coupling_c

    static fixed_t sum_of_products_s[DIGIT_OUTPUT_COUNT];
	#pragma HLS reset variable=sum_of_products_s
	#pragma HLS BIND_STORAGE variable=sum_of_products_s type=ram_1wnr impl=auto

    static fixed_t squashed_v[DIGIT_OUTPUT_COUNT];
	#pragma HLS reset variable=squashed_v

    static fixed_t output_agreement[ROUTING_COEFF_COUNT];
	#pragma HLS reset variable=output_agreement

    // ----------------------------------------------------
    // SYSTEM/ALGORITHMIC RESET ENTRY
    // ----------------------------------------------------
    // Vitis HLS generates an active-low ap_rst_n hardware reset. The reset
    // pragmas above attach these static buffers to that hardware reset.
    // However, ap_rst_n is not asserted before every kernel call. Therefore,
    // every call performs an explicit software-visible algorithmic reset too.
    // ----------------------------------------------------
    clear_all_internal_state(
        primary_caps,
        weighted_input_u,
        coupling_b,
        coupling_c,
        sum_of_products_s,
        squashed_v,
        output_agreement
    );

    // Always clear external prediction at the beginning. This prevents stale
    // output from being observed if the kernel exits early or partially fails.
    clear_prediction(prediction);

    // Reset-only command from host. This gives the host a software-visible
    // reset interface even when xbutil/xrt-smi reset is unavailable.
    if (reset != 0)
    {
        return;
    }

    // ----------------------------------------------------
    // NORMAL INFERENCE
    // ----------------------------------------------------
    load_primary_caps(input, primary_caps);

    // weighted_input_u was already cleared. apply_weights writes every element
    // using assignment, not +=, to avoid accumulator behaviour.
    apply_weights(primary_caps, weights, weighted_input_u);

ROUTING_ITERATION_LOOP:
    for (uint32_t iter = 0; iter < DIGIT_CAPS_ROUTING_ITERATIONS; ++iter)
    {
        // These are per-iteration accumulators. They must be cleared every
        // routing iteration, not just every image.
        clear_digit_outputs(sum_of_products_s, squashed_v);

        // output_agreement is only valid for the current routing iteration.
        // coupling_c is fully overwritten by softmax, but clear it anyway as a
        // defensive measure against partial writes.
        for (uint32_t idx = 0; idx < ROUTING_COEFF_COUNT; ++idx)
        {
		#pragma HLS PIPELINE II=1
            coupling_c[idx] = (fixed_t)0;
            output_agreement[idx] = (fixed_t)0;
        }

        softmax(coupling_b, coupling_c);

        sum_of_products(weighted_input_u, coupling_c, sum_of_products_s);

        squash(sum_of_products_s, squashed_v);

        if (iter < DIGIT_CAPS_ROUTING_ITERATIONS - 1)
        {
            agreement(weighted_input_u, squashed_v, output_agreement);

            // This is the only intentional routing accumulation. coupling_b
            // was explicitly zeroed at kernel entry, so this cannot accumulate
            // across images/kernel invocations.
            add(output_agreement, coupling_b);
        }
    }

    store_prediction(squashed_v, prediction);

    // Post-run scrub. Do not clear prediction after this point because the host
    // must read it. Clear only internal HLS memories.
    clear_all_internal_state(
        primary_caps,
        weighted_input_u,
        coupling_b,
        coupling_c,
        sum_of_products_s,
        squashed_v,
        output_agreement
    );
}

static void load_primary_caps(
    const fixed_t *input,
    fixed_t *primary_caps
)
{
LOAD_PRIMARY_CAPS_LOOP:
    for (uint32_t i = 0; i < PRIMARY_CAPS_COUNT; ++i)
    {
	#pragma HLS PIPELINE II=1
        primary_caps[i] = input[i];
    }
}

static void apply_weights(
    fixed_t *input_mat,
    fixed_t *weights,
    fixed_t *weighted_input
)
{
    const uint32_t weights_per_class =
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_DIM_CAPSULE *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    const uint32_t weights_per_input_capsule =
        DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE;

APPLY_WEIGHTS_DIGIT_LOOP:
    for (uint32_t digit = 0; digit < DIGIT_CAPS_NUM_DIGITS; ++digit)
    {
    APPLY_WEIGHTS_INPUT_CAP_LOOP:
        for (uint32_t in_cap = 0; in_cap < DIGIT_CAPS_INPUT_CAPSULES; ++in_cap)
        {
            fixed_t weight_buffer[DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE];
			#pragma HLS ARRAY_PARTITION variable=weight_buffer dim=1 type=complete

        LOAD_WEIGHT_BUFFER_LOOP:
            for (uint32_t i = 0; i < DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE; ++i)
            {
			#pragma HLS PIPELINE II=1
                const uint32_t weight_index =
                    digit * weights_per_class +
                    in_cap * weights_per_input_capsule +
                    i;
                weight_buffer[i] = weights[weight_index];
            }

        APPLY_WEIGHTS_OUT_DIM_LOOP:
            for (uint32_t out_dim = 0; out_dim < DIGIT_CAPS_DIM_CAPSULE; ++out_dim)
            {
                fixed_t sum = (fixed_t)0;

            APPLY_WEIGHTS_IN_DIM_LOOP:
                for (uint32_t in_dim = 0; in_dim < DIGIT_CAPS_INPUT_DIM_CAPSULE; ++in_dim)
                {
				#pragma HLS UNROLL
                    const uint32_t weight_buffer_index =
                        out_dim * DIGIT_CAPS_INPUT_DIM_CAPSULE + in_dim;

                    const uint32_t input_index =
                        in_cap * DIGIT_CAPS_INPUT_DIM_CAPSULE + in_dim;

                    const fixed_t product =
                        weight_buffer[weight_buffer_index] * input_mat[input_index];

                    sum = sum + product;
                }

                const uint32_t output_index =
                    digit * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE +
                    in_cap * DIGIT_CAPS_DIM_CAPSULE +
                    out_dim;

                // Assignment, not +=. This must overwrite prior data.
                weighted_input[output_index] = sum;
            }
        }
    }
}

static void softmax(
    fixed_t *mat_b,
    fixed_t *mat_c
)
{
SOFTMAX_INPUT_CAP_LOOP:
    for (uint32_t in_cap = 0; in_cap < DIGIT_CAPS_INPUT_CAPSULES; ++in_cap)
    {
        // Numerically safer softmax: subtract max before exp.
        fixed_t max_b = mat_b[in_cap];

    SOFTMAX_MAX_LOOP:
        for (uint32_t digit = 1; digit < DIGIT_CAPS_NUM_DIGITS; ++digit)
        {
            const fixed_t candidate =
                mat_b[digit * DIGIT_CAPS_INPUT_CAPSULES + in_cap];

            if (candidate > max_b)
            {
                max_b = candidate;
            }
        }

        fixed_t denom = (fixed_t)0;

    SOFTMAX_EXP_LOOP:
        for (uint32_t digit = 0; digit < DIGIT_CAPS_NUM_DIGITS; ++digit)
        {
            const uint32_t idx =
                digit * DIGIT_CAPS_INPUT_CAPSULES + in_cap;

            const fixed_t shifted = mat_b[idx] - max_b;
            const fixed_t entry = fixed_exp(shifted);

            // Temporary numerator storage. Fully overwritten every call.
            mat_c[idx] = entry;
            denom = denom + entry;
        }

        const fixed_t safe_denom = denom + (fixed_t)1e-7;

    SOFTMAX_DIV_LOOP:
        for (uint32_t digit = 0; digit < DIGIT_CAPS_NUM_DIGITS; ++digit)
        {
            const uint32_t idx =
                digit * DIGIT_CAPS_INPUT_CAPSULES + in_cap;

            mat_c[idx] = mat_c[idx] / safe_denom;
        }
    }
}

static void sum_of_products(
    fixed_t *input_mat,
    fixed_t *coupling_terms,
    fixed_t *output_mat
)
{
SUM_PRODUCTS_DIGIT_LOOP:
    for (uint32_t digit = 0; digit < DIGIT_CAPS_NUM_DIGITS; ++digit)
    {
    SUM_PRODUCTS_DIM_LOOP:
        for (uint32_t dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim)
        {
            fixed_t sum = (fixed_t)0;

        SUM_PRODUCTS_INPUT_CAP_LOOP:
            for (uint32_t in_cap = 0; in_cap < DIGIT_CAPS_INPUT_CAPSULES; ++in_cap)
            {
			#pragma HLS PIPELINE II=1
                const uint32_t input_index =
                    digit * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE +
                    in_cap * DIGIT_CAPS_DIM_CAPSULE +
                    dim;

                const uint32_t coupling_index =
                    digit * DIGIT_CAPS_INPUT_CAPSULES + in_cap;

                sum = sum + input_mat[input_index] * coupling_terms[coupling_index];
            }

            const uint32_t output_index =
                digit * DIGIT_CAPS_DIM_CAPSULE + dim;

            // Assignment, not +=. output_mat was cleared before this call.
            output_mat[output_index] = sum;
        }
    }
}

static void squash(
    fixed_t *input_mat,
    fixed_t *squash_mat
)
{
SQUASH_DIGIT_LOOP:
    for (uint32_t digit = 0; digit < DIGIT_CAPS_NUM_DIGITS; ++digit)
    {
        fixed_t squared_norm = (fixed_t)0;

    SQUASH_NORM_LOOP:
        for (uint32_t dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim)
        {
            const fixed_t v = input_mat[digit * DIGIT_CAPS_DIM_CAPSULE + dim];
            squared_norm = squared_norm + v * v;
        }

        const fixed_t scale =
            squared_norm /
            ((fixed_t)1.0 + squared_norm) /
            fixed_sqrt(squared_norm + (fixed_t)1e-7);

    SQUASH_WRITE_LOOP:
        for (uint32_t dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim)
        {
            const uint32_t idx = digit * DIGIT_CAPS_DIM_CAPSULE + dim;
            squash_mat[idx] = input_mat[idx] * scale;
        }
    }
}

static void agreement(
    fixed_t *input_mat,
    fixed_t *squashed_mat,
    fixed_t *output_mat
)
{
AGREEMENT_DIGIT_LOOP:
    for (uint32_t digit = 0; digit < DIGIT_CAPS_NUM_DIGITS; ++digit)
    {
    AGREEMENT_INPUT_CAP_LOOP:
        for (uint32_t in_cap = 0; in_cap < DIGIT_CAPS_INPUT_CAPSULES; ++in_cap)
        {
            fixed_t sum = (fixed_t)0;

        AGREEMENT_DIM_LOOP:
            for (uint32_t dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim)
            {
                const uint32_t input_index =
                    digit * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE +
                    in_cap * DIGIT_CAPS_DIM_CAPSULE +
                    dim;

                const uint32_t squashed_index =
                    digit * DIGIT_CAPS_DIM_CAPSULE + dim;

                sum = sum + input_mat[input_index] * squashed_mat[squashed_index];
            }

            const uint32_t output_index =
                digit * DIGIT_CAPS_INPUT_CAPSULES + in_cap;

            // Assignment, not +=. output_mat was cleared before this call.
            output_mat[output_index] = sum;
        }
    }
}

static void add(
    fixed_t *input_mat,
    fixed_t *coupling_terms
)
{
ADD_ROUTING_LOGITS_LOOP:
    for (uint32_t i = 0; i < ROUTING_COEFF_COUNT; ++i)
    {
#pragma HLS PIPELINE II=2
        // Intentional per-inference routing update:
        // b_ij <- b_ij + agreement_ij
        // This does not accumulate across images because coupling_terms was
        // explicitly cleared at kernel entry.
        coupling_terms[i] = coupling_terms[i] + input_mat[i];
    }
}

static void store_prediction(
    const fixed_t *squashed_v,
    fixed_t *prediction
)
{
STORE_PREDICTION_LOOP:
    for (uint32_t i = 0; i < DIGIT_OUTPUT_COUNT; ++i)
    {
#pragma HLS PIPELINE II=1
        prediction[i] = squashed_v[i];
    }
}

// -----------------------------------------------------------------------------
// Top-level HLS kernel
// -----------------------------------------------------------------------------
extern "C" {
void digitcaps_accel(
    fixed_t *input,
    fixed_t *weights,
    fixed_t *prediction,
    int reset
)
{
#pragma HLS INTERFACE mode=m_axi port=input      offset=slave bundle=gmem0 max_read_burst_length=8 max_write_burst_length=8 depth=9216
#pragma HLS INTERFACE mode=m_axi port=weights    offset=slave bundle=gmem1 max_read_burst_length=8 max_write_burst_length=8 depth=1474560
#pragma HLS INTERFACE mode=m_axi port=prediction offset=slave bundle=gmem2 max_read_burst_length=8 max_write_burst_length=8 depth=160

#pragma HLS INTERFACE mode=s_axilite port=input      bundle=control
#pragma HLS INTERFACE mode=s_axilite port=weights    bundle=control
#pragma HLS INTERFACE mode=s_axilite port=prediction bundle=control
#pragma HLS INTERFACE mode=s_axilite port=reset      bundle=control
#pragma HLS INTERFACE mode=s_axilite port=return     bundle=control

    // HLS/platform reset path:
    //   The generated IP has hardware reset, usually active-low ap_rst_n.
    //   The static buffers in dynamic_routing() are marked with #pragma HLS
    //   reset, so they respond to that hardware reset.
    //
    // Software-visible reset path:
    //   reset != 0 clears internal buffers and output prediction, then returns.
    //
    // Normal inference path:
    //   reset == 0 clears everything first, computes, writes prediction, then
    //   scrubs internal buffers.
    dynamic_routing(input, weights, prediction, reset);
}
}