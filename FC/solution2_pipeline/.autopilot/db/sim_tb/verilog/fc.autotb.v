// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      fc
`define AUTOTB_DUT_INST AESL_inst_fc
`define AUTOTB_TOP      apatb_fc_top
`define AUTOTB_LAT_RESULT_FILE "fc.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "fc.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_fc_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_IN_r 1
`define AESL_DEPTH_W 1
`define AESL_DEPTH_B 1
`define AESL_DEPTH_OUT_r 1
`define AESL_DEPTH_in_V 1
`define AESL_DEPTH_weight_V 1
`define AESL_DEPTH_bias_V 1
`define AESL_DEPTH_out_V 1
`define AUTOTB_TVIN_IN_r  "./c.fc.autotvin_IN_r.dat"
`define AUTOTB_TVIN_W  "./c.fc.autotvin_W.dat"
`define AUTOTB_TVIN_B  "./c.fc.autotvin_B.dat"
`define AUTOTB_TVIN_in_V  "./c.fc.autotvin_in_V.dat"
`define AUTOTB_TVIN_weight_V  "./c.fc.autotvin_weight_V.dat"
`define AUTOTB_TVIN_bias_V  "./c.fc.autotvin_bias_V.dat"
`define AUTOTB_TVIN_out_V  "./c.fc.autotvin_out_V.dat"
`define AUTOTB_TVIN_IN_r_out_wrapc  "./rtl.fc.autotvin_IN_r.dat"
`define AUTOTB_TVIN_W_out_wrapc  "./rtl.fc.autotvin_W.dat"
`define AUTOTB_TVIN_B_out_wrapc  "./rtl.fc.autotvin_B.dat"
`define AUTOTB_TVIN_in_V_out_wrapc  "./rtl.fc.autotvin_in_V.dat"
`define AUTOTB_TVIN_weight_V_out_wrapc  "./rtl.fc.autotvin_weight_V.dat"
`define AUTOTB_TVIN_bias_V_out_wrapc  "./rtl.fc.autotvin_bias_V.dat"
`define AUTOTB_TVIN_out_V_out_wrapc  "./rtl.fc.autotvin_out_V.dat"
`define AUTOTB_TVOUT_OUT_r  "./c.fc.autotvout_OUT_r.dat"
`define AUTOTB_TVOUT_OUT_r_out_wrapc  "./impl_rtl.fc.autotvout_OUT_r.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 24093;
parameter LENGTH_IN_r = 100;
parameter LENGTH_W = 100;
parameter LENGTH_B = 100;
parameter LENGTH_OUT_r = 100;
parameter LENGTH_in_V = 1;
parameter LENGTH_weight_V = 1;
parameter LENGTH_bias_V = 1;
parameter LENGTH_out_V = 1;

task read_token;
    input integer fp;
    output reg [183 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [183 : 0] token1;
    reg [183 : 0] token2;
    reg [183 : 0] golden;
    reg [183 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [5 : 0] CTRL_AWADDR;
wire  CTRL_AWVALID;
wire  CTRL_AWREADY;
wire  CTRL_WVALID;
wire  CTRL_WREADY;
wire [31 : 0] CTRL_WDATA;
wire [3 : 0] CTRL_WSTRB;
wire [5 : 0] CTRL_ARADDR;
wire  CTRL_ARVALID;
wire  CTRL_ARREADY;
wire  CTRL_RVALID;
wire  CTRL_RREADY;
wire [31 : 0] CTRL_RDATA;
wire [1 : 0] CTRL_RRESP;
wire  CTRL_BVALID;
wire  CTRL_BREADY;
wire [1 : 0] CTRL_BRESP;
wire  CTRL_INTERRUPT;
wire  IN_r_AWVALID;
wire  IN_r_AWREADY;
wire [31 : 0] IN_r_AWADDR;
wire [0 : 0] IN_r_AWID;
wire [7 : 0] IN_r_AWLEN;
wire [2 : 0] IN_r_AWSIZE;
wire [1 : 0] IN_r_AWBURST;
wire [1 : 0] IN_r_AWLOCK;
wire [3 : 0] IN_r_AWCACHE;
wire [2 : 0] IN_r_AWPROT;
wire [3 : 0] IN_r_AWQOS;
wire [3 : 0] IN_r_AWREGION;
wire [0 : 0] IN_r_AWUSER;
wire  IN_r_WVALID;
wire  IN_r_WREADY;
wire [31 : 0] IN_r_WDATA;
wire [3 : 0] IN_r_WSTRB;
wire  IN_r_WLAST;
wire [0 : 0] IN_r_WID;
wire [0 : 0] IN_r_WUSER;
wire  IN_r_ARVALID;
wire  IN_r_ARREADY;
wire [31 : 0] IN_r_ARADDR;
wire [0 : 0] IN_r_ARID;
wire [7 : 0] IN_r_ARLEN;
wire [2 : 0] IN_r_ARSIZE;
wire [1 : 0] IN_r_ARBURST;
wire [1 : 0] IN_r_ARLOCK;
wire [3 : 0] IN_r_ARCACHE;
wire [2 : 0] IN_r_ARPROT;
wire [3 : 0] IN_r_ARQOS;
wire [3 : 0] IN_r_ARREGION;
wire [0 : 0] IN_r_ARUSER;
wire  IN_r_RVALID;
wire  IN_r_RREADY;
wire [31 : 0] IN_r_RDATA;
wire  IN_r_RLAST;
wire [0 : 0] IN_r_RID;
wire [0 : 0] IN_r_RUSER;
wire [1 : 0] IN_r_RRESP;
wire  IN_r_BVALID;
wire  IN_r_BREADY;
wire [1 : 0] IN_r_BRESP;
wire [0 : 0] IN_r_BID;
wire [0 : 0] IN_r_BUSER;
wire  W_AWVALID;
wire  W_AWREADY;
wire [31 : 0] W_AWADDR;
wire [0 : 0] W_AWID;
wire [7 : 0] W_AWLEN;
wire [2 : 0] W_AWSIZE;
wire [1 : 0] W_AWBURST;
wire [1 : 0] W_AWLOCK;
wire [3 : 0] W_AWCACHE;
wire [2 : 0] W_AWPROT;
wire [3 : 0] W_AWQOS;
wire [3 : 0] W_AWREGION;
wire [0 : 0] W_AWUSER;
wire  W_WVALID;
wire  W_WREADY;
wire [31 : 0] W_WDATA;
wire [3 : 0] W_WSTRB;
wire  W_WLAST;
wire [0 : 0] W_WID;
wire [0 : 0] W_WUSER;
wire  W_ARVALID;
wire  W_ARREADY;
wire [31 : 0] W_ARADDR;
wire [0 : 0] W_ARID;
wire [7 : 0] W_ARLEN;
wire [2 : 0] W_ARSIZE;
wire [1 : 0] W_ARBURST;
wire [1 : 0] W_ARLOCK;
wire [3 : 0] W_ARCACHE;
wire [2 : 0] W_ARPROT;
wire [3 : 0] W_ARQOS;
wire [3 : 0] W_ARREGION;
wire [0 : 0] W_ARUSER;
wire  W_RVALID;
wire  W_RREADY;
wire [31 : 0] W_RDATA;
wire  W_RLAST;
wire [0 : 0] W_RID;
wire [0 : 0] W_RUSER;
wire [1 : 0] W_RRESP;
wire  W_BVALID;
wire  W_BREADY;
wire [1 : 0] W_BRESP;
wire [0 : 0] W_BID;
wire [0 : 0] W_BUSER;
wire  B_AWVALID;
wire  B_AWREADY;
wire [31 : 0] B_AWADDR;
wire [0 : 0] B_AWID;
wire [7 : 0] B_AWLEN;
wire [2 : 0] B_AWSIZE;
wire [1 : 0] B_AWBURST;
wire [1 : 0] B_AWLOCK;
wire [3 : 0] B_AWCACHE;
wire [2 : 0] B_AWPROT;
wire [3 : 0] B_AWQOS;
wire [3 : 0] B_AWREGION;
wire [0 : 0] B_AWUSER;
wire  B_WVALID;
wire  B_WREADY;
wire [31 : 0] B_WDATA;
wire [3 : 0] B_WSTRB;
wire  B_WLAST;
wire [0 : 0] B_WID;
wire [0 : 0] B_WUSER;
wire  B_ARVALID;
wire  B_ARREADY;
wire [31 : 0] B_ARADDR;
wire [0 : 0] B_ARID;
wire [7 : 0] B_ARLEN;
wire [2 : 0] B_ARSIZE;
wire [1 : 0] B_ARBURST;
wire [1 : 0] B_ARLOCK;
wire [3 : 0] B_ARCACHE;
wire [2 : 0] B_ARPROT;
wire [3 : 0] B_ARQOS;
wire [3 : 0] B_ARREGION;
wire [0 : 0] B_ARUSER;
wire  B_RVALID;
wire  B_RREADY;
wire [31 : 0] B_RDATA;
wire  B_RLAST;
wire [0 : 0] B_RID;
wire [0 : 0] B_RUSER;
wire [1 : 0] B_RRESP;
wire  B_BVALID;
wire  B_BREADY;
wire [1 : 0] B_BRESP;
wire [0 : 0] B_BID;
wire [0 : 0] B_BUSER;
wire  OUT_r_AWVALID;
wire  OUT_r_AWREADY;
wire [31 : 0] OUT_r_AWADDR;
wire [0 : 0] OUT_r_AWID;
wire [7 : 0] OUT_r_AWLEN;
wire [2 : 0] OUT_r_AWSIZE;
wire [1 : 0] OUT_r_AWBURST;
wire [1 : 0] OUT_r_AWLOCK;
wire [3 : 0] OUT_r_AWCACHE;
wire [2 : 0] OUT_r_AWPROT;
wire [3 : 0] OUT_r_AWQOS;
wire [3 : 0] OUT_r_AWREGION;
wire [0 : 0] OUT_r_AWUSER;
wire  OUT_r_WVALID;
wire  OUT_r_WREADY;
wire [31 : 0] OUT_r_WDATA;
wire [3 : 0] OUT_r_WSTRB;
wire  OUT_r_WLAST;
wire [0 : 0] OUT_r_WID;
wire [0 : 0] OUT_r_WUSER;
wire  OUT_r_ARVALID;
wire  OUT_r_ARREADY;
wire [31 : 0] OUT_r_ARADDR;
wire [0 : 0] OUT_r_ARID;
wire [7 : 0] OUT_r_ARLEN;
wire [2 : 0] OUT_r_ARSIZE;
wire [1 : 0] OUT_r_ARBURST;
wire [1 : 0] OUT_r_ARLOCK;
wire [3 : 0] OUT_r_ARCACHE;
wire [2 : 0] OUT_r_ARPROT;
wire [3 : 0] OUT_r_ARQOS;
wire [3 : 0] OUT_r_ARREGION;
wire [0 : 0] OUT_r_ARUSER;
wire  OUT_r_RVALID;
wire  OUT_r_RREADY;
wire [31 : 0] OUT_r_RDATA;
wire  OUT_r_RLAST;
wire [0 : 0] OUT_r_RID;
wire [0 : 0] OUT_r_RUSER;
wire [1 : 0] OUT_r_RRESP;
wire  OUT_r_BVALID;
wire  OUT_r_BREADY;
wire [1 : 0] OUT_r_BRESP;
wire [0 : 0] OUT_r_BID;
wire [0 : 0] OUT_r_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire CTRL_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_CTRL_AWADDR(CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(CTRL_AWREADY),
    .s_axi_CTRL_WVALID(CTRL_WVALID),
    .s_axi_CTRL_WREADY(CTRL_WREADY),
    .s_axi_CTRL_WDATA(CTRL_WDATA),
    .s_axi_CTRL_WSTRB(CTRL_WSTRB),
    .s_axi_CTRL_ARADDR(CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(CTRL_ARREADY),
    .s_axi_CTRL_RVALID(CTRL_RVALID),
    .s_axi_CTRL_RREADY(CTRL_RREADY),
    .s_axi_CTRL_RDATA(CTRL_RDATA),
    .s_axi_CTRL_RRESP(CTRL_RRESP),
    .s_axi_CTRL_BVALID(CTRL_BVALID),
    .s_axi_CTRL_BREADY(CTRL_BREADY),
    .s_axi_CTRL_BRESP(CTRL_BRESP),
    .interrupt(CTRL_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_IN_r_AWVALID(IN_r_AWVALID),
    .m_axi_IN_r_AWREADY(IN_r_AWREADY),
    .m_axi_IN_r_AWADDR(IN_r_AWADDR),
    .m_axi_IN_r_AWID(IN_r_AWID),
    .m_axi_IN_r_AWLEN(IN_r_AWLEN),
    .m_axi_IN_r_AWSIZE(IN_r_AWSIZE),
    .m_axi_IN_r_AWBURST(IN_r_AWBURST),
    .m_axi_IN_r_AWLOCK(IN_r_AWLOCK),
    .m_axi_IN_r_AWCACHE(IN_r_AWCACHE),
    .m_axi_IN_r_AWPROT(IN_r_AWPROT),
    .m_axi_IN_r_AWQOS(IN_r_AWQOS),
    .m_axi_IN_r_AWREGION(IN_r_AWREGION),
    .m_axi_IN_r_AWUSER(IN_r_AWUSER),
    .m_axi_IN_r_WVALID(IN_r_WVALID),
    .m_axi_IN_r_WREADY(IN_r_WREADY),
    .m_axi_IN_r_WDATA(IN_r_WDATA),
    .m_axi_IN_r_WSTRB(IN_r_WSTRB),
    .m_axi_IN_r_WLAST(IN_r_WLAST),
    .m_axi_IN_r_WID(IN_r_WID),
    .m_axi_IN_r_WUSER(IN_r_WUSER),
    .m_axi_IN_r_ARVALID(IN_r_ARVALID),
    .m_axi_IN_r_ARREADY(IN_r_ARREADY),
    .m_axi_IN_r_ARADDR(IN_r_ARADDR),
    .m_axi_IN_r_ARID(IN_r_ARID),
    .m_axi_IN_r_ARLEN(IN_r_ARLEN),
    .m_axi_IN_r_ARSIZE(IN_r_ARSIZE),
    .m_axi_IN_r_ARBURST(IN_r_ARBURST),
    .m_axi_IN_r_ARLOCK(IN_r_ARLOCK),
    .m_axi_IN_r_ARCACHE(IN_r_ARCACHE),
    .m_axi_IN_r_ARPROT(IN_r_ARPROT),
    .m_axi_IN_r_ARQOS(IN_r_ARQOS),
    .m_axi_IN_r_ARREGION(IN_r_ARREGION),
    .m_axi_IN_r_ARUSER(IN_r_ARUSER),
    .m_axi_IN_r_RVALID(IN_r_RVALID),
    .m_axi_IN_r_RREADY(IN_r_RREADY),
    .m_axi_IN_r_RDATA(IN_r_RDATA),
    .m_axi_IN_r_RLAST(IN_r_RLAST),
    .m_axi_IN_r_RID(IN_r_RID),
    .m_axi_IN_r_RUSER(IN_r_RUSER),
    .m_axi_IN_r_RRESP(IN_r_RRESP),
    .m_axi_IN_r_BVALID(IN_r_BVALID),
    .m_axi_IN_r_BREADY(IN_r_BREADY),
    .m_axi_IN_r_BRESP(IN_r_BRESP),
    .m_axi_IN_r_BID(IN_r_BID),
    .m_axi_IN_r_BUSER(IN_r_BUSER),
    .m_axi_W_AWVALID(W_AWVALID),
    .m_axi_W_AWREADY(W_AWREADY),
    .m_axi_W_AWADDR(W_AWADDR),
    .m_axi_W_AWID(W_AWID),
    .m_axi_W_AWLEN(W_AWLEN),
    .m_axi_W_AWSIZE(W_AWSIZE),
    .m_axi_W_AWBURST(W_AWBURST),
    .m_axi_W_AWLOCK(W_AWLOCK),
    .m_axi_W_AWCACHE(W_AWCACHE),
    .m_axi_W_AWPROT(W_AWPROT),
    .m_axi_W_AWQOS(W_AWQOS),
    .m_axi_W_AWREGION(W_AWREGION),
    .m_axi_W_AWUSER(W_AWUSER),
    .m_axi_W_WVALID(W_WVALID),
    .m_axi_W_WREADY(W_WREADY),
    .m_axi_W_WDATA(W_WDATA),
    .m_axi_W_WSTRB(W_WSTRB),
    .m_axi_W_WLAST(W_WLAST),
    .m_axi_W_WID(W_WID),
    .m_axi_W_WUSER(W_WUSER),
    .m_axi_W_ARVALID(W_ARVALID),
    .m_axi_W_ARREADY(W_ARREADY),
    .m_axi_W_ARADDR(W_ARADDR),
    .m_axi_W_ARID(W_ARID),
    .m_axi_W_ARLEN(W_ARLEN),
    .m_axi_W_ARSIZE(W_ARSIZE),
    .m_axi_W_ARBURST(W_ARBURST),
    .m_axi_W_ARLOCK(W_ARLOCK),
    .m_axi_W_ARCACHE(W_ARCACHE),
    .m_axi_W_ARPROT(W_ARPROT),
    .m_axi_W_ARQOS(W_ARQOS),
    .m_axi_W_ARREGION(W_ARREGION),
    .m_axi_W_ARUSER(W_ARUSER),
    .m_axi_W_RVALID(W_RVALID),
    .m_axi_W_RREADY(W_RREADY),
    .m_axi_W_RDATA(W_RDATA),
    .m_axi_W_RLAST(W_RLAST),
    .m_axi_W_RID(W_RID),
    .m_axi_W_RUSER(W_RUSER),
    .m_axi_W_RRESP(W_RRESP),
    .m_axi_W_BVALID(W_BVALID),
    .m_axi_W_BREADY(W_BREADY),
    .m_axi_W_BRESP(W_BRESP),
    .m_axi_W_BID(W_BID),
    .m_axi_W_BUSER(W_BUSER),
    .m_axi_B_AWVALID(B_AWVALID),
    .m_axi_B_AWREADY(B_AWREADY),
    .m_axi_B_AWADDR(B_AWADDR),
    .m_axi_B_AWID(B_AWID),
    .m_axi_B_AWLEN(B_AWLEN),
    .m_axi_B_AWSIZE(B_AWSIZE),
    .m_axi_B_AWBURST(B_AWBURST),
    .m_axi_B_AWLOCK(B_AWLOCK),
    .m_axi_B_AWCACHE(B_AWCACHE),
    .m_axi_B_AWPROT(B_AWPROT),
    .m_axi_B_AWQOS(B_AWQOS),
    .m_axi_B_AWREGION(B_AWREGION),
    .m_axi_B_AWUSER(B_AWUSER),
    .m_axi_B_WVALID(B_WVALID),
    .m_axi_B_WREADY(B_WREADY),
    .m_axi_B_WDATA(B_WDATA),
    .m_axi_B_WSTRB(B_WSTRB),
    .m_axi_B_WLAST(B_WLAST),
    .m_axi_B_WID(B_WID),
    .m_axi_B_WUSER(B_WUSER),
    .m_axi_B_ARVALID(B_ARVALID),
    .m_axi_B_ARREADY(B_ARREADY),
    .m_axi_B_ARADDR(B_ARADDR),
    .m_axi_B_ARID(B_ARID),
    .m_axi_B_ARLEN(B_ARLEN),
    .m_axi_B_ARSIZE(B_ARSIZE),
    .m_axi_B_ARBURST(B_ARBURST),
    .m_axi_B_ARLOCK(B_ARLOCK),
    .m_axi_B_ARCACHE(B_ARCACHE),
    .m_axi_B_ARPROT(B_ARPROT),
    .m_axi_B_ARQOS(B_ARQOS),
    .m_axi_B_ARREGION(B_ARREGION),
    .m_axi_B_ARUSER(B_ARUSER),
    .m_axi_B_RVALID(B_RVALID),
    .m_axi_B_RREADY(B_RREADY),
    .m_axi_B_RDATA(B_RDATA),
    .m_axi_B_RLAST(B_RLAST),
    .m_axi_B_RID(B_RID),
    .m_axi_B_RUSER(B_RUSER),
    .m_axi_B_RRESP(B_RRESP),
    .m_axi_B_BVALID(B_BVALID),
    .m_axi_B_BREADY(B_BREADY),
    .m_axi_B_BRESP(B_BRESP),
    .m_axi_B_BID(B_BID),
    .m_axi_B_BUSER(B_BUSER),
    .m_axi_OUT_r_AWVALID(OUT_r_AWVALID),
    .m_axi_OUT_r_AWREADY(OUT_r_AWREADY),
    .m_axi_OUT_r_AWADDR(OUT_r_AWADDR),
    .m_axi_OUT_r_AWID(OUT_r_AWID),
    .m_axi_OUT_r_AWLEN(OUT_r_AWLEN),
    .m_axi_OUT_r_AWSIZE(OUT_r_AWSIZE),
    .m_axi_OUT_r_AWBURST(OUT_r_AWBURST),
    .m_axi_OUT_r_AWLOCK(OUT_r_AWLOCK),
    .m_axi_OUT_r_AWCACHE(OUT_r_AWCACHE),
    .m_axi_OUT_r_AWPROT(OUT_r_AWPROT),
    .m_axi_OUT_r_AWQOS(OUT_r_AWQOS),
    .m_axi_OUT_r_AWREGION(OUT_r_AWREGION),
    .m_axi_OUT_r_AWUSER(OUT_r_AWUSER),
    .m_axi_OUT_r_WVALID(OUT_r_WVALID),
    .m_axi_OUT_r_WREADY(OUT_r_WREADY),
    .m_axi_OUT_r_WDATA(OUT_r_WDATA),
    .m_axi_OUT_r_WSTRB(OUT_r_WSTRB),
    .m_axi_OUT_r_WLAST(OUT_r_WLAST),
    .m_axi_OUT_r_WID(OUT_r_WID),
    .m_axi_OUT_r_WUSER(OUT_r_WUSER),
    .m_axi_OUT_r_ARVALID(OUT_r_ARVALID),
    .m_axi_OUT_r_ARREADY(OUT_r_ARREADY),
    .m_axi_OUT_r_ARADDR(OUT_r_ARADDR),
    .m_axi_OUT_r_ARID(OUT_r_ARID),
    .m_axi_OUT_r_ARLEN(OUT_r_ARLEN),
    .m_axi_OUT_r_ARSIZE(OUT_r_ARSIZE),
    .m_axi_OUT_r_ARBURST(OUT_r_ARBURST),
    .m_axi_OUT_r_ARLOCK(OUT_r_ARLOCK),
    .m_axi_OUT_r_ARCACHE(OUT_r_ARCACHE),
    .m_axi_OUT_r_ARPROT(OUT_r_ARPROT),
    .m_axi_OUT_r_ARQOS(OUT_r_ARQOS),
    .m_axi_OUT_r_ARREGION(OUT_r_ARREGION),
    .m_axi_OUT_r_ARUSER(OUT_r_ARUSER),
    .m_axi_OUT_r_RVALID(OUT_r_RVALID),
    .m_axi_OUT_r_RREADY(OUT_r_RREADY),
    .m_axi_OUT_r_RDATA(OUT_r_RDATA),
    .m_axi_OUT_r_RLAST(OUT_r_RLAST),
    .m_axi_OUT_r_RID(OUT_r_RID),
    .m_axi_OUT_r_RUSER(OUT_r_RUSER),
    .m_axi_OUT_r_RRESP(OUT_r_RRESP),
    .m_axi_OUT_r_BVALID(OUT_r_BVALID),
    .m_axi_OUT_r_BREADY(OUT_r_BREADY),
    .m_axi_OUT_r_BRESP(OUT_r_BRESP),
    .m_axi_OUT_r_BID(OUT_r_BID),
    .m_axi_OUT_r_BUSER(OUT_r_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & CTRL_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end








wire    AESL_axi_master_IN_r_ready;
wire    AESL_axi_master_IN_r_done;
wire [32 - 1:0] in_V;
AESL_axi_master_IN_r AESL_AXI_MASTER_IN_r(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_IN_r_AWVALID (IN_r_AWVALID),
    .TRAN_IN_r_AWREADY (IN_r_AWREADY),
    .TRAN_IN_r_AWADDR (IN_r_AWADDR),
    .TRAN_IN_r_AWID (IN_r_AWID),
    .TRAN_IN_r_AWLEN (IN_r_AWLEN),
    .TRAN_IN_r_AWSIZE (IN_r_AWSIZE),
    .TRAN_IN_r_AWBURST (IN_r_AWBURST),
    .TRAN_IN_r_AWLOCK (IN_r_AWLOCK),
    .TRAN_IN_r_AWCACHE (IN_r_AWCACHE),
    .TRAN_IN_r_AWPROT (IN_r_AWPROT),
    .TRAN_IN_r_AWQOS (IN_r_AWQOS),
    .TRAN_IN_r_AWREGION (IN_r_AWREGION),
    .TRAN_IN_r_AWUSER (IN_r_AWUSER),
    .TRAN_IN_r_WVALID (IN_r_WVALID),
    .TRAN_IN_r_WREADY (IN_r_WREADY),
    .TRAN_IN_r_WDATA (IN_r_WDATA),
    .TRAN_IN_r_WSTRB (IN_r_WSTRB),
    .TRAN_IN_r_WLAST (IN_r_WLAST),
    .TRAN_IN_r_WID (IN_r_WID),
    .TRAN_IN_r_WUSER (IN_r_WUSER),
    .TRAN_IN_r_ARVALID (IN_r_ARVALID),
    .TRAN_IN_r_ARREADY (IN_r_ARREADY),
    .TRAN_IN_r_ARADDR (IN_r_ARADDR),
    .TRAN_IN_r_ARID (IN_r_ARID),
    .TRAN_IN_r_ARLEN (IN_r_ARLEN),
    .TRAN_IN_r_ARSIZE (IN_r_ARSIZE),
    .TRAN_IN_r_ARBURST (IN_r_ARBURST),
    .TRAN_IN_r_ARLOCK (IN_r_ARLOCK),
    .TRAN_IN_r_ARCACHE (IN_r_ARCACHE),
    .TRAN_IN_r_ARPROT (IN_r_ARPROT),
    .TRAN_IN_r_ARQOS (IN_r_ARQOS),
    .TRAN_IN_r_ARREGION (IN_r_ARREGION),
    .TRAN_IN_r_ARUSER (IN_r_ARUSER),
    .TRAN_IN_r_RVALID (IN_r_RVALID),
    .TRAN_IN_r_RREADY (IN_r_RREADY),
    .TRAN_IN_r_RDATA (IN_r_RDATA),
    .TRAN_IN_r_RLAST (IN_r_RLAST),
    .TRAN_IN_r_RID (IN_r_RID),
    .TRAN_IN_r_RUSER (IN_r_RUSER),
    .TRAN_IN_r_RRESP (IN_r_RRESP),
    .TRAN_IN_r_BVALID (IN_r_BVALID),
    .TRAN_IN_r_BREADY (IN_r_BREADY),
    .TRAN_IN_r_BRESP (IN_r_BRESP),
    .TRAN_IN_r_BID (IN_r_BID),
    .TRAN_IN_r_BUSER (IN_r_BUSER),
    .TRAN_IN_r_in_V (in_V),
    .ready (AESL_axi_master_IN_r_ready),
    .done  (AESL_axi_master_IN_r_done)
);
assign    AESL_axi_master_IN_r_ready    =   ready;
assign    AESL_axi_master_IN_r_done    =   AESL_done_delay;
wire    AESL_axi_master_W_ready;
wire    AESL_axi_master_W_done;
wire [32 - 1:0] weight_V;
AESL_axi_master_W AESL_AXI_MASTER_W(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_W_AWVALID (W_AWVALID),
    .TRAN_W_AWREADY (W_AWREADY),
    .TRAN_W_AWADDR (W_AWADDR),
    .TRAN_W_AWID (W_AWID),
    .TRAN_W_AWLEN (W_AWLEN),
    .TRAN_W_AWSIZE (W_AWSIZE),
    .TRAN_W_AWBURST (W_AWBURST),
    .TRAN_W_AWLOCK (W_AWLOCK),
    .TRAN_W_AWCACHE (W_AWCACHE),
    .TRAN_W_AWPROT (W_AWPROT),
    .TRAN_W_AWQOS (W_AWQOS),
    .TRAN_W_AWREGION (W_AWREGION),
    .TRAN_W_AWUSER (W_AWUSER),
    .TRAN_W_WVALID (W_WVALID),
    .TRAN_W_WREADY (W_WREADY),
    .TRAN_W_WDATA (W_WDATA),
    .TRAN_W_WSTRB (W_WSTRB),
    .TRAN_W_WLAST (W_WLAST),
    .TRAN_W_WID (W_WID),
    .TRAN_W_WUSER (W_WUSER),
    .TRAN_W_ARVALID (W_ARVALID),
    .TRAN_W_ARREADY (W_ARREADY),
    .TRAN_W_ARADDR (W_ARADDR),
    .TRAN_W_ARID (W_ARID),
    .TRAN_W_ARLEN (W_ARLEN),
    .TRAN_W_ARSIZE (W_ARSIZE),
    .TRAN_W_ARBURST (W_ARBURST),
    .TRAN_W_ARLOCK (W_ARLOCK),
    .TRAN_W_ARCACHE (W_ARCACHE),
    .TRAN_W_ARPROT (W_ARPROT),
    .TRAN_W_ARQOS (W_ARQOS),
    .TRAN_W_ARREGION (W_ARREGION),
    .TRAN_W_ARUSER (W_ARUSER),
    .TRAN_W_RVALID (W_RVALID),
    .TRAN_W_RREADY (W_RREADY),
    .TRAN_W_RDATA (W_RDATA),
    .TRAN_W_RLAST (W_RLAST),
    .TRAN_W_RID (W_RID),
    .TRAN_W_RUSER (W_RUSER),
    .TRAN_W_RRESP (W_RRESP),
    .TRAN_W_BVALID (W_BVALID),
    .TRAN_W_BREADY (W_BREADY),
    .TRAN_W_BRESP (W_BRESP),
    .TRAN_W_BID (W_BID),
    .TRAN_W_BUSER (W_BUSER),
    .TRAN_W_weight_V (weight_V),
    .ready (AESL_axi_master_W_ready),
    .done  (AESL_axi_master_W_done)
);
assign    AESL_axi_master_W_ready    =   ready;
assign    AESL_axi_master_W_done    =   AESL_done_delay;
wire    AESL_axi_master_B_ready;
wire    AESL_axi_master_B_done;
wire [32 - 1:0] bias_V;
AESL_axi_master_B AESL_AXI_MASTER_B(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_B_AWVALID (B_AWVALID),
    .TRAN_B_AWREADY (B_AWREADY),
    .TRAN_B_AWADDR (B_AWADDR),
    .TRAN_B_AWID (B_AWID),
    .TRAN_B_AWLEN (B_AWLEN),
    .TRAN_B_AWSIZE (B_AWSIZE),
    .TRAN_B_AWBURST (B_AWBURST),
    .TRAN_B_AWLOCK (B_AWLOCK),
    .TRAN_B_AWCACHE (B_AWCACHE),
    .TRAN_B_AWPROT (B_AWPROT),
    .TRAN_B_AWQOS (B_AWQOS),
    .TRAN_B_AWREGION (B_AWREGION),
    .TRAN_B_AWUSER (B_AWUSER),
    .TRAN_B_WVALID (B_WVALID),
    .TRAN_B_WREADY (B_WREADY),
    .TRAN_B_WDATA (B_WDATA),
    .TRAN_B_WSTRB (B_WSTRB),
    .TRAN_B_WLAST (B_WLAST),
    .TRAN_B_WID (B_WID),
    .TRAN_B_WUSER (B_WUSER),
    .TRAN_B_ARVALID (B_ARVALID),
    .TRAN_B_ARREADY (B_ARREADY),
    .TRAN_B_ARADDR (B_ARADDR),
    .TRAN_B_ARID (B_ARID),
    .TRAN_B_ARLEN (B_ARLEN),
    .TRAN_B_ARSIZE (B_ARSIZE),
    .TRAN_B_ARBURST (B_ARBURST),
    .TRAN_B_ARLOCK (B_ARLOCK),
    .TRAN_B_ARCACHE (B_ARCACHE),
    .TRAN_B_ARPROT (B_ARPROT),
    .TRAN_B_ARQOS (B_ARQOS),
    .TRAN_B_ARREGION (B_ARREGION),
    .TRAN_B_ARUSER (B_ARUSER),
    .TRAN_B_RVALID (B_RVALID),
    .TRAN_B_RREADY (B_RREADY),
    .TRAN_B_RDATA (B_RDATA),
    .TRAN_B_RLAST (B_RLAST),
    .TRAN_B_RID (B_RID),
    .TRAN_B_RUSER (B_RUSER),
    .TRAN_B_RRESP (B_RRESP),
    .TRAN_B_BVALID (B_BVALID),
    .TRAN_B_BREADY (B_BREADY),
    .TRAN_B_BRESP (B_BRESP),
    .TRAN_B_BID (B_BID),
    .TRAN_B_BUSER (B_BUSER),
    .TRAN_B_bias_V (bias_V),
    .ready (AESL_axi_master_B_ready),
    .done  (AESL_axi_master_B_done)
);
assign    AESL_axi_master_B_ready    =   ready;
assign    AESL_axi_master_B_done    =   AESL_done_delay;
wire    AESL_axi_master_OUT_r_ready;
wire    AESL_axi_master_OUT_r_done;
wire [32 - 1:0] out_V;
AESL_axi_master_OUT_r AESL_AXI_MASTER_OUT_r(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_OUT_r_AWVALID (OUT_r_AWVALID),
    .TRAN_OUT_r_AWREADY (OUT_r_AWREADY),
    .TRAN_OUT_r_AWADDR (OUT_r_AWADDR),
    .TRAN_OUT_r_AWID (OUT_r_AWID),
    .TRAN_OUT_r_AWLEN (OUT_r_AWLEN),
    .TRAN_OUT_r_AWSIZE (OUT_r_AWSIZE),
    .TRAN_OUT_r_AWBURST (OUT_r_AWBURST),
    .TRAN_OUT_r_AWLOCK (OUT_r_AWLOCK),
    .TRAN_OUT_r_AWCACHE (OUT_r_AWCACHE),
    .TRAN_OUT_r_AWPROT (OUT_r_AWPROT),
    .TRAN_OUT_r_AWQOS (OUT_r_AWQOS),
    .TRAN_OUT_r_AWREGION (OUT_r_AWREGION),
    .TRAN_OUT_r_AWUSER (OUT_r_AWUSER),
    .TRAN_OUT_r_WVALID (OUT_r_WVALID),
    .TRAN_OUT_r_WREADY (OUT_r_WREADY),
    .TRAN_OUT_r_WDATA (OUT_r_WDATA),
    .TRAN_OUT_r_WSTRB (OUT_r_WSTRB),
    .TRAN_OUT_r_WLAST (OUT_r_WLAST),
    .TRAN_OUT_r_WID (OUT_r_WID),
    .TRAN_OUT_r_WUSER (OUT_r_WUSER),
    .TRAN_OUT_r_ARVALID (OUT_r_ARVALID),
    .TRAN_OUT_r_ARREADY (OUT_r_ARREADY),
    .TRAN_OUT_r_ARADDR (OUT_r_ARADDR),
    .TRAN_OUT_r_ARID (OUT_r_ARID),
    .TRAN_OUT_r_ARLEN (OUT_r_ARLEN),
    .TRAN_OUT_r_ARSIZE (OUT_r_ARSIZE),
    .TRAN_OUT_r_ARBURST (OUT_r_ARBURST),
    .TRAN_OUT_r_ARLOCK (OUT_r_ARLOCK),
    .TRAN_OUT_r_ARCACHE (OUT_r_ARCACHE),
    .TRAN_OUT_r_ARPROT (OUT_r_ARPROT),
    .TRAN_OUT_r_ARQOS (OUT_r_ARQOS),
    .TRAN_OUT_r_ARREGION (OUT_r_ARREGION),
    .TRAN_OUT_r_ARUSER (OUT_r_ARUSER),
    .TRAN_OUT_r_RVALID (OUT_r_RVALID),
    .TRAN_OUT_r_RREADY (OUT_r_RREADY),
    .TRAN_OUT_r_RDATA (OUT_r_RDATA),
    .TRAN_OUT_r_RLAST (OUT_r_RLAST),
    .TRAN_OUT_r_RID (OUT_r_RID),
    .TRAN_OUT_r_RUSER (OUT_r_RUSER),
    .TRAN_OUT_r_RRESP (OUT_r_RRESP),
    .TRAN_OUT_r_BVALID (OUT_r_BVALID),
    .TRAN_OUT_r_BREADY (OUT_r_BREADY),
    .TRAN_OUT_r_BRESP (OUT_r_BRESP),
    .TRAN_OUT_r_BID (OUT_r_BID),
    .TRAN_OUT_r_BUSER (OUT_r_BUSER),
    .TRAN_OUT_r_out_V (out_V),
    .ready (AESL_axi_master_OUT_r_ready),
    .done  (AESL_axi_master_OUT_r_done)
);
assign    AESL_axi_master_OUT_r_ready    =   ready;
assign    AESL_axi_master_OUT_r_done    =   AESL_done_delay;

AESL_axi_slave_CTRL AESL_AXI_SLAVE_CTRL(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_CTRL_AWADDR (CTRL_AWADDR),
    .TRAN_s_axi_CTRL_AWVALID (CTRL_AWVALID),
    .TRAN_s_axi_CTRL_AWREADY (CTRL_AWREADY),
    .TRAN_s_axi_CTRL_WVALID (CTRL_WVALID),
    .TRAN_s_axi_CTRL_WREADY (CTRL_WREADY),
    .TRAN_s_axi_CTRL_WDATA (CTRL_WDATA),
    .TRAN_s_axi_CTRL_WSTRB (CTRL_WSTRB),
    .TRAN_s_axi_CTRL_ARADDR (CTRL_ARADDR),
    .TRAN_s_axi_CTRL_ARVALID (CTRL_ARVALID),
    .TRAN_s_axi_CTRL_ARREADY (CTRL_ARREADY),
    .TRAN_s_axi_CTRL_RVALID (CTRL_RVALID),
    .TRAN_s_axi_CTRL_RREADY (CTRL_RREADY),
    .TRAN_s_axi_CTRL_RDATA (CTRL_RDATA),
    .TRAN_s_axi_CTRL_RRESP (CTRL_RRESP),
    .TRAN_s_axi_CTRL_BVALID (CTRL_BVALID),
    .TRAN_s_axi_CTRL_BREADY (CTRL_BREADY),
    .TRAN_s_axi_CTRL_BRESP (CTRL_BRESP),
    .TRAN_CTRL_interrupt (CTRL_INTERRUPT),
    .TRAN_in_V (in_V),
    .TRAN_weight_V (weight_V),
    .TRAN_bias_V (bias_V),
    .TRAN_out_V (out_V),
    .TRAN_CTRL_write_data_finish(CTRL_write_data_finish),
    .TRAN_CTRL_ready_out (AESL_ready),
    .TRAN_CTRL_ready_in (AESL_slave_ready),
    .TRAN_CTRL_done_out (AESL_slave_output_done),
    .TRAN_CTRL_idle_out (AESL_idle),
    .TRAN_CTRL_write_start_in     (AESL_slave_write_start_in),
    .TRAN_CTRL_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_CTRL_transaction_done_in (AESL_done_delay),
    .TRAN_CTRL_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_IN_r;
reg [31:0] size_IN_r;
reg [31:0] size_IN_r_backup;
reg end_W;
reg [31:0] size_W;
reg [31:0] size_W_backup;
reg end_B;
reg [31:0] size_B;
reg [31:0] size_B_backup;
reg end_in_V;
reg [31:0] size_in_V;
reg [31:0] size_in_V_backup;
reg end_weight_V;
reg [31:0] size_weight_V;
reg [31:0] size_weight_V_backup;
reg end_bias_V;
reg [31:0] size_bias_V;
reg [31:0] size_bias_V_backup;
reg end_out_V;
reg [31:0] size_out_V;
reg [31:0] size_out_V_backup;
reg end_OUT_r;
reg [31:0] size_OUT_r;
reg [31:0] size_OUT_r_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_OUT_r;

initial begin : dump_tvout_runtime_sign_OUT_r
    integer fp;
    dump_tvout_finish_OUT_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_r_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_r_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_OUT_r = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
