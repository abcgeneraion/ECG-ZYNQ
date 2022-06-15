// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xconv1d.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConv1d_CfgInitialize(XConv1d *InstancePtr, XConv1d_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XConv1d_Start(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_AP_CTRL) & 0x80;
    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConv1d_IsDone(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConv1d_IsIdle(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConv1d_IsReady(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConv1d_EnableAutoRestart(XConv1d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_AP_CTRL, 0x80);
}

void XConv1d_DisableAutoRestart(XConv1d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_AP_CTRL, 0);
}

void XConv1d_Set_in_V(XConv1d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_IN_V_DATA, Data);
}

u32 XConv1d_Get_in_V(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_IN_V_DATA);
    return Data;
}

void XConv1d_Set_weight_V(XConv1d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_WEIGHT_V_DATA, Data);
}

u32 XConv1d_Get_weight_V(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_WEIGHT_V_DATA);
    return Data;
}

void XConv1d_Set_bias_V(XConv1d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_BIAS_V_DATA, Data);
}

u32 XConv1d_Get_bias_V(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_BIAS_V_DATA);
    return Data;
}

void XConv1d_Set_out_V(XConv1d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_OUT_V_DATA, Data);
}

u32 XConv1d_Get_out_V(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_OUT_V_DATA);
    return Data;
}

void XConv1d_Set_ch_in(XConv1d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_CH_IN_DATA, Data);
}

u32 XConv1d_Get_ch_in(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_CH_IN_DATA);
    return Data;
}

void XConv1d_Set_ch_out(XConv1d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_CH_OUT_DATA, Data);
}

u32 XConv1d_Get_ch_out(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_CH_OUT_DATA);
    return Data;
}

void XConv1d_Set_size(XConv1d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_SIZE_DATA, Data);
}

u32 XConv1d_Get_size(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_SIZE_DATA);
    return Data;
}

void XConv1d_Set_pool(XConv1d *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_POOL_DATA, Data);
}

u32 XConv1d_Get_pool(XConv1d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_POOL_DATA);
    return Data;
}

void XConv1d_InterruptGlobalEnable(XConv1d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_GIE, 1);
}

void XConv1d_InterruptGlobalDisable(XConv1d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_GIE, 0);
}

void XConv1d_InterruptEnable(XConv1d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_IER);
    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_IER, Register | Mask);
}

void XConv1d_InterruptDisable(XConv1d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_IER);
    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_IER, Register & (~Mask));
}

void XConv1d_InterruptClear(XConv1d *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv1d_WriteReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_ISR, Mask);
}

u32 XConv1d_InterruptGetEnabled(XConv1d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_IER);
}

u32 XConv1d_InterruptGetStatus(XConv1d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv1d_ReadReg(InstancePtr->Ctrl_BaseAddress, XCONV1D_CTRL_ADDR_ISR);
}

