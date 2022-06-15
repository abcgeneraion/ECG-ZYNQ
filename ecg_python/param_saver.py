import torch
import os

if not os.path.exists("weight"):
    os.mkdir("weight")

weight=torch.load("checkpoint.pth")
for k,v in weight.items():
    print(k,v.size())
    v.numpy().tofile("weight\\{}.bin".format(k))