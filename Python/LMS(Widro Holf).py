# LMS
import numpy as np
import matplotlib.pyplot as plt
import csv

test_x = np.array([[0,0],[1,0],[2,1],[0,1],[1,2]])
test_class = np.array([1,1,1,-1,-1])
test_b = 2
a = np.array([-1.5,5,-1])
lr = 0.2
i=0

f_csv = open('data2.csv','w')
while(i<20):
    print("Epoch%d:"%(i))
    for n in range(len(test_class)):
        if test_class[n] == 1:
            y_k = np.append(np.array([1]),test_x[n])
        if test_class[n] ==-1:
            y_k = -1*np.append(np.array([1]),test_x[n])
        g_x = np.dot(a,y_k)
        print("g(x)= ",g_x)
        a_old = a
        a = a + lr*(test_b-np.dot(a,y_k))*y_k
        print("a= ",a)
        
        for n in range(len(test_class)):
            if test_class[n] == 1:
                plt.plot(test_x[n][0],test_x[n][1],'bx')
            if test_class[n] == -1:
                plt.plot(test_x[n][0],test_x[n][1],'ro')
        temp_x = np.arange(0, 2.1, 0.1)
        plot_x = []
        plot_y = []
        for x in temp_x:
            if a[2] ==0:
                temp_y = x
                x = -(a[0]/a[1])
            else:
                temp_y = -(a[1]/a[2])*x-(a[0]/a[2])
            if temp_y<3.1 and temp_y>-3.1:
                plot_x.append(x)
                plot_y.append(temp_y)
        plt.plot(plot_x, plot_y)
        plt.show()
        
    n = 0
    i=i+1