%%% Batch perception learning   Tutorial solution 02 Q6 p9
% % ת�ú��, with augmented notation and sample normalisation
xtrain = [[1 1 5];[1 2 5]; [-1 -4 -1];[-1 -5 -1]];
w = [ -25 6 3 ]; %initial weight,ת�ú��
wc = [ 0 0 0 ]; % total weight change 
eta = 1; % Learning rate
net = 0;
epoch = 3;
a = zeros(12,2);
t = 0;

while ( epoch > 0)
  
  for i=1:size(xtrain,1)      % ��Զ���������
   test = xtrain(i,:);
   net= w * xtrain(i,:)';    % wx һ����de����˷� 
   if net <= 0    % H
      wc = wc + xtrain(i,:);
   else
      wc = wc;
   end
   
  end
  w = w + wc   % �ۻ���ĩβ���£�ת�ú��
  wc = [ 0 0 0 ]; % every change in one epoch is new
  epoch = epoch - 1;
end