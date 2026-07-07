// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdigitcaps_accel.h"

extern XDigitcaps_accel_Config XDigitcaps_accel_ConfigTable[];

XDigitcaps_accel_Config *XDigitcaps_accel_LookupConfig(u16 DeviceId) {
	XDigitcaps_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDIGITCAPS_ACCEL_NUM_INSTANCES; Index++) {
		if (XDigitcaps_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDigitcaps_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDigitcaps_accel_Initialize(XDigitcaps_accel *InstancePtr, u16 DeviceId) {
	XDigitcaps_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDigitcaps_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDigitcaps_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

