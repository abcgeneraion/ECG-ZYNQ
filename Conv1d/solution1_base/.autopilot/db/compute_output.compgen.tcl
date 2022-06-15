# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 588
set hasByteEnable 0
set MemName compute_output_bug8j
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 16
set AddrRange 152
set AddrWd 8
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.771
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 593 \
    name buff_out_0_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_0_V \
    op interface \
    ports { buff_out_0_V_address0 { O 8 vector } buff_out_0_V_ce0 { O 1 bit } buff_out_0_V_we0 { O 1 bit } buff_out_0_V_d0 { O 16 vector } buff_out_0_V_q0 { I 16 vector } buff_out_0_V_address1 { O 8 vector } buff_out_0_V_ce1 { O 1 bit } buff_out_0_V_we1 { O 1 bit } buff_out_0_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 594 \
    name buff_out_1_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_1_V \
    op interface \
    ports { buff_out_1_V_address0 { O 8 vector } buff_out_1_V_ce0 { O 1 bit } buff_out_1_V_we0 { O 1 bit } buff_out_1_V_d0 { O 16 vector } buff_out_1_V_q0 { I 16 vector } buff_out_1_V_address1 { O 8 vector } buff_out_1_V_ce1 { O 1 bit } buff_out_1_V_we1 { O 1 bit } buff_out_1_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 595 \
    name buff_out_2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_2_V \
    op interface \
    ports { buff_out_2_V_address0 { O 8 vector } buff_out_2_V_ce0 { O 1 bit } buff_out_2_V_we0 { O 1 bit } buff_out_2_V_d0 { O 16 vector } buff_out_2_V_q0 { I 16 vector } buff_out_2_V_address1 { O 8 vector } buff_out_2_V_ce1 { O 1 bit } buff_out_2_V_we1 { O 1 bit } buff_out_2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 596 \
    name buff_out_3_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_3_V \
    op interface \
    ports { buff_out_3_V_address0 { O 8 vector } buff_out_3_V_ce0 { O 1 bit } buff_out_3_V_we0 { O 1 bit } buff_out_3_V_d0 { O 16 vector } buff_out_3_V_q0 { I 16 vector } buff_out_3_V_address1 { O 8 vector } buff_out_3_V_ce1 { O 1 bit } buff_out_3_V_we1 { O 1 bit } buff_out_3_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 597 \
    name buff_out_4_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_4_V \
    op interface \
    ports { buff_out_4_V_address0 { O 8 vector } buff_out_4_V_ce0 { O 1 bit } buff_out_4_V_we0 { O 1 bit } buff_out_4_V_d0 { O 16 vector } buff_out_4_V_q0 { I 16 vector } buff_out_4_V_address1 { O 8 vector } buff_out_4_V_ce1 { O 1 bit } buff_out_4_V_we1 { O 1 bit } buff_out_4_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 598 \
    name buff_out_5_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_5_V \
    op interface \
    ports { buff_out_5_V_address0 { O 8 vector } buff_out_5_V_ce0 { O 1 bit } buff_out_5_V_we0 { O 1 bit } buff_out_5_V_d0 { O 16 vector } buff_out_5_V_q0 { I 16 vector } buff_out_5_V_address1 { O 8 vector } buff_out_5_V_ce1 { O 1 bit } buff_out_5_V_we1 { O 1 bit } buff_out_5_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 599 \
    name buff_out_6_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_6_V \
    op interface \
    ports { buff_out_6_V_address0 { O 8 vector } buff_out_6_V_ce0 { O 1 bit } buff_out_6_V_we0 { O 1 bit } buff_out_6_V_d0 { O 16 vector } buff_out_6_V_q0 { I 16 vector } buff_out_6_V_address1 { O 8 vector } buff_out_6_V_ce1 { O 1 bit } buff_out_6_V_we1 { O 1 bit } buff_out_6_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 600 \
    name buff_out_7_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_7_V \
    op interface \
    ports { buff_out_7_V_address0 { O 8 vector } buff_out_7_V_ce0 { O 1 bit } buff_out_7_V_we0 { O 1 bit } buff_out_7_V_d0 { O 16 vector } buff_out_7_V_q0 { I 16 vector } buff_out_7_V_address1 { O 8 vector } buff_out_7_V_ce1 { O 1 bit } buff_out_7_V_we1 { O 1 bit } buff_out_7_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_7_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 601 \
    name buff_out_8_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_8_V \
    op interface \
    ports { buff_out_8_V_address0 { O 8 vector } buff_out_8_V_ce0 { O 1 bit } buff_out_8_V_we0 { O 1 bit } buff_out_8_V_d0 { O 16 vector } buff_out_8_V_q0 { I 16 vector } buff_out_8_V_address1 { O 8 vector } buff_out_8_V_ce1 { O 1 bit } buff_out_8_V_we1 { O 1 bit } buff_out_8_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_8_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 602 \
    name buff_out_9_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_9_V \
    op interface \
    ports { buff_out_9_V_address0 { O 8 vector } buff_out_9_V_ce0 { O 1 bit } buff_out_9_V_we0 { O 1 bit } buff_out_9_V_d0 { O 16 vector } buff_out_9_V_q0 { I 16 vector } buff_out_9_V_address1 { O 8 vector } buff_out_9_V_ce1 { O 1 bit } buff_out_9_V_we1 { O 1 bit } buff_out_9_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_9_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 603 \
    name buff_out_10_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_10_V \
    op interface \
    ports { buff_out_10_V_address0 { O 8 vector } buff_out_10_V_ce0 { O 1 bit } buff_out_10_V_we0 { O 1 bit } buff_out_10_V_d0 { O 16 vector } buff_out_10_V_q0 { I 16 vector } buff_out_10_V_address1 { O 8 vector } buff_out_10_V_ce1 { O 1 bit } buff_out_10_V_we1 { O 1 bit } buff_out_10_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_10_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 604 \
    name buff_out_11_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_11_V \
    op interface \
    ports { buff_out_11_V_address0 { O 8 vector } buff_out_11_V_ce0 { O 1 bit } buff_out_11_V_we0 { O 1 bit } buff_out_11_V_d0 { O 16 vector } buff_out_11_V_q0 { I 16 vector } buff_out_11_V_address1 { O 8 vector } buff_out_11_V_ce1 { O 1 bit } buff_out_11_V_we1 { O 1 bit } buff_out_11_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_11_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 605 \
    name buff_out_12_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_12_V \
    op interface \
    ports { buff_out_12_V_address0 { O 8 vector } buff_out_12_V_ce0 { O 1 bit } buff_out_12_V_we0 { O 1 bit } buff_out_12_V_d0 { O 16 vector } buff_out_12_V_q0 { I 16 vector } buff_out_12_V_address1 { O 8 vector } buff_out_12_V_ce1 { O 1 bit } buff_out_12_V_we1 { O 1 bit } buff_out_12_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_12_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 606 \
    name buff_out_13_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_13_V \
    op interface \
    ports { buff_out_13_V_address0 { O 8 vector } buff_out_13_V_ce0 { O 1 bit } buff_out_13_V_we0 { O 1 bit } buff_out_13_V_d0 { O 16 vector } buff_out_13_V_q0 { I 16 vector } buff_out_13_V_address1 { O 8 vector } buff_out_13_V_ce1 { O 1 bit } buff_out_13_V_we1 { O 1 bit } buff_out_13_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_13_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 607 \
    name buff_out_14_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_14_V \
    op interface \
    ports { buff_out_14_V_address0 { O 8 vector } buff_out_14_V_ce0 { O 1 bit } buff_out_14_V_we0 { O 1 bit } buff_out_14_V_d0 { O 16 vector } buff_out_14_V_q0 { I 16 vector } buff_out_14_V_address1 { O 8 vector } buff_out_14_V_ce1 { O 1 bit } buff_out_14_V_we1 { O 1 bit } buff_out_14_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_14_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 608 \
    name buff_out_15_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_15_V \
    op interface \
    ports { buff_out_15_V_address0 { O 8 vector } buff_out_15_V_ce0 { O 1 bit } buff_out_15_V_we0 { O 1 bit } buff_out_15_V_d0 { O 16 vector } buff_out_15_V_q0 { I 16 vector } buff_out_15_V_address1 { O 8 vector } buff_out_15_V_ce1 { O 1 bit } buff_out_15_V_we1 { O 1 bit } buff_out_15_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_15_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 609 \
    name bias_buff_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V \
    op interface \
    ports { bias_buff_V_address0 { O 6 vector } bias_buff_V_ce0 { O 1 bit } bias_buff_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 610 \
    name bias_buff_V16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V16 \
    op interface \
    ports { bias_buff_V16_address0 { O 6 vector } bias_buff_V16_ce0 { O 1 bit } bias_buff_V16_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 611 \
    name bias_buff_V17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V17 \
    op interface \
    ports { bias_buff_V17_address0 { O 6 vector } bias_buff_V17_ce0 { O 1 bit } bias_buff_V17_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 612 \
    name bias_buff_V18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V18 \
    op interface \
    ports { bias_buff_V18_address0 { O 6 vector } bias_buff_V18_ce0 { O 1 bit } bias_buff_V18_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 613 \
    name bias_buff_V19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V19 \
    op interface \
    ports { bias_buff_V19_address0 { O 6 vector } bias_buff_V19_ce0 { O 1 bit } bias_buff_V19_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 614 \
    name bias_buff_V20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V20 \
    op interface \
    ports { bias_buff_V20_address0 { O 6 vector } bias_buff_V20_ce0 { O 1 bit } bias_buff_V20_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 615 \
    name bias_buff_V21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V21 \
    op interface \
    ports { bias_buff_V21_address0 { O 6 vector } bias_buff_V21_ce0 { O 1 bit } bias_buff_V21_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 616 \
    name bias_buff_V22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V22 \
    op interface \
    ports { bias_buff_V22_address0 { O 6 vector } bias_buff_V22_ce0 { O 1 bit } bias_buff_V22_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 617 \
    name bias_buff_V23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V23 \
    op interface \
    ports { bias_buff_V23_address0 { O 6 vector } bias_buff_V23_ce0 { O 1 bit } bias_buff_V23_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 618 \
    name bias_buff_V24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V24 \
    op interface \
    ports { bias_buff_V24_address0 { O 6 vector } bias_buff_V24_ce0 { O 1 bit } bias_buff_V24_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 619 \
    name bias_buff_V25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V25 \
    op interface \
    ports { bias_buff_V25_address0 { O 6 vector } bias_buff_V25_ce0 { O 1 bit } bias_buff_V25_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 620 \
    name bias_buff_V26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V26 \
    op interface \
    ports { bias_buff_V26_address0 { O 6 vector } bias_buff_V26_ce0 { O 1 bit } bias_buff_V26_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 621 \
    name bias_buff_V27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V27 \
    op interface \
    ports { bias_buff_V27_address0 { O 6 vector } bias_buff_V27_ce0 { O 1 bit } bias_buff_V27_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 622 \
    name bias_buff_V28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V28 \
    op interface \
    ports { bias_buff_V28_address0 { O 6 vector } bias_buff_V28_ce0 { O 1 bit } bias_buff_V28_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 623 \
    name bias_buff_V29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V29 \
    op interface \
    ports { bias_buff_V29_address0 { O 6 vector } bias_buff_V29_ce0 { O 1 bit } bias_buff_V29_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 624 \
    name bias_buff_V30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_buff_V30 \
    op interface \
    ports { bias_buff_V30_address0 { O 6 vector } bias_buff_V30_ce0 { O 1 bit } bias_buff_V30_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_buff_V30'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name in_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_V \
    op interface \
    ports { m_axi_in_V_AWVALID { O 1 bit } m_axi_in_V_AWREADY { I 1 bit } m_axi_in_V_AWADDR { O 32 vector } m_axi_in_V_AWID { O 1 vector } m_axi_in_V_AWLEN { O 32 vector } m_axi_in_V_AWSIZE { O 3 vector } m_axi_in_V_AWBURST { O 2 vector } m_axi_in_V_AWLOCK { O 2 vector } m_axi_in_V_AWCACHE { O 4 vector } m_axi_in_V_AWPROT { O 3 vector } m_axi_in_V_AWQOS { O 4 vector } m_axi_in_V_AWREGION { O 4 vector } m_axi_in_V_AWUSER { O 1 vector } m_axi_in_V_WVALID { O 1 bit } m_axi_in_V_WREADY { I 1 bit } m_axi_in_V_WDATA { O 16 vector } m_axi_in_V_WSTRB { O 2 vector } m_axi_in_V_WLAST { O 1 bit } m_axi_in_V_WID { O 1 vector } m_axi_in_V_WUSER { O 1 vector } m_axi_in_V_ARVALID { O 1 bit } m_axi_in_V_ARREADY { I 1 bit } m_axi_in_V_ARADDR { O 32 vector } m_axi_in_V_ARID { O 1 vector } m_axi_in_V_ARLEN { O 32 vector } m_axi_in_V_ARSIZE { O 3 vector } m_axi_in_V_ARBURST { O 2 vector } m_axi_in_V_ARLOCK { O 2 vector } m_axi_in_V_ARCACHE { O 4 vector } m_axi_in_V_ARPROT { O 3 vector } m_axi_in_V_ARQOS { O 4 vector } m_axi_in_V_ARREGION { O 4 vector } m_axi_in_V_ARUSER { O 1 vector } m_axi_in_V_RVALID { I 1 bit } m_axi_in_V_RREADY { O 1 bit } m_axi_in_V_RDATA { I 16 vector } m_axi_in_V_RLAST { I 1 bit } m_axi_in_V_RID { I 1 vector } m_axi_in_V_RUSER { I 1 vector } m_axi_in_V_RRESP { I 2 vector } m_axi_in_V_BVALID { I 1 bit } m_axi_in_V_BREADY { O 1 bit } m_axi_in_V_BRESP { I 2 vector } m_axi_in_V_BID { I 1 vector } m_axi_in_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name in_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_V_offset \
    op interface \
    ports { in_V_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name weight_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_V \
    op interface \
    ports { m_axi_weight_V_AWVALID { O 1 bit } m_axi_weight_V_AWREADY { I 1 bit } m_axi_weight_V_AWADDR { O 32 vector } m_axi_weight_V_AWID { O 1 vector } m_axi_weight_V_AWLEN { O 32 vector } m_axi_weight_V_AWSIZE { O 3 vector } m_axi_weight_V_AWBURST { O 2 vector } m_axi_weight_V_AWLOCK { O 2 vector } m_axi_weight_V_AWCACHE { O 4 vector } m_axi_weight_V_AWPROT { O 3 vector } m_axi_weight_V_AWQOS { O 4 vector } m_axi_weight_V_AWREGION { O 4 vector } m_axi_weight_V_AWUSER { O 1 vector } m_axi_weight_V_WVALID { O 1 bit } m_axi_weight_V_WREADY { I 1 bit } m_axi_weight_V_WDATA { O 16 vector } m_axi_weight_V_WSTRB { O 2 vector } m_axi_weight_V_WLAST { O 1 bit } m_axi_weight_V_WID { O 1 vector } m_axi_weight_V_WUSER { O 1 vector } m_axi_weight_V_ARVALID { O 1 bit } m_axi_weight_V_ARREADY { I 1 bit } m_axi_weight_V_ARADDR { O 32 vector } m_axi_weight_V_ARID { O 1 vector } m_axi_weight_V_ARLEN { O 32 vector } m_axi_weight_V_ARSIZE { O 3 vector } m_axi_weight_V_ARBURST { O 2 vector } m_axi_weight_V_ARLOCK { O 2 vector } m_axi_weight_V_ARCACHE { O 4 vector } m_axi_weight_V_ARPROT { O 3 vector } m_axi_weight_V_ARQOS { O 4 vector } m_axi_weight_V_ARREGION { O 4 vector } m_axi_weight_V_ARUSER { O 1 vector } m_axi_weight_V_RVALID { I 1 bit } m_axi_weight_V_RREADY { O 1 bit } m_axi_weight_V_RDATA { I 16 vector } m_axi_weight_V_RLAST { I 1 bit } m_axi_weight_V_RID { I 1 vector } m_axi_weight_V_RUSER { I 1 vector } m_axi_weight_V_RRESP { I 2 vector } m_axi_weight_V_BVALID { I 1 bit } m_axi_weight_V_BREADY { O 1 bit } m_axi_weight_V_BRESP { I 2 vector } m_axi_weight_V_BID { I 1 vector } m_axi_weight_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name weight_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_V_offset \
    op interface \
    ports { weight_V_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name bias_buff_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_V_offset \
    op interface \
    ports { bias_buff_V_offset { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name ch_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ch_in \
    op interface \
    ports { ch_in { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name m \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m \
    op interface \
    ports { m { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name p \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p \
    op interface \
    ports { p { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size \
    op interface \
    ports { size { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


