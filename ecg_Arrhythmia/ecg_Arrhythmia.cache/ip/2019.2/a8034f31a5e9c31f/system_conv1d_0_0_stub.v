// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Apr  5 09:48:50 2022
// Host        : DESKTOP-E85MPAB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_conv1d_0_0_stub.v
// Design      : system_conv1d_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "conv1d,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_CTRL_AWADDR, s_axi_CTRL_AWVALID, 
  s_axi_CTRL_AWREADY, s_axi_CTRL_WDATA, s_axi_CTRL_WSTRB, s_axi_CTRL_WVALID, 
  s_axi_CTRL_WREADY, s_axi_CTRL_BRESP, s_axi_CTRL_BVALID, s_axi_CTRL_BREADY, 
  s_axi_CTRL_ARADDR, s_axi_CTRL_ARVALID, s_axi_CTRL_ARREADY, s_axi_CTRL_RDATA, 
  s_axi_CTRL_RRESP, s_axi_CTRL_RVALID, s_axi_CTRL_RREADY, ap_clk, ap_rst_n, interrupt, 
  m_axi_IN_r_AWADDR, m_axi_IN_r_AWLEN, m_axi_IN_r_AWSIZE, m_axi_IN_r_AWBURST, 
  m_axi_IN_r_AWLOCK, m_axi_IN_r_AWREGION, m_axi_IN_r_AWCACHE, m_axi_IN_r_AWPROT, 
  m_axi_IN_r_AWQOS, m_axi_IN_r_AWVALID, m_axi_IN_r_AWREADY, m_axi_IN_r_WDATA, 
  m_axi_IN_r_WSTRB, m_axi_IN_r_WLAST, m_axi_IN_r_WVALID, m_axi_IN_r_WREADY, 
  m_axi_IN_r_BRESP, m_axi_IN_r_BVALID, m_axi_IN_r_BREADY, m_axi_IN_r_ARADDR, 
  m_axi_IN_r_ARLEN, m_axi_IN_r_ARSIZE, m_axi_IN_r_ARBURST, m_axi_IN_r_ARLOCK, 
  m_axi_IN_r_ARREGION, m_axi_IN_r_ARCACHE, m_axi_IN_r_ARPROT, m_axi_IN_r_ARQOS, 
  m_axi_IN_r_ARVALID, m_axi_IN_r_ARREADY, m_axi_IN_r_RDATA, m_axi_IN_r_RRESP, 
  m_axi_IN_r_RLAST, m_axi_IN_r_RVALID, m_axi_IN_r_RREADY, m_axi_W_AWADDR, m_axi_W_AWLEN, 
  m_axi_W_AWSIZE, m_axi_W_AWBURST, m_axi_W_AWLOCK, m_axi_W_AWREGION, m_axi_W_AWCACHE, 
  m_axi_W_AWPROT, m_axi_W_AWQOS, m_axi_W_AWVALID, m_axi_W_AWREADY, m_axi_W_WDATA, 
  m_axi_W_WSTRB, m_axi_W_WLAST, m_axi_W_WVALID, m_axi_W_WREADY, m_axi_W_BRESP, 
  m_axi_W_BVALID, m_axi_W_BREADY, m_axi_W_ARADDR, m_axi_W_ARLEN, m_axi_W_ARSIZE, 
  m_axi_W_ARBURST, m_axi_W_ARLOCK, m_axi_W_ARREGION, m_axi_W_ARCACHE, m_axi_W_ARPROT, 
  m_axi_W_ARQOS, m_axi_W_ARVALID, m_axi_W_ARREADY, m_axi_W_RDATA, m_axi_W_RRESP, 
  m_axi_W_RLAST, m_axi_W_RVALID, m_axi_W_RREADY, m_axi_B_AWADDR, m_axi_B_AWLEN, 
  m_axi_B_AWSIZE, m_axi_B_AWBURST, m_axi_B_AWLOCK, m_axi_B_AWREGION, m_axi_B_AWCACHE, 
  m_axi_B_AWPROT, m_axi_B_AWQOS, m_axi_B_AWVALID, m_axi_B_AWREADY, m_axi_B_WDATA, 
  m_axi_B_WSTRB, m_axi_B_WLAST, m_axi_B_WVALID, m_axi_B_WREADY, m_axi_B_BRESP, 
  m_axi_B_BVALID, m_axi_B_BREADY, m_axi_B_ARADDR, m_axi_B_ARLEN, m_axi_B_ARSIZE, 
  m_axi_B_ARBURST, m_axi_B_ARLOCK, m_axi_B_ARREGION, m_axi_B_ARCACHE, m_axi_B_ARPROT, 
  m_axi_B_ARQOS, m_axi_B_ARVALID, m_axi_B_ARREADY, m_axi_B_RDATA, m_axi_B_RRESP, 
  m_axi_B_RLAST, m_axi_B_RVALID, m_axi_B_RREADY, m_axi_OUT_r_AWADDR, m_axi_OUT_r_AWLEN, 
  m_axi_OUT_r_AWSIZE, m_axi_OUT_r_AWBURST, m_axi_OUT_r_AWLOCK, m_axi_OUT_r_AWREGION, 
  m_axi_OUT_r_AWCACHE, m_axi_OUT_r_AWPROT, m_axi_OUT_r_AWQOS, m_axi_OUT_r_AWVALID, 
  m_axi_OUT_r_AWREADY, m_axi_OUT_r_WDATA, m_axi_OUT_r_WSTRB, m_axi_OUT_r_WLAST, 
  m_axi_OUT_r_WVALID, m_axi_OUT_r_WREADY, m_axi_OUT_r_BRESP, m_axi_OUT_r_BVALID, 
  m_axi_OUT_r_BREADY, m_axi_OUT_r_ARADDR, m_axi_OUT_r_ARLEN, m_axi_OUT_r_ARSIZE, 
  m_axi_OUT_r_ARBURST, m_axi_OUT_r_ARLOCK, m_axi_OUT_r_ARREGION, m_axi_OUT_r_ARCACHE, 
  m_axi_OUT_r_ARPROT, m_axi_OUT_r_ARQOS, m_axi_OUT_r_ARVALID, m_axi_OUT_r_ARREADY, 
  m_axi_OUT_r_RDATA, m_axi_OUT_r_RRESP, m_axi_OUT_r_RLAST, m_axi_OUT_r_RVALID, 
  m_axi_OUT_r_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_AWADDR[6:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[6:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_IN_r_AWADDR[31:0],m_axi_IN_r_AWLEN[7:0],m_axi_IN_r_AWSIZE[2:0],m_axi_IN_r_AWBURST[1:0],m_axi_IN_r_AWLOCK[1:0],m_axi_IN_r_AWREGION[3:0],m_axi_IN_r_AWCACHE[3:0],m_axi_IN_r_AWPROT[2:0],m_axi_IN_r_AWQOS[3:0],m_axi_IN_r_AWVALID,m_axi_IN_r_AWREADY,m_axi_IN_r_WDATA[31:0],m_axi_IN_r_WSTRB[3:0],m_axi_IN_r_WLAST,m_axi_IN_r_WVALID,m_axi_IN_r_WREADY,m_axi_IN_r_BRESP[1:0],m_axi_IN_r_BVALID,m_axi_IN_r_BREADY,m_axi_IN_r_ARADDR[31:0],m_axi_IN_r_ARLEN[7:0],m_axi_IN_r_ARSIZE[2:0],m_axi_IN_r_ARBURST[1:0],m_axi_IN_r_ARLOCK[1:0],m_axi_IN_r_ARREGION[3:0],m_axi_IN_r_ARCACHE[3:0],m_axi_IN_r_ARPROT[2:0],m_axi_IN_r_ARQOS[3:0],m_axi_IN_r_ARVALID,m_axi_IN_r_ARREADY,m_axi_IN_r_RDATA[31:0],m_axi_IN_r_RRESP[1:0],m_axi_IN_r_RLAST,m_axi_IN_r_RVALID,m_axi_IN_r_RREADY,m_axi_W_AWADDR[31:0],m_axi_W_AWLEN[7:0],m_axi_W_AWSIZE[2:0],m_axi_W_AWBURST[1:0],m_axi_W_AWLOCK[1:0],m_axi_W_AWREGION[3:0],m_axi_W_AWCACHE[3:0],m_axi_W_AWPROT[2:0],m_axi_W_AWQOS[3:0],m_axi_W_AWVALID,m_axi_W_AWREADY,m_axi_W_WDATA[31:0],m_axi_W_WSTRB[3:0],m_axi_W_WLAST,m_axi_W_WVALID,m_axi_W_WREADY,m_axi_W_BRESP[1:0],m_axi_W_BVALID,m_axi_W_BREADY,m_axi_W_ARADDR[31:0],m_axi_W_ARLEN[7:0],m_axi_W_ARSIZE[2:0],m_axi_W_ARBURST[1:0],m_axi_W_ARLOCK[1:0],m_axi_W_ARREGION[3:0],m_axi_W_ARCACHE[3:0],m_axi_W_ARPROT[2:0],m_axi_W_ARQOS[3:0],m_axi_W_ARVALID,m_axi_W_ARREADY,m_axi_W_RDATA[31:0],m_axi_W_RRESP[1:0],m_axi_W_RLAST,m_axi_W_RVALID,m_axi_W_RREADY,m_axi_B_AWADDR[31:0],m_axi_B_AWLEN[7:0],m_axi_B_AWSIZE[2:0],m_axi_B_AWBURST[1:0],m_axi_B_AWLOCK[1:0],m_axi_B_AWREGION[3:0],m_axi_B_AWCACHE[3:0],m_axi_B_AWPROT[2:0],m_axi_B_AWQOS[3:0],m_axi_B_AWVALID,m_axi_B_AWREADY,m_axi_B_WDATA[31:0],m_axi_B_WSTRB[3:0],m_axi_B_WLAST,m_axi_B_WVALID,m_axi_B_WREADY,m_axi_B_BRESP[1:0],m_axi_B_BVALID,m_axi_B_BREADY,m_axi_B_ARADDR[31:0],m_axi_B_ARLEN[7:0],m_axi_B_ARSIZE[2:0],m_axi_B_ARBURST[1:0],m_axi_B_ARLOCK[1:0],m_axi_B_ARREGION[3:0],m_axi_B_ARCACHE[3:0],m_axi_B_ARPROT[2:0],m_axi_B_ARQOS[3:0],m_axi_B_ARVALID,m_axi_B_ARREADY,m_axi_B_RDATA[31:0],m_axi_B_RRESP[1:0],m_axi_B_RLAST,m_axi_B_RVALID,m_axi_B_RREADY,m_axi_OUT_r_AWADDR[31:0],m_axi_OUT_r_AWLEN[7:0],m_axi_OUT_r_AWSIZE[2:0],m_axi_OUT_r_AWBURST[1:0],m_axi_OUT_r_AWLOCK[1:0],m_axi_OUT_r_AWREGION[3:0],m_axi_OUT_r_AWCACHE[3:0],m_axi_OUT_r_AWPROT[2:0],m_axi_OUT_r_AWQOS[3:0],m_axi_OUT_r_AWVALID,m_axi_OUT_r_AWREADY,m_axi_OUT_r_WDATA[31:0],m_axi_OUT_r_WSTRB[3:0],m_axi_OUT_r_WLAST,m_axi_OUT_r_WVALID,m_axi_OUT_r_WREADY,m_axi_OUT_r_BRESP[1:0],m_axi_OUT_r_BVALID,m_axi_OUT_r_BREADY,m_axi_OUT_r_ARADDR[31:0],m_axi_OUT_r_ARLEN[7:0],m_axi_OUT_r_ARSIZE[2:0],m_axi_OUT_r_ARBURST[1:0],m_axi_OUT_r_ARLOCK[1:0],m_axi_OUT_r_ARREGION[3:0],m_axi_OUT_r_ARCACHE[3:0],m_axi_OUT_r_ARPROT[2:0],m_axi_OUT_r_ARQOS[3:0],m_axi_OUT_r_ARVALID,m_axi_OUT_r_ARREADY,m_axi_OUT_r_RDATA[31:0],m_axi_OUT_r_RRESP[1:0],m_axi_OUT_r_RLAST,m_axi_OUT_r_RVALID,m_axi_OUT_r_RREADY" */;
  input [6:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [6:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_IN_r_AWADDR;
  output [7:0]m_axi_IN_r_AWLEN;
  output [2:0]m_axi_IN_r_AWSIZE;
  output [1:0]m_axi_IN_r_AWBURST;
  output [1:0]m_axi_IN_r_AWLOCK;
  output [3:0]m_axi_IN_r_AWREGION;
  output [3:0]m_axi_IN_r_AWCACHE;
  output [2:0]m_axi_IN_r_AWPROT;
  output [3:0]m_axi_IN_r_AWQOS;
  output m_axi_IN_r_AWVALID;
  input m_axi_IN_r_AWREADY;
  output [31:0]m_axi_IN_r_WDATA;
  output [3:0]m_axi_IN_r_WSTRB;
  output m_axi_IN_r_WLAST;
  output m_axi_IN_r_WVALID;
  input m_axi_IN_r_WREADY;
  input [1:0]m_axi_IN_r_BRESP;
  input m_axi_IN_r_BVALID;
  output m_axi_IN_r_BREADY;
  output [31:0]m_axi_IN_r_ARADDR;
  output [7:0]m_axi_IN_r_ARLEN;
  output [2:0]m_axi_IN_r_ARSIZE;
  output [1:0]m_axi_IN_r_ARBURST;
  output [1:0]m_axi_IN_r_ARLOCK;
  output [3:0]m_axi_IN_r_ARREGION;
  output [3:0]m_axi_IN_r_ARCACHE;
  output [2:0]m_axi_IN_r_ARPROT;
  output [3:0]m_axi_IN_r_ARQOS;
  output m_axi_IN_r_ARVALID;
  input m_axi_IN_r_ARREADY;
  input [31:0]m_axi_IN_r_RDATA;
  input [1:0]m_axi_IN_r_RRESP;
  input m_axi_IN_r_RLAST;
  input m_axi_IN_r_RVALID;
  output m_axi_IN_r_RREADY;
  output [31:0]m_axi_W_AWADDR;
  output [7:0]m_axi_W_AWLEN;
  output [2:0]m_axi_W_AWSIZE;
  output [1:0]m_axi_W_AWBURST;
  output [1:0]m_axi_W_AWLOCK;
  output [3:0]m_axi_W_AWREGION;
  output [3:0]m_axi_W_AWCACHE;
  output [2:0]m_axi_W_AWPROT;
  output [3:0]m_axi_W_AWQOS;
  output m_axi_W_AWVALID;
  input m_axi_W_AWREADY;
  output [31:0]m_axi_W_WDATA;
  output [3:0]m_axi_W_WSTRB;
  output m_axi_W_WLAST;
  output m_axi_W_WVALID;
  input m_axi_W_WREADY;
  input [1:0]m_axi_W_BRESP;
  input m_axi_W_BVALID;
  output m_axi_W_BREADY;
  output [31:0]m_axi_W_ARADDR;
  output [7:0]m_axi_W_ARLEN;
  output [2:0]m_axi_W_ARSIZE;
  output [1:0]m_axi_W_ARBURST;
  output [1:0]m_axi_W_ARLOCK;
  output [3:0]m_axi_W_ARREGION;
  output [3:0]m_axi_W_ARCACHE;
  output [2:0]m_axi_W_ARPROT;
  output [3:0]m_axi_W_ARQOS;
  output m_axi_W_ARVALID;
  input m_axi_W_ARREADY;
  input [31:0]m_axi_W_RDATA;
  input [1:0]m_axi_W_RRESP;
  input m_axi_W_RLAST;
  input m_axi_W_RVALID;
  output m_axi_W_RREADY;
  output [31:0]m_axi_B_AWADDR;
  output [7:0]m_axi_B_AWLEN;
  output [2:0]m_axi_B_AWSIZE;
  output [1:0]m_axi_B_AWBURST;
  output [1:0]m_axi_B_AWLOCK;
  output [3:0]m_axi_B_AWREGION;
  output [3:0]m_axi_B_AWCACHE;
  output [2:0]m_axi_B_AWPROT;
  output [3:0]m_axi_B_AWQOS;
  output m_axi_B_AWVALID;
  input m_axi_B_AWREADY;
  output [31:0]m_axi_B_WDATA;
  output [3:0]m_axi_B_WSTRB;
  output m_axi_B_WLAST;
  output m_axi_B_WVALID;
  input m_axi_B_WREADY;
  input [1:0]m_axi_B_BRESP;
  input m_axi_B_BVALID;
  output m_axi_B_BREADY;
  output [31:0]m_axi_B_ARADDR;
  output [7:0]m_axi_B_ARLEN;
  output [2:0]m_axi_B_ARSIZE;
  output [1:0]m_axi_B_ARBURST;
  output [1:0]m_axi_B_ARLOCK;
  output [3:0]m_axi_B_ARREGION;
  output [3:0]m_axi_B_ARCACHE;
  output [2:0]m_axi_B_ARPROT;
  output [3:0]m_axi_B_ARQOS;
  output m_axi_B_ARVALID;
  input m_axi_B_ARREADY;
  input [31:0]m_axi_B_RDATA;
  input [1:0]m_axi_B_RRESP;
  input m_axi_B_RLAST;
  input m_axi_B_RVALID;
  output m_axi_B_RREADY;
  output [31:0]m_axi_OUT_r_AWADDR;
  output [7:0]m_axi_OUT_r_AWLEN;
  output [2:0]m_axi_OUT_r_AWSIZE;
  output [1:0]m_axi_OUT_r_AWBURST;
  output [1:0]m_axi_OUT_r_AWLOCK;
  output [3:0]m_axi_OUT_r_AWREGION;
  output [3:0]m_axi_OUT_r_AWCACHE;
  output [2:0]m_axi_OUT_r_AWPROT;
  output [3:0]m_axi_OUT_r_AWQOS;
  output m_axi_OUT_r_AWVALID;
  input m_axi_OUT_r_AWREADY;
  output [31:0]m_axi_OUT_r_WDATA;
  output [3:0]m_axi_OUT_r_WSTRB;
  output m_axi_OUT_r_WLAST;
  output m_axi_OUT_r_WVALID;
  input m_axi_OUT_r_WREADY;
  input [1:0]m_axi_OUT_r_BRESP;
  input m_axi_OUT_r_BVALID;
  output m_axi_OUT_r_BREADY;
  output [31:0]m_axi_OUT_r_ARADDR;
  output [7:0]m_axi_OUT_r_ARLEN;
  output [2:0]m_axi_OUT_r_ARSIZE;
  output [1:0]m_axi_OUT_r_ARBURST;
  output [1:0]m_axi_OUT_r_ARLOCK;
  output [3:0]m_axi_OUT_r_ARREGION;
  output [3:0]m_axi_OUT_r_ARCACHE;
  output [2:0]m_axi_OUT_r_ARPROT;
  output [3:0]m_axi_OUT_r_ARQOS;
  output m_axi_OUT_r_ARVALID;
  input m_axi_OUT_r_ARREADY;
  input [31:0]m_axi_OUT_r_RDATA;
  input [1:0]m_axi_OUT_r_RRESP;
  input m_axi_OUT_r_RLAST;
  input m_axi_OUT_r_RVALID;
  output m_axi_OUT_r_RREADY;
endmodule
