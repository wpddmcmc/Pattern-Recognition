%%% basic leader-follower clustering without normalisation
% Tutorial solution 10. Q4 p16
clear;
close all
clc;
% sample x
x1 = [0 -1 -1 3 5];  % [0;5], [-1;3] ..... 
x2 = [5 3 3 0 1];
yita = 0.5;
theta = 3;
it = 1;
m1 = [x1(1);x2(1)];
d = [0];  % distance
% create first cluster center ת�ú��
M = [ m1'];  

while ( it < 6)
 disp('iteration');
 disp(it);  
[m,n]= size (M);

% distance between sample and (updated) cluster centre
for i = 1:m
     d(i) = norm ([[x1(it);x2(it)] - M(i,:)'])
end

[f,N] = sort(d);
N;
j = N(1)     %  identify cluster center
if d(j) < theta
  M(j,:) = M(j,:) + yita * ([x1(it) x2(it)]-M(m,:));  % ֻ�Ծ��������cluster ����, 
  M; % ȫ��cluster��ÿ����һ��ת�õ�cluster
  new_cluster = M(j,:)'     % ���º�ľ��������cluster
 else
   M(end+1,:) = [x1(it),x2(it)]; % ������һ����ת�ú�� new cluster
   new_cluster = [x1(it),x2(it)]'
   d(end+1) = 0;
 end

it = it + 1;
M;
d;
end



