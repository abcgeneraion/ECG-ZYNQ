set moduleName load_bias
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
set C_modelName {load_bias}
set C_modelType { void 0 }
set C_modelArgList {
	{ buff_out_0_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_1_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_2_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_3_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_4_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_5_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_6_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_7_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_8_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_9_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_10_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_11_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_12_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_13_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_14_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ buff_out_15_V int 16 regular {array 150 { 0 3 } 0 1 }  }
	{ bias_buff_V int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V16 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V17 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V18 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V19 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V20 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V21 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V22 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V23 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V24 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V25 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V26 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V27 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V28 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V29 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V30 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bias_buff_V_offset int 29 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buff_out_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_3_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_4_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_5_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_6_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_7_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_8_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_9_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_10_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_11_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_12_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_13_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_14_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_out_15_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V16", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V17", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V18", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V19", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V20", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V21", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V22", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V23", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V24", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V25", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V26", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V27", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V28", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V29", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V30", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V_offset", "interface" : "wire", "bitwidth" : 29, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 119
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buff_out_0_V_address0 sc_out sc_lv 8 signal 0 } 
	{ buff_out_0_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ buff_out_0_V_we0 sc_out sc_logic 1 signal 0 } 
	{ buff_out_0_V_d0 sc_out sc_lv 16 signal 0 } 
	{ buff_out_1_V_address0 sc_out sc_lv 8 signal 1 } 
	{ buff_out_1_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_out_1_V_we0 sc_out sc_logic 1 signal 1 } 
	{ buff_out_1_V_d0 sc_out sc_lv 16 signal 1 } 
	{ buff_out_2_V_address0 sc_out sc_lv 8 signal 2 } 
	{ buff_out_2_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ buff_out_2_V_we0 sc_out sc_logic 1 signal 2 } 
	{ buff_out_2_V_d0 sc_out sc_lv 16 signal 2 } 
	{ buff_out_3_V_address0 sc_out sc_lv 8 signal 3 } 
	{ buff_out_3_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ buff_out_3_V_we0 sc_out sc_logic 1 signal 3 } 
	{ buff_out_3_V_d0 sc_out sc_lv 16 signal 3 } 
	{ buff_out_4_V_address0 sc_out sc_lv 8 signal 4 } 
	{ buff_out_4_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ buff_out_4_V_we0 sc_out sc_logic 1 signal 4 } 
	{ buff_out_4_V_d0 sc_out sc_lv 16 signal 4 } 
	{ buff_out_5_V_address0 sc_out sc_lv 8 signal 5 } 
	{ buff_out_5_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ buff_out_5_V_we0 sc_out sc_logic 1 signal 5 } 
	{ buff_out_5_V_d0 sc_out sc_lv 16 signal 5 } 
	{ buff_out_6_V_address0 sc_out sc_lv 8 signal 6 } 
	{ buff_out_6_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ buff_out_6_V_we0 sc_out sc_logic 1 signal 6 } 
	{ buff_out_6_V_d0 sc_out sc_lv 16 signal 6 } 
	{ buff_out_7_V_address0 sc_out sc_lv 8 signal 7 } 
	{ buff_out_7_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ buff_out_7_V_we0 sc_out sc_logic 1 signal 7 } 
	{ buff_out_7_V_d0 sc_out sc_lv 16 signal 7 } 
	{ buff_out_8_V_address0 sc_out sc_lv 8 signal 8 } 
	{ buff_out_8_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ buff_out_8_V_we0 sc_out sc_logic 1 signal 8 } 
	{ buff_out_8_V_d0 sc_out sc_lv 16 signal 8 } 
	{ buff_out_9_V_address0 sc_out sc_lv 8 signal 9 } 
	{ buff_out_9_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ buff_out_9_V_we0 sc_out sc_logic 1 signal 9 } 
	{ buff_out_9_V_d0 sc_out sc_lv 16 signal 9 } 
	{ buff_out_10_V_address0 sc_out sc_lv 8 signal 10 } 
	{ buff_out_10_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ buff_out_10_V_we0 sc_out sc_logic 1 signal 10 } 
	{ buff_out_10_V_d0 sc_out sc_lv 16 signal 10 } 
	{ buff_out_11_V_address0 sc_out sc_lv 8 signal 11 } 
	{ buff_out_11_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ buff_out_11_V_we0 sc_out sc_logic 1 signal 11 } 
	{ buff_out_11_V_d0 sc_out sc_lv 16 signal 11 } 
	{ buff_out_12_V_address0 sc_out sc_lv 8 signal 12 } 
	{ buff_out_12_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ buff_out_12_V_we0 sc_out sc_logic 1 signal 12 } 
	{ buff_out_12_V_d0 sc_out sc_lv 16 signal 12 } 
	{ buff_out_13_V_address0 sc_out sc_lv 8 signal 13 } 
	{ buff_out_13_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ buff_out_13_V_we0 sc_out sc_logic 1 signal 13 } 
	{ buff_out_13_V_d0 sc_out sc_lv 16 signal 13 } 
	{ buff_out_14_V_address0 sc_out sc_lv 8 signal 14 } 
	{ buff_out_14_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ buff_out_14_V_we0 sc_out sc_logic 1 signal 14 } 
	{ buff_out_14_V_d0 sc_out sc_lv 16 signal 14 } 
	{ buff_out_15_V_address0 sc_out sc_lv 8 signal 15 } 
	{ buff_out_15_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ buff_out_15_V_we0 sc_out sc_logic 1 signal 15 } 
	{ buff_out_15_V_d0 sc_out sc_lv 16 signal 15 } 
	{ bias_buff_V_address0 sc_out sc_lv 6 signal 16 } 
	{ bias_buff_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ bias_buff_V_q0 sc_in sc_lv 16 signal 16 } 
	{ bias_buff_V16_address0 sc_out sc_lv 6 signal 17 } 
	{ bias_buff_V16_ce0 sc_out sc_logic 1 signal 17 } 
	{ bias_buff_V16_q0 sc_in sc_lv 16 signal 17 } 
	{ bias_buff_V17_address0 sc_out sc_lv 6 signal 18 } 
	{ bias_buff_V17_ce0 sc_out sc_logic 1 signal 18 } 
	{ bias_buff_V17_q0 sc_in sc_lv 16 signal 18 } 
	{ bias_buff_V18_address0 sc_out sc_lv 6 signal 19 } 
	{ bias_buff_V18_ce0 sc_out sc_logic 1 signal 19 } 
	{ bias_buff_V18_q0 sc_in sc_lv 16 signal 19 } 
	{ bias_buff_V19_address0 sc_out sc_lv 6 signal 20 } 
	{ bias_buff_V19_ce0 sc_out sc_logic 1 signal 20 } 
	{ bias_buff_V19_q0 sc_in sc_lv 16 signal 20 } 
	{ bias_buff_V20_address0 sc_out sc_lv 6 signal 21 } 
	{ bias_buff_V20_ce0 sc_out sc_logic 1 signal 21 } 
	{ bias_buff_V20_q0 sc_in sc_lv 16 signal 21 } 
	{ bias_buff_V21_address0 sc_out sc_lv 6 signal 22 } 
	{ bias_buff_V21_ce0 sc_out sc_logic 1 signal 22 } 
	{ bias_buff_V21_q0 sc_in sc_lv 16 signal 22 } 
	{ bias_buff_V22_address0 sc_out sc_lv 6 signal 23 } 
	{ bias_buff_V22_ce0 sc_out sc_logic 1 signal 23 } 
	{ bias_buff_V22_q0 sc_in sc_lv 16 signal 23 } 
	{ bias_buff_V23_address0 sc_out sc_lv 6 signal 24 } 
	{ bias_buff_V23_ce0 sc_out sc_logic 1 signal 24 } 
	{ bias_buff_V23_q0 sc_in sc_lv 16 signal 24 } 
	{ bias_buff_V24_address0 sc_out sc_lv 6 signal 25 } 
	{ bias_buff_V24_ce0 sc_out sc_logic 1 signal 25 } 
	{ bias_buff_V24_q0 sc_in sc_lv 16 signal 25 } 
	{ bias_buff_V25_address0 sc_out sc_lv 6 signal 26 } 
	{ bias_buff_V25_ce0 sc_out sc_logic 1 signal 26 } 
	{ bias_buff_V25_q0 sc_in sc_lv 16 signal 26 } 
	{ bias_buff_V26_address0 sc_out sc_lv 6 signal 27 } 
	{ bias_buff_V26_ce0 sc_out sc_logic 1 signal 27 } 
	{ bias_buff_V26_q0 sc_in sc_lv 16 signal 27 } 
	{ bias_buff_V27_address0 sc_out sc_lv 6 signal 28 } 
	{ bias_buff_V27_ce0 sc_out sc_logic 1 signal 28 } 
	{ bias_buff_V27_q0 sc_in sc_lv 16 signal 28 } 
	{ bias_buff_V28_address0 sc_out sc_lv 6 signal 29 } 
	{ bias_buff_V28_ce0 sc_out sc_logic 1 signal 29 } 
	{ bias_buff_V28_q0 sc_in sc_lv 16 signal 29 } 
	{ bias_buff_V29_address0 sc_out sc_lv 6 signal 30 } 
	{ bias_buff_V29_ce0 sc_out sc_logic 1 signal 30 } 
	{ bias_buff_V29_q0 sc_in sc_lv 16 signal 30 } 
	{ bias_buff_V30_address0 sc_out sc_lv 6 signal 31 } 
	{ bias_buff_V30_ce0 sc_out sc_logic 1 signal 31 } 
	{ bias_buff_V30_q0 sc_in sc_lv 16 signal 31 } 
	{ bias_buff_V_offset sc_in sc_lv 29 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buff_out_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "address0" }} , 
 	{ "name": "buff_out_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "ce0" }} , 
 	{ "name": "buff_out_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "we0" }} , 
 	{ "name": "buff_out_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "d0" }} , 
 	{ "name": "buff_out_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "address0" }} , 
 	{ "name": "buff_out_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "ce0" }} , 
 	{ "name": "buff_out_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "we0" }} , 
 	{ "name": "buff_out_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "d0" }} , 
 	{ "name": "buff_out_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "address0" }} , 
 	{ "name": "buff_out_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "ce0" }} , 
 	{ "name": "buff_out_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "we0" }} , 
 	{ "name": "buff_out_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "d0" }} , 
 	{ "name": "buff_out_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "address0" }} , 
 	{ "name": "buff_out_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "ce0" }} , 
 	{ "name": "buff_out_3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "we0" }} , 
 	{ "name": "buff_out_3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "d0" }} , 
 	{ "name": "buff_out_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "address0" }} , 
 	{ "name": "buff_out_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "ce0" }} , 
 	{ "name": "buff_out_4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "we0" }} , 
 	{ "name": "buff_out_4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "d0" }} , 
 	{ "name": "buff_out_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "address0" }} , 
 	{ "name": "buff_out_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "ce0" }} , 
 	{ "name": "buff_out_5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "we0" }} , 
 	{ "name": "buff_out_5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "d0" }} , 
 	{ "name": "buff_out_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "address0" }} , 
 	{ "name": "buff_out_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "ce0" }} , 
 	{ "name": "buff_out_6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "we0" }} , 
 	{ "name": "buff_out_6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "d0" }} , 
 	{ "name": "buff_out_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "address0" }} , 
 	{ "name": "buff_out_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "ce0" }} , 
 	{ "name": "buff_out_7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "we0" }} , 
 	{ "name": "buff_out_7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "d0" }} , 
 	{ "name": "buff_out_8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "address0" }} , 
 	{ "name": "buff_out_8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "ce0" }} , 
 	{ "name": "buff_out_8_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "we0" }} , 
 	{ "name": "buff_out_8_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "d0" }} , 
 	{ "name": "buff_out_9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "address0" }} , 
 	{ "name": "buff_out_9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "ce0" }} , 
 	{ "name": "buff_out_9_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "we0" }} , 
 	{ "name": "buff_out_9_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "d0" }} , 
 	{ "name": "buff_out_10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "address0" }} , 
 	{ "name": "buff_out_10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "ce0" }} , 
 	{ "name": "buff_out_10_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "we0" }} , 
 	{ "name": "buff_out_10_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "d0" }} , 
 	{ "name": "buff_out_11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "address0" }} , 
 	{ "name": "buff_out_11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "ce0" }} , 
 	{ "name": "buff_out_11_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "we0" }} , 
 	{ "name": "buff_out_11_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "d0" }} , 
 	{ "name": "buff_out_12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "address0" }} , 
 	{ "name": "buff_out_12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "ce0" }} , 
 	{ "name": "buff_out_12_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "we0" }} , 
 	{ "name": "buff_out_12_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "d0" }} , 
 	{ "name": "buff_out_13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "address0" }} , 
 	{ "name": "buff_out_13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "ce0" }} , 
 	{ "name": "buff_out_13_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "we0" }} , 
 	{ "name": "buff_out_13_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "d0" }} , 
 	{ "name": "buff_out_14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "address0" }} , 
 	{ "name": "buff_out_14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "ce0" }} , 
 	{ "name": "buff_out_14_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "we0" }} , 
 	{ "name": "buff_out_14_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "d0" }} , 
 	{ "name": "buff_out_15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "address0" }} , 
 	{ "name": "buff_out_15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "ce0" }} , 
 	{ "name": "buff_out_15_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "we0" }} , 
 	{ "name": "buff_out_15_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "d0" }} , 
 	{ "name": "bias_buff_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V", "role": "address0" }} , 
 	{ "name": "bias_buff_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V", "role": "ce0" }} , 
 	{ "name": "bias_buff_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V", "role": "q0" }} , 
 	{ "name": "bias_buff_V16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V16", "role": "address0" }} , 
 	{ "name": "bias_buff_V16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V16", "role": "ce0" }} , 
 	{ "name": "bias_buff_V16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V16", "role": "q0" }} , 
 	{ "name": "bias_buff_V17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V17", "role": "address0" }} , 
 	{ "name": "bias_buff_V17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V17", "role": "ce0" }} , 
 	{ "name": "bias_buff_V17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V17", "role": "q0" }} , 
 	{ "name": "bias_buff_V18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V18", "role": "address0" }} , 
 	{ "name": "bias_buff_V18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V18", "role": "ce0" }} , 
 	{ "name": "bias_buff_V18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V18", "role": "q0" }} , 
 	{ "name": "bias_buff_V19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V19", "role": "address0" }} , 
 	{ "name": "bias_buff_V19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V19", "role": "ce0" }} , 
 	{ "name": "bias_buff_V19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V19", "role": "q0" }} , 
 	{ "name": "bias_buff_V20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V20", "role": "address0" }} , 
 	{ "name": "bias_buff_V20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V20", "role": "ce0" }} , 
 	{ "name": "bias_buff_V20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V20", "role": "q0" }} , 
 	{ "name": "bias_buff_V21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V21", "role": "address0" }} , 
 	{ "name": "bias_buff_V21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V21", "role": "ce0" }} , 
 	{ "name": "bias_buff_V21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V21", "role": "q0" }} , 
 	{ "name": "bias_buff_V22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V22", "role": "address0" }} , 
 	{ "name": "bias_buff_V22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V22", "role": "ce0" }} , 
 	{ "name": "bias_buff_V22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V22", "role": "q0" }} , 
 	{ "name": "bias_buff_V23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V23", "role": "address0" }} , 
 	{ "name": "bias_buff_V23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V23", "role": "ce0" }} , 
 	{ "name": "bias_buff_V23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V23", "role": "q0" }} , 
 	{ "name": "bias_buff_V24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V24", "role": "address0" }} , 
 	{ "name": "bias_buff_V24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V24", "role": "ce0" }} , 
 	{ "name": "bias_buff_V24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V24", "role": "q0" }} , 
 	{ "name": "bias_buff_V25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V25", "role": "address0" }} , 
 	{ "name": "bias_buff_V25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V25", "role": "ce0" }} , 
 	{ "name": "bias_buff_V25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V25", "role": "q0" }} , 
 	{ "name": "bias_buff_V26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V26", "role": "address0" }} , 
 	{ "name": "bias_buff_V26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V26", "role": "ce0" }} , 
 	{ "name": "bias_buff_V26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V26", "role": "q0" }} , 
 	{ "name": "bias_buff_V27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V27", "role": "address0" }} , 
 	{ "name": "bias_buff_V27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V27", "role": "ce0" }} , 
 	{ "name": "bias_buff_V27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V27", "role": "q0" }} , 
 	{ "name": "bias_buff_V28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V28", "role": "address0" }} , 
 	{ "name": "bias_buff_V28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V28", "role": "ce0" }} , 
 	{ "name": "bias_buff_V28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V28", "role": "q0" }} , 
 	{ "name": "bias_buff_V29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V29", "role": "address0" }} , 
 	{ "name": "bias_buff_V29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V29", "role": "ce0" }} , 
 	{ "name": "bias_buff_V29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V29", "role": "q0" }} , 
 	{ "name": "bias_buff_V30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buff_V30", "role": "address0" }} , 
 	{ "name": "bias_buff_V30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V30", "role": "ce0" }} , 
 	{ "name": "bias_buff_V30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_V30", "role": "q0" }} , 
 	{ "name": "bias_buff_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "bias_buff_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "load_bias",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5101", "EstimateLatencyMax" : "5101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "buff_out_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_4_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_5_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_6_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_7_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_8_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_9_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_10_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_11_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_12_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_13_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_14_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_out_15_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias_buff_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_buff_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_mux_164_16bkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_bias {
		buff_out_0_V {Type O LastRead -1 FirstWrite 3}
		buff_out_1_V {Type O LastRead -1 FirstWrite 3}
		buff_out_2_V {Type O LastRead -1 FirstWrite 3}
		buff_out_3_V {Type O LastRead -1 FirstWrite 3}
		buff_out_4_V {Type O LastRead -1 FirstWrite 3}
		buff_out_5_V {Type O LastRead -1 FirstWrite 3}
		buff_out_6_V {Type O LastRead -1 FirstWrite 3}
		buff_out_7_V {Type O LastRead -1 FirstWrite 3}
		buff_out_8_V {Type O LastRead -1 FirstWrite 3}
		buff_out_9_V {Type O LastRead -1 FirstWrite 3}
		buff_out_10_V {Type O LastRead -1 FirstWrite 3}
		buff_out_11_V {Type O LastRead -1 FirstWrite 3}
		buff_out_12_V {Type O LastRead -1 FirstWrite 3}
		buff_out_13_V {Type O LastRead -1 FirstWrite 3}
		buff_out_14_V {Type O LastRead -1 FirstWrite 3}
		buff_out_15_V {Type O LastRead -1 FirstWrite 3}
		bias_buff_V {Type I LastRead 2 FirstWrite -1}
		bias_buff_V16 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V17 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V18 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V19 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V20 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V21 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V22 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V23 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V24 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V25 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V26 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V27 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V28 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V29 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V30 {Type I LastRead 2 FirstWrite -1}
		bias_buff_V_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5101", "Max" : "5101"}
	, {"Name" : "Interval", "Min" : "5101", "Max" : "5101"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buff_out_0_V { ap_memory {  { buff_out_0_V_address0 mem_address 1 8 }  { buff_out_0_V_ce0 mem_ce 1 1 }  { buff_out_0_V_we0 mem_we 1 1 }  { buff_out_0_V_d0 mem_din 1 16 } } }
	buff_out_1_V { ap_memory {  { buff_out_1_V_address0 mem_address 1 8 }  { buff_out_1_V_ce0 mem_ce 1 1 }  { buff_out_1_V_we0 mem_we 1 1 }  { buff_out_1_V_d0 mem_din 1 16 } } }
	buff_out_2_V { ap_memory {  { buff_out_2_V_address0 mem_address 1 8 }  { buff_out_2_V_ce0 mem_ce 1 1 }  { buff_out_2_V_we0 mem_we 1 1 }  { buff_out_2_V_d0 mem_din 1 16 } } }
	buff_out_3_V { ap_memory {  { buff_out_3_V_address0 mem_address 1 8 }  { buff_out_3_V_ce0 mem_ce 1 1 }  { buff_out_3_V_we0 mem_we 1 1 }  { buff_out_3_V_d0 mem_din 1 16 } } }
	buff_out_4_V { ap_memory {  { buff_out_4_V_address0 mem_address 1 8 }  { buff_out_4_V_ce0 mem_ce 1 1 }  { buff_out_4_V_we0 mem_we 1 1 }  { buff_out_4_V_d0 mem_din 1 16 } } }
	buff_out_5_V { ap_memory {  { buff_out_5_V_address0 mem_address 1 8 }  { buff_out_5_V_ce0 mem_ce 1 1 }  { buff_out_5_V_we0 mem_we 1 1 }  { buff_out_5_V_d0 mem_din 1 16 } } }
	buff_out_6_V { ap_memory {  { buff_out_6_V_address0 mem_address 1 8 }  { buff_out_6_V_ce0 mem_ce 1 1 }  { buff_out_6_V_we0 mem_we 1 1 }  { buff_out_6_V_d0 mem_din 1 16 } } }
	buff_out_7_V { ap_memory {  { buff_out_7_V_address0 mem_address 1 8 }  { buff_out_7_V_ce0 mem_ce 1 1 }  { buff_out_7_V_we0 mem_we 1 1 }  { buff_out_7_V_d0 mem_din 1 16 } } }
	buff_out_8_V { ap_memory {  { buff_out_8_V_address0 mem_address 1 8 }  { buff_out_8_V_ce0 mem_ce 1 1 }  { buff_out_8_V_we0 mem_we 1 1 }  { buff_out_8_V_d0 mem_din 1 16 } } }
	buff_out_9_V { ap_memory {  { buff_out_9_V_address0 mem_address 1 8 }  { buff_out_9_V_ce0 mem_ce 1 1 }  { buff_out_9_V_we0 mem_we 1 1 }  { buff_out_9_V_d0 mem_din 1 16 } } }
	buff_out_10_V { ap_memory {  { buff_out_10_V_address0 mem_address 1 8 }  { buff_out_10_V_ce0 mem_ce 1 1 }  { buff_out_10_V_we0 mem_we 1 1 }  { buff_out_10_V_d0 mem_din 1 16 } } }
	buff_out_11_V { ap_memory {  { buff_out_11_V_address0 mem_address 1 8 }  { buff_out_11_V_ce0 mem_ce 1 1 }  { buff_out_11_V_we0 mem_we 1 1 }  { buff_out_11_V_d0 mem_din 1 16 } } }
	buff_out_12_V { ap_memory {  { buff_out_12_V_address0 mem_address 1 8 }  { buff_out_12_V_ce0 mem_ce 1 1 }  { buff_out_12_V_we0 mem_we 1 1 }  { buff_out_12_V_d0 mem_din 1 16 } } }
	buff_out_13_V { ap_memory {  { buff_out_13_V_address0 mem_address 1 8 }  { buff_out_13_V_ce0 mem_ce 1 1 }  { buff_out_13_V_we0 mem_we 1 1 }  { buff_out_13_V_d0 mem_din 1 16 } } }
	buff_out_14_V { ap_memory {  { buff_out_14_V_address0 mem_address 1 8 }  { buff_out_14_V_ce0 mem_ce 1 1 }  { buff_out_14_V_we0 mem_we 1 1 }  { buff_out_14_V_d0 mem_din 1 16 } } }
	buff_out_15_V { ap_memory {  { buff_out_15_V_address0 mem_address 1 8 }  { buff_out_15_V_ce0 mem_ce 1 1 }  { buff_out_15_V_we0 mem_we 1 1 }  { buff_out_15_V_d0 mem_din 1 16 } } }
	bias_buff_V { ap_memory {  { bias_buff_V_address0 mem_address 1 6 }  { bias_buff_V_ce0 mem_ce 1 1 }  { bias_buff_V_q0 mem_dout 0 16 } } }
	bias_buff_V16 { ap_memory {  { bias_buff_V16_address0 mem_address 1 6 }  { bias_buff_V16_ce0 mem_ce 1 1 }  { bias_buff_V16_q0 mem_dout 0 16 } } }
	bias_buff_V17 { ap_memory {  { bias_buff_V17_address0 mem_address 1 6 }  { bias_buff_V17_ce0 mem_ce 1 1 }  { bias_buff_V17_q0 mem_dout 0 16 } } }
	bias_buff_V18 { ap_memory {  { bias_buff_V18_address0 mem_address 1 6 }  { bias_buff_V18_ce0 mem_ce 1 1 }  { bias_buff_V18_q0 mem_dout 0 16 } } }
	bias_buff_V19 { ap_memory {  { bias_buff_V19_address0 mem_address 1 6 }  { bias_buff_V19_ce0 mem_ce 1 1 }  { bias_buff_V19_q0 mem_dout 0 16 } } }
	bias_buff_V20 { ap_memory {  { bias_buff_V20_address0 mem_address 1 6 }  { bias_buff_V20_ce0 mem_ce 1 1 }  { bias_buff_V20_q0 mem_dout 0 16 } } }
	bias_buff_V21 { ap_memory {  { bias_buff_V21_address0 mem_address 1 6 }  { bias_buff_V21_ce0 mem_ce 1 1 }  { bias_buff_V21_q0 mem_dout 0 16 } } }
	bias_buff_V22 { ap_memory {  { bias_buff_V22_address0 mem_address 1 6 }  { bias_buff_V22_ce0 mem_ce 1 1 }  { bias_buff_V22_q0 mem_dout 0 16 } } }
	bias_buff_V23 { ap_memory {  { bias_buff_V23_address0 mem_address 1 6 }  { bias_buff_V23_ce0 mem_ce 1 1 }  { bias_buff_V23_q0 mem_dout 0 16 } } }
	bias_buff_V24 { ap_memory {  { bias_buff_V24_address0 mem_address 1 6 }  { bias_buff_V24_ce0 mem_ce 1 1 }  { bias_buff_V24_q0 mem_dout 0 16 } } }
	bias_buff_V25 { ap_memory {  { bias_buff_V25_address0 mem_address 1 6 }  { bias_buff_V25_ce0 mem_ce 1 1 }  { bias_buff_V25_q0 mem_dout 0 16 } } }
	bias_buff_V26 { ap_memory {  { bias_buff_V26_address0 mem_address 1 6 }  { bias_buff_V26_ce0 mem_ce 1 1 }  { bias_buff_V26_q0 mem_dout 0 16 } } }
	bias_buff_V27 { ap_memory {  { bias_buff_V27_address0 mem_address 1 6 }  { bias_buff_V27_ce0 mem_ce 1 1 }  { bias_buff_V27_q0 mem_dout 0 16 } } }
	bias_buff_V28 { ap_memory {  { bias_buff_V28_address0 mem_address 1 6 }  { bias_buff_V28_ce0 mem_ce 1 1 }  { bias_buff_V28_q0 mem_dout 0 16 } } }
	bias_buff_V29 { ap_memory {  { bias_buff_V29_address0 mem_address 1 6 }  { bias_buff_V29_ce0 mem_ce 1 1 }  { bias_buff_V29_q0 mem_dout 0 16 } } }
	bias_buff_V30 { ap_memory {  { bias_buff_V30_address0 mem_address 1 6 }  { bias_buff_V30_ce0 mem_ce 1 1 }  { bias_buff_V30_q0 mem_dout 0 16 } } }
	bias_buff_V_offset { ap_none {  { bias_buff_V_offset in_data 0 29 } } }
}
