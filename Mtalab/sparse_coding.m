Vt=[1,1,2,1;-4,3,2,-1];
x=[2;3];
lamda=1;
y1=[1;2;0;-1];
y2=[0;0.5;1;0];
L2_y1=x-Vt*y1;
L0_y1=3;
L0_y2=2;
L2_y2=x-Vt*y2;
cost1=norm(L2_y1)+lamda*L0_y1;
cost2=norm(L2_y2)+lamda*L0_y2;
cost1
cost2
