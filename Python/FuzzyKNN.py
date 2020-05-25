import numpy as np
import math

S=np.array([[-1,3],[1,4],[0,5],[4,-1],[3,0],[5,1]])
mu=np.array([[1,0],[0.5,0.5],[0.5,0.5],[0.5,0.5],[0.5,0.5],[0,1]])
b=2
threshold=0.5

# normalization mu
for i in range(len(mu)):
    sum = mu[i][0]+mu[i][1]
    mu[i][0]=mu[i][0]/sum
    mu[i][1]=mu[i][1]/sum
print("normalized mu:",mu)

m1_old=np.array([[0,0]])
m2_old=np.array([[0,0]])
loop=1
# unpdate center
while loop<5:
    print("*******Ieteration",loop,"*******")
    m1= (pow(mu[0][0],2)*S[0]+pow(mu[1][0],2)*S[1]+pow(mu[2][0],2)*S[2]+pow(mu[3][0],2)*S[3]+pow(mu[4][0],2)*S[4]+pow(mu[5][0],2)*S[5])/ \
    (pow(mu[0][0],2)+pow(mu[1][0],2)+pow(mu[2][0],2)+pow(mu[3][0],2)+pow(mu[4][0],2)+pow(mu[5][0],2))

    m2=(pow(mu[0][1],2)*S[0]+pow(mu[1][1],2)*S[1]+pow(mu[2][1],2)*S[2]+pow(mu[3][1],2)*S[3]+pow(mu[4][1],2)*S[4]+pow(mu[5][1],2)*S[5])/ \
    (pow(mu[0][1],2)+pow(mu[1][1],2)+pow(mu[2][1],2)+pow(mu[3][1],2)+pow(mu[4][1],2)+pow(mu[5][1],2))
    if not loop==1 and not threshold==0:
        distance1 = math.sqrt((m1_old[0]-m1[0])**2+(m1_old[1]-m1[1])**2)
        distance2 = math.sqrt((m2_old[0]-m2[0])**2+(m2_old[1]-m2[1])**2)
        print("distance: ",distance1,distance2)
        if distance1<threshold and distance2<threshold:
            print("End! distance less than",threshold,"Center is",[round(m1[0],4),round(m1[1],4)],[round(m2[0],4),round(m2[1],4)])
            break
    print("center: m1=",m1," m2=",m2
    )
    for i in range(len(mu)):
        print("j=",i+1)
        x_m1= math.sqrt((S[i][0]-m1[0])**2+(S[i][1]-m1[1])**2)
        x_m2= math.sqrt((S[i][0]-m2[0])**2+(S[i][1]-m2[1])**2)
        
        x_m1_2=(1/x_m1)**2
        x_m2_2=(1/x_m2)**2
        print("||x-m1||=",round(x_m1,4),"||x-m2||=",round(x_m2,4),"1/||x-m1||^2=",round(x_m1_2,4),"1/||x-m2||^2=",round(x_m2_2,4))
        mu[i][0]=x_m1_2/(x_m1_2+x_m2_2)
        mu[i][1]=x_m2_2/(x_m1_2+x_m2_2)
        print("mu1=",round(mu[i][0],4),"mu2=",round(mu[i][1],4))
    print(mu)
    loop=loop+1
    m1_old=m1
    m2_old=m2




