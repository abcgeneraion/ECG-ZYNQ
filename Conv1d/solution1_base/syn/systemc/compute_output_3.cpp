#include "compute_output.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void compute_output::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void compute_output::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void compute_output::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void compute_output::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void compute_output::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void compute_output::thread_ap_block_state2_on_subcall_done() {
    ap_block_state2_on_subcall_done = (esl_seteq<1,1,1>(ap_const_logic_0, grp_load_input_fu_2414_ap_done.read()) || esl_seteq<1,1,1>(ap_const_logic_0, grp_load_weight_fu_2015_ap_done.read()) || esl_seteq<1,1,1>(ap_const_logic_0, grp_load_bias_fu_2437_ap_done.read()));
}

void compute_output::thread_ap_block_state4_on_subcall_done() {
    ap_block_state4_on_subcall_done = ((esl_seteq<1,1,1>(ap_const_logic_0, grp_load_input_fu_2414_ap_done.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, grp_load_weight_fu_2015_ap_done.read())) || (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, grp_compute_fu_1783_ap_done.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, grp_load_input_fu_2414_ap_done.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, grp_load_weight_fu_2015_ap_done.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, grp_compute_fu_1783_ap_done.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())));
}

void compute_output::thread_ap_block_state5_on_subcall_done() {
    ap_block_state5_on_subcall_done = ((esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, grp_compute_fu_1783_ap_done.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, grp_compute_fu_1783_ap_done.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())));
}

void compute_output::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
          esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void compute_output::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void compute_output::thread_ap_phi_mux_pp_0_phi_fu_1762_p4() {
    ap_phi_mux_pp_0_phi_fu_1762_p4 = pp_0_reg_1758.read();
}

void compute_output::thread_ap_phi_mux_pp_1_phi_fu_1774_p4() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        if (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) {
            ap_phi_mux_pp_1_phi_fu_1774_p4 = ap_const_lv1_1;
        } else if (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) {
            ap_phi_mux_pp_1_phi_fu_1774_p4 = ap_const_lv1_0;
        } else {
            ap_phi_mux_pp_1_phi_fu_1774_p4 = "X";
        }
    } else {
        ap_phi_mux_pp_1_phi_fu_1774_p4 = "X";
    }
}

void compute_output::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_block_state5_on_subcall_done.read(), ap_const_boolean_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void compute_output::thread_bias_buff_V16_address0() {
    bias_buff_V16_address0 = grp_load_bias_fu_2437_bias_buff_V16_address0.read();
}

void compute_output::thread_bias_buff_V16_ce0() {
    bias_buff_V16_ce0 = grp_load_bias_fu_2437_bias_buff_V16_ce0.read();
}

void compute_output::thread_bias_buff_V17_address0() {
    bias_buff_V17_address0 = grp_load_bias_fu_2437_bias_buff_V17_address0.read();
}

void compute_output::thread_bias_buff_V17_ce0() {
    bias_buff_V17_ce0 = grp_load_bias_fu_2437_bias_buff_V17_ce0.read();
}

void compute_output::thread_bias_buff_V18_address0() {
    bias_buff_V18_address0 = grp_load_bias_fu_2437_bias_buff_V18_address0.read();
}

void compute_output::thread_bias_buff_V18_ce0() {
    bias_buff_V18_ce0 = grp_load_bias_fu_2437_bias_buff_V18_ce0.read();
}

void compute_output::thread_bias_buff_V19_address0() {
    bias_buff_V19_address0 = grp_load_bias_fu_2437_bias_buff_V19_address0.read();
}

void compute_output::thread_bias_buff_V19_ce0() {
    bias_buff_V19_ce0 = grp_load_bias_fu_2437_bias_buff_V19_ce0.read();
}

void compute_output::thread_bias_buff_V20_address0() {
    bias_buff_V20_address0 = grp_load_bias_fu_2437_bias_buff_V20_address0.read();
}

void compute_output::thread_bias_buff_V20_ce0() {
    bias_buff_V20_ce0 = grp_load_bias_fu_2437_bias_buff_V20_ce0.read();
}

void compute_output::thread_bias_buff_V21_address0() {
    bias_buff_V21_address0 = grp_load_bias_fu_2437_bias_buff_V21_address0.read();
}

void compute_output::thread_bias_buff_V21_ce0() {
    bias_buff_V21_ce0 = grp_load_bias_fu_2437_bias_buff_V21_ce0.read();
}

void compute_output::thread_bias_buff_V22_address0() {
    bias_buff_V22_address0 = grp_load_bias_fu_2437_bias_buff_V22_address0.read();
}

void compute_output::thread_bias_buff_V22_ce0() {
    bias_buff_V22_ce0 = grp_load_bias_fu_2437_bias_buff_V22_ce0.read();
}

void compute_output::thread_bias_buff_V23_address0() {
    bias_buff_V23_address0 = grp_load_bias_fu_2437_bias_buff_V23_address0.read();
}

void compute_output::thread_bias_buff_V23_ce0() {
    bias_buff_V23_ce0 = grp_load_bias_fu_2437_bias_buff_V23_ce0.read();
}

void compute_output::thread_bias_buff_V24_address0() {
    bias_buff_V24_address0 = grp_load_bias_fu_2437_bias_buff_V24_address0.read();
}

void compute_output::thread_bias_buff_V24_ce0() {
    bias_buff_V24_ce0 = grp_load_bias_fu_2437_bias_buff_V24_ce0.read();
}

void compute_output::thread_bias_buff_V25_address0() {
    bias_buff_V25_address0 = grp_load_bias_fu_2437_bias_buff_V25_address0.read();
}

void compute_output::thread_bias_buff_V25_ce0() {
    bias_buff_V25_ce0 = grp_load_bias_fu_2437_bias_buff_V25_ce0.read();
}

void compute_output::thread_bias_buff_V26_address0() {
    bias_buff_V26_address0 = grp_load_bias_fu_2437_bias_buff_V26_address0.read();
}

void compute_output::thread_bias_buff_V26_ce0() {
    bias_buff_V26_ce0 = grp_load_bias_fu_2437_bias_buff_V26_ce0.read();
}

void compute_output::thread_bias_buff_V27_address0() {
    bias_buff_V27_address0 = grp_load_bias_fu_2437_bias_buff_V27_address0.read();
}

void compute_output::thread_bias_buff_V27_ce0() {
    bias_buff_V27_ce0 = grp_load_bias_fu_2437_bias_buff_V27_ce0.read();
}

void compute_output::thread_bias_buff_V28_address0() {
    bias_buff_V28_address0 = grp_load_bias_fu_2437_bias_buff_V28_address0.read();
}

void compute_output::thread_bias_buff_V28_ce0() {
    bias_buff_V28_ce0 = grp_load_bias_fu_2437_bias_buff_V28_ce0.read();
}

void compute_output::thread_bias_buff_V29_address0() {
    bias_buff_V29_address0 = grp_load_bias_fu_2437_bias_buff_V29_address0.read();
}

void compute_output::thread_bias_buff_V29_ce0() {
    bias_buff_V29_ce0 = grp_load_bias_fu_2437_bias_buff_V29_ce0.read();
}

void compute_output::thread_bias_buff_V30_address0() {
    bias_buff_V30_address0 = grp_load_bias_fu_2437_bias_buff_V30_address0.read();
}

void compute_output::thread_bias_buff_V30_ce0() {
    bias_buff_V30_ce0 = grp_load_bias_fu_2437_bias_buff_V30_ce0.read();
}

void compute_output::thread_bias_buff_V_address0() {
    bias_buff_V_address0 = grp_load_bias_fu_2437_bias_buff_V_address0.read();
}

void compute_output::thread_bias_buff_V_ce0() {
    bias_buff_V_ce0 = grp_load_bias_fu_2437_bias_buff_V_ce0.read();
}

void compute_output::thread_buff_in1_0_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_0_V_address0 = grp_load_input_fu_2414_buff_in_0_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in1_0_V_address0 = grp_compute_fu_1783_buff_in_0_V_address0.read();
    } else {
        buff_in1_0_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_in1_0_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_0_V_ce0 = grp_load_input_fu_2414_buff_in_0_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in1_0_V_ce0 = grp_compute_fu_1783_buff_in_0_V_ce0.read();
    } else {
        buff_in1_0_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in1_0_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_0_V_we0 = grp_load_input_fu_2414_buff_in_0_V_we0.read();
    } else {
        buff_in1_0_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in1_1_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_1_V_address0 = grp_load_input_fu_2414_buff_in_1_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in1_1_V_address0 = grp_compute_fu_1783_buff_in_1_V_address0.read();
    } else {
        buff_in1_1_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_in1_1_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_1_V_ce0 = grp_load_input_fu_2414_buff_in_1_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in1_1_V_ce0 = grp_compute_fu_1783_buff_in_1_V_ce0.read();
    } else {
        buff_in1_1_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in1_1_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_1_V_we0 = grp_load_input_fu_2414_buff_in_1_V_we0.read();
    } else {
        buff_in1_1_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in1_2_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_2_V_address0 = grp_load_input_fu_2414_buff_in_2_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in1_2_V_address0 = grp_compute_fu_1783_buff_in_2_V_address0.read();
    } else {
        buff_in1_2_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_in1_2_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_2_V_ce0 = grp_load_input_fu_2414_buff_in_2_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in1_2_V_ce0 = grp_compute_fu_1783_buff_in_2_V_ce0.read();
    } else {
        buff_in1_2_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in1_2_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_2_V_we0 = grp_load_input_fu_2414_buff_in_2_V_we0.read();
    } else {
        buff_in1_2_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in1_3_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_3_V_address0 = grp_load_input_fu_2414_buff_in_3_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in1_3_V_address0 = grp_compute_fu_1783_buff_in_3_V_address0.read();
    } else {
        buff_in1_3_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_in1_3_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_3_V_ce0 = grp_load_input_fu_2414_buff_in_3_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in1_3_V_ce0 = grp_compute_fu_1783_buff_in_3_V_ce0.read();
    } else {
        buff_in1_3_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in1_3_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        buff_in1_3_V_we0 = grp_load_input_fu_2414_buff_in_3_V_we0.read();
    } else {
        buff_in1_3_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in2_0_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_0_V_address0 = grp_load_input_fu_2414_buff_in_0_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in2_0_V_address0 = grp_compute_fu_1783_buff_in_0_V_address0.read();
    } else {
        buff_in2_0_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_in2_0_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_0_V_ce0 = grp_load_input_fu_2414_buff_in_0_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in2_0_V_ce0 = grp_compute_fu_1783_buff_in_0_V_ce0.read();
    } else {
        buff_in2_0_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in2_0_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_0_V_we0 = grp_load_input_fu_2414_buff_in_0_V_we0.read();
    } else {
        buff_in2_0_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in2_1_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_1_V_address0 = grp_load_input_fu_2414_buff_in_1_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in2_1_V_address0 = grp_compute_fu_1783_buff_in_1_V_address0.read();
    } else {
        buff_in2_1_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_in2_1_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_1_V_ce0 = grp_load_input_fu_2414_buff_in_1_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in2_1_V_ce0 = grp_compute_fu_1783_buff_in_1_V_ce0.read();
    } else {
        buff_in2_1_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in2_1_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_1_V_we0 = grp_load_input_fu_2414_buff_in_1_V_we0.read();
    } else {
        buff_in2_1_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in2_2_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_2_V_address0 = grp_load_input_fu_2414_buff_in_2_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in2_2_V_address0 = grp_compute_fu_1783_buff_in_2_V_address0.read();
    } else {
        buff_in2_2_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_in2_2_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_2_V_ce0 = grp_load_input_fu_2414_buff_in_2_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in2_2_V_ce0 = grp_compute_fu_1783_buff_in_2_V_ce0.read();
    } else {
        buff_in2_2_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in2_2_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_2_V_we0 = grp_load_input_fu_2414_buff_in_2_V_we0.read();
    } else {
        buff_in2_2_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in2_3_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_3_V_address0 = grp_load_input_fu_2414_buff_in_3_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in2_3_V_address0 = grp_compute_fu_1783_buff_in_3_V_address0.read();
    } else {
        buff_in2_3_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_in2_3_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_3_V_ce0 = grp_load_input_fu_2414_buff_in_3_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_in2_3_V_ce0 = grp_compute_fu_1783_buff_in_3_V_ce0.read();
    } else {
        buff_in2_3_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_in2_3_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        buff_in2_3_V_we0 = grp_load_input_fu_2414_buff_in_3_V_we0.read();
    } else {
        buff_in2_3_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_0_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_0_V_address0 = grp_load_bias_fu_2437_buff_out_0_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_0_V_address0 = grp_compute_fu_1783_buff_out_0_V_address0.read();
    } else {
        buff_out_0_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_0_V_address1() {
    buff_out_0_V_address1 = grp_compute_fu_1783_buff_out_0_V_address1.read();
}

void compute_output::thread_buff_out_0_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_0_V_ce0 = grp_load_bias_fu_2437_buff_out_0_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_0_V_ce0 = grp_compute_fu_1783_buff_out_0_V_ce0.read();
    } else {
        buff_out_0_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_0_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_0_V_ce1 = grp_compute_fu_1783_buff_out_0_V_ce1.read();
    } else {
        buff_out_0_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_0_V_d0() {
    buff_out_0_V_d0 = grp_load_bias_fu_2437_buff_out_0_V_d0.read();
}

void compute_output::thread_buff_out_0_V_d1() {
    buff_out_0_V_d1 = grp_compute_fu_1783_buff_out_0_V_d1.read();
}

void compute_output::thread_buff_out_0_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_0_V_we0 = grp_load_bias_fu_2437_buff_out_0_V_we0.read();
    } else {
        buff_out_0_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_0_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_0_V_we1 = grp_compute_fu_1783_buff_out_0_V_we1.read();
    } else {
        buff_out_0_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_10_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_10_V_address0 = grp_load_bias_fu_2437_buff_out_10_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_10_V_address0 = grp_compute_fu_1783_buff_out_10_V_address0.read();
    } else {
        buff_out_10_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_10_V_address1() {
    buff_out_10_V_address1 = grp_compute_fu_1783_buff_out_10_V_address1.read();
}

void compute_output::thread_buff_out_10_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_10_V_ce0 = grp_load_bias_fu_2437_buff_out_10_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_10_V_ce0 = grp_compute_fu_1783_buff_out_10_V_ce0.read();
    } else {
        buff_out_10_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_10_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_10_V_ce1 = grp_compute_fu_1783_buff_out_10_V_ce1.read();
    } else {
        buff_out_10_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_10_V_d0() {
    buff_out_10_V_d0 = grp_load_bias_fu_2437_buff_out_10_V_d0.read();
}

void compute_output::thread_buff_out_10_V_d1() {
    buff_out_10_V_d1 = grp_compute_fu_1783_buff_out_10_V_d1.read();
}

void compute_output::thread_buff_out_10_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_10_V_we0 = grp_load_bias_fu_2437_buff_out_10_V_we0.read();
    } else {
        buff_out_10_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_10_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_10_V_we1 = grp_compute_fu_1783_buff_out_10_V_we1.read();
    } else {
        buff_out_10_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_11_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_11_V_address0 = grp_load_bias_fu_2437_buff_out_11_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_11_V_address0 = grp_compute_fu_1783_buff_out_11_V_address0.read();
    } else {
        buff_out_11_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_11_V_address1() {
    buff_out_11_V_address1 = grp_compute_fu_1783_buff_out_11_V_address1.read();
}

void compute_output::thread_buff_out_11_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_11_V_ce0 = grp_load_bias_fu_2437_buff_out_11_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_11_V_ce0 = grp_compute_fu_1783_buff_out_11_V_ce0.read();
    } else {
        buff_out_11_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_11_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_11_V_ce1 = grp_compute_fu_1783_buff_out_11_V_ce1.read();
    } else {
        buff_out_11_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_11_V_d0() {
    buff_out_11_V_d0 = grp_load_bias_fu_2437_buff_out_11_V_d0.read();
}

void compute_output::thread_buff_out_11_V_d1() {
    buff_out_11_V_d1 = grp_compute_fu_1783_buff_out_11_V_d1.read();
}

void compute_output::thread_buff_out_11_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_11_V_we0 = grp_load_bias_fu_2437_buff_out_11_V_we0.read();
    } else {
        buff_out_11_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_11_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_11_V_we1 = grp_compute_fu_1783_buff_out_11_V_we1.read();
    } else {
        buff_out_11_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_12_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_12_V_address0 = grp_load_bias_fu_2437_buff_out_12_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_12_V_address0 = grp_compute_fu_1783_buff_out_12_V_address0.read();
    } else {
        buff_out_12_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_12_V_address1() {
    buff_out_12_V_address1 = grp_compute_fu_1783_buff_out_12_V_address1.read();
}

void compute_output::thread_buff_out_12_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_12_V_ce0 = grp_load_bias_fu_2437_buff_out_12_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_12_V_ce0 = grp_compute_fu_1783_buff_out_12_V_ce0.read();
    } else {
        buff_out_12_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_12_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_12_V_ce1 = grp_compute_fu_1783_buff_out_12_V_ce1.read();
    } else {
        buff_out_12_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_12_V_d0() {
    buff_out_12_V_d0 = grp_load_bias_fu_2437_buff_out_12_V_d0.read();
}

void compute_output::thread_buff_out_12_V_d1() {
    buff_out_12_V_d1 = grp_compute_fu_1783_buff_out_12_V_d1.read();
}

void compute_output::thread_buff_out_12_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_12_V_we0 = grp_load_bias_fu_2437_buff_out_12_V_we0.read();
    } else {
        buff_out_12_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_12_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_12_V_we1 = grp_compute_fu_1783_buff_out_12_V_we1.read();
    } else {
        buff_out_12_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_13_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_13_V_address0 = grp_load_bias_fu_2437_buff_out_13_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_13_V_address0 = grp_compute_fu_1783_buff_out_13_V_address0.read();
    } else {
        buff_out_13_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_13_V_address1() {
    buff_out_13_V_address1 = grp_compute_fu_1783_buff_out_13_V_address1.read();
}

void compute_output::thread_buff_out_13_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_13_V_ce0 = grp_load_bias_fu_2437_buff_out_13_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_13_V_ce0 = grp_compute_fu_1783_buff_out_13_V_ce0.read();
    } else {
        buff_out_13_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_13_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_13_V_ce1 = grp_compute_fu_1783_buff_out_13_V_ce1.read();
    } else {
        buff_out_13_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_13_V_d0() {
    buff_out_13_V_d0 = grp_load_bias_fu_2437_buff_out_13_V_d0.read();
}

void compute_output::thread_buff_out_13_V_d1() {
    buff_out_13_V_d1 = grp_compute_fu_1783_buff_out_13_V_d1.read();
}

void compute_output::thread_buff_out_13_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_13_V_we0 = grp_load_bias_fu_2437_buff_out_13_V_we0.read();
    } else {
        buff_out_13_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_13_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_13_V_we1 = grp_compute_fu_1783_buff_out_13_V_we1.read();
    } else {
        buff_out_13_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_14_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_14_V_address0 = grp_load_bias_fu_2437_buff_out_14_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_14_V_address0 = grp_compute_fu_1783_buff_out_14_V_address0.read();
    } else {
        buff_out_14_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_14_V_address1() {
    buff_out_14_V_address1 = grp_compute_fu_1783_buff_out_14_V_address1.read();
}

void compute_output::thread_buff_out_14_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_14_V_ce0 = grp_load_bias_fu_2437_buff_out_14_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_14_V_ce0 = grp_compute_fu_1783_buff_out_14_V_ce0.read();
    } else {
        buff_out_14_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_14_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_14_V_ce1 = grp_compute_fu_1783_buff_out_14_V_ce1.read();
    } else {
        buff_out_14_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_14_V_d0() {
    buff_out_14_V_d0 = grp_load_bias_fu_2437_buff_out_14_V_d0.read();
}

void compute_output::thread_buff_out_14_V_d1() {
    buff_out_14_V_d1 = grp_compute_fu_1783_buff_out_14_V_d1.read();
}

void compute_output::thread_buff_out_14_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_14_V_we0 = grp_load_bias_fu_2437_buff_out_14_V_we0.read();
    } else {
        buff_out_14_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_14_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_14_V_we1 = grp_compute_fu_1783_buff_out_14_V_we1.read();
    } else {
        buff_out_14_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_15_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_15_V_address0 = grp_load_bias_fu_2437_buff_out_15_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_15_V_address0 = grp_compute_fu_1783_buff_out_15_V_address0.read();
    } else {
        buff_out_15_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_15_V_address1() {
    buff_out_15_V_address1 = grp_compute_fu_1783_buff_out_15_V_address1.read();
}

void compute_output::thread_buff_out_15_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_15_V_ce0 = grp_load_bias_fu_2437_buff_out_15_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_15_V_ce0 = grp_compute_fu_1783_buff_out_15_V_ce0.read();
    } else {
        buff_out_15_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_15_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_15_V_ce1 = grp_compute_fu_1783_buff_out_15_V_ce1.read();
    } else {
        buff_out_15_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_15_V_d0() {
    buff_out_15_V_d0 = grp_load_bias_fu_2437_buff_out_15_V_d0.read();
}

void compute_output::thread_buff_out_15_V_d1() {
    buff_out_15_V_d1 = grp_compute_fu_1783_buff_out_15_V_d1.read();
}

void compute_output::thread_buff_out_15_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_15_V_we0 = grp_load_bias_fu_2437_buff_out_15_V_we0.read();
    } else {
        buff_out_15_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_15_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_15_V_we1 = grp_compute_fu_1783_buff_out_15_V_we1.read();
    } else {
        buff_out_15_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_1_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_1_V_address0 = grp_load_bias_fu_2437_buff_out_1_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_1_V_address0 = grp_compute_fu_1783_buff_out_1_V_address0.read();
    } else {
        buff_out_1_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_1_V_address1() {
    buff_out_1_V_address1 = grp_compute_fu_1783_buff_out_1_V_address1.read();
}

void compute_output::thread_buff_out_1_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_1_V_ce0 = grp_load_bias_fu_2437_buff_out_1_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_1_V_ce0 = grp_compute_fu_1783_buff_out_1_V_ce0.read();
    } else {
        buff_out_1_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_1_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_1_V_ce1 = grp_compute_fu_1783_buff_out_1_V_ce1.read();
    } else {
        buff_out_1_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_1_V_d0() {
    buff_out_1_V_d0 = grp_load_bias_fu_2437_buff_out_1_V_d0.read();
}

void compute_output::thread_buff_out_1_V_d1() {
    buff_out_1_V_d1 = grp_compute_fu_1783_buff_out_1_V_d1.read();
}

void compute_output::thread_buff_out_1_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_1_V_we0 = grp_load_bias_fu_2437_buff_out_1_V_we0.read();
    } else {
        buff_out_1_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_1_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_1_V_we1 = grp_compute_fu_1783_buff_out_1_V_we1.read();
    } else {
        buff_out_1_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_2_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_2_V_address0 = grp_load_bias_fu_2437_buff_out_2_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_2_V_address0 = grp_compute_fu_1783_buff_out_2_V_address0.read();
    } else {
        buff_out_2_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_2_V_address1() {
    buff_out_2_V_address1 = grp_compute_fu_1783_buff_out_2_V_address1.read();
}

void compute_output::thread_buff_out_2_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_2_V_ce0 = grp_load_bias_fu_2437_buff_out_2_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_2_V_ce0 = grp_compute_fu_1783_buff_out_2_V_ce0.read();
    } else {
        buff_out_2_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_2_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_2_V_ce1 = grp_compute_fu_1783_buff_out_2_V_ce1.read();
    } else {
        buff_out_2_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_2_V_d0() {
    buff_out_2_V_d0 = grp_load_bias_fu_2437_buff_out_2_V_d0.read();
}

void compute_output::thread_buff_out_2_V_d1() {
    buff_out_2_V_d1 = grp_compute_fu_1783_buff_out_2_V_d1.read();
}

void compute_output::thread_buff_out_2_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_2_V_we0 = grp_load_bias_fu_2437_buff_out_2_V_we0.read();
    } else {
        buff_out_2_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_2_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_2_V_we1 = grp_compute_fu_1783_buff_out_2_V_we1.read();
    } else {
        buff_out_2_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_3_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_3_V_address0 = grp_load_bias_fu_2437_buff_out_3_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_3_V_address0 = grp_compute_fu_1783_buff_out_3_V_address0.read();
    } else {
        buff_out_3_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_3_V_address1() {
    buff_out_3_V_address1 = grp_compute_fu_1783_buff_out_3_V_address1.read();
}

void compute_output::thread_buff_out_3_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_3_V_ce0 = grp_load_bias_fu_2437_buff_out_3_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_3_V_ce0 = grp_compute_fu_1783_buff_out_3_V_ce0.read();
    } else {
        buff_out_3_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_3_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_3_V_ce1 = grp_compute_fu_1783_buff_out_3_V_ce1.read();
    } else {
        buff_out_3_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_3_V_d0() {
    buff_out_3_V_d0 = grp_load_bias_fu_2437_buff_out_3_V_d0.read();
}

void compute_output::thread_buff_out_3_V_d1() {
    buff_out_3_V_d1 = grp_compute_fu_1783_buff_out_3_V_d1.read();
}

void compute_output::thread_buff_out_3_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_3_V_we0 = grp_load_bias_fu_2437_buff_out_3_V_we0.read();
    } else {
        buff_out_3_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_3_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_3_V_we1 = grp_compute_fu_1783_buff_out_3_V_we1.read();
    } else {
        buff_out_3_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_4_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_4_V_address0 = grp_load_bias_fu_2437_buff_out_4_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_4_V_address0 = grp_compute_fu_1783_buff_out_4_V_address0.read();
    } else {
        buff_out_4_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_4_V_address1() {
    buff_out_4_V_address1 = grp_compute_fu_1783_buff_out_4_V_address1.read();
}

void compute_output::thread_buff_out_4_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_4_V_ce0 = grp_load_bias_fu_2437_buff_out_4_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_4_V_ce0 = grp_compute_fu_1783_buff_out_4_V_ce0.read();
    } else {
        buff_out_4_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_4_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_4_V_ce1 = grp_compute_fu_1783_buff_out_4_V_ce1.read();
    } else {
        buff_out_4_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_4_V_d0() {
    buff_out_4_V_d0 = grp_load_bias_fu_2437_buff_out_4_V_d0.read();
}

void compute_output::thread_buff_out_4_V_d1() {
    buff_out_4_V_d1 = grp_compute_fu_1783_buff_out_4_V_d1.read();
}

void compute_output::thread_buff_out_4_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_4_V_we0 = grp_load_bias_fu_2437_buff_out_4_V_we0.read();
    } else {
        buff_out_4_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_4_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_4_V_we1 = grp_compute_fu_1783_buff_out_4_V_we1.read();
    } else {
        buff_out_4_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_5_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_5_V_address0 = grp_load_bias_fu_2437_buff_out_5_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_5_V_address0 = grp_compute_fu_1783_buff_out_5_V_address0.read();
    } else {
        buff_out_5_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_5_V_address1() {
    buff_out_5_V_address1 = grp_compute_fu_1783_buff_out_5_V_address1.read();
}

void compute_output::thread_buff_out_5_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_5_V_ce0 = grp_load_bias_fu_2437_buff_out_5_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_5_V_ce0 = grp_compute_fu_1783_buff_out_5_V_ce0.read();
    } else {
        buff_out_5_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_5_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_5_V_ce1 = grp_compute_fu_1783_buff_out_5_V_ce1.read();
    } else {
        buff_out_5_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_5_V_d0() {
    buff_out_5_V_d0 = grp_load_bias_fu_2437_buff_out_5_V_d0.read();
}

void compute_output::thread_buff_out_5_V_d1() {
    buff_out_5_V_d1 = grp_compute_fu_1783_buff_out_5_V_d1.read();
}

void compute_output::thread_buff_out_5_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_5_V_we0 = grp_load_bias_fu_2437_buff_out_5_V_we0.read();
    } else {
        buff_out_5_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_5_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_5_V_we1 = grp_compute_fu_1783_buff_out_5_V_we1.read();
    } else {
        buff_out_5_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_6_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_6_V_address0 = grp_load_bias_fu_2437_buff_out_6_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_6_V_address0 = grp_compute_fu_1783_buff_out_6_V_address0.read();
    } else {
        buff_out_6_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_6_V_address1() {
    buff_out_6_V_address1 = grp_compute_fu_1783_buff_out_6_V_address1.read();
}

void compute_output::thread_buff_out_6_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_6_V_ce0 = grp_load_bias_fu_2437_buff_out_6_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_6_V_ce0 = grp_compute_fu_1783_buff_out_6_V_ce0.read();
    } else {
        buff_out_6_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_6_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_6_V_ce1 = grp_compute_fu_1783_buff_out_6_V_ce1.read();
    } else {
        buff_out_6_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_6_V_d0() {
    buff_out_6_V_d0 = grp_load_bias_fu_2437_buff_out_6_V_d0.read();
}

void compute_output::thread_buff_out_6_V_d1() {
    buff_out_6_V_d1 = grp_compute_fu_1783_buff_out_6_V_d1.read();
}

void compute_output::thread_buff_out_6_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_6_V_we0 = grp_load_bias_fu_2437_buff_out_6_V_we0.read();
    } else {
        buff_out_6_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_6_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_6_V_we1 = grp_compute_fu_1783_buff_out_6_V_we1.read();
    } else {
        buff_out_6_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_7_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_7_V_address0 = grp_load_bias_fu_2437_buff_out_7_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_7_V_address0 = grp_compute_fu_1783_buff_out_7_V_address0.read();
    } else {
        buff_out_7_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_7_V_address1() {
    buff_out_7_V_address1 = grp_compute_fu_1783_buff_out_7_V_address1.read();
}

void compute_output::thread_buff_out_7_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_7_V_ce0 = grp_load_bias_fu_2437_buff_out_7_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_7_V_ce0 = grp_compute_fu_1783_buff_out_7_V_ce0.read();
    } else {
        buff_out_7_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_7_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_7_V_ce1 = grp_compute_fu_1783_buff_out_7_V_ce1.read();
    } else {
        buff_out_7_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_7_V_d0() {
    buff_out_7_V_d0 = grp_load_bias_fu_2437_buff_out_7_V_d0.read();
}

void compute_output::thread_buff_out_7_V_d1() {
    buff_out_7_V_d1 = grp_compute_fu_1783_buff_out_7_V_d1.read();
}

void compute_output::thread_buff_out_7_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_7_V_we0 = grp_load_bias_fu_2437_buff_out_7_V_we0.read();
    } else {
        buff_out_7_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_7_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_7_V_we1 = grp_compute_fu_1783_buff_out_7_V_we1.read();
    } else {
        buff_out_7_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_8_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_8_V_address0 = grp_load_bias_fu_2437_buff_out_8_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_8_V_address0 = grp_compute_fu_1783_buff_out_8_V_address0.read();
    } else {
        buff_out_8_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_8_V_address1() {
    buff_out_8_V_address1 = grp_compute_fu_1783_buff_out_8_V_address1.read();
}

void compute_output::thread_buff_out_8_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_8_V_ce0 = grp_load_bias_fu_2437_buff_out_8_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_8_V_ce0 = grp_compute_fu_1783_buff_out_8_V_ce0.read();
    } else {
        buff_out_8_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_8_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_8_V_ce1 = grp_compute_fu_1783_buff_out_8_V_ce1.read();
    } else {
        buff_out_8_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_8_V_d0() {
    buff_out_8_V_d0 = grp_load_bias_fu_2437_buff_out_8_V_d0.read();
}

void compute_output::thread_buff_out_8_V_d1() {
    buff_out_8_V_d1 = grp_compute_fu_1783_buff_out_8_V_d1.read();
}

void compute_output::thread_buff_out_8_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_8_V_we0 = grp_load_bias_fu_2437_buff_out_8_V_we0.read();
    } else {
        buff_out_8_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_8_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_8_V_we1 = grp_compute_fu_1783_buff_out_8_V_we1.read();
    } else {
        buff_out_8_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_9_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_9_V_address0 = grp_load_bias_fu_2437_buff_out_9_V_address0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_9_V_address0 = grp_compute_fu_1783_buff_out_9_V_address0.read();
    } else {
        buff_out_9_V_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void compute_output::thread_buff_out_9_V_address1() {
    buff_out_9_V_address1 = grp_compute_fu_1783_buff_out_9_V_address1.read();
}

void compute_output::thread_buff_out_9_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_9_V_ce0 = grp_load_bias_fu_2437_buff_out_9_V_ce0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_9_V_ce0 = grp_compute_fu_1783_buff_out_9_V_ce0.read();
    } else {
        buff_out_9_V_ce0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_9_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_9_V_ce1 = grp_compute_fu_1783_buff_out_9_V_ce1.read();
    } else {
        buff_out_9_V_ce1 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_9_V_d0() {
    buff_out_9_V_d0 = grp_load_bias_fu_2437_buff_out_9_V_d0.read();
}

void compute_output::thread_buff_out_9_V_d1() {
    buff_out_9_V_d1 = grp_compute_fu_1783_buff_out_9_V_d1.read();
}

void compute_output::thread_buff_out_9_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        buff_out_9_V_we0 = grp_load_bias_fu_2437_buff_out_9_V_we0.read();
    } else {
        buff_out_9_V_we0 = ap_const_logic_0;
    }
}

void compute_output::thread_buff_out_9_V_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        buff_out_9_V_we1 = grp_compute_fu_1783_buff_out_9_V_we1.read();
    } else {
        buff_out_9_V_we1 = ap_const_logic_0;
    }
}

void compute_output::thread_grp_compute_fu_1783_ap_start() {
    grp_compute_fu_1783_ap_start = grp_compute_fu_1783_ap_start_reg.read();
}

void compute_output::thread_grp_compute_fu_1783_buff_in_0_V_q0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_buff_in_0_V_q0 = buff_in1_0_V_q0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_buff_in_0_V_q0 = buff_in2_0_V_q0.read();
    } else {
        grp_compute_fu_1783_buff_in_0_V_q0 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_buff_in_1_V_q0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_buff_in_1_V_q0 = buff_in1_1_V_q0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_buff_in_1_V_q0 = buff_in2_1_V_q0.read();
    } else {
        grp_compute_fu_1783_buff_in_1_V_q0 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_buff_in_2_V_q0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_buff_in_2_V_q0 = buff_in1_2_V_q0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_buff_in_2_V_q0 = buff_in2_2_V_q0.read();
    } else {
        grp_compute_fu_1783_buff_in_2_V_q0 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_buff_in_3_V_q0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_buff_in_3_V_q0 = buff_in1_3_V_q0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_buff_in_3_V_q0 = buff_in2_3_V_q0.read();
    } else {
        grp_compute_fu_1783_buff_in_3_V_q0 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_0_0_V_r = reg_6154.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_0_0_V_r = reg_7306.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_0_1_V_r = reg_6160.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_0_1_V_r = reg_7312.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_0_2_V_r = reg_6166.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_0_2_V_r = reg_7318.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_1_0_V_r = reg_6172.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_1_0_V_r = reg_7324.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_1_1_V_r = reg_6178.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_1_1_V_r = reg_7330.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_1_2_V_r = reg_6184.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_1_2_V_r = reg_7336.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_2_0_V_r = reg_6190.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_2_0_V_r = reg_7342.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_2_1_V_r = reg_6196.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_2_1_V_r = reg_7348.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_2_2_V_r = reg_6202.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_2_2_V_r = reg_7354.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_3_0_V_r = reg_6208.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_3_0_V_r = reg_7360.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_3_1_V_r = reg_6214.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_3_1_V_r = reg_7366.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_0_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_3_2_V_r = reg_6220.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_0_3_2_V_r = reg_7372.read();
    } else {
        grp_compute_fu_1783_wt_buff_0_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_0_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_0_0_V_s = reg_6874.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_0_0_V_s = reg_8026.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_0_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_0_1_V_s = reg_6880.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_0_1_V_s = reg_8032.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_0_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_0_2_V_s = reg_6886.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_0_2_V_s = reg_8038.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_1_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_1_0_V_s = reg_6892.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_1_0_V_s = reg_8044.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_1_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_1_1_V_s = reg_6898.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_1_1_V_s = reg_8050.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_1_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_1_2_V_s = reg_6904.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_1_2_V_s = reg_8056.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_2_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_2_0_V_s = reg_6910.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_2_0_V_s = reg_8062.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_2_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_2_1_V_s = reg_6916.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_2_1_V_s = reg_8068.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_2_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_2_2_V_s = reg_6922.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_2_2_V_s = reg_8074.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_3_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_3_0_V_s = reg_6928.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_3_0_V_s = reg_8080.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_3_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_3_1_V_s = reg_6934.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_3_1_V_s = reg_8086.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_10_3_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_3_2_V_s = reg_6940.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_10_3_2_V_s = reg_8092.read();
    } else {
        grp_compute_fu_1783_wt_buff_10_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_0_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_0_0_V_s = reg_6946.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_0_0_V_s = reg_8098.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_0_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_0_1_V_s = reg_6952.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_0_1_V_s = reg_8104.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_0_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_0_2_V_s = reg_6958.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_0_2_V_s = reg_8110.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_1_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_1_0_V_s = reg_6964.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_1_0_V_s = reg_8116.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_1_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_1_1_V_s = reg_6970.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_1_1_V_s = reg_8122.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_1_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_1_2_V_s = reg_6976.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_1_2_V_s = reg_8128.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_2_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_2_0_V_s = reg_6982.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_2_0_V_s = reg_8134.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_2_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_2_1_V_s = reg_6988.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_2_1_V_s = reg_8140.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_2_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_2_2_V_s = reg_6994.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_2_2_V_s = reg_8146.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_3_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_3_0_V_s = reg_7000.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_3_0_V_s = reg_8152.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_3_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_3_1_V_s = reg_7006.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_3_1_V_s = reg_8158.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_11_3_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_3_2_V_s = reg_7012.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_11_3_2_V_s = reg_8164.read();
    } else {
        grp_compute_fu_1783_wt_buff_11_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_0_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_0_0_V_s = reg_7018.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_0_0_V_s = reg_8170.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_0_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_0_1_V_s = reg_7024.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_0_1_V_s = reg_8176.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_0_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_0_2_V_s = reg_7030.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_0_2_V_s = reg_8182.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_1_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_1_0_V_s = reg_7036.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_1_0_V_s = reg_8188.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_1_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_1_1_V_s = reg_7042.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_1_1_V_s = reg_8194.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_1_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_1_2_V_s = reg_7048.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_1_2_V_s = reg_8200.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_2_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_2_0_V_s = reg_7054.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_2_0_V_s = reg_8206.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_2_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_2_1_V_s = reg_7060.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_2_1_V_s = reg_8212.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_2_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_2_2_V_s = reg_7066.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_2_2_V_s = reg_8218.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_3_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_3_0_V_s = reg_7072.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_3_0_V_s = reg_8224.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_3_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_3_1_V_s = reg_7078.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_3_1_V_s = reg_8230.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_12_3_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_3_2_V_s = reg_7084.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_12_3_2_V_s = reg_8236.read();
    } else {
        grp_compute_fu_1783_wt_buff_12_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_0_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_0_0_V_s = reg_7090.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_0_0_V_s = reg_8242.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_0_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_0_1_V_s = reg_7096.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_0_1_V_s = reg_8248.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_0_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_0_2_V_s = reg_7102.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_0_2_V_s = reg_8254.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_1_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_1_0_V_s = reg_7108.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_1_0_V_s = reg_8260.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_1_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_1_1_V_s = reg_7114.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_1_1_V_s = reg_8266.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_1_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_1_2_V_s = reg_7120.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_1_2_V_s = reg_8272.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_2_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_2_0_V_s = reg_7126.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_2_0_V_s = reg_8278.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_2_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_2_1_V_s = reg_7132.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_2_1_V_s = reg_8284.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_2_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_2_2_V_s = reg_7138.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_2_2_V_s = reg_8290.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_3_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_3_0_V_s = reg_7144.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_3_0_V_s = reg_8296.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_3_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_3_1_V_s = reg_7150.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_3_1_V_s = reg_8302.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_13_3_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_3_2_V_s = reg_7156.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_13_3_2_V_s = reg_8308.read();
    } else {
        grp_compute_fu_1783_wt_buff_13_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_0_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_0_0_V_s = reg_7162.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_0_0_V_s = reg_8314.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_0_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_0_1_V_s = reg_7168.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_0_1_V_s = reg_8320.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_0_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_0_2_V_s = reg_7174.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_0_2_V_s = reg_8326.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_1_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_1_0_V_s = reg_7180.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_1_0_V_s = reg_8332.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_1_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_1_1_V_s = reg_7186.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_1_1_V_s = reg_8338.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_1_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_1_2_V_s = reg_7192.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_1_2_V_s = reg_8344.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_2_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_2_0_V_s = reg_7198.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_2_0_V_s = reg_8350.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_2_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_2_1_V_s = reg_7204.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_2_1_V_s = reg_8356.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_2_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_2_2_V_s = reg_7210.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_2_2_V_s = reg_8362.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_3_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_3_0_V_s = reg_7216.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_3_0_V_s = reg_8368.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_3_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_3_1_V_s = reg_7222.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_3_1_V_s = reg_8374.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_14_3_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_3_2_V_s = reg_7228.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_14_3_2_V_s = reg_8380.read();
    } else {
        grp_compute_fu_1783_wt_buff_14_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_0_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_0_0_V_s = reg_7234.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_0_0_V_s = reg_8386.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_0_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_0_1_V_s = reg_7240.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_0_1_V_s = reg_8392.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_0_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_0_2_V_s = reg_7246.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_0_2_V_s = reg_8398.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_1_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_1_0_V_s = reg_7252.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_1_0_V_s = reg_8404.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_1_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_1_1_V_s = reg_7258.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_1_1_V_s = reg_8410.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_1_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_1_2_V_s = reg_7264.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_1_2_V_s = reg_8416.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_2_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_2_0_V_s = reg_7270.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_2_0_V_s = reg_8422.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_2_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_2_1_V_s = reg_7276.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_2_1_V_s = reg_8428.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_2_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_2_2_V_s = reg_7282.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_2_2_V_s = reg_8434.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_3_0_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_3_0_V_s = reg_7288.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_3_0_V_s = reg_8440.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_3_1_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_3_1_V_s = reg_7294.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_3_1_V_s = reg_8446.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_15_3_2_V_s() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_3_2_V_s = reg_7300.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_15_3_2_V_s = reg_8452.read();
    } else {
        grp_compute_fu_1783_wt_buff_15_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_0_0_V_r = reg_6226.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_0_0_V_r = reg_7378.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_0_1_V_r = reg_6232.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_0_1_V_r = reg_7384.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_0_2_V_r = reg_6238.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_0_2_V_r = reg_7390.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_1_0_V_r = reg_6244.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_1_0_V_r = reg_7396.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_1_1_V_r = reg_6250.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_1_1_V_r = reg_7402.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_1_2_V_r = reg_6256.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_1_2_V_r = reg_7408.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_2_0_V_r = reg_6262.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_2_0_V_r = reg_7414.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_2_1_V_r = reg_6268.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_2_1_V_r = reg_7420.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_2_2_V_r = reg_6274.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_2_2_V_r = reg_7426.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_3_0_V_r = reg_6280.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_3_0_V_r = reg_7432.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_3_1_V_r = reg_6286.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_3_1_V_r = reg_7438.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_1_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_3_2_V_r = reg_6292.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_1_3_2_V_r = reg_7444.read();
    } else {
        grp_compute_fu_1783_wt_buff_1_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_0_0_V_r = reg_6298.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_0_0_V_r = reg_7450.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_0_1_V_r = reg_6304.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_0_1_V_r = reg_7456.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_0_2_V_r = reg_6310.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_0_2_V_r = reg_7462.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_1_0_V_r = reg_6316.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_1_0_V_r = reg_7468.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_1_1_V_r = reg_6322.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_1_1_V_r = reg_7474.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_1_2_V_r = reg_6328.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_1_2_V_r = reg_7480.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_2_0_V_r = reg_6334.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_2_0_V_r = reg_7486.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_2_1_V_r = reg_6340.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_2_1_V_r = reg_7492.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_2_2_V_r = reg_6346.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_2_2_V_r = reg_7498.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_3_0_V_r = reg_6352.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_3_0_V_r = reg_7504.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_3_1_V_r = reg_6358.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_3_1_V_r = reg_7510.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_2_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_3_2_V_r = reg_6364.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_2_3_2_V_r = reg_7516.read();
    } else {
        grp_compute_fu_1783_wt_buff_2_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_0_0_V_r = reg_6370.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_0_0_V_r = reg_7522.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_0_1_V_r = reg_6376.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_0_1_V_r = reg_7528.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_0_2_V_r = reg_6382.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_0_2_V_r = reg_7534.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_1_0_V_r = reg_6388.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_1_0_V_r = reg_7540.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_1_1_V_r = reg_6394.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_1_1_V_r = reg_7546.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_1_2_V_r = reg_6400.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_1_2_V_r = reg_7552.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_2_0_V_r = reg_6406.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_2_0_V_r = reg_7558.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_2_1_V_r = reg_6412.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_2_1_V_r = reg_7564.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_2_2_V_r = reg_6418.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_2_2_V_r = reg_7570.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_3_0_V_r = reg_6424.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_3_0_V_r = reg_7576.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_3_1_V_r = reg_6430.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_3_1_V_r = reg_7582.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_3_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_3_2_V_r = reg_6436.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_3_3_2_V_r = reg_7588.read();
    } else {
        grp_compute_fu_1783_wt_buff_3_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_0_0_V_r = reg_6442.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_0_0_V_r = reg_7594.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_0_1_V_r = reg_6448.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_0_1_V_r = reg_7600.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_0_2_V_r = reg_6454.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_0_2_V_r = reg_7606.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_1_0_V_r = reg_6460.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_1_0_V_r = reg_7612.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_1_1_V_r = reg_6466.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_1_1_V_r = reg_7618.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_1_2_V_r = reg_6472.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_1_2_V_r = reg_7624.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_2_0_V_r = reg_6478.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_2_0_V_r = reg_7630.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_2_1_V_r = reg_6484.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_2_1_V_r = reg_7636.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_2_2_V_r = reg_6490.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_2_2_V_r = reg_7642.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_3_0_V_r = reg_6496.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_3_0_V_r = reg_7648.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_3_1_V_r = reg_6502.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_3_1_V_r = reg_7654.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_4_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_3_2_V_r = reg_6508.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_4_3_2_V_r = reg_7660.read();
    } else {
        grp_compute_fu_1783_wt_buff_4_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_0_0_V_r = reg_6514.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_0_0_V_r = reg_7666.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_0_1_V_r = reg_6520.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_0_1_V_r = reg_7672.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_0_2_V_r = reg_6526.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_0_2_V_r = reg_7678.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_1_0_V_r = reg_6532.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_1_0_V_r = reg_7684.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_1_1_V_r = reg_6538.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_1_1_V_r = reg_7690.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_1_2_V_r = reg_6544.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_1_2_V_r = reg_7696.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_2_0_V_r = reg_6550.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_2_0_V_r = reg_7702.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_2_1_V_r = reg_6556.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_2_1_V_r = reg_7708.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_2_2_V_r = reg_6562.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_2_2_V_r = reg_7714.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_3_0_V_r = reg_6568.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_3_0_V_r = reg_7720.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_3_1_V_r = reg_6574.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_3_1_V_r = reg_7726.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_5_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_3_2_V_r = reg_6580.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_5_3_2_V_r = reg_7732.read();
    } else {
        grp_compute_fu_1783_wt_buff_5_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_0_0_V_r = reg_6586.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_0_0_V_r = reg_7738.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_0_1_V_r = reg_6592.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_0_1_V_r = reg_7744.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_0_2_V_r = reg_6598.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_0_2_V_r = reg_7750.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_1_0_V_r = reg_6604.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_1_0_V_r = reg_7756.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_1_1_V_r = reg_6610.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_1_1_V_r = reg_7762.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_1_2_V_r = reg_6616.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_1_2_V_r = reg_7768.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_2_0_V_r = reg_6622.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_2_0_V_r = reg_7774.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_2_1_V_r = reg_6628.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_2_1_V_r = reg_7780.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_2_2_V_r = reg_6634.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_2_2_V_r = reg_7786.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_3_0_V_r = reg_6640.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_3_0_V_r = reg_7792.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_3_1_V_r = reg_6646.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_3_1_V_r = reg_7798.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_6_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_3_2_V_r = reg_6652.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_6_3_2_V_r = reg_7804.read();
    } else {
        grp_compute_fu_1783_wt_buff_6_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_0_0_V_r = reg_6658.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_0_0_V_r = reg_7810.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_0_1_V_r = reg_6664.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_0_1_V_r = reg_7816.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_0_2_V_r = reg_6670.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_0_2_V_r = reg_7822.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_1_0_V_r = reg_6676.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_1_0_V_r = reg_7828.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_1_1_V_r = reg_6682.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_1_1_V_r = reg_7834.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_1_2_V_r = reg_6688.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_1_2_V_r = reg_7840.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_2_0_V_r = reg_6694.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_2_0_V_r = reg_7846.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_2_1_V_r = reg_6700.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_2_1_V_r = reg_7852.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_2_2_V_r = reg_6706.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_2_2_V_r = reg_7858.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_3_0_V_r = reg_6712.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_3_0_V_r = reg_7864.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_3_1_V_r = reg_6718.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_3_1_V_r = reg_7870.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_7_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_3_2_V_r = reg_6724.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_7_3_2_V_r = reg_7876.read();
    } else {
        grp_compute_fu_1783_wt_buff_7_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_0_0_V_r = reg_6730.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_0_0_V_r = reg_7882.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_0_1_V_r = reg_6736.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_0_1_V_r = reg_7888.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_0_2_V_r = reg_6742.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_0_2_V_r = reg_7894.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_1_0_V_r = reg_6748.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_1_0_V_r = reg_7900.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_1_1_V_r = reg_6754.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_1_1_V_r = reg_7906.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_1_2_V_r = reg_6760.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_1_2_V_r = reg_7912.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_2_0_V_r = reg_6766.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_2_0_V_r = reg_7918.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_2_1_V_r = reg_6772.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_2_1_V_r = reg_7924.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_2_2_V_r = reg_6778.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_2_2_V_r = reg_7930.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_3_0_V_r = reg_6784.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_3_0_V_r = reg_7936.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_3_1_V_r = reg_6790.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_3_1_V_r = reg_7942.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_8_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_3_2_V_r = reg_6796.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_8_3_2_V_r = reg_7948.read();
    } else {
        grp_compute_fu_1783_wt_buff_8_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_0_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_0_0_V_r = reg_6802.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_0_0_V_r = reg_7954.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_0_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_0_1_V_r = reg_6808.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_0_1_V_r = reg_7960.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_0_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_0_2_V_r = reg_6814.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_0_2_V_r = reg_7966.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_1_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_1_0_V_r = reg_6820.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_1_0_V_r = reg_7972.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_1_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_1_1_V_r = reg_6826.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_1_1_V_r = reg_7978.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_1_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_1_2_V_r = reg_6832.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_1_2_V_r = reg_7984.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_2_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_2_0_V_r = reg_6838.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_2_0_V_r = reg_7990.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_2_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_2_1_V_r = reg_6844.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_2_1_V_r = reg_7996.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_2_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_2_2_V_r = reg_6850.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_2_2_V_r = reg_8002.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_3_0_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_3_0_V_r = reg_6856.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_3_0_V_r = reg_8008.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_3_1_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_3_1_V_r = reg_6862.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_3_1_V_r = reg_8014.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_compute_fu_1783_wt_buff_9_3_2_V_r() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_3_2_V_r = reg_6868.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
                (esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        grp_compute_fu_1783_wt_buff_9_3_2_V_r = reg_8020.read();
    } else {
        grp_compute_fu_1783_wt_buff_9_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_bias_fu_2437_ap_start() {
    grp_load_bias_fu_2437_ap_start = grp_load_bias_fu_2437_ap_start_reg.read();
}

void compute_output::thread_grp_load_input_fu_2414_ap_start() {
    grp_load_input_fu_2414_ap_start = grp_load_input_fu_2414_ap_start_reg.read();
}

void compute_output::thread_grp_load_input_fu_2414_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        grp_load_input_fu_2414_n = n_0_reg_1746.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_input_fu_2414_n = ap_const_lv32_0;
    } else {
        grp_load_input_fu_2414_n =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_ap_start() {
    grp_load_weight_fu_2015_ap_start = grp_load_weight_fu_2015_ap_start_reg.read();
}

void compute_output::thread_grp_load_weight_fu_2015_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())))) {
        grp_load_weight_fu_2015_n = n_0_reg_1746.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_n = ap_const_lv32_0;
    } else {
        grp_load_weight_fu_2015_n =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_0_0_V_r = reg_7306.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_0_0_V_r = reg_6154.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_0_1_V_r = reg_7312.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_0_1_V_r = reg_6160.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_0_2_V_r = reg_7318.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_0_2_V_r = reg_6166.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_1_0_V_r = reg_7324.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_1_0_V_r = reg_6172.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_1_1_V_r = reg_7330.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_1_1_V_r = reg_6178.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_1_2_V_r = reg_7336.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_1_2_V_r = reg_6184.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_2_0_V_r = reg_7342.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_2_0_V_r = reg_6190.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_2_1_V_r = reg_7348.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_2_1_V_r = reg_6196.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_2_2_V_r = reg_7354.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_2_2_V_r = reg_6202.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_3_0_V_r = reg_7360.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_3_0_V_r = reg_6208.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_3_1_V_r = reg_7366.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_3_1_V_r = reg_6214.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_0_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_3_2_V_r = reg_7372.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_0_3_2_V_r = reg_6220.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_0_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_0_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_0_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_0_0_V_s = reg_8026.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_0_0_V_s = reg_6874.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_0_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_0_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_0_1_V_s = reg_8032.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_0_1_V_s = reg_6880.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_0_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_0_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_0_2_V_s = reg_8038.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_0_2_V_s = reg_6886.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_0_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_1_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_1_0_V_s = reg_8044.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_1_0_V_s = reg_6892.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_1_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_1_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_1_1_V_s = reg_8050.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_1_1_V_s = reg_6898.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_1_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_1_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_1_2_V_s = reg_8056.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_1_2_V_s = reg_6904.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_1_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_2_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_2_0_V_s = reg_8062.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_2_0_V_s = reg_6910.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_2_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_2_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_2_1_V_s = reg_8068.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_2_1_V_s = reg_6916.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_2_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_2_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_2_2_V_s = reg_8074.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_2_2_V_s = reg_6922.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_2_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_3_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_3_0_V_s = reg_8080.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_3_0_V_s = reg_6928.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_3_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_3_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_3_1_V_s = reg_8086.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_3_1_V_s = reg_6934.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_3_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_10_3_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_3_2_V_s = reg_8092.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_10_3_2_V_s = reg_6940.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_10_3_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_10_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_0_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_0_0_V_s = reg_8098.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_0_0_V_s = reg_6946.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_0_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_0_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_0_1_V_s = reg_8104.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_0_1_V_s = reg_6952.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_0_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_0_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_0_2_V_s = reg_8110.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_0_2_V_s = reg_6958.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_0_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_1_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_1_0_V_s = reg_8116.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_1_0_V_s = reg_6964.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_1_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_1_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_1_1_V_s = reg_8122.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_1_1_V_s = reg_6970.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_1_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_1_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_1_2_V_s = reg_8128.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_1_2_V_s = reg_6976.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_1_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_2_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_2_0_V_s = reg_8134.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_2_0_V_s = reg_6982.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_2_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_2_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_2_1_V_s = reg_8140.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_2_1_V_s = reg_6988.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_2_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_2_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_2_2_V_s = reg_8146.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_2_2_V_s = reg_6994.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_2_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_3_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_3_0_V_s = reg_8152.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_3_0_V_s = reg_7000.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_3_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_3_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_3_1_V_s = reg_8158.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_3_1_V_s = reg_7006.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_3_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_11_3_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_3_2_V_s = reg_8164.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_11_3_2_V_s = reg_7012.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_11_3_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_11_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_0_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_0_0_V_s = reg_8170.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_0_0_V_s = reg_7018.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_0_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_0_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_0_1_V_s = reg_8176.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_0_1_V_s = reg_7024.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_0_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_0_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_0_2_V_s = reg_8182.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_0_2_V_s = reg_7030.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_0_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_1_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_1_0_V_s = reg_8188.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_1_0_V_s = reg_7036.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_1_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_1_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_1_1_V_s = reg_8194.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_1_1_V_s = reg_7042.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_1_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_1_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_1_2_V_s = reg_8200.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_1_2_V_s = reg_7048.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_1_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_2_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_2_0_V_s = reg_8206.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_2_0_V_s = reg_7054.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_2_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_2_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_2_1_V_s = reg_8212.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_2_1_V_s = reg_7060.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_2_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_2_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_2_2_V_s = reg_8218.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_2_2_V_s = reg_7066.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_2_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_3_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_3_0_V_s = reg_8224.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_3_0_V_s = reg_7072.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_3_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_3_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_3_1_V_s = reg_8230.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_3_1_V_s = reg_7078.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_3_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_12_3_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_3_2_V_s = reg_8236.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_12_3_2_V_s = reg_7084.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_12_3_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_12_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_0_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_0_0_V_s = reg_8242.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_0_0_V_s = reg_7090.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_0_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_0_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_0_1_V_s = reg_8248.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_0_1_V_s = reg_7096.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_0_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_0_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_0_2_V_s = reg_8254.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_0_2_V_s = reg_7102.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_0_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_1_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_1_0_V_s = reg_8260.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_1_0_V_s = reg_7108.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_1_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_1_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_1_1_V_s = reg_8266.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_1_1_V_s = reg_7114.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_1_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_1_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_1_2_V_s = reg_8272.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_1_2_V_s = reg_7120.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_1_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_2_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_2_0_V_s = reg_8278.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_2_0_V_s = reg_7126.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_2_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_2_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_2_1_V_s = reg_8284.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_2_1_V_s = reg_7132.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_2_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_2_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_2_2_V_s = reg_8290.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_2_2_V_s = reg_7138.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_2_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_3_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_3_0_V_s = reg_8296.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_3_0_V_s = reg_7144.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_3_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_3_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_3_1_V_s = reg_8302.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_3_1_V_s = reg_7150.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_3_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_13_3_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_3_2_V_s = reg_8308.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_13_3_2_V_s = reg_7156.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_13_3_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_13_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_0_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_0_0_V_s = reg_8314.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_0_0_V_s = reg_7162.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_0_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_0_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_0_1_V_s = reg_8320.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_0_1_V_s = reg_7168.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_0_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_0_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_0_2_V_s = reg_8326.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_0_2_V_s = reg_7174.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_0_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_1_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_1_0_V_s = reg_8332.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_1_0_V_s = reg_7180.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_1_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_1_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_1_1_V_s = reg_8338.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_1_1_V_s = reg_7186.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_1_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_1_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_1_2_V_s = reg_8344.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_1_2_V_s = reg_7192.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_1_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_2_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_2_0_V_s = reg_8350.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_2_0_V_s = reg_7198.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_2_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_2_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_2_1_V_s = reg_8356.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_2_1_V_s = reg_7204.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_2_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_2_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_2_2_V_s = reg_8362.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_2_2_V_s = reg_7210.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_2_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_3_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_3_0_V_s = reg_8368.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_3_0_V_s = reg_7216.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_3_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_3_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_3_1_V_s = reg_8374.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_3_1_V_s = reg_7222.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_3_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_14_3_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_3_2_V_s = reg_8380.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_14_3_2_V_s = reg_7228.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_14_3_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_14_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_0_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_0_0_V_s = reg_8386.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_0_0_V_s = reg_7234.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_0_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_0_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_0_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_0_1_V_s = reg_8392.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_0_1_V_s = reg_7240.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_0_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_0_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_0_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_0_2_V_s = reg_8398.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_0_2_V_s = reg_7246.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_0_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_0_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_1_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_1_0_V_s = reg_8404.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_1_0_V_s = reg_7252.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_1_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_1_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_1_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_1_1_V_s = reg_8410.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_1_1_V_s = reg_7258.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_1_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_1_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_1_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_1_2_V_s = reg_8416.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_1_2_V_s = reg_7264.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_1_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_1_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_2_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_2_0_V_s = reg_8422.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_2_0_V_s = reg_7270.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_2_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_2_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_2_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_2_1_V_s = reg_8428.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_2_1_V_s = reg_7276.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_2_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_2_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_2_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_2_2_V_s = reg_8434.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_2_2_V_s = reg_7282.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_2_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_2_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_3_0_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_3_0_V_s = reg_8440.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_3_0_V_s = reg_7288.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_3_0_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_3_0_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_3_1_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_3_1_V_s = reg_8446.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_3_1_V_s = reg_7294.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_3_1_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_3_1_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_15_3_2_V_s() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_3_2_V_s = reg_8452.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_15_3_2_V_s = reg_7300.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_15_3_2_V_s = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_15_3_2_V_s =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_0_0_V_r = reg_7378.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_0_0_V_r = reg_6226.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_0_1_V_r = reg_7384.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_0_1_V_r = reg_6232.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_0_2_V_r = reg_7390.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_0_2_V_r = reg_6238.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_1_0_V_r = reg_7396.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_1_0_V_r = reg_6244.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_1_1_V_r = reg_7402.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_1_1_V_r = reg_6250.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_1_2_V_r = reg_7408.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_1_2_V_r = reg_6256.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_2_0_V_r = reg_7414.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_2_0_V_r = reg_6262.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_2_1_V_r = reg_7420.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_2_1_V_r = reg_6268.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_2_2_V_r = reg_7426.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_2_2_V_r = reg_6274.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_3_0_V_r = reg_7432.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_3_0_V_r = reg_6280.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_3_1_V_r = reg_7438.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_3_1_V_r = reg_6286.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_1_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_3_2_V_r = reg_7444.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_1_3_2_V_r = reg_6292.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_1_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_1_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_0_0_V_r = reg_7450.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_0_0_V_r = reg_6298.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_0_1_V_r = reg_7456.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_0_1_V_r = reg_6304.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_0_2_V_r = reg_7462.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_0_2_V_r = reg_6310.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_1_0_V_r = reg_7468.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_1_0_V_r = reg_6316.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_1_1_V_r = reg_7474.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_1_1_V_r = reg_6322.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_1_2_V_r = reg_7480.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_1_2_V_r = reg_6328.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_2_0_V_r = reg_7486.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_2_0_V_r = reg_6334.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_2_1_V_r = reg_7492.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_2_1_V_r = reg_6340.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_2_2_V_r = reg_7498.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_2_2_V_r = reg_6346.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_3_0_V_r = reg_7504.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_3_0_V_r = reg_6352.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_3_1_V_r = reg_7510.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_3_1_V_r = reg_6358.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_2_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_3_2_V_r = reg_7516.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_2_3_2_V_r = reg_6364.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_2_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_2_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_0_0_V_r = reg_7522.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_0_0_V_r = reg_6370.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_0_1_V_r = reg_7528.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_0_1_V_r = reg_6376.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_0_2_V_r = reg_7534.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_0_2_V_r = reg_6382.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_1_0_V_r = reg_7540.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_1_0_V_r = reg_6388.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_1_1_V_r = reg_7546.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_1_1_V_r = reg_6394.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_1_2_V_r = reg_7552.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_1_2_V_r = reg_6400.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_2_0_V_r = reg_7558.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_2_0_V_r = reg_6406.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_2_1_V_r = reg_7564.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_2_1_V_r = reg_6412.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_2_2_V_r = reg_7570.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_2_2_V_r = reg_6418.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_3_0_V_r = reg_7576.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_3_0_V_r = reg_6424.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_3_1_V_r = reg_7582.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_3_1_V_r = reg_6430.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_3_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_3_2_V_r = reg_7588.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_3_3_2_V_r = reg_6436.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_3_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_3_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_0_0_V_r = reg_7594.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_0_0_V_r = reg_6442.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_0_1_V_r = reg_7600.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_0_1_V_r = reg_6448.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_0_2_V_r = reg_7606.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_0_2_V_r = reg_6454.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_1_0_V_r = reg_7612.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_1_0_V_r = reg_6460.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_1_1_V_r = reg_7618.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_1_1_V_r = reg_6466.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_1_2_V_r = reg_7624.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_1_2_V_r = reg_6472.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_2_0_V_r = reg_7630.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_2_0_V_r = reg_6478.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_2_1_V_r = reg_7636.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_2_1_V_r = reg_6484.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_2_2_V_r = reg_7642.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_2_2_V_r = reg_6490.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_3_0_V_r = reg_7648.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_3_0_V_r = reg_6496.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_3_1_V_r = reg_7654.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_3_1_V_r = reg_6502.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_4_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_3_2_V_r = reg_7660.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_4_3_2_V_r = reg_6508.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_4_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_4_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_0_0_V_r = reg_7666.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_0_0_V_r = reg_6514.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_0_1_V_r = reg_7672.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_0_1_V_r = reg_6520.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_0_2_V_r = reg_7678.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_0_2_V_r = reg_6526.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_1_0_V_r = reg_7684.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_1_0_V_r = reg_6532.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_1_1_V_r = reg_7690.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_1_1_V_r = reg_6538.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_1_2_V_r = reg_7696.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_1_2_V_r = reg_6544.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_2_0_V_r = reg_7702.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_2_0_V_r = reg_6550.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_2_1_V_r = reg_7708.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_2_1_V_r = reg_6556.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_2_2_V_r = reg_7714.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_2_2_V_r = reg_6562.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_3_0_V_r = reg_7720.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_3_0_V_r = reg_6568.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_3_1_V_r = reg_7726.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_3_1_V_r = reg_6574.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_5_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_3_2_V_r = reg_7732.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_5_3_2_V_r = reg_6580.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_5_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_5_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_0_0_V_r = reg_7738.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_0_0_V_r = reg_6586.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_0_1_V_r = reg_7744.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_0_1_V_r = reg_6592.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_0_2_V_r = reg_7750.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_0_2_V_r = reg_6598.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_1_0_V_r = reg_7756.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_1_0_V_r = reg_6604.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_1_1_V_r = reg_7762.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_1_1_V_r = reg_6610.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_1_2_V_r = reg_7768.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_1_2_V_r = reg_6616.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_2_0_V_r = reg_7774.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_2_0_V_r = reg_6622.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_2_1_V_r = reg_7780.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_2_1_V_r = reg_6628.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_2_2_V_r = reg_7786.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_2_2_V_r = reg_6634.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_3_0_V_r = reg_7792.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_3_0_V_r = reg_6640.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_3_1_V_r = reg_7798.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_3_1_V_r = reg_6646.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_6_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_3_2_V_r = reg_7804.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_6_3_2_V_r = reg_6652.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_6_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_6_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_0_0_V_r = reg_7810.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_0_0_V_r = reg_6658.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_0_1_V_r = reg_7816.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_0_1_V_r = reg_6664.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_0_2_V_r = reg_7822.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_0_2_V_r = reg_6670.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_1_0_V_r = reg_7828.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_1_0_V_r = reg_6676.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_1_1_V_r = reg_7834.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_1_1_V_r = reg_6682.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_1_2_V_r = reg_7840.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_1_2_V_r = reg_6688.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_2_0_V_r = reg_7846.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_2_0_V_r = reg_6694.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_2_1_V_r = reg_7852.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_2_1_V_r = reg_6700.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_2_2_V_r = reg_7858.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_2_2_V_r = reg_6706.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_3_0_V_r = reg_7864.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_3_0_V_r = reg_6712.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_3_1_V_r = reg_7870.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_3_1_V_r = reg_6718.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_7_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_3_2_V_r = reg_7876.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_7_3_2_V_r = reg_6724.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_7_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_7_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_0_0_V_r = reg_7882.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_0_0_V_r = reg_6730.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_0_1_V_r = reg_7888.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_0_1_V_r = reg_6736.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_0_2_V_r = reg_7894.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_0_2_V_r = reg_6742.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_1_0_V_r = reg_7900.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_1_0_V_r = reg_6748.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_1_1_V_r = reg_7906.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_1_1_V_r = reg_6754.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_1_2_V_r = reg_7912.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_1_2_V_r = reg_6760.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_2_0_V_r = reg_7918.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_2_0_V_r = reg_6766.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_2_1_V_r = reg_7924.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_2_1_V_r = reg_6772.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_2_2_V_r = reg_7930.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_2_2_V_r = reg_6778.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_3_0_V_r = reg_7936.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_3_0_V_r = reg_6784.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_3_1_V_r = reg_7942.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_3_1_V_r = reg_6790.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_8_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_3_2_V_r = reg_7948.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_8_3_2_V_r = reg_6796.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_8_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_8_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_0_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_0_0_V_r = reg_7954.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_0_0_V_r = reg_6802.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_0_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_0_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_0_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_0_1_V_r = reg_7960.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_0_1_V_r = reg_6808.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_0_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_0_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_0_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_0_2_V_r = reg_7966.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_0_2_V_r = reg_6814.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_0_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_0_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_1_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_1_0_V_r = reg_7972.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_1_0_V_r = reg_6820.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_1_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_1_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_1_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_1_1_V_r = reg_7978.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_1_1_V_r = reg_6826.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_1_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_1_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_1_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_1_2_V_r = reg_7984.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_1_2_V_r = reg_6832.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_1_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_1_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_2_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_2_0_V_r = reg_7990.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_2_0_V_r = reg_6838.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_2_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_2_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_2_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_2_1_V_r = reg_7996.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_2_1_V_r = reg_6844.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_2_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_2_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_2_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_2_2_V_r = reg_8002.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_2_2_V_r = reg_6850.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_2_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_2_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_3_0_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_3_0_V_r = reg_8008.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_3_0_V_r = reg_6856.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_3_0_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_3_0_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_3_1_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_3_1_V_r = reg_8014.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_3_1_V_r = reg_6862.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_3_1_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_3_1_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_grp_load_weight_fu_2015_wt_buff_9_3_2_V_r() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_3_2_V_r = reg_8020.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read()))) {
        grp_load_weight_fu_2015_wt_buff_9_3_2_V_r = reg_6868.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_load_weight_fu_2015_wt_buff_9_3_2_V_r = ap_const_lv16_0;
    } else {
        grp_load_weight_fu_2015_wt_buff_9_3_2_V_r =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void compute_output::thread_icmp_ln106_fu_8463_p2() {
    icmp_ln106_fu_8463_p2 = (!n_0_reg_1746.read().is_01() || !ch_in.read().is_01())? sc_lv<1>(): (sc_bigint<32>(n_0_reg_1746.read()) < sc_bigint<32>(ch_in.read()));
}

void compute_output::thread_m_axi_in_V_ARADDR() {
    m_axi_in_V_ARADDR = grp_load_input_fu_2414_m_axi_in_V_ARADDR.read();
}

void compute_output::thread_m_axi_in_V_ARBURST() {
    m_axi_in_V_ARBURST = grp_load_input_fu_2414_m_axi_in_V_ARBURST.read();
}

void compute_output::thread_m_axi_in_V_ARCACHE() {
    m_axi_in_V_ARCACHE = grp_load_input_fu_2414_m_axi_in_V_ARCACHE.read();
}

void compute_output::thread_m_axi_in_V_ARID() {
    m_axi_in_V_ARID = grp_load_input_fu_2414_m_axi_in_V_ARID.read();
}

void compute_output::thread_m_axi_in_V_ARLEN() {
    m_axi_in_V_ARLEN = grp_load_input_fu_2414_m_axi_in_V_ARLEN.read();
}

void compute_output::thread_m_axi_in_V_ARLOCK() {
    m_axi_in_V_ARLOCK = grp_load_input_fu_2414_m_axi_in_V_ARLOCK.read();
}

void compute_output::thread_m_axi_in_V_ARPROT() {
    m_axi_in_V_ARPROT = grp_load_input_fu_2414_m_axi_in_V_ARPROT.read();
}

void compute_output::thread_m_axi_in_V_ARQOS() {
    m_axi_in_V_ARQOS = grp_load_input_fu_2414_m_axi_in_V_ARQOS.read();
}

void compute_output::thread_m_axi_in_V_ARREGION() {
    m_axi_in_V_ARREGION = grp_load_input_fu_2414_m_axi_in_V_ARREGION.read();
}

void compute_output::thread_m_axi_in_V_ARSIZE() {
    m_axi_in_V_ARSIZE = grp_load_input_fu_2414_m_axi_in_V_ARSIZE.read();
}

void compute_output::thread_m_axi_in_V_ARUSER() {
    m_axi_in_V_ARUSER = grp_load_input_fu_2414_m_axi_in_V_ARUSER.read();
}

void compute_output::thread_m_axi_in_V_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln106_fu_8463_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_phi_mux_pp_0_phi_fu_1762_p4.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln106_fu_8463_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, ap_phi_mux_pp_0_phi_fu_1762_p4.read())))) {
        m_axi_in_V_ARVALID = grp_load_input_fu_2414_m_axi_in_V_ARVALID.read();
    } else {
        m_axi_in_V_ARVALID = ap_const_logic_0;
    }
}

void compute_output::thread_m_axi_in_V_AWADDR() {
    m_axi_in_V_AWADDR = ap_const_lv32_0;
}

void compute_output::thread_m_axi_in_V_AWBURST() {
    m_axi_in_V_AWBURST = ap_const_lv2_0;
}

void compute_output::thread_m_axi_in_V_AWCACHE() {
    m_axi_in_V_AWCACHE = ap_const_lv4_0;
}

void compute_output::thread_m_axi_in_V_AWID() {
    m_axi_in_V_AWID = ap_const_lv1_0;
}

void compute_output::thread_m_axi_in_V_AWLEN() {
    m_axi_in_V_AWLEN = ap_const_lv32_0;
}

void compute_output::thread_m_axi_in_V_AWLOCK() {
    m_axi_in_V_AWLOCK = ap_const_lv2_0;
}

void compute_output::thread_m_axi_in_V_AWPROT() {
    m_axi_in_V_AWPROT = ap_const_lv3_0;
}

void compute_output::thread_m_axi_in_V_AWQOS() {
    m_axi_in_V_AWQOS = ap_const_lv4_0;
}

void compute_output::thread_m_axi_in_V_AWREGION() {
    m_axi_in_V_AWREGION = ap_const_lv4_0;
}

void compute_output::thread_m_axi_in_V_AWSIZE() {
    m_axi_in_V_AWSIZE = ap_const_lv3_0;
}

void compute_output::thread_m_axi_in_V_AWUSER() {
    m_axi_in_V_AWUSER = ap_const_lv1_0;
}

void compute_output::thread_m_axi_in_V_AWVALID() {
    m_axi_in_V_AWVALID = ap_const_logic_0;
}

void compute_output::thread_m_axi_in_V_BREADY() {
    m_axi_in_V_BREADY = ap_const_logic_0;
}

void compute_output::thread_m_axi_in_V_RREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln106_fu_8463_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_phi_mux_pp_0_phi_fu_1762_p4.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln106_fu_8463_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, ap_phi_mux_pp_0_phi_fu_1762_p4.read())))) {
        m_axi_in_V_RREADY = grp_load_input_fu_2414_m_axi_in_V_RREADY.read();
    } else {
        m_axi_in_V_RREADY = ap_const_logic_0;
    }
}

void compute_output::thread_m_axi_in_V_WDATA() {
    m_axi_in_V_WDATA = ap_const_lv16_0;
}

void compute_output::thread_m_axi_in_V_WID() {
    m_axi_in_V_WID = ap_const_lv1_0;
}

void compute_output::thread_m_axi_in_V_WLAST() {
    m_axi_in_V_WLAST = ap_const_logic_0;
}

void compute_output::thread_m_axi_in_V_WSTRB() {
    m_axi_in_V_WSTRB = ap_const_lv2_0;
}

void compute_output::thread_m_axi_in_V_WUSER() {
    m_axi_in_V_WUSER = ap_const_lv1_0;
}

void compute_output::thread_m_axi_in_V_WVALID() {
    m_axi_in_V_WVALID = ap_const_logic_0;
}

void compute_output::thread_m_axi_weight_V_ARADDR() {
    m_axi_weight_V_ARADDR = grp_load_weight_fu_2015_m_axi_weight_V_ARADDR.read();
}

void compute_output::thread_m_axi_weight_V_ARBURST() {
    m_axi_weight_V_ARBURST = grp_load_weight_fu_2015_m_axi_weight_V_ARBURST.read();
}

void compute_output::thread_m_axi_weight_V_ARCACHE() {
    m_axi_weight_V_ARCACHE = grp_load_weight_fu_2015_m_axi_weight_V_ARCACHE.read();
}

void compute_output::thread_m_axi_weight_V_ARID() {
    m_axi_weight_V_ARID = grp_load_weight_fu_2015_m_axi_weight_V_ARID.read();
}

void compute_output::thread_m_axi_weight_V_ARLEN() {
    m_axi_weight_V_ARLEN = grp_load_weight_fu_2015_m_axi_weight_V_ARLEN.read();
}

void compute_output::thread_m_axi_weight_V_ARLOCK() {
    m_axi_weight_V_ARLOCK = grp_load_weight_fu_2015_m_axi_weight_V_ARLOCK.read();
}

void compute_output::thread_m_axi_weight_V_ARPROT() {
    m_axi_weight_V_ARPROT = grp_load_weight_fu_2015_m_axi_weight_V_ARPROT.read();
}

void compute_output::thread_m_axi_weight_V_ARQOS() {
    m_axi_weight_V_ARQOS = grp_load_weight_fu_2015_m_axi_weight_V_ARQOS.read();
}

void compute_output::thread_m_axi_weight_V_ARREGION() {
    m_axi_weight_V_ARREGION = grp_load_weight_fu_2015_m_axi_weight_V_ARREGION.read();
}

void compute_output::thread_m_axi_weight_V_ARSIZE() {
    m_axi_weight_V_ARSIZE = grp_load_weight_fu_2015_m_axi_weight_V_ARSIZE.read();
}

void compute_output::thread_m_axi_weight_V_ARUSER() {
    m_axi_weight_V_ARUSER = grp_load_weight_fu_2015_m_axi_weight_V_ARUSER.read();
}

void compute_output::thread_m_axi_weight_V_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln106_fu_8463_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_phi_mux_pp_0_phi_fu_1762_p4.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln106_fu_8463_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, ap_phi_mux_pp_0_phi_fu_1762_p4.read())))) {
        m_axi_weight_V_ARVALID = grp_load_weight_fu_2015_m_axi_weight_V_ARVALID.read();
    } else {
        m_axi_weight_V_ARVALID = ap_const_logic_0;
    }
}

void compute_output::thread_m_axi_weight_V_AWADDR() {
    m_axi_weight_V_AWADDR = ap_const_lv32_0;
}

void compute_output::thread_m_axi_weight_V_AWBURST() {
    m_axi_weight_V_AWBURST = ap_const_lv2_0;
}

void compute_output::thread_m_axi_weight_V_AWCACHE() {
    m_axi_weight_V_AWCACHE = ap_const_lv4_0;
}

void compute_output::thread_m_axi_weight_V_AWID() {
    m_axi_weight_V_AWID = ap_const_lv1_0;
}

void compute_output::thread_m_axi_weight_V_AWLEN() {
    m_axi_weight_V_AWLEN = ap_const_lv32_0;
}

void compute_output::thread_m_axi_weight_V_AWLOCK() {
    m_axi_weight_V_AWLOCK = ap_const_lv2_0;
}

void compute_output::thread_m_axi_weight_V_AWPROT() {
    m_axi_weight_V_AWPROT = ap_const_lv3_0;
}

void compute_output::thread_m_axi_weight_V_AWQOS() {
    m_axi_weight_V_AWQOS = ap_const_lv4_0;
}

void compute_output::thread_m_axi_weight_V_AWREGION() {
    m_axi_weight_V_AWREGION = ap_const_lv4_0;
}

void compute_output::thread_m_axi_weight_V_AWSIZE() {
    m_axi_weight_V_AWSIZE = ap_const_lv3_0;
}

void compute_output::thread_m_axi_weight_V_AWUSER() {
    m_axi_weight_V_AWUSER = ap_const_lv1_0;
}

void compute_output::thread_m_axi_weight_V_AWVALID() {
    m_axi_weight_V_AWVALID = ap_const_logic_0;
}

void compute_output::thread_m_axi_weight_V_BREADY() {
    m_axi_weight_V_BREADY = ap_const_logic_0;
}

void compute_output::thread_m_axi_weight_V_RREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, pp_0_reg_1758.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln106_fu_8463_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_phi_mux_pp_0_phi_fu_1762_p4.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln106_fu_8463_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, ap_phi_mux_pp_0_phi_fu_1762_p4.read())))) {
        m_axi_weight_V_RREADY = grp_load_weight_fu_2015_m_axi_weight_V_RREADY.read();
    } else {
        m_axi_weight_V_RREADY = ap_const_logic_0;
    }
}

void compute_output::thread_m_axi_weight_V_WDATA() {
    m_axi_weight_V_WDATA = ap_const_lv16_0;
}

void compute_output::thread_m_axi_weight_V_WID() {
    m_axi_weight_V_WID = ap_const_lv1_0;
}

void compute_output::thread_m_axi_weight_V_WLAST() {
    m_axi_weight_V_WLAST = ap_const_logic_0;
}

void compute_output::thread_m_axi_weight_V_WSTRB() {
    m_axi_weight_V_WSTRB = ap_const_lv2_0;
}

void compute_output::thread_m_axi_weight_V_WUSER() {
    m_axi_weight_V_WUSER = ap_const_lv1_0;
}

void compute_output::thread_m_axi_weight_V_WVALID() {
    m_axi_weight_V_WVALID = ap_const_logic_0;
}

void compute_output::thread_n_fu_9428_p2() {
    n_fu_9428_p2 = (!n_0_reg_1746.read().is_01() || !ap_const_lv32_4.is_01())? sc_lv<32>(): (sc_biguint<32>(n_0_reg_1746.read()) + sc_biguint<32>(ap_const_lv32_4));
}

void compute_output::thread_trunc_ln102_fu_8458_p1() {
    trunc_ln102_fu_8458_p1 = bias_buff_V_offset.read().range(29-1, 0);
}

}

