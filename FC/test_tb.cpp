#include"fc.h"
#include<iostream>
using namespace std;

void fc_baseline(data_t* in,data_t* weight,data_t* bias,data_t* out,int nin,int nout){
	for(int i=0;i<nout;i++){
		data_t tmp=bias[i];
		for(int j=0;j<nin;j++){
			tmp+=weight[i*nin+j]*in[j];
		}
		out[i]=tmp;
	}
}

void random_init(data_t* x,int len){
	for(int i=0;i<len;i++){
		x[i]=(data_t)((rand()%2048-1024)/1024.0);
	}
}

int main(){
	data_t in[64*75];
	data_t weight[5][64*75];
	data_t bias[5];
	data_t out1[5];
	data_t out2[5];
	random_init((data_t*)in,75*64);
	random_init((data_t*)weight,75*64*5);
	random_init((data_t*)bias,5);
	//
	fc_baseline((data_t*)in,(data_t*)weight,(data_t*)bias,(data_t*)out1,64*75,5);
	fc((data_t*)in,(data_t*)weight,(data_t*)bias,(data_t*)out2);
	for(int i=0;i<5;i++){
		cout<<out1[i]<<","<<out2[i]<<endl;
	}
	return 0;
}
