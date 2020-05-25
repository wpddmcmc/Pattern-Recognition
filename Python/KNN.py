from sklearn import datasets,neighbors
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap

x = [[0,-2,-1],[-2,-1,1],[1,-3,-1],[1,3,2],[-1,0,2]]
y = [1,1,1,-1,-1]

test = [[-2,-2,-2]]
neighbor1 = neighbors.KNeighborsClassifier(1, weights='distance')
neighbor1.fit(x, y)
print(neighbor1.predict(test))
