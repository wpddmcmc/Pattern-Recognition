from sklearn import datasets
iris = datasets.load_iris()
import numpy as np
from numpy import *
ID = [1,9,2,4,8,5,4]
s=np.array([9,2,4,8,5,4])
# s=np.array([1,1,1,1,1,1,1,1,1,1,1,1])
# w0=mat([1])
# w=mat([0,0])
# wt=np.transpose(w)
at=np.array([1,0,0])
b=np.transpose(s)
learning_rate=0.1
y=[[1,0,2],[1,1,2],[1,2,1],[-1,3,-1],[-1,2,1],[-1,3,2]]
for j in range(30):
    print('epoch',j)
    for i in range(6):
        print(at)
        yt=np.transpose(np.array(y[i]))
        aty=np.dot(at,y[i])
        c=learning_rate*(b[i]-aty);
        at=at+c*yt
        print (yt,aty,at)

    # at=at+(b)
    # print(yt,aty,at)
    # at=at+learning_rate*(b[i]-aty)*yt




