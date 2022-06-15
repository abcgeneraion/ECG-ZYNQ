#include<cstdio>
#include<cstdlib>
#include<string>
#include"sd_io.h"
#include"pl.h"
#include"xil_cache.h"
using namespace std;

void pl_inference(int n){
     //variables
     data_t* data=new data_t[n*1*300];
     long long* label=new long long[n];
     data_t* w1=new data_t[16*1*3];
     data_t* b1=new data_t[16];
     data_t* w2=new data_t[32*16*3];
     data_t* b2=new data_t[32];
     data_t* w3=new data_t[32*32*3];
     data_t* b3=new data_t[32];
     data_t* w4=new data_t[64*32*3];
     data_t* b4=new data_t[64];
     data_t* w5=new data_t[64*64*3];
     data_t* b5=new data_t[64];
     data_t* wf=new data_t[5*64*75];
     data_t* bf=new data_t[5];
     data_t* buff1=new data_t[100000];
     data_t* buff2=new data_t[100000];
     //read weight and data
     read_params(data,"ecg\\data.bin",n*300);
     read_label(label,"ecg\\label.bin",n);
     read_para	ms(w1,"ecg\\conv1.weight.bin",16*1*3);
     read_params(b1,"ecg\\conv1.bias.bin",16);
     read_params(w2,"ecg\\conv2.weight.bin",32*16*3);
     read_params(b2,"ecg\\conv2.bias.bin",32);
     read_params(w3,"ecg\\conv3.weight.bin",32*32*3);
     read_params(b3,"ecg\\conv3.bias.bin",32);
     read_params(w4,"ecg\\conv4.weight.bin",64*32*3);
     read_params(b4,"ecg\\conv4.bias.bin",64);
     read_params(w5,"ecg\\conv5.weight.bin",64*64*3);
     read_params(b5,"ecg\\conv5.bias.bin",64);
     read_params(wf,"ecg\\fc.weight.bin",64*75*5);
     read_params(bf,"ecg\\fc.bias.bin",5);
     //test
     int correct=0;
     for(int i=0;i<n;i++){
    	 //设置两个缓冲区。buffer1和buffer2
         pl_conv1d(data+i*300,w1,b1,buff2,1,16,300,1);
         pl_conv1d(buff2,w2,b2,buff1,16,32,150,0);
         pl_conv1d(buff1,w3,b3,buff2,32,32,150,0);
         pl_conv1d(buff2,w4,b4,buff1,32,64,150,0);
         pl_conv1d(buff1,w5,b5,buff2,64,64,150,1);
         pl_fc(buff2,wf,bf,buff1);
         //
         int max_idx=-1;
         data_t max_val=-9999;
         //阈值操作，找出最大的权值（score），与标签项对比
         for(int k=0;k<5;k++){
             if(buff1[k]>max_val){
                 max_val=buff1[k];
                 max_idx=k;
             }
         }
         if(max_idx==label[i]){
             printf("right\n");
             correct+=1;
         }
         else{
             printf("error\n");
         }
     }
     printf("test acc=%f\n",(float)correct/n);
     delete [] w1;
     delete [] w2;
     delete [] w3;
     delete [] w4;
     delete [] w5;
     delete [] b1;
     delete [] b2;
     delete [] b3;
     delete [] b4;
     delete [] b5;
     delete [] wf;
     delete [] bf;
}

int main(){
	SD_Init();
	fc_init();
	conv_init();
	Xil_DCacheDisable();
    pl_inference(27657);
    return 0;
}
