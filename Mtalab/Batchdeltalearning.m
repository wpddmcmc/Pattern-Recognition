% % Batch delta learning rule Tutorial solution 04 Q4
clear all
clc
xtrain = [[1 -1 0 ];[1 1 1 ];[1 0 -1] ];
tk = [1 0 0]; % desired output
w = [-1 -1 -3.5]; %initial weight
wc = [ 0 0 0]; % total weight change 

eta = 1; % Learning rate
net = 0;
epoch = 7;
a = zeros(12,3);
t = 0;

while ( epoch > 0)
  

  for i=1:size(xtrain,1)      % 针对多个点的运算
   test = xtrain(i,:);
   net= w * xtrain(i,:)';     % wx 一个点de矩阵乘法 [-1 6]*[0 2]'
   if net > 0    % H
     h = 1;
   elseif net < 0
      h = 0;
   else
      h = 0.5;
   end
   t = h;
   
   r =(tk(i) - h);  % t - y
   wc = wc + eta * r * xtrain(i,:);
  end
  w = w + wc   % 累积在末尾更新
  wc = [ 0 0 ]; % every change in one epoch is new
  epoch = epoch - 1;
  h = 0;
end