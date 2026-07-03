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
                      << i
                      << " from "
                      << path
                      << std::endl;

            std::exit(EXIT_FAILURE);
        }

        output[i] = static_cast<fixed_t>(value);
    }

    std::cout << "[INFO] Read "
              << count
              << " values from "
              << path
              << std::endl;
}

static void write_fixed_file(
    const char* path,
    const fixed_t* data,
    int count)
{
    std::ofstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to write "
                  << path
                  << std::endl;

        std::exit(EXIT_FAILURE);
    }

    file << std::setprecision(10);

    for (int i = 0; i < count; ++i) {
        file << static_cast<float>(data[i]) << '\n';
    }

    std::cout << "[INFO] Wrote "
              << count
              << " values to "
              << path
              << std::endl;
}

static void write_float_file(
    const char* path,
    const float* data,
    int count)
{
    std::ofstream file(path);

    if (!file.is_open()) {
        std::cerr << "[ERROR] Failed to write "
                  << path
                  << std::endl;

        std::exit(EXIT_FAILURE);
    }

    file << std::setprecision(10);

    for (int i = 0; i < count; ++i) {
        file << data[i] << '\n';
    }

    std::cout << "[INFO] Wrote "
              << count
              << " values to "
              << path
              << std::endl;
}

static void dump_fixed_array(
    const char* name,
    const fixed_t* data,
    int count,
    int max_print = -1)
{
    std::cout << "\n[DUMP] "
              << name
              << " count = "
              << count
              << std::endl;

    int print_count = count;

    if (max_print > 0 && max_print < count) {
        print_count = max_print;
    }

    for (int i = 0; i < print_count; ++i) {
        std::cout << name
                  << "["
                  << i
                  << "] = "
                  << std::setprecision(10)
                  << static_cast<float>(data[i])
                  << std::endl;
    }

    if (print_count < count) {
        std::cout << "[DUMP] "
                  << name
                  << " truncated: printed "
                  << print_count
                  << " / "
                  << count
                  << std::endl;
    }
}

int main()
{
    std::cout
        << "========== DigitCaps first-10 C-sim testbench =========="
        << std::endl;

    constexpr int batch_size = 10;

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

    constexpr int all_output_count =
        batch_size *
        output_count;

    constexpr int lengths_count =
        batch_size *
        DIGIT_CAPS_NUM_DIGITS;

    static fixed_t input[
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE
    ];

    static fixed_t weights[
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE *
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE
    ];

    static fixed_t prediction[
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE
    ];

    static fixed_t all_predictions[
        batch_size *
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE
    ];

    static float all_lengths[
        batch_size *
        DIGIT_CAPS_NUM_DIGITS
    ];

    static int all_pred[batch_size];

    std::cout << "[INFO] input_count per image  = "
              << input_count
              << std::endl;

    std::cout << "[INFO] weights_count          = "
              << weights_count
              << std::endl;

    std::cout << "[INFO] output_count per image = "
              << output_count
              << std::endl;

    std::cout << "[INFO] Reading DigitCaps weights..."
              << std::endl;

    read_float_file_to_fixed(
        "parameters/new_digitcaps_weights.txt",
        weights,
        weights_count
    );

    for (int img = 0; img < batch_size; ++img) {
        std::cout << "\n========== Image "
                  << img
                  << " =========="
                  << std::endl;

        char input_path[512];

        const int path_length = std::snprintf(
            input_path,
            sizeof(input_path),
            "../hybrid_quant_standalone_first50/"
            "img%02d/09_digitcaps_input.txt",
            img
        );

        if (path_length < 0 ||
            path_length >= static_cast<int>(sizeof(input_path))) {
            std::cerr << "[ERROR] Failed to construct input path "
                      << "for image "
                      << img
                      << std::endl;

            return EXIT_FAILURE;
        }

        std::cout << "[INFO] Reading DigitCaps input from: "
                  << input_path
                  << std::endl;

        read_float_file_to_fixed(
            input_path,
            input,
            input_count
        );

        for (int i = 0; i < output_count; ++i) {
            prediction[i] = 0;
        }

        int reset = 0;

        std::cout
            << "[INFO] Calling digitcaps_accel with reset = 0..."
            << std::endl;

        digitcaps_accel(
            input,
            weights,
            prediction,
            reset
        );

        std::cout << "[INFO] digitcaps_accel finished"
                  << std::endl;

        dump_fixed_array(
            "input_after_inference",
            input,
            input_count,
            64
        );

        dump_fixed_array(
            "prediction_after_inference",
            prediction,
            output_count,
            output_count
        );

        for (int i = 0; i < output_count; ++i) {
            all_predictions[
                img * output_count + i
            ] = prediction[i];
        }

        float magnitudes[DIGIT_CAPS_NUM_DIGITS];

        for (int digit = 0;
             digit < DIGIT_CAPS_NUM_DIGITS;
             ++digit) {
            float sum = 0.0f;

            for (int dimension = 0;
                 dimension < DIGIT_CAPS_DIM_CAPSULE;
                 ++dimension) {
                const int index =
                    digit *
                    DIGIT_CAPS_DIM_CAPSULE +
                    dimension;

                const float value =
                    static_cast<float>(prediction[index]);

                sum += value * value;
            }

            magnitudes[digit] = std::sqrt(sum);

            all_lengths[
                img *
                DIGIT_CAPS_NUM_DIGITS +
                digit
            ] = magnitudes[digit];
        }

        int predicted_digit = 0;

        for (int digit = 1;
             digit < DIGIT_CAPS_NUM_DIGITS;
             ++digit) {
            if (magnitudes[digit] >
                magnitudes[predicted_digit]) {
                predicted_digit = digit;
            }
        }

        all_pred[img] = predicted_digit;

        std::cout << "[INFO] Magnitudes:"
                  << std::endl;

        for (int digit = 0;
             digit < DIGIT_CAPS_NUM_DIGITS;
             ++digit) {
            std::cout << "  "
                      << digit
                      << ": "
                      << std::setprecision(10)
                      << magnitudes[digit]
                      << std::endl;
        }

        std::cout << "[INFO] Prediction = "
                  << predicted_digit
                  << std::endl;

        std::cout
            << "[INFO] Resetting DigitCaps internal state..."
            << std::endl;

        reset = 1;

        digitcaps_accel(
            input,
            weights,
            prediction,
            reset
        );

        std::cout << "[INFO] Reset finished"
                  << std::endl;

        dump_fixed_array(
            "prediction_after_reset",
            prediction,
            output_count,
            output_count
        );
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
        std::ofstream prediction_file(
            "hls_digitcaps_pred_first10.txt"
        );

        if (!prediction_file.is_open()) {
            std::cerr
                << "[ERROR] Failed to write "
                << "hls_digitcaps_pred_first10.txt"
                << std::endl;

            return EXIT_FAILURE;
        }

        for (int img = 0; img < batch_size; ++img) {
            prediction_file << all_pred[img] << '\n';
        }

        std::cout
            << "[INFO] Wrote hls_digitcaps_pred_first10.txt"
            << std::endl;
    }

    std::cout << "\n========== Summary =========="
              << std::endl;

    for (int img = 0; img < batch_size; ++img) {
        std::cout << "image "
                  << img
                  << " pred = "
                  << all_pred[img]
                  << std::endl;
    }

    std::cout << "\n[INFO] Done."
              << std::endl;

    return EXIT_SUCCESS;
}

