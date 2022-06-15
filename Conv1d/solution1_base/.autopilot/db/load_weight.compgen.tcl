# This script segment is generated automatically by AutoPilot

set id 47
set name conv1d_urem_8ns_3dEe
set corename simcore_urem
set op urem
set stage_num 12
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 0
set in1_width 3
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 8
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
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
    id 50 \
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
    id 51 \
    name wt_buff_0_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_0_0_V_r \
    op interface \
    ports { wt_buff_0_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name wt_buff_0_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_0_1_V_r \
    op interface \
    ports { wt_buff_0_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name wt_buff_0_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_0_2_V_r \
    op interface \
    ports { wt_buff_0_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name wt_buff_0_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_1_0_V_r \
    op interface \
    ports { wt_buff_0_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name wt_buff_0_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_1_1_V_r \
    op interface \
    ports { wt_buff_0_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name wt_buff_0_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_1_2_V_r \
    op interface \
    ports { wt_buff_0_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name wt_buff_0_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_2_0_V_r \
    op interface \
    ports { wt_buff_0_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name wt_buff_0_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_2_1_V_r \
    op interface \
    ports { wt_buff_0_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name wt_buff_0_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_2_2_V_r \
    op interface \
    ports { wt_buff_0_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name wt_buff_0_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_3_0_V_r \
    op interface \
    ports { wt_buff_0_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name wt_buff_0_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_3_1_V_r \
    op interface \
    ports { wt_buff_0_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name wt_buff_0_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_0_3_2_V_r \
    op interface \
    ports { wt_buff_0_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name wt_buff_1_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_0_0_V_r \
    op interface \
    ports { wt_buff_1_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name wt_buff_1_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_0_1_V_r \
    op interface \
    ports { wt_buff_1_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name wt_buff_1_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_0_2_V_r \
    op interface \
    ports { wt_buff_1_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name wt_buff_1_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_1_0_V_r \
    op interface \
    ports { wt_buff_1_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name wt_buff_1_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_1_1_V_r \
    op interface \
    ports { wt_buff_1_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name wt_buff_1_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_1_2_V_r \
    op interface \
    ports { wt_buff_1_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name wt_buff_1_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_2_0_V_r \
    op interface \
    ports { wt_buff_1_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name wt_buff_1_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_2_1_V_r \
    op interface \
    ports { wt_buff_1_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name wt_buff_1_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_2_2_V_r \
    op interface \
    ports { wt_buff_1_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name wt_buff_1_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_3_0_V_r \
    op interface \
    ports { wt_buff_1_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name wt_buff_1_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_3_1_V_r \
    op interface \
    ports { wt_buff_1_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name wt_buff_1_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_1_3_2_V_r \
    op interface \
    ports { wt_buff_1_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name wt_buff_2_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_0_0_V_r \
    op interface \
    ports { wt_buff_2_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name wt_buff_2_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_0_1_V_r \
    op interface \
    ports { wt_buff_2_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name wt_buff_2_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_0_2_V_r \
    op interface \
    ports { wt_buff_2_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name wt_buff_2_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_1_0_V_r \
    op interface \
    ports { wt_buff_2_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name wt_buff_2_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_1_1_V_r \
    op interface \
    ports { wt_buff_2_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name wt_buff_2_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_1_2_V_r \
    op interface \
    ports { wt_buff_2_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name wt_buff_2_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_2_0_V_r \
    op interface \
    ports { wt_buff_2_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name wt_buff_2_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_2_1_V_r \
    op interface \
    ports { wt_buff_2_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name wt_buff_2_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_2_2_V_r \
    op interface \
    ports { wt_buff_2_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name wt_buff_2_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_3_0_V_r \
    op interface \
    ports { wt_buff_2_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name wt_buff_2_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_3_1_V_r \
    op interface \
    ports { wt_buff_2_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name wt_buff_2_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_2_3_2_V_r \
    op interface \
    ports { wt_buff_2_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name wt_buff_3_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_0_0_V_r \
    op interface \
    ports { wt_buff_3_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name wt_buff_3_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_0_1_V_r \
    op interface \
    ports { wt_buff_3_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name wt_buff_3_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_0_2_V_r \
    op interface \
    ports { wt_buff_3_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name wt_buff_3_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_1_0_V_r \
    op interface \
    ports { wt_buff_3_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name wt_buff_3_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_1_1_V_r \
    op interface \
    ports { wt_buff_3_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name wt_buff_3_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_1_2_V_r \
    op interface \
    ports { wt_buff_3_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name wt_buff_3_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_2_0_V_r \
    op interface \
    ports { wt_buff_3_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name wt_buff_3_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_2_1_V_r \
    op interface \
    ports { wt_buff_3_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name wt_buff_3_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_2_2_V_r \
    op interface \
    ports { wt_buff_3_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name wt_buff_3_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_3_0_V_r \
    op interface \
    ports { wt_buff_3_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name wt_buff_3_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_3_1_V_r \
    op interface \
    ports { wt_buff_3_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name wt_buff_3_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_3_3_2_V_r \
    op interface \
    ports { wt_buff_3_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name wt_buff_4_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_0_0_V_r \
    op interface \
    ports { wt_buff_4_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name wt_buff_4_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_0_1_V_r \
    op interface \
    ports { wt_buff_4_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name wt_buff_4_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_0_2_V_r \
    op interface \
    ports { wt_buff_4_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name wt_buff_4_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_1_0_V_r \
    op interface \
    ports { wt_buff_4_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name wt_buff_4_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_1_1_V_r \
    op interface \
    ports { wt_buff_4_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name wt_buff_4_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_1_2_V_r \
    op interface \
    ports { wt_buff_4_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name wt_buff_4_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_2_0_V_r \
    op interface \
    ports { wt_buff_4_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name wt_buff_4_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_2_1_V_r \
    op interface \
    ports { wt_buff_4_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name wt_buff_4_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_2_2_V_r \
    op interface \
    ports { wt_buff_4_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name wt_buff_4_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_3_0_V_r \
    op interface \
    ports { wt_buff_4_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name wt_buff_4_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_3_1_V_r \
    op interface \
    ports { wt_buff_4_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name wt_buff_4_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_4_3_2_V_r \
    op interface \
    ports { wt_buff_4_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name wt_buff_5_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_0_0_V_r \
    op interface \
    ports { wt_buff_5_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name wt_buff_5_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_0_1_V_r \
    op interface \
    ports { wt_buff_5_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name wt_buff_5_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_0_2_V_r \
    op interface \
    ports { wt_buff_5_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name wt_buff_5_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_1_0_V_r \
    op interface \
    ports { wt_buff_5_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name wt_buff_5_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_1_1_V_r \
    op interface \
    ports { wt_buff_5_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name wt_buff_5_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_1_2_V_r \
    op interface \
    ports { wt_buff_5_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name wt_buff_5_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_2_0_V_r \
    op interface \
    ports { wt_buff_5_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name wt_buff_5_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_2_1_V_r \
    op interface \
    ports { wt_buff_5_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name wt_buff_5_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_2_2_V_r \
    op interface \
    ports { wt_buff_5_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name wt_buff_5_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_3_0_V_r \
    op interface \
    ports { wt_buff_5_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name wt_buff_5_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_3_1_V_r \
    op interface \
    ports { wt_buff_5_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name wt_buff_5_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_5_3_2_V_r \
    op interface \
    ports { wt_buff_5_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name wt_buff_6_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_0_0_V_r \
    op interface \
    ports { wt_buff_6_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name wt_buff_6_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_0_1_V_r \
    op interface \
    ports { wt_buff_6_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name wt_buff_6_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_0_2_V_r \
    op interface \
    ports { wt_buff_6_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name wt_buff_6_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_1_0_V_r \
    op interface \
    ports { wt_buff_6_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name wt_buff_6_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_1_1_V_r \
    op interface \
    ports { wt_buff_6_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name wt_buff_6_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_1_2_V_r \
    op interface \
    ports { wt_buff_6_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name wt_buff_6_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_2_0_V_r \
    op interface \
    ports { wt_buff_6_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name wt_buff_6_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_2_1_V_r \
    op interface \
    ports { wt_buff_6_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name wt_buff_6_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_2_2_V_r \
    op interface \
    ports { wt_buff_6_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name wt_buff_6_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_3_0_V_r \
    op interface \
    ports { wt_buff_6_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name wt_buff_6_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_3_1_V_r \
    op interface \
    ports { wt_buff_6_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name wt_buff_6_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_6_3_2_V_r \
    op interface \
    ports { wt_buff_6_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name wt_buff_7_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_0_0_V_r \
    op interface \
    ports { wt_buff_7_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name wt_buff_7_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_0_1_V_r \
    op interface \
    ports { wt_buff_7_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name wt_buff_7_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_0_2_V_r \
    op interface \
    ports { wt_buff_7_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name wt_buff_7_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_1_0_V_r \
    op interface \
    ports { wt_buff_7_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name wt_buff_7_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_1_1_V_r \
    op interface \
    ports { wt_buff_7_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name wt_buff_7_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_1_2_V_r \
    op interface \
    ports { wt_buff_7_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name wt_buff_7_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_2_0_V_r \
    op interface \
    ports { wt_buff_7_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name wt_buff_7_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_2_1_V_r \
    op interface \
    ports { wt_buff_7_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name wt_buff_7_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_2_2_V_r \
    op interface \
    ports { wt_buff_7_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name wt_buff_7_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_3_0_V_r \
    op interface \
    ports { wt_buff_7_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name wt_buff_7_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_3_1_V_r \
    op interface \
    ports { wt_buff_7_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name wt_buff_7_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_7_3_2_V_r \
    op interface \
    ports { wt_buff_7_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name wt_buff_8_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_0_0_V_r \
    op interface \
    ports { wt_buff_8_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name wt_buff_8_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_0_1_V_r \
    op interface \
    ports { wt_buff_8_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name wt_buff_8_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_0_2_V_r \
    op interface \
    ports { wt_buff_8_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name wt_buff_8_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_1_0_V_r \
    op interface \
    ports { wt_buff_8_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name wt_buff_8_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_1_1_V_r \
    op interface \
    ports { wt_buff_8_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name wt_buff_8_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_1_2_V_r \
    op interface \
    ports { wt_buff_8_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name wt_buff_8_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_2_0_V_r \
    op interface \
    ports { wt_buff_8_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name wt_buff_8_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_2_1_V_r \
    op interface \
    ports { wt_buff_8_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name wt_buff_8_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_2_2_V_r \
    op interface \
    ports { wt_buff_8_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name wt_buff_8_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_3_0_V_r \
    op interface \
    ports { wt_buff_8_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name wt_buff_8_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_3_1_V_r \
    op interface \
    ports { wt_buff_8_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name wt_buff_8_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_8_3_2_V_r \
    op interface \
    ports { wt_buff_8_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name wt_buff_9_0_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_0_0_V_r \
    op interface \
    ports { wt_buff_9_0_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name wt_buff_9_0_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_0_1_V_r \
    op interface \
    ports { wt_buff_9_0_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name wt_buff_9_0_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_0_2_V_r \
    op interface \
    ports { wt_buff_9_0_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name wt_buff_9_1_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_1_0_V_r \
    op interface \
    ports { wt_buff_9_1_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name wt_buff_9_1_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_1_1_V_r \
    op interface \
    ports { wt_buff_9_1_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name wt_buff_9_1_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_1_2_V_r \
    op interface \
    ports { wt_buff_9_1_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name wt_buff_9_2_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_2_0_V_r \
    op interface \
    ports { wt_buff_9_2_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name wt_buff_9_2_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_2_1_V_r \
    op interface \
    ports { wt_buff_9_2_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name wt_buff_9_2_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_2_2_V_r \
    op interface \
    ports { wt_buff_9_2_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name wt_buff_9_3_0_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_3_0_V_r \
    op interface \
    ports { wt_buff_9_3_0_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name wt_buff_9_3_1_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_3_1_V_r \
    op interface \
    ports { wt_buff_9_3_1_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name wt_buff_9_3_2_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_9_3_2_V_r \
    op interface \
    ports { wt_buff_9_3_2_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name wt_buff_10_0_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_0_0_V_s \
    op interface \
    ports { wt_buff_10_0_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name wt_buff_10_0_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_0_1_V_s \
    op interface \
    ports { wt_buff_10_0_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name wt_buff_10_0_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_0_2_V_s \
    op interface \
    ports { wt_buff_10_0_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name wt_buff_10_1_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_1_0_V_s \
    op interface \
    ports { wt_buff_10_1_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name wt_buff_10_1_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_1_1_V_s \
    op interface \
    ports { wt_buff_10_1_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name wt_buff_10_1_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_1_2_V_s \
    op interface \
    ports { wt_buff_10_1_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name wt_buff_10_2_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_2_0_V_s \
    op interface \
    ports { wt_buff_10_2_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name wt_buff_10_2_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_2_1_V_s \
    op interface \
    ports { wt_buff_10_2_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name wt_buff_10_2_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_2_2_V_s \
    op interface \
    ports { wt_buff_10_2_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name wt_buff_10_3_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_3_0_V_s \
    op interface \
    ports { wt_buff_10_3_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name wt_buff_10_3_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_3_1_V_s \
    op interface \
    ports { wt_buff_10_3_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name wt_buff_10_3_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_10_3_2_V_s \
    op interface \
    ports { wt_buff_10_3_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name wt_buff_11_0_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_0_0_V_s \
    op interface \
    ports { wt_buff_11_0_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name wt_buff_11_0_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_0_1_V_s \
    op interface \
    ports { wt_buff_11_0_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name wt_buff_11_0_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_0_2_V_s \
    op interface \
    ports { wt_buff_11_0_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name wt_buff_11_1_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_1_0_V_s \
    op interface \
    ports { wt_buff_11_1_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name wt_buff_11_1_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_1_1_V_s \
    op interface \
    ports { wt_buff_11_1_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name wt_buff_11_1_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_1_2_V_s \
    op interface \
    ports { wt_buff_11_1_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name wt_buff_11_2_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_2_0_V_s \
    op interface \
    ports { wt_buff_11_2_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name wt_buff_11_2_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_2_1_V_s \
    op interface \
    ports { wt_buff_11_2_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name wt_buff_11_2_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_2_2_V_s \
    op interface \
    ports { wt_buff_11_2_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name wt_buff_11_3_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_3_0_V_s \
    op interface \
    ports { wt_buff_11_3_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name wt_buff_11_3_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_3_1_V_s \
    op interface \
    ports { wt_buff_11_3_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name wt_buff_11_3_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_11_3_2_V_s \
    op interface \
    ports { wt_buff_11_3_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name wt_buff_12_0_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_0_0_V_s \
    op interface \
    ports { wt_buff_12_0_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name wt_buff_12_0_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_0_1_V_s \
    op interface \
    ports { wt_buff_12_0_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name wt_buff_12_0_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_0_2_V_s \
    op interface \
    ports { wt_buff_12_0_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name wt_buff_12_1_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_1_0_V_s \
    op interface \
    ports { wt_buff_12_1_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name wt_buff_12_1_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_1_1_V_s \
    op interface \
    ports { wt_buff_12_1_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name wt_buff_12_1_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_1_2_V_s \
    op interface \
    ports { wt_buff_12_1_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name wt_buff_12_2_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_2_0_V_s \
    op interface \
    ports { wt_buff_12_2_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name wt_buff_12_2_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_2_1_V_s \
    op interface \
    ports { wt_buff_12_2_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name wt_buff_12_2_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_2_2_V_s \
    op interface \
    ports { wt_buff_12_2_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name wt_buff_12_3_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_3_0_V_s \
    op interface \
    ports { wt_buff_12_3_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name wt_buff_12_3_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_3_1_V_s \
    op interface \
    ports { wt_buff_12_3_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name wt_buff_12_3_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_12_3_2_V_s \
    op interface \
    ports { wt_buff_12_3_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name wt_buff_13_0_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_0_0_V_s \
    op interface \
    ports { wt_buff_13_0_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name wt_buff_13_0_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_0_1_V_s \
    op interface \
    ports { wt_buff_13_0_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name wt_buff_13_0_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_0_2_V_s \
    op interface \
    ports { wt_buff_13_0_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name wt_buff_13_1_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_1_0_V_s \
    op interface \
    ports { wt_buff_13_1_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name wt_buff_13_1_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_1_1_V_s \
    op interface \
    ports { wt_buff_13_1_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name wt_buff_13_1_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_1_2_V_s \
    op interface \
    ports { wt_buff_13_1_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name wt_buff_13_2_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_2_0_V_s \
    op interface \
    ports { wt_buff_13_2_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name wt_buff_13_2_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_2_1_V_s \
    op interface \
    ports { wt_buff_13_2_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name wt_buff_13_2_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_2_2_V_s \
    op interface \
    ports { wt_buff_13_2_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name wt_buff_13_3_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_3_0_V_s \
    op interface \
    ports { wt_buff_13_3_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name wt_buff_13_3_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_3_1_V_s \
    op interface \
    ports { wt_buff_13_3_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name wt_buff_13_3_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_13_3_2_V_s \
    op interface \
    ports { wt_buff_13_3_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name wt_buff_14_0_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_0_0_V_s \
    op interface \
    ports { wt_buff_14_0_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name wt_buff_14_0_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_0_1_V_s \
    op interface \
    ports { wt_buff_14_0_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name wt_buff_14_0_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_0_2_V_s \
    op interface \
    ports { wt_buff_14_0_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name wt_buff_14_1_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_1_0_V_s \
    op interface \
    ports { wt_buff_14_1_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name wt_buff_14_1_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_1_1_V_s \
    op interface \
    ports { wt_buff_14_1_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name wt_buff_14_1_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_1_2_V_s \
    op interface \
    ports { wt_buff_14_1_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name wt_buff_14_2_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_2_0_V_s \
    op interface \
    ports { wt_buff_14_2_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name wt_buff_14_2_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_2_1_V_s \
    op interface \
    ports { wt_buff_14_2_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name wt_buff_14_2_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_2_2_V_s \
    op interface \
    ports { wt_buff_14_2_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name wt_buff_14_3_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_3_0_V_s \
    op interface \
    ports { wt_buff_14_3_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name wt_buff_14_3_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_3_1_V_s \
    op interface \
    ports { wt_buff_14_3_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name wt_buff_14_3_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_14_3_2_V_s \
    op interface \
    ports { wt_buff_14_3_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name wt_buff_15_0_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_0_0_V_s \
    op interface \
    ports { wt_buff_15_0_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name wt_buff_15_0_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_0_1_V_s \
    op interface \
    ports { wt_buff_15_0_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name wt_buff_15_0_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_0_2_V_s \
    op interface \
    ports { wt_buff_15_0_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name wt_buff_15_1_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_1_0_V_s \
    op interface \
    ports { wt_buff_15_1_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name wt_buff_15_1_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_1_1_V_s \
    op interface \
    ports { wt_buff_15_1_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name wt_buff_15_1_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_1_2_V_s \
    op interface \
    ports { wt_buff_15_1_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name wt_buff_15_2_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_2_0_V_s \
    op interface \
    ports { wt_buff_15_2_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name wt_buff_15_2_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_2_1_V_s \
    op interface \
    ports { wt_buff_15_2_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name wt_buff_15_2_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_2_2_V_s \
    op interface \
    ports { wt_buff_15_2_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name wt_buff_15_3_0_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_3_0_V_s \
    op interface \
    ports { wt_buff_15_3_0_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name wt_buff_15_3_1_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_3_1_V_s \
    op interface \
    ports { wt_buff_15_3_1_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name wt_buff_15_3_2_V_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wt_buff_15_3_2_V_s \
    op interface \
    ports { wt_buff_15_3_2_V_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name n \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n \
    op interface \
    ports { n { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
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
    id 245 \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


