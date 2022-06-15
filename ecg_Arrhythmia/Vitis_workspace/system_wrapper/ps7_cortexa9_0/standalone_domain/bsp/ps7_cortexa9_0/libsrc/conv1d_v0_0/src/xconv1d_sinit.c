// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xconv1d.h"

extern XConv1d_Config XConv1d_ConfigTable[];

XConv1d_Config *XConv1d_LookupConfig(u16 DeviceId) {
	XConv1d_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCONV1D_NUM_INSTANCES; Index++) {
		if (XConv1d_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XConv1d_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XConv1d_Initialize(XConv1d *InstancePtr, u16 DeviceId) {
	XConv1d_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XConv1d_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XConv1d_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

