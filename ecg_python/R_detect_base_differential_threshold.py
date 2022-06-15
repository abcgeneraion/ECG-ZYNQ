import wfdb
import matplotlib.pyplot as plt
import numpy as np
import pywt
import time



def denoise(record):
    data = record.p_signal.flatten()
    Haar = pywt.wavedec(data, wavelet='db3',level=4 )
    hA4, hD4, hD3, hD2, hD1 = Haar
    # 阈值去噪
    #通用阈值求法
    threshold = (np.median(np.abs(hD1)) / 0.6745) * (np.sqrt(2 * np.log(len(hD1))))
    hD1.fill(0)
    hD2.fill(0)
    for i in range(1,len(Haar)-2):
        Haar[i] = pywt.threshold(Haar[i], threshold, mode='soft')
    #小波反变换,获取去噪后的信号
    rdata = pywt.waverec(coeffs=Haar, wavelet='db3')
    return rdata




def peakdet(record):
    # 原始去噪序列X(n)
    sequence = denoise(record)

    #求一阶差分形成序列X(n)'
    sequence_1 = np.zeros(len(sequence))

    for i in range(1,len(sequence)-1):
        sequence_1[i] = (sequence[i+1]-sequence[i-1])/2
    #求二阶差分序列X(n)''
    sequence_2 = np.zeros(len(sequence))
    for i in range(2,len(sequence)-2):
        sequence_1[i] = (2*sequence[i+2]+sequence[i+1]-sequence[i-2]-2*sequence[i-1])/8

    #得到最终全新序列X(n) = X(n)'²+X(n)''²
    newsequence = np.zeros(len(sequence))
    for i in range(len(sequence)):
        newsequence[i] = sequence_1[i]**2 + sequence_2[i]**2


    thresh = 0.00875
    slide = 300
    half_slide = slide // 2
    peaks = []
    import operator
    for i in range(half_slide, len(newsequence) - half_slide):
        if all(ele > thresh for ele in newsequence[i - 1:i + 2]):
            local_maximum_idx, local_maximum = max(enumerate(sequence[i - half_slide:i + half_slide]), key=operator.itemgetter(1))
            if not peaks or peaks[-1] != local_maximum_idx + i - half_slide:
                peaks.append(local_maximum_idx + i - half_slide)

    # 获取心电数据记录中R波的位置和对应的标签
    annotation = wfdb.rdann('ecg_data/' + '103', 'atr',sampfrom=0, sampto=2000)
    Rlocation = annotation.sample[1:]
    print('数据集中标注的R波位置:\t',Rlocation)

    print("算法检测出的R波位置:\t",peaks)



    fig, ax=plt.subplots()
    ax.plot(sequence, 'b', label='EKG')
    ax.plot(peaks, sequence[peaks], 'ro', label='R peaks')

    ax.set_xlim([0, len(sequence)])
    ax.set_xlabel('Time [sec]')
    ax.legend()
    plt.show()

    return peaks

if __name__ == '__main__':
    start_time = time.time()
    record = wfdb.rdrecord('ecg_data/103', sampfrom=0, sampto=2000, channel_names=['MLII'])
    peakdet(record)
    end_time = time.time()
    print(end_time-start_time,'s')

