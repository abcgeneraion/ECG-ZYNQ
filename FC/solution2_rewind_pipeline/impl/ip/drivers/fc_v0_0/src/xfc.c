// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfc.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFc_CfgInitialize(XFc *InstancePtr, XFc_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFc_Start(XFc *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_AP_CTRL) & 0x80;
    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFc_IsDone(XFc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFc_IsIdle(XFc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFc_IsReady(XFc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFc_EnableAutoRestart(XFc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_AP_CTRL, 0x80);
}

void XFc_DisableAutoRestart(XFc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_AP_CTRL, 0);
}

void XFc_Set_in_V(XFc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_IN_V_DATA, Data);
}

u32 XFc_Get_in_V(XFc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_IN_V_DATA);
    return Data;
}

void XFc_Set_weight_V(XFc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_WEIGHT_V_DATA, Data);
}

u32 XFc_Get_weight_V(XFc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_WEIGHT_V_DATA);
    return Data;
}

void XFc_Set_bias_V(XFc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_BIAS_V_DATA, Data);
}

u32 XFc_Get_bias_V(XFc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_BIAS_V_DATA);
    return Data;
}

void XFc_Set_out_V(XFc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_OUT_V_DATA, Data);
}

u32 XFc_Get_out_V(XFc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_OUT_V_DATA);
    return Data;
}

void XFc_InterruptGlobalEnable(XFc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_GIE, 1);
}

void XFc_InterruptGlobalDisable(XFc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_GIE, 0);
}

void XFc_InterruptEnable(XFc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_IER);
    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_IER, Register | Mask);
}

void XFc_InterruptDisable(XFc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_IER);
    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_IER, Register & (~Mask));
}

void XFc_InterruptClear(XFc *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFc_WriteReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_ISR, Mask);
}

u32 XFc_InterruptGetEnabled(XFc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_IER);
}

u32 XFc_InterruptGetStatus(XFc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFc_ReadReg(InstancePtr->Ctrl_BaseAddress, XFC_CTRL_ADDR_ISR);
}

