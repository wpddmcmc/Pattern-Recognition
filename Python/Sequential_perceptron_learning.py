from numpy import *
import numpy as np
a1t=np.array([])
a2t=np.array([])
a3t=np.array([])
y=[[],[],[]]
#for i in range(3):
#=np.transpose(np.array(y[i]))
a1ty = np.dot(a1t, y[1])
a2ty = np.dot(a2t, y[2])
a3ty = np.dot(a3t, y[3])
if a1ty <= 0:
    a1ty = a1t+np.array(y[1])
elif a2ty <= 0:
    a2ty = a2t + np.array(y[2])
elif a3ty <= 0:
    a3ty = a3t + np.array(y[3])
