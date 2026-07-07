/*
 * Copyright 2019 Xilinx Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#pragma once

#include <sys/time.h>

#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <dirent.h>
#include <iomanip>
#include <iostream>
#include <limits>
#include <numeric>
#include <stdexcept>
#include <string>
#include <vector>

#include "constants.h"
#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

// -----------------------------------------------------------------------------
// Debug controls
// -----------------------------------------------------------------------------
// Keep this enabled while debugging the zero-output problem.
// It fills the hardware output BO with 0x12345678 before launching the kernel.
// After the kernel returns:
//   - 0x12345678 remains  => kernel did not write the prediction BO
//   - 0 appears           => kernel wrote zeros
//   - other non-zero data  => kernel wrote useful output
#define DIGITCAPS_ENABLE_SENTINEL_TEST 1

static constexpr float FIXED_SCALE_FLOAT = 65536.0f; // 2^16 for ap_fixed<32,16>

static int32_t float_to_fixed32_16(float x)
{
    float scaled_f = x * FIXED_SCALE_FLOAT;

    if (scaled_f > static_cast<float>(std::numeric_limits<int32_t>::max())) {
        return std::numeric_limits<int32_t>::max();
    }

    if (scaled_f < static_cast<float>(std::numeric_limits<int32_t>::min())) {
        return std::numeric_limits<int32_t>::min();
    }

    return static_cast<int32_t>(std::llround(scaled_f));
}

static float fixed32_16_to_float(int32_t x)
{
    return static_cast<float>(x) / FIXED_SCALE_FLOAT;
}

static void convert_float_to_fixed32_16(const float* src, int32_t* dst, int count)
{
    if (src == nullptr || dst == nullptr) {
        throw std::runtime_error("convert_float_to_fixed32_16 got null pointer");
    }

    for (int i = 0; i < count; ++i) {
        dst[i] = float_to_fixed32_16(src[i]);
    }
}

static void convert_fixed32_16_to_float(const int32_t* src, float* dst, int count)
{
    if (src == nullptr || dst == nullptr) {
        throw std::runtime_error("convert_fixed32_16_to_float got null pointer");
    }

    for (int i = 0; i < count; ++i) {
        dst[i] = fixed32_16_to_float(src[i]);
    }
}

static void debug_print_float_buffer(const std::string& name,
                                     const float* data,
                                     int count,
                                     int first_n = 16)
{
    std::cout << "===== DEBUG FLOAT BUFFER: " << name << " =====" << std::endl;

    if (data == nullptr) {
        std::cout << "[ERROR] " << name << " pointer is null" << std::endl;
        std::cout << "===== END DEBUG FLOAT BUFFER: " << name << " =====" << std::endl;
        return;
    }

    int finite_count = 0;
    int nan_count = 0;
    int inf_count = 0;
    int zero_count = 0;

    float min_v = 0.0f;
    float max_v = 0.0f;
    bool has_finite = false;

    for (int i = 0; i < count; ++i) {
        float v = data[i];

        if (v == 0.0f) {
            zero_count++;
        }

        if (std::isnan(v)) {
            nan_count++;
            continue;
        }

        if (std::isinf(v)) {
            inf_count++;
            continue;
        }

        finite_count++;

        if (!has_finite) {
            min_v = v;
            max_v = v;
            has_finite = true;
        } else {
            if (v < min_v) min_v = v;
            if (v > max_v) max_v = v;
        }
    }

    std::cout << "count        = " << count << std::endl;
    std::cout << "address      = " << static_cast<const void*>(data) << std::endl;
    std::cout << "finite_count = " << finite_count << std::endl;
    std::cout << "nan_count    = " << nan_count << std::endl;
    std::cout << "inf_count    = " << inf_count << std::endl;
    std::cout << "zero_count   = " << zero_count << std::endl;

    if (has_finite) {
        std::cout << "min          = " << std::setprecision(10) << min_v << std::endl;
        std::cout << "max          = " << std::setprecision(10) << max_v << std::endl;
    }

    std::cout << "first " << first_n << " values:" << std::endl;

    for (int i = 0; i < count && i < first_n; ++i) {
        std::cout << name << "[" << i << "] = "
                  << std::setprecision(10)
                  << data[i]
                  << std::endl;
    }

    std::cout << "===== END DEBUG FLOAT BUFFER: " << name << " =====" << std::endl;
}

static void debug_print_fixed_buffer_as_float(const std::string& name,
                                              const int32_t* data,
                                              int count,
                                              int first_n = 16)
{
    std::cout << "===== DEBUG FIXED BUFFER AS FLOAT: " << name << " =====" << std::endl;

    if (data == nullptr) {
        std::cout << "[ERROR] " << name << " pointer is null" << std::endl;
        std::cout << "===== END DEBUG FIXED BUFFER AS FLOAT: " << name << " =====" << std::endl;
        return;
    }

    float min_v = fixed32_16_to_float(data[0]);
    float max_v = min_v;
    int zero_count = 0;
    int sentinel_count = 0;

    for (int i = 0; i < count; ++i) {
        float v = fixed32_16_to_float(data[i]);

        if (data[i] == 0) {
            zero_count++;
        }

        if (data[i] == static_cast<int32_t>(0x12345678)) {
            sentinel_count++;
        }

        if (v < min_v) min_v = v;
        if (v > max_v) max_v = v;
    }

    std::cout << "count          = " << count << std::endl;
    std::cout << "address        = " << static_cast<const void*>(data) << std::endl;
    std::cout << "zero_count     = " << zero_count << std::endl;
    std::cout << "sentinel_count = " << sentinel_count << std::endl;
    std::cout << "min float      = " << min_v << std::endl;
    std::cout << "max float      = " << max_v << std::endl;

    std::cout << "first " << first_n << " values:" << std::endl;

    for (int i = 0; i < count && i < first_n; ++i) {
        std::cout << name << "[" << i << "] raw = 0x"
                  << std::hex << data[i]
                  << std::dec
                  << ", float = "
                  << std::setprecision(10)
                  << fixed32_16_to_float(data[i])
                  << std::endl;
    }

    std::cout << "===== END DEBUG FIXED BUFFER AS FLOAT: " << name << " =====" << std::endl;
}

typedef struct DigitcapsAcceleratorType_t
{
    xrt::kernel kernel;
    xrt::device device;
    xrt::run runner;

    xrt::bo input;
    xrt::bo weights;
    xrt::bo prediction;

    // Raw ap_fixed<32,16> BO mappings.
    void *input_m;
    void *weights_m;
    void *prediction_fixed_m;

    // Host-side float buffer converted from prediction_fixed_m.
    // Existing caller reads this as float*.
    void *prediction_m;

    int input_count;
    int weights_count;
    int prediction_count;
    int input_size;
    int weights_size;
    int prediction_size;

} DigitcapsAcceleratorType;

static std::vector<std::string> get_xclbins_in_dir(std::string path)
{
    std::cout << "[DigitCapsAccel] Searching xclbin path: " << path << std::endl;

    if (path.find(".xclbin") != std::string::npos) {
        std::cout << "[DigitCapsAccel] XLNX_VART_FIRMWARE points directly to xclbin: "
                  << path << std::endl;
        return {path};
    }

    std::vector<std::string> xclbinPaths;

    DIR *dir = opendir(path.c_str());

    if (dir == nullptr) {
        std::cout << "[DigitCapsAccel][ERROR] Failed to open xclbin directory: "
                  << path << std::endl;
        return xclbinPaths;
    }

    struct dirent *ent;
    while ((ent = readdir(dir)) != nullptr) {
        std::string name(ent->d_name);

        std::cout << "[DigitCapsAccel] Found directory entry: " << name << std::endl;

        if (name.find(".xclbin") != std::string::npos) {
            std::string full_path = path + "/" + name;
            std::cout << "[DigitCapsAccel] Found xclbin: " << full_path << std::endl;
            xclbinPaths.push_back(full_path);
        }
    }

    closedir(dir);

    std::cout << "[DigitCapsAccel] Total xclbins found: "
              << xclbinPaths.size() << std::endl;

    return xclbinPaths;
}

// -----------------------------------------------------------------------------
// Host-side BO clear for the legacy three-argument HLS kernel:
//     digitcaps_accel(input, weights, prediction)
//
// This clears only the mapped input and prediction BOs. It cannot reset static
// state inside the HLS kernel.
// -----------------------------------------------------------------------------
int clear_digitcaps_host_buffers(DigitcapsAcceleratorType *a, const char *reason)
{
    if (reason != nullptr) {
        std::cout << "[DigitCapsAccel][CLEAR] reason = " << reason << std::endl;
    }

    if (a == nullptr || a->input_m == nullptr ||
        a->prediction_fixed_m == nullptr) {
        std::cout << "[DigitCapsAccel][CLEAR][ERROR] invalid accelerator or BO mapping"
                  << std::endl;
        return -1;
    }

    try {
        std::memset(a->input_m, 0, a->input_size);
        std::memset(a->prediction_fixed_m, 0, a->prediction_size);

        a->input.sync(
            xclBOSyncDirection::XCL_BO_SYNC_BO_TO_DEVICE,
            a->input_size,
            0
        );

        a->prediction.sync(
            xclBOSyncDirection::XCL_BO_SYNC_BO_TO_DEVICE,
            a->prediction_size,
            0
        );

        return 0;
    } catch (const std::exception &e) {
        std::cout << "[DigitCapsAccel][CLEAR][ERROR] host BO clear failed: "
                  << e.what() << std::endl;
        return -2;
    }
}

int run_digitcaps_accelerator(DigitcapsAcceleratorType *a, const float *input_volume)
{
    std::cout << "========== ENTER run_digitcaps_accelerator FIXED CONVERSION ==========" << std::endl;

    if (a == nullptr) {
        std::cout << "[DigitCapsAccel][ERROR] accelerator object is null" << std::endl;
        return -1;
    }

    if (input_volume == nullptr) {
        std::cout << "[DigitCapsAccel][ERROR] input_volume is null" << std::endl;
        return -2;
    }

    if (a->input_m == nullptr || a->weights_m == nullptr ||
        a->prediction_fixed_m == nullptr || a->prediction_m == nullptr) {
        std::cout << "[DigitCapsAccel][ERROR] one or more mapped buffers are null" << std::endl;
        return -3;
    }

    const int input_count = a->input_count;
    const int weights_count = a->weights_count;
    const int prediction_count = a->prediction_count;
    const int input_size = a->input_size;
    const int weights_size = a->weights_size;
    const int prediction_size = a->prediction_size;


    std::cout << "[DigitCapsAccel] input_volume CPU float pointer = "
              << static_cast<const void*>(input_volume) << std::endl;
    std::cout << "[DigitCapsAccel] input_m fixed BO             = " << a->input_m << std::endl;
    std::cout << "[DigitCapsAccel] weights_m fixed BO           = " << a->weights_m << std::endl;
    std::cout << "[DigitCapsAccel] prediction_fixed_m fixed BO  = " << a->prediction_fixed_m << std::endl;
    std::cout << "[DigitCapsAccel] prediction_m float output    = " << a->prediction_m << std::endl;

    int clear_status =
        clear_digitcaps_host_buffers(a, "pre-inference host BO clear");
    if (clear_status != 0) {
        return -10;
    }

    debug_print_float_buffer("input_volume original float", input_volume, input_count, 32);

    std::cout << "[DigitCapsAccel] Converting input float -> ap_fixed<32,16> raw..." << std::endl;
    convert_float_to_fixed32_16(
        input_volume,
        static_cast<int32_t*>(a->input_m),
        input_count
    );

    debug_print_fixed_buffer_as_float(
        "input_m fixed raw before runner",
        static_cast<int32_t*>(a->input_m),
        input_count,
        32
    );

    std::cout << "[DigitCapsAccel] Sync input fixed BO to device..." << std::endl;
    a->input.sync(xclBOSyncDirection::XCL_BO_SYNC_BO_TO_DEVICE, input_size, 0);

#if DIGITCAPS_ENABLE_SENTINEL_TEST
    std::cout << "[DigitCapsAccel] Fill prediction fixed BO with sentinel 0x12345678..." << std::endl;
    int32_t *pred_raw_before = static_cast<int32_t*>(a->prediction_fixed_m);
    for (int i = 0; i < prediction_count; ++i) {
        pred_raw_before[i] = static_cast<int32_t>(0x12345678);
    }
#else
    std::cout << "[DigitCapsAccel] Clear prediction fixed BO..." << std::endl;
    std::memset(a->prediction_fixed_m, 0, prediction_size);
#endif

    debug_print_fixed_buffer_as_float(
        "prediction_fixed_m before runner",
        static_cast<int32_t*>(a->prediction_fixed_m),
        prediction_count,
        16
    );

    std::cout << "[DigitCapsAccel] Sync prediction fixed BO to device..." << std::endl;
    a->prediction.sync(xclBOSyncDirection::XCL_BO_SYNC_BO_TO_DEVICE, prediction_size, 0);

    std::cout << "[DigitCapsAccel] Run kernel with BO arguments:" << std::endl;
    std::cout << "[DigitCapsAccel]   arg0 = input BO, fixed raw, bytes = "
              << input_size << ", elems = " << input_count << std::endl;
    std::cout << "[DigitCapsAccel]   arg1 = weights BO, fixed raw, bytes = "
              << weights_size << ", elems = " << weights_count << std::endl;
    std::cout << "[DigitCapsAccel]   arg2 = prediction BO, fixed raw, bytes = "
              << prediction_size << ", elems = " << prediction_count << std::endl;

    debug_print_fixed_buffer_as_float(
        "arg0 input_m before runner",
        static_cast<int32_t*>(a->input_m),
        input_count,
        32
    );

    debug_print_fixed_buffer_as_float(
        "arg1 weights_m before runner",
        static_cast<int32_t*>(a->weights_m),
        weights_count,
        32
    );

    debug_print_fixed_buffer_as_float(
        "arg2 prediction_fixed_m before runner",
        static_cast<int32_t*>(a->prediction_fixed_m),
        prediction_count,
        32
    );

    try {
        xrt::run run(a->kernel);

        run.set_arg(0, a->input);
        run.set_arg(1, a->weights);
        run.set_arg(2, a->prediction);

        std::cout << "[DigitCapsAccel] starting three-argument xrt::run..." << std::endl;
        run.start();

        std::cout << "[DigitCapsAccel] waiting for fresh xrt::run..." << std::endl;
        run.wait();

        std::cout << "[DigitCapsAccel] fresh xrt::run finished" << std::endl;
    } catch (const std::exception& e) {
        std::cout << "[DigitCapsAccel][ERROR] fresh runner failed: "
                << e.what() << std::endl;
        return -4;
    }


    std::cout << "[DigitCapsAccel] Sync prediction fixed BO from device..." << std::endl;
    a->prediction.sync(xclBOSyncDirection::XCL_BO_SYNC_BO_FROM_DEVICE, prediction_size, 0);

    debug_print_fixed_buffer_as_float(
        "prediction_fixed_m after runner",
        static_cast<int32_t*>(a->prediction_fixed_m),
        prediction_count,
        32
    );

#if DIGITCAPS_ENABLE_SENTINEL_TEST
    int sentinel_count = 0;
    int zero_count = 0;
    int other_count = 0;
    int32_t *pred_raw_after = static_cast<int32_t*>(a->prediction_fixed_m);
    for (int i = 0; i < prediction_count; ++i) {
        if (pred_raw_after[i] == static_cast<int32_t>(0x12345678)) {
            sentinel_count++;
        } else if (pred_raw_after[i] == 0) {
            zero_count++;
        } else {
            other_count++;
        }
    }

    std::cout << "[DigitCapsAccel][SENTINEL RESULT] sentinel_count = "
              << sentinel_count << " / " << prediction_count << std::endl;
    std::cout << "[DigitCapsAccel][SENTINEL RESULT] zero_count     = "
              << zero_count << " / " << prediction_count << std::endl;
    std::cout << "[DigitCapsAccel][SENTINEL RESULT] other_count    = "
              << other_count << " / " << prediction_count << std::endl;

    if (sentinel_count == prediction_count) {
        std::cout << "[DigitCapsAccel][DIAGNOSIS] Kernel did NOT write prediction BO." << std::endl;
    } else if (zero_count == prediction_count) {
        std::cout << "[DigitCapsAccel][DIAGNOSIS] Kernel wrote zeros to prediction BO." << std::endl;
    } else {
        std::cout << "[DigitCapsAccel][DIAGNOSIS] Kernel wrote non-zero prediction data." << std::endl;
    }
#endif

    std::cout << "[DigitCapsAccel] Converting prediction ap_fixed<32,16> raw -> float..." << std::endl;
    convert_fixed32_16_to_float(
        static_cast<int32_t*>(a->prediction_fixed_m),
        static_cast<float*>(a->prediction_m),
        prediction_count
    );

    debug_print_float_buffer(
        "prediction_m converted float after runner",
        static_cast<float*>(a->prediction_m),
        prediction_count,
        32
    );

    // Leave prediction_m unchanged for the caller. Clear only the device-side
    // input and prediction BOs after the result has been copied.
    clear_status = clear_digitcaps_host_buffers(
        a,
        "post-inference host BO scrub"
    );
    if (clear_status != 0) {
        std::cout << "[DigitCapsAccel][WARN] post-inference host BO clear failed"
                  << std::endl;
    }

    std::cout << "========== EXIT run_digitcaps_accelerator FIXED CONVERSION ==========" << std::endl;
    return 0;
}

DigitcapsAcceleratorType *init_digitcaps_accelerator(float *weights_array)
{
    std::cout << "========== ENTER init_digitcaps_accelerator FIXED CONVERSION ==========" << std::endl;

    if (weights_array == nullptr) {
        throw std::runtime_error("[DigitCapsAccel][ERROR] weights_array is null");
    }

    const char *xclbinPath = std::getenv("XLNX_VART_FIRMWARE");

    std::cout << "[DigitCapsAccel] getenv(XLNX_VART_FIRMWARE) = "
              << (xclbinPath ? xclbinPath : "NULL") << std::endl;

    if (xclbinPath == nullptr) {
        throw std::runtime_error("Error: xclbinPath is not set, please set XLNX_VART_FIRMWARE.");
    }

    auto xclbins = get_xclbins_in_dir(xclbinPath);
    if (xclbins.empty()) {
        throw std::runtime_error("[DigitCapsAccel][ERROR] No xclbin found in XLNX_VART_FIRMWARE path");
    }

    const std::string xclbin = xclbins[0];
    std::cout << "[DigitCapsAccel] Using xclbin: " << xclbin << std::endl;

    unsigned device_index = 0;
    int num_devices = xclProbe();

    std::cout << "[DigitCapsAccel] xclProbe() device count = " << num_devices << std::endl;

    if (num_devices <= 0 || device_index >= static_cast<unsigned>(num_devices)) {
        throw std::runtime_error("Cannot find device index specified");
    }

    auto device = xrt::device(device_index);

    std::cout << "[DigitCapsAccel] Loading xclbin..." << std::endl;
    auto uuid = device.load_xclbin(xclbin);
    std::cout << "[DigitCapsAccel] xclbin loaded" << std::endl;
    std::cout << "[DigitCapsAccel] xclbin uuid = "<< uuid.to_string() << std::endl;

    // Legacy three-argument xclbin metadata reports:
    //   Instance: digitcaps_accel_1
    //   args: input@arg0, weights@arg1, prediction@arg2
    // Opening the explicit instance name avoids ambiguity when the DPU is also
    // present in the same xclbin. Fall back to the kernel definition name for
    // older xclbins.
    xrt::kernel digitcaps_kernel;
    try {
        std::cout << "[DigitCapsAccel] Looking for kernel instance: digitcaps_accel:{digitcaps_accel_1}" << std::endl;
        digitcaps_kernel = xrt::kernel(device, uuid.get(), "digitcaps_accel:{digitcaps_accel_1}");
        std::cout << "[DigitCapsAccel] kernel instance digitcaps_accel_1 opened" << std::endl;
    } catch (const std::exception &e) {
        std::cout << "[DigitCapsAccel][WARN] instance open failed: " << e.what() << std::endl;
        std::cout << "[DigitCapsAccel] Falling back to kernel definition: digitcaps_accel" << std::endl;
        digitcaps_kernel = xrt::kernel(device, uuid.get(), "digitcaps_accel");
        std::cout << "[DigitCapsAccel] kernel digitcaps_accel opened" << std::endl;
    }

    // Match the three-argument xclbin argument map:
    //   arg0 input      -> M_AXI_GMEM0
    //   arg1 weights    -> M_AXI_GMEM1
    //   arg2 prediction -> M_AXI_GMEM2
    auto input_mem_grp = digitcaps_kernel.group_id(0);
    auto weights_mem_grp = digitcaps_kernel.group_id(1);
    auto prediction_mem_grp = digitcaps_kernel.group_id(2);

    std::cout << "[DigitCapsAccel] input_mem_grp      = " << input_mem_grp << std::endl;
    std::cout << "[DigitCapsAccel] weights_mem_grp    = " << weights_mem_grp << std::endl;
    std::cout << "[DigitCapsAccel] prediction_mem_grp = " << prediction_mem_grp << std::endl;

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

    const int input_size = input_count * static_cast<int>(sizeof(int32_t));
    const int weights_size = weights_count * static_cast<int>(sizeof(int32_t));
    const int prediction_size = prediction_count * static_cast<int>(sizeof(int32_t));

    std::cout << "[DigitCapsAccel] input_count         = " << input_count << std::endl;
    std::cout << "[DigitCapsAccel] weights_count       = " << weights_count << std::endl;
    std::cout << "[DigitCapsAccel] prediction_count    = " << prediction_count << std::endl;
    std::cout << "[DigitCapsAccel] input_size bytes    = " << input_size << std::endl;
    std::cout << "[DigitCapsAccel] weights_size bytes  = " << weights_size << std::endl;
    std::cout << "[DigitCapsAccel] prediction bytes    = " << prediction_size << std::endl;

    auto input = xrt::bo(device, input_size, input_mem_grp);
    void *input_m = input.map();
    if (input_m == nullptr) {
        throw std::runtime_error("[DigitCapsAccel][ERROR] Input pointer is invalid");
    }

    auto weights = xrt::bo(device, weights_size, weights_mem_grp);
    void *weights_m = weights.map();
    if (weights_m == nullptr) {
        throw std::runtime_error("[DigitCapsAccel][ERROR] Weights pointer is invalid");
    }

    auto prediction = xrt::bo(device, prediction_size, prediction_mem_grp);
    void *prediction_fixed_m = prediction.map();
    if (prediction_fixed_m == nullptr) {
        throw std::runtime_error("[DigitCapsAccel][ERROR] Prediction fixed pointer is invalid");
    }

    float *prediction_float_m = new float[prediction_count];

    std::cout << "[DigitCapsAccel] input_m            = " << input_m << std::endl;
    std::cout << "[DigitCapsAccel] weights_m          = " << weights_m << std::endl;
    std::cout << "[DigitCapsAccel] prediction_fixed_m = " << prediction_fixed_m << std::endl;
    std::cout << "[DigitCapsAccel] prediction_float_m = " << static_cast<void*>(prediction_float_m) << std::endl;

    std::cout << "===== DEBUG FLOAT BUFFER: weights_array before fixed conversion =====" << std::endl;
    std::cout << "address = " << static_cast<const void *>(weights_array) << std::endl;
    std::cout << "count   = " << weights_count << std::endl;

    int wz = 0;
    int wnz = 0;
    float wmin = 1e30f;
    float wmax = -1e30f;

    for (int i = 0; i < weights_count; ++i) {
        float v = weights_array[i];

        if (v == 0.0f) wz++;
        else wnz++;

        if (v < wmin) wmin = v;
        if (v > wmax) wmax = v;
    }

    std::cout << "zero_count    = " << wz << " / " << weights_count << std::endl;
    std::cout << "nonzero_count = " << wnz << " / " << weights_count << std::endl;
    std::cout << "min           = " << wmin << std::endl;
    std::cout << "max           = " << wmax << std::endl;

    for (int i = 0; i < 32; ++i) {
        std::cout << "weights_array[" << i << "] = " << weights_array[i] << std::endl;
    }

    std::cout << "===== END DEBUG FLOAT BUFFER: weights_array before fixed conversion =====" << std::endl;

    std::cout << "[DigitCapsAccel] Converting weights float -> ap_fixed<32,16> raw..." << std::endl;
    convert_float_to_fixed32_16(
        weights_array,
        static_cast<int32_t*>(weights_m),
        weights_count
    );

    debug_print_float_buffer("weights_array original float", weights_array, weights_count, 16);
    debug_print_fixed_buffer_as_float(
        "weights_m fixed raw after conversion",
        static_cast<int32_t*>(weights_m),
        weights_count,
        16
    );
    int nonzero = 0;
    int32_t *w_raw = static_cast<int32_t *>(weights_m);

    for (int i = 0; i < weights_count; ++i) {
        if (w_raw[i] != 0) {
            nonzero++;
            break;
        }
    }

    if (nonzero == 0) {
        throw std::runtime_error(
            "[DigitCapsAccel][ERROR] weights_m is all zero immediately after conversion"
        );
    }
    std::cout << "[DigitCapsAccel] Syncing fixed weights BO to device..." << std::endl;
    weights.sync(xclBOSyncDirection::XCL_BO_SYNC_BO_TO_DEVICE, weights_size, 0);
    std::cout << "[DigitCapsAccel] Weights sync complete" << std::endl;

    std::memset(input_m, 0, input_size);
    std::memset(prediction_fixed_m, 0, prediction_size);
    std::memset(prediction_float_m, 0, prediction_count * sizeof(float));

    prediction.sync(xclBOSyncDirection::XCL_BO_SYNC_BO_TO_DEVICE, prediction_size, 0);

    auto runner = xrt::run(digitcaps_kernel);

    auto a = new DigitcapsAcceleratorType();

    a->kernel = std::move(digitcaps_kernel);
    a->device = std::move(device);
    a->runner = std::move(runner);

    a->input = std::move(input);
    a->weights = std::move(weights);
    a->prediction = std::move(prediction);

    a->input_m = input_m;
    a->weights_m = weights_m;
    a->prediction_fixed_m = prediction_fixed_m;
    a->prediction_m = prediction_float_m;

    a->input_count = input_count;
    a->weights_count = weights_count;
    a->prediction_count = prediction_count;
    a->input_size = input_size;
    a->weights_size = weights_size;
    a->prediction_size = prediction_size;

    int init_clear_status =
        clear_digitcaps_host_buffers(a, "init-time host BO clear");
    if (init_clear_status != 0) {
        delete[] prediction_float_m;
        delete a;
        throw std::runtime_error(
            "[DigitCapsAccel][ERROR] init-time host BO clear failed"
        );
    }

    std::cout << "[DigitCapsAccel] Accelerator object initialized with fixed-point conversion" << std::endl;
    std::cout << "========== EXIT init_digitcaps_accelerator FIXED CONVERSION ==========" << std::endl;

    return a;
}
static void destroy_digitcaps_accelerator(
    DigitcapsAcceleratorType* accelerator)
{
    if (accelerator == nullptr) {
        return;
    }

    delete[] static_cast<float*>(
        accelerator->prediction_m
    );

    accelerator->prediction_m = nullptr;
    accelerator->input_m = nullptr;
    accelerator->weights_m = nullptr;
    accelerator->prediction_fixed_m = nullptr;

    delete accelerator;
}