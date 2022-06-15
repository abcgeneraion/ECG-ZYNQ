set moduleName load_input
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
set C_modelName {load_input}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V int 16 regular {axi_master 0}  }
	{ in_V_offset int 31 regular  }
	{ buff_in_0_V int 16 regular {array 152 { 0 3 } 0 1 }  }
	{ buff_in_1_V int 16 regular {array 152 { 0 3 } 0 1 }  }
	{ buff_in_2_V int 16 regular {array 152 { 0 3 } 0 1 }  }
	{ buff_in_3_V int 16 regular {array 152 { 0 3 } 0 1 }  }
	{ n int 32 regular  }
	{ p int 32 regular  }
	{ size int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_V_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "buff_in_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_in_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_in_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_in_3_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 71
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
	{ buff_in_0_V_address0 sc_out sc_lv 8 signal 2 } 
	{ buff_in_0_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ buff_in_0_V_we0 sc_out sc_logic 1 signal 2 } 
	{ buff_in_0_V_d0 sc_out sc_lv 16 signal 2 } 
	{ buff_in_1_V_address0 sc_out sc_lv 8 signal 3 } 
	{ buff_in_1_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ buff_in_1_V_we0 sc_out sc_logic 1 signal 3 } 
	{ buff_in_1_V_d0 sc_out sc_lv 16 signal 3 } 
	{ buff_in_2_V_address0 sc_out sc_lv 8 signal 4 } 
	{ buff_in_2_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ buff_in_2_V_we0 sc_out sc_logic 1 signal 4 } 
	{ buff_in_2_V_d0 sc_out sc_lv 16 signal 4 } 
	{ buff_in_3_V_address0 sc_out sc_lv 8 signal 5 } 
	{ buff_in_3_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ buff_in_3_V_we0 sc_out sc_logic 1 signal 5 } 
	{ buff_in_3_V_d0 sc_out sc_lv 16 signal 5 } 
	{ n sc_in sc_lv 32 signal 6 } 
	{ p sc_in sc_lv 32 signal 7 } 
	{ size sc_in sc_lv 32 signal 8 } 
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
 	{ "name": "buff_in_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_in_0_V", "role": "address0" }} , 
 	{ "name": "buff_in_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_in_0_V", "role": "ce0" }} , 
 	{ "name": "buff_in_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_in_0_V", "role": "we0" }} , 
 	{ "name": "buff_in_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_in_0_V", "role": "d0" }} , 
 	{ "name": "buff_in_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_in_1_V", "role": "address0" }} , 
 	{ "name": "buff_in_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_in_1_V", "role": "ce0" }} , 
 	{ "name": "buff_in_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_in_1_V", "role": "we0" }} , 
 	{ "name": "buff_in_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_in_1_V", "role": "d0" }} , 
 	{ "name": "buff_in_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_in_2_V", "role": "address0" }} , 
 	{ "name": "buff_in_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_in_2_V", "role": "ce0" }} , 
 	{ "name": "buff_in_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_in_2_V", "role": "we0" }} , 
 	{ "name": "buff_in_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_in_2_V", "role": "d0" }} , 
 	{ "name": "buff_in_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_in_3_V", "role": "address0" }} , 
 	{ "name": "buff_in_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_in_3_V", "role": "ce0" }} , 
 	{ "name": "buff_in_3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_in_3_V", "role": "we0" }} , 
 	{ "name": "buff_in_3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buff_in_3_V", "role": "d0" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "p", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "default" }} , 
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_urem_10ns_cud_U36", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_input {
		in_V {Type I LastRead 22 FirstWrite -1}
		in_V_offset {Type I LastRead 0 FirstWrite -1}
		buff_in_0_V {Type O LastRead -1 FirstWrite 23}
		buff_in_1_V {Type O LastRead -1 FirstWrite 23}
		buff_in_2_V {Type O LastRead -1 FirstWrite 23}
		buff_in_3_V {Type O LastRead -1 FirstWrite 23}
		n {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "631", "Max" : "631"}
	, {"Name" : "Interval", "Min" : "631", "Max" : "631"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_V { m_axi {  { m_axi_in_V_AWVALID VALID 1 1 }  { m_axi_in_V_AWREADY READY 0 1 }  { m_axi_in_V_AWADDR ADDR 1 32 }  { m_axi_in_V_AWID ID 1 1 }  { m_axi_in_V_AWLEN LEN 1 32 }  { m_axi_in_V_AWSIZE SIZE 1 3 }  { m_axi_in_V_AWBURST BURST 1 2 }  { m_axi_in_V_AWLOCK LOCK 1 2 }  { m_axi_in_V_AWCACHE CACHE 1 4 }  { m_axi_in_V_AWPROT PROT 1 3 }  { m_axi_in_V_AWQOS QOS 1 4 }  { m_axi_in_V_AWREGION REGION 1 4 }  { m_axi_in_V_AWUSER USER 1 1 }  { m_axi_in_V_WVALID VALID 1 1 }  { m_axi_in_V_WREADY READY 0 1 }  { m_axi_in_V_WDATA DATA 1 16 }  { m_axi_in_V_WSTRB STRB 1 2 }  { m_axi_in_V_WLAST LAST 1 1 }  { m_axi_in_V_WID ID 1 1 }  { m_axi_in_V_WUSER USER 1 1 }  { m_axi_in_V_ARVALID VALID 1 1 }  { m_axi_in_V_ARREADY READY 0 1 }  { m_axi_in_V_ARADDR ADDR 1 32 }  { m_axi_in_V_ARID ID 1 1 }  { m_axi_in_V_ARLEN LEN 1 32 }  { m_axi_in_V_ARSIZE SIZE 1 3 }  { m_axi_in_V_ARBURST BURST 1 2 }  { m_axi_in_V_ARLOCK LOCK 1 2 }  { m_axi_in_V_ARCACHE CACHE 1 4 }  { m_axi_in_V_ARPROT PROT 1 3 }  { m_axi_in_V_ARQOS QOS 1 4 }  { m_axi_in_V_ARREGION REGION 1 4 }  { m_axi_in_V_ARUSER USER 1 1 }  { m_axi_in_V_RVALID VALID 0 1 }  { m_axi_in_V_RREADY READY 1 1 }  { m_axi_in_V_RDATA DATA 0 16 }  { m_axi_in_V_RLAST LAST 0 1 }  { m_axi_in_V_RID ID 0 1 }  { m_axi_in_V_RUSER USER 0 1 }  { m_axi_in_V_RRESP RESP 0 2 }  { m_axi_in_V_BVALID VALID 0 1 }  { m_axi_in_V_BREADY READY 1 1 }  { m_axi_in_V_BRESP RESP 0 2 }  { m_axi_in_V_BID ID 0 1 }  { m_axi_in_V_BUSER USER 0 1 } } }
	in_V_offset { ap_none {  { in_V_offset in_data 0 31 } } }
	buff_in_0_V { ap_memory {  { buff_in_0_V_address0 mem_address 1 8 }  { buff_in_0_V_ce0 mem_ce 1 1 }  { buff_in_0_V_we0 mem_we 1 1 }  { buff_in_0_V_d0 mem_din 1 16 } } }
	buff_in_1_V { ap_memory {  { buff_in_1_V_address0 mem_address 1 8 }  { buff_in_1_V_ce0 mem_ce 1 1 }  { buff_in_1_V_we0 mem_we 1 1 }  { buff_in_1_V_d0 mem_din 1 16 } } }
	buff_in_2_V { ap_memory {  { buff_in_2_V_address0 mem_address 1 8 }  { buff_in_2_V_ce0 mem_ce 1 1 }  { buff_in_2_V_we0 mem_we 1 1 }  { buff_in_2_V_d0 mem_din 1 16 } } }
	buff_in_3_V { ap_memory {  { buff_in_3_V_address0 mem_address 1 8 }  { buff_in_3_V_ce0 mem_ce 1 1 }  { buff_in_3_V_we0 mem_we 1 1 }  { buff_in_3_V_d0 mem_din 1 16 } } }
	n { ap_none {  { n in_data 0 32 } } }
	p { ap_none {  { p in_data 0 32 } } }
	size { ap_none {  { size in_data 0 32 } } }
}
