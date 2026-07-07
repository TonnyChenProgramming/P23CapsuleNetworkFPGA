#include <ap_fixed.h>
#include <hls_math.h>
#include <stdint.h>

/*
 * Reconstructed full-scale DigitCaps HLS kernel for ZCU102 deployment.
 *
 * External tensor layout:
 *
 *   input:
 *     [NUM_PRIMARY_CAPS][PRIMARY_DIM]
 *
 *   weights:
 *     [NUM_DIGITS][NUM_PRIMARY_CAPS][DIGIT_DIM][PRIMARY_DIM]
 *
 *   prediction:
 *     [NUM_DIGITS][DIGIT_DIM]
 *
 * Flattened weight index:
 *
 *   (((digit * NUM_PRIMARY_CAPS + primary) * DIGIT_DIM + digit_dim)
 *      * PRIMARY_DIM + primary_dim)
 *
 * This matches the transposed weight file used by the board deployment flow:
 *   [10][1152][16][8]
 */

typedef ap_fixed<32, 16, AP_RND, AP_SAT> data_t;
typedef ap_fixed<48, 24, AP_RND, AP_SAT> accum_t;

static const int NUM_PRIMARY_CAPS = 1152;
static const int PRIMARY_DIM      = 8;
static const int NUM_DIGITS       = 10;
static const int DIGIT_DIM        = 16;
static const int ROUTING_ITERS    = 3;

static const int INPUT_SIZE       = NUM_PRIMARY_CAPS * PRIMARY_DIM;
static const int WEIGHT_SIZE      =
    NUM_DIGITS * NUM_PRIMARY_CAPS * DIGIT_DIM * PRIMARY_DIM;
static const int OUTPUT_SIZE      = NUM_DIGITS * DIGIT_DIM;

static const int PRIMARY_TILE     = 16;
static const data_t SQUASH_EPS    = data_t(0.000001);

/* ------------------------------------------------------------------------- */
/* Utility indexing                                                          */
/* ------------------------------------------------------------------------- */

static inline int input_index(
    int primary,
    int primary_dim)
{
#pragma HLS INLINE
    return primary * PRIMARY_DIM + primary_dim;
}

static inline int weight_index(
    int digit,
    int primary,
    int digit_dim,
    int primary_dim)
{
#pragma HLS INLINE
    return (((digit * NUM_PRIMARY_CAPS + primary) * DIGIT_DIM + digit_dim)
             * PRIMARY_DIM + primary_dim);
}

static inline int uhat_index(
    int primary,
    int digit,
    int digit_dim)
{
#pragma HLS INLINE
    return (primary * NUM_DIGITS + digit) * DIGIT_DIM + digit_dim;
}

static inline int digit_vector_index(
    int digit,
    int digit_dim)
{
#pragma HLS INLINE
    return digit * DIGIT_DIM + digit_dim;
}

/* ------------------------------------------------------------------------- */
/* Initialisation                                                             */
/* ------------------------------------------------------------------------- */

static void clear_logits(data_t logits[NUM_PRIMARY_CAPS][NUM_DIGITS])
{
clear_logits_primary:
    for (int primary = 0; primary < NUM_PRIMARY_CAPS; ++primary) {
    clear_logits_digit:
        for (int digit = 0; digit < NUM_DIGITS; ++digit) {
#pragma HLS PIPELINE II=1
            logits[primary][digit] = data_t(0);
        }
    }
}

static void clear_output(data_t prediction[OUTPUT_SIZE])
{
clear_output_loop:
    for (int i = 0; i < OUTPUT_SIZE; ++i) {
#pragma HLS PIPELINE II=1
        prediction[i] = data_t(0);
    }
}

/* ------------------------------------------------------------------------- */
/* Weight application                                                        */
/* ------------------------------------------------------------------------- */

static void apply_weights_tiled(
    const data_t input[INPUT_SIZE],
    const data_t weights[WEIGHT_SIZE],
    data_t weighted_input[NUM_PRIMARY_CAPS * NUM_DIGITS * DIGIT_DIM])
{
    data_t input_tile[PRIMARY_TILE][PRIMARY_DIM];

#pragma HLS ARRAY_PARTITION variable=input_tile complete dim=2
#pragma HLS BIND_STORAGE variable=input_tile type=ram_2p impl=bram

primary_tile_loop:
    for (int tile_base = 0;
         tile_base < NUM_PRIMARY_CAPS;
         tile_base += PRIMARY_TILE) {

    load_input_tile:
        for (int tile_primary = 0;
             tile_primary < PRIMARY_TILE;
             ++tile_primary) {

            const int primary = tile_base + tile_primary;

        load_input_dim:
            for (int primary_dim = 0;
                 primary_dim < PRIMARY_DIM;
                 ++primary_dim) {
#pragma HLS PIPELINE II=1
                if (primary < NUM_PRIMARY_CAPS) {
                    input_tile[tile_primary][primary_dim] =
                        input[input_index(primary, primary_dim)];
                } else {
                    input_tile[tile_primary][primary_dim] = data_t(0);
                }
            }
        }

    compute_tile:
        for (int tile_primary = 0;
             tile_primary < PRIMARY_TILE;
             ++tile_primary) {

            const int primary = tile_base + tile_primary;

            if (primary < NUM_PRIMARY_CAPS) {

            compute_digit:
                for (int digit = 0; digit < NUM_DIGITS; ++digit) {

                compute_digit_dim:
                    for (int digit_dim = 0;
                         digit_dim < DIGIT_DIM;
                         ++digit_dim) {

                        accum_t sum = 0;

                    compute_primary_dim:
                        for (int primary_dim = 0;
                             primary_dim < PRIMARY_DIM;
                             ++primary_dim) {
#pragma HLS PIPELINE II=1
                            const data_t x =
                                input_tile[tile_primary][primary_dim];

                            const data_t w =
                                weights[weight_index(
                                    digit,
                                    primary,
                                    digit_dim,
                                    primary_dim)];

                            sum += accum_t(x) * accum_t(w);
                        }

                        weighted_input[
                            uhat_index(primary, digit, digit_dim)] =
                                data_t(sum);
                    }
                }
            }
        }
    }
}

/* ------------------------------------------------------------------------- */
/* Stable routing softmax                                                     */
/* ------------------------------------------------------------------------- */

static void routing_softmax(
    const data_t logits[NUM_PRIMARY_CAPS][NUM_DIGITS],
    data_t coupling[NUM_PRIMARY_CAPS][NUM_DIGITS])
{
softmax_primary:
    for (int primary = 0; primary < NUM_PRIMARY_CAPS; ++primary) {

        data_t max_logit = logits[primary][0];

    find_max:
        for (int digit = 1; digit < NUM_DIGITS; ++digit) {
#pragma HLS PIPELINE II=1
            if (logits[primary][digit] > max_logit) {
                max_logit = logits[primary][digit];
            }
        }

        accum_t exp_sum = 0;

    compute_exp:
        for (int digit = 0; digit < NUM_DIGITS; ++digit) {
#pragma HLS PIPELINE II=1
            const data_t shifted = logits[primary][digit] - max_logit;
            const data_t exp_value = data_t(hls::exp(float(shifted)));

            coupling[primary][digit] = exp_value;
            exp_sum += accum_t(exp_value);
        }

        const data_t denominator =
            (exp_sum > accum_t(SQUASH_EPS))
                ? data_t(exp_sum)
                : SQUASH_EPS;

    normalise:
        for (int digit = 0; digit < NUM_DIGITS; ++digit) {
#pragma HLS PIPELINE II=1
            coupling[primary][digit] =
                coupling[primary][digit] / denominator;
        }
    }
}

/* ------------------------------------------------------------------------- */
/* Weighted routing sum                                                       */
/* ------------------------------------------------------------------------- */

static void compute_weighted_sum(
    const data_t weighted_input[
        NUM_PRIMARY_CAPS * NUM_DIGITS * DIGIT_DIM],
    const data_t coupling[NUM_PRIMARY_CAPS][NUM_DIGITS],
    data_t routing_sum[NUM_DIGITS][DIGIT_DIM])
{
initialise_sum_digit:
    for (int digit = 0; digit < NUM_DIGITS; ++digit) {
    initialise_sum_dim:
        for (int digit_dim = 0; digit_dim < DIGIT_DIM; ++digit_dim) {
#pragma HLS PIPELINE II=1
            routing_sum[digit][digit_dim] = data_t(0);
        }
    }

sum_digit:
    for (int digit = 0; digit < NUM_DIGITS; ++digit) {

    sum_digit_dim:
        for (int digit_dim = 0; digit_dim < DIGIT_DIM; ++digit_dim) {

            accum_t sum = 0;

        sum_primary:
            for (int primary = 0;
                 primary < NUM_PRIMARY_CAPS;
                 ++primary) {
#pragma HLS PIPELINE II=1
                sum +=
                    accum_t(coupling[primary][digit]) *
                    accum_t(weighted_input[
                        uhat_index(primary, digit, digit_dim)]);
            }

            routing_sum[digit][digit_dim] = data_t(sum);
        }
    }
}

/* ------------------------------------------------------------------------- */
/* Capsule squash                                                            */
/* ------------------------------------------------------------------------- */

static void squash_capsules(
    const data_t routing_sum[NUM_DIGITS][DIGIT_DIM],
    data_t squashed[NUM_DIGITS][DIGIT_DIM])
{
squash_digit:
    for (int digit = 0; digit < NUM_DIGITS; ++digit) {

        accum_t norm_sq = 0;

    squash_norm:
        for (int digit_dim = 0;
             digit_dim < DIGIT_DIM;
             ++digit_dim) {
#pragma HLS PIPELINE II=1
            const accum_t value = routing_sum[digit][digit_dim];
            norm_sq += value * value;
        }

        const data_t norm_sq_fixed = data_t(norm_sq);
        const data_t norm =
            data_t(hls::sqrt(float(norm_sq_fixed + SQUASH_EPS)));

        const data_t scale =
            norm_sq_fixed /
            ((data_t(1) + norm_sq_fixed) * norm);

    squash_scale:
        for (int digit_dim = 0;
             digit_dim < DIGIT_DIM;
             ++digit_dim) {
#pragma HLS PIPELINE II=1
            squashed[digit][digit_dim] =
                routing_sum[digit][digit_dim] * scale;
        }
    }
}

/* ------------------------------------------------------------------------- */
/* Routing agreement update                                                   */
/* ------------------------------------------------------------------------- */

static void update_logits(
    const data_t weighted_input[
        NUM_PRIMARY_CAPS * NUM_DIGITS * DIGIT_DIM],
    const data_t squashed[NUM_DIGITS][DIGIT_DIM],
    data_t logits[NUM_PRIMARY_CAPS][NUM_DIGITS])
{
agreement_primary:
    for (int primary = 0; primary < NUM_PRIMARY_CAPS; ++primary) {

    agreement_digit:
        for (int digit = 0; digit < NUM_DIGITS; ++digit) {

            accum_t agreement = 0;

        agreement_dim:
            for (int digit_dim = 0;
                 digit_dim < DIGIT_DIM;
                 ++digit_dim) {
#pragma HLS PIPELINE II=1
                agreement +=
                    accum_t(weighted_input[
                        uhat_index(primary, digit, digit_dim)]) *
                    accum_t(squashed[digit][digit_dim]);
            }

            logits[primary][digit] += data_t(agreement);
        }
    }
}

/* ------------------------------------------------------------------------- */
/* Output                                                                     */
/* ------------------------------------------------------------------------- */

static void write_prediction(
    const data_t squashed[NUM_DIGITS][DIGIT_DIM],
    data_t prediction[OUTPUT_SIZE])
{
write_digit:
    for (int digit = 0; digit < NUM_DIGITS; ++digit) {
    write_dim:
        for (int digit_dim = 0;
             digit_dim < DIGIT_DIM;
             ++digit_dim) {
#pragma HLS PIPELINE II=1
            prediction[digit_vector_index(digit, digit_dim)] =
                squashed[digit][digit_dim];
        }
    }
}

/* ------------------------------------------------------------------------- */
/* Top-level kernel                                                           */
/* ------------------------------------------------------------------------- */

extern "C" void digitcaps_accel(
    const data_t *input,
    const data_t *weights,
    data_t *prediction)
{
#pragma HLS INTERFACE m_axi \
    port=input \
    offset=slave \
    bundle=gmem0 \
    depth=9216 \
    max_read_burst_length=64 \
    num_read_outstanding=16

#pragma HLS INTERFACE m_axi \
    port=weights \
    offset=slave \
    bundle=gmem1 \
    depth=1474560 \
    max_read_burst_length=64 \
    num_read_outstanding=16

#pragma HLS INTERFACE m_axi \
    port=prediction \
    offset=slave \
    bundle=gmem2 \
    depth=160 \
    max_write_burst_length=64 \
    num_write_outstanding=16

#pragma HLS INTERFACE s_axilite port=input      bundle=control
#pragma HLS INTERFACE s_axilite port=weights    bundle=control
#pragma HLS INTERFACE s_axilite port=prediction bundle=control
#pragma HLS INTERFACE s_axilite port=return     bundle=control

    static data_t weighted_input[
        NUM_PRIMARY_CAPS * NUM_DIGITS * DIGIT_DIM];

    static data_t logits[NUM_PRIMARY_CAPS][NUM_DIGITS];
    static data_t coupling[NUM_PRIMARY_CAPS][NUM_DIGITS];
    static data_t routing_sum[NUM_DIGITS][DIGIT_DIM];
    static data_t squashed[NUM_DIGITS][DIGIT_DIM];

#pragma HLS BIND_STORAGE variable=weighted_input type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=logits         type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=coupling       type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=routing_sum    type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=squashed       type=ram_2p impl=bram

#pragma HLS ARRAY_PARTITION variable=routing_sum cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=squashed    cyclic factor=4 dim=2

    clear_output(prediction);
    clear_logits(logits);

    apply_weights_tiled(input, weights, weighted_input);

routing_iterations:
    for (int iteration = 0; iteration < ROUTING_ITERS; ++iteration) {

        routing_softmax(logits, coupling);

        compute_weighted_sum(
            weighted_input,
            coupling,
            routing_sum);

        squash_capsules(
            routing_sum,
            squashed);

        if (iteration != ROUTING_ITERS - 1) {
            update_logits(
                weighted_input,
                squashed,
                logits);
        }
    }

    write_prediction(squashed, prediction);
}
