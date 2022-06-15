#include"xfc.h"
#include"xconv1d.h"

static XFc fc_inst;
static XConv1d conv_inst;

void fc_init();

void pl_fc(short* in,short *weight,short* bias,short* out);
//
void conv_init();

void pl_conv1d(short* in,short* weight,short* bias,short* out,int ch_in,int ch_out,int size,int pool);

