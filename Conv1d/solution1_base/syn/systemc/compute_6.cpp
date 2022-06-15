#include "compute.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void compute::thread_zext_ln43_fu_2085_p1() {
    zext_ln43_fu_2085_p1 = esl_zext<64,8>(add_ln43_fu_2079_p2.read());
}

}

