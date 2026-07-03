#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <iomanip>
#include <iostream>

#include <ap_fixed.h>

#include "constants.h"
#include "DigitCaps.h"

static void read_float_file_to_fixed(
    const char* path,
    fixed_t* output,
    int count)
{
    std::ifstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to open " << path << std::endl;
        std::exit(EXIT_FAILURE);
    }

    float value = 0.0f;

    for (int i = 0; i < count; ++i) {
        if (!(file >> value)) {
            std::cerr << "[ERROR] Failed to read value "
                      << i << " from " << path << std::endl;
            std::exit(EXIT_FAILURE);
        }

        output[i] = static_cast<fixed_t>(value);
    }

    // Detect unexpected extra numeric values.
    if (file >> value) {
        std::cerr << "[WARNING] " << path
                  << " contains more than " << count
                  << " numeric values; extra values are ignored."
                  << std::endl;
    }

    std::cout << "[INFO] Read "
              << count << " values from " << path << std::endl;
}

static void write_fixed_file(
    const char* path,
    const fixed_t* data,
    int count)
{
    std::ofstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to write " << path << std::endl;
        std::exit(EXIT_FAILURE);
    }

    file << std::setprecision(10);

    for (int i = 0; i < count; ++i) {
        file << static_cast<float>(data[i]) << '\n';
    }

    std::cout << "[INFO] Wrote "
              << count << " values to " << path << std::endl;
}

static void write_float_file(
    const char* path,
    const float* data,
    int count)
{
    std::ofstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to write " << path << std::endl;
        std::exit(EXIT_FAILURE);
    }

    file << std::setprecision(10);

    for (int i = 0; i < count; ++i) {
        file << data[i] << '\n';
    }

    std::cout << "[INFO] Wrote "
              << count << " values to " << path << std::endl;
}

static void clear_fixed_array(fixed_t* data, int count)
{
    for (int i = 0; i < count; ++i) {
        data[i] = 0;
    }
}

static bool all_zero(const fixed_t* data, int count)
{
    for (int i = 0; i < count; ++i) {
        if (data[i] != 0) {
            return false;
        }
    }

    return true;
}

static int make_path(
    char* output,
    std::size_t output_size,
    const char* format,
    int image_index)
{
    const int length = std::snprintf(
        output,
        output_size,
        format,
        image_index
    );

    if (length < 0 ||
        length >= static_cast<int>(output_size)) {
        std::cerr << "[ERROR] Failed to construct path for image "
                  << image_index << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

int main()
{
    std::cout
        << "========== DigitCaps first-50 C-sim testbench =========="
        << std::endl;

    constexpr int batch_size = 50;

    constexpr int input_count =
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    constexpr int weights_count =
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE *
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    constexpr int output_count =
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE;

    static fixed_t input[input_count];
    static fixed_t weights[weights_count];
    static fixed_t prediction[output_count];
    static float magnitudes[DIGIT_CAPS_NUM_DIGITS];
    static int predicted_digits[batch_size];

    std::cout << "[INFO] Images to process        = "
              << batch_size << std::endl;
    std::cout << "[INFO] Input values per image   = "
              << input_count << std::endl;
    std::cout << "[INFO] Weight values            = "
              << weights_count << std::endl;
    std::cout << "[INFO] DigitCaps output values  = "
              << output_count << std::endl;
    std::cout << "[INFO] CapsNet output values    = "
              << DIGIT_CAPS_NUM_DIGITS << std::endl;

    // This assumes the executable is launched from:
    // ~/p4p/P4P-CapsuleNetworkAccelerator/vitishls
    read_float_file_to_fixed(
        "parameters/new_digitcaps_weights.txt",
        weights,
        weights_count
    );

    for (int img = 0; img < batch_size; ++img) {
        std::cout << "\n========== Image "
                  << std::setw(2) << std::setfill('0') << img
                  << std::setfill(' ') << " =========="
                  << std::endl;

        char input_path[512];
        char digitcaps_output_path[512];
        char capsnet_input_path[512];
        char capsnet_output_path[512];

        if (make_path(
                input_path,
                sizeof(input_path),
                "../hybrid_quant_standalone_first50/"
                "img%02d/09_digitcaps_input.txt",
                img) != EXIT_SUCCESS ||
            make_path(
                digitcaps_output_path,
                sizeof(digitcaps_output_path),
                "../hybrid_quant_standalone_first50/"
                "img%02d/13_hw_digitcaps_output.txt",
                img) != EXIT_SUCCESS ||
            make_path(
                capsnet_input_path,
                sizeof(capsnet_input_path),
                "../hybrid_quant_standalone_first50/"
                "img%02d/14_hw_capsnet_input.txt",
                img) != EXIT_SUCCESS ||
            make_path(
                capsnet_output_path,
                sizeof(capsnet_output_path),
                "../hybrid_quant_standalone_first50/"
                "img%02d/15_hw_capsnet_output.txt",
                img) != EXIT_SUCCESS) {
            return EXIT_FAILURE;
        }

        read_float_file_to_fixed(
            input_path,
            input,
            input_count
        );

        clear_fixed_array(prediction, output_count);

        // Normal DigitCaps inference.
        digitcaps_accel(
            input,
            weights,
            prediction,
            0
        );

        // 13: Hardware DigitCaps output, shape [10][16] = 160 values.
        write_fixed_file(
            digitcaps_output_path,
            prediction,
            output_count
        );

        // 14: Input to the CapsNet Length stage.
        // In this model, the Length stage directly consumes DigitCaps output,
        // so this file intentionally contains the same 160 values as file 13.
        write_fixed_file(
            capsnet_input_path,
            prediction,
            output_count
        );

        // 15: CapsNet Length output, shape [10] = one magnitude per digit.
        for (int digit = 0;
             digit < DIGIT_CAPS_NUM_DIGITS;
             ++digit) {
            float sum_of_squares = 0.0f;

            for (int dimension = 0;
                 dimension < DIGIT_CAPS_DIM_CAPSULE;
                 ++dimension) {
                const int index =
                    digit * DIGIT_CAPS_DIM_CAPSULE + dimension;

                const float value =
                    static_cast<float>(prediction[index]);

                sum_of_squares += value * value;
            }

            magnitudes[digit] = std::sqrt(sum_of_squares);
        }

        write_float_file(
            capsnet_output_path,
            magnitudes,
            DIGIT_CAPS_NUM_DIGITS
        );

        int predicted_digit = 0;

        for (int digit = 1;
             digit < DIGIT_CAPS_NUM_DIGITS;
             ++digit) {
            if (magnitudes[digit] >
                magnitudes[predicted_digit]) {
                predicted_digit = digit;
            }
        }

        predicted_digits[img] = predicted_digit;

        std::cout << "[INFO] Prediction = "
                  << predicted_digit << std::endl;

        std::cout << "[INFO] Magnitudes:";
        for (int digit = 0;
             digit < DIGIT_CAPS_NUM_DIGITS;
             ++digit) {
            std::cout << ' '
                      << std::setprecision(7)
                      << magnitudes[digit];
        }
        std::cout << std::endl;

        // Clear any persistent/static state inside DigitCaps.cpp.
        digitcaps_accel(
            input,
            weights,
            prediction,
            1
        );

        if (!all_zero(prediction, output_count)) {
            std::cerr
                << "[WARNING] prediction is not all zero after reset "
                << "for image " << img
                << ". This does not necessarily prove internal reset failed, "
                << "unless the reset branch is designed to clear prediction."
                << std::endl;
        }
    }

    std::ofstream summary_file(
        "../hybrid_quant_standalone_first50/"
        "hw_digitcaps_predictions_first50.txt"
    );

    if (!summary_file.is_open()) {
        std::cerr
            << "[ERROR] Failed to write first-50 prediction summary."
            << std::endl;
        return EXIT_FAILURE;
    }

    std::cout << "\n========== Summary ==========" << std::endl;

    for (int img = 0; img < batch_size; ++img) {
        summary_file << predicted_digits[img] << '\n';

        std::cout << "img"
                  << std::setw(2) << std::setfill('0') << img
                  << std::setfill(' ')
                  << " pred = "
                  << predicted_digits[img]
                  << std::endl;
    }

    std::cout
        << "[INFO] Wrote "
        << "../hybrid_quant_standalone_first50/"
        << "hw_digitcaps_predictions_first50.txt"
        << std::endl;

    std::cout << "\n[INFO] Processed all 50 images successfully."
              << std::endl;

    return EXIT_SUCCESS;
}
