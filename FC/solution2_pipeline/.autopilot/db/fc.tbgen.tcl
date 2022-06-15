set moduleName fc
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
set C_modelName {fc}
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
}
set C_modelArgMapList {[ 
	{ "Name" : "IN_r", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "in.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "in_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "W", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "weight.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "weight_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "B", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "bias.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bias_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "OUT_r", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "out.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "out_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "in_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "weight_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "bias_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
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
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
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
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"fc","role":"start","value":"0","valid_bit":"0"},{"name":"fc","role":"continue","value":"0","valid_bit":"4"},{"name":"fc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_V","role":"data","value":"16"},{"name":"weight_V","role":"data","value":"24"},{"name":"bias_V","role":"data","value":"32"},{"name":"out_V","role":"data","value":"40"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"fc","role":"start","value":"0","valid_bit":"0"},{"name":"fc","role":"done","value":"0","valid_bit":"1"},{"name":"fc","role":"idle","value":"0","valid_bit":"2"},{"name":"fc","role":"ready","value":"0","valid_bit":"3"},{"name":"fc","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "fc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24093", "EstimateLatencyMax" : "24093",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IN_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "IN_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "W", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "W_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "W_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "B_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "B_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "OUT_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUT_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "OUT_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "OUT_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_IN_r_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_W_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_B_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_OUT_r_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_mul_mul_16s_16bkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fc {
		IN_r {Type I LastRead 16 FirstWrite -1}
		W {Type I LastRead 16 FirstWrite -1}
		B {Type I LastRead 13 FirstWrite -1}
		OUT_r {Type O LastRead 20 FirstWrite 19}
		in_V {Type I LastRead 0 FirstWrite -1}
		weight_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}
		out_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24093", "Max" : "24093"}
	, {"Name" : "Interval", "Min" : "24094", "Max" : "24094"}
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
