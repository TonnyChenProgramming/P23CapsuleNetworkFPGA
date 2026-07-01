/*
 * Standalone hardware testbench for DigitCaps accelerator.
 *
 * Usage:
 *   ./DigitCapsHwTestbench.exe weights/new_digitcaps_weights.txt \
 *       dump_capsnet_hw/img0/03_digitcaps_input_current_primcaps.txt \
 *       10
 */

#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

#include "constants.h"
#include "common.h"
#include "accel_wrapper.hpp"

static void read_float_file(const std::string& path, float* output, int count)
{
    std::ifstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to open " << path << std::endl;
        std::exit(1);
    }

    for (int i = 0; i < count; ++i) {
        if (!(file >> output[i])) {
            std::cerr << "[ERROR] Failed to read value " << i
                      << " from " << path << std::endl;
            std::exit(1);
        }
    }

    std::cout << "[INFO] Read " << count << " values from " << path << std::endl;
}

static void read_weights_file(const std::string& path, std::vector<float>& weights)
{
    const int expected_weights =
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE *
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    weights.clear();
    weights.reserve(expected_weights);

    std::ifstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to open weights file: " << path << std::endl;
        std::exit(1);
    }

    float value = 0.0f;

    while (file >> value) {
        weights.push_back(value);
    }

    if (static_cast<int>(weights.size()) != expected_weights) {
        std::cerr << "[ERROR] Weight count mismatch. Expected "
                  << expected_weights << ", got " << weights.size()
                  << std::endl;
        std::exit(1);
    }

    std::cout << "[INFO] Read " << weights.size()
              << " weights from " << path << std::endl;
}

static float digit_length(const float* prediction, int digit)
{
    float sum_sq = 0.0f;

    for (int dim = 0; dim < DIGIT_CAPS_DIM_CAPSULE; ++dim) {
        const float v = prediction[digit * DIGIT_CAPS_DIM_CAPSULE + dim];
        sum_sq += v * v;
    }

    return std::sqrt(sum_sq);
}

static int argmax_digit(const float* prediction, float* best_length_out)
{
    int best_digit = 0;
    float best_length = digit_length(prediction, 0);

    for (int digit = 1; digit < DIGIT_CAPS_NUM_DIGITS; ++digit) {
        const float length = digit_length(prediction, digit);

        if (length > best_length) {
            best_length = length;
            best_digit = digit;
        }
    }

    if (best_length_out != nullptr) {
        *best_length_out = best_length;
    }

    return best_digit;
}

static bool same_prediction(const float* a,
                            const float* b,
                            int count,
                            float tolerance)
{
    for (int i = 0; i < count; ++i) {
        if (std::fabs(a[i] - b[i]) > tolerance) {
            return false;
        }
    }

    return true;
}

int main(int argc, char* argv[])
{
    if (argc < 3) {
        std::cerr << "Usage: " << argv[0]
                  << " <weights.txt> <digitcaps_input.txt> [iterations]"
                  << std::endl;
        return 1;
    }

    const std::string weight_path = argv[1];
    const std::string input_path = argv[2];
    const int iterations = (argc >= 4) ? std::atoi(argv[3]) : 10;

    if (iterations <= 0) {
        std::cerr << "[ERROR] iterations must be positive" << std::endl;
        return 1;
    }

    const int input_count =
        DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE;

    const int prediction_count =
        DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE;

    std::vector<float> weights;
    read_weights_file(weight_path, weights);

    std::vector<float> digitcaps_input(input_count);
    read_float_file(input_path, digitcaps_input.data(), input_count);

    DigitcapsAcceleratorType* accelerator =
        init_digitcaps_accelerator(weights.data());

    if (accelerator == nullptr) {
        std::cerr << "[ERROR] init_digitcaps_accelerator returned null"
                  << std::endl;
        return 1;
    }

    std::vector<float> first_prediction(prediction_count, 0.0f);
    bool have_first_prediction = false;
    bool all_same = true;

    for (int iter = 0; iter < iterations; ++iter) {
        const int status = run_digitcaps_accelerator(
            accelerator,
            digitcaps_input.data()
        );

        if (status != 0) {
            std::cerr << "[ERROR] run_digitcaps_accelerator failed at iteration "
                      << iter << " with status " << status << std::endl;
            return 1;
        }

        const float* prediction =
            static_cast<const float*>(accelerator->prediction_m);

        float best_length = 0.0f;
        const int best_digit = argmax_digit(prediction, &best_length);
        const float class7_length = digit_length(prediction, 7);

        if (!have_first_prediction) {
            for (int i = 0; i < prediction_count; ++i) {
                first_prediction[i] = prediction[i];
            }
            have_first_prediction = true;
        } else {
            if (!same_prediction(
                    first_prediction.data(),
                    prediction,
                    prediction_count,
                    1e-6f
                )) {
                all_same = false;
            }
        }

        std::cout << "iter " << iter
                  << " -> digit " << best_digit
                  << ", best_length " << best_length
                  << ", class7_length " << class7_length
                  << std::endl;
    }

    if (all_same) {
        std::cout << "[PASS] All repeated DigitCaps hardware outputs are identical."
                  << std::endl;
        return 0;
    }

    std::cout << "[FAIL] Repeated DigitCaps hardware outputs differ."
              << std::endl;
    return 2;
}