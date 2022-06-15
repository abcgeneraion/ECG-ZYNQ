/*
 * sd_io.c
 *
 *  Created on: 2022-04-05
 *      Author: Ren
 */
#include "sd_io.h"

// 初始化SD卡
int SD_Init()
{
    FRESULT rc;
	//注册一个工作区(挂载分区文件系统)
	//在使用任何其它文件函数之前，必须使用 f_mount 函数为每个使用卷注册一个工作区
    rc = f_mount(&fatfs,"",0);
    if(rc)
    {
        xil_printf("ERROR : f_mount returned %d\r\n",rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

int SD_Transfer_read(char *FileName,u32 DestinationAddress,u32 ByteLength)
{
    FIL fil;
    FRESULT rc;
    UINT br;//f_read 函数返回已读出的字节数

	//打开一个文件
    rc = f_open(&fil,FileName,FA_READ);
    if(rc)
    {
        xil_printf("ERROR : f_open returned %d\r\n",rc);
        return XST_FAILURE;
    }
    //移动打开的文件对象的文件读/写指针指向文件开头
    rc = f_lseek(&fil, 0);
    if(rc)
    {
        xil_printf("ERROR : f_lseek returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_read(&fil, (void*)DestinationAddress,ByteLength,&br);
    if(rc)
    {
        xil_printf("ERROR : f_read returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_close(&fil);
    if(rc)
    {
        xil_printf(" ERROR : f_close returned %d\r\n", rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

int SD_Transfer_write(char *FileName,u32 SourceAddress,u32 ByteLength)
{
    FIL fil;
    FRESULT rc;
    UINT bw;
    //打开一个文件,如果不存在，则创建一个文件
    rc = f_open(&fil,FileName,FA_CREATE_ALWAYS | FA_WRITE);
    if(rc)
    {
        xil_printf("ERROR : f_open returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_lseek(&fil, 0);
    if(rc)
    {
        xil_printf("ERROR : f_lseek returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_write(&fil,(void*) SourceAddress,ByteLength,&bw);
    if(rc)
    {
        xil_printf("ERROR : f_write returned %d\r\n", rc);
        return XST_FAILURE;
    }
    rc = f_close(&fil);
    if(rc){
        xil_printf("ERROR : f_close returned %d\r\n",rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}


void read_params(short*x,string filename,int length){
	cout<<"reading "<<filename<<endl;
	//在内存中开辟一块同样大小的空间返回读取的数据
    float* tmp=new float[length];
	SD_Transfer_read((char*)(filename.c_str()),(u32)tmp,(u32)(sizeof(float)*length));
    for(int i=0;i<length;i++){
        x[i]=(data_t)(round(tmp[i]*1024));
    }
    delete [] tmp;
}

void read_label(long long *x,string filename,int length){
	cout<<"reading "<<filename<<endl;
	cout<<sizeof(long long)<<endl;
	SD_Transfer_read((char*)(filename.c_str()),(u32)x,(u32)(sizeof(long long)*length));
}

void write_data(string filename,data_t* x,int length){
	cout<<"writing"<<filename<<endl;
	float* tmp=new float[length];
	for(int i=0;i<length;i++){
		tmp[i]=(float)x[i]/(float)SCALE;
	}
	SD_Transfer_write((char*)filename.c_str(),(u32)tmp,(u32)(sizeof(float)*length));
	delete [] tmp;
}






