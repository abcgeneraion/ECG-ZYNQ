#include"conv1d.h"
#include<assert.h>
/*
 *
 * */
//加载隐藏层的输入数据
void load_input(data_t* in,data_t buff_in[Tn][Tp+3-1],int n,int p,int size){
	//load in[n:n+Tn][p:p+Tp+2]
	for(int nn=0;nn<Tn;nn++)
		for(int pp=0;pp<Tp+2;pp++){
#pragma HLS PIPELINE

			data_t tmp=*(in+(n+nn)*size+(p+pp-1));
			if(p+pp>=1&&p+pp<size+1)
				buff_in[nn][pp]=tmp;
			else
			  	buff_in[nn][pp]=(data_t)0;
		}
}
//加载该层的卷积核权重信息
void load_weight(data_t* weight,data_t wt_buff[Tm][Tn][3],int n,int m,int ch_in){
	//load W[m:m+Tm][n:n+Tn][:]
	for(int mm=0;mm<Tm;mm++)
		for(int nn=0;nn<Tn;nn++){
			for(int k=0;k<3;k++){
#pragma HLS PIPELINE
				data_t tmp=*(weight+(m+mm)*ch_in*3+(n+nn)*3+k);
				if(n+nn<ch_in)
					wt_buff[mm][nn][k]=tmp;
				else
					wt_buff[mm][nn][k]=(data_t)0;
			}
		}
}
//进行卷积运算
void compute(data_t buff_in[Tn][Tp+2],data_t wt_buff[Tm][Tn][3],data_t buff_out[Tm][Tp]){
	for(int k=0;k<3;k++)
		for(int i=0;i<Tp;i++){
#pragma HLS PIPELINE
	        for(int m=0;m<Tm;m++){
				for(int n=0;n<Tn;n++){
					data_t psum=buff_out[m][i];
					data_t mult=wt_buff[m][n][k]*buff_in[n][i+k];
					data_t sum=psum+mult;
					buff_out[m][i]=sum;
				}
			}
		}
}
//加载该层的偏置量信息
void load_bias(data_t buff_out[Tm][Tp],data_t bias_buff[Tm]){
	for(int i=0;i<Tp;i++){
		for(int m=0;m<Tm;m++){
			buff_out[m][i]=bias_buff[m];
		}
	}
}
//将计算的输出重新写回BRam
void write_back(data_t* out,data_t buff_out[Tm][Tp],int m,int p,int size,int ch_out,int pool){
	//判断卷积过后需不需要最大池化
	if(pool==0){
		for(int mm=0;mm<Tm;mm++)
			for(int pp=0;pp<Tp;pp++){
#pragma HLS PIPELINE
				//在此处完成了relu激活函数的操作
				if(p+pp<size&&m+mm<ch_out){
					data_t tmp=(buff_out[mm][pp]>(data_t)0)?buff_out[mm][pp]:(data_t)0;
					*(out+(m+mm)*size+(p+pp))=tmp;
				}
			}
	}
	else{                               //out[m:m+Tm][p/2:p/2+Tp/2]
		for(int mm=0;mm<Tm;mm++)
			for(int pp=0;pp<Tp/2;pp++){
#pragma HLS PIPELINE
				data_t tmp1=buff_out[mm][pp*2];
				data_t tmp2=buff_out[mm][pp*2+1];
				data_t max_val1=(tmp1>tmp2)?tmp1:tmp2;
				data_t max_val2=(max_val1>(data_t)0)?max_val1:(data_t)0;
				if(p/2+pp<size/2&&m+mm<ch_out)
					*(out+(m+mm)*size/2+(p/2+pp))=max_val2;
			}
	}
}
//计算整个卷积模块的输出
void compute_output(data_t* in,data_t* weight,data_t buff_out[Tm][Tp],data_t bias_buff[Tm],
		int ch_in,int m,int p,int size){
	//compute out[m:m+Tm][p:p+Tp]
	data_t buff_in1[Tn][Tp+2];
#pragma HLS ARRAY_PARTITION variable=buff_in1 complete dim=1
	data_t buff_in2[Tn][Tp+2];
#pragma HLS ARRAY_PARTITION variable=buff_in2 complete dim=1
	data_t wt_buff1[Tm][Tn][3];
#pragma HLS ARRAY_PARTITION variable=wt_buff1 complete dim=2
#pragma HLS ARRAY_PARTITION variable=wt_buff1 complete dim=1
	data_t wt_buff2[Tm][Tn][3];
#pragma HLS ARRAY_PARTITION variable=wt_buff2 complete dim=2
#pragma HLS ARRAY_PARTITION variable=wt_buff2 complete dim=1
	int n=0;
	bool pp=true;
	//
	load_bias(buff_out,bias_buff);
	load_input(in,buff_in1,n,p,size);
	load_weight(weight,wt_buff1,n,m,ch_in);
LOOP:
	for(n=Tn;n<ch_in;n+=Tn){
		if(pp){
			load_input(in,buff_in2,n,p,size);
			load_weight(weight,wt_buff2,n,m,ch_in);
			compute(buff_in1,wt_buff1,buff_out);
			pp=false;
		}
		else{
		    load_input(in,buff_in1,n,p,size);
		    load_weight(weight,wt_buff1,n,m,ch_in);
		    compute(buff_in2,wt_buff2,buff_out);
			pp=true;
		}
	}
	if(pp){
		compute(buff_in1,wt_buff1,buff_out);
	}
	else{
		compute(buff_in2,wt_buff2,buff_out);
	}
}
//更新block memory里的指针
void update_block(int m,int p,int &next_m,int &next_p,int size){
	if(p+Tp>=size){
		next_m=m+Tm;
		next_p=0;
	}
	else{
		next_m=m;
		next_p=p+Tp;
	}
}
//整个一维卷积的代码逻辑
void conv1d(data_t* in,data_t* weight,data_t* bias,data_t* out,int ch_in,int ch_out,int size,int pool){
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
#pragma HLS INTERFACE s_axilite port=pool bundle=CTRL
#pragma HLS INTERFACE s_axilite port=size bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ch_out bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ch_in bundle=CTRL
#pragma HLS INTERFACE m_axi depth=100 port=out offset=slave bundle=OUT
#pragma HLS INTERFACE m_axi depth=100 port=bias offset=slave bundle=B
#pragma HLS INTERFACE m_axi depth=100 port=weight offset=slave bundle=W
#pragma HLS INTERFACE m_axi depth=100 port=in offset=slave bundle=IN
	data_t buff_out1[Tm][Tp];
#pragma HLS ARRAY_PARTITION variable=buff_out1 complete dim=1
	data_t buff_out2[Tm][Tp];
#pragma HLS ARRAY_PARTITION variable=buff_out2 complete dim=1
	data_t bias_buff[64][Tm];
#pragma HLS ARRAY_PARTITION variable=bias_buff complete dim=2
	int m,p,next_m,next_p;
	m=0;
	p=0;
	next_m=0;
	next_p=0;
	int osize=size;
	bool pp=true;

	//C 库函数 void *memcpy(void *str1, const void *str2, size_t n)
	//从存储区 str2 复制 n 个字节到存储区 str1。
	memcpy((void*)bias_buff,(const void*)bias,sizeof(data_t)*ch_out);
//	memcpy((void*)bias_buff,(const void*)bias,sizeof(data_t)*32);
	compute_output(in,weight,buff_out1,bias_buff[m/Tm],ch_in,m,p,size);
LOOP2:
	while(true){
		update_block(m,p,next_m,next_p,osize);
		if(next_m>=ch_out)
			break;
		if(pp){
			//计算buff2的数据，写回buff1的数据
			compute_output(in,weight,buff_out2,bias_buff[next_m/Tm],ch_in,next_m,next_p,size);
			write_back(out,buff_out1,m,p,size,ch_out,pool);
			pp=false;
		}
		else{
            compute_output(in,weight,buff_out1,bias_buff[next_m/Tm],ch_in,next_m,next_p,size);
            write_back(out,buff_out2,m,p,size,ch_out,pool);
			pp=true;
		}
		m=next_m;
		p=next_p;
	}
	if(pp){
        write_back(out,buff_out1,m,p,size,ch_out,pool);
	}
	else{
        write_back(out,buff_out2,m,p,size,ch_out,pool);
	}
}
