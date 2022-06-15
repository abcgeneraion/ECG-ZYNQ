#include"pl.h"

void fc_init(){
	XFc_Initialize(&fc_inst,0);
}

void pl_fc(short* in,short *weight,short* bias,short* out){
     XFc_Set_in_V(&fc_inst, (u32)in);
     XFc_Set_weight_V(&fc_inst, (u32)weight);
     XFc_Set_bias_V(&fc_inst, (u32)bias);
     XFc_Set_out_V(&fc_inst, (u32)out);
     //
     XFc_Start(&fc_inst);
     while(XFc_IsDone(&fc_inst)==0);
}
//
void conv_init(){
    XConv1d_Initialize(&conv_inst, 0);
}

void pl_conv1d(short* in,short* weight,short* bias,short* out,int ch_in,int ch_out,int size,int pool){
	XConv1d_Set_in_V(&conv_inst, (u32)in);
	XConv1d_Set_weight_V(&conv_inst, (u32)weight);
	XConv1d_Set_bias_V(&conv_inst, (u32)bias);
	XConv1d_Set_out_V(&conv_inst, (u32)out);
	XConv1d_Set_ch_in(&conv_inst, (u32)ch_in);
	XConv1d_Set_ch_out(&conv_inst, (u32)ch_out);
	XConv1d_Set_size(&conv_inst, (u32)size);
	XConv1d_Set_pool(&conv_inst, (u32)pool);
	//
	XConv1d_Start(&conv_inst);
	while(XConv1d_IsDone(&conv_inst)==0);
}
