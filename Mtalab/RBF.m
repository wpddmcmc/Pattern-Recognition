clear
% RBF的相关问题

% c的值(坐标形式)
% c=[1,2; % c1
%     2,4; % c2
%     4,3; % c3
%     5,2]; % c4
% c1 = c(1,:);
% c2 = c(2,:);
% c3 = c(3,:);
% c4 = c(4,:);

% c的值(数值形式)
% c=[1,2,3,4];
% c1 = c(1);
% c2 = c(2);
% c3 = c(3);
% c4 = c(4);


% 求sigma的值
% 跟ru_avg有关(有4个c,按需要调整)
% ru_avg = norm(c1-c2)+norm(c1-c3)+norm(c1-c4)+norm(c2-c3)+norm(c2-c4)+norm(c3-c4)/6

% 跟ru_max有关
% compare = [norm(c1-c2),norm(c1-c3),norm(c1-c4),norm(c2-c3),norm(c2-c4),norm(c3-c4)];
% ru_max = max(compare);

% 连贯计算出z
c1=[0,0];
c2=[1,1];
% 输入量x的值(左边是x1,右边是x2,p=4)
x = [0,0;
    0,1;
    1,0;
    1,1];
x1 = x(1,:);
x2 = x(2,:);
x3 = x(3,:);
x4 = x(4,:);

sigma1 = 1/2^0.5;
sigma2 = 1/2^0.5;
% 高斯函数求y的值, p = 4
y1_1 = exp(-(norm(x1-c1)^2)/(2 * sigma1^2));
y1_2 = exp(-(norm(x2-c1)^2)/(2 * sigma1^2));
y1_3 = exp(-(norm(x3-c1)^2)/(2 * sigma1^2));
y1_4 = exp(-(norm(x4-c1)^2)/(2 * sigma1^2));

y2_1 = exp(-(norm(x1-c2)^2)/(2 * sigma2^2));
y2_2 = exp(-(norm(x2-c2)^2)/(2 * sigma2^2));
y2_3 = exp(-(norm(x3-c2)^2)/(2 * sigma2^2));
y2_4 = exp(-(norm(x4-c2)^2)/(2 * sigma2^2));

% 在以上计算基础上的y1和y2
y1 = [y1_1,y1_2,y1_3,y1_4]';
y2 = [y2_1,y2_2,y2_3,y2_4]';

% 2. 求W(权重，矩阵运算，已知Φ(x),t)
% 已知的y1和y2(估计不会用上)
% y1 = [1,2,3,4]';
% y2 = [1,2,3,4]'; 
bias = [1,1,1,1]'; % 四个值情况
phi = [y1,y2,bias];
t = [0,1,1,0]';
w = inv(phi' * phi) * phi' * t;
z = w(1)*y1+w(2)*y2+w(3);