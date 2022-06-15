import os
import datetime
from turtle import forward
import wfdb
import pywt
import seaborn
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix
import R_detect_base_differential_threshold as Rd


# # 项目目录
# project_path = "D:\\py_tools\\python_project\\mit-bih_ecg_recognition\\"
# # 定义日志目录,必须是启动web应用时指定目录的子目录,建议使用日期时间作为子目录名
# log_dir = project_path + "logs\\" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
# model_path = project_path + "ecg_model.h5"

# 测试集在数据集中所占的比例
RATIO = 0.3


# 小波去噪预处理
def denoise(data):
    # # 小波变换
    # coeffs = pywt.wavedec(data=data, wavelet='db5', level=9)
    # cA9, cD9, cD8, cD7, cD6, cD5, cD4, cD3, cD2, cD1 = coeffs
    #
    # # 阈值去噪
    # threshold = (np.median(np.abs(cD1)) / 0.6745) * (np.sqrt(2 * np.log(len(cD1))))
    # cD1.fill(0)
    # cD2.fill(0)
    # for i in range(1, len(coeffs) - 2):
    #     coeffs[i] = pywt.threshold(coeffs[i], threshold)
    #
    # # 小波反变换,获取去噪后的信号
    # rdata = pywt.waverec(coeffs=coeffs, wavelet='db5')

    Haar = pywt.wavedec(data, wavelet='haar', level=5)
    hD5, hD5, hD4, hD3, hD2, hD1 = Haar
    # 阈值去噪
    # 通用阈值求法
    threshold = (np.median(np.abs(hD1)) / 0.6745) * (np.sqrt(2 * np.log(len(hD1))))

    for i in range(1, len(Haar)):
        # mode = hard ,采取硬阈值保留心电特征！
        Haar[i] = pywt.threshold(Haar[i], threshold, mode='hard')
    # 小波反变换,获取去噪后的信号
    rdata = pywt.waverec(coeffs=Haar, wavelet='haar')
    return rdata


# 读取心电数据和对应标签,并对数据进行小波去噪
def getDataSet(number, X_data, Y_data):
    ecgClassSet = ['N', 'A', 'V', 'L', 'R']

    # 读取心电数据记录
    print("正在读取 " + number + " 号心电数据...")
    record = wfdb.rdrecord('ecg_data/' + number, channel_names=['MLII'])
    # data = record.p_signal.flatten()
    rdata = Rd.denoise(record)

    # 获取心电数据记录中R波的位置和对应的标签
    annotation = wfdb.rdann('ecg_data/' + number, 'atr')
    # Rlocation = Rd.peakdet(record)
    Rlocation = annotation.sample
    Rclass = annotation.symbol

    # 去掉前后的不稳定数据
    start = 10
    end = 5
    i = start
    j = len(Rlocation) - end

    # 因为只选择NAVLR五种心电类型,所以要选出该条记录中所需要的那些带有特定标签的数据,舍弃其余标签的点
    # X_data在R波前后截取长度为300的数据点
    # Y_data将NAVLR按顺序转换为01234
    while i < j:
        try:
            lable = ecgClassSet.index(Rclass[i])
            x_train = rdata[Rlocation[i] - 99:Rlocation[i] + 201]
            X_data.append(x_train)
            Y_data.append(lable)
            i += 1
        except ValueError:
            i += 1
        except IndexError:
            break
    return


# 加载数据集并进行预处理
def loadData():
    numberSet = ['100', '101', '103', '105', '106', '107', '108', '109', '111', '112', '113', '114', '115',
                 '116', '117', '119', '121', '122', '123', '124', '200', '201', '202', '203', '205', '208',
                 '210', '212', '213', '214', '215', '217', '219', '220', '221', '222', '223', '228', '230',
                 '231', '232', '233', '234']
    dataSet = []
    lableSet = []
    for n in numberSet:
        getDataSet(n, dataSet, lableSet)

    # 转numpy数组,打乱顺序
    dataSet = np.array(dataSet).reshape(-1, 300)
    lableSet = np.array(lableSet).reshape(-1, 1)
    train_ds = np.hstack((dataSet, lableSet))
    np.random.shuffle(train_ds)

    # 数据集及其标签集
    X = train_ds[:, :300].reshape(-1, 300, 1)
    Y = train_ds[:, 300]

    # 测试集及其标签集
    shuffle_index = np.random.permutation(len(X))
    test_length = int(RATIO * len(shuffle_index))
    test_index = shuffle_index[:test_length]
    train_index = shuffle_index[test_length:]
    X_test, Y_test = X[test_index], Y[test_index]
    X_train, Y_train = X[train_index], Y[train_index]
    return X_train, Y_train, X_test, Y_test


def plot(history):
    train_loss = history.history['loss']
    val_loss = history.history['val_loss']
    train_acc = history.history['accuracy']
    val_acc = history.history['val_accuracy']

    fig = plt.figure()
    ax = plt.subplot(111)
    ax.plot(train_loss, label='Train Loss')
    ax.plot(val_loss, label='Validation Loss')
    ax.legend()
    plt.title("Train and Validation Loss")
    plt.show()

    fig = plt.figure()
    ax = plt.subplot(111)
    ax.plot(train_acc, label='Train Accuracy')
    ax.plot(val_acc, label='Validation Accuracy')
    plt.legend()
    plt.title("Train and Validation Accuracy")
    plt.show()

# 混淆矩阵
def plotHeatMap(Y_test, Y_pred):
    con_mat = confusion_matrix(Y_test, Y_pred)
    # 归一化
    # con_mat_norm = con_mat.astype('float') / con_mat.sum(axis=1)[:, np.newaxis]
    # con_mat_norm = np.around(con_mat_norm, decimals=2)

    # 绘图
    plt.figure(figsize=(8, 8))
    seaborn.heatmap(con_mat, annot=True, fmt='.20g', cmap='Blues')
    plt.ylim(0, 5)
    plt.xlabel('Predicted labels')
    plt.ylabel('True labels')
    plt.show()


def reshape(X,Y):
    X=X.swapaxes(2,1)
    X=X.astype(np.float32)
    Y=Y.astype(np.longlong)
    return X,Y

from torch.utils.data import Dataset, DataLoader

class MyDataset(Dataset):
    def __init__(self, data,label):
        self.data=data
        self.label=label

    def __getitem__(self, index):
        return self.data[index],self.label[index]

    def __len__(self):
        return self.label.shape[0]

import torch
from model import *

def main():
    # X_train,Y_train为所有的数据集和标签集
    # X_test,Y_test为拆分的测试集和标签集
    X_train, Y_train, X_test, Y_test = loadData()
    X_train,Y_train=reshape(X_train,Y_train)
    X_test,Y_test=reshape(X_test,Y_test)
    print(X_train.shape,Y_train.shape)
    print(X_test.shape,Y_test.shape)
    #保存测试数据，用于FPGA加速
    X_test.tofile("data.bin")
    Y_test.tofile("label.bin")
    batch_size=32
    train_dataset = MyDataset(X_train, Y_train)
    test_dataset = MyDataset(X_test, Y_test)
    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=batch_size, shuffle=True, num_workers=0)
    # 训练模型
    model = Net()
    print(model)
    optimizer = torch.optim.Adam(model.parameters())
    loss_func = torch.nn.CrossEntropyLoss()
    best_acc = 0
    #
    for epoch in range(10):
        print('epoch {}'.format(epoch + 1))
        # training-----------------------------
        running_loss = 0.0
        running_corrects = 0
        # enuerate(),返回的是索引和元素
        for batch, data in enumerate(train_loader):
            X, y = data
            y_pred = model(X)
            # pred，概率较大值对应的索引值，可看做预测结果
            _, pred = torch.max(y_pred.data, 1)
            # 梯度归零
            optimizer.zero_grad()
            # 计算损失
            loss = loss_func(y_pred, y)
            loss.backward()
            optimizer.step()
            # 计算损失和
            running_loss += float(loss)
            # 统计预测正确的图片数
            running_corrects += torch.sum(pred == y.data)
        print("loss=", running_loss / (len(train_loader.dataset) / batch_size))
        print("acc is {}%".format(running_corrects.item() / len(train_loader.dataset) * 100.0))
        # eval
        model.eval()
        test_loss = 0
        correct = 0
        with torch.no_grad():
            for data, target in test_loader:
                output = model(data)
                test_loss += loss_func(output, target).item()
                pred = output.data.max(1, keepdim=True)[1]
                correct += pred.eq(target.data.view_as(pred)).sum()
        test_loss /= len(test_loader.dataset)
        acc = 100. * correct / len(test_loader.dataset)
        print('\nTest set: Avg. loss: {:.4f}, Accuracy: {}/{} ({:.0f}%)\n'.format(
            test_loss, correct, len(test_loader.dataset), acc))

        if acc > best_acc:
            best_acc = acc
            torch.save(model.state_dict(), 'checkpoint.pth')

    # # 绘制准确率曲线
    # plot(history)
    # # 预测
    # Y_pred = model.predict_classes(X_test)
    # # 绘制混淆矩阵
    # plotHeatMap(Y_test, Y_pred)

if __name__ == '__main__':
    main()
