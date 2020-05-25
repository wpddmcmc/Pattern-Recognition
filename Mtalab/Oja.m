% Batch  Oja's learning rule
% x ???
xtrain = [[-5 -4 ];[-2 0];[0 -1]; [0 1]; [3 2];[4 2]]; 
w = [ -1,0]; % initial weight
% w=[-1,-0.34];
wc = [ 0,0 ]; % total weight change 

lr = 0.01; % learning rate
net = 0;
epoch = 1;  
a = zeros(12,2);
t = 0;

while ( epoch > 0)
  

  for i=1:size(xtrain,1)      % ????????
   net= w * xtrain(i,:)'    % y = wx ???de???? [-1 6]*[0 2]'
   r =(xtrain(i,:) - net * w)  % xt - yw
%    test = eta * net * r
   wc = wc + lr * net * r 
  end
  w = w + wc
  wc = [ 0 0 ]; % every change is new
  epoch = epoch - 1;
  h = 0;
end