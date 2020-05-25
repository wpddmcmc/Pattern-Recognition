%%% Batch perception learning   Tutorial solution 02 Q6 p9
% % 转置后的, with augmented notation and sample normalisation
xtrain = [[1 1 5];[1 2 5]; [-1 -4 -1];[-1 -5 -1]];
w = [ -25 6 3 ]; %initial weight,转置后的
wc = [ 0 0 0 ]; % total weight change 
eta = 1; % Learning rate
net = 0;
epoch = 3;
a = zeros(12,2);
t = 0;

while ( epoch > 0)
  
  for i=1:size(xtrain,1)      % 针对多个点的运算
   test = xtrain(i,:);
   net= w * xtrain(i,:)';    % wx 一个点de矩阵乘法 
   if net <= 0    % H
      wc = wc + xtrain(i,:);
   else
      wc = wc;
   end
   
  end
  w = w + wc   % 累积在末尾更新，转置后的
  wc = [ 0 0 0 ]; % every change in one epoch is new
  epoch = epoch - 1;
end