import numpy as np

input = np.array([[2.9,3.6,2.9,6.1],[6.3,3.8,2.6,4.1],[6.6,4.5,2.7,4.3],[6.6,4.7,6.2,3.3],[2.3,5.0,3.6,3.1]])
w=np.array([-0.2,0.2,-0.4,0])
lr=0.01


mean=[4.94,4.32,3.6,4.18]
print(mean)

for i in range (len(input)):
    input[i] = input[i]-mean
print(input)
i=0
n=2
while i<n:
    print("Interation",i+1)
    change = []
    xt_yw= []
    for x in input:
        y=np.dot(w,x)
        xt_yw.append(x-y*w)
        change.append(lr*y*(x-y*w))
    total = np.array([0,0,0,0])
    for x in change:
        total=total+x
    w = w+total
    print("xt_yw",xt_yw,"change",change)
    print("total change",total,"new w:",w)
    i=i+1