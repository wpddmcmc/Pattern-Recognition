%linear_threshold

w=[2,-1,3]; %[-theta, w1,w2]
x=[1;       %[1;x1;x2]
   2;
   0.5];

wx=w*x     

if wx >0  % Heaviside function
    y=1
else
    y=0
    
end