#include<ap_fixed.h>
#include<cstring>
#define Tn 4
#define Tp 150   //must be even
#define Tm 16
typedef ap_fixed<16,6,AP_RND,AP_SAT> data_t;

void conv1d(data_t* in,data_t* weight,data_t* bias,data_t* out,int ch_in,int ch_out,int size,int pool);
