%%% Linear discriminant Analysis (LDA) Fisher's method. Tutorial solution 7 Q10 p33 
clear all
clc
% % weight 转置后的
w = [1,4];
w = [-1,-1];
%feature vector 转置后的
xclass1 = [[2,0];[0,3]];
xclass2 = [[3,3];[0,5];[3,1]];

% sample mean for class 1 and class 2 转置后的
 m1 = [[2,0]+[0,3]]/2
 m2 = [[3,3]+[0,5]+[3,1]]/3

sb = (w *(m1 - m2)')^2
sw1 = 0;
sw2 = 0;
for i=1:size(xclass1,1)      % 针对多个点的运算
    sw1 = sw1 + (w * (xclass1(i,:)-m1)')^2   % y = wx 一个点de矩阵乘法 
end
for i=1:size(xclass2,1)      % 针对多个点的运算
    sw2 = sw2 + (w * (xclass2(i,:)-m2)')'^2   % y = wx 一个点de矩阵乘法 
end
sw = sw1+sw2;
jw = sb/sw


