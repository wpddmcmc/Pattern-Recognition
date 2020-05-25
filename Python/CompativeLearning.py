import numpy as np
import math

S=np.array([[0,5],[-1,3],[-1,3],[3,0],[5,1]])
N = len(S)

m1 =np.array([-0.5,1.5])
m2 =np.array([0,2.5])
m3 =np.array([1.5,0])

lr=0.1

index=0
loop=0
m_temp=[]
while loop<5:
    print("Iteration",loop+1)
    x_m1= math.sqrt((S[index][0]-m1[0])**2+(S[index][1]-m1[1])**2)
    x_m2= math.sqrt((S[index][0]-m2[0])**2+(S[index][1]-m2[1])**2)
    x_m3= math.sqrt((S[index][0]-m3[0])**2+(S[index][1]-m3[1])**2)

    m_temp.append(x_m1)
    m_temp.append(x_m2)
    m_temp.append(x_m3)
    print("||x-m1||=",round(x_m1,4),"||x-m2||=",round(x_m2,4),"||x-m3||=",round(x_m3,4))
    
    j=m_temp.index(min(m_temp))
    if j==0:
        m1=m1+lr*(S[index]-m1)
        pass
    elif j==1:
        m2=m2+lr*(S[index]-m2)
        pass
    elif j==2:
        m3=m3+lr*(S[index]-m3)
        pass
    print("Center:",m1,m2,m3)
    index=index+1
    loop=loop+1
    m_temp.clear()
    if index>N:
        index=0