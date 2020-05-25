clc
clear
% negative feedback
w=[1,1,0;
   1,1,1];

x=[1;1;0];% input x-------------

wt=transpose(w);
xt=transpose(x);

alpha=0.25; % -------------------

disp('epoch 0');
y=zeros(2,1) % [2*alpha;2*alpha]; y=[0;0];  output y-------------
yt=transpose(y);


for i=1:4% iteration------------------
  disp('epoch');
  i
  
  e=x-wt*y
  we=w*e
  y=y+alpha*w*e
  wty=wt*y

  
end





