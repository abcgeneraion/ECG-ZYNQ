// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfc.h"

extern XFc_Config XFc_ConfigTable[];

XFc_Config *XFc_LookupConfig(u16 DeviceId) {
	XFc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFC_NUM_INSTANCES; Index++) {
		if (XFc_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFc_Initialize(XFc *InstancePtr, u16 DeviceId) {
	XFc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFc_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFc_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

