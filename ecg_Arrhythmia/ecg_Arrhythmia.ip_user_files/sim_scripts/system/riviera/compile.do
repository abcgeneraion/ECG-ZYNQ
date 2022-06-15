vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_6
vlib riviera/processing_system7_vip_v1_0_8
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_20
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_19
vlib riviera/axi_crossbar_v2_1_21
vlib riviera/axi_protocol_converter_v2_1_20
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_clock_converter_v2_1_19
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_dwidth_converter_v2_1_20

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 riviera/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 riviera/processing_system7_vip_v1_0_8
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_20 riviera/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 riviera/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 riviera/axi_crossbar_v2_1_21
vmap axi_protocol_converter_v2_1_20 riviera/axi_protocol_converter_v2_1_20
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_clock_converter_v2_1_19 riviera/axi_clock_converter_v2_1_19
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_20 riviera/axi_dwidth_converter_v2_1_20

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/vivado_tools_2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/7934/hdl/verilog/fc_B_m_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/7934/hdl/verilog/fc_CTRL_s_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/7934/hdl/verilog/fc_IN_r_m_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/7934/hdl/verilog/fc_mul_mul_16s_16bkb.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/7934/hdl/verilog/fc_OUT_r_m_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/7934/hdl/verilog/fc_W_m_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/7934/hdl/verilog/fc.v" \
"../../../bd/system/ip/system_fc_0_0/sim/system_fc_0_0.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/compute.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/compute_output.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/compute_output_bug8j.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_B_m_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_bias_buff_UhA.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_buff_out1_ocq.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_CTRL_s_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_IN_r_m_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_mul_mul_16fYi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_mux_32_16_eOg.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_mux_164_16bkb.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_OUT_r_m_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_urem_8ns_3dEe.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_urem_10ns_cud.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d_W_m_axi.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/load_bias.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/load_input.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/load_weight.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/write_back.v" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/da05/hdl/verilog/conv1d.v" \
"../../../bd/system/ip/system_conv1d_0_0/sim/system_conv1d_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_1/sim/system_processing_system7_0_1.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \

vlog -work axi_clock_converter_v2_1_19  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_20  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ecg_Arrhythmia.srcs/sources_1/bd/system/ip/system_processing_system7_0_1" "+incdir+E:/vivado_tools_2019.2/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_us_0/sim/system_auto_us_0.v" \
"../../../bd/system/ip/system_auto_us_1/sim/system_auto_us_1.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_xbar_2/sim/system_xbar_2.v" \
"../../../bd/system/ip/system_auto_us_2/sim/system_auto_us_2.v" \
"../../../bd/system/ip/system_auto_us_3/sim/system_auto_us_3.v" \
"../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
"../../../bd/system/ip/system_xbar_3/sim/system_xbar_3.v" \
"../../../bd/system/ip/system_auto_us_4/sim/system_auto_us_4.v" \
"../../../bd/system/ip/system_auto_us_5/sim/system_auto_us_5.v" \
"../../../bd/system/ip/system_auto_pc_3/sim/system_auto_pc_3.v" \
"../../../bd/system/ip/system_xbar_4/sim/system_xbar_4.v" \
"../../../bd/system/ip/system_auto_us_6/sim/system_auto_us_6.v" \
"../../../bd/system/ip/system_auto_us_7/sim/system_auto_us_7.v" \
"../../../bd/system/ip/system_auto_pc_4/sim/system_auto_pc_4.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

