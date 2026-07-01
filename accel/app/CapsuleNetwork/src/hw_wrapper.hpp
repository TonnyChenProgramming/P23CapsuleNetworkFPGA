#pragma once

#include <chrono>
#include <cstdint>
#include <iostream>
#include <stdexcept>
#include <string>

#include "ert.h"
#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

namespace hw_wrapper {

constexpr const char* XCLBIN_PATH =
    "/run/media/mmcblk0p1/accumulator_with_reset.xclbin";

constexpr const char* KERNEL_NAME =
    "accumulator_with_reset:{accumulator_with_reset_1}";

constexpr int RESULT_ARGUMENT_INDEX = 2;
constexpr std::size_t RESULT_BUFFER_SIZE = sizeof(uint32_t);

inline xrt::device device;
inline xrt::uuid xclbin_uuid;
inline xrt::kernel accumulator_kernel;
inline xrt::bo result_bo;

inline uint32_t* result_map = nullptr;

inline void target_init()
{
    std::cout << "[1] Opening XRT device" << std::endl;

    device = xrt::device(0);

    std::cout << "[2] Loading accumulator xclbin" << std::endl;

    xclbin_uuid = device.load_xclbin(XCLBIN_PATH);

    std::cout << "[3] Opening accumulator kernel" << std::endl;

    accumulator_kernel = xrt::kernel(
        device,
        xclbin_uuid,
        KERNEL_NAME
    );

    const int result_group_id =
        accumulator_kernel.group_id(
            RESULT_ARGUMENT_INDEX
        );

    std::cout
        << "[4] Allocating result BO, group="
        << result_group_id
        << std::endl;

    result_bo = xrt::bo(
        device,
        RESULT_BUFFER_SIZE,
        xrt::bo::flags::normal,
        result_group_id
    );

    result_map = result_bo.map<uint32_t*>();

    if (result_map == nullptr) {
        throw std::runtime_error(
            "Failed to map result BO"
        );
    }

    result_map[0] = 0;

    result_bo.sync(
        XCL_BO_SYNC_BO_TO_DEVICE,
        RESULT_BUFFER_SIZE,
        0
    );

    std::cout << "[5] Initialization complete" << std::endl;
}

inline uint32_t target_run(
    uint32_t update,
    uint32_t clear)
{
    /*
     * Sentinel value used to check whether the hardware
     * actually writes to the output BO.
     */
    constexpr uint32_t sentinel = 0xDEADBEEF;

    result_map[0] = sentinel;

    result_bo.sync(
        XCL_BO_SYNC_BO_TO_DEVICE,
        RESULT_BUFFER_SIZE,
        0
    );

    std::cout
        << "[RUN] update=" << update
        << ", clear=" << clear
        << std::endl;

    /*
     * Kernel argument order:
     *
     * argument 0: update
     * argument 1: clear
     * argument 2: result BO
     */
    auto run = accumulator_kernel(
        update,
        clear,
        result_bo
    );

    std::cout << "[RUN] Submitted; waiting" << std::endl;

    const auto state =
        run.wait(std::chrono::milliseconds(5000));

    std::cout
        << "[RUN] state="
        << static_cast<int>(state)
        << std::endl;

    if (state != ERT_CMD_STATE_COMPLETED) {
        throw std::runtime_error(
            "Kernel did not complete; state=" +
            std::to_string(
                static_cast<int>(state)
            )
        );
    }

    result_bo.sync(
        XCL_BO_SYNC_BO_FROM_DEVICE,
        RESULT_BUFFER_SIZE,
        0
    );

    const uint32_t result = result_map[0];

    if (result == sentinel) {
        throw std::runtime_error(
            "Kernel completed but did not write to result BO"
        );
    }

    std::cout
        << "[DONE] result="
        << result
        << std::endl;

    return result;
}

}  // namespace hw_wrapper