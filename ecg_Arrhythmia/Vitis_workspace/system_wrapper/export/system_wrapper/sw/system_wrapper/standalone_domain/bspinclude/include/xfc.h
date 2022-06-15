// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFC_H
#define XFC_H

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
#include "xfc_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XFc_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XFc;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFc_ReadReg(BaseAddress, RegOffset) \
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
int XFc_Initialize(XFc *InstancePtr, u16 DeviceId);
XFc_Config* XFc_LookupConfig(u16 DeviceId);
int XFc_CfgInitialize(XFc *InstancePtr, XFc_Config *ConfigPtr);
#else
int XFc_Initialize(XFc *InstancePtr, const char* InstanceName);
int XFc_Release(XFc *InstancePtr);
#endif

void XFc_Start(XFc *InstancePtr);
u32 XFc_IsDone(XFc *InstancePtr);
u32 XFc_IsIdle(XFc *InstancePtr);
u32 XFc_IsReady(XFc *InstancePtr);
void XFc_EnableAutoRestart(XFc *InstancePtr);
void XFc_DisableAutoRestart(XFc *InstancePtr);

void XFc_Set_in_V(XFc *InstancePtr, u32 Data);
u32 XFc_Get_in_V(XFc *InstancePtr);
void XFc_Set_weight_V(XFc *InstancePtr, u32 Data);
u32 XFc_Get_weight_V(XFc *InstancePtr);
void XFc_Set_bias_V(XFc *InstancePtr, u32 Data);
u32 XFc_Get_bias_V(XFc *InstancePtr);
void XFc_Set_out_V(XFc *InstancePtr, u32 Data);
u32 XFc_Get_out_V(XFc *InstancePtr);

void XFc_InterruptGlobalEnable(XFc *InstancePtr);
void XFc_InterruptGlobalDisable(XFc *InstancePtr);
void XFc_InterruptEnable(XFc *InstancePtr, u32 Mask);
void XFc_InterruptDisable(XFc *InstancePtr, u32 Mask);
void XFc_InterruptClear(XFc *InstancePtr, u32 Mask);
u32 XFc_InterruptGetEnabled(XFc *InstancePtr);
u32 XFc_InterruptGetStatus(XFc *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
