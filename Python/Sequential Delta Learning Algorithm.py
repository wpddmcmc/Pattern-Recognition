from sklearn import datasets
iris = datasets.load_iris()
import numpy as np
from numpy import *
ID = [1,9,2,4,8,5,4]
theta=-2
w1=-4
w2=8
y=0.5
w=np.array([-theta,w1,w2])
xt=[[1,0,2],[1,1,2],[1,2,1],[-1,3,-1],[-1,2,1],[-1,3,2]]
t=[1,1,1,0,0,0]
for j in range(5):
    for i in range(6):
        wx=np.dot(w,np.array(np.transpose(xt[i])))
        if wx==0:
            y=0.5
        elif wx>0:
            y=1
        else:
            y=0
        x=np.array(xt[i])
        w=w+(t[i]-y)*x
        print(y,w)