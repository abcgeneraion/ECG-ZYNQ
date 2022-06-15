import torch
import torch.nn as nn

class Net(nn.Module):                   #(1,300)---->（5,)
    def __init__(self):
        super().__init__()
        self.conv1=nn.Conv1d(in_channels=1,out_channels=16,kernel_size=3,stride=1,padding=1)
        self.relu=nn.ReLU()
        self.maxpool=nn.MaxPool1d(kernel_size=2,stride=2)
        #
        self.conv2=nn.Conv1d(in_channels=16,out_channels=32,kernel_size=3,stride=1,padding=1)
        self.conv3=nn.Conv1d(in_channels=32,out_channels=32,kernel_size=3,stride=1,padding=1)
        self.conv4=nn.Conv1d(in_channels=32,out_channels=64,kernel_size=3,stride=1,padding=1)
        self.conv5=nn.Conv1d(in_channels=64,out_channels=64,kernel_size=3,stride=1,padding=1)
        self.fc=nn.Linear(in_features=64*75,out_features=5)

    def forward(self,x):

        x=self.maxpool(self.relu(self.conv1(x)))          #16,150

        x=self.relu(self.conv2(x))                          #32,150
        x=self.relu(self.conv3(x))
        x=self.relu(self.conv4(x))
        x=self.maxpool(self.relu(self.conv5(x)))            #64,75

        x=x.view(x.size(0),-1)                                 #64*75

        return self.fc(x)

if __name__=='__main__':
    net=Net()
    x=torch.randn(1,1,300)
    print(net(x).size())