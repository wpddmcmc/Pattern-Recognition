% GAN related computation Tutorial 10, Q.4

% Initial samples
% real samples x1 and x2, fake samples x1_f and x2_f
x1 = [1;2];
x2 = [3;4];
x = [x1,x2];
x1_f = [5;6];
x2_f = [7;8];
x_f = [x1_f,x2_f];
theta_d1 = 0.1;
theta_d2 = 0.2;
eta = 0.02;

% Gredient Computation
m = 2; % based on the dataset
G_sum = 0;
for i = 1:m
    alpha_1 = (x(1,i) * exp(-(theta_d1*x(1,i)-theta_d2*x(2,i)-2)))...
        /(1 + exp(-(theta_d1*x(1,i)-theta_d2*x(2,i)-2)));
    alpha_2 = -(x(2,i) * exp(-(theta_d1*x(1,i)-theta_d2*x(2,i)-2)))...
        /(1 + exp(-(theta_d1*x(1,i)-theta_d2*x(2,i)-2)));
    beta_1 = -(x_f(1,i) * exp(-(theta_d1*x_f(1,i)-theta_d2*x_f(2,i)-2)))...
        /(exp(-(theta_d1*x_f(1,i)-theta_d2*x_f(2,i)-2))*(exp(-(theta_d1*x_f(1,i)-theta_d2*x_f(2,i)-2))+1));
    beta_2 = (x_f(2,i) * exp(-(theta_d1*x_f(1,i)-theta_d2*x_f(2,i)-2)))...
        /(exp(-(theta_d1*x_f(1,i)-theta_d2*x_f(2,i)-2))*(exp(-(theta_d1*x_f(1,i)-theta_d2*x_f(2,i)-2))+1));
    G = 1/m * [alpha_1 + beta_1;
               alpha_2 + beta_2];
    G_sum = G_sum + G
end

% theta update
theta_update = [theta_d1;theta_d2] + eta * G_sum