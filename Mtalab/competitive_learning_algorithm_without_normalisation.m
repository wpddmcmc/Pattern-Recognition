% competitive learning algorithm(without normalisation)
% EXAM 2017 6.D
w1=[1;1]; 
w2=[2;2]; 
LR=0.5; % learning rate 
x=[[1;0],[0;2],[1;3],[3;0],[3;1]];
for i=1:5
    disp('epoch');
    disp(i);
    x_w1=x(:,i)-w1;  % x-w1
    norm(x_w1)
    x_w2=x(:,i)-w2;  % x-w2
    if norm(x_w1)<norm(x_w2)
        j=1
        w1=w1+LR*(x(:,i)-w1)
    else
        j=2
        w2=w2+LR*(x(:,i)-w2)
    end
end

% allocate to each training sample:
% for i=1:5
%     disp('epoch');
%     disp(i);
%     x_w1=x(:,i)-w1; % x-w1
%     norm(x_w1)
%     x_w2=x(:,i)-w2; % x-w2
%     if norm(x_w1)<norm(x_w2)
%         j=1
%     else
%         j=2
%     end
% end