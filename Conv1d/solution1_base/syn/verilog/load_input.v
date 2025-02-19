// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module load_input (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_in_V_AWVALID,
        m_axi_in_V_AWREADY,
        m_axi_in_V_AWADDR,
        m_axi_in_V_AWID,
        m_axi_in_V_AWLEN,
        m_axi_in_V_AWSIZE,
        m_axi_in_V_AWBURST,
        m_axi_in_V_AWLOCK,
        m_axi_in_V_AWCACHE,
        m_axi_in_V_AWPROT,
        m_axi_in_V_AWQOS,
        m_axi_in_V_AWREGION,
        m_axi_in_V_AWUSER,
        m_axi_in_V_WVALID,
        m_axi_in_V_WREADY,
        m_axi_in_V_WDATA,
        m_axi_in_V_WSTRB,
        m_axi_in_V_WLAST,
        m_axi_in_V_WID,
        m_axi_in_V_WUSER,
        m_axi_in_V_ARVALID,
        m_axi_in_V_ARREADY,
        m_axi_in_V_ARADDR,
        m_axi_in_V_ARID,
        m_axi_in_V_ARLEN,
        m_axi_in_V_ARSIZE,
        m_axi_in_V_ARBURST,
        m_axi_in_V_ARLOCK,
        m_axi_in_V_ARCACHE,
        m_axi_in_V_ARPROT,
        m_axi_in_V_ARQOS,
        m_axi_in_V_ARREGION,
        m_axi_in_V_ARUSER,
        m_axi_in_V_RVALID,
        m_axi_in_V_RREADY,
        m_axi_in_V_RDATA,
        m_axi_in_V_RLAST,
        m_axi_in_V_RID,
        m_axi_in_V_RUSER,
        m_axi_in_V_RRESP,
        m_axi_in_V_BVALID,
        m_axi_in_V_BREADY,
        m_axi_in_V_BRESP,
        m_axi_in_V_BID,
        m_axi_in_V_BUSER,
        in_V_offset,
        buff_in_0_V_address0,
        buff_in_0_V_ce0,
        buff_in_0_V_we0,
        buff_in_0_V_d0,
        buff_in_1_V_address0,
        buff_in_1_V_ce0,
        buff_in_1_V_we0,
        buff_in_1_V_d0,
        buff_in_2_V_address0,
        buff_in_2_V_ce0,
        buff_in_2_V_we0,
        buff_in_2_V_d0,
        buff_in_3_V_address0,
        buff_in_3_V_ce0,
        buff_in_3_V_we0,
        buff_in_3_V_d0,
        n,
        p,
        size
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state25 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_in_V_AWVALID;
input   m_axi_in_V_AWREADY;
output  [31:0] m_axi_in_V_AWADDR;
output  [0:0] m_axi_in_V_AWID;
output  [31:0] m_axi_in_V_AWLEN;
output  [2:0] m_axi_in_V_AWSIZE;
output  [1:0] m_axi_in_V_AWBURST;
output  [1:0] m_axi_in_V_AWLOCK;
output  [3:0] m_axi_in_V_AWCACHE;
output  [2:0] m_axi_in_V_AWPROT;
output  [3:0] m_axi_in_V_AWQOS;
output  [3:0] m_axi_in_V_AWREGION;
output  [0:0] m_axi_in_V_AWUSER;
output   m_axi_in_V_WVALID;
input   m_axi_in_V_WREADY;
output  [15:0] m_axi_in_V_WDATA;
output  [1:0] m_axi_in_V_WSTRB;
output   m_axi_in_V_WLAST;
output  [0:0] m_axi_in_V_WID;
output  [0:0] m_axi_in_V_WUSER;
output   m_axi_in_V_ARVALID;
input   m_axi_in_V_ARREADY;
output  [31:0] m_axi_in_V_ARADDR;
output  [0:0] m_axi_in_V_ARID;
output  [31:0] m_axi_in_V_ARLEN;
output  [2:0] m_axi_in_V_ARSIZE;
output  [1:0] m_axi_in_V_ARBURST;
output  [1:0] m_axi_in_V_ARLOCK;
output  [3:0] m_axi_in_V_ARCACHE;
output  [2:0] m_axi_in_V_ARPROT;
output  [3:0] m_axi_in_V_ARQOS;
output  [3:0] m_axi_in_V_ARREGION;
output  [0:0] m_axi_in_V_ARUSER;
input   m_axi_in_V_RVALID;
output   m_axi_in_V_RREADY;
input  [15:0] m_axi_in_V_RDATA;
input   m_axi_in_V_RLAST;
input  [0:0] m_axi_in_V_RID;
input  [0:0] m_axi_in_V_RUSER;
input  [1:0] m_axi_in_V_RRESP;
input   m_axi_in_V_BVALID;
output   m_axi_in_V_BREADY;
input  [1:0] m_axi_in_V_BRESP;
input  [0:0] m_axi_in_V_BID;
input  [0:0] m_axi_in_V_BUSER;
input  [30:0] in_V_offset;
output  [7:0] buff_in_0_V_address0;
output   buff_in_0_V_ce0;
output   buff_in_0_V_we0;
output  [15:0] buff_in_0_V_d0;
output  [7:0] buff_in_1_V_address0;
output   buff_in_1_V_ce0;
output   buff_in_1_V_we0;
output  [15:0] buff_in_1_V_d0;
output  [7:0] buff_in_2_V_address0;
output   buff_in_2_V_ce0;
output   buff_in_2_V_we0;
output  [15:0] buff_in_2_V_d0;
output  [7:0] buff_in_3_V_address0;
output   buff_in_3_V_ce0;
output   buff_in_3_V_we0;
output  [15:0] buff_in_3_V_d0;
input  [31:0] n;
input  [31:0] p;
input  [31:0] size;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_in_V_ARVALID;
reg m_axi_in_V_RREADY;
reg buff_in_0_V_ce0;
reg buff_in_0_V_we0;
reg buff_in_1_V_ce0;
reg buff_in_1_V_we0;
reg buff_in_2_V_ce0;
reg buff_in_2_V_we0;
reg buff_in_3_V_ce0;
reg buff_in_3_V_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_V_blk_n_AR;
reg    ap_enable_reg_pp0_iter14;
wire    ap_block_pp0_stage0;
reg   [0:0] empty_11_reg_460;
reg    in_V_blk_n_R;
reg    ap_enable_reg_pp0_iter21;
reg   [9:0] indvar_flatten_reg_176;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
wire    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_state11_pp0_stage0_iter9;
wire    ap_block_state12_pp0_stage0_iter10;
wire    ap_block_state13_pp0_stage0_iter11;
wire    ap_block_state14_pp0_stage0_iter12;
wire    ap_block_state15_pp0_stage0_iter13;
wire    ap_block_state16_pp0_stage0_iter14;
reg    ap_block_state16_io;
wire    ap_block_state17_pp0_stage0_iter15;
wire    ap_block_state18_pp0_stage0_iter16;
wire    ap_block_state19_pp0_stage0_iter17;
wire    ap_block_state20_pp0_stage0_iter18;
wire    ap_block_state21_pp0_stage0_iter19;
wire    ap_block_state22_pp0_stage0_iter20;
reg    ap_block_state23_pp0_stage0_iter21;
wire    ap_block_state24_pp0_stage0_iter22;
reg    ap_block_pp0_stage0_11001;
reg   [2:0] nn_0_reg_188;
reg   [7:0] pp_0_reg_200;
wire   [31:0] add_ln14_fu_212_p2;
reg   [31:0] add_ln14_reg_391;
wire  signed [32:0] sext_ln13_fu_224_p1;
reg  signed [32:0] sext_ln13_reg_396;
wire   [33:0] zext_ln9_1_fu_228_p1;
reg   [33:0] zext_ln9_1_reg_401;
wire   [0:0] icmp_ln9_fu_232_p2;
reg   [0:0] icmp_ln9_reg_406;
reg   [0:0] icmp_ln9_reg_406_pp0_iter1_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter2_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter3_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter4_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter5_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter6_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter7_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter8_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter9_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter10_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter11_reg;
reg   [0:0] icmp_ln9_reg_406_pp0_iter12_reg;
wire   [9:0] add_ln9_2_fu_238_p2;
reg   [9:0] add_ln9_2_reg_410;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] select_ln9_fu_256_p3;
reg   [7:0] select_ln9_reg_415;
reg   [7:0] select_ln9_reg_415_pp0_iter12_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter13_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter14_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter15_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter16_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter17_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter18_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter19_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter20_reg;
reg   [7:0] select_ln9_reg_415_pp0_iter21_reg;
wire   [2:0] select_ln9_1_fu_270_p3;
reg   [2:0] select_ln9_1_reg_420;
reg    ap_enable_reg_pp0_iter11;
wire  signed [31:0] add_ln9_fu_282_p2;
reg  signed [31:0] add_ln9_reg_425;
wire   [1:0] trunc_ln9_fu_287_p1;
reg   [1:0] trunc_ln9_reg_430;
reg   [1:0] trunc_ln9_reg_430_pp0_iter12_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter13_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter14_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter15_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter16_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter17_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter18_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter19_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter20_reg;
reg   [1:0] trunc_ln9_reg_430_pp0_iter21_reg;
wire   [0:0] icmp_ln14_fu_300_p2;
reg   [0:0] icmp_ln14_reg_434;
reg   [0:0] icmp_ln14_reg_434_pp0_iter12_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter13_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter14_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter15_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter16_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter17_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter18_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter19_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter20_reg;
reg   [0:0] icmp_ln14_reg_434_pp0_iter21_reg;
wire   [0:0] icmp_ln14_1_fu_306_p2;
reg   [0:0] icmp_ln14_1_reg_439;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter12_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter13_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter14_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter15_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter16_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter17_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter18_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter19_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter20_reg;
reg   [0:0] icmp_ln14_1_reg_439_pp0_iter21_reg;
wire   [7:0] pp_fu_311_p2;
reg   [7:0] pp_reg_444;
wire   [31:0] mul_ln9_fu_317_p2;
reg   [31:0] mul_ln9_reg_449;
reg   [31:0] in_V_addr_reg_454;
wire   [0:0] empty_11_fu_348_p2;
reg   [15:0] tmp_V_reg_464;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter22;
reg   [9:0] ap_phi_mux_indvar_flatten_phi_fu_180_p4;
reg   [2:0] ap_phi_mux_nn_0_phi_fu_192_p4;
reg   [7:0] ap_phi_mux_pp_0_phi_fu_204_p4;
wire   [63:0] zext_ln15_fu_358_p1;
wire  signed [63:0] sext_ln13_1_fu_338_p1;
wire   [15:0] tmp_V_195_fu_365_p3;
wire  signed [31:0] add_ln14_fu_212_p0;
wire   [31:0] add_ln13_fu_218_p2;
wire   [8:0] grp_fu_244_p1;
wire   [0:0] icmp_ln10_fu_250_p2;
wire   [2:0] add_ln9_3_fu_264_p2;
wire   [31:0] zext_ln9_fu_278_p1;
wire   [31:0] zext_ln10_fu_291_p1;
wire   [31:0] add_ln14_1_fu_295_p2;
wire  signed [31:0] mul_ln9_fu_317_p1;
wire  signed [32:0] sext_ln9_fu_321_p1;
wire   [32:0] add_ln9_1_fu_324_p2;
wire  signed [33:0] sext_ln10_fu_329_p1;
wire   [33:0] add_ln13_1_fu_333_p2;
wire   [9:0] grp_fu_244_p2;
wire   [0:0] and_ln14_fu_354_p2;
reg    grp_fu_244_ce;
wire    ap_CS_fsm_state25;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
end

conv1d_urem_10ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 14 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 10 ))
conv1d_urem_10ns_cud_U36(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ap_phi_mux_indvar_flatten_phi_fu_180_p4),
    .din1(grp_fu_244_p1),
    .ce(grp_fu_244_ce),
    .dout(grp_fu_244_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter22 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_reg_406 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_176 <= add_ln9_2_reg_410;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_176 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_reg_406_pp0_iter11_reg == 1'd0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        nn_0_reg_188 <= select_ln9_1_reg_420;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        nn_0_reg_188 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_reg_406_pp0_iter11_reg == 1'd0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pp_0_reg_200 <= pp_reg_444;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        pp_0_reg_200 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln14_reg_391 <= add_ln14_fu_212_p2;
        sext_ln13_reg_396 <= sext_ln13_fu_224_p1;
        zext_ln9_1_reg_401[30 : 0] <= zext_ln9_1_fu_228_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln9_2_reg_410 <= add_ln9_2_fu_238_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_reg_406_pp0_iter10_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln9_reg_425 <= add_ln9_fu_282_p2;
        select_ln9_reg_415 <= select_ln9_fu_256_p3;
        trunc_ln9_reg_430 <= trunc_ln9_fu_287_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_reg_406_pp0_iter12_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_11_reg_460 <= empty_11_fu_348_p2;
        in_V_addr_reg_454 <= sext_ln13_1_fu_338_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln14_1_reg_439 <= icmp_ln14_1_fu_306_p2;
        icmp_ln14_1_reg_439_pp0_iter12_reg <= icmp_ln14_1_reg_439;
        icmp_ln14_1_reg_439_pp0_iter13_reg <= icmp_ln14_1_reg_439_pp0_iter12_reg;
        icmp_ln14_1_reg_439_pp0_iter14_reg <= icmp_ln14_1_reg_439_pp0_iter13_reg;
        icmp_ln14_1_reg_439_pp0_iter15_reg <= icmp_ln14_1_reg_439_pp0_iter14_reg;
        icmp_ln14_1_reg_439_pp0_iter16_reg <= icmp_ln14_1_reg_439_pp0_iter15_reg;
        icmp_ln14_1_reg_439_pp0_iter17_reg <= icmp_ln14_1_reg_439_pp0_iter16_reg;
        icmp_ln14_1_reg_439_pp0_iter18_reg <= icmp_ln14_1_reg_439_pp0_iter17_reg;
        icmp_ln14_1_reg_439_pp0_iter19_reg <= icmp_ln14_1_reg_439_pp0_iter18_reg;
        icmp_ln14_1_reg_439_pp0_iter20_reg <= icmp_ln14_1_reg_439_pp0_iter19_reg;
        icmp_ln14_1_reg_439_pp0_iter21_reg <= icmp_ln14_1_reg_439_pp0_iter20_reg;
        icmp_ln14_reg_434 <= icmp_ln14_fu_300_p2;
        icmp_ln14_reg_434_pp0_iter12_reg <= icmp_ln14_reg_434;
        icmp_ln14_reg_434_pp0_iter13_reg <= icmp_ln14_reg_434_pp0_iter12_reg;
        icmp_ln14_reg_434_pp0_iter14_reg <= icmp_ln14_reg_434_pp0_iter13_reg;
        icmp_ln14_reg_434_pp0_iter15_reg <= icmp_ln14_reg_434_pp0_iter14_reg;
        icmp_ln14_reg_434_pp0_iter16_reg <= icmp_ln14_reg_434_pp0_iter15_reg;
        icmp_ln14_reg_434_pp0_iter17_reg <= icmp_ln14_reg_434_pp0_iter16_reg;
        icmp_ln14_reg_434_pp0_iter18_reg <= icmp_ln14_reg_434_pp0_iter17_reg;
        icmp_ln14_reg_434_pp0_iter19_reg <= icmp_ln14_reg_434_pp0_iter18_reg;
        icmp_ln14_reg_434_pp0_iter20_reg <= icmp_ln14_reg_434_pp0_iter19_reg;
        icmp_ln14_reg_434_pp0_iter21_reg <= icmp_ln14_reg_434_pp0_iter20_reg;
        icmp_ln9_reg_406_pp0_iter10_reg <= icmp_ln9_reg_406_pp0_iter9_reg;
        icmp_ln9_reg_406_pp0_iter11_reg <= icmp_ln9_reg_406_pp0_iter10_reg;
        icmp_ln9_reg_406_pp0_iter12_reg <= icmp_ln9_reg_406_pp0_iter11_reg;
        icmp_ln9_reg_406_pp0_iter2_reg <= icmp_ln9_reg_406_pp0_iter1_reg;
        icmp_ln9_reg_406_pp0_iter3_reg <= icmp_ln9_reg_406_pp0_iter2_reg;
        icmp_ln9_reg_406_pp0_iter4_reg <= icmp_ln9_reg_406_pp0_iter3_reg;
        icmp_ln9_reg_406_pp0_iter5_reg <= icmp_ln9_reg_406_pp0_iter4_reg;
        icmp_ln9_reg_406_pp0_iter6_reg <= icmp_ln9_reg_406_pp0_iter5_reg;
        icmp_ln9_reg_406_pp0_iter7_reg <= icmp_ln9_reg_406_pp0_iter6_reg;
        icmp_ln9_reg_406_pp0_iter8_reg <= icmp_ln9_reg_406_pp0_iter7_reg;
        icmp_ln9_reg_406_pp0_iter9_reg <= icmp_ln9_reg_406_pp0_iter8_reg;
        select_ln9_reg_415_pp0_iter12_reg <= select_ln9_reg_415;
        select_ln9_reg_415_pp0_iter13_reg <= select_ln9_reg_415_pp0_iter12_reg;
        select_ln9_reg_415_pp0_iter14_reg <= select_ln9_reg_415_pp0_iter13_reg;
        select_ln9_reg_415_pp0_iter15_reg <= select_ln9_reg_415_pp0_iter14_reg;
        select_ln9_reg_415_pp0_iter16_reg <= select_ln9_reg_415_pp0_iter15_reg;
        select_ln9_reg_415_pp0_iter17_reg <= select_ln9_reg_415_pp0_iter16_reg;
        select_ln9_reg_415_pp0_iter18_reg <= select_ln9_reg_415_pp0_iter17_reg;
        select_ln9_reg_415_pp0_iter19_reg <= select_ln9_reg_415_pp0_iter18_reg;
        select_ln9_reg_415_pp0_iter20_reg <= select_ln9_reg_415_pp0_iter19_reg;
        select_ln9_reg_415_pp0_iter21_reg <= select_ln9_reg_415_pp0_iter20_reg;
        tmp_V_reg_464 <= m_axi_in_V_RDATA;
        trunc_ln9_reg_430_pp0_iter12_reg <= trunc_ln9_reg_430;
        trunc_ln9_reg_430_pp0_iter13_reg <= trunc_ln9_reg_430_pp0_iter12_reg;
        trunc_ln9_reg_430_pp0_iter14_reg <= trunc_ln9_reg_430_pp0_iter13_reg;
        trunc_ln9_reg_430_pp0_iter15_reg <= trunc_ln9_reg_430_pp0_iter14_reg;
        trunc_ln9_reg_430_pp0_iter16_reg <= trunc_ln9_reg_430_pp0_iter15_reg;
        trunc_ln9_reg_430_pp0_iter17_reg <= trunc_ln9_reg_430_pp0_iter16_reg;
        trunc_ln9_reg_430_pp0_iter18_reg <= trunc_ln9_reg_430_pp0_iter17_reg;
        trunc_ln9_reg_430_pp0_iter19_reg <= trunc_ln9_reg_430_pp0_iter18_reg;
        trunc_ln9_reg_430_pp0_iter20_reg <= trunc_ln9_reg_430_pp0_iter19_reg;
        trunc_ln9_reg_430_pp0_iter21_reg <= trunc_ln9_reg_430_pp0_iter20_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln9_reg_406 <= icmp_ln9_fu_232_p2;
        icmp_ln9_reg_406_pp0_iter1_reg <= icmp_ln9_reg_406;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_reg_406_pp0_iter11_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln9_reg_449 <= mul_ln9_fu_317_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_reg_406_pp0_iter10_reg == 1'd0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pp_reg_444 <= pp_fu_311_p2;
        select_ln9_1_reg_420 <= select_ln9_1_fu_270_p3;
    end
end

always @ (*) begin
    if ((icmp_ln9_fu_232_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln9_reg_406 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_indvar_flatten_phi_fu_180_p4 = add_ln9_2_reg_410;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_180_p4 = indvar_flatten_reg_176;
    end
end

always @ (*) begin
    if (((icmp_ln9_reg_406_pp0_iter11_reg == 1'd0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_nn_0_phi_fu_192_p4 = select_ln9_1_reg_420;
    end else begin
        ap_phi_mux_nn_0_phi_fu_192_p4 = nn_0_reg_188;
    end
end

always @ (*) begin
    if (((icmp_ln9_reg_406_pp0_iter11_reg == 1'd0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_pp_0_phi_fu_204_p4 = pp_reg_444;
    end else begin
        ap_phi_mux_pp_0_phi_fu_204_p4 = pp_0_reg_200;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_in_0_V_ce0 = 1'b1;
    end else begin
        buff_in_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln9_reg_430_pp0_iter21_reg == 2'd0) & (ap_enable_reg_pp0_iter22 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_in_0_V_we0 = 1'b1;
    end else begin
        buff_in_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_in_1_V_ce0 = 1'b1;
    end else begin
        buff_in_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln9_reg_430_pp0_iter21_reg == 2'd1) & (ap_enable_reg_pp0_iter22 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_in_1_V_we0 = 1'b1;
    end else begin
        buff_in_1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_in_2_V_ce0 = 1'b1;
    end else begin
        buff_in_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln9_reg_430_pp0_iter21_reg == 2'd2) & (ap_enable_reg_pp0_iter22 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_in_2_V_we0 = 1'b1;
    end else begin
        buff_in_2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_in_3_V_ce0 = 1'b1;
    end else begin
        buff_in_3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln9_reg_430_pp0_iter21_reg == 2'd3) & (ap_enable_reg_pp0_iter22 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_in_3_V_we0 = 1'b1;
    end else begin
        buff_in_3_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_244_ce = 1'b1;
    end else begin
        grp_fu_244_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b1) & (empty_11_reg_460 == 1'd1) & (1'b0 == ap_block_pp0_stage0))) begin
        in_V_blk_n_AR = m_axi_in_V_ARREADY;
    end else begin
        in_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        in_V_blk_n_R = m_axi_in_V_RVALID;
    end else begin
        in_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_11_reg_460 == 1'd1))) begin
        m_axi_in_V_ARVALID = 1'b1;
    end else begin
        m_axi_in_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_in_V_RREADY = 1'b1;
    end else begin
        m_axi_in_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln9_fu_232_p2 == 1'd1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter22 == 1'b1) & (ap_enable_reg_pp0_iter21 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter22 == 1'b1) & (ap_enable_reg_pp0_iter21 == 1'b0)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln9_fu_232_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln13_1_fu_333_p2 = ($signed(zext_ln9_1_reg_401) + $signed(sext_ln10_fu_329_p1));

assign add_ln13_fu_218_p2 = ($signed(p) + $signed(32'd4294967295));

assign add_ln14_1_fu_295_p2 = (zext_ln10_fu_291_p1 + p);

assign add_ln14_fu_212_p0 = size;

assign add_ln14_fu_212_p2 = ($signed(add_ln14_fu_212_p0) + $signed(32'd1));

assign add_ln9_1_fu_324_p2 = ($signed(sext_ln9_fu_321_p1) + $signed(sext_ln13_reg_396));

assign add_ln9_2_fu_238_p2 = (ap_phi_mux_indvar_flatten_phi_fu_180_p4 + 10'd1);

assign add_ln9_3_fu_264_p2 = (3'd1 + ap_phi_mux_nn_0_phi_fu_192_p4);

assign add_ln9_fu_282_p2 = (zext_ln9_fu_278_p1 + n);

assign and_ln14_fu_354_p2 = (icmp_ln14_reg_434_pp0_iter21_reg & icmp_ln14_1_reg_439_pp0_iter21_reg);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((m_axi_in_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b1)) | ((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_block_state16_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((m_axi_in_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b1)) | ((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_block_state16_io)));
end

assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state16_io = ((m_axi_in_V_ARREADY == 1'b0) & (empty_11_reg_460 == 1'd1));
end

assign ap_block_state16_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state23_pp0_stage0_iter21 = (m_axi_in_V_RVALID == 1'b0);
end

assign ap_block_state24_pp0_stage0_iter22 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign buff_in_0_V_address0 = zext_ln15_fu_358_p1;

assign buff_in_0_V_d0 = tmp_V_195_fu_365_p3;

assign buff_in_1_V_address0 = zext_ln15_fu_358_p1;

assign buff_in_1_V_d0 = tmp_V_195_fu_365_p3;

assign buff_in_2_V_address0 = zext_ln15_fu_358_p1;

assign buff_in_2_V_d0 = tmp_V_195_fu_365_p3;

assign buff_in_3_V_address0 = zext_ln15_fu_358_p1;

assign buff_in_3_V_d0 = tmp_V_195_fu_365_p3;

assign empty_11_fu_348_p2 = ((grp_fu_244_p2 == 10'd0) ? 1'b1 : 1'b0);

assign grp_fu_244_p1 = 10'd152;

assign icmp_ln10_fu_250_p2 = ((ap_phi_mux_pp_0_phi_fu_204_p4 == 8'd152) ? 1'b1 : 1'b0);

assign icmp_ln14_1_fu_306_p2 = (($signed(add_ln14_1_fu_295_p2) < $signed(add_ln14_reg_391)) ? 1'b1 : 1'b0);

assign icmp_ln14_fu_300_p2 = (($signed(add_ln14_1_fu_295_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln9_fu_232_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_180_p4 == 10'd608) ? 1'b1 : 1'b0);

assign m_axi_in_V_ARADDR = in_V_addr_reg_454;

assign m_axi_in_V_ARBURST = 2'd0;

assign m_axi_in_V_ARCACHE = 4'd0;

assign m_axi_in_V_ARID = 1'd0;

assign m_axi_in_V_ARLEN = 32'd152;

assign m_axi_in_V_ARLOCK = 2'd0;

assign m_axi_in_V_ARPROT = 3'd0;

assign m_axi_in_V_ARQOS = 4'd0;

assign m_axi_in_V_ARREGION = 4'd0;

assign m_axi_in_V_ARSIZE = 3'd0;

assign m_axi_in_V_ARUSER = 1'd0;

assign m_axi_in_V_AWADDR = 32'd0;

assign m_axi_in_V_AWBURST = 2'd0;

assign m_axi_in_V_AWCACHE = 4'd0;

assign m_axi_in_V_AWID = 1'd0;

assign m_axi_in_V_AWLEN = 32'd0;

assign m_axi_in_V_AWLOCK = 2'd0;

assign m_axi_in_V_AWPROT = 3'd0;

assign m_axi_in_V_AWQOS = 4'd0;

assign m_axi_in_V_AWREGION = 4'd0;

assign m_axi_in_V_AWSIZE = 3'd0;

assign m_axi_in_V_AWUSER = 1'd0;

assign m_axi_in_V_AWVALID = 1'b0;

assign m_axi_in_V_BREADY = 1'b0;

assign m_axi_in_V_WDATA = 16'd0;

assign m_axi_in_V_WID = 1'd0;

assign m_axi_in_V_WLAST = 1'b0;

assign m_axi_in_V_WSTRB = 2'd0;

assign m_axi_in_V_WUSER = 1'd0;

assign m_axi_in_V_WVALID = 1'b0;

assign mul_ln9_fu_317_p1 = size;

assign mul_ln9_fu_317_p2 = ($signed(add_ln9_reg_425) * $signed(mul_ln9_fu_317_p1));

assign pp_fu_311_p2 = (select_ln9_fu_256_p3 + 8'd1);

assign select_ln9_1_fu_270_p3 = ((icmp_ln10_fu_250_p2[0:0] === 1'b1) ? add_ln9_3_fu_264_p2 : ap_phi_mux_nn_0_phi_fu_192_p4);

assign select_ln9_fu_256_p3 = ((icmp_ln10_fu_250_p2[0:0] === 1'b1) ? 8'd0 : ap_phi_mux_pp_0_phi_fu_204_p4);

assign sext_ln10_fu_329_p1 = $signed(add_ln9_1_fu_324_p2);

assign sext_ln13_1_fu_338_p1 = $signed(add_ln13_1_fu_333_p2);

assign sext_ln13_fu_224_p1 = $signed(add_ln13_fu_218_p2);

assign sext_ln9_fu_321_p1 = $signed(mul_ln9_reg_449);

assign tmp_V_195_fu_365_p3 = ((and_ln14_fu_354_p2[0:0] === 1'b1) ? tmp_V_reg_464 : 16'd0);

assign trunc_ln9_fu_287_p1 = select_ln9_1_fu_270_p3[1:0];

assign zext_ln10_fu_291_p1 = select_ln9_fu_256_p3;

assign zext_ln15_fu_358_p1 = select_ln9_reg_415_pp0_iter21_reg;

assign zext_ln9_1_fu_228_p1 = in_V_offset;

assign zext_ln9_fu_278_p1 = select_ln9_1_fu_270_p3;

always @ (posedge ap_clk) begin
    zext_ln9_1_reg_401[33:31] <= 3'b000;
end

endmodule //load_input
