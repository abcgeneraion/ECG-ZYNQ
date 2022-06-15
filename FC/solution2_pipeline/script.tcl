############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FC
set_top fc
add_files FC/fc.cpp
add_files -tb FC/test_tb.cpp
open_solution "solution2_pipeline"
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -version 0.0.1
#source "./FC/solution2_pipeline/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "0.0.1"
