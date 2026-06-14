#include <cmath>
#include <cstdlib>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <ap_fixed.h>

#include "constants.h"
#include "DigitCaps.h"

static void read_float_file_to_fixed(const char* path, fixed_t* output, int count)
{
    std::ifstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to open " << path << std::endl;
        std::exit(1);
    }

    float value;

    for (int i = 0; i < count; ++i) {
        if (!(file >> value)) {
            std::cerr << "[ERROR] Failed to read value " << i
                      << " from " << path << std::endl;
            std::exit(1);
        }

        output[i] = value;
    }

    std::cout << "[INFO] Read " << count << " values from " << path << std::endl;
}

static void write_fixed_file(const char* path, const fixed_t* data, int count)
{
    std::ofstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to write " << path << std::endl;
        std::exit(1);
    }

    file << std::setprecision(10);

    for (int i = 0; i < count; ++i) {
        file << static_cast<float>(data[i]) << "\n";
    }

    std::cout << "[INFO] Wrote " << count << " values to " << path << std::endl;
}

static void write_float_file(const char* path, const float* data, int count)
{
    std::ofstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to write " << path << std::endl;
        std::exit(1);
    }

    file << std::setprecision(10);

    for (int i = 0; i < count; ++i) {
        file << data[i] << "\n";
    }

    std::cout << "[INFO] Wrote " << count << " values to " << path << std::endl;
}

int main()
{
    std::cout << "========== DigitCaps first-10 C-sim testbench ==========" << std::endl;

    const int batch_size = 10;

    const int input_count =
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    const int all_input_count =
        batch_size *
        input_count;

    const int weights_count =
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE *
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    const int output_count =
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE;

    const int all_output_count =
        batch_size *
        output_count;

    const int lengths_count =
        batch_size *
        DIGIT_CAPS_NUM_DIGITS;

    static fixed_t all_inputs[10 * DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE];
    static fixed_t input[DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE];

    static fixed_t weights[
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE *
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE
    ];

    static fixed_t prediction[DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE];

    static fixed_t all_predictions[
        10 *
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE
    ];

    static float all_lengths[10 * DIGIT_CAPS_NUM_DIGITS];
    static int all_pred[10];

    std::cout << "[INFO] input_count per image  = " << input_count << std::endl;
    std::cout << "[INFO] all_input_count        = " << all_input_count << std::endl;
    std::cout << "[INFO] weights_count          = " << weights_count << std::endl;
    std::cout << "[INFO] output_count per image = " << output_count << std::endl;

    std::cout << "[INFO] Reading first-10 PrimaryCaps from Python reference..." << std::endl;

    read_float_file_to_fixed(
        "parameters/python_ref_first10_primarycaps.txt",
        all_inputs,
        all_input_count
    );

    std::cout << "[INFO] Reading DigitCaps weights..." << std::endl;

    read_float_file_to_fixed(
        "parameters/new_digitcaps_weights.txt",
        weights,
        weights_count
    );

    for (int img = 0; img < batch_size; ++img) {
        std::cout << "\n========== Image " << img << " ==========" << std::endl;

        // Copy image img PrimaryCaps slice:
        //
        // all_inputs shape:
        //     [10][1152][8]
        //
        // input shape:
        //     [1152][8]
        for (int i = 0; i < input_count; ++i) {
            input[i] = all_inputs[img * input_count + i];
        }

        for (int i = 0; i < output_count; ++i) {
            prediction[i] = 0;
        }

        std::cout << "[INFO] Calling dynamic_routing..." << std::endl;

        dynamic_routing(input, weights, prediction);

        std::cout << "[INFO] dynamic_routing finished" << std::endl;

        // Store full DigitCaps vector output.
        for (int i = 0; i < output_count; ++i) {
            all_predictions[img * output_count + i] = prediction[i];
        }

        float magnitudes[DIGIT_CAPS_NUM_DIGITS];

        for (int digit = 0; digit < DIGIT_CAPS_NUM_DIGITS; ++digit) {
            float sum = 0.0f;

            for (int d = 0; d < DIGIT_CAPS_DIM_CAPSULE; ++d) {
                float v = static_cast<float>(
                    prediction[digit * DIGIT_CAPS_DIM_CAPSULE + d]
                );

                sum += v * v;
            }

            magnitudes[digit] = std::sqrt(sum);
            all_lengths[img * DIGIT_CAPS_NUM_DIGITS + digit] = magnitudes[digit];
        }

        int pred = 0;

        for (int digit = 1; digit < DIGIT_CAPS_NUM_DIGITS; ++digit) {
            if (magnitudes[digit] > magnitudes[pred]) {
                pred = digit;
            }
        }

        all_pred[img] = pred;

        std::cout << "[INFO] Magnitudes:" << std::endl;

        for (int digit = 0; digit < DIGIT_CAPS_NUM_DIGITS; ++digit) {
            std::cout << "  " << digit << ": "
                      << std::setprecision(10)
                      << magnitudes[digit]
                      << std::endl;
        }

        std::cout << "[INFO] Prediction = " << pred << std::endl;
    }

    write_fixed_file(
        "hls_digitcaps_output_first10.txt",
        all_predictions,
        all_output_count
    );

    write_float_file(
        "hls_digitcaps_lengths_first10.txt",
        all_lengths,
        lengths_count
    );

    {
        std::ofstream pred_file("hls_digitcaps_pred_first10.txt");

        if (!pred_file.is_open()) {
            std::cerr << "[ERROR] Failed to write hls_digitcaps_pred_first10.txt" << std::endl;
            std::exit(1);
        }

        for (int img = 0; img < batch_size; ++img) {
            pred_file << all_pred[img] << "\n";
        }

        std::cout << "[INFO] Wrote hls_digitcaps_pred_first10.txt" << std::endl;
    }

    std::cout << "\n========== Summary ==========" << std::endl;

    for (int img = 0; img < batch_size; ++img) {
        std::cout << "image " << img
                  << " pred = " << all_pred[img]
                  << std::endl;
    }

    std::cout << "\n[INFO] Done." << std::endl;

    return 0;
}