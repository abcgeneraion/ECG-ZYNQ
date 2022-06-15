#include"fc.h"

void fc(data_t* in,data_t* weight,data_t* bias,data_t* out){
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
#pragma HLS INTERFACE m_axi depth=100 port=out offset=slave bundle=OUT
#pragma HLS INTERFACE m_axi depth=100 port=bias offset=slave bundle=B
#pragma HLS INTERFACE m_axi depth=100 port=weight offset=slave bundle=W
#pragma HLS INTERFACE m_axi depth=100 port=in offset=slave bundle=IN
	//75*64---->5
for(int i=0;i<5;i++){
		data_t tmp=bias[i];
Loop2:
		for(int j=0;j<75*64;j++){
			//向量相乘
			tmp+=in[j]*weight[i*64*75+j];
		}
		//得到最终各分类的权重分数
		*(out+i)=tmp;
	}
}
