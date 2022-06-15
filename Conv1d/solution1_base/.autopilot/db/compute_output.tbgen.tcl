set moduleName compute_output
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
set C_modelName {compute_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V int 16 regular {axi_master 0}  }
	{ in_V_offset int 31 regular  }
	{ weight_V int 16 regular {axi_master 0}  }
	{ weight_V_offset int 31 regular  }
	{ buff_out_0_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_1_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_2_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_3_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_4_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_5_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_6_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_7_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_8_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_9_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_10_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_11_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_12_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_13_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_14_V int 16 regular {array 150 { 2 0 } 1 1 }  }
	{ buff_out_15_V int 16 regular {array 150 { 2 0 } 1 1 }  }
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
	{ bias_buff_V_offset int 30 regular  }
	{ ch_in int 32 regular  }
	{ m int 32 regular  }
	{ p int 32 regular  }
	{ size int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_V_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "weight_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_V_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "buff_out_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_3_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_4_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_5_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_6_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_7_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_8_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_9_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_10_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_11_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_12_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_13_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_14_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buff_out_15_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
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
 	{ "Name" : "bias_buff_V_offset", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "ch_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 295
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_in_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_in_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_in_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_in_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_in_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_V_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_in_V_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_in_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_in_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_in_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_in_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_V_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_in_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_in_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_in_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_in_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_in_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_in_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ in_V_offset sc_in sc_lv 31 signal 1 } 
	{ m_axi_weight_V_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_weight_V_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_weight_V_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_weight_V_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_weight_V_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_weight_V_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_weight_V_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_weight_V_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_weight_V_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_weight_V_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_weight_V_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_weight_V_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_weight_V_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_weight_V_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_weight_V_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_weight_V_WDATA sc_out sc_lv 16 signal 2 } 
	{ m_axi_weight_V_WSTRB sc_out sc_lv 2 signal 2 } 
	{ m_axi_weight_V_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_weight_V_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_weight_V_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_weight_V_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_weight_V_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_weight_V_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_weight_V_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_weight_V_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_weight_V_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_weight_V_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_weight_V_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_weight_V_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_weight_V_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_weight_V_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_weight_V_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_weight_V_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_weight_V_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_weight_V_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_weight_V_RDATA sc_in sc_lv 16 signal 2 } 
	{ m_axi_weight_V_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_weight_V_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_weight_V_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_weight_V_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_weight_V_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_weight_V_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_weight_V_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_weight_V_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_weight_V_BUSER sc_in sc_lv 1 signal 2 } 
	{ weight_V_offset sc_in sc_lv 31 signal 3 } 
	{ buff_out_0_V_address0 sc_out sc_lv 8 signal 4 } 
	{ buff_out_0_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ buff_out_0_V_we0 sc_out sc_logic 1 signal 4 } 
	{ buff_out_0_V_d0 sc_out sc_lv 16 signal 4 } 
	{ buff_out_0_V_q0 sc_in sc_lv 16 signal 4 } 
	{ buff_out_0_V_address1 sc_out sc_lv 8 signal 4 } 
	{ buff_out_0_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ buff_out_0_V_we1 sc_out sc_logic 1 signal 4 } 
	{ buff_out_0_V_d1 sc_out sc_lv 16 signal 4 } 
	{ buff_out_1_V_address0 sc_out sc_lv 8 signal 5 } 
	{ buff_out_1_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ buff_out_1_V_we0 sc_out sc_logic 1 signal 5 } 
	{ buff_out_1_V_d0 sc_out sc_lv 16 signal 5 } 
	{ buff_out_1_V_q0 sc_in sc_lv 16 signal 5 } 
	{ buff_out_1_V_address1 sc_out sc_lv 8 signal 5 } 
	{ buff_out_1_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ buff_out_1_V_we1 sc_out sc_logic 1 signal 5 } 
	{ buff_out_1_V_d1 sc_out sc_lv 16 signal 5 } 
	{ buff_out_2_V_address0 sc_out sc_lv 8 signal 6 } 
	{ buff_out_2_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ buff_out_2_V_we0 sc_out sc_logic 1 signal 6 } 
	{ buff_out_2_V_d0 sc_out sc_lv 16 signal 6 } 
	{ buff_out_2_V_q0 sc_in sc_lv 16 signal 6 } 
	{ buff_out_2_V_address1 sc_out sc_lv 8 signal 6 } 
	{ buff_out_2_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ buff_out_2_V_we1 sc_out sc_logic 1 signal 6 } 
	{ buff_out_2_V_d1 sc_out sc_lv 16 signal 6 } 
	{ buff_out_3_V_address0 sc_out sc_lv 8 signal 7 } 
	{ buff_out_3_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ buff_out_3_V_we0 sc_out sc_logic 1 signal 7 } 
	{ buff_out_3_V_d0 sc_out sc_lv 16 signal 7 } 
	{ buff_out_3_V_q0 sc_in sc_lv 16 signal 7 } 
	{ buff_out_3_V_address1 sc_out sc_lv 8 signal 7 } 
	{ buff_out_3_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ buff_out_3_V_we1 sc_out sc_logic 1 signal 7 } 
	{ buff_out_3_V_d1 sc_out sc_lv 16 signal 7 } 
	{ buff_out_4_V_address0 sc_out sc_lv 8 signal 8 } 
	{ buff_out_4_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ buff_out_4_V_we0 sc_out sc_logic 1 signal 8 } 
	{ buff_out_4_V_d0 sc_out sc_lv 16 signal 8 } 
	{ buff_out_4_V_q0 sc_in sc_lv 16 signal 8 } 
	{ buff_out_4_V_address1 sc_out sc_lv 8 signal 8 } 
	{ buff_out_4_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ buff_out_4_V_we1 sc_out sc_logic 1 signal 8 } 
	{ buff_out_4_V_d1 sc_out sc_lv 16 signal 8 } 
	{ buff_out_5_V_address0 sc_out sc_lv 8 signal 9 } 
	{ buff_out_5_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ buff_out_5_V_we0 sc_out sc_logic 1 signal 9 } 
	{ buff_out_5_V_d0 sc_out sc_lv 16 signal 9 } 
	{ buff_out_5_V_q0 sc_in sc_lv 16 signal 9 } 
	{ buff_out_5_V_address1 sc_out sc_lv 8 signal 9 } 
	{ buff_out_5_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ buff_out_5_V_we1 sc_out sc_logic 1 signal 9 } 
	{ buff_out_5_V_d1 sc_out sc_lv 16 signal 9 } 
	{ buff_out_6_V_address0 sc_out sc_lv 8 signal 10 } 
	{ buff_out_6_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ buff_out_6_V_we0 sc_out sc_logic 1 signal 10 } 
	{ buff_out_6_V_d0 sc_out sc_lv 16 signal 10 } 
	{ buff_out_6_V_q0 sc_in sc_lv 16 signal 10 } 
	{ buff_out_6_V_address1 sc_out sc_lv 8 signal 10 } 
	{ buff_out_6_V_ce1 sc_out sc_logic 1 signal 10 } 
	{ buff_out_6_V_we1 sc_out sc_logic 1 signal 10 } 
	{ buff_out_6_V_d1 sc_out sc_lv 16 signal 10 } 
	{ buff_out_7_V_address0 sc_out sc_lv 8 signal 11 } 
	{ buff_out_7_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ buff_out_7_V_we0 sc_out sc_logic 1 signal 11 } 
	{ buff_out_7_V_d0 sc_out sc_lv 16 signal 11 } 
	{ buff_out_7_V_q0 sc_in sc_lv 16 signal 11 } 
	{ buff_out_7_V_address1 sc_out sc_lv 8 signal 11 } 
	{ buff_out_7_V_ce1 sc_out sc_logic 1 signal 11 } 
	{ buff_out_7_V_we1 sc_out sc_logic 1 signal 11 } 
	{ buff_out_7_V_d1 sc_out sc_lv 16 signal 11 } 
	{ buff_out_8_V_address0 sc_out sc_lv 8 signal 12 } 
	{ buff_out_8_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ buff_out_8_V_we0 sc_out sc_logic 1 signal 12 } 
	{ buff_out_8_V_d0 sc_out sc_lv 16 signal 12 } 
	{ buff_out_8_V_q0 sc_in sc_lv 16 signal 12 } 
	{ buff_out_8_V_address1 sc_out sc_lv 8 signal 12 } 
	{ buff_out_8_V_ce1 sc_out sc_logic 1 signal 12 } 
	{ buff_out_8_V_we1 sc_out sc_logic 1 signal 12 } 
	{ buff_out_8_V_d1 sc_out sc_lv 16 signal 12 } 
	{ buff_out_9_V_address0 sc_out sc_lv 8 signal 13 } 
	{ buff_out_9_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ buff_out_9_V_we0 sc_out sc_logic 1 signal 13 } 
	{ buff_out_9_V_d0 sc_out sc_lv 16 signal 13 } 
	{ buff_out_9_V_q0 sc_in sc_lv 16 signal 13 } 
	{ buff_out_9_V_address1 sc_out sc_lv 8 signal 13 } 
	{ buff_out_9_V_ce1 sc_out sc_logic 1 signal 13 } 
	{ buff_out_9_V_we1 sc_out sc_logic 1 signal 13 } 
	{ buff_out_9_V_d1 sc_out sc_lv 16 signal 13 } 
	{ buff_out_10_V_address0 sc_out sc_lv 8 signal 14 } 
	{ buff_out_10_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ buff_out_10_V_we0 sc_out sc_logic 1 signal 14 } 
	{ buff_out_10_V_d0 sc_out sc_lv 16 signal 14 } 
	{ buff_out_10_V_q0 sc_in sc_lv 16 signal 14 } 
	{ buff_out_10_V_address1 sc_out sc_lv 8 signal 14 } 
	{ buff_out_10_V_ce1 sc_out sc_logic 1 signal 14 } 
	{ buff_out_10_V_we1 sc_out sc_logic 1 signal 14 } 
	{ buff_out_10_V_d1 sc_out sc_lv 16 signal 14 } 
	{ buff_out_11_V_address0 sc_out sc_lv 8 signal 15 } 
	{ buff_out_11_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ buff_out_11_V_we0 sc_out sc_logic 1 signal 15 } 
	{ buff_out_11_V_d0 sc_out sc_lv 16 signal 15 } 
	{ buff_out_11_V_q0 sc_in sc_lv 16 signal 15 } 
	{ buff_out_11_V_address1 sc_out sc_lv 8 signal 15 } 
	{ buff_out_11_V_ce1 sc_out sc_logic 1 signal 15 } 
	{ buff_out_11_V_we1 sc_out sc_logic 1 signal 15 } 
	{ buff_out_11_V_d1 sc_out sc_lv 16 signal 15 } 
	{ buff_out_12_V_address0 sc_out sc_lv 8 signal 16 } 
	{ buff_out_12_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ buff_out_12_V_we0 sc_out sc_logic 1 signal 16 } 
	{ buff_out_12_V_d0 sc_out sc_lv 16 signal 16 } 
	{ buff_out_12_V_q0 sc_in sc_lv 16 signal 16 } 
	{ buff_out_12_V_address1 sc_out sc_lv 8 signal 16 } 
	{ buff_out_12_V_ce1 sc_out sc_logic 1 signal 16 } 
	{ buff_out_12_V_we1 sc_out sc_logic 1 signal 16 } 
	{ buff_out_12_V_d1 sc_out sc_lv 16 signal 16 } 
	{ buff_out_13_V_address0 sc_out sc_lv 8 signal 17 } 
	{ buff_out_13_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ buff_out_13_V_we0 sc_out sc_logic 1 signal 17 } 
	{ buff_out_13_V_d0 sc_out sc_lv 16 signal 17 } 
	{ buff_out_13_V_q0 sc_in sc_lv 16 signal 17 } 
	{ buff_out_13_V_address1 sc_out sc_lv 8 signal 17 } 
	{ buff_out_13_V_ce1 sc_out sc_logic 1 signal 17 } 
	{ buff_out_13_V_we1 sc_out sc_logic 1 signal 17 } 
	{ buff_out_13_V_d1 sc_out sc_lv 16 signal 17 } 
	{ buff_out_14_V_address0 sc_out sc_lv 8 signal 18 } 
	{ buff_out_14_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ buff_out_14_V_we0 sc_out sc_logic 1 signal 18 } 
	{ buff_out_14_V_d0 sc_out sc_lv 16 signal 18 } 
	{ buff_out_14_V_q0 sc_in sc_lv 16 signal 18 } 
	{ buff_out_14_V_address1 sc_out sc_lv 8 signal 18 } 
	{ buff_out_14_V_ce1 sc_out sc_logic 1 signal 18 } 
	{ buff_out_14_V_we1 sc_out sc_logic 1 signal 18 } 
	{ buff_out_14_V_d1 sc_out sc_lv 16 signal 18 } 
	{ buff_out_15_V_address0 sc_out sc_lv 8 signal 19 } 
	{ buff_out_15_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ buff_out_15_V_we0 sc_out sc_logic 1 signal 19 } 
	{ buff_out_15_V_d0 sc_out sc_lv 16 signal 19 } 
	{ buff_out_15_V_q0 sc_in sc_lv 16 signal 19 } 
	{ buff_out_15_V_address1 sc_out sc_lv 8 signal 19 } 
	{ buff_out_15_V_ce1 sc_out sc_logic 1 signal 19 } 
	{ buff_out_15_V_we1 sc_out sc_logic 1 signal 19 } 
	{ buff_out_15_V_d1 sc_out sc_lv 16 signal 19 } 
	{ bias_buff_V_address0 sc_out sc_lv 6 signal 20 } 
	{ bias_buff_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ bias_buff_V_q0 sc_in sc_lv 16 signal 20 } 
	{ bias_buff_V16_address0 sc_out sc_lv 6 signal 21 } 
	{ bias_buff_V16_ce0 sc_out sc_logic 1 signal 21 } 
	{ bias_buff_V16_q0 sc_in sc_lv 16 signal 21 } 
	{ bias_buff_V17_address0 sc_out sc_lv 6 signal 22 } 
	{ bias_buff_V17_ce0 sc_out sc_logic 1 signal 22 } 
	{ bias_buff_V17_q0 sc_in sc_lv 16 signal 22 } 
	{ bias_buff_V18_address0 sc_out sc_lv 6 signal 23 } 
	{ bias_buff_V18_ce0 sc_out sc_logic 1 signal 23 } 
	{ bias_buff_V18_q0 sc_in sc_lv 16 signal 23 } 
	{ bias_buff_V19_address0 sc_out sc_lv 6 signal 24 } 
	{ bias_buff_V19_ce0 sc_out sc_logic 1 signal 24 } 
	{ bias_buff_V19_q0 sc_in sc_lv 16 signal 24 } 
	{ bias_buff_V20_address0 sc_out sc_lv 6 signal 25 } 
	{ bias_buff_V20_ce0 sc_out sc_logic 1 signal 25 } 
	{ bias_buff_V20_q0 sc_in sc_lv 16 signal 25 } 
	{ bias_buff_V21_address0 sc_out sc_lv 6 signal 26 } 
	{ bias_buff_V21_ce0 sc_out sc_logic 1 signal 26 } 
	{ bias_buff_V21_q0 sc_in sc_lv 16 signal 26 } 
	{ bias_buff_V22_address0 sc_out sc_lv 6 signal 27 } 
	{ bias_buff_V22_ce0 sc_out sc_logic 1 signal 27 } 
	{ bias_buff_V22_q0 sc_in sc_lv 16 signal 27 } 
	{ bias_buff_V23_address0 sc_out sc_lv 6 signal 28 } 
	{ bias_buff_V23_ce0 sc_out sc_logic 1 signal 28 } 
	{ bias_buff_V23_q0 sc_in sc_lv 16 signal 28 } 
	{ bias_buff_V24_address0 sc_out sc_lv 6 signal 29 } 
	{ bias_buff_V24_ce0 sc_out sc_logic 1 signal 29 } 
	{ bias_buff_V24_q0 sc_in sc_lv 16 signal 29 } 
	{ bias_buff_V25_address0 sc_out sc_lv 6 signal 30 } 
	{ bias_buff_V25_ce0 sc_out sc_logic 1 signal 30 } 
	{ bias_buff_V25_q0 sc_in sc_lv 16 signal 30 } 
	{ bias_buff_V26_address0 sc_out sc_lv 6 signal 31 } 
	{ bias_buff_V26_ce0 sc_out sc_logic 1 signal 31 } 
	{ bias_buff_V26_q0 sc_in sc_lv 16 signal 31 } 
	{ bias_buff_V27_address0 sc_out sc_lv 6 signal 32 } 
	{ bias_buff_V27_ce0 sc_out sc_logic 1 signal 32 } 
	{ bias_buff_V27_q0 sc_in sc_lv 16 signal 32 } 
	{ bias_buff_V28_address0 sc_out sc_lv 6 signal 33 } 
	{ bias_buff_V28_ce0 sc_out sc_logic 1 signal 33 } 
	{ bias_buff_V28_q0 sc_in sc_lv 16 signal 33 } 
	{ bias_buff_V29_address0 sc_out sc_lv 6 signal 34 } 
	{ bias_buff_V29_ce0 sc_out sc_logic 1 signal 34 } 
	{ bias_buff_V29_q0 sc_in sc_lv 16 signal 34 } 
	{ bias_buff_V30_address0 sc_out sc_lv 6 signal 35 } 
	{ bias_buff_V30_ce0 sc_out sc_logic 1 signal 35 } 
	{ bias_buff_V30_q0 sc_in sc_lv 16 signal 35 } 
	{ bias_buff_V_offset sc_in sc_lv 30 signal 36 } 
	{ ch_in sc_in sc_lv 32 signal 37 } 
	{ m sc_in sc_lv 32 signal 38 } 
	{ p sc_in sc_lv 32 signal 39 } 
	{ size sc_in sc_lv 32 signal 40 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_in_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_in_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_in_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_in_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "AWID" }} , 
 	{ "name": "m_axi_in_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_in_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_in_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_in_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_in_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_in_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_in_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_in_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_in_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_in_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_in_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_in_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_in_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_in_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_in_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "WID" }} , 
 	{ "name": "m_axi_in_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_in_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_in_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_in_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_in_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "ARID" }} , 
 	{ "name": "m_axi_in_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_in_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_in_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_in_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_in_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_in_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_in_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_in_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_in_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_in_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_in_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_in_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_in_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_in_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "RID" }} , 
 	{ "name": "m_axi_in_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_in_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_in_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_in_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_in_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_in_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "BID" }} , 
 	{ "name": "m_axi_in_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "BUSER" }} , 
 	{ "name": "in_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "in_V_offset", "role": "default" }} , 
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
 	{ "name": "buff_out_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "address0" }} , 
 	{ "name": "buff_out_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "ce0" }} , 
 	{ "name": "buff_out_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "we0" }} , 
 	{ "name": "buff_out_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "d0" }} , 
 	{ "name": "buff_out_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "q0" }} , 
 	{ "name": "buff_out_0_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "address1" }} , 
 	{ "name": "buff_out_0_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "ce1" }} , 
 	{ "name": "buff_out_0_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "we1" }} , 
 	{ "name": "buff_out_0_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_0_V", "role": "d1" }} , 
 	{ "name": "buff_out_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "address0" }} , 
 	{ "name": "buff_out_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "ce0" }} , 
 	{ "name": "buff_out_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "we0" }} , 
 	{ "name": "buff_out_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "d0" }} , 
 	{ "name": "buff_out_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "q0" }} , 
 	{ "name": "buff_out_1_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "address1" }} , 
 	{ "name": "buff_out_1_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "ce1" }} , 
 	{ "name": "buff_out_1_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "we1" }} , 
 	{ "name": "buff_out_1_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_1_V", "role": "d1" }} , 
 	{ "name": "buff_out_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "address0" }} , 
 	{ "name": "buff_out_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "ce0" }} , 
 	{ "name": "buff_out_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "we0" }} , 
 	{ "name": "buff_out_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "d0" }} , 
 	{ "name": "buff_out_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "q0" }} , 
 	{ "name": "buff_out_2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "address1" }} , 
 	{ "name": "buff_out_2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "ce1" }} , 
 	{ "name": "buff_out_2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "we1" }} , 
 	{ "name": "buff_out_2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_2_V", "role": "d1" }} , 
 	{ "name": "buff_out_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "address0" }} , 
 	{ "name": "buff_out_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "ce0" }} , 
 	{ "name": "buff_out_3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "we0" }} , 
 	{ "name": "buff_out_3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "d0" }} , 
 	{ "name": "buff_out_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "q0" }} , 
 	{ "name": "buff_out_3_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "address1" }} , 
 	{ "name": "buff_out_3_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "ce1" }} , 
 	{ "name": "buff_out_3_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "we1" }} , 
 	{ "name": "buff_out_3_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_3_V", "role": "d1" }} , 
 	{ "name": "buff_out_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "address0" }} , 
 	{ "name": "buff_out_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "ce0" }} , 
 	{ "name": "buff_out_4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "we0" }} , 
 	{ "name": "buff_out_4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "d0" }} , 
 	{ "name": "buff_out_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "q0" }} , 
 	{ "name": "buff_out_4_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "address1" }} , 
 	{ "name": "buff_out_4_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "ce1" }} , 
 	{ "name": "buff_out_4_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "we1" }} , 
 	{ "name": "buff_out_4_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_4_V", "role": "d1" }} , 
 	{ "name": "buff_out_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "address0" }} , 
 	{ "name": "buff_out_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "ce0" }} , 
 	{ "name": "buff_out_5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "we0" }} , 
 	{ "name": "buff_out_5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "d0" }} , 
 	{ "name": "buff_out_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "q0" }} , 
 	{ "name": "buff_out_5_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "address1" }} , 
 	{ "name": "buff_out_5_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "ce1" }} , 
 	{ "name": "buff_out_5_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "we1" }} , 
 	{ "name": "buff_out_5_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_5_V", "role": "d1" }} , 
 	{ "name": "buff_out_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "address0" }} , 
 	{ "name": "buff_out_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "ce0" }} , 
 	{ "name": "buff_out_6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "we0" }} , 
 	{ "name": "buff_out_6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "d0" }} , 
 	{ "name": "buff_out_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "q0" }} , 
 	{ "name": "buff_out_6_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "address1" }} , 
 	{ "name": "buff_out_6_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "ce1" }} , 
 	{ "name": "buff_out_6_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "we1" }} , 
 	{ "name": "buff_out_6_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_6_V", "role": "d1" }} , 
 	{ "name": "buff_out_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "address0" }} , 
 	{ "name": "buff_out_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "ce0" }} , 
 	{ "name": "buff_out_7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "we0" }} , 
 	{ "name": "buff_out_7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "d0" }} , 
 	{ "name": "buff_out_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "q0" }} , 
 	{ "name": "buff_out_7_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "address1" }} , 
 	{ "name": "buff_out_7_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "ce1" }} , 
 	{ "name": "buff_out_7_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "we1" }} , 
 	{ "name": "buff_out_7_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_7_V", "role": "d1" }} , 
 	{ "name": "buff_out_8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "address0" }} , 
 	{ "name": "buff_out_8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "ce0" }} , 
 	{ "name": "buff_out_8_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "we0" }} , 
 	{ "name": "buff_out_8_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "d0" }} , 
 	{ "name": "buff_out_8_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "q0" }} , 
 	{ "name": "buff_out_8_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "address1" }} , 
 	{ "name": "buff_out_8_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "ce1" }} , 
 	{ "name": "buff_out_8_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "we1" }} , 
 	{ "name": "buff_out_8_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_8_V", "role": "d1" }} , 
 	{ "name": "buff_out_9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "address0" }} , 
 	{ "name": "buff_out_9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "ce0" }} , 
 	{ "name": "buff_out_9_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "we0" }} , 
 	{ "name": "buff_out_9_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "d0" }} , 
 	{ "name": "buff_out_9_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "q0" }} , 
 	{ "name": "buff_out_9_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "address1" }} , 
 	{ "name": "buff_out_9_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "ce1" }} , 
 	{ "name": "buff_out_9_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "we1" }} , 
 	{ "name": "buff_out_9_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_9_V", "role": "d1" }} , 
 	{ "name": "buff_out_10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "address0" }} , 
 	{ "name": "buff_out_10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "ce0" }} , 
 	{ "name": "buff_out_10_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "we0" }} , 
 	{ "name": "buff_out_10_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "d0" }} , 
 	{ "name": "buff_out_10_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "q0" }} , 
 	{ "name": "buff_out_10_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "address1" }} , 
 	{ "name": "buff_out_10_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "ce1" }} , 
 	{ "name": "buff_out_10_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "we1" }} , 
 	{ "name": "buff_out_10_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_10_V", "role": "d1" }} , 
 	{ "name": "buff_out_11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "address0" }} , 
 	{ "name": "buff_out_11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "ce0" }} , 
 	{ "name": "buff_out_11_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "we0" }} , 
 	{ "name": "buff_out_11_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "d0" }} , 
 	{ "name": "buff_out_11_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "q0" }} , 
 	{ "name": "buff_out_11_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "address1" }} , 
 	{ "name": "buff_out_11_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "ce1" }} , 
 	{ "name": "buff_out_11_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "we1" }} , 
 	{ "name": "buff_out_11_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_11_V", "role": "d1" }} , 
 	{ "name": "buff_out_12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "address0" }} , 
 	{ "name": "buff_out_12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "ce0" }} , 
 	{ "name": "buff_out_12_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "we0" }} , 
 	{ "name": "buff_out_12_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "d0" }} , 
 	{ "name": "buff_out_12_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "q0" }} , 
 	{ "name": "buff_out_12_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "address1" }} , 
 	{ "name": "buff_out_12_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "ce1" }} , 
 	{ "name": "buff_out_12_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "we1" }} , 
 	{ "name": "buff_out_12_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_12_V", "role": "d1" }} , 
 	{ "name": "buff_out_13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "address0" }} , 
 	{ "name": "buff_out_13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "ce0" }} , 
 	{ "name": "buff_out_13_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "we0" }} , 
 	{ "name": "buff_out_13_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "d0" }} , 
 	{ "name": "buff_out_13_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "q0" }} , 
 	{ "name": "buff_out_13_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "address1" }} , 
 	{ "name": "buff_out_13_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "ce1" }} , 
 	{ "name": "buff_out_13_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "we1" }} , 
 	{ "name": "buff_out_13_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_13_V", "role": "d1" }} , 
 	{ "name": "buff_out_14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "address0" }} , 
 	{ "name": "buff_out_14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "ce0" }} , 
 	{ "name": "buff_out_14_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "we0" }} , 
 	{ "name": "buff_out_14_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "d0" }} , 
 	{ "name": "buff_out_14_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "q0" }} , 
 	{ "name": "buff_out_14_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "address1" }} , 
 	{ "name": "buff_out_14_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "ce1" }} , 
 	{ "name": "buff_out_14_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "we1" }} , 
 	{ "name": "buff_out_14_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_14_V", "role": "d1" }} , 
 	{ "name": "buff_out_15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "address0" }} , 
 	{ "name": "buff_out_15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "ce0" }} , 
 	{ "name": "buff_out_15_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "we0" }} , 
 	{ "name": "buff_out_15_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "d0" }} , 
 	{ "name": "buff_out_15_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "q0" }} , 
 	{ "name": "buff_out_15_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "address1" }} , 
 	{ "name": "buff_out_15_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "ce1" }} , 
 	{ "name": "buff_out_15_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "we1" }} , 
 	{ "name": "buff_out_15_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_out_15_V", "role": "d1" }} , 
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
 	{ "name": "bias_buff_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "bias_buff_V_offset", "role": "default" }} , 
 	{ "name": "ch_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch_in", "role": "default" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "p", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "default" }} , 
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "138", "140", "142"],
		"CDFG" : "compute_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5559", "EstimateLatencyMax" : "5559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_fu_1783"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_fu_1783"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_fu_1783"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_fu_1783"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_weight_fu_2015"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_weight_fu_2015"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_weight_fu_2015"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_input_fu_2414"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_input_fu_2414"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_input_fu_2414"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_bias_fu_2437"}],
		"Port" : [
			{"Name" : "in_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_load_input_fu_2414", "Port" : "in_V"}]},
			{"Name" : "in_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_load_weight_fu_2015", "Port" : "weight_V"}]},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_out_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_0_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_0_V"}]},
			{"Name" : "buff_out_1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_1_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_1_V"}]},
			{"Name" : "buff_out_2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_2_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_2_V"}]},
			{"Name" : "buff_out_3_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_3_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_3_V"}]},
			{"Name" : "buff_out_4_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_4_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_4_V"}]},
			{"Name" : "buff_out_5_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_5_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_5_V"}]},
			{"Name" : "buff_out_6_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_6_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_6_V"}]},
			{"Name" : "buff_out_7_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_7_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_7_V"}]},
			{"Name" : "buff_out_8_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_8_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_8_V"}]},
			{"Name" : "buff_out_9_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_9_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_9_V"}]},
			{"Name" : "buff_out_10_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_10_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_10_V"}]},
			{"Name" : "buff_out_11_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_11_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_11_V"}]},
			{"Name" : "buff_out_12_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_12_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_12_V"}]},
			{"Name" : "buff_out_13_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_13_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_13_V"}]},
			{"Name" : "buff_out_14_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_14_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_14_V"}]},
			{"Name" : "buff_out_15_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_15_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_15_V"}]},
			{"Name" : "bias_buff_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V"}]},
			{"Name" : "bias_buff_V16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V16"}]},
			{"Name" : "bias_buff_V17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V17"}]},
			{"Name" : "bias_buff_V18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V18"}]},
			{"Name" : "bias_buff_V19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V19"}]},
			{"Name" : "bias_buff_V20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V20"}]},
			{"Name" : "bias_buff_V21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V21"}]},
			{"Name" : "bias_buff_V22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V22"}]},
			{"Name" : "bias_buff_V23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V23"}]},
			{"Name" : "bias_buff_V24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V24"}]},
			{"Name" : "bias_buff_V25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V25"}]},
			{"Name" : "bias_buff_V26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V26"}]},
			{"Name" : "bias_buff_V27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V27"}]},
			{"Name" : "bias_buff_V28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V28"}]},
			{"Name" : "bias_buff_V29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V29"}]},
			{"Name" : "bias_buff_V30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V30"}]},
			{"Name" : "bias_buff_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_in1_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_in1_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_in1_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_in1_3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_in2_0_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_in2_1_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_in2_2_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_in2_3_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "455", "EstimateLatencyMax" : "455",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "buff_in_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_in_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_in_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_in_3_V", "Type" : "Memory", "Direction" : "I"},
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
			{"Name" : "buff_out_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_2_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_3_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_4_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_5_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_6_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_7_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_8_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_9_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_10_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_11_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_12_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_13_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_14_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_out_15_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U246", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U247", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U248", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U249", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U250", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U251", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U252", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U253", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U254", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U255", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U256", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U257", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U258", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U259", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U260", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U261", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U262", "Parent" : "9"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U263", "Parent" : "9"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U264", "Parent" : "9"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U265", "Parent" : "9"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U266", "Parent" : "9"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U267", "Parent" : "9"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U268", "Parent" : "9"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U269", "Parent" : "9"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U270", "Parent" : "9"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U271", "Parent" : "9"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U272", "Parent" : "9"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U273", "Parent" : "9"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U274", "Parent" : "9"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U275", "Parent" : "9"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U276", "Parent" : "9"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U277", "Parent" : "9"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U278", "Parent" : "9"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U279", "Parent" : "9"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U280", "Parent" : "9"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U281", "Parent" : "9"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U282", "Parent" : "9"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U283", "Parent" : "9"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U284", "Parent" : "9"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U285", "Parent" : "9"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U286", "Parent" : "9"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U287", "Parent" : "9"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U288", "Parent" : "9"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U289", "Parent" : "9"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U290", "Parent" : "9"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U291", "Parent" : "9"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U292", "Parent" : "9"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U293", "Parent" : "9"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U294", "Parent" : "9"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U295", "Parent" : "9"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U296", "Parent" : "9"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U297", "Parent" : "9"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U298", "Parent" : "9"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U299", "Parent" : "9"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U300", "Parent" : "9"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U301", "Parent" : "9"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U302", "Parent" : "9"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U303", "Parent" : "9"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U304", "Parent" : "9"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U305", "Parent" : "9"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U306", "Parent" : "9"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U307", "Parent" : "9"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U308", "Parent" : "9"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U309", "Parent" : "9"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U310", "Parent" : "9"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U311", "Parent" : "9"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U312", "Parent" : "9"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U313", "Parent" : "9"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U314", "Parent" : "9"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U315", "Parent" : "9"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U316", "Parent" : "9"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U317", "Parent" : "9"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U318", "Parent" : "9"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U319", "Parent" : "9"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U320", "Parent" : "9"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U321", "Parent" : "9"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U322", "Parent" : "9"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U323", "Parent" : "9"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U324", "Parent" : "9"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U325", "Parent" : "9"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U326", "Parent" : "9"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U327", "Parent" : "9"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U328", "Parent" : "9"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U329", "Parent" : "9"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U330", "Parent" : "9"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U331", "Parent" : "9"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U332", "Parent" : "9"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U333", "Parent" : "9"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U334", "Parent" : "9"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U335", "Parent" : "9"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U336", "Parent" : "9"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U337", "Parent" : "9"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U338", "Parent" : "9"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U339", "Parent" : "9"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U340", "Parent" : "9"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U341", "Parent" : "9"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U342", "Parent" : "9"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U343", "Parent" : "9"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U344", "Parent" : "9"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U345", "Parent" : "9"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U346", "Parent" : "9"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U347", "Parent" : "9"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U348", "Parent" : "9"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U349", "Parent" : "9"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U350", "Parent" : "9"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U351", "Parent" : "9"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U352", "Parent" : "9"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U353", "Parent" : "9"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U354", "Parent" : "9"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U355", "Parent" : "9"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U356", "Parent" : "9"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U357", "Parent" : "9"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U358", "Parent" : "9"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U359", "Parent" : "9"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U360", "Parent" : "9"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U361", "Parent" : "9"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U362", "Parent" : "9"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U363", "Parent" : "9"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U364", "Parent" : "9"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U365", "Parent" : "9"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U366", "Parent" : "9"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U367", "Parent" : "9"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U368", "Parent" : "9"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U369", "Parent" : "9"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U370", "Parent" : "9"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U371", "Parent" : "9"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U372", "Parent" : "9"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U373", "Parent" : "9"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_weight_fu_2015", "Parent" : "0", "Child" : ["139"],
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
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_weight_fu_2015.conv1d_urem_8ns_3dEe_U47", "Parent" : "138"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_input_fu_2414", "Parent" : "0", "Child" : ["141"],
		"CDFG" : "load_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "631", "EstimateLatencyMax" : "631",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "in_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_in_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_in_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_in_2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_in_3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_input_fu_2414.conv1d_urem_10ns_cud_U36", "Parent" : "140"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_bias_fu_2437", "Parent" : "0", "Child" : ["143"],
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
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_bias_fu_2437.conv1d_mux_164_16bkb_U1", "Parent" : "142"}]}


set ArgLastReadFirstWriteLatency {
	compute_output {
		in_V {Type I LastRead 22 FirstWrite -1}
		in_V_offset {Type I LastRead 0 FirstWrite -1}
		weight_V {Type I LastRead 20 FirstWrite -1}
		weight_V_offset {Type I LastRead 0 FirstWrite -1}
		buff_out_0_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_1_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_2_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_3_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_4_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_5_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_6_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_7_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_8_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_9_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_10_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_11_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_12_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_13_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_14_V {Type IO LastRead 1 FirstWrite 3}
		buff_out_15_V {Type IO LastRead 1 FirstWrite 3}
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
		bias_buff_V_offset {Type I LastRead 0 FirstWrite -1}
		ch_in {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}
	compute {
		buff_in_0_V {Type I LastRead 1 FirstWrite -1}
		buff_in_1_V {Type I LastRead 1 FirstWrite -1}
		buff_in_2_V {Type I LastRead 1 FirstWrite -1}
		buff_in_3_V {Type I LastRead 1 FirstWrite -1}
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
		buff_out_0_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_1_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_2_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_3_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_4_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_5_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_6_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_7_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_8_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_9_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_10_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_11_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_12_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_13_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_14_V {Type IO LastRead 1 FirstWrite 5}
		buff_out_15_V {Type IO LastRead 1 FirstWrite 5}}
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
		ch_in {Type I LastRead 0 FirstWrite -1}}
	load_input {
		in_V {Type I LastRead 22 FirstWrite -1}
		in_V_offset {Type I LastRead 0 FirstWrite -1}
		buff_in_0_V {Type O LastRead -1 FirstWrite 23}
		buff_in_1_V {Type O LastRead -1 FirstWrite 23}
		buff_in_2_V {Type O LastRead -1 FirstWrite 23}
		buff_in_3_V {Type O LastRead -1 FirstWrite 23}
		n {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "5559", "Max" : "5559"}
	, {"Name" : "Interval", "Min" : "5559", "Max" : "5559"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V { m_axi {  { m_axi_in_V_AWVALID VALID 1 1 }  { m_axi_in_V_AWREADY READY 0 1 }  { m_axi_in_V_AWADDR ADDR 1 32 }  { m_axi_in_V_AWID ID 1 1 }  { m_axi_in_V_AWLEN LEN 1 32 }  { m_axi_in_V_AWSIZE SIZE 1 3 }  { m_axi_in_V_AWBURST BURST 1 2 }  { m_axi_in_V_AWLOCK LOCK 1 2 }  { m_axi_in_V_AWCACHE CACHE 1 4 }  { m_axi_in_V_AWPROT PROT 1 3 }  { m_axi_in_V_AWQOS QOS 1 4 }  { m_axi_in_V_AWREGION REGION 1 4 }  { m_axi_in_V_AWUSER USER 1 1 }  { m_axi_in_V_WVALID VALID 1 1 }  { m_axi_in_V_WREADY READY 0 1 }  { m_axi_in_V_WDATA DATA 1 16 }  { m_axi_in_V_WSTRB STRB 1 2 }  { m_axi_in_V_WLAST LAST 1 1 }  { m_axi_in_V_WID ID 1 1 }  { m_axi_in_V_WUSER USER 1 1 }  { m_axi_in_V_ARVALID VALID 1 1 }  { m_axi_in_V_ARREADY READY 0 1 }  { m_axi_in_V_ARADDR ADDR 1 32 }  { m_axi_in_V_ARID ID 1 1 }  { m_axi_in_V_ARLEN LEN 1 32 }  { m_axi_in_V_ARSIZE SIZE 1 3 }  { m_axi_in_V_ARBURST BURST 1 2 }  { m_axi_in_V_ARLOCK LOCK 1 2 }  { m_axi_in_V_ARCACHE CACHE 1 4 }  { m_axi_in_V_ARPROT PROT 1 3 }  { m_axi_in_V_ARQOS QOS 1 4 }  { m_axi_in_V_ARREGION REGION 1 4 }  { m_axi_in_V_ARUSER USER 1 1 }  { m_axi_in_V_RVALID VALID 0 1 }  { m_axi_in_V_RREADY READY 1 1 }  { m_axi_in_V_RDATA DATA 0 16 }  { m_axi_in_V_RLAST LAST 0 1 }  { m_axi_in_V_RID ID 0 1 }  { m_axi_in_V_RUSER USER 0 1 }  { m_axi_in_V_RRESP RESP 0 2 }  { m_axi_in_V_BVALID VALID 0 1 }  { m_axi_in_V_BREADY READY 1 1 }  { m_axi_in_V_BRESP RESP 0 2 }  { m_axi_in_V_BID ID 0 1 }  { m_axi_in_V_BUSER USER 0 1 } } }
	in_V_offset { ap_none {  { in_V_offset in_data 0 31 } } }
	weight_V { m_axi {  { m_axi_weight_V_AWVALID VALID 1 1 }  { m_axi_weight_V_AWREADY READY 0 1 }  { m_axi_weight_V_AWADDR ADDR 1 32 }  { m_axi_weight_V_AWID ID 1 1 }  { m_axi_weight_V_AWLEN LEN 1 32 }  { m_axi_weight_V_AWSIZE SIZE 1 3 }  { m_axi_weight_V_AWBURST BURST 1 2 }  { m_axi_weight_V_AWLOCK LOCK 1 2 }  { m_axi_weight_V_AWCACHE CACHE 1 4 }  { m_axi_weight_V_AWPROT PROT 1 3 }  { m_axi_weight_V_AWQOS QOS 1 4 }  { m_axi_weight_V_AWREGION REGION 1 4 }  { m_axi_weight_V_AWUSER USER 1 1 }  { m_axi_weight_V_WVALID VALID 1 1 }  { m_axi_weight_V_WREADY READY 0 1 }  { m_axi_weight_V_WDATA DATA 1 16 }  { m_axi_weight_V_WSTRB STRB 1 2 }  { m_axi_weight_V_WLAST LAST 1 1 }  { m_axi_weight_V_WID ID 1 1 }  { m_axi_weight_V_WUSER USER 1 1 }  { m_axi_weight_V_ARVALID VALID 1 1 }  { m_axi_weight_V_ARREADY READY 0 1 }  { m_axi_weight_V_ARADDR ADDR 1 32 }  { m_axi_weight_V_ARID ID 1 1 }  { m_axi_weight_V_ARLEN LEN 1 32 }  { m_axi_weight_V_ARSIZE SIZE 1 3 }  { m_axi_weight_V_ARBURST BURST 1 2 }  { m_axi_weight_V_ARLOCK LOCK 1 2 }  { m_axi_weight_V_ARCACHE CACHE 1 4 }  { m_axi_weight_V_ARPROT PROT 1 3 }  { m_axi_weight_V_ARQOS QOS 1 4 }  { m_axi_weight_V_ARREGION REGION 1 4 }  { m_axi_weight_V_ARUSER USER 1 1 }  { m_axi_weight_V_RVALID VALID 0 1 }  { m_axi_weight_V_RREADY READY 1 1 }  { m_axi_weight_V_RDATA DATA 0 16 }  { m_axi_weight_V_RLAST LAST 0 1 }  { m_axi_weight_V_RID ID 0 1 }  { m_axi_weight_V_RUSER USER 0 1 }  { m_axi_weight_V_RRESP RESP 0 2 }  { m_axi_weight_V_BVALID VALID 0 1 }  { m_axi_weight_V_BREADY READY 1 1 }  { m_axi_weight_V_BRESP RESP 0 2 }  { m_axi_weight_V_BID ID 0 1 }  { m_axi_weight_V_BUSER USER 0 1 } } }
	weight_V_offset { ap_none {  { weight_V_offset in_data 0 31 } } }
	buff_out_0_V { ap_memory {  { buff_out_0_V_address0 mem_address 1 8 }  { buff_out_0_V_ce0 mem_ce 1 1 }  { buff_out_0_V_we0 mem_we 1 1 }  { buff_out_0_V_d0 mem_din 1 16 }  { buff_out_0_V_q0 mem_dout 0 16 }  { buff_out_0_V_address1 MemPortADDR2 1 8 }  { buff_out_0_V_ce1 MemPortCE2 1 1 }  { buff_out_0_V_we1 MemPortWE2 1 1 }  { buff_out_0_V_d1 MemPortDIN2 1 16 } } }
	buff_out_1_V { ap_memory {  { buff_out_1_V_address0 mem_address 1 8 }  { buff_out_1_V_ce0 mem_ce 1 1 }  { buff_out_1_V_we0 mem_we 1 1 }  { buff_out_1_V_d0 mem_din 1 16 }  { buff_out_1_V_q0 mem_dout 0 16 }  { buff_out_1_V_address1 MemPortADDR2 1 8 }  { buff_out_1_V_ce1 MemPortCE2 1 1 }  { buff_out_1_V_we1 MemPortWE2 1 1 }  { buff_out_1_V_d1 MemPortDIN2 1 16 } } }
	buff_out_2_V { ap_memory {  { buff_out_2_V_address0 mem_address 1 8 }  { buff_out_2_V_ce0 mem_ce 1 1 }  { buff_out_2_V_we0 mem_we 1 1 }  { buff_out_2_V_d0 mem_din 1 16 }  { buff_out_2_V_q0 mem_dout 0 16 }  { buff_out_2_V_address1 MemPortADDR2 1 8 }  { buff_out_2_V_ce1 MemPortCE2 1 1 }  { buff_out_2_V_we1 MemPortWE2 1 1 }  { buff_out_2_V_d1 MemPortDIN2 1 16 } } }
	buff_out_3_V { ap_memory {  { buff_out_3_V_address0 mem_address 1 8 }  { buff_out_3_V_ce0 mem_ce 1 1 }  { buff_out_3_V_we0 mem_we 1 1 }  { buff_out_3_V_d0 mem_din 1 16 }  { buff_out_3_V_q0 mem_dout 0 16 }  { buff_out_3_V_address1 MemPortADDR2 1 8 }  { buff_out_3_V_ce1 MemPortCE2 1 1 }  { buff_out_3_V_we1 MemPortWE2 1 1 }  { buff_out_3_V_d1 MemPortDIN2 1 16 } } }
	buff_out_4_V { ap_memory {  { buff_out_4_V_address0 mem_address 1 8 }  { buff_out_4_V_ce0 mem_ce 1 1 }  { buff_out_4_V_we0 mem_we 1 1 }  { buff_out_4_V_d0 mem_din 1 16 }  { buff_out_4_V_q0 mem_dout 0 16 }  { buff_out_4_V_address1 MemPortADDR2 1 8 }  { buff_out_4_V_ce1 MemPortCE2 1 1 }  { buff_out_4_V_we1 MemPortWE2 1 1 }  { buff_out_4_V_d1 MemPortDIN2 1 16 } } }
	buff_out_5_V { ap_memory {  { buff_out_5_V_address0 mem_address 1 8 }  { buff_out_5_V_ce0 mem_ce 1 1 }  { buff_out_5_V_we0 mem_we 1 1 }  { buff_out_5_V_d0 mem_din 1 16 }  { buff_out_5_V_q0 mem_dout 0 16 }  { buff_out_5_V_address1 MemPortADDR2 1 8 }  { buff_out_5_V_ce1 MemPortCE2 1 1 }  { buff_out_5_V_we1 MemPortWE2 1 1 }  { buff_out_5_V_d1 MemPortDIN2 1 16 } } }
	buff_out_6_V { ap_memory {  { buff_out_6_V_address0 mem_address 1 8 }  { buff_out_6_V_ce0 mem_ce 1 1 }  { buff_out_6_V_we0 mem_we 1 1 }  { buff_out_6_V_d0 mem_din 1 16 }  { buff_out_6_V_q0 mem_dout 0 16 }  { buff_out_6_V_address1 MemPortADDR2 1 8 }  { buff_out_6_V_ce1 MemPortCE2 1 1 }  { buff_out_6_V_we1 MemPortWE2 1 1 }  { buff_out_6_V_d1 MemPortDIN2 1 16 } } }
	buff_out_7_V { ap_memory {  { buff_out_7_V_address0 mem_address 1 8 }  { buff_out_7_V_ce0 mem_ce 1 1 }  { buff_out_7_V_we0 mem_we 1 1 }  { buff_out_7_V_d0 mem_din 1 16 }  { buff_out_7_V_q0 mem_dout 0 16 }  { buff_out_7_V_address1 MemPortADDR2 1 8 }  { buff_out_7_V_ce1 MemPortCE2 1 1 }  { buff_out_7_V_we1 MemPortWE2 1 1 }  { buff_out_7_V_d1 MemPortDIN2 1 16 } } }
	buff_out_8_V { ap_memory {  { buff_out_8_V_address0 mem_address 1 8 }  { buff_out_8_V_ce0 mem_ce 1 1 }  { buff_out_8_V_we0 mem_we 1 1 }  { buff_out_8_V_d0 mem_din 1 16 }  { buff_out_8_V_q0 mem_dout 0 16 }  { buff_out_8_V_address1 MemPortADDR2 1 8 }  { buff_out_8_V_ce1 MemPortCE2 1 1 }  { buff_out_8_V_we1 MemPortWE2 1 1 }  { buff_out_8_V_d1 MemPortDIN2 1 16 } } }
	buff_out_9_V { ap_memory {  { buff_out_9_V_address0 mem_address 1 8 }  { buff_out_9_V_ce0 mem_ce 1 1 }  { buff_out_9_V_we0 mem_we 1 1 }  { buff_out_9_V_d0 mem_din 1 16 }  { buff_out_9_V_q0 mem_dout 0 16 }  { buff_out_9_V_address1 MemPortADDR2 1 8 }  { buff_out_9_V_ce1 MemPortCE2 1 1 }  { buff_out_9_V_we1 MemPortWE2 1 1 }  { buff_out_9_V_d1 MemPortDIN2 1 16 } } }
	buff_out_10_V { ap_memory {  { buff_out_10_V_address0 mem_address 1 8 }  { buff_out_10_V_ce0 mem_ce 1 1 }  { buff_out_10_V_we0 mem_we 1 1 }  { buff_out_10_V_d0 mem_din 1 16 }  { buff_out_10_V_q0 mem_dout 0 16 }  { buff_out_10_V_address1 MemPortADDR2 1 8 }  { buff_out_10_V_ce1 MemPortCE2 1 1 }  { buff_out_10_V_we1 MemPortWE2 1 1 }  { buff_out_10_V_d1 MemPortDIN2 1 16 } } }
	buff_out_11_V { ap_memory {  { buff_out_11_V_address0 mem_address 1 8 }  { buff_out_11_V_ce0 mem_ce 1 1 }  { buff_out_11_V_we0 mem_we 1 1 }  { buff_out_11_V_d0 mem_din 1 16 }  { buff_out_11_V_q0 mem_dout 0 16 }  { buff_out_11_V_address1 MemPortADDR2 1 8 }  { buff_out_11_V_ce1 MemPortCE2 1 1 }  { buff_out_11_V_we1 MemPortWE2 1 1 }  { buff_out_11_V_d1 MemPortDIN2 1 16 } } }
	buff_out_12_V { ap_memory {  { buff_out_12_V_address0 mem_address 1 8 }  { buff_out_12_V_ce0 mem_ce 1 1 }  { buff_out_12_V_we0 mem_we 1 1 }  { buff_out_12_V_d0 mem_din 1 16 }  { buff_out_12_V_q0 mem_dout 0 16 }  { buff_out_12_V_address1 MemPortADDR2 1 8 }  { buff_out_12_V_ce1 MemPortCE2 1 1 }  { buff_out_12_V_we1 MemPortWE2 1 1 }  { buff_out_12_V_d1 MemPortDIN2 1 16 } } }
	buff_out_13_V { ap_memory {  { buff_out_13_V_address0 mem_address 1 8 }  { buff_out_13_V_ce0 mem_ce 1 1 }  { buff_out_13_V_we0 mem_we 1 1 }  { buff_out_13_V_d0 mem_din 1 16 }  { buff_out_13_V_q0 mem_dout 0 16 }  { buff_out_13_V_address1 MemPortADDR2 1 8 }  { buff_out_13_V_ce1 MemPortCE2 1 1 }  { buff_out_13_V_we1 MemPortWE2 1 1 }  { buff_out_13_V_d1 MemPortDIN2 1 16 } } }
	buff_out_14_V { ap_memory {  { buff_out_14_V_address0 mem_address 1 8 }  { buff_out_14_V_ce0 mem_ce 1 1 }  { buff_out_14_V_we0 mem_we 1 1 }  { buff_out_14_V_d0 mem_din 1 16 }  { buff_out_14_V_q0 mem_dout 0 16 }  { buff_out_14_V_address1 MemPortADDR2 1 8 }  { buff_out_14_V_ce1 MemPortCE2 1 1 }  { buff_out_14_V_we1 MemPortWE2 1 1 }  { buff_out_14_V_d1 MemPortDIN2 1 16 } } }
	buff_out_15_V { ap_memory {  { buff_out_15_V_address0 mem_address 1 8 }  { buff_out_15_V_ce0 mem_ce 1 1 }  { buff_out_15_V_we0 mem_we 1 1 }  { buff_out_15_V_d0 mem_din 1 16 }  { buff_out_15_V_q0 mem_dout 0 16 }  { buff_out_15_V_address1 MemPortADDR2 1 8 }  { buff_out_15_V_ce1 MemPortCE2 1 1 }  { buff_out_15_V_we1 MemPortWE2 1 1 }  { buff_out_15_V_d1 MemPortDIN2 1 16 } } }
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
	bias_buff_V_offset { ap_none {  { bias_buff_V_offset in_data 0 30 } } }
	ch_in { ap_none {  { ch_in in_data 0 32 } } }
	m { ap_none {  { m in_data 0 32 } } }
	p { ap_none {  { p in_data 0 32 } } }
	size { ap_none {  { size in_data 0 32 } } }
}
