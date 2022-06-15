-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Apr  5 09:45:40 2022
-- Host        : DESKTOP-E85MPAB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_fc_0_0_stub.vhdl
-- Design      : system_fc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_IN_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_IN_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_IN_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_IN_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IN_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IN_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IN_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IN_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_IN_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IN_r_AWVALID : out STD_LOGIC;
    m_axi_IN_r_AWREADY : in STD_LOGIC;
    m_axi_IN_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_IN_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IN_r_WLAST : out STD_LOGIC;
    m_axi_IN_r_WVALID : out STD_LOGIC;
    m_axi_IN_r_WREADY : in STD_LOGIC;
    m_axi_IN_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IN_r_BVALID : in STD_LOGIC;
    m_axi_IN_r_BREADY : out STD_LOGIC;
    m_axi_IN_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_IN_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_IN_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_IN_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IN_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IN_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IN_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IN_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_IN_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IN_r_ARVALID : out STD_LOGIC;
    m_axi_IN_r_ARREADY : in STD_LOGIC;
    m_axi_IN_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_IN_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IN_r_RLAST : in STD_LOGIC;
    m_axi_IN_r_RVALID : in STD_LOGIC;
    m_axi_IN_r_RREADY : out STD_LOGIC;
    m_axi_W_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_W_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_W_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_W_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_W_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_W_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_W_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_W_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_W_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_W_AWVALID : out STD_LOGIC;
    m_axi_W_AWREADY : in STD_LOGIC;
    m_axi_W_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_W_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_W_WLAST : out STD_LOGIC;
    m_axi_W_WVALID : out STD_LOGIC;
    m_axi_W_WREADY : in STD_LOGIC;
    m_axi_W_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_W_BVALID : in STD_LOGIC;
    m_axi_W_BREADY : out STD_LOGIC;
    m_axi_W_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_W_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_W_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_W_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_W_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_W_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_W_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_W_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_W_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_W_ARVALID : out STD_LOGIC;
    m_axi_W_ARREADY : in STD_LOGIC;
    m_axi_W_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_W_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_W_RLAST : in STD_LOGIC;
    m_axi_W_RVALID : in STD_LOGIC;
    m_axi_W_RREADY : out STD_LOGIC;
    m_axi_B_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_B_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_B_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_B_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_B_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_B_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_B_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_B_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_B_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_B_AWVALID : out STD_LOGIC;
    m_axi_B_AWREADY : in STD_LOGIC;
    m_axi_B_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_B_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_B_WLAST : out STD_LOGIC;
    m_axi_B_WVALID : out STD_LOGIC;
    m_axi_B_WREADY : in STD_LOGIC;
    m_axi_B_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_B_BVALID : in STD_LOGIC;
    m_axi_B_BREADY : out STD_LOGIC;
    m_axi_B_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_B_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_B_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_B_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_B_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_B_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_B_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_B_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_B_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_B_ARVALID : out STD_LOGIC;
    m_axi_B_ARREADY : in STD_LOGIC;
    m_axi_B_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_B_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_B_RLAST : in STD_LOGIC;
    m_axi_B_RVALID : in STD_LOGIC;
    m_axi_B_RREADY : out STD_LOGIC;
    m_axi_OUT_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUT_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_OUT_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUT_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUT_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUT_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUT_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUT_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUT_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUT_r_AWVALID : out STD_LOGIC;
    m_axi_OUT_r_AWREADY : in STD_LOGIC;
    m_axi_OUT_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUT_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUT_r_WLAST : out STD_LOGIC;
    m_axi_OUT_r_WVALID : out STD_LOGIC;
    m_axi_OUT_r_WREADY : in STD_LOGIC;
    m_axi_OUT_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUT_r_BVALID : in STD_LOGIC;
    m_axi_OUT_r_BREADY : out STD_LOGIC;
    m_axi_OUT_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUT_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_OUT_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUT_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUT_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUT_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUT_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUT_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUT_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUT_r_ARVALID : out STD_LOGIC;
    m_axi_OUT_r_ARREADY : in STD_LOGIC;
    m_axi_OUT_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUT_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUT_r_RLAST : in STD_LOGIC;
    m_axi_OUT_r_RVALID : in STD_LOGIC;
    m_axi_OUT_r_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_AWADDR[5:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[5:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_IN_r_AWADDR[31:0],m_axi_IN_r_AWLEN[7:0],m_axi_IN_r_AWSIZE[2:0],m_axi_IN_r_AWBURST[1:0],m_axi_IN_r_AWLOCK[1:0],m_axi_IN_r_AWREGION[3:0],m_axi_IN_r_AWCACHE[3:0],m_axi_IN_r_AWPROT[2:0],m_axi_IN_r_AWQOS[3:0],m_axi_IN_r_AWVALID,m_axi_IN_r_AWREADY,m_axi_IN_r_WDATA[31:0],m_axi_IN_r_WSTRB[3:0],m_axi_IN_r_WLAST,m_axi_IN_r_WVALID,m_axi_IN_r_WREADY,m_axi_IN_r_BRESP[1:0],m_axi_IN_r_BVALID,m_axi_IN_r_BREADY,m_axi_IN_r_ARADDR[31:0],m_axi_IN_r_ARLEN[7:0],m_axi_IN_r_ARSIZE[2:0],m_axi_IN_r_ARBURST[1:0],m_axi_IN_r_ARLOCK[1:0],m_axi_IN_r_ARREGION[3:0],m_axi_IN_r_ARCACHE[3:0],m_axi_IN_r_ARPROT[2:0],m_axi_IN_r_ARQOS[3:0],m_axi_IN_r_ARVALID,m_axi_IN_r_ARREADY,m_axi_IN_r_RDATA[31:0],m_axi_IN_r_RRESP[1:0],m_axi_IN_r_RLAST,m_axi_IN_r_RVALID,m_axi_IN_r_RREADY,m_axi_W_AWADDR[31:0],m_axi_W_AWLEN[7:0],m_axi_W_AWSIZE[2:0],m_axi_W_AWBURST[1:0],m_axi_W_AWLOCK[1:0],m_axi_W_AWREGION[3:0],m_axi_W_AWCACHE[3:0],m_axi_W_AWPROT[2:0],m_axi_W_AWQOS[3:0],m_axi_W_AWVALID,m_axi_W_AWREADY,m_axi_W_WDATA[31:0],m_axi_W_WSTRB[3:0],m_axi_W_WLAST,m_axi_W_WVALID,m_axi_W_WREADY,m_axi_W_BRESP[1:0],m_axi_W_BVALID,m_axi_W_BREADY,m_axi_W_ARADDR[31:0],m_axi_W_ARLEN[7:0],m_axi_W_ARSIZE[2:0],m_axi_W_ARBURST[1:0],m_axi_W_ARLOCK[1:0],m_axi_W_ARREGION[3:0],m_axi_W_ARCACHE[3:0],m_axi_W_ARPROT[2:0],m_axi_W_ARQOS[3:0],m_axi_W_ARVALID,m_axi_W_ARREADY,m_axi_W_RDATA[31:0],m_axi_W_RRESP[1:0],m_axi_W_RLAST,m_axi_W_RVALID,m_axi_W_RREADY,m_axi_B_AWADDR[31:0],m_axi_B_AWLEN[7:0],m_axi_B_AWSIZE[2:0],m_axi_B_AWBURST[1:0],m_axi_B_AWLOCK[1:0],m_axi_B_AWREGION[3:0],m_axi_B_AWCACHE[3:0],m_axi_B_AWPROT[2:0],m_axi_B_AWQOS[3:0],m_axi_B_AWVALID,m_axi_B_AWREADY,m_axi_B_WDATA[31:0],m_axi_B_WSTRB[3:0],m_axi_B_WLAST,m_axi_B_WVALID,m_axi_B_WREADY,m_axi_B_BRESP[1:0],m_axi_B_BVALID,m_axi_B_BREADY,m_axi_B_ARADDR[31:0],m_axi_B_ARLEN[7:0],m_axi_B_ARSIZE[2:0],m_axi_B_ARBURST[1:0],m_axi_B_ARLOCK[1:0],m_axi_B_ARREGION[3:0],m_axi_B_ARCACHE[3:0],m_axi_B_ARPROT[2:0],m_axi_B_ARQOS[3:0],m_axi_B_ARVALID,m_axi_B_ARREADY,m_axi_B_RDATA[31:0],m_axi_B_RRESP[1:0],m_axi_B_RLAST,m_axi_B_RVALID,m_axi_B_RREADY,m_axi_OUT_r_AWADDR[31:0],m_axi_OUT_r_AWLEN[7:0],m_axi_OUT_r_AWSIZE[2:0],m_axi_OUT_r_AWBURST[1:0],m_axi_OUT_r_AWLOCK[1:0],m_axi_OUT_r_AWREGION[3:0],m_axi_OUT_r_AWCACHE[3:0],m_axi_OUT_r_AWPROT[2:0],m_axi_OUT_r_AWQOS[3:0],m_axi_OUT_r_AWVALID,m_axi_OUT_r_AWREADY,m_axi_OUT_r_WDATA[31:0],m_axi_OUT_r_WSTRB[3:0],m_axi_OUT_r_WLAST,m_axi_OUT_r_WVALID,m_axi_OUT_r_WREADY,m_axi_OUT_r_BRESP[1:0],m_axi_OUT_r_BVALID,m_axi_OUT_r_BREADY,m_axi_OUT_r_ARADDR[31:0],m_axi_OUT_r_ARLEN[7:0],m_axi_OUT_r_ARSIZE[2:0],m_axi_OUT_r_ARBURST[1:0],m_axi_OUT_r_ARLOCK[1:0],m_axi_OUT_r_ARREGION[3:0],m_axi_OUT_r_ARCACHE[3:0],m_axi_OUT_r_ARPROT[2:0],m_axi_OUT_r_ARQOS[3:0],m_axi_OUT_r_ARVALID,m_axi_OUT_r_ARREADY,m_axi_OUT_r_RDATA[31:0],m_axi_OUT_r_RRESP[1:0],m_axi_OUT_r_RLAST,m_axi_OUT_r_RVALID,m_axi_OUT_r_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fc,Vivado 2019.2";
begin
end;
