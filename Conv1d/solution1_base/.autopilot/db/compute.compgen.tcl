# This script segment is generated automatically by AutoPilot

set id 246
set name conv1d_mux_32_16_eOg
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 16
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 310
set name conv1d_mul_mul_16fYi
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set out_width 32
set exp i0*i1
set arg_lists {i0 {16 1 +} i1 {16 1 +} p {32 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
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
    id 376 \
    name buff_in_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_in_0_V \
    op interface \
    ports { buff_in_0_V_address0 { O 8 vector } buff_in_0_V_ce0 { O 1 bit } buff_in_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_in_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 377 \
    name buff_in_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_in_1_V \
    op interface \
    ports { buff_in_1_V_address0 { O 8 vector } buff_in_1_V_ce0 { O 1 bit } buff_in_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_in_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 378 \
    name buff_in_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_in_2_V \
    op interface \
    ports { buff_in_2_V_address0 { O 8 vector } buff_in_2_V_ce0 { O 1 bit } buff_in_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_in_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 379 \
    name buff_in_3_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_in_3_V \
    op interface \
    ports { buff_in_3_V_address0 { O 8 vector } buff_in_3_V_ce0 { O 1 bit } buff_in_3_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_in_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 572 \
    name buff_out_0_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_0_V \
    op interface \
    ports { buff_out_0_V_address0 { O 8 vector } buff_out_0_V_ce0 { O 1 bit } buff_out_0_V_q0 { I 16 vector } buff_out_0_V_address1 { O 8 vector } buff_out_0_V_ce1 { O 1 bit } buff_out_0_V_we1 { O 1 bit } buff_out_0_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 573 \
    name buff_out_1_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_1_V \
    op interface \
    ports { buff_out_1_V_address0 { O 8 vector } buff_out_1_V_ce0 { O 1 bit } buff_out_1_V_q0 { I 16 vector } buff_out_1_V_address1 { O 8 vector } buff_out_1_V_ce1 { O 1 bit } buff_out_1_V_we1 { O 1 bit } buff_out_1_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 574 \
    name buff_out_2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_2_V \
    op interface \
    ports { buff_out_2_V_address0 { O 8 vector } buff_out_2_V_ce0 { O 1 bit } buff_out_2_V_q0 { I 16 vector } buff_out_2_V_address1 { O 8 vector } buff_out_2_V_ce1 { O 1 bit } buff_out_2_V_we1 { O 1 bit } buff_out_2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 575 \
    name buff_out_3_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_3_V \
    op interface \
    ports { buff_out_3_V_address0 { O 8 vector } buff_out_3_V_ce0 { O 1 bit } buff_out_3_V_q0 { I 16 vector } buff_out_3_V_address1 { O 8 vector } buff_out_3_V_ce1 { O 1 bit } buff_out_3_V_we1 { O 1 bit } buff_out_3_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 576 \
    name buff_out_4_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_4_V \
    op interface \
    ports { buff_out_4_V_address0 { O 8 vector } buff_out_4_V_ce0 { O 1 bit } buff_out_4_V_q0 { I 16 vector } buff_out_4_V_address1 { O 8 vector } buff_out_4_V_ce1 { O 1 bit } buff_out_4_V_we1 { O 1 bit } buff_out_4_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 577 \
    name buff_out_5_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_5_V \
    op interface \
    ports { buff_out_5_V_address0 { O 8 vector } buff_out_5_V_ce0 { O 1 bit } buff_out_5_V_q0 { I 16 vector } buff_out_5_V_address1 { O 8 vector } buff_out_5_V_ce1 { O 1 bit } buff_out_5_V_we1 { O 1 bit } buff_out_5_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 578 \
    name buff_out_6_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_6_V \
    op interface \
    ports { buff_out_6_V_address0 { O 8 vector } buff_out_6_V_ce0 { O 1 bit } buff_out_6_V_q0 { I 16 vector } buff_out_6_V_address1 { O 8 vector } buff_out_6_V_ce1 { O 1 bit } buff_out_6_V_we1 { O 1 bit } buff_out_6_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 579 \
    name buff_out_7_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_7_V \
    op interface \
    ports { buff_out_7_V_address0 { O 8 vector } buff_out_7_V_ce0 { O 1 bit } buff_out_7_V_q0 { I 16 vector } buff_out_7_V_address1 { O 8 vector } buff_out_7_V_ce1 { O 1 bit } buff_out_7_V_we1 { O 1 bit } buff_out_7_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_7_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 580 \
    name buff_out_8_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_8_V \
    op interface \
    ports { buff_out_8_V_address0 { O 8 vector } buff_out_8_V_ce0 { O 1 bit } buff_out_8_V_q0 { I 16 vector } buff_out_8_V_address1 { O 8 vector } buff_out_8_V_ce1 { O 1 bit } buff_out_8_V_we1 { O 1 bit } buff_out_8_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_8_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 581 \
    name buff_out_9_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_9_V \
    op interface \
    ports { buff_out_9_V_address0 { O 8 vector } buff_out_9_V_ce0 { O 1 bit } buff_out_9_V_q0 { I 16 vector } buff_out_9_V_address1 { O 8 vector } buff_out_9_V_ce1 { O 1 bit } buff_out_9_V_we1 { O 1 bit } buff_out_9_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_9_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 582 \
    name buff_out_10_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_10_V \
    op interface \
    ports { buff_out_10_V_address0 { O 8 vector } buff_out_10_V_ce0 { O 1 bit } buff_out_10_V_q0 { I 16 vector } buff_out_10_V_address1 { O 8 vector } buff_out_10_V_ce1 { O 1 bit } buff_out_10_V_we1 { O 1 bit } buff_out_10_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_10_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 583 \
    name buff_out_11_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_11_V \
    op interface \
    ports { buff_out_11_V_address0 { O 8 vector } buff_out_11_V_ce0 { O 1 bit } buff_out_11_V_q0 { I 16 vector } buff_out_11_V_address1 { O 8 vector } buff_out_11_V_ce1 { O 1 bit } buff_out_11_V_we1 { O 1 bit } buff_out_11_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_11_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 584 \
    name buff_out_12_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_12_V \
    op interface \
    ports { buff_out_12_V_address0 { O 8 vector } buff_out_12_V_ce0 { O 1 bit } buff_out_12_V_q0 { I 16 vector } buff_out_12_V_address1 { O 8 vector } buff_out_12_V_ce1 { O 1 bit } buff_out_12_V_we1 { O 1 bit } buff_out_12_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_12_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 585 \
    name buff_out_13_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_13_V \
    op interface \
    ports { buff_out_13_V_address0 { O 8 vector } buff_out_13_V_ce0 { O 1 bit } buff_out_13_V_q0 { I 16 vector } buff_out_13_V_address1 { O 8 vector } buff_out_13_V_ce1 { O 1 bit } buff_out_13_V_we1 { O 1 bit } buff_out_13_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_13_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 586 \
    name buff_out_14_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_14_V \
    op interface \
    ports { buff_out_14_V_address0 { O 8 vector } buff_out_14_V_ce0 { O 1 bit } buff_out_14_V_q0 { I 16 vector } buff_out_14_V_address1 { O 8 vector } buff_out_14_V_ce1 { O 1 bit } buff_out_14_V_we1 { O 1 bit } buff_out_14_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_14_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 587 \
    name buff_out_15_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buff_out_15_V \
    op interface \
    ports { buff_out_15_V_address0 { O 8 vector } buff_out_15_V_ce0 { O 1 bit } buff_out_15_V_q0 { I 16 vector } buff_out_15_V_address1 { O 8 vector } buff_out_15_V_ce1 { O 1 bit } buff_out_15_V_we1 { O 1 bit } buff_out_15_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_out_15_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
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
    id 381 \
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
    id 382 \
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
    id 383 \
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
    id 384 \
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
    id 385 \
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
    id 386 \
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
    id 387 \
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
    id 388 \
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
    id 389 \
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
    id 390 \
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
    id 391 \
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
    id 392 \
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
    id 393 \
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
    id 394 \
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
    id 395 \
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
    id 396 \
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
    id 397 \
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
    id 398 \
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
    id 399 \
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
    id 400 \
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
    id 401 \
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
    id 402 \
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
    id 403 \
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
    id 404 \
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
    id 405 \
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
    id 406 \
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
    id 407 \
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
    id 408 \
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
    id 409 \
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
    id 410 \
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
    id 411 \
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
    id 412 \
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
    id 413 \
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
    id 414 \
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
    id 415 \
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
    id 416 \
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
    id 417 \
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
    id 418 \
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
    id 419 \
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
    id 420 \
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
    id 421 \
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
    id 422 \
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
    id 423 \
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
    id 424 \
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
    id 425 \
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
    id 426 \
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
    id 427 \
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
    id 428 \
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
    id 429 \
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
    id 430 \
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
    id 431 \
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
    id 432 \
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
    id 433 \
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
    id 434 \
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
    id 435 \
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
    id 436 \
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
    id 437 \
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
    id 438 \
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
    id 439 \
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
    id 440 \
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
    id 441 \
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
    id 442 \
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
    id 443 \
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
    id 444 \
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
    id 445 \
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
    id 446 \
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
    id 447 \
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
    id 448 \
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
    id 449 \
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
    id 450 \
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
    id 451 \
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
    id 452 \
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
    id 453 \
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
    id 454 \
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
    id 455 \
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
    id 456 \
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
    id 457 \
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
    id 458 \
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
    id 459 \
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
    id 460 \
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
    id 461 \
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
    id 462 \
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
    id 463 \
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
    id 464 \
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
    id 465 \
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
    id 466 \
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
    id 467 \
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
    id 468 \
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
    id 469 \
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
    id 470 \
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
    id 471 \
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
    id 472 \
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
    id 473 \
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
    id 474 \
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
    id 475 \
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
    id 476 \
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
    id 477 \
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
    id 478 \
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
    id 479 \
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
    id 480 \
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
    id 481 \
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
    id 482 \
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
    id 483 \
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
    id 484 \
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
    id 485 \
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
    id 486 \
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
    id 487 \
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
    id 488 \
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
    id 489 \
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
    id 490 \
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
    id 491 \
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
    id 492 \
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
    id 493 \
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
    id 494 \
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
    id 495 \
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
    id 496 \
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
    id 497 \
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
    id 498 \
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
    id 499 \
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
    id 500 \
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
    id 501 \
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
    id 502 \
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
    id 503 \
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
    id 504 \
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
    id 505 \
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
    id 506 \
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
    id 507 \
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
    id 508 \
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
    id 509 \
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
    id 510 \
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
    id 511 \
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
    id 512 \
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
    id 513 \
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
    id 514 \
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
    id 515 \
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
    id 516 \
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
    id 517 \
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
    id 518 \
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
    id 519 \
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
    id 520 \
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
    id 521 \
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
    id 522 \
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
    id 523 \
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
    id 524 \
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
    id 525 \
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
    id 526 \
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
    id 527 \
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
    id 528 \
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
    id 529 \
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
    id 530 \
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
    id 531 \
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
    id 532 \
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
    id 533 \
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
    id 534 \
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
    id 535 \
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
    id 536 \
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
    id 537 \
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
    id 538 \
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
    id 539 \
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
    id 540 \
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
    id 541 \
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
    id 542 \
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
    id 543 \
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
    id 544 \
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
    id 545 \
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
    id 546 \
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
    id 547 \
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
    id 548 \
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
    id 549 \
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
    id 550 \
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
    id 551 \
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
    id 552 \
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
    id 553 \
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
    id 554 \
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
    id 555 \
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
    id 556 \
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
    id 557 \
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
    id 558 \
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
    id 559 \
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
    id 560 \
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
    id 561 \
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
    id 562 \
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
    id 563 \
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
    id 564 \
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
    id 565 \
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
    id 566 \
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
    id 567 \
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
    id 568 \
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
    id 569 \
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
    id 570 \
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
    id 571 \
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


