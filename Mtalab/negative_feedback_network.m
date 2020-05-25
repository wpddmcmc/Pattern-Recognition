w=[1,1,0;1,1,1];
x=[1;1;0];
wt=transpose(w);
xt=transpose(x);
alpha=0.25;
y=[2*alpha;2*alpha];
yt=transpose(y);
e=x
for i=1:4
  disp('epoch');
  i
  e=x-wt*y
  y=y+alpha*w*e
end





