#pragma once

#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <dirent.h>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <utility>

#include "constants.h"
#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

static constexpr float FIXED_SCALE_FLOAT = 65536.0f;

static int32_t float_to_fixed32_16(float value)
{
    if (!std::isfinite(value)) {
        throw std::runtime_error("DigitCaps received NaN or infinity");
    }

    const double scaled =
        static_cast<double>(value) *
        static_cast<double>(FIXED_SCALE_FLOAT);

    if (scaled > static_cast<double>(
                     std::numeric_limits<int32_t>::max())) {
        return std::numeric_limits<int32_t>::max();
    }

    if (scaled < static_cast<double>(
                     std::numeric_limits<int32_t>::min())) {
        return std::numeric_limits<int32_t>::min();
    }

    return static_cast<int32_t>(std::llround(scaled));
}

static float fixed32_16_to_float(int32_t value)
{
    return static_cast<float>(value) / FIXED_SCALE_FLOAT;
}

static std::vector<std::string> get_xclbins_in_dir(std::string path)
{
    if (path.size() >= 7 &&
        path.compare(path.size() - 7, 7, ".xclbin") == 0) {
        return {path};
    }

    DIR* dir = opendir(path.c_str());
    if (dir == nullptr) {
        return {};
    }

    std::vector<std::string> xclbins;

    while (dirent* entry = readdir(dir)) {
        const std::string name = entry->d_name;

        if (name.size() >= 7 &&
            name.compare(name.size() - 7, 7, ".xclbin") == 0) {
            xclbins.push_back(path + "/" + name);
        }
    }

    closedir(dir);
    return xclbins;
}

typedef struct DigitcapsAcceleratorType_t
{
    xrt::kernel kernel;
    xrt::device device;
    xrt::run runner;

    xrt::bo input;
    xrt::bo weights;
    xrt::bo prediction;

    void* input_m;
    void* weights_m;
    void* prediction_fixed_m;

    // Preserved original interface:
    // CapsuleNetwork reads this as float* after each inference.
    void* prediction_m;

    int input_count;
    int weights_count;
    int prediction_count;

    int input_size;
    int weights_size;
    int prediction_size;

} DigitcapsAcceleratorType;

DigitcapsAcceleratorType*
init_digitcaps_accelerator(float* weights_array)
{
    if (weights_array == nullptr) {
        throw std::runtime_error("weights_array is null");
    }

    const char* xclbin_path =
        std::getenv("XLNX_VART_FIRMWARE");

    if (xclbin_path == nullptr) {
        throw std::runtime_error(
            "XLNX_VART_FIRMWARE is not set"
        );
    }

    const auto xclbins =
        get_xclbins_in_dir(xclbin_path);

    if (xclbins.empty()) {
        throw std::runtime_error("No xclbin found");
    }

    if (xclProbe() <= 0) {
        throw std::runtime_error("No XRT device found");
    }

    xrt::device device(0);
    const auto uuid =
        device.load_xclbin(xclbins.front());

    xrt::kernel kernel(
        device,
        uuid.get(),
        "digitcaps_accel:{digitcaps_accel_1}"
    );

    const int input_count =
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    const int weights_count =
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE *
        DIGIT_CAPS_INPUT_CAPSULES *
        DIGIT_CAPS_INPUT_DIM_CAPSULE;

    const int prediction_count =
        DIGIT_CAPS_NUM_DIGITS *
        DIGIT_CAPS_DIM_CAPSULE;

    const int input_size =
        input_count * static_cast<int>(sizeof(int32_t));

    const int weights_size =
        weights_count * static_cast<int>(sizeof(int32_t));

    const int prediction_size =
        prediction_count * static_cast<int>(sizeof(int32_t));

    xrt::bo input(
        device,
        input_size,
        kernel.group_id(0)
    );

    xrt::bo weights(
        device,
        weights_size,
        kernel.group_id(1)
    );

    xrt::bo prediction(
        device,
        prediction_size,
        kernel.group_id(2)
    );

    auto* input_m =
        input.map<int32_t*>();

    auto* weights_m =
        weights.map<int32_t*>();

    auto* prediction_fixed_m =
        prediction.map<int32_t*>();

    for (int i = 0; i < weights_count; ++i) {
        weights_m[i] =
            float_to_fixed32_16(weights_array[i]);
    }

    weights.sync(
        XCL_BO_SYNC_BO_TO_DEVICE,
        weights_size,
        0
    );

    auto* prediction_m =
        new float[prediction_count]{};

    auto runner = xrt::run(kernel);
    auto* accelerator =
        new DigitcapsAcceleratorType();

    accelerator->kernel = std::move(kernel);
    accelerator->device = std::move(device);
    accelerator->runner = std::move(runner);

    accelerator->input = std::move(input);
    accelerator->weights = std::move(weights);
    accelerator->prediction = std::move(prediction);

    accelerator->input_m = input_m;
    accelerator->weights_m = weights_m;
    accelerator->prediction_fixed_m =
        prediction_fixed_m;
    accelerator->prediction_m = prediction_m;

    accelerator->input_count = input_count;
    accelerator->weights_count = weights_count;
    accelerator->prediction_count =
        prediction_count;

    accelerator->input_size = input_size;
    accelerator->weights_size = weights_size;
    accelerator->prediction_size =
        prediction_size;

    return accelerator;
}

int run_digitcaps_accelerator(
    DigitcapsAcceleratorType* accelerator,
    const float* input_volume)
{
    if (accelerator == nullptr ||
        input_volume == nullptr) {
        return -1;
    }

    auto* input_fixed =
        static_cast<int32_t*>(
            accelerator->input_m
        );

    for (int i = 0;
         i < accelerator->input_count;
         ++i) {
        input_fixed[i] =
            float_to_fixed32_16(
                input_volume[i]
            );
    }

    accelerator->input.sync(
        XCL_BO_SYNC_BO_TO_DEVICE,
        accelerator->input_size,
        0
    );

    xrt::run run(accelerator->kernel);

    run.set_arg(0, accelerator->input);
    run.set_arg(1, accelerator->weights);
    run.set_arg(2, accelerator->prediction);

    // Current xclbin has a fourth scalar argument named reset.
    // Zero selects normal inference.
    run.set_arg(3, 0U);

    run.start();

    const auto state =
        run.wait(std::chrono::seconds(30));

    if (state != ERT_CMD_STATE_COMPLETED) {
        return -2;
    }

    accelerator->prediction.sync(
        XCL_BO_SYNC_BO_FROM_DEVICE,
        accelerator->prediction_size,
        0
    );

    const auto* prediction_fixed =
        static_cast<const int32_t*>(
            accelerator->prediction_fixed_m
        );

    auto* prediction_float =
        static_cast<float*>(
            accelerator->prediction_m
        );

    for (int i = 0;
         i < accelerator->prediction_count;
         ++i) {
        prediction_float[i] =
            fixed32_16_to_float(
                prediction_fixed[i]
            );
    }

    for (int digit = 0;
         digit < DIGIT_CAPS_NUM_DIGITS;
         ++digit) {
        std::cout << "digit " << digit << ":";

        for (int dim = 0;
             dim < DIGIT_CAPS_DIM_CAPSULE;
             ++dim) {
            const int index =
                digit *
                    DIGIT_CAPS_DIM_CAPSULE +
                dim;

            std::cout << ' '
                      << prediction_float[index];
        }

        std::cout << '\n';
    }

    return 0;
}

void destroy_digitcaps_accelerator(
    DigitcapsAcceleratorType* accelerator)
{
    if (accelerator == nullptr) {
        return;
    }

    delete[] static_cast<float*>(
        accelerator->prediction_m
    );

    delete accelerator;
}