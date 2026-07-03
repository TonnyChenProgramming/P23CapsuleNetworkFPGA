/*
 * Standalone hardware testbench for DigitCaps accelerator.
 *
 * Usage:
 *   ./DigitCapsHwTestbench.exe \
 *       weights/new_digitcaps_weights.txt \
 *       hybrid_quant_standalone_first50/img00/09_digitcaps_input.txt \
 *       10
 */

#include <cmath>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

#include "constants.h"
#include "common.h"
#include "accel_wrapper2.hpp"

static void read_float_file(
    const std::string& path,
    float* output,
    int count)
{
    std::ifstream file(path);

    if (!file.is_open()) {
        throw std::runtime_error(
            "Failed to open input file: " + path
        );
    }

    for (int i = 0; i < count; ++i) {
        if (!(file >> output[i])) {
            throw std::runtime_error(
                "Failed to read input value " +
                std::to_string(i) +
                " from " +
                path
            );
        }
    }
}

static std::vector<float> read_weights_file(
    const std::string& path)
{
    const int expected_count =
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE *
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    std::ifstream file(path);

    if (!file.is_open()) {
        throw std::runtime_error(
            "Failed to open weights file: " + path
        );
    }

    std::vector<float> weights;
    weights.reserve(expected_count);

    float value = 0.0f;

    while (file >> value) {
        weights.push_back(value);
    }

    if (static_cast<int>(weights.size()) != expected_count) {
        throw std::runtime_error(
            "Weight count mismatch. Expected " +
            std::to_string(expected_count) +
            ", got " +
            std::to_string(weights.size())
        );
    }

    return weights;
}

static float digit_length(
    const float* prediction,
    int digit)
{
    float sum_sq = 0.0f;

    const int offset =
        digit * DIGIT_CAPS_DIM_CAPSULE;

    for (int dim = 0;
         dim < DIGIT_CAPS_DIM_CAPSULE;
         ++dim) {
        const float value =
            prediction[offset + dim];

        sum_sq += value * value;
    }

    return std::sqrt(sum_sq);
}

static int argmax_digit(
    const float* prediction,
    float& best_length)
{
    int best_digit = 0;
    best_length = digit_length(prediction, 0);

    for (int digit = 1;
         digit < DIGIT_CAPS_NUM_DIGITS;
         ++digit) {
        const float length =
            digit_length(prediction, digit);

        if (length > best_length) {
            best_length = length;
            best_digit = digit;
        }
    }

    return best_digit;
}

static bool same_prediction(
    const float* first,
    const float* current,
    int count,
    float tolerance)
{
    for (int i = 0; i < count; ++i) {
        if (std::fabs(first[i] - current[i]) >
            tolerance) {
            return false;
        }
    }

    return true;
}

int main(int argc, char* argv[])
{
    if (argc < 3 || argc > 4) {
        std::cerr
            << "Usage: "
            << argv[0]
            << " <weights.txt> <digitcaps_input.txt> [iterations]"
            << std::endl;

        return 1;
    }

    try {
        const std::string weight_path = argv[1];
        const std::string input_path = argv[2];

        const int iterations =
            (argc == 4)
                ? std::stoi(argv[3])
                : 10;

        if (iterations <= 0) {
            throw std::runtime_error(
                "iterations must be positive"
            );
        }

        const int input_count =
            DIGIT_CAPS_INPUT_CAPSULES *
            DIGIT_CAPS_INPUT_DIM_CAPSULE;

        const int prediction_count =
            DIGIT_CAPS_NUM_DIGITS *
            DIGIT_CAPS_DIM_CAPSULE;

        std::vector<float> weights =
            read_weights_file(weight_path);

        std::vector<float> digitcaps_input(
            input_count
        );

        read_float_file(
            input_path,
            digitcaps_input.data(),
            input_count
        );

        DigitcapsAcceleratorType* accelerator =
            init_digitcaps_accelerator(
                weights.data()
            );

        if (accelerator == nullptr) {
            throw std::runtime_error(
                "init_digitcaps_accelerator returned null"
            );
        }

        std::vector<float> first_prediction(
            prediction_count,
            0.0f
        );

        bool all_same = true;

        for (int iter = 0;
             iter < iterations;
             ++iter) {
            const int status =
                run_digitcaps_accelerator(
                    accelerator,
                    digitcaps_input.data()
                );

            if (status != 0) {
                destroy_digitcaps_accelerator(
                    accelerator
                );

                throw std::runtime_error(
                    "run_digitcaps_accelerator failed at iteration " +
                    std::to_string(iter) +
                    " with status " +
                    std::to_string(status)
                );
            }

            const float* prediction =
                static_cast<const float*>(
                    accelerator->prediction_m
                );

            if (iter == 0) {
                for (int i = 0;
                     i < prediction_count;
                     ++i) {
                    first_prediction[i] =
                        prediction[i];
                }
            } else if (!same_prediction(
                           first_prediction.data(),
                           prediction,
                           prediction_count,
                           1e-6f)) {
                all_same = false;
            }

            float best_length = 0.0f;

            const int best_digit =
                argmax_digit(
                    prediction,
                    best_length
                );

            const float class7_length =
                digit_length(
                    prediction,
                    7
                );

            std::cout
                << "iter "
                << iter
                << " -> digit "
                << best_digit
                << ", best_length "
                << best_length
                << ", class7_length "
                << class7_length
                << std::endl;
        }

        destroy_digitcaps_accelerator(
            accelerator
        );

        if (all_same) {
            std::cout
                << "[PASS] All repeated DigitCaps hardware outputs are identical."
                << std::endl;

            return 0;
        }

        std::cout
            << "[FAIL] Repeated DigitCaps hardware outputs differ."
            << std::endl;

        return 2;
    }
    catch (const std::exception& error) {
        std::cerr
            << "[ERROR] "
            << error.what()
            << std::endl;

        return 1;
    }
}
