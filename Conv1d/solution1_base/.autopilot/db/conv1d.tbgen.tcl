set moduleName conv1d
set isTopModule 1
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
set C_modelName {conv1d}
set C_modelType { void 0 }
set C_modelArgList {
	{ IN_r int 16 regular {axi_master 0}  }
	{ W int 16 regular {axi_master 0}  }
	{ B int 16 regular {axi_master 0}  }
	{ OUT_r int 16 regular {axi_master 1}  }
	{ in_V int 32 regular {axi_slave 0}  }
	{ weight_V int 32 regular {axi_slave 0}  }
	{ bias_V int 32 regular {axi_slave 0}  }
	{ out_V int 32 regular {axi_slave 0}  }
	{ ch_in int 32 regular {axi_slave 0}  }
	{ ch_out int 32 regular {axi_slave 0}  }
	{ size int 32 regular {axi_slave 0}  }
	{ pool int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "IN_r", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "in.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "in_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "W", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "weight.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "weight_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "B", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "bias.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bias_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "OUT_r", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "out.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "out_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "in_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "weight_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "bias_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "ch_in", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ch_in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "ch_out", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ch_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "size", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "pool", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":72}, "offset_end" : {"in":79}} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_IN_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_IN_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN_r_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_IN_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_IN_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_IN_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_IN_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_W_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_W_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_W_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_W_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_W_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_W_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_W_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_W_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_W_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_W_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_W_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_W_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_W_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_W_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_W_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_W_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_W_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_W_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_W_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_W_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_B_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_B_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_B_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_B_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_B_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_B_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_B_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_B_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_B_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_B_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_B_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_B_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_B_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_B_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_B_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_B_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_B_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_B_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_B_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_B_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_B_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_B_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_B_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_B_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_B_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_B_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_B_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_B_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_B_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_B_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_B_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_B_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_B_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_OUT_r_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_OUT_r_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_OUT_r_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_OUT_r_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_OUT_r_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_OUT_r_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_OUT_r_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_OUT_r_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_OUT_r_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_OUT_r_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_OUT_r_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_OUT_r_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_OUT_r_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_OUT_r_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_OUT_r_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_OUT_r_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_OUT_r_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_OUT_r_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_OUT_r_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_OUT_r_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_OUT_r_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_OUT_r_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_OUT_r_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_OUT_r_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_BUSER sc_in sc_lv 1 signal 3 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"conv1d","role":"start","value":"0","valid_bit":"0"},{"name":"conv1d","role":"continue","value":"0","valid_bit":"4"},{"name":"conv1d","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_V","role":"data","value":"16"},{"name":"weight_V","role":"data","value":"24"},{"name":"bias_V","role":"data","value":"32"},{"name":"out_V","role":"data","value":"40"},{"name":"ch_in","role":"data","value":"48"},{"name":"ch_out","role":"data","value":"56"},{"name":"size","role":"data","value":"64"},{"name":"pool","role":"data","value":"72"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"conv1d","role":"start","value":"0","valid_bit":"0"},{"name":"conv1d","role":"done","value":"0","valid_bit":"1"},{"name":"conv1d","role":"idle","value":"0","valid_bit":"2"},{"name":"conv1d","role":"ready","value":"0","valid_bit":"3"},{"name":"conv1d","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_IN_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_IN_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_IN_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_IN_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "AWID" }} , 
 	{ "name": "m_axi_IN_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_IN_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_IN_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_IN_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_IN_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_IN_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_IN_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_IN_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_IN_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_IN_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_IN_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_IN_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_IN_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_IN_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_IN_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WID" }} , 
 	{ "name": "m_axi_IN_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_IN_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_IN_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_IN_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_IN_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ARID" }} , 
 	{ "name": "m_axi_IN_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_IN_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_IN_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_IN_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_IN_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_IN_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_IN_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_IN_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_IN_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_IN_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_IN_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_IN_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_IN_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_IN_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RID" }} , 
 	{ "name": "m_axi_IN_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_IN_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_IN_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_IN_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_IN_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_IN_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "BID" }} , 
 	{ "name": "m_axi_IN_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "BUSER" }} , 
 	{ "name": "m_axi_W_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "AWVALID" }} , 
 	{ "name": "m_axi_W_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "AWREADY" }} , 
 	{ "name": "m_axi_W_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "AWADDR" }} , 
 	{ "name": "m_axi_W_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "AWID" }} , 
 	{ "name": "m_axi_W_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W", "role": "AWLEN" }} , 
 	{ "name": "m_axi_W_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_W_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "AWBURST" }} , 
 	{ "name": "m_axi_W_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_W_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_W_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W", "role": "AWPROT" }} , 
 	{ "name": "m_axi_W_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "AWQOS" }} , 
 	{ "name": "m_axi_W_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "AWREGION" }} , 
 	{ "name": "m_axi_W_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "AWUSER" }} , 
 	{ "name": "m_axi_W_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WVALID" }} , 
 	{ "name": "m_axi_W_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WREADY" }} , 
 	{ "name": "m_axi_W_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "WDATA" }} , 
 	{ "name": "m_axi_W_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "WSTRB" }} , 
 	{ "name": "m_axi_W_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WLAST" }} , 
 	{ "name": "m_axi_W_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WID" }} , 
 	{ "name": "m_axi_W_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WUSER" }} , 
 	{ "name": "m_axi_W_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ARVALID" }} , 
 	{ "name": "m_axi_W_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ARREADY" }} , 
 	{ "name": "m_axi_W_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "ARADDR" }} , 
 	{ "name": "m_axi_W_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ARID" }} , 
 	{ "name": "m_axi_W_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W", "role": "ARLEN" }} , 
 	{ "name": "m_axi_W_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_W_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "ARBURST" }} , 
 	{ "name": "m_axi_W_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_W_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_W_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W", "role": "ARPROT" }} , 
 	{ "name": "m_axi_W_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "ARQOS" }} , 
 	{ "name": "m_axi_W_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "ARREGION" }} , 
 	{ "name": "m_axi_W_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ARUSER" }} , 
 	{ "name": "m_axi_W_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RVALID" }} , 
 	{ "name": "m_axi_W_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RREADY" }} , 
 	{ "name": "m_axi_W_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "RDATA" }} , 
 	{ "name": "m_axi_W_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RLAST" }} , 
 	{ "name": "m_axi_W_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RID" }} , 
 	{ "name": "m_axi_W_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RUSER" }} , 
 	{ "name": "m_axi_W_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "RRESP" }} , 
 	{ "name": "m_axi_W_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "BVALID" }} , 
 	{ "name": "m_axi_W_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "BREADY" }} , 
 	{ "name": "m_axi_W_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "BRESP" }} , 
 	{ "name": "m_axi_W_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "BID" }} , 
 	{ "name": "m_axi_W_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "BUSER" }} , 
 	{ "name": "m_axi_B_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "AWVALID" }} , 
 	{ "name": "m_axi_B_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "AWREADY" }} , 
 	{ "name": "m_axi_B_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "AWADDR" }} , 
 	{ "name": "m_axi_B_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "AWID" }} , 
 	{ "name": "m_axi_B_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "AWLEN" }} , 
 	{ "name": "m_axi_B_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_B_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B", "role": "AWBURST" }} , 
 	{ "name": "m_axi_B_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_B_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_B_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B", "role": "AWPROT" }} , 
 	{ "name": "m_axi_B_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "AWQOS" }} , 
 	{ "name": "m_axi_B_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "AWREGION" }} , 
 	{ "name": "m_axi_B_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "AWUSER" }} , 
 	{ "name": "m_axi_B_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "WVALID" }} , 
 	{ "name": "m_axi_B_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "WREADY" }} , 
 	{ "name": "m_axi_B_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "WDATA" }} , 
 	{ "name": "m_axi_B_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "WSTRB" }} , 
 	{ "name": "m_axi_B_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "WLAST" }} , 
 	{ "name": "m_axi_B_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "WID" }} , 
 	{ "name": "m_axi_B_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "WUSER" }} , 
 	{ "name": "m_axi_B_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ARVALID" }} , 
 	{ "name": "m_axi_B_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ARREADY" }} , 
 	{ "name": "m_axi_B_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "ARADDR" }} , 
 	{ "name": "m_axi_B_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ARID" }} , 
 	{ "name": "m_axi_B_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "ARLEN" }} , 
 	{ "name": "m_axi_B_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_B_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B", "role": "ARBURST" }} , 
 	{ "name": "m_axi_B_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_B_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_B_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B", "role": "ARPROT" }} , 
 	{ "name": "m_axi_B_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "ARQOS" }} , 
 	{ "name": "m_axi_B_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "ARREGION" }} , 
 	{ "name": "m_axi_B_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ARUSER" }} , 
 	{ "name": "m_axi_B_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "RVALID" }} , 
 	{ "name": "m_axi_B_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "RREADY" }} , 
 	{ "name": "m_axi_B_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "RDATA" }} , 
 	{ "name": "m_axi_B_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "RLAST" }} , 
 	{ "name": "m_axi_B_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "RID" }} , 
 	{ "name": "m_axi_B_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "RUSER" }} , 
 	{ "name": "m_axi_B_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B", "role": "RRESP" }} , 
 	{ "name": "m_axi_B_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "BVALID" }} , 
 	{ "name": "m_axi_B_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "BREADY" }} , 
 	{ "name": "m_axi_B_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B", "role": "BRESP" }} , 
 	{ "name": "m_axi_B_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "BID" }} , 
 	{ "name": "m_axi_B_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "BUSER" }} , 
 	{ "name": "m_axi_OUT_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_OUT_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_OUT_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_OUT_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWID" }} , 
 	{ "name": "m_axi_OUT_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_OUT_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_OUT_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_OUT_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_OUT_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_OUT_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_OUT_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_OUT_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_OUT_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_OUT_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_OUT_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_OUT_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_OUT_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_OUT_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_OUT_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WID" }} , 
 	{ "name": "m_axi_OUT_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_OUT_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_OUT_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_OUT_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_OUT_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARID" }} , 
 	{ "name": "m_axi_OUT_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_OUT_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_OUT_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_OUT_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_OUT_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_OUT_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_OUT_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_OUT_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_OUT_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_OUT_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_OUT_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_OUT_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_OUT_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_OUT_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RID" }} , 
 	{ "name": "m_axi_OUT_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_OUT_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_OUT_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_OUT_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_OUT_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_OUT_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BID" }} , 
 	{ "name": "m_axi_OUT_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "198"],
		"CDFG" : "conv1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_output_fu_669"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_output_fu_669"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_output_fu_669"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_write_back_fu_719"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_write_back_fu_719"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_write_back_fu_719"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_write_back_fu_719"}],
		"Port" : [
			{"Name" : "IN_r", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_compute_output_fu_669", "Port" : "in_V"}]},
			{"Name" : "W", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_compute_output_fu_669", "Port" : "weight_V"}]},
			{"Name" : "B", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "B_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "B_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "OUT_r", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_write_back_fu_719", "Port" : "out_V"}]},
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_IN_r_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_W_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_B_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1d_OUT_r_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_0_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_1_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_2_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_3_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_4_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_5_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_6_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_7_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_8_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_9_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_10_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_11_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_12_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_13_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_14_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out1_15_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_0_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_1_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_2_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_3_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_4_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_5_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_6_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_7_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_8_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_9_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_10_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_11_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_12_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_13_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_14_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_out2_15_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_0_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_1_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_2_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_3_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_4_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_5_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_6_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_7_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_8_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_9_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_10_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_11_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_12_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_13_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_14_V_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buff_15_V_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669", "Parent" : "0", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62", "63", "192", "194", "196"],
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
					{"ID" : "194", "SubInstance" : "grp_load_input_fu_2414", "Port" : "in_V"}]},
			{"Name" : "in_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "grp_load_weight_fu_2015", "Port" : "weight_V"}]},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_out_0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_0_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_0_V"}]},
			{"Name" : "buff_out_1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_1_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_1_V"}]},
			{"Name" : "buff_out_2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_2_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_2_V"}]},
			{"Name" : "buff_out_3_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_3_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_3_V"}]},
			{"Name" : "buff_out_4_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_4_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_4_V"}]},
			{"Name" : "buff_out_5_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_5_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_5_V"}]},
			{"Name" : "buff_out_6_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_6_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_6_V"}]},
			{"Name" : "buff_out_7_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_7_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_7_V"}]},
			{"Name" : "buff_out_8_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_8_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_8_V"}]},
			{"Name" : "buff_out_9_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_9_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_9_V"}]},
			{"Name" : "buff_out_10_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_10_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_10_V"}]},
			{"Name" : "buff_out_11_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_11_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_11_V"}]},
			{"Name" : "buff_out_12_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_12_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_12_V"}]},
			{"Name" : "buff_out_13_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_13_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_13_V"}]},
			{"Name" : "buff_out_14_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_14_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_14_V"}]},
			{"Name" : "buff_out_15_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "buff_out_15_V"},
					{"ID" : "63", "SubInstance" : "grp_compute_fu_1783", "Port" : "buff_out_15_V"}]},
			{"Name" : "bias_buff_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V"}]},
			{"Name" : "bias_buff_V16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V16"}]},
			{"Name" : "bias_buff_V17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V17"}]},
			{"Name" : "bias_buff_V18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V18"}]},
			{"Name" : "bias_buff_V19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V19"}]},
			{"Name" : "bias_buff_V20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V20"}]},
			{"Name" : "bias_buff_V21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V21"}]},
			{"Name" : "bias_buff_V22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V22"}]},
			{"Name" : "bias_buff_V23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V23"}]},
			{"Name" : "bias_buff_V24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V24"}]},
			{"Name" : "bias_buff_V25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V25"}]},
			{"Name" : "bias_buff_V26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V26"}]},
			{"Name" : "bias_buff_V27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V27"}]},
			{"Name" : "bias_buff_V28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V28"}]},
			{"Name" : "bias_buff_V29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V29"}]},
			{"Name" : "bias_buff_V30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_load_bias_fu_2437", "Port" : "bias_buff_V30"}]},
			{"Name" : "bias_buff_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.buff_in1_0_V_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.buff_in1_1_V_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.buff_in1_2_V_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.buff_in1_3_V_U", "Parent" : "54"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.buff_in2_0_V_U", "Parent" : "54"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.buff_in2_1_V_U", "Parent" : "54"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.buff_in2_2_V_U", "Parent" : "54"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.buff_in2_3_V_U", "Parent" : "54"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783", "Parent" : "54", "Child" : ["64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191"],
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
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U246", "Parent" : "63"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U247", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U248", "Parent" : "63"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U249", "Parent" : "63"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U250", "Parent" : "63"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U251", "Parent" : "63"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U252", "Parent" : "63"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U253", "Parent" : "63"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U254", "Parent" : "63"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U255", "Parent" : "63"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U256", "Parent" : "63"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U257", "Parent" : "63"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U258", "Parent" : "63"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U259", "Parent" : "63"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U260", "Parent" : "63"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U261", "Parent" : "63"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U262", "Parent" : "63"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U263", "Parent" : "63"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U264", "Parent" : "63"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U265", "Parent" : "63"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U266", "Parent" : "63"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U267", "Parent" : "63"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U268", "Parent" : "63"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U269", "Parent" : "63"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U270", "Parent" : "63"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U271", "Parent" : "63"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U272", "Parent" : "63"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U273", "Parent" : "63"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U274", "Parent" : "63"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U275", "Parent" : "63"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U276", "Parent" : "63"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U277", "Parent" : "63"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U278", "Parent" : "63"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U279", "Parent" : "63"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U280", "Parent" : "63"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U281", "Parent" : "63"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U282", "Parent" : "63"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U283", "Parent" : "63"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U284", "Parent" : "63"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U285", "Parent" : "63"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U286", "Parent" : "63"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U287", "Parent" : "63"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U288", "Parent" : "63"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U289", "Parent" : "63"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U290", "Parent" : "63"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U291", "Parent" : "63"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U292", "Parent" : "63"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U293", "Parent" : "63"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U294", "Parent" : "63"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U295", "Parent" : "63"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U296", "Parent" : "63"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U297", "Parent" : "63"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U298", "Parent" : "63"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U299", "Parent" : "63"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U300", "Parent" : "63"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U301", "Parent" : "63"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U302", "Parent" : "63"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U303", "Parent" : "63"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U304", "Parent" : "63"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U305", "Parent" : "63"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U306", "Parent" : "63"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U307", "Parent" : "63"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U308", "Parent" : "63"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mux_32_16_eOg_U309", "Parent" : "63"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U310", "Parent" : "63"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U311", "Parent" : "63"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U312", "Parent" : "63"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U313", "Parent" : "63"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U314", "Parent" : "63"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U315", "Parent" : "63"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U316", "Parent" : "63"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U317", "Parent" : "63"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U318", "Parent" : "63"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U319", "Parent" : "63"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U320", "Parent" : "63"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U321", "Parent" : "63"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U322", "Parent" : "63"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U323", "Parent" : "63"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U324", "Parent" : "63"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U325", "Parent" : "63"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U326", "Parent" : "63"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U327", "Parent" : "63"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U328", "Parent" : "63"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U329", "Parent" : "63"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U330", "Parent" : "63"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U331", "Parent" : "63"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U332", "Parent" : "63"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U333", "Parent" : "63"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U334", "Parent" : "63"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U335", "Parent" : "63"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U336", "Parent" : "63"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U337", "Parent" : "63"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U338", "Parent" : "63"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U339", "Parent" : "63"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U340", "Parent" : "63"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U341", "Parent" : "63"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U342", "Parent" : "63"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U343", "Parent" : "63"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U344", "Parent" : "63"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U345", "Parent" : "63"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U346", "Parent" : "63"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U347", "Parent" : "63"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U348", "Parent" : "63"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U349", "Parent" : "63"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U350", "Parent" : "63"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U351", "Parent" : "63"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U352", "Parent" : "63"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U353", "Parent" : "63"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U354", "Parent" : "63"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U355", "Parent" : "63"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U356", "Parent" : "63"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U357", "Parent" : "63"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U358", "Parent" : "63"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U359", "Parent" : "63"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U360", "Parent" : "63"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U361", "Parent" : "63"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U362", "Parent" : "63"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U363", "Parent" : "63"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U364", "Parent" : "63"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U365", "Parent" : "63"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U366", "Parent" : "63"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U367", "Parent" : "63"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U368", "Parent" : "63"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U369", "Parent" : "63"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U370", "Parent" : "63"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U371", "Parent" : "63"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U372", "Parent" : "63"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_compute_fu_1783.conv1d_mul_mul_16fYi_U373", "Parent" : "63"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_load_weight_fu_2015", "Parent" : "54", "Child" : ["193"],
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
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_load_weight_fu_2015.conv1d_urem_8ns_3dEe_U47", "Parent" : "192"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_load_input_fu_2414", "Parent" : "54", "Child" : ["195"],
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
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_load_input_fu_2414.conv1d_urem_10ns_cud_U36", "Parent" : "194"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_load_bias_fu_2437", "Parent" : "54", "Child" : ["197"],
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
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_669.grp_load_bias_fu_2437.conv1d_mux_164_16bkb_U1", "Parent" : "196"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_back_fu_719", "Parent" : "0", "Child" : ["199", "200", "201"],
		"CDFG" : "write_back",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2410", "EstimateLatencyMax" : "2411",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_out_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_6_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_7_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_8_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_9_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_10_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_11_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_12_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_13_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_14_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_out_15_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_back_fu_719.conv1d_mux_164_16bkb_U630", "Parent" : "198"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_back_fu_719.conv1d_mux_164_16bkb_U631", "Parent" : "198"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_back_fu_719.conv1d_mux_164_16bkb_U632", "Parent" : "198"}]}


set ArgLastReadFirstWriteLatency {
	conv1d {
		IN_r {Type I LastRead 22 FirstWrite -1}
		W {Type I LastRead 20 FirstWrite -1}
		B {Type I LastRead 9 FirstWrite -1}
		OUT_r {Type O LastRead 7 FirstWrite 5}
		in_V {Type I LastRead 0 FirstWrite -1}
		weight_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}
		out_V {Type I LastRead 0 FirstWrite -1}
		ch_in {Type I LastRead 0 FirstWrite -1}
		ch_out {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		pool {Type I LastRead 0 FirstWrite -1}}
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
		bias_buff_V_offset {Type I LastRead 0 FirstWrite -1}}
	write_back {
		out_V {Type O LastRead 7 FirstWrite 5}
		out_V_offset {Type I LastRead 0 FirstWrite -1}
		buff_out_0_V {Type I LastRead 4 FirstWrite -1}
		buff_out_1_V {Type I LastRead 4 FirstWrite -1}
		buff_out_2_V {Type I LastRead 4 FirstWrite -1}
		buff_out_3_V {Type I LastRead 4 FirstWrite -1}
		buff_out_4_V {Type I LastRead 4 FirstWrite -1}
		buff_out_5_V {Type I LastRead 4 FirstWrite -1}
		buff_out_6_V {Type I LastRead 4 FirstWrite -1}
		buff_out_7_V {Type I LastRead 4 FirstWrite -1}
		buff_out_8_V {Type I LastRead 4 FirstWrite -1}
		buff_out_9_V {Type I LastRead 4 FirstWrite -1}
		buff_out_10_V {Type I LastRead 4 FirstWrite -1}
		buff_out_11_V {Type I LastRead 4 FirstWrite -1}
		buff_out_12_V {Type I LastRead 4 FirstWrite -1}
		buff_out_13_V {Type I LastRead 4 FirstWrite -1}
		buff_out_14_V {Type I LastRead 4 FirstWrite -1}
		buff_out_15_V {Type I LastRead 4 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		ch_out {Type I LastRead 0 FirstWrite -1}
		pool {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	IN_r { m_axi {  { m_axi_IN_r_AWVALID VALID 1 1 }  { m_axi_IN_r_AWREADY READY 0 1 }  { m_axi_IN_r_AWADDR ADDR 1 32 }  { m_axi_IN_r_AWID ID 1 1 }  { m_axi_IN_r_AWLEN LEN 1 8 }  { m_axi_IN_r_AWSIZE SIZE 1 3 }  { m_axi_IN_r_AWBURST BURST 1 2 }  { m_axi_IN_r_AWLOCK LOCK 1 2 }  { m_axi_IN_r_AWCACHE CACHE 1 4 }  { m_axi_IN_r_AWPROT PROT 1 3 }  { m_axi_IN_r_AWQOS QOS 1 4 }  { m_axi_IN_r_AWREGION REGION 1 4 }  { m_axi_IN_r_AWUSER USER 1 1 }  { m_axi_IN_r_WVALID VALID 1 1 }  { m_axi_IN_r_WREADY READY 0 1 }  { m_axi_IN_r_WDATA DATA 1 32 }  { m_axi_IN_r_WSTRB STRB 1 4 }  { m_axi_IN_r_WLAST LAST 1 1 }  { m_axi_IN_r_WID ID 1 1 }  { m_axi_IN_r_WUSER USER 1 1 }  { m_axi_IN_r_ARVALID VALID 1 1 }  { m_axi_IN_r_ARREADY READY 0 1 }  { m_axi_IN_r_ARADDR ADDR 1 32 }  { m_axi_IN_r_ARID ID 1 1 }  { m_axi_IN_r_ARLEN LEN 1 8 }  { m_axi_IN_r_ARSIZE SIZE 1 3 }  { m_axi_IN_r_ARBURST BURST 1 2 }  { m_axi_IN_r_ARLOCK LOCK 1 2 }  { m_axi_IN_r_ARCACHE CACHE 1 4 }  { m_axi_IN_r_ARPROT PROT 1 3 }  { m_axi_IN_r_ARQOS QOS 1 4 }  { m_axi_IN_r_ARREGION REGION 1 4 }  { m_axi_IN_r_ARUSER USER 1 1 }  { m_axi_IN_r_RVALID VALID 0 1 }  { m_axi_IN_r_RREADY READY 1 1 }  { m_axi_IN_r_RDATA DATA 0 32 }  { m_axi_IN_r_RLAST LAST 0 1 }  { m_axi_IN_r_RID ID 0 1 }  { m_axi_IN_r_RUSER USER 0 1 }  { m_axi_IN_r_RRESP RESP 0 2 }  { m_axi_IN_r_BVALID VALID 0 1 }  { m_axi_IN_r_BREADY READY 1 1 }  { m_axi_IN_r_BRESP RESP 0 2 }  { m_axi_IN_r_BID ID 0 1 }  { m_axi_IN_r_BUSER USER 0 1 } } }
	W { m_axi {  { m_axi_W_AWVALID VALID 1 1 }  { m_axi_W_AWREADY READY 0 1 }  { m_axi_W_AWADDR ADDR 1 32 }  { m_axi_W_AWID ID 1 1 }  { m_axi_W_AWLEN LEN 1 8 }  { m_axi_W_AWSIZE SIZE 1 3 }  { m_axi_W_AWBURST BURST 1 2 }  { m_axi_W_AWLOCK LOCK 1 2 }  { m_axi_W_AWCACHE CACHE 1 4 }  { m_axi_W_AWPROT PROT 1 3 }  { m_axi_W_AWQOS QOS 1 4 }  { m_axi_W_AWREGION REGION 1 4 }  { m_axi_W_AWUSER USER 1 1 }  { m_axi_W_WVALID VALID 1 1 }  { m_axi_W_WREADY READY 0 1 }  { m_axi_W_WDATA DATA 1 32 }  { m_axi_W_WSTRB STRB 1 4 }  { m_axi_W_WLAST LAST 1 1 }  { m_axi_W_WID ID 1 1 }  { m_axi_W_WUSER USER 1 1 }  { m_axi_W_ARVALID VALID 1 1 }  { m_axi_W_ARREADY READY 0 1 }  { m_axi_W_ARADDR ADDR 1 32 }  { m_axi_W_ARID ID 1 1 }  { m_axi_W_ARLEN LEN 1 8 }  { m_axi_W_ARSIZE SIZE 1 3 }  { m_axi_W_ARBURST BURST 1 2 }  { m_axi_W_ARLOCK LOCK 1 2 }  { m_axi_W_ARCACHE CACHE 1 4 }  { m_axi_W_ARPROT PROT 1 3 }  { m_axi_W_ARQOS QOS 1 4 }  { m_axi_W_ARREGION REGION 1 4 }  { m_axi_W_ARUSER USER 1 1 }  { m_axi_W_RVALID VALID 0 1 }  { m_axi_W_RREADY READY 1 1 }  { m_axi_W_RDATA DATA 0 32 }  { m_axi_W_RLAST LAST 0 1 }  { m_axi_W_RID ID 0 1 }  { m_axi_W_RUSER USER 0 1 }  { m_axi_W_RRESP RESP 0 2 }  { m_axi_W_BVALID VALID 0 1 }  { m_axi_W_BREADY READY 1 1 }  { m_axi_W_BRESP RESP 0 2 }  { m_axi_W_BID ID 0 1 }  { m_axi_W_BUSER USER 0 1 } } }
	B { m_axi {  { m_axi_B_AWVALID VALID 1 1 }  { m_axi_B_AWREADY READY 0 1 }  { m_axi_B_AWADDR ADDR 1 32 }  { m_axi_B_AWID ID 1 1 }  { m_axi_B_AWLEN LEN 1 8 }  { m_axi_B_AWSIZE SIZE 1 3 }  { m_axi_B_AWBURST BURST 1 2 }  { m_axi_B_AWLOCK LOCK 1 2 }  { m_axi_B_AWCACHE CACHE 1 4 }  { m_axi_B_AWPROT PROT 1 3 }  { m_axi_B_AWQOS QOS 1 4 }  { m_axi_B_AWREGION REGION 1 4 }  { m_axi_B_AWUSER USER 1 1 }  { m_axi_B_WVALID VALID 1 1 }  { m_axi_B_WREADY READY 0 1 }  { m_axi_B_WDATA DATA 1 32 }  { m_axi_B_WSTRB STRB 1 4 }  { m_axi_B_WLAST LAST 1 1 }  { m_axi_B_WID ID 1 1 }  { m_axi_B_WUSER USER 1 1 }  { m_axi_B_ARVALID VALID 1 1 }  { m_axi_B_ARREADY READY 0 1 }  { m_axi_B_ARADDR ADDR 1 32 }  { m_axi_B_ARID ID 1 1 }  { m_axi_B_ARLEN LEN 1 8 }  { m_axi_B_ARSIZE SIZE 1 3 }  { m_axi_B_ARBURST BURST 1 2 }  { m_axi_B_ARLOCK LOCK 1 2 }  { m_axi_B_ARCACHE CACHE 1 4 }  { m_axi_B_ARPROT PROT 1 3 }  { m_axi_B_ARQOS QOS 1 4 }  { m_axi_B_ARREGION REGION 1 4 }  { m_axi_B_ARUSER USER 1 1 }  { m_axi_B_RVALID VALID 0 1 }  { m_axi_B_RREADY READY 1 1 }  { m_axi_B_RDATA DATA 0 32 }  { m_axi_B_RLAST LAST 0 1 }  { m_axi_B_RID ID 0 1 }  { m_axi_B_RUSER USER 0 1 }  { m_axi_B_RRESP RESP 0 2 }  { m_axi_B_BVALID VALID 0 1 }  { m_axi_B_BREADY READY 1 1 }  { m_axi_B_BRESP RESP 0 2 }  { m_axi_B_BID ID 0 1 }  { m_axi_B_BUSER USER 0 1 } } }
	OUT_r { m_axi {  { m_axi_OUT_r_AWVALID VALID 1 1 }  { m_axi_OUT_r_AWREADY READY 0 1 }  { m_axi_OUT_r_AWADDR ADDR 1 32 }  { m_axi_OUT_r_AWID ID 1 1 }  { m_axi_OUT_r_AWLEN LEN 1 8 }  { m_axi_OUT_r_AWSIZE SIZE 1 3 }  { m_axi_OUT_r_AWBURST BURST 1 2 }  { m_axi_OUT_r_AWLOCK LOCK 1 2 }  { m_axi_OUT_r_AWCACHE CACHE 1 4 }  { m_axi_OUT_r_AWPROT PROT 1 3 }  { m_axi_OUT_r_AWQOS QOS 1 4 }  { m_axi_OUT_r_AWREGION REGION 1 4 }  { m_axi_OUT_r_AWUSER USER 1 1 }  { m_axi_OUT_r_WVALID VALID 1 1 }  { m_axi_OUT_r_WREADY READY 0 1 }  { m_axi_OUT_r_WDATA DATA 1 32 }  { m_axi_OUT_r_WSTRB STRB 1 4 }  { m_axi_OUT_r_WLAST LAST 1 1 }  { m_axi_OUT_r_WID ID 1 1 }  { m_axi_OUT_r_WUSER USER 1 1 }  { m_axi_OUT_r_ARVALID VALID 1 1 }  { m_axi_OUT_r_ARREADY READY 0 1 }  { m_axi_OUT_r_ARADDR ADDR 1 32 }  { m_axi_OUT_r_ARID ID 1 1 }  { m_axi_OUT_r_ARLEN LEN 1 8 }  { m_axi_OUT_r_ARSIZE SIZE 1 3 }  { m_axi_OUT_r_ARBURST BURST 1 2 }  { m_axi_OUT_r_ARLOCK LOCK 1 2 }  { m_axi_OUT_r_ARCACHE CACHE 1 4 }  { m_axi_OUT_r_ARPROT PROT 1 3 }  { m_axi_OUT_r_ARQOS QOS 1 4 }  { m_axi_OUT_r_ARREGION REGION 1 4 }  { m_axi_OUT_r_ARUSER USER 1 1 }  { m_axi_OUT_r_RVALID VALID 0 1 }  { m_axi_OUT_r_RREADY READY 1 1 }  { m_axi_OUT_r_RDATA DATA 0 32 }  { m_axi_OUT_r_RLAST LAST 0 1 }  { m_axi_OUT_r_RID ID 0 1 }  { m_axi_OUT_r_RUSER USER 0 1 }  { m_axi_OUT_r_RRESP RESP 0 2 }  { m_axi_OUT_r_BVALID VALID 0 1 }  { m_axi_OUT_r_BREADY READY 1 1 }  { m_axi_OUT_r_BRESP RESP 0 2 }  { m_axi_OUT_r_BID ID 0 1 }  { m_axi_OUT_r_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ IN_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ W { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ B { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ OUT_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ IN_r 1 }
	{ W 1 }
	{ B 1 }
	{ OUT_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ IN_r 1 }
	{ W 1 }
	{ B 1 }
	{ OUT_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
