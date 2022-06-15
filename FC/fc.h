#include<ap_fixed.h>

//总位数16位，顶点小数位前6位，后10位，
//AP_RND：示该值应舍入到最接近ap_ [u]定点类型的可表示值
//AP_SAT 取到剩余位数能表示的最大的值
typedef ap_fixed<16,6,AP_RND,AP_SAT> data_t;

void fc(data_t* in,data_t* weight,data_t* bias,data_t* out);
