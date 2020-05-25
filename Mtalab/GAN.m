% GAN related computation Tutorial 10, Q.4

% Initial samples
% real samples x1 and x2, fake samples x1_f and x2_f
x1 = [1;2];
x2 = [3;4];
x1_f = [5;6];
x2_f = [7;8];

% other parameters
theta_d1 = 0.1;
theta_d2 = 0.2;
x = zeros(2,1);
eta = 0.02;

% Discriminator function
% D(x) = 1/(1+exp(-(theta_d1*x1-theta_d2*x2-2)))

% Cost computation V(D,G)
% E x~p data[InD(x)]
p_data_x1 = 0.5 * log(1/(1+exp(-(theta_d1*x1(1)-theta_d2*x1(2)-2))));
p_data_x2 = 0.5 * log(1/(1+exp(-(theta_d1*x2(1)-theta_d2*x2(2)-2))));
p_data = p_data_x1 + p_data_x2;

% E z~p data[In(1-D(G(z)))]
z_pz_xf1 = 0.5 * log(1-1/(1+exp(-(theta_d1*x1_f(1)-theta_d2*x1_f(2)-2))));
z_pz_xf2 = 0.5 * log(1-1/(1+exp(-(theta_d1*x2_f(1)-theta_d2*x2_f(2)-2))));
z_pz = z_pz_xf1 + z_pz_xf2;

% V(D,G)
V_DG = p_data + z_pz