# This script segment is generated automatically by AutoPilot

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
    id 635 \
    name buff_out_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_0_V \
    op interface \
    ports { buff_out_0_V_address0 { O 8 vector } buff_out_0_V_ce0 { O 1 bit } buff_out_0_V_q0 { I 16 vector } buff_out_0_V_address1 { O 8 vector } buff_out_0_V_ce1 { O 1 bit } buff_out_0_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 636 \
    name buff_out_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_1_V \
    op interface \
    ports { buff_out_1_V_address0 { O 8 vector } buff_out_1_V_ce0 { O 1 bit } buff_out_1_V_q0 { I 16 vector } buff_out_1_V_address1 { O 8 vector } buff_out_1_V_ce1 { O 1 bit } buff_out_1_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 637 \
    name buff_out_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_2_V \
    op interface \
    ports { buff_out_2_V_address0 { O 8 vector } buff_out_2_V_ce0 { O 1 bit } buff_out_2_V_q0 { I 16 vector } buff_out_2_V_address1 { O 8 vector } buff_out_2_V_ce1 { O 1 bit } buff_out_2_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 638 \
    name buff_out_3_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_3_V \
    op interface \
    ports { buff_out_3_V_address0 { O 8 vector } buff_out_3_V_ce0 { O 1 bit } buff_out_3_V_q0 { I 16 vector } buff_out_3_V_address1 { O 8 vector } buff_out_3_V_ce1 { O 1 bit } buff_out_3_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 639 \
    name buff_out_4_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_4_V \
    op interface \
    ports { buff_out_4_V_address0 { O 8 vector } buff_out_4_V_ce0 { O 1 bit } buff_out_4_V_q0 { I 16 vector } buff_out_4_V_address1 { O 8 vector } buff_out_4_V_ce1 { O 1 bit } buff_out_4_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 640 \
    name buff_out_5_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_5_V \
    op interface \
    ports { buff_out_5_V_address0 { O 8 vector } buff_out_5_V_ce0 { O 1 bit } buff_out_5_V_q0 { I 16 vector } buff_out_5_V_address1 { O 8 vector } buff_out_5_V_ce1 { O 1 bit } buff_out_5_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 641 \
    name buff_out_6_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_6_V \
    op interface \
    ports { buff_out_6_V_address0 { O 8 vector } buff_out_6_V_ce0 { O 1 bit } buff_out_6_V_q0 { I 16 vector } buff_out_6_V_address1 { O 8 vector } buff_out_6_V_ce1 { O 1 bit } buff_out_6_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 642 \
    name buff_out_7_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_7_V \
    op interface \
    ports { buff_out_7_V_address0 { O 8 vector } buff_out_7_V_ce0 { O 1 bit } buff_out_7_V_q0 { I 16 vector } buff_out_7_V_address1 { O 8 vector } buff_out_7_V_ce1 { O 1 bit } buff_out_7_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_7_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 643 \
    name buff_out_8_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_8_V \
    op interface \
    ports { buff_out_8_V_address0 { O 8 vector } buff_out_8_V_ce0 { O 1 bit } buff_out_8_V_q0 { I 16 vector } buff_out_8_V_address1 { O 8 vector } buff_out_8_V_ce1 { O 1 bit } buff_out_8_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_8_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 644 \
    name buff_out_9_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_9_V \
    op interface \
    ports { buff_out_9_V_address0 { O 8 vector } buff_out_9_V_ce0 { O 1 bit } buff_out_9_V_q0 { I 16 vector } buff_out_9_V_address1 { O 8 vector } buff_out_9_V_ce1 { O 1 bit } buff_out_9_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_9_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 645 \
    name buff_out_10_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_10_V \
    op interface \
    ports { buff_out_10_V_address0 { O 8 vector } buff_out_10_V_ce0 { O 1 bit } buff_out_10_V_q0 { I 16 vector } buff_out_10_V_address1 { O 8 vector } buff_out_10_V_ce1 { O 1 bit } buff_out_10_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_10_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 646 \
    name buff_out_11_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_11_V \
    op interface \
    ports { buff_out_11_V_address0 { O 8 vector } buff_out_11_V_ce0 { O 1 bit } buff_out_11_V_q0 { I 16 vector } buff_out_11_V_address1 { O 8 vector } buff_out_11_V_ce1 { O 1 bit } buff_out_11_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_11_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 647 \
    name buff_out_12_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_12_V \
    op interface \
    ports { buff_out_12_V_address0 { O 8 vector } buff_out_12_V_ce0 { O 1 bit } buff_out_12_V_q0 { I 16 vector } buff_out_12_V_address1 { O 8 vector } buff_out_12_V_ce1 { O 1 bit } buff_out_12_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_12_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 648 \
    name buff_out_13_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_13_V \
    op interface \
    ports { buff_out_13_V_address0 { O 8 vector } buff_out_13_V_ce0 { O 1 bit } buff_out_13_V_q0 { I 16 vector } buff_out_13_V_address1 { O 8 vector } buff_out_13_V_ce1 { O 1 bit } buff_out_13_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_13_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 649 \
    name buff_out_14_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_14_V \
    op interface \
    ports { buff_out_14_V_address0 { O 8 vector } buff_out_14_V_ce0 { O 1 bit } buff_out_14_V_q0 { I 16 vector } buff_out_14_V_address1 { O 8 vector } buff_out_14_V_ce1 { O 1 bit } buff_out_14_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_14_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 650 \
    name buff_out_15_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_out_15_V \
    op interface \
    ports { buff_out_15_V_address0 { O 8 vector } buff_out_15_V_ce0 { O 1 bit } buff_out_15_V_q0 { I 16 vector } buff_out_15_V_address1 { O 8 vector } buff_out_15_V_ce1 { O 1 bit } buff_out_15_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_15_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name out_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_V \
    op interface \
    ports { m_axi_out_V_AWVALID { O 1 bit } m_axi_out_V_AWREADY { I 1 bit } m_axi_out_V_AWADDR { O 32 vector } m_axi_out_V_AWID { O 1 vector } m_axi_out_V_AWLEN { O 32 vector } m_axi_out_V_AWSIZE { O 3 vector } m_axi_out_V_AWBURST { O 2 vector } m_axi_out_V_AWLOCK { O 2 vector } m_axi_out_V_AWCACHE { O 4 vector } m_axi_out_V_AWPROT { O 3 vector } m_axi_out_V_AWQOS { O 4 vector } m_axi_out_V_AWREGION { O 4 vector } m_axi_out_V_AWUSER { O 1 vector } m_axi_out_V_WVALID { O 1 bit } m_axi_out_V_WREADY { I 1 bit } m_axi_out_V_WDATA { O 16 vector } m_axi_out_V_WSTRB { O 2 vector } m_axi_out_V_WLAST { O 1 bit } m_axi_out_V_WID { O 1 vector } m_axi_out_V_WUSER { O 1 vector } m_axi_out_V_ARVALID { O 1 bit } m_axi_out_V_ARREADY { I 1 bit } m_axi_out_V_ARADDR { O 32 vector } m_axi_out_V_ARID { O 1 vector } m_axi_out_V_ARLEN { O 32 vector } m_axi_out_V_ARSIZE { O 3 vector } m_axi_out_V_ARBURST { O 2 vector } m_axi_out_V_ARLOCK { O 2 vector } m_axi_out_V_ARCACHE { O 4 vector } m_axi_out_V_ARPROT { O 3 vector } m_axi_out_V_ARQOS { O 4 vector } m_axi_out_V_ARREGION { O 4 vector } m_axi_out_V_ARUSER { O 1 vector } m_axi_out_V_RVALID { I 1 bit } m_axi_out_V_RREADY { O 1 bit } m_axi_out_V_RDATA { I 16 vector } m_axi_out_V_RLAST { I 1 bit } m_axi_out_V_RID { I 1 vector } m_axi_out_V_RUSER { I 1 vector } m_axi_out_V_RRESP { I 2 vector } m_axi_out_V_BVALID { I 1 bit } m_axi_out_V_BREADY { O 1 bit } m_axi_out_V_BRESP { I 2 vector } m_axi_out_V_BID { I 1 vector } m_axi_out_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name out_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_V_offset \
    op interface \
    ports { out_V_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 651 \
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
    id 652 \
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
    id 653 \
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
    id 654 \
    name ch_out \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ch_out \
    op interface \
    ports { ch_out { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
    name pool \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pool \
    op interface \
    ports { pool { I 32 vector } } \
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


