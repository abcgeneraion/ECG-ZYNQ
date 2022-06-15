set moduleName load_weight
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {load_weight}
set C_modelType { int 3072 }
set C_modelArgList {
	{ weight_V int 16 regular {axi_master 0}  }
	{ weight_V_offset int 31 regular  }
	{ wt_buff_0_0_0_V_r int 16 regular  }
	{ wt_buff_0_0_1_V_r int 16 regular  }
	{ wt_buff_0_0_2_V_r int 16 regular  }
	{ wt_buff_0_1_0_V_r int 16 regular  }
	{ wt_buff_0_1_1_V_r int 16 regular  }
	{ wt_buff_0_1_2_V_r int 16 regular  }
	{ wt_buff_0_2_0_V_r int 16 regular  }
	{ wt_buff_0_2_1_V_r int 16 regular  }
	{ wt_buff_0_2_2_V_r int 16 regular  }
	{ wt_buff_0_3_0_V_r int 16 regular  }
	{ wt_buff_0_3_1_V_r int 16 regular  }
	{ wt_buff_0_3_2_V_r int 16 regular  }
	{ wt_buff_1_0_0_V_r int 16 regular  }
	{ wt_buff_1_0_1_V_r int 16 regular  }
	{ wt_buff_1_0_2_V_r int 16 regular  }
	{ wt_buff_1_1_0_V_r int 16 regular  }
	{ wt_buff_1_1_1_V_r int 16 regular  }
	{ wt_buff_1_1_2_V_r int 16 regular  }
	{ wt_buff_1_2_0_V_r int 16 regular  }
	{ wt_buff_1_2_1_V_r int 16 regular  }
	{ wt_buff_1_2_2_V_r int 16 regular  }
	{ wt_buff_1_3_0_V_r int 16 regular  }
	{ wt_buff_1_3_1_V_r int 16 regular  }
	{ wt_buff_1_3_2_V_r int 16 regular  }
	{ wt_buff_2_0_0_V_r int 16 regular  }
	{ wt_buff_2_0_1_V_r int 16 regular  }
	{ wt_buff_2_0_2_V_r int 16 regular  }
	{ wt_buff_2_1_0_V_r int 16 regular  }
	{ wt_buff_2_1_1_V_r int 16 regular  }
	{ wt_buff_2_1_2_V_r int 16 regular  }
	{ wt_buff_2_2_0_V_r int 16 regular  }
	{ wt_buff_2_2_1_V_r int 16 regular  }
	{ wt_buff_2_2_2_V_r int 16 regular  }
	{ wt_buff_2_3_0_V_r int 16 regular  }
	{ wt_buff_2_3_1_V_r int 16 regular  }
	{ wt_buff_2_3_2_V_r int 16 regular  }
	{ wt_buff_3_0_0_V_r int 16 regular  }
	{ wt_buff_3_0_1_V_r int 16 regular  }
	{ wt_buff_3_0_2_V_r int 16 regular  }
	{ wt_buff_3_1_0_V_r int 16 regular  }
	{ wt_buff_3_1_1_V_r int 16 regular  }
	{ wt_buff_3_1_2_V_r int 16 regular  }
	{ wt_buff_3_2_0_V_r int 16 regular  }
	{ wt_buff_3_2_1_V_r int 16 regular  }
	{ wt_buff_3_2_2_V_r int 16 regular  }
	{ wt_buff_3_3_0_V_r int 16 regular  }
	{ wt_buff_3_3_1_V_r int 16 regular  }
	{ wt_buff_3_3_2_V_r int 16 regular  }
	{ wt_buff_4_0_0_V_r int 16 regular  }
	{ wt_buff_4_0_1_V_r int 16 regular  }
	{ wt_buff_4_0_2_V_r int 16 regular  }
	{ wt_buff_4_1_0_V_r int 16 regular  }
	{ wt_buff_4_1_1_V_r int 16 regular  }
	{ wt_buff_4_1_2_V_r int 16 regular  }
	{ wt_buff_4_2_0_V_r int 16 regular  }
	{ wt_buff_4_2_1_V_r int 16 regular  }
	{ wt_buff_4_2_2_V_r int 16 regular  }
	{ wt_buff_4_3_0_V_r int 16 regular  }
	{ wt_buff_4_3_1_V_r int 16 regular  }
	{ wt_buff_4_3_2_V_r int 16 regular  }
	{ wt_buff_5_0_0_V_r int 16 regular  }
	{ wt_buff_5_0_1_V_r int 16 regular  }
	{ wt_buff_5_0_2_V_r int 16 regular  }
	{ wt_buff_5_1_0_V_r int 16 regular  }
	{ wt_buff_5_1_1_V_r int 16 regular  }
	{ wt_buff_5_1_2_V_r int 16 regular  }
	{ wt_buff_5_2_0_V_r int 16 regular  }
	{ wt_buff_5_2_1_V_r int 16 regular  }
	{ wt_buff_5_2_2_V_r int 16 regular  }
	{ wt_buff_5_3_0_V_r int 16 regular  }
	{ wt_buff_5_3_1_V_r int 16 regular  }
	{ wt_buff_5_3_2_V_r int 16 regular  }
	{ wt_buff_6_0_0_V_r int 16 regular  }
	{ wt_buff_6_0_1_V_r int 16 regular  }
	{ wt_buff_6_0_2_V_r int 16 regular  }
	{ wt_buff_6_1_0_V_r int 16 regular  }
	{ wt_buff_6_1_1_V_r int 16 regular  }
	{ wt_buff_6_1_2_V_r int 16 regular  }
	{ wt_buff_6_2_0_V_r int 16 regular  }
	{ wt_buff_6_2_1_V_r int 16 regular  }
	{ wt_buff_6_2_2_V_r int 16 regular  }
	{ wt_buff_6_3_0_V_r int 16 regular  }
	{ wt_buff_6_3_1_V_r int 16 regular  }
	{ wt_buff_6_3_2_V_r int 16 regular  }
	{ wt_buff_7_0_0_V_r int 16 regular  }
	{ wt_buff_7_0_1_V_r int 16 regular  }
	{ wt_buff_7_0_2_V_r int 16 regular  }
	{ wt_buff_7_1_0_V_r int 16 regular  }
	{ wt_buff_7_1_1_V_r int 16 regular  }
	{ wt_buff_7_1_2_V_r int 16 regular  }
	{ wt_buff_7_2_0_V_r int 16 regular  }
	{ wt_buff_7_2_1_V_r int 16 regular  }
	{ wt_buff_7_2_2_V_r int 16 regular  }
	{ wt_buff_7_3_0_V_r int 16 regular  }
	{ wt_buff_7_3_1_V_r int 16 regular  }
	{ wt_buff_7_3_2_V_r int 16 regular  }
	{ wt_buff_8_0_0_V_r int 16 regular  }
	{ wt_buff_8_0_1_V_r int 16 regular  }
	{ wt_buff_8_0_2_V_r int 16 regular  }
	{ wt_buff_8_1_0_V_r int 16 regular  }
	{ wt_buff_8_1_1_V_r int 16 regular  }
	{ wt_buff_8_1_2_V_r int 16 regular  }
	{ wt_buff_8_2_0_V_r int 16 regular  }
	{ wt_buff_8_2_1_V_r int 16 regular  }
	{ wt_buff_8_2_2_V_r int 16 regular  }
	{ wt_buff_8_3_0_V_r int 16 regular  }
	{ wt_buff_8_3_1_V_r int 16 regular  }
	{ wt_buff_8_3_2_V_r int 16 regular  }
	{ wt_buff_9_0_0_V_r int 16 regular  }
	{ wt_buff_9_0_1_V_r int 16 regular  }
	{ wt_buff_9_0_2_V_r int 16 regular  }
	{ wt_buff_9_1_0_V_r int 16 regular  }
	{ wt_buff_9_1_1_V_r int 16 regular  }
	{ wt_buff_9_1_2_V_r int 16 regular  }
	{ wt_buff_9_2_0_V_r int 16 regular  }
	{ wt_buff_9_2_1_V_r int 16 regular  }
	{ wt_buff_9_2_2_V_r int 16 regular  }
	{ wt_buff_9_3_0_V_r int 16 regular  }
	{ wt_buff_9_3_1_V_r int 16 regular  }
	{ wt_buff_9_3_2_V_r int 16 regular  }
	{ wt_buff_10_0_0_V_s int 16 regular  }
	{ wt_buff_10_0_1_V_s int 16 regular  }
	{ wt_buff_10_0_2_V_s int 16 regular  }
	{ wt_buff_10_1_0_V_s int 16 regular  }
	{ wt_buff_10_1_1_V_s int 16 regular  }
	{ wt_buff_10_1_2_V_s int 16 regular  }
	{ wt_buff_10_2_0_V_s int 16 regular  }
	{ wt_buff_10_2_1_V_s int 16 regular  }
	{ wt_buff_10_2_2_V_s int 16 regular  }
	{ wt_buff_10_3_0_V_s int 16 regular  }
	{ wt_buff_10_3_1_V_s int 16 regular  }
	{ wt_buff_10_3_2_V_s int 16 regular  }
	{ wt_buff_11_0_0_V_s int 16 regular  }
	{ wt_buff_11_0_1_V_s int 16 regular  }
	{ wt_buff_11_0_2_V_s int 16 regular  }
	{ wt_buff_11_1_0_V_s int 16 regular  }
	{ wt_buff_11_1_1_V_s int 16 regular  }
	{ wt_buff_11_1_2_V_s int 16 regular  }
	{ wt_buff_11_2_0_V_s int 16 regular  }
	{ wt_buff_11_2_1_V_s int 16 regular  }
	{ wt_buff_11_2_2_V_s int 16 regular  }
	{ wt_buff_11_3_0_V_s int 16 regular  }
	{ wt_buff_11_3_1_V_s int 16 regular  }
	{ wt_buff_11_3_2_V_s int 16 regular  }
	{ wt_buff_12_0_0_V_s int 16 regular  }
	{ wt_buff_12_0_1_V_s int 16 regular  }
	{ wt_buff_12_0_2_V_s int 16 regular  }
	{ wt_buff_12_1_0_V_s int 16 regular  }
	{ wt_buff_12_1_1_V_s int 16 regular  }
	{ wt_buff_12_1_2_V_s int 16 regular  }
	{ wt_buff_12_2_0_V_s int 16 regular  }
	{ wt_buff_12_2_1_V_s int 16 regular  }
	{ wt_buff_12_2_2_V_s int 16 regular  }
	{ wt_buff_12_3_0_V_s int 16 regular  }
	{ wt_buff_12_3_1_V_s int 16 regular  }
	{ wt_buff_12_3_2_V_s int 16 regular  }
	{ wt_buff_13_0_0_V_s int 16 regular  }
	{ wt_buff_13_0_1_V_s int 16 regular  }
	{ wt_buff_13_0_2_V_s int 16 regular  }
	{ wt_buff_13_1_0_V_s int 16 regular  }
	{ wt_buff_13_1_1_V_s int 16 regular  }
	{ wt_buff_13_1_2_V_s int 16 regular  }
	{ wt_buff_13_2_0_V_s int 16 regular  }
	{ wt_buff_13_2_1_V_s int 16 regular  }
	{ wt_buff_13_2_2_V_s int 16 regular  }
	{ wt_buff_13_3_0_V_s int 16 regular  }
	{ wt_buff_13_3_1_V_s int 16 regular  }
	{ wt_buff_13_3_2_V_s int 16 regular  }
	{ wt_buff_14_0_0_V_s int 16 regular  }
	{ wt_buff_14_0_1_V_s int 16 regular  }
	{ wt_buff_14_0_2_V_s int 16 regular  }
	{ wt_buff_14_1_0_V_s int 16 regular  }
	{ wt_buff_14_1_1_V_s int 16 regular  }
	{ wt_buff_14_1_2_V_s int 16 regular  }
	{ wt_buff_14_2_0_V_s int 16 regular  }
	{ wt_buff_14_2_1_V_s int 16 regular  }
	{ wt_buff_14_2_2_V_s int 16 regular  }
	{ wt_buff_14_3_0_V_s int 16 regular  }
	{ wt_buff_14_3_1_V_s int 16 regular  }
	{ wt_buff_14_3_2_V_s int 16 regular  }
	{ wt_buff_15_0_0_V_s int 16 regular  }
	{ wt_buff_15_0_1_V_s int 16 regular  }
	{ wt_buff_15_0_2_V_s int 16 regular  }
	{ wt_buff_15_1_0_V_s int 16 regular  }
	{ wt_buff_15_1_1_V_s int 16 regular  }
	{ wt_buff_15_1_2_V_s int 16 regular  }
	{ wt_buff_15_2_0_V_s int 16 regular  }
	{ wt_buff_15_2_1_V_s int 16 regular  }
	{ wt_buff_15_2_2_V_s int 16 regular  }
	{ wt_buff_15_3_0_V_s int 16 regular  }
	{ wt_buff_15_3_1_V_s int 16 regular  }
	{ wt_buff_15_3_2_V_s int 16 regular  }
	{ n int 32 regular  }
	{ m int 32 regular  }
	{ ch_in int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_V_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_8_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_0_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_0_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_0_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_1_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_1_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_1_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_2_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_2_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_2_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_3_0_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_3_1_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_9_3_2_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_0_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_0_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_0_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_1_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_1_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_1_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_2_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_2_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_2_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_3_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_3_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_10_3_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_0_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_0_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_0_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_1_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_1_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_1_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_2_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_2_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_2_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_3_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_3_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_11_3_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_0_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_0_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_0_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_1_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_1_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_1_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_2_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_2_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_2_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_3_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_3_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_12_3_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_0_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_0_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_0_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_1_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_1_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_1_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_2_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_2_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_2_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_3_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_3_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_13_3_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_0_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_0_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_0_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_1_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_1_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_1_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_2_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_2_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_2_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_3_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_3_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_14_3_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_0_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_0_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_0_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_1_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_1_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_1_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_2_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_2_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_2_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_3_0_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_3_1_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_15_3_2_V_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ch_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 3072} ]}
# RTL Port declarations: 
set portNum 439
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_weight_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_weight_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_weight_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_weight_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_weight_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_weight_V_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_weight_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_weight_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_weight_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_weight_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_weight_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_weight_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_weight_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_weight_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_weight_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_weight_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ weight_V_offset sc_in sc_lv 31 signal 1 } 
	{ wt_buff_0_0_0_V_r sc_in sc_lv 16 signal 2 } 
	{ wt_buff_0_0_1_V_r sc_in sc_lv 16 signal 3 } 
	{ wt_buff_0_0_2_V_r sc_in sc_lv 16 signal 4 } 
	{ wt_buff_0_1_0_V_r sc_in sc_lv 16 signal 5 } 
	{ wt_buff_0_1_1_V_r sc_in sc_lv 16 signal 6 } 
	{ wt_buff_0_1_2_V_r sc_in sc_lv 16 signal 7 } 
	{ wt_buff_0_2_0_V_r sc_in sc_lv 16 signal 8 } 
	{ wt_buff_0_2_1_V_r sc_in sc_lv 16 signal 9 } 
	{ wt_buff_0_2_2_V_r sc_in sc_lv 16 signal 10 } 
	{ wt_buff_0_3_0_V_r sc_in sc_lv 16 signal 11 } 
	{ wt_buff_0_3_1_V_r sc_in sc_lv 16 signal 12 } 
	{ wt_buff_0_3_2_V_r sc_in sc_lv 16 signal 13 } 
	{ wt_buff_1_0_0_V_r sc_in sc_lv 16 signal 14 } 
	{ wt_buff_1_0_1_V_r sc_in sc_lv 16 signal 15 } 
	{ wt_buff_1_0_2_V_r sc_in sc_lv 16 signal 16 } 
	{ wt_buff_1_1_0_V_r sc_in sc_lv 16 signal 17 } 
	{ wt_buff_1_1_1_V_r sc_in sc_lv 16 signal 18 } 
	{ wt_buff_1_1_2_V_r sc_in sc_lv 16 signal 19 } 
	{ wt_buff_1_2_0_V_r sc_in sc_lv 16 signal 20 } 
	{ wt_buff_1_2_1_V_r sc_in sc_lv 16 signal 21 } 
	{ wt_buff_1_2_2_V_r sc_in sc_lv 16 signal 22 } 
	{ wt_buff_1_3_0_V_r sc_in sc_lv 16 signal 23 } 
	{ wt_buff_1_3_1_V_r sc_in sc_lv 16 signal 24 } 
	{ wt_buff_1_3_2_V_r sc_in sc_lv 16 signal 25 } 
	{ wt_buff_2_0_0_V_r sc_in sc_lv 16 signal 26 } 
	{ wt_buff_2_0_1_V_r sc_in sc_lv 16 signal 27 } 
	{ wt_buff_2_0_2_V_r sc_in sc_lv 16 signal 28 } 
	{ wt_buff_2_1_0_V_r sc_in sc_lv 16 signal 29 } 
	{ wt_buff_2_1_1_V_r sc_in sc_lv 16 signal 30 } 
	{ wt_buff_2_1_2_V_r sc_in sc_lv 16 signal 31 } 
	{ wt_buff_2_2_0_V_r sc_in sc_lv 16 signal 32 } 
	{ wt_buff_2_2_1_V_r sc_in sc_lv 16 signal 33 } 
	{ wt_buff_2_2_2_V_r sc_in sc_lv 16 signal 34 } 
	{ wt_buff_2_3_0_V_r sc_in sc_lv 16 signal 35 } 
	{ wt_buff_2_3_1_V_r sc_in sc_lv 16 signal 36 } 
	{ wt_buff_2_3_2_V_r sc_in sc_lv 16 signal 37 } 
	{ wt_buff_3_0_0_V_r sc_in sc_lv 16 signal 38 } 
	{ wt_buff_3_0_1_V_r sc_in sc_lv 16 signal 39 } 
	{ wt_buff_3_0_2_V_r sc_in sc_lv 16 signal 40 } 
	{ wt_buff_3_1_0_V_r sc_in sc_lv 16 signal 41 } 
	{ wt_buff_3_1_1_V_r sc_in sc_lv 16 signal 42 } 
	{ wt_buff_3_1_2_V_r sc_in sc_lv 16 signal 43 } 
	{ wt_buff_3_2_0_V_r sc_in sc_lv 16 signal 44 } 
	{ wt_buff_3_2_1_V_r sc_in sc_lv 16 signal 45 } 
	{ wt_buff_3_2_2_V_r sc_in sc_lv 16 signal 46 } 
	{ wt_buff_3_3_0_V_r sc_in sc_lv 16 signal 47 } 
	{ wt_buff_3_3_1_V_r sc_in sc_lv 16 signal 48 } 
	{ wt_buff_3_3_2_V_r sc_in sc_lv 16 signal 49 } 
	{ wt_buff_4_0_0_V_r sc_in sc_lv 16 signal 50 } 
	{ wt_buff_4_0_1_V_r sc_in sc_lv 16 signal 51 } 
	{ wt_buff_4_0_2_V_r sc_in sc_lv 16 signal 52 } 
	{ wt_buff_4_1_0_V_r sc_in sc_lv 16 signal 53 } 
	{ wt_buff_4_1_1_V_r sc_in sc_lv 16 signal 54 } 
	{ wt_buff_4_1_2_V_r sc_in sc_lv 16 signal 55 } 
	{ wt_buff_4_2_0_V_r sc_in sc_lv 16 signal 56 } 
	{ wt_buff_4_2_1_V_r sc_in sc_lv 16 signal 57 } 
	{ wt_buff_4_2_2_V_r sc_in sc_lv 16 signal 58 } 
	{ wt_buff_4_3_0_V_r sc_in sc_lv 16 signal 59 } 
	{ wt_buff_4_3_1_V_r sc_in sc_lv 16 signal 60 } 
	{ wt_buff_4_3_2_V_r sc_in sc_lv 16 signal 61 } 
	{ wt_buff_5_0_0_V_r sc_in sc_lv 16 signal 62 } 
	{ wt_buff_5_0_1_V_r sc_in sc_lv 16 signal 63 } 
	{ wt_buff_5_0_2_V_r sc_in sc_lv 16 signal 64 } 
	{ wt_buff_5_1_0_V_r sc_in sc_lv 16 signal 65 } 
	{ wt_buff_5_1_1_V_r sc_in sc_lv 16 signal 66 } 
	{ wt_buff_5_1_2_V_r sc_in sc_lv 16 signal 67 } 
	{ wt_buff_5_2_0_V_r sc_in sc_lv 16 signal 68 } 
	{ wt_buff_5_2_1_V_r sc_in sc_lv 16 signal 69 } 
	{ wt_buff_5_2_2_V_r sc_in sc_lv 16 signal 70 } 
	{ wt_buff_5_3_0_V_r sc_in sc_lv 16 signal 71 } 
	{ wt_buff_5_3_1_V_r sc_in sc_lv 16 signal 72 } 
	{ wt_buff_5_3_2_V_r sc_in sc_lv 16 signal 73 } 
	{ wt_buff_6_0_0_V_r sc_in sc_lv 16 signal 74 } 
	{ wt_buff_6_0_1_V_r sc_in sc_lv 16 signal 75 } 
	{ wt_buff_6_0_2_V_r sc_in sc_lv 16 signal 76 } 
	{ wt_buff_6_1_0_V_r sc_in sc_lv 16 signal 77 } 
	{ wt_buff_6_1_1_V_r sc_in sc_lv 16 signal 78 } 
	{ wt_buff_6_1_2_V_r sc_in sc_lv 16 signal 79 } 
	{ wt_buff_6_2_0_V_r sc_in sc_lv 16 signal 80 } 
	{ wt_buff_6_2_1_V_r sc_in sc_lv 16 signal 81 } 
	{ wt_buff_6_2_2_V_r sc_in sc_lv 16 signal 82 } 
	{ wt_buff_6_3_0_V_r sc_in sc_lv 16 signal 83 } 
	{ wt_buff_6_3_1_V_r sc_in sc_lv 16 signal 84 } 
	{ wt_buff_6_3_2_V_r sc_in sc_lv 16 signal 85 } 
	{ wt_buff_7_0_0_V_r sc_in sc_lv 16 signal 86 } 
	{ wt_buff_7_0_1_V_r sc_in sc_lv 16 signal 87 } 
	{ wt_buff_7_0_2_V_r sc_in sc_lv 16 signal 88 } 
	{ wt_buff_7_1_0_V_r sc_in sc_lv 16 signal 89 } 
	{ wt_buff_7_1_1_V_r sc_in sc_lv 16 signal 90 } 
	{ wt_buff_7_1_2_V_r sc_in sc_lv 16 signal 91 } 
	{ wt_buff_7_2_0_V_r sc_in sc_lv 16 signal 92 } 
	{ wt_buff_7_2_1_V_r sc_in sc_lv 16 signal 93 } 
	{ wt_buff_7_2_2_V_r sc_in sc_lv 16 signal 94 } 
	{ wt_buff_7_3_0_V_r sc_in sc_lv 16 signal 95 } 
	{ wt_buff_7_3_1_V_r sc_in sc_lv 16 signal 96 } 
	{ wt_buff_7_3_2_V_r sc_in sc_lv 16 signal 97 } 
	{ wt_buff_8_0_0_V_r sc_in sc_lv 16 signal 98 } 
	{ wt_buff_8_0_1_V_r sc_in sc_lv 16 signal 99 } 
	{ wt_buff_8_0_2_V_r sc_in sc_lv 16 signal 100 } 
	{ wt_buff_8_1_0_V_r sc_in sc_lv 16 signal 101 } 
	{ wt_buff_8_1_1_V_r sc_in sc_lv 16 signal 102 } 
	{ wt_buff_8_1_2_V_r sc_in sc_lv 16 signal 103 } 
	{ wt_buff_8_2_0_V_r sc_in sc_lv 16 signal 104 } 
	{ wt_buff_8_2_1_V_r sc_in sc_lv 16 signal 105 } 
	{ wt_buff_8_2_2_V_r sc_in sc_lv 16 signal 106 } 
	{ wt_buff_8_3_0_V_r sc_in sc_lv 16 signal 107 } 
	{ wt_buff_8_3_1_V_r sc_in sc_lv 16 signal 108 } 
	{ wt_buff_8_3_2_V_r sc_in sc_lv 16 signal 109 } 
	{ wt_buff_9_0_0_V_r sc_in sc_lv 16 signal 110 } 
	{ wt_buff_9_0_1_V_r sc_in sc_lv 16 signal 111 } 
	{ wt_buff_9_0_2_V_r sc_in sc_lv 16 signal 112 } 
	{ wt_buff_9_1_0_V_r sc_in sc_lv 16 signal 113 } 
	{ wt_buff_9_1_1_V_r sc_in sc_lv 16 signal 114 } 
	{ wt_buff_9_1_2_V_r sc_in sc_lv 16 signal 115 } 
	{ wt_buff_9_2_0_V_r sc_in sc_lv 16 signal 116 } 
	{ wt_buff_9_2_1_V_r sc_in sc_lv 16 signal 117 } 
	{ wt_buff_9_2_2_V_r sc_in sc_lv 16 signal 118 } 
	{ wt_buff_9_3_0_V_r sc_in sc_lv 16 signal 119 } 
	{ wt_buff_9_3_1_V_r sc_in sc_lv 16 signal 120 } 
	{ wt_buff_9_3_2_V_r sc_in sc_lv 16 signal 121 } 
	{ wt_buff_10_0_0_V_s sc_in sc_lv 16 signal 122 } 
	{ wt_buff_10_0_1_V_s sc_in sc_lv 16 signal 123 } 
	{ wt_buff_10_0_2_V_s sc_in sc_lv 16 signal 124 } 
	{ wt_buff_10_1_0_V_s sc_in sc_lv 16 signal 125 } 
	{ wt_buff_10_1_1_V_s sc_in sc_lv 16 signal 126 } 
	{ wt_buff_10_1_2_V_s sc_in sc_lv 16 signal 127 } 
	{ wt_buff_10_2_0_V_s sc_in sc_lv 16 signal 128 } 
	{ wt_buff_10_2_1_V_s sc_in sc_lv 16 signal 129 } 
	{ wt_buff_10_2_2_V_s sc_in sc_lv 16 signal 130 } 
	{ wt_buff_10_3_0_V_s sc_in sc_lv 16 signal 131 } 
	{ wt_buff_10_3_1_V_s sc_in sc_lv 16 signal 132 } 
	{ wt_buff_10_3_2_V_s sc_in sc_lv 16 signal 133 } 
	{ wt_buff_11_0_0_V_s sc_in sc_lv 16 signal 134 } 
	{ wt_buff_11_0_1_V_s sc_in sc_lv 16 signal 135 } 
	{ wt_buff_11_0_2_V_s sc_in sc_lv 16 signal 136 } 
	{ wt_buff_11_1_0_V_s sc_in sc_lv 16 signal 137 } 
	{ wt_buff_11_1_1_V_s sc_in sc_lv 16 signal 138 } 
	{ wt_buff_11_1_2_V_s sc_in sc_lv 16 signal 139 } 
	{ wt_buff_11_2_0_V_s sc_in sc_lv 16 signal 140 } 
	{ wt_buff_11_2_1_V_s sc_in sc_lv 16 signal 141 } 
	{ wt_buff_11_2_2_V_s sc_in sc_lv 16 signal 142 } 
	{ wt_buff_11_3_0_V_s sc_in sc_lv 16 signal 143 } 
	{ wt_buff_11_3_1_V_s sc_in sc_lv 16 signal 144 } 
	{ wt_buff_11_3_2_V_s sc_in sc_lv 16 signal 145 } 
	{ wt_buff_12_0_0_V_s sc_in sc_lv 16 signal 146 } 
	{ wt_buff_12_0_1_V_s sc_in sc_lv 16 signal 147 } 
	{ wt_buff_12_0_2_V_s sc_in sc_lv 16 signal 148 } 
	{ wt_buff_12_1_0_V_s sc_in sc_lv 16 signal 149 } 
	{ wt_buff_12_1_1_V_s sc_in sc_lv 16 signal 150 } 
	{ wt_buff_12_1_2_V_s sc_in sc_lv 16 signal 151 } 
	{ wt_buff_12_2_0_V_s sc_in sc_lv 16 signal 152 } 
	{ wt_buff_12_2_1_V_s sc_in sc_lv 16 signal 153 } 
	{ wt_buff_12_2_2_V_s sc_in sc_lv 16 signal 154 } 
	{ wt_buff_12_3_0_V_s sc_in sc_lv 16 signal 155 } 
	{ wt_buff_12_3_1_V_s sc_in sc_lv 16 signal 156 } 
	{ wt_buff_12_3_2_V_s sc_in sc_lv 16 signal 157 } 
	{ wt_buff_13_0_0_V_s sc_in sc_lv 16 signal 158 } 
	{ wt_buff_13_0_1_V_s sc_in sc_lv 16 signal 159 } 
	{ wt_buff_13_0_2_V_s sc_in sc_lv 16 signal 160 } 
	{ wt_buff_13_1_0_V_s sc_in sc_lv 16 signal 161 } 
	{ wt_buff_13_1_1_V_s sc_in sc_lv 16 signal 162 } 
	{ wt_buff_13_1_2_V_s sc_in sc_lv 16 signal 163 } 
	{ wt_buff_13_2_0_V_s sc_in sc_lv 16 signal 164 } 
	{ wt_buff_13_2_1_V_s sc_in sc_lv 16 signal 165 } 
	{ wt_buff_13_2_2_V_s sc_in sc_lv 16 signal 166 } 
	{ wt_buff_13_3_0_V_s sc_in sc_lv 16 signal 167 } 
	{ wt_buff_13_3_1_V_s sc_in sc_lv 16 signal 168 } 
	{ wt_buff_13_3_2_V_s sc_in sc_lv 16 signal 169 } 
	{ wt_buff_14_0_0_V_s sc_in sc_lv 16 signal 170 } 
	{ wt_buff_14_0_1_V_s sc_in sc_lv 16 signal 171 } 
	{ wt_buff_14_0_2_V_s sc_in sc_lv 16 signal 172 } 
	{ wt_buff_14_1_0_V_s sc_in sc_lv 16 signal 173 } 
	{ wt_buff_14_1_1_V_s sc_in sc_lv 16 signal 174 } 
	{ wt_buff_14_1_2_V_s sc_in sc_lv 16 signal 175 } 
	{ wt_buff_14_2_0_V_s sc_in sc_lv 16 signal 176 } 
	{ wt_buff_14_2_1_V_s sc_in sc_lv 16 signal 177 } 
	{ wt_buff_14_2_2_V_s sc_in sc_lv 16 signal 178 } 
	{ wt_buff_14_3_0_V_s sc_in sc_lv 16 signal 179 } 
	{ wt_buff_14_3_1_V_s sc_in sc_lv 16 signal 180 } 
	{ wt_buff_14_3_2_V_s sc_in sc_lv 16 signal 181 } 
	{ wt_buff_15_0_0_V_s sc_in sc_lv 16 signal 182 } 
	{ wt_buff_15_0_1_V_s sc_in sc_lv 16 signal 183 } 
	{ wt_buff_15_0_2_V_s sc_in sc_lv 16 signal 184 } 
	{ wt_buff_15_1_0_V_s sc_in sc_lv 16 signal 185 } 
	{ wt_buff_15_1_1_V_s sc_in sc_lv 16 signal 186 } 
	{ wt_buff_15_1_2_V_s sc_in sc_lv 16 signal 187 } 
	{ wt_buff_15_2_0_V_s sc_in sc_lv 16 signal 188 } 
	{ wt_buff_15_2_1_V_s sc_in sc_lv 16 signal 189 } 
	{ wt_buff_15_2_2_V_s sc_in sc_lv 16 signal 190 } 
	{ wt_buff_15_3_0_V_s sc_in sc_lv 16 signal 191 } 
	{ wt_buff_15_3_1_V_s sc_in sc_lv 16 signal 192 } 
	{ wt_buff_15_3_2_V_s sc_in sc_lv 16 signal 193 } 
	{ n sc_in sc_lv 32 signal 194 } 
	{ m sc_in sc_lv 32 signal 195 } 
	{ ch_in sc_in sc_lv 32 signal 196 } 
	{ ap_return_0 sc_out sc_lv 16 signal -1 } 
	{ ap_return_1 sc_out sc_lv 16 signal -1 } 
	{ ap_return_2 sc_out sc_lv 16 signal -1 } 
	{ ap_return_3 sc_out sc_lv 16 signal -1 } 
	{ ap_return_4 sc_out sc_lv 16 signal -1 } 
	{ ap_return_5 sc_out sc_lv 16 signal -1 } 
	{ ap_return_6 sc_out sc_lv 16 signal -1 } 
	{ ap_return_7 sc_out sc_lv 16 signal -1 } 
	{ ap_return_8 sc_out sc_lv 16 signal -1 } 
	{ ap_return_9 sc_out sc_lv 16 signal -1 } 
	{ ap_return_10 sc_out sc_lv 16 signal -1 } 
	{ ap_return_11 sc_out sc_lv 16 signal -1 } 
	{ ap_return_12 sc_out sc_lv 16 signal -1 } 
	{ ap_return_13 sc_out sc_lv 16 signal -1 } 
	{ ap_return_14 sc_out sc_lv 16 signal -1 } 
	{ ap_return_15 sc_out sc_lv 16 signal -1 } 
	{ ap_return_16 sc_out sc_lv 16 signal -1 } 
	{ ap_return_17 sc_out sc_lv 16 signal -1 } 
	{ ap_return_18 sc_out sc_lv 16 signal -1 } 
	{ ap_return_19 sc_out sc_lv 16 signal -1 } 
	{ ap_return_20 sc_out sc_lv 16 signal -1 } 
	{ ap_return_21 sc_out sc_lv 16 signal -1 } 
	{ ap_return_22 sc_out sc_lv 16 signal -1 } 
	{ ap_return_23 sc_out sc_lv 16 signal -1 } 
	{ ap_return_24 sc_out sc_lv 16 signal -1 } 
	{ ap_return_25 sc_out sc_lv 16 signal -1 } 
	{ ap_return_26 sc_out sc_lv 16 signal -1 } 
	{ ap_return_27 sc_out sc_lv 16 signal -1 } 
	{ ap_return_28 sc_out sc_lv 16 signal -1 } 
	{ ap_return_29 sc_out sc_lv 16 signal -1 } 
	{ ap_return_30 sc_out sc_lv 16 signal -1 } 
	{ ap_return_31 sc_out sc_lv 16 signal -1 } 
	{ ap_return_32 sc_out sc_lv 16 signal -1 } 
	{ ap_return_33 sc_out sc_lv 16 signal -1 } 
	{ ap_return_34 sc_out sc_lv 16 signal -1 } 
	{ ap_return_35 sc_out sc_lv 16 signal -1 } 
	{ ap_return_36 sc_out sc_lv 16 signal -1 } 
	{ ap_return_37 sc_out sc_lv 16 signal -1 } 
	{ ap_return_38 sc_out sc_lv 16 signal -1 } 
	{ ap_return_39 sc_out sc_lv 16 signal -1 } 
	{ ap_return_40 sc_out sc_lv 16 signal -1 } 
	{ ap_return_41 sc_out sc_lv 16 signal -1 } 
	{ ap_return_42 sc_out sc_lv 16 signal -1 } 
	{ ap_return_43 sc_out sc_lv 16 signal -1 } 
	{ ap_return_44 sc_out sc_lv 16 signal -1 } 
	{ ap_return_45 sc_out sc_lv 16 signal -1 } 
	{ ap_return_46 sc_out sc_lv 16 signal -1 } 
	{ ap_return_47 sc_out sc_lv 16 signal -1 } 
	{ ap_return_48 sc_out sc_lv 16 signal -1 } 
	{ ap_return_49 sc_out sc_lv 16 signal -1 } 
	{ ap_return_50 sc_out sc_lv 16 signal -1 } 
	{ ap_return_51 sc_out sc_lv 16 signal -1 } 
	{ ap_return_52 sc_out sc_lv 16 signal -1 } 
	{ ap_return_53 sc_out sc_lv 16 signal -1 } 
	{ ap_return_54 sc_out sc_lv 16 signal -1 } 
	{ ap_return_55 sc_out sc_lv 16 signal -1 } 
	{ ap_return_56 sc_out sc_lv 16 signal -1 } 
	{ ap_return_57 sc_out sc_lv 16 signal -1 } 
	{ ap_return_58 sc_out sc_lv 16 signal -1 } 
	{ ap_return_59 sc_out sc_lv 16 signal -1 } 
	{ ap_return_60 sc_out sc_lv 16 signal -1 } 
	{ ap_return_61 sc_out sc_lv 16 signal -1 } 
	{ ap_return_62 sc_out sc_lv 16 signal -1 } 
	{ ap_return_63 sc_out sc_lv 16 signal -1 } 
	{ ap_return_64 sc_out sc_lv 16 signal -1 } 
	{ ap_return_65 sc_out sc_lv 16 signal -1 } 
	{ ap_return_66 sc_out sc_lv 16 signal -1 } 
	{ ap_return_67 sc_out sc_lv 16 signal -1 } 
	{ ap_return_68 sc_out sc_lv 16 signal -1 } 
	{ ap_return_69 sc_out sc_lv 16 signal -1 } 
	{ ap_return_70 sc_out sc_lv 16 signal -1 } 
	{ ap_return_71 sc_out sc_lv 16 signal -1 } 
	{ ap_return_72 sc_out sc_lv 16 signal -1 } 
	{ ap_return_73 sc_out sc_lv 16 signal -1 } 
	{ ap_return_74 sc_out sc_lv 16 signal -1 } 
	{ ap_return_75 sc_out sc_lv 16 signal -1 } 
	{ ap_return_76 sc_out sc_lv 16 signal -1 } 
	{ ap_return_77 sc_out sc_lv 16 signal -1 } 
	{ ap_return_78 sc_out sc_lv 16 signal -1 } 
	{ ap_return_79 sc_out sc_lv 16 signal -1 } 
	{ ap_return_80 sc_out sc_lv 16 signal -1 } 
	{ ap_return_81 sc_out sc_lv 16 signal -1 } 
	{ ap_return_82 sc_out sc_lv 16 signal -1 } 
	{ ap_return_83 sc_out sc_lv 16 signal -1 } 
	{ ap_return_84 sc_out sc_lv 16 signal -1 } 
	{ ap_return_85 sc_out sc_lv 16 signal -1 } 
	{ ap_return_86 sc_out sc_lv 16 signal -1 } 
	{ ap_return_87 sc_out sc_lv 16 signal -1 } 
	{ ap_return_88 sc_out sc_lv 16 signal -1 } 
	{ ap_return_89 sc_out sc_lv 16 signal -1 } 
	{ ap_return_90 sc_out sc_lv 16 signal -1 } 
	{ ap_return_91 sc_out sc_lv 16 signal -1 } 
	{ ap_return_92 sc_out sc_lv 16 signal -1 } 
	{ ap_return_93 sc_out sc_lv 16 signal -1 } 
	{ ap_return_94 sc_out sc_lv 16 signal -1 } 
	{ ap_return_95 sc_out sc_lv 16 signal -1 } 
	{ ap_return_96 sc_out sc_lv 16 signal -1 } 
	{ ap_return_97 sc_out sc_lv 16 signal -1 } 
	{ ap_return_98 sc_out sc_lv 16 signal -1 } 
	{ ap_return_99 sc_out sc_lv 16 signal -1 } 
	{ ap_return_100 sc_out sc_lv 16 signal -1 } 
	{ ap_return_101 sc_out sc_lv 16 signal -1 } 
	{ ap_return_102 sc_out sc_lv 16 signal -1 } 
	{ ap_return_103 sc_out sc_lv 16 signal -1 } 
	{ ap_return_104 sc_out sc_lv 16 signal -1 } 
	{ ap_return_105 sc_out sc_lv 16 signal -1 } 
	{ ap_return_106 sc_out sc_lv 16 signal -1 } 
	{ ap_return_107 sc_out sc_lv 16 signal -1 } 
	{ ap_return_108 sc_out sc_lv 16 signal -1 } 
	{ ap_return_109 sc_out sc_lv 16 signal -1 } 
	{ ap_return_110 sc_out sc_lv 16 signal -1 } 
	{ ap_return_111 sc_out sc_lv 16 signal -1 } 
	{ ap_return_112 sc_out sc_lv 16 signal -1 } 
	{ ap_return_113 sc_out sc_lv 16 signal -1 } 
	{ ap_return_114 sc_out sc_lv 16 signal -1 } 
	{ ap_return_115 sc_out sc_lv 16 signal -1 } 
	{ ap_return_116 sc_out sc_lv 16 signal -1 } 
	{ ap_return_117 sc_out sc_lv 16 signal -1 } 
	{ ap_return_118 sc_out sc_lv 16 signal -1 } 
	{ ap_return_119 sc_out sc_lv 16 signal -1 } 
	{ ap_return_120 sc_out sc_lv 16 signal -1 } 
	{ ap_return_121 sc_out sc_lv 16 signal -1 } 
	{ ap_return_122 sc_out sc_lv 16 signal -1 } 
	{ ap_return_123 sc_out sc_lv 16 signal -1 } 
	{ ap_return_124 sc_out sc_lv 16 signal -1 } 
	{ ap_return_125 sc_out sc_lv 16 signal -1 } 
	{ ap_return_126 sc_out sc_lv 16 signal -1 } 
	{ ap_return_127 sc_out sc_lv 16 signal -1 } 
	{ ap_return_128 sc_out sc_lv 16 signal -1 } 
	{ ap_return_129 sc_out sc_lv 16 signal -1 } 
	{ ap_return_130 sc_out sc_lv 16 signal -1 } 
	{ ap_return_131 sc_out sc_lv 16 signal -1 } 
	{ ap_return_132 sc_out sc_lv 16 signal -1 } 
	{ ap_return_133 sc_out sc_lv 16 signal -1 } 
	{ ap_return_134 sc_out sc_lv 16 signal -1 } 
	{ ap_return_135 sc_out sc_lv 16 signal -1 } 
	{ ap_return_136 sc_out sc_lv 16 signal -1 } 
	{ ap_return_137 sc_out sc_lv 16 signal -1 } 
	{ ap_return_138 sc_out sc_lv 16 signal -1 } 
	{ ap_return_139 sc_out sc_lv 16 signal -1 } 
	{ ap_return_140 sc_out sc_lv 16 signal -1 } 
	{ ap_return_141 sc_out sc_lv 16 signal -1 } 
	{ ap_return_142 sc_out sc_lv 16 signal -1 } 
	{ ap_return_143 sc_out sc_lv 16 signal -1 } 
	{ ap_return_144 sc_out sc_lv 16 signal -1 } 
	{ ap_return_145 sc_out sc_lv 16 signal -1 } 
	{ ap_return_146 sc_out sc_lv 16 signal -1 } 
	{ ap_return_147 sc_out sc_lv 16 signal -1 } 
	{ ap_return_148 sc_out sc_lv 16 signal -1 } 
	{ ap_return_149 sc_out sc_lv 16 signal -1 } 
	{ ap_return_150 sc_out sc_lv 16 signal -1 } 
	{ ap_return_151 sc_out sc_lv 16 signal -1 } 
	{ ap_return_152 sc_out sc_lv 16 signal -1 } 
	{ ap_return_153 sc_out sc_lv 16 signal -1 } 
	{ ap_return_154 sc_out sc_lv 16 signal -1 } 
	{ ap_return_155 sc_out sc_lv 16 signal -1 } 
	{ ap_return_156 sc_out sc_lv 16 signal -1 } 
	{ ap_return_157 sc_out sc_lv 16 signal -1 } 
	{ ap_return_158 sc_out sc_lv 16 signal -1 } 
	{ ap_return_159 sc_out sc_lv 16 signal -1 } 
	{ ap_return_160 sc_out sc_lv 16 signal -1 } 
	{ ap_return_161 sc_out sc_lv 16 signal -1 } 
	{ ap_return_162 sc_out sc_lv 16 signal -1 } 
	{ ap_return_163 sc_out sc_lv 16 signal -1 } 
	{ ap_return_164 sc_out sc_lv 16 signal -1 } 
	{ ap_return_165 sc_out sc_lv 16 signal -1 } 
	{ ap_return_166 sc_out sc_lv 16 signal -1 } 
	{ ap_return_167 sc_out sc_lv 16 signal -1 } 
	{ ap_return_168 sc_out sc_lv 16 signal -1 } 
	{ ap_return_169 sc_out sc_lv 16 signal -1 } 
	{ ap_return_170 sc_out sc_lv 16 signal -1 } 
	{ ap_return_171 sc_out sc_lv 16 signal -1 } 
	{ ap_return_172 sc_out sc_lv 16 signal -1 } 
	{ ap_return_173 sc_out sc_lv 16 signal -1 } 
	{ ap_return_174 sc_out sc_lv 16 signal -1 } 
	{ ap_return_175 sc_out sc_lv 16 signal -1 } 
	{ ap_return_176 sc_out sc_lv 16 signal -1 } 
	{ ap_return_177 sc_out sc_lv 16 signal -1 } 
	{ ap_return_178 sc_out sc_lv 16 signal -1 } 
	{ ap_return_179 sc_out sc_lv 16 signal -1 } 
	{ ap_return_180 sc_out sc_lv 16 signal -1 } 
	{ ap_return_181 sc_out sc_lv 16 signal -1 } 
	{ ap_return_182 sc_out sc_lv 16 signal -1 } 
	{ ap_return_183 sc_out sc_lv 16 signal -1 } 
	{ ap_return_184 sc_out sc_lv 16 signal -1 } 
	{ ap_return_185 sc_out sc_lv 16 signal -1 } 
	{ ap_return_186 sc_out sc_lv 16 signal -1 } 
	{ ap_return_187 sc_out sc_lv 16 signal -1 } 
	{ ap_return_188 sc_out sc_lv 16 signal -1 } 
	{ ap_return_189 sc_out sc_lv 16 signal -1 } 
	{ ap_return_190 sc_out sc_lv 16 signal -1 } 
	{ ap_return_191 sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_weight_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_weight_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_weight_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_weight_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "AWID" }} , 
 	{ "name": "m_axi_weight_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_weight_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_weight_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_weight_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_weight_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_weight_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_weight_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_weight_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_weight_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_weight_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_weight_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_weight_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_weight_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_weight_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_weight_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WID" }} , 
 	{ "name": "m_axi_weight_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_weight_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_weight_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_weight_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_weight_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ARID" }} , 
 	{ "name": "m_axi_weight_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_weight_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_weight_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_weight_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_weight_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_weight_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_weight_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_weight_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_weight_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_weight_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_weight_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_weight_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_weight_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_weight_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RID" }} , 
 	{ "name": "m_axi_weight_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_weight_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_weight_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_weight_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_weight_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_weight_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "BID" }} , 
 	{ "name": "m_axi_weight_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "BUSER" }} , 
 	{ "name": "weight_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "weight_V_offset", "role": "default" }} , 
 	{ "name": "wt_buff_0_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_0_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_1_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_2_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_3_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_4_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_5_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_6_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_7_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_8_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_8_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_0_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_0_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_0_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_1_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_1_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_1_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_2_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_2_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_2_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_3_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_3_0_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_3_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_3_1_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_9_3_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_9_3_2_V_r", "role": "default" }} , 
 	{ "name": "wt_buff_10_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_0_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_0_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_0_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_1_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_1_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_1_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_2_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_2_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_2_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_3_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_3_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_10_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_10_3_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_0_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_0_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_0_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_1_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_1_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_1_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_2_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_2_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_2_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_3_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_3_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_11_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_11_3_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_0_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_0_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_0_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_1_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_1_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_1_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_2_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_2_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_2_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_3_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_3_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_12_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_12_3_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_0_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_0_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_0_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_1_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_1_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_1_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_2_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_2_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_2_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_3_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_3_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_13_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_13_3_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_0_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_0_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_0_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_1_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_1_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_1_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_2_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_2_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_2_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_3_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_3_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_14_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_14_3_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_0_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_0_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_0_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_0_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_0_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_0_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_1_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_1_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_1_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_1_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_1_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_1_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_2_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_2_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_2_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_2_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_2_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_2_2_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_3_0_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_3_0_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_3_1_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_3_1_V_s", "role": "default" }} , 
 	{ "name": "wt_buff_15_3_2_V_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_15_3_2_V_s", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "ch_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch_in", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }} , 
 	{ "name": "ap_return_40", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_40", "role": "default" }} , 
 	{ "name": "ap_return_41", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_41", "role": "default" }} , 
 	{ "name": "ap_return_42", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_42", "role": "default" }} , 
 	{ "name": "ap_return_43", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_43", "role": "default" }} , 
 	{ "name": "ap_return_44", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_44", "role": "default" }} , 
 	{ "name": "ap_return_45", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_45", "role": "default" }} , 
 	{ "name": "ap_return_46", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_46", "role": "default" }} , 
 	{ "name": "ap_return_47", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_47", "role": "default" }} , 
 	{ "name": "ap_return_48", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_48", "role": "default" }} , 
 	{ "name": "ap_return_49", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_49", "role": "default" }} , 
 	{ "name": "ap_return_50", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_50", "role": "default" }} , 
 	{ "name": "ap_return_51", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_51", "role": "default" }} , 
 	{ "name": "ap_return_52", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_52", "role": "default" }} , 
 	{ "name": "ap_return_53", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_53", "role": "default" }} , 
 	{ "name": "ap_return_54", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_54", "role": "default" }} , 
 	{ "name": "ap_return_55", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_55", "role": "default" }} , 
 	{ "name": "ap_return_56", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_56", "role": "default" }} , 
 	{ "name": "ap_return_57", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_57", "role": "default" }} , 
 	{ "name": "ap_return_58", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_58", "role": "default" }} , 
 	{ "name": "ap_return_59", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_59", "role": "default" }} , 
 	{ "name": "ap_return_60", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_60", "role": "default" }} , 
 	{ "name": "ap_return_61", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_61", "role": "default" }} , 
 	{ "name": "ap_return_62", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_62", "role": "default" }} , 
 	{ "name": "ap_return_63", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_63", "role": "default" }} , 
 	{ "name": "ap_return_64", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_64", "role": "default" }} , 
 	{ "name": "ap_return_65", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_65", "role": "default" }} , 
 	{ "name": "ap_return_66", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_66", "role": "default" }} , 
 	{ "name": "ap_return_67", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_67", "role": "default" }} , 
 	{ "name": "ap_return_68", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_68", "role": "default" }} , 
 	{ "name": "ap_return_69", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_69", "role": "default" }} , 
 	{ "name": "ap_return_70", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_70", "role": "default" }} , 
 	{ "name": "ap_return_71", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_71", "role": "default" }} , 
 	{ "name": "ap_return_72", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_72", "role": "default" }} , 
 	{ "name": "ap_return_73", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_73", "role": "default" }} , 
 	{ "name": "ap_return_74", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_74", "role": "default" }} , 
 	{ "name": "ap_return_75", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_75", "role": "default" }} , 
 	{ "name": "ap_return_76", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_76", "role": "default" }} , 
 	{ "name": "ap_return_77", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_77", "role": "default" }} , 
 	{ "name": "ap_return_78", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_78", "role": "default" }} , 
 	{ "name": "ap_return_79", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_79", "role": "default" }} , 
 	{ "name": "ap_return_80", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_80", "role": "default" }} , 
 	{ "name": "ap_return_81", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_81", "role": "default" }} , 
 	{ "name": "ap_return_82", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_82", "role": "default" }} , 
 	{ "name": "ap_return_83", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_83", "role": "default" }} , 
 	{ "name": "ap_return_84", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_84", "role": "default" }} , 
 	{ "name": "ap_return_85", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_85", "role": "default" }} , 
 	{ "name": "ap_return_86", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_86", "role": "default" }} , 
 	{ "name": "ap_return_87", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_87", "role": "default" }} , 
 	{ "name": "ap_return_88", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_88", "role": "default" }} , 
 	{ "name": "ap_return_89", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_89", "role": "default" }} , 
 	{ "name": "ap_return_90", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_90", "role": "default" }} , 
 	{ "name": "ap_return_91", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_91", "role": "default" }} , 
 	{ "name": "ap_return_92", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_92", "role": "default" }} , 
 	{ "name": "ap_return_93", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_93", "role": "default" }} , 
 	{ "name": "ap_return_94", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_94", "role": "default" }} , 
 	{ "name": "ap_return_95", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_95", "role": "default" }} , 
 	{ "name": "ap_return_96", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_96", "role": "default" }} , 
 	{ "name": "ap_return_97", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_97", "role": "default" }} , 
 	{ "name": "ap_return_98", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_98", "role": "default" }} , 
 	{ "name": "ap_return_99", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_99", "role": "default" }} , 
 	{ "name": "ap_return_100", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_100", "role": "default" }} , 
 	{ "name": "ap_return_101", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_101", "role": "default" }} , 
 	{ "name": "ap_return_102", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_102", "role": "default" }} , 
 	{ "name": "ap_return_103", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_103", "role": "default" }} , 
 	{ "name": "ap_return_104", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_104", "role": "default" }} , 
 	{ "name": "ap_return_105", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_105", "role": "default" }} , 
 	{ "name": "ap_return_106", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_106", "role": "default" }} , 
 	{ "name": "ap_return_107", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_107", "role": "default" }} , 
 	{ "name": "ap_return_108", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_108", "role": "default" }} , 
 	{ "name": "ap_return_109", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_109", "role": "default" }} , 
 	{ "name": "ap_return_110", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_110", "role": "default" }} , 
 	{ "name": "ap_return_111", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_111", "role": "default" }} , 
 	{ "name": "ap_return_112", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_112", "role": "default" }} , 
 	{ "name": "ap_return_113", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_113", "role": "default" }} , 
 	{ "name": "ap_return_114", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_114", "role": "default" }} , 
 	{ "name": "ap_return_115", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_115", "role": "default" }} , 
 	{ "name": "ap_return_116", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_116", "role": "default" }} , 
 	{ "name": "ap_return_117", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_117", "role": "default" }} , 
 	{ "name": "ap_return_118", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_118", "role": "default" }} , 
 	{ "name": "ap_return_119", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_119", "role": "default" }} , 
 	{ "name": "ap_return_120", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_120", "role": "default" }} , 
 	{ "name": "ap_return_121", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_121", "role": "default" }} , 
 	{ "name": "ap_return_122", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_122", "role": "default" }} , 
 	{ "name": "ap_return_123", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_123", "role": "default" }} , 
 	{ "name": "ap_return_124", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_124", "role": "default" }} , 
 	{ "name": "ap_return_125", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_125", "role": "default" }} , 
 	{ "name": "ap_return_126", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_126", "role": "default" }} , 
 	{ "name": "ap_return_127", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_127", "role": "default" }} , 
 	{ "name": "ap_return_128", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_128", "role": "default" }} , 
 	{ "name": "ap_return_129", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_129", "role": "default" }} , 
 	{ "name": "ap_return_130", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_130", "role": "default" }} , 
 	{ "name": "ap_return_131", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_131", "role": "default" }} , 
 	{ "name": "ap_return_132", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_132", "role": "default" }} , 
 	{ "name": "ap_return_133", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_133", "role": "default" }} , 
 	{ "name": "ap_return_134", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_134", "role": "default" }} , 
 	{ "name": "ap_return_135", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_135", "role": "default" }} , 
 	{ "name": "ap_return_136", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_136", "role": "default" }} , 
 	{ "name": "ap_return_137", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_137", "role": "default" }} , 
 	{ "name": "ap_return_138", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_138", "role": "default" }} , 
 	{ "name": "ap_return_139", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_139", "role": "default" }} , 
 	{ "name": "ap_return_140", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_140", "role": "default" }} , 
 	{ "name": "ap_return_141", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_141", "role": "default" }} , 
 	{ "name": "ap_return_142", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_142", "role": "default" }} , 
 	{ "name": "ap_return_143", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_143", "role": "default" }} , 
 	{ "name": "ap_return_144", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_144", "role": "default" }} , 
 	{ "name": "ap_return_145", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_145", "role": "default" }} , 
 	{ "name": "ap_return_146", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_146", "role": "default" }} , 
 	{ "name": "ap_return_147", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_147", "role": "default" }} , 
 	{ "name": "ap_return_148", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_148", "role": "default" }} , 
 	{ "name": "ap_return_149", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_149", "role": "default" }} , 
 	{ "name": "ap_return_150", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_150", "role": "default" }} , 
 	{ "name": "ap_return_151", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_151", "role": "default" }} , 
 	{ "name": "ap_return_152", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_152", "role": "default" }} , 
 	{ "name": "ap_return_153", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_153", "role": "default" }} , 
 	{ "name": "ap_return_154", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_154", "role": "default" }} , 
 	{ "name": "ap_return_155", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_155", "role": "default" }} , 
 	{ "name": "ap_return_156", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_156", "role": "default" }} , 
 	{ "name": "ap_return_157", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_157", "role": "default" }} , 
 	{ "name": "ap_return_158", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_158", "role": "default" }} , 
 	{ "name": "ap_return_159", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_159", "role": "default" }} , 
 	{ "name": "ap_return_160", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_160", "role": "default" }} , 
 	{ "name": "ap_return_161", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_161", "role": "default" }} , 
 	{ "name": "ap_return_162", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_162", "role": "default" }} , 
 	{ "name": "ap_return_163", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_163", "role": "default" }} , 
 	{ "name": "ap_return_164", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_164", "role": "default" }} , 
 	{ "name": "ap_return_165", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_165", "role": "default" }} , 
 	{ "name": "ap_return_166", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_166", "role": "default" }} , 
 	{ "name": "ap_return_167", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_167", "role": "default" }} , 
 	{ "name": "ap_return_168", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_168", "role": "default" }} , 
 	{ "name": "ap_return_169", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_169", "role": "default" }} , 
 	{ "name": "ap_return_170", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_170", "role": "default" }} , 
 	{ "name": "ap_return_171", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_171", "role": "default" }} , 
 	{ "name": "ap_return_172", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_172", "role": "default" }} , 
 	{ "name": "ap_return_173", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_173", "role": "default" }} , 
 	{ "name": "ap_return_174", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_174", "role": "default" }} , 
 	{ "name": "ap_return_175", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_175", "role": "default" }} , 
 	{ "name": "ap_return_176", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_176", "role": "default" }} , 
 	{ "name": "ap_return_177", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_177", "role": "default" }} , 
 	{ "name": "ap_return_178", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_178", "role": "default" }} , 
 	{ "name": "ap_return_179", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_179", "role": "default" }} , 
 	{ "name": "ap_return_180", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_180", "role": "default" }} , 
 	{ "name": "ap_return_181", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_181", "role": "default" }} , 
 	{ "name": "ap_return_182", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_182", "role": "default" }} , 
 	{ "name": "ap_return_183", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_183", "role": "default" }} , 
 	{ "name": "ap_return_184", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_184", "role": "default" }} , 
 	{ "name": "ap_return_185", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_185", "role": "default" }} , 
 	{ "name": "ap_return_186", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_186", "role": "default" }} , 
 	{ "name": "ap_return_187", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_187", "role": "default" }} , 
 	{ "name": "ap_return_188", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_188", "role": "default" }} , 
 	{ "name": "ap_return_189", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_189", "role": "default" }} , 
 	{ "name": "ap_return_190", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_190", "role": "default" }} , 
 	{ "name": "ap_return_191", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_191", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "load_weight",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "213", "EstimateLatencyMax" : "213",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weight_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weight_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weight_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_1_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_2_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_3_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_4_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_5_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_6_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_7_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_8_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_3_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_3_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_9_3_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_10_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_11_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_12_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_13_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_14_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_0_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_0_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_0_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_1_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_1_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_1_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_2_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_2_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_2_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_3_0_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_3_1_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_15_3_2_V_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_in", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_urem_8ns_3dEe_U47", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_weight {
		weight_V {Type I LastRead 20 FirstWrite -1}
		weight_V_offset {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_0_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_1_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_2_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_3_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_4_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_5_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_6_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_7_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_8_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_3_0_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_3_1_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_9_3_2_V_r {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_10_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_11_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_12_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_13_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_14_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_0_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_0_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_0_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_1_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_1_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_1_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_2_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_2_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_2_2_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_3_0_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_3_1_V_s {Type I LastRead 0 FirstWrite -1}
		wt_buff_15_3_2_V_s {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		ch_in {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "213", "Max" : "213"}
	, {"Name" : "Interval", "Min" : "213", "Max" : "213"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	weight_V { m_axi {  { m_axi_weight_V_AWVALID VALID 1 1 }  { m_axi_weight_V_AWREADY READY 0 1 }  { m_axi_weight_V_AWADDR ADDR 1 32 }  { m_axi_weight_V_AWID ID 1 1 }  { m_axi_weight_V_AWLEN LEN 1 32 }  { m_axi_weight_V_AWSIZE SIZE 1 3 }  { m_axi_weight_V_AWBURST BURST 1 2 }  { m_axi_weight_V_AWLOCK LOCK 1 2 }  { m_axi_weight_V_AWCACHE CACHE 1 4 }  { m_axi_weight_V_AWPROT PROT 1 3 }  { m_axi_weight_V_AWQOS QOS 1 4 }  { m_axi_weight_V_AWREGION REGION 1 4 }  { m_axi_weight_V_AWUSER USER 1 1 }  { m_axi_weight_V_WVALID VALID 1 1 }  { m_axi_weight_V_WREADY READY 0 1 }  { m_axi_weight_V_WDATA DATA 1 16 }  { m_axi_weight_V_WSTRB STRB 1 2 }  { m_axi_weight_V_WLAST LAST 1 1 }  { m_axi_weight_V_WID ID 1 1 }  { m_axi_weight_V_WUSER USER 1 1 }  { m_axi_weight_V_ARVALID VALID 1 1 }  { m_axi_weight_V_ARREADY READY 0 1 }  { m_axi_weight_V_ARADDR ADDR 1 32 }  { m_axi_weight_V_ARID ID 1 1 }  { m_axi_weight_V_ARLEN LEN 1 32 }  { m_axi_weight_V_ARSIZE SIZE 1 3 }  { m_axi_weight_V_ARBURST BURST 1 2 }  { m_axi_weight_V_ARLOCK LOCK 1 2 }  { m_axi_weight_V_ARCACHE CACHE 1 4 }  { m_axi_weight_V_ARPROT PROT 1 3 }  { m_axi_weight_V_ARQOS QOS 1 4 }  { m_axi_weight_V_ARREGION REGION 1 4 }  { m_axi_weight_V_ARUSER USER 1 1 }  { m_axi_weight_V_RVALID VALID 0 1 }  { m_axi_weight_V_RREADY READY 1 1 }  { m_axi_weight_V_RDATA DATA 0 16 }  { m_axi_weight_V_RLAST LAST 0 1 }  { m_axi_weight_V_RID ID 0 1 }  { m_axi_weight_V_RUSER USER 0 1 }  { m_axi_weight_V_RRESP RESP 0 2 }  { m_axi_weight_V_BVALID VALID 0 1 }  { m_axi_weight_V_BREADY READY 1 1 }  { m_axi_weight_V_BRESP RESP 0 2 }  { m_axi_weight_V_BID ID 0 1 }  { m_axi_weight_V_BUSER USER 0 1 } } }
	weight_V_offset { ap_none {  { weight_V_offset in_data 0 31 } } }
	wt_buff_0_0_0_V_r { ap_none {  { wt_buff_0_0_0_V_r in_data 0 16 } } }
	wt_buff_0_0_1_V_r { ap_none {  { wt_buff_0_0_1_V_r in_data 0 16 } } }
	wt_buff_0_0_2_V_r { ap_none {  { wt_buff_0_0_2_V_r in_data 0 16 } } }
	wt_buff_0_1_0_V_r { ap_none {  { wt_buff_0_1_0_V_r in_data 0 16 } } }
	wt_buff_0_1_1_V_r { ap_none {  { wt_buff_0_1_1_V_r in_data 0 16 } } }
	wt_buff_0_1_2_V_r { ap_none {  { wt_buff_0_1_2_V_r in_data 0 16 } } }
	wt_buff_0_2_0_V_r { ap_none {  { wt_buff_0_2_0_V_r in_data 0 16 } } }
	wt_buff_0_2_1_V_r { ap_none {  { wt_buff_0_2_1_V_r in_data 0 16 } } }
	wt_buff_0_2_2_V_r { ap_none {  { wt_buff_0_2_2_V_r in_data 0 16 } } }
	wt_buff_0_3_0_V_r { ap_none {  { wt_buff_0_3_0_V_r in_data 0 16 } } }
	wt_buff_0_3_1_V_r { ap_none {  { wt_buff_0_3_1_V_r in_data 0 16 } } }
	wt_buff_0_3_2_V_r { ap_none {  { wt_buff_0_3_2_V_r in_data 0 16 } } }
	wt_buff_1_0_0_V_r { ap_none {  { wt_buff_1_0_0_V_r in_data 0 16 } } }
	wt_buff_1_0_1_V_r { ap_none {  { wt_buff_1_0_1_V_r in_data 0 16 } } }
	wt_buff_1_0_2_V_r { ap_none {  { wt_buff_1_0_2_V_r in_data 0 16 } } }
	wt_buff_1_1_0_V_r { ap_none {  { wt_buff_1_1_0_V_r in_data 0 16 } } }
	wt_buff_1_1_1_V_r { ap_none {  { wt_buff_1_1_1_V_r in_data 0 16 } } }
	wt_buff_1_1_2_V_r { ap_none {  { wt_buff_1_1_2_V_r in_data 0 16 } } }
	wt_buff_1_2_0_V_r { ap_none {  { wt_buff_1_2_0_V_r in_data 0 16 } } }
	wt_buff_1_2_1_V_r { ap_none {  { wt_buff_1_2_1_V_r in_data 0 16 } } }
	wt_buff_1_2_2_V_r { ap_none {  { wt_buff_1_2_2_V_r in_data 0 16 } } }
	wt_buff_1_3_0_V_r { ap_none {  { wt_buff_1_3_0_V_r in_data 0 16 } } }
	wt_buff_1_3_1_V_r { ap_none {  { wt_buff_1_3_1_V_r in_data 0 16 } } }
	wt_buff_1_3_2_V_r { ap_none {  { wt_buff_1_3_2_V_r in_data 0 16 } } }
	wt_buff_2_0_0_V_r { ap_none {  { wt_buff_2_0_0_V_r in_data 0 16 } } }
	wt_buff_2_0_1_V_r { ap_none {  { wt_buff_2_0_1_V_r in_data 0 16 } } }
	wt_buff_2_0_2_V_r { ap_none {  { wt_buff_2_0_2_V_r in_data 0 16 } } }
	wt_buff_2_1_0_V_r { ap_none {  { wt_buff_2_1_0_V_r in_data 0 16 } } }
	wt_buff_2_1_1_V_r { ap_none {  { wt_buff_2_1_1_V_r in_data 0 16 } } }
	wt_buff_2_1_2_V_r { ap_none {  { wt_buff_2_1_2_V_r in_data 0 16 } } }
	wt_buff_2_2_0_V_r { ap_none {  { wt_buff_2_2_0_V_r in_data 0 16 } } }
	wt_buff_2_2_1_V_r { ap_none {  { wt_buff_2_2_1_V_r in_data 0 16 } } }
	wt_buff_2_2_2_V_r { ap_none {  { wt_buff_2_2_2_V_r in_data 0 16 } } }
	wt_buff_2_3_0_V_r { ap_none {  { wt_buff_2_3_0_V_r in_data 0 16 } } }
	wt_buff_2_3_1_V_r { ap_none {  { wt_buff_2_3_1_V_r in_data 0 16 } } }
	wt_buff_2_3_2_V_r { ap_none {  { wt_buff_2_3_2_V_r in_data 0 16 } } }
	wt_buff_3_0_0_V_r { ap_none {  { wt_buff_3_0_0_V_r in_data 0 16 } } }
	wt_buff_3_0_1_V_r { ap_none {  { wt_buff_3_0_1_V_r in_data 0 16 } } }
	wt_buff_3_0_2_V_r { ap_none {  { wt_buff_3_0_2_V_r in_data 0 16 } } }
	wt_buff_3_1_0_V_r { ap_none {  { wt_buff_3_1_0_V_r in_data 0 16 } } }
	wt_buff_3_1_1_V_r { ap_none {  { wt_buff_3_1_1_V_r in_data 0 16 } } }
	wt_buff_3_1_2_V_r { ap_none {  { wt_buff_3_1_2_V_r in_data 0 16 } } }
	wt_buff_3_2_0_V_r { ap_none {  { wt_buff_3_2_0_V_r in_data 0 16 } } }
	wt_buff_3_2_1_V_r { ap_none {  { wt_buff_3_2_1_V_r in_data 0 16 } } }
	wt_buff_3_2_2_V_r { ap_none {  { wt_buff_3_2_2_V_r in_data 0 16 } } }
	wt_buff_3_3_0_V_r { ap_none {  { wt_buff_3_3_0_V_r in_data 0 16 } } }
	wt_buff_3_3_1_V_r { ap_none {  { wt_buff_3_3_1_V_r in_data 0 16 } } }
	wt_buff_3_3_2_V_r { ap_none {  { wt_buff_3_3_2_V_r in_data 0 16 } } }
	wt_buff_4_0_0_V_r { ap_none {  { wt_buff_4_0_0_V_r in_data 0 16 } } }
	wt_buff_4_0_1_V_r { ap_none {  { wt_buff_4_0_1_V_r in_data 0 16 } } }
	wt_buff_4_0_2_V_r { ap_none {  { wt_buff_4_0_2_V_r in_data 0 16 } } }
	wt_buff_4_1_0_V_r { ap_none {  { wt_buff_4_1_0_V_r in_data 0 16 } } }
	wt_buff_4_1_1_V_r { ap_none {  { wt_buff_4_1_1_V_r in_data 0 16 } } }
	wt_buff_4_1_2_V_r { ap_none {  { wt_buff_4_1_2_V_r in_data 0 16 } } }
	wt_buff_4_2_0_V_r { ap_none {  { wt_buff_4_2_0_V_r in_data 0 16 } } }
	wt_buff_4_2_1_V_r { ap_none {  { wt_buff_4_2_1_V_r in_data 0 16 } } }
	wt_buff_4_2_2_V_r { ap_none {  { wt_buff_4_2_2_V_r in_data 0 16 } } }
	wt_buff_4_3_0_V_r { ap_none {  { wt_buff_4_3_0_V_r in_data 0 16 } } }
	wt_buff_4_3_1_V_r { ap_none {  { wt_buff_4_3_1_V_r in_data 0 16 } } }
	wt_buff_4_3_2_V_r { ap_none {  { wt_buff_4_3_2_V_r in_data 0 16 } } }
	wt_buff_5_0_0_V_r { ap_none {  { wt_buff_5_0_0_V_r in_data 0 16 } } }
	wt_buff_5_0_1_V_r { ap_none {  { wt_buff_5_0_1_V_r in_data 0 16 } } }
	wt_buff_5_0_2_V_r { ap_none {  { wt_buff_5_0_2_V_r in_data 0 16 } } }
	wt_buff_5_1_0_V_r { ap_none {  { wt_buff_5_1_0_V_r in_data 0 16 } } }
	wt_buff_5_1_1_V_r { ap_none {  { wt_buff_5_1_1_V_r in_data 0 16 } } }
	wt_buff_5_1_2_V_r { ap_none {  { wt_buff_5_1_2_V_r in_data 0 16 } } }
	wt_buff_5_2_0_V_r { ap_none {  { wt_buff_5_2_0_V_r in_data 0 16 } } }
	wt_buff_5_2_1_V_r { ap_none {  { wt_buff_5_2_1_V_r in_data 0 16 } } }
	wt_buff_5_2_2_V_r { ap_none {  { wt_buff_5_2_2_V_r in_data 0 16 } } }
	wt_buff_5_3_0_V_r { ap_none {  { wt_buff_5_3_0_V_r in_data 0 16 } } }
	wt_buff_5_3_1_V_r { ap_none {  { wt_buff_5_3_1_V_r in_data 0 16 } } }
	wt_buff_5_3_2_V_r { ap_none {  { wt_buff_5_3_2_V_r in_data 0 16 } } }
	wt_buff_6_0_0_V_r { ap_none {  { wt_buff_6_0_0_V_r in_data 0 16 } } }
	wt_buff_6_0_1_V_r { ap_none {  { wt_buff_6_0_1_V_r in_data 0 16 } } }
	wt_buff_6_0_2_V_r { ap_none {  { wt_buff_6_0_2_V_r in_data 0 16 } } }
	wt_buff_6_1_0_V_r { ap_none {  { wt_buff_6_1_0_V_r in_data 0 16 } } }
	wt_buff_6_1_1_V_r { ap_none {  { wt_buff_6_1_1_V_r in_data 0 16 } } }
	wt_buff_6_1_2_V_r { ap_none {  { wt_buff_6_1_2_V_r in_data 0 16 } } }
	wt_buff_6_2_0_V_r { ap_none {  { wt_buff_6_2_0_V_r in_data 0 16 } } }
	wt_buff_6_2_1_V_r { ap_none {  { wt_buff_6_2_1_V_r in_data 0 16 } } }
	wt_buff_6_2_2_V_r { ap_none {  { wt_buff_6_2_2_V_r in_data 0 16 } } }
	wt_buff_6_3_0_V_r { ap_none {  { wt_buff_6_3_0_V_r in_data 0 16 } } }
	wt_buff_6_3_1_V_r { ap_none {  { wt_buff_6_3_1_V_r in_data 0 16 } } }
	wt_buff_6_3_2_V_r { ap_none {  { wt_buff_6_3_2_V_r in_data 0 16 } } }
	wt_buff_7_0_0_V_r { ap_none {  { wt_buff_7_0_0_V_r in_data 0 16 } } }
	wt_buff_7_0_1_V_r { ap_none {  { wt_buff_7_0_1_V_r in_data 0 16 } } }
	wt_buff_7_0_2_V_r { ap_none {  { wt_buff_7_0_2_V_r in_data 0 16 } } }
	wt_buff_7_1_0_V_r { ap_none {  { wt_buff_7_1_0_V_r in_data 0 16 } } }
	wt_buff_7_1_1_V_r { ap_none {  { wt_buff_7_1_1_V_r in_data 0 16 } } }
	wt_buff_7_1_2_V_r { ap_none {  { wt_buff_7_1_2_V_r in_data 0 16 } } }
	wt_buff_7_2_0_V_r { ap_none {  { wt_buff_7_2_0_V_r in_data 0 16 } } }
	wt_buff_7_2_1_V_r { ap_none {  { wt_buff_7_2_1_V_r in_data 0 16 } } }
	wt_buff_7_2_2_V_r { ap_none {  { wt_buff_7_2_2_V_r in_data 0 16 } } }
	wt_buff_7_3_0_V_r { ap_none {  { wt_buff_7_3_0_V_r in_data 0 16 } } }
	wt_buff_7_3_1_V_r { ap_none {  { wt_buff_7_3_1_V_r in_data 0 16 } } }
	wt_buff_7_3_2_V_r { ap_none {  { wt_buff_7_3_2_V_r in_data 0 16 } } }
	wt_buff_8_0_0_V_r { ap_none {  { wt_buff_8_0_0_V_r in_data 0 16 } } }
	wt_buff_8_0_1_V_r { ap_none {  { wt_buff_8_0_1_V_r in_data 0 16 } } }
	wt_buff_8_0_2_V_r { ap_none {  { wt_buff_8_0_2_V_r in_data 0 16 } } }
	wt_buff_8_1_0_V_r { ap_none {  { wt_buff_8_1_0_V_r in_data 0 16 } } }
	wt_buff_8_1_1_V_r { ap_none {  { wt_buff_8_1_1_V_r in_data 0 16 } } }
	wt_buff_8_1_2_V_r { ap_none {  { wt_buff_8_1_2_V_r in_data 0 16 } } }
	wt_buff_8_2_0_V_r { ap_none {  { wt_buff_8_2_0_V_r in_data 0 16 } } }
	wt_buff_8_2_1_V_r { ap_none {  { wt_buff_8_2_1_V_r in_data 0 16 } } }
	wt_buff_8_2_2_V_r { ap_none {  { wt_buff_8_2_2_V_r in_data 0 16 } } }
	wt_buff_8_3_0_V_r { ap_none {  { wt_buff_8_3_0_V_r in_data 0 16 } } }
	wt_buff_8_3_1_V_r { ap_none {  { wt_buff_8_3_1_V_r in_data 0 16 } } }
	wt_buff_8_3_2_V_r { ap_none {  { wt_buff_8_3_2_V_r in_data 0 16 } } }
	wt_buff_9_0_0_V_r { ap_none {  { wt_buff_9_0_0_V_r in_data 0 16 } } }
	wt_buff_9_0_1_V_r { ap_none {  { wt_buff_9_0_1_V_r in_data 0 16 } } }
	wt_buff_9_0_2_V_r { ap_none {  { wt_buff_9_0_2_V_r in_data 0 16 } } }
	wt_buff_9_1_0_V_r { ap_none {  { wt_buff_9_1_0_V_r in_data 0 16 } } }
	wt_buff_9_1_1_V_r { ap_none {  { wt_buff_9_1_1_V_r in_data 0 16 } } }
	wt_buff_9_1_2_V_r { ap_none {  { wt_buff_9_1_2_V_r in_data 0 16 } } }
	wt_buff_9_2_0_V_r { ap_none {  { wt_buff_9_2_0_V_r in_data 0 16 } } }
	wt_buff_9_2_1_V_r { ap_none {  { wt_buff_9_2_1_V_r in_data 0 16 } } }
	wt_buff_9_2_2_V_r { ap_none {  { wt_buff_9_2_2_V_r in_data 0 16 } } }
	wt_buff_9_3_0_V_r { ap_none {  { wt_buff_9_3_0_V_r in_data 0 16 } } }
	wt_buff_9_3_1_V_r { ap_none {  { wt_buff_9_3_1_V_r in_data 0 16 } } }
	wt_buff_9_3_2_V_r { ap_none {  { wt_buff_9_3_2_V_r in_data 0 16 } } }
	wt_buff_10_0_0_V_s { ap_none {  { wt_buff_10_0_0_V_s in_data 0 16 } } }
	wt_buff_10_0_1_V_s { ap_none {  { wt_buff_10_0_1_V_s in_data 0 16 } } }
	wt_buff_10_0_2_V_s { ap_none {  { wt_buff_10_0_2_V_s in_data 0 16 } } }
	wt_buff_10_1_0_V_s { ap_none {  { wt_buff_10_1_0_V_s in_data 0 16 } } }
	wt_buff_10_1_1_V_s { ap_none {  { wt_buff_10_1_1_V_s in_data 0 16 } } }
	wt_buff_10_1_2_V_s { ap_none {  { wt_buff_10_1_2_V_s in_data 0 16 } } }
	wt_buff_10_2_0_V_s { ap_none {  { wt_buff_10_2_0_V_s in_data 0 16 } } }
	wt_buff_10_2_1_V_s { ap_none {  { wt_buff_10_2_1_V_s in_data 0 16 } } }
	wt_buff_10_2_2_V_s { ap_none {  { wt_buff_10_2_2_V_s in_data 0 16 } } }
	wt_buff_10_3_0_V_s { ap_none {  { wt_buff_10_3_0_V_s in_data 0 16 } } }
	wt_buff_10_3_1_V_s { ap_none {  { wt_buff_10_3_1_V_s in_data 0 16 } } }
	wt_buff_10_3_2_V_s { ap_none {  { wt_buff_10_3_2_V_s in_data 0 16 } } }
	wt_buff_11_0_0_V_s { ap_none {  { wt_buff_11_0_0_V_s in_data 0 16 } } }
	wt_buff_11_0_1_V_s { ap_none {  { wt_buff_11_0_1_V_s in_data 0 16 } } }
	wt_buff_11_0_2_V_s { ap_none {  { wt_buff_11_0_2_V_s in_data 0 16 } } }
	wt_buff_11_1_0_V_s { ap_none {  { wt_buff_11_1_0_V_s in_data 0 16 } } }
	wt_buff_11_1_1_V_s { ap_none {  { wt_buff_11_1_1_V_s in_data 0 16 } } }
	wt_buff_11_1_2_V_s { ap_none {  { wt_buff_11_1_2_V_s in_data 0 16 } } }
	wt_buff_11_2_0_V_s { ap_none {  { wt_buff_11_2_0_V_s in_data 0 16 } } }
	wt_buff_11_2_1_V_s { ap_none {  { wt_buff_11_2_1_V_s in_data 0 16 } } }
	wt_buff_11_2_2_V_s { ap_none {  { wt_buff_11_2_2_V_s in_data 0 16 } } }
	wt_buff_11_3_0_V_s { ap_none {  { wt_buff_11_3_0_V_s in_data 0 16 } } }
	wt_buff_11_3_1_V_s { ap_none {  { wt_buff_11_3_1_V_s in_data 0 16 } } }
	wt_buff_11_3_2_V_s { ap_none {  { wt_buff_11_3_2_V_s in_data 0 16 } } }
	wt_buff_12_0_0_V_s { ap_none {  { wt_buff_12_0_0_V_s in_data 0 16 } } }
	wt_buff_12_0_1_V_s { ap_none {  { wt_buff_12_0_1_V_s in_data 0 16 } } }
	wt_buff_12_0_2_V_s { ap_none {  { wt_buff_12_0_2_V_s in_data 0 16 } } }
	wt_buff_12_1_0_V_s { ap_none {  { wt_buff_12_1_0_V_s in_data 0 16 } } }
	wt_buff_12_1_1_V_s { ap_none {  { wt_buff_12_1_1_V_s in_data 0 16 } } }
	wt_buff_12_1_2_V_s { ap_none {  { wt_buff_12_1_2_V_s in_data 0 16 } } }
	wt_buff_12_2_0_V_s { ap_none {  { wt_buff_12_2_0_V_s in_data 0 16 } } }
	wt_buff_12_2_1_V_s { ap_none {  { wt_buff_12_2_1_V_s in_data 0 16 } } }
	wt_buff_12_2_2_V_s { ap_none {  { wt_buff_12_2_2_V_s in_data 0 16 } } }
	wt_buff_12_3_0_V_s { ap_none {  { wt_buff_12_3_0_V_s in_data 0 16 } } }
	wt_buff_12_3_1_V_s { ap_none {  { wt_buff_12_3_1_V_s in_data 0 16 } } }
	wt_buff_12_3_2_V_s { ap_none {  { wt_buff_12_3_2_V_s in_data 0 16 } } }
	wt_buff_13_0_0_V_s { ap_none {  { wt_buff_13_0_0_V_s in_data 0 16 } } }
	wt_buff_13_0_1_V_s { ap_none {  { wt_buff_13_0_1_V_s in_data 0 16 } } }
	wt_buff_13_0_2_V_s { ap_none {  { wt_buff_13_0_2_V_s in_data 0 16 } } }
	wt_buff_13_1_0_V_s { ap_none {  { wt_buff_13_1_0_V_s in_data 0 16 } } }
	wt_buff_13_1_1_V_s { ap_none {  { wt_buff_13_1_1_V_s in_data 0 16 } } }
	wt_buff_13_1_2_V_s { ap_none {  { wt_buff_13_1_2_V_s in_data 0 16 } } }
	wt_buff_13_2_0_V_s { ap_none {  { wt_buff_13_2_0_V_s in_data 0 16 } } }
	wt_buff_13_2_1_V_s { ap_none {  { wt_buff_13_2_1_V_s in_data 0 16 } } }
	wt_buff_13_2_2_V_s { ap_none {  { wt_buff_13_2_2_V_s in_data 0 16 } } }
	wt_buff_13_3_0_V_s { ap_none {  { wt_buff_13_3_0_V_s in_data 0 16 } } }
	wt_buff_13_3_1_V_s { ap_none {  { wt_buff_13_3_1_V_s in_data 0 16 } } }
	wt_buff_13_3_2_V_s { ap_none {  { wt_buff_13_3_2_V_s in_data 0 16 } } }
	wt_buff_14_0_0_V_s { ap_none {  { wt_buff_14_0_0_V_s in_data 0 16 } } }
	wt_buff_14_0_1_V_s { ap_none {  { wt_buff_14_0_1_V_s in_data 0 16 } } }
	wt_buff_14_0_2_V_s { ap_none {  { wt_buff_14_0_2_V_s in_data 0 16 } } }
	wt_buff_14_1_0_V_s { ap_none {  { wt_buff_14_1_0_V_s in_data 0 16 } } }
	wt_buff_14_1_1_V_s { ap_none {  { wt_buff_14_1_1_V_s in_data 0 16 } } }
	wt_buff_14_1_2_V_s { ap_none {  { wt_buff_14_1_2_V_s in_data 0 16 } } }
	wt_buff_14_2_0_V_s { ap_none {  { wt_buff_14_2_0_V_s in_data 0 16 } } }
	wt_buff_14_2_1_V_s { ap_none {  { wt_buff_14_2_1_V_s in_data 0 16 } } }
	wt_buff_14_2_2_V_s { ap_none {  { wt_buff_14_2_2_V_s in_data 0 16 } } }
	wt_buff_14_3_0_V_s { ap_none {  { wt_buff_14_3_0_V_s in_data 0 16 } } }
	wt_buff_14_3_1_V_s { ap_none {  { wt_buff_14_3_1_V_s in_data 0 16 } } }
	wt_buff_14_3_2_V_s { ap_none {  { wt_buff_14_3_2_V_s in_data 0 16 } } }
	wt_buff_15_0_0_V_s { ap_none {  { wt_buff_15_0_0_V_s in_data 0 16 } } }
	wt_buff_15_0_1_V_s { ap_none {  { wt_buff_15_0_1_V_s in_data 0 16 } } }
	wt_buff_15_0_2_V_s { ap_none {  { wt_buff_15_0_2_V_s in_data 0 16 } } }
	wt_buff_15_1_0_V_s { ap_none {  { wt_buff_15_1_0_V_s in_data 0 16 } } }
	wt_buff_15_1_1_V_s { ap_none {  { wt_buff_15_1_1_V_s in_data 0 16 } } }
	wt_buff_15_1_2_V_s { ap_none {  { wt_buff_15_1_2_V_s in_data 0 16 } } }
	wt_buff_15_2_0_V_s { ap_none {  { wt_buff_15_2_0_V_s in_data 0 16 } } }
	wt_buff_15_2_1_V_s { ap_none {  { wt_buff_15_2_1_V_s in_data 0 16 } } }
	wt_buff_15_2_2_V_s { ap_none {  { wt_buff_15_2_2_V_s in_data 0 16 } } }
	wt_buff_15_3_0_V_s { ap_none {  { wt_buff_15_3_0_V_s in_data 0 16 } } }
	wt_buff_15_3_1_V_s { ap_none {  { wt_buff_15_3_1_V_s in_data 0 16 } } }
	wt_buff_15_3_2_V_s { ap_none {  { wt_buff_15_3_2_V_s in_data 0 16 } } }
	n { ap_none {  { n in_data 0 32 } } }
	m { ap_none {  { m in_data 0 32 } } }
	ch_in { ap_none {  { ch_in in_data 0 32 } } }
}
