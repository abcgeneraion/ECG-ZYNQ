############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Conv1d
set_top conv1d
add_files Conv1d/conv1d.cpp
add_files Conv1d/conv1d.h
add_files -tb Conv1d/test_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1_base"
set_part {xc7z020-clg400-2}
create_clock -period 10 -name default
source "./Conv1d/solution1_base/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "0.0.1"
