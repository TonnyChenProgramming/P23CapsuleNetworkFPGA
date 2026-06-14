/*
 * DigitCaps.cpp
 * author: nicholas wolf
 *
 * Performs dynamic routing
 */

#include "DigitCaps.h"

#include <cmath>

#include <cstdint>
#include <cstring>
#include <iostream>
#include <algorithm>

// ---------------- FUNCTION DECLARATIONS ----------------
static void apply_weights(float *input_mat, float *weights, float *weighted_input);
static void softmax(float *mat_b, float *mat_c);
static void sum_of_products(float *input_mat, float *coupling_terms, float *output_mat);
static void squash(float *input_mat, float *squash_mat);
static void agreement(float *input_mat, float *squashed_mat, float *output_mat);
static void add(float *input_mat, float *coupling_terms);
// ---------------- FUNCTION DECLARATIONS ----------------
static void debug_float_buffer_digitcaps(const char* name, const float* data, int size, int print_count = 16)
{
    std::cout << "===== DIGITCAPS DEBUG FLOAT BUFFER: " << name << " =====" << std::endl;
    std::cout << "size = " << size << std::endl;
    std::cout << "address = " << static_cast<const void*>(data) << std::endl;

    if (data == nullptr) {
        std::cout << "ERROR: null pointer" << std::endl;
        std::cout << "===== END DIGITCAPS DEBUG FLOAT BUFFER =====" << std::endl;
        return;
    }

    if (size <= 0) {
        std::cout << "ERROR: invalid size <= 0" << std::endl;
        std::cout << "===== END DIGITCAPS DEBUG FLOAT BUFFER =====" << std::endl;
        return;
    }

    int finite_count = 0;
    int nan_count = 0;
    int inf_count = 0;
    int zero_count = 0;

    float min_val = 0.0f;
    float max_val = 0.0f;
    bool first_finite = true;

    for (int i = 0; i < size; ++i) {
        float v = data[i];

        if (std::isnan(v)) {
            nan_count++;
            continue;
        }

        if (std::isinf(v)) {
            inf_count++;
            continue;
        }

        if (v == 0.0f) {
            zero_count++;
        }

        if (first_finite) {
            min_val = v;
            max_val = v;
            first_finite = false;
        } else {
            if (v < min_val) min_val = v;
            if (v > max_val) max_val = v;
        }

        finite_count++;
    }

    std::cout << "finite_count = " << finite_count << std::endl;
    std::cout << "nan_count = " << nan_count << std::endl;
    std::cout << "inf_count = " << inf_count << std::endl;
    std::cout << "zero_count = " << zero_count << std::endl;

    if (finite_count > 0) {
        std::cout << "min = " << min_val << std::endl;
        std::cout << "max = " << max_val << std::endl;
    }

    std::cout << "first " << std::min(print_count, size) << " values:" << std::endl;
    for (int i = 0; i < std::min(print_count, size); ++i) {
        std::cout << name << "[" << i << "] = " << data[i] << std::endl;
    }

    std::cout << "===== END DIGITCAPS DEBUG FLOAT BUFFER: " << name << " =====" << std::endl;
}

void dynamic_routing(float *input, float *weights, float *prediction)
{
    std::cout << "===== ENTER dynamic_routing() =====" << std::endl;

    float *primary_caps = (float *)malloc(DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE * sizeof(float));
    float *squashed_v = (float *)malloc(DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE * sizeof(float));

    memcpy(primary_caps, (const float *)input,
           DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE * sizeof(float));

    debug_float_buffer_digitcaps("primary_caps after memcpy",
                                 primary_caps,
                                 DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE,
                                 32);

    debug_float_buffer_digitcaps("weights first 128 inside dynamic_routing",
                                 weights,
                                 128,
                                 32);

    float *weighted_input_u = (float *)malloc(DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE * sizeof(float));
    float *coupling_b = (float *)malloc(DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * sizeof(float));
    float *coupling_c = (float *)malloc(DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * sizeof(float));
    float *sum_of_products_s = (float *)malloc(DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE * sizeof(float));
    float *output_agreement = (float *)malloc(DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * sizeof(float));

    std::memset(weighted_input_u, 0,
                DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE * sizeof(float));

    std::memset(coupling_b, 0,
                DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * sizeof(float));

    std::memset(coupling_c, 0,
                DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * sizeof(float));

    std::memset(sum_of_products_s, 0,
                DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE * sizeof(float));

    std::memset(output_agreement, 0,
                DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * sizeof(float));

    std::memset(squashed_v, 0,
                DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE * sizeof(float));

    debug_float_buffer_digitcaps("coupling_b after memset zero",
                                 coupling_b,
                                 DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES,
                                 32);

    std::cout << "before apply_weights" << std::endl;

    apply_weights(primary_caps, weights, weighted_input_u);

    std::cout << "after apply_weights" << std::endl;

    debug_float_buffer_digitcaps("weighted_input_u after apply_weights",
                                 weighted_input_u,
                                 DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE,
                                 32);

    for (uint32_t i = 0; i < DIGIT_CAPS_ROUTING_ITERATIONS; ++i)
    {
        std::cout << "===== ROUTING ITERATION " << i << " =====" << std::endl;

        debug_float_buffer_digitcaps("coupling_b before softmax",
                                     coupling_b,
                                     DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES,
                                     32);

        softmax(coupling_b, coupling_c);

        debug_float_buffer_digitcaps("coupling_c after softmax",
                                     coupling_c,
                                     DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES,
                                     32);

        sum_of_products(weighted_input_u, coupling_c, sum_of_products_s);

        debug_float_buffer_digitcaps("sum_of_products_s after sum_of_products",
                                     sum_of_products_s,
                                     DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE,
                                     32);

        squash(sum_of_products_s, squashed_v);

        debug_float_buffer_digitcaps("squashed_v after digitcaps squash",
                                     squashed_v,
                                     DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE,
                                     32);

        if (i < DIGIT_CAPS_ROUTING_ITERATIONS - 1)
        {
            agreement(weighted_input_u, squashed_v, output_agreement);

            debug_float_buffer_digitcaps("output_agreement after agreement",
                                         output_agreement,
                                         DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES,
                                         32);

            add(output_agreement, coupling_b);

            debug_float_buffer_digitcaps("coupling_b after add agreement",
                                         coupling_b,
                                         DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES,
                                         32);
        }

        std::cout << "===== END ROUTING ITERATION " << i << " =====" << std::endl;
    }

    memcpy(prediction, (const float *)squashed_v,
           DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE * sizeof(float));

    debug_float_buffer_digitcaps("prediction after memcpy from squashed_v",
                                 prediction,
                                 DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE,
                                 32);

    free(primary_caps);
    free(output_agreement);
    free(squashed_v);
    free(coupling_b);
    free(coupling_c);
    free(weighted_input_u);
    free(sum_of_products_s);

    std::cout << "===== EXIT dynamic_routing() =====" << std::endl;
}

static void apply_weights(float *input_mat, float *weights, float *weighted_input)
{
	uint32_t iterator_a = 0;
	uint32_t iterator_b = 0;

	uint32_t weights_per_class = DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE;
	uint32_t num_outputs = DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE;

	for (uint32_t i = 0; i < DIGIT_CAPS_NUM_DIGITS; i++)
	{
		for (uint32_t j = 0; j < DIGIT_CAPS_INPUT_CAPSULES; j++)
		{
			// burst read weight array in small chunks
			float weight_buffer[DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE];

			memcpy(weight_buffer, (const float *)weights + weights_per_class * i + num_outputs * j, DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_DIM_CAPSULE * sizeof(float));

			iterator_a = DIGIT_CAPS_INPUT_DIM_CAPSULE * j;
			iterator_b = DIGIT_CAPS_DIM_CAPSULE * DIGIT_CAPS_INPUT_CAPSULES * i + DIGIT_CAPS_DIM_CAPSULE * j;

			for (uint32_t k = 0; k < DIGIT_CAPS_DIM_CAPSULE; ++k)
			{
				// dot product between rows of matA and cols of matB

				float product = 0.0;
				float sum = 0.0;

				uint32_t capsule_index = DIGIT_CAPS_INPUT_DIM_CAPSULE * k;

			dot_product:
				for (uint32_t l = 0; l < DIGIT_CAPS_INPUT_DIM_CAPSULE; ++l)
				{
					product = weight_buffer[capsule_index + l] * input_mat[iterator_a + l];

					sum += product;
				}

				weighted_input[iterator_b + k] = sum;
			}
		}
	}
}

static void softmax(float *mat_b, float *mat_c)
{
	// For all input capsules i in layer l
	for (uint32_t i = 0; i < DIGIT_CAPS_INPUT_CAPSULES; ++i)
	{
		// Compute the exponential sum of log prior probability logits
		// $sum_{k}^{DIGITS} exp(b(i,k))
		float sum = 0.0;
		// For all possible routings
		for (uint32_t j = 0; j < DIGIT_CAPS_NUM_DIGITS; ++j)
		{
			float entry = exp(mat_b[i + j * DIGIT_CAPS_INPUT_CAPSULES]);
			// c (i,j) = sum(exp(probability that capsule goes to each digit))
			// Store the numerator temporarily
			mat_c[i + j * DIGIT_CAPS_INPUT_CAPSULES] = entry;
			// Calculate the denominator
			sum += entry;
		}

		for (uint32_t j = 0; j < DIGIT_CAPS_NUM_DIGITS; ++j)
		{
			// Divide the numerator by the denominator
			mat_c[i + j * DIGIT_CAPS_INPUT_CAPSULES] /= (sum + 1e-7);
		}
	}
}

static void sum_of_products(float *input_mat, float *coupling_terms, float *output_mat)
{
	// For all capsules j in layer (l + 1)
	for (uint32_t sum_i = 0; sum_i < DIGIT_CAPS_NUM_DIGITS; ++sum_i)
	{
		// For each output dimension in the capsule
		for (uint32_t sum_j = 0; sum_j < DIGIT_CAPS_DIM_CAPSULE; ++sum_j)
		{
			float sum = 0.0;  // Accumulate the sum

			// For all capsules i in layer l
			for (uint32_t sum_k = 0; sum_k < DIGIT_CAPS_INPUT_CAPSULES; ++sum_k)
			{
				// Index into input_mat
				uint32_t lin_index = (sum_i * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE) + (sum_k * DIGIT_CAPS_DIM_CAPSULE) + sum_j;

				// Multiply the input by the coupling term and accumulate
				sum += input_mat[lin_index] * coupling_terms[sum_i * DIGIT_CAPS_INPUT_CAPSULES + sum_k];
			}

			// Store the accumulated sum in output_mat
			output_mat[sum_i * DIGIT_CAPS_DIM_CAPSULE + sum_j] = sum;
		}
	}
}

static void squash(float *input_mat, float *squash_mat)
{
	float squared_norm = 0.0;
	float scale = 0.0;

	// For all capsule j in layer l + 1
	for (uint32_t i = 0; i < DIGIT_CAPS_NUM_DIGITS; ++i)
	{
		squared_norm = 0.0;
		// For each corresponding output dimension
		for (uint32_t dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim)
		{
			squared_norm += input_mat[i * DIGIT_CAPS_DIM_CAPSULE + dim] * input_mat[i * DIGIT_CAPS_DIM_CAPSULE + dim];
		}

		scale = squared_norm / (1.0 + squared_norm) / sqrt(squared_norm + 1e-7);

		for (uint32_t dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim)
		{
			squash_mat[i * DIGIT_CAPS_DIM_CAPSULE + dim] = (input_mat[i * DIGIT_CAPS_DIM_CAPSULE + dim] * scale);
		}
	}
}

static void agreement(float *input_mat, float *squashed_mat, float *output_mat)
{
	for (int i = 0; i < DIGIT_CAPS_NUM_DIGITS; ++i)
	{
		for (int j = 0; j < DIGIT_CAPS_INPUT_CAPSULES; ++j)
		{
			float sum = 0.0;
			for (int k = 0; k < DIGIT_CAPS_DIM_CAPSULE; ++k)
			{
				sum += input_mat[i * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_DIM_CAPSULE + j * DIGIT_CAPS_DIM_CAPSULE + k] * squashed_mat[i * DIGIT_CAPS_DIM_CAPSULE + k];
			}
			output_mat[i * DIGIT_CAPS_INPUT_CAPSULES + j] = sum;
		}
	}
}

static void add(float *input_mat, float *coupling_terms)
{
	for (int i = 0; i < DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_INPUT_CAPSULES; ++i)
	{
		// Update coupling terms
		coupling_terms[i] += input_mat[i];
	}
}