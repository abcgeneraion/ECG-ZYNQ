// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCONV1D_H
#define XCONV1D_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xconv1d_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XConv1d_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XConv1d;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XConv1d_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XConv1d_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XConv1d_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XConv1d_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XConv1d_Initialize(XConv1d *InstancePtr, u16 DeviceId);
XConv1d_Config* XConv1d_LookupConfig(u16 DeviceId);
int XConv1d_CfgInitialize(XConv1d *InstancePtr, XConv1d_Config *ConfigPtr);
#else
int XConv1d_Initialize(XConv1d *InstancePtr, const char* InstanceName);
int XConv1d_Release(XConv1d *InstancePtr);
#endif

void XConv1d_Start(XConv1d *InstancePtr);
u32 XConv1d_IsDone(XConv1d *InstancePtr);
u32 XConv1d_IsIdle(XConv1d *InstancePtr);
u32 XConv1d_IsReady(XConv1d *InstancePtr);
void XConv1d_EnableAutoRestart(XConv1d *InstancePtr);
void XConv1d_DisableAutoRestart(XConv1d *InstancePtr);

void XConv1d_Set_in_V(XConv1d *InstancePtr, u32 Data);
u32 XConv1d_Get_in_V(XConv1d *InstancePtr);
void XConv1d_Set_weight_V(XConv1d *InstancePtr, u32 Data);
u32 XConv1d_Get_weight_V(XConv1d *InstancePtr);
void XConv1d_Set_bias_V(XConv1d *InstancePtr, u32 Data);
u32 XConv1d_Get_bias_V(XConv1d *InstancePtr);
void XConv1d_Set_out_V(XConv1d *InstancePtr, u32 Data);
u32 XConv1d_Get_out_V(XConv1d *InstancePtr);
void XConv1d_Set_ch_in(XConv1d *InstancePtr, u32 Data);
u32 XConv1d_Get_ch_in(XConv1d *InstancePtr);
void XConv1d_Set_ch_out(XConv1d *InstancePtr, u32 Data);
u32 XConv1d_Get_ch_out(XConv1d *InstancePtr);
void XConv1d_Set_size(XConv1d *InstancePtr, u32 Data);
u32 XConv1d_Get_size(XConv1d *InstancePtr);
void XConv1d_Set_pool(XConv1d *InstancePtr, u32 Data);
u32 XConv1d_Get_pool(XConv1d *InstancePtr);

void XConv1d_InterruptGlobalEnable(XConv1d *InstancePtr);
void XConv1d_InterruptGlobalDisable(XConv1d *InstancePtr);
void XConv1d_InterruptEnable(XConv1d *InstancePtr, u32 Mask);
void XConv1d_InterruptDisable(XConv1d *InstancePtr, u32 Mask);
void XConv1d_InterruptClear(XConv1d *InstancePtr, u32 Mask);
u32 XConv1d_InterruptGetEnabled(XConv1d *InstancePtr);
u32 XConv1d_InterruptGetStatus(XConv1d *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
