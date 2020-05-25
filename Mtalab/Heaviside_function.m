% ¾ØÕó×ª»»Îª½×Ô¾º¯Êý¾ØÕó(0,-1)
clear;
clc;
close all;
A = [-1,2,5;
    3,4,-4;
    -1,1,-2];
[m,n] = size(A);
q = m*n;
for i = 1:q
    if A(i) < 0
        A(i) = 0;
    else, A(i) = 1;
    end
end

