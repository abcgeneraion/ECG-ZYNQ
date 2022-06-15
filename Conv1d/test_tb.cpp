#include"conv1d.h"
#include<iostream>
#define N 16
#define M 32
#define P 300

using namespace std;

void baseline_conv(data_t* in,data_t* weight,data_t* bias,data_t* out,int ch_in,int ch_out,int size){
	//k=3,s=1,p=1
	for(int i=0;i<size;i++)
		for(int m=0;m<ch_out;m++){
			data_t tmp=bias[m];
			for(int k=0;k<3;k++)
				for(int n=0;n<ch_in;n++){
					if(i+k>=1&&i+k<size+1)
						tmp+=in[n*size+(i+k-1)]*weight[m*ch_in*3+n*3+k];
				}
			out[m*size+i]=(tmp>(data_t)0)?tmp:(data_t)0;
			}
}

void baseline_pool(data_t* in,data_t* out,int ch,int size){
	for(int m=0;m<ch;m++)
		for(int i=0;i<size/2;i++){
			data_t tmp1=in[m*size+i*2];
			data_t tmp2=in[m*size+i*2+1];
			out[m*size/2+i]=(tmp1>tmp2)?tmp1:tmp2;
		}
}

void baseline(data_t* in,data_t* weight,data_t* bias,data_t* out,int ch_in,int ch_out,int size,int pool){
	data_t* tmp=new data_t[ch_out*size];
	if(pool==1){
		baseline_conv(in,weight,bias,tmp,ch_in,ch_out,size);
		baseline_pool(tmp,out,ch_out,size);
	}
	else{
		baseline_conv(in,weight,bias,out,ch_in,ch_out,size);
	}
}

void random_init(data_t* x,int len){
	for(int i=0;i<len;i++){
		x[i]=(data_t)((rand()%2048-1024)/1024.0);
	}
}

int main(){
	int pool=1;
	data_t in[N][P];
	data_t weight[M][N][3];
	data_t bias[M];
	data_t out1[M][P/(pool+1)];
	data_t out2[M][P/(pool+1)];
	random_init((data_t*)in,N*P);
	random_init((data_t*)weight,M*N*3);
	random_init((data_t*)bias,M);
    //
	baseline((data_t*)in,(data_t*)weight,(data_t*)bias,(data_t*)out2,N,M,P,pool);
	conv1d((data_t*)in,(data_t*)weight,(data_t*)bias,(data_t*)out1,N,M,P,pool);
	//
	for(int m=0;m<M;m++)
		for(int i=0;i<P/(pool+1);i++){
			if(out1[m][i]!=out2[m][i]){
				cout<<"error"<<endl;
				return -1;
			}
			//else
			//cout<<out1[m][i]<<","<<out2[m][i]<<endl;
		}
	cout<<"right"<<endl;
	return 0;
}
