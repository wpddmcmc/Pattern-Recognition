import numpy as np
import matplotlib.pyplot as plt
import csv

def SDLA():
    test_x = np.array([[0,0],[1,0],[2,1],[0,1],[1,2]])
    test_class = np.array([1,1,1,0,0])
    w = np.array([-1.5,5,-1])
    lr = 1
    i = 1
    while(i<11):
        print("Epoch%d:"%(i))
        for n in range(len(test_class)):
            x_k = np.append(np.array([1]),test_x[n])
            wx_k = np.dot(w,x_k)
            if wx_k<=0:
                H = 0
            else:
                H = 1
            w = w + lr*(test_class[n]-H)*x_k
            print(w)

            for n in range(len(test_class)):
                if test_class[n] == 1:
                    plt.plot(test_x[n][0],test_x[n][1],'bx')
                if test_class[n] == 0:
                    plt.plot(test_x[n][0],test_x[n][1],'ro')
            temp_x = np.arange(-3.1, 3.1, 0.1)
            plot_x = []
            plot_y = []
            for x in temp_x:
                temp_y = -(w[1]/w[2])*x-(w[0]/w[2])
                if temp_y<2.1 and temp_y>-2.1:
                    plot_x.append(x)
                    plot_y.append(temp_y)
            plt.plot(plot_x, plot_y)
            plt.draw()
            plt.pause(1)
            plt.close()
        i = i+1
SDLA()