
%% HW 03 SVD and PCA

close all; clear all; clc;

% Eigen Decomposition

clear all; close all; clc;

% original data matrix
A_1 = readtable('A_1.csv');
A_1 = table2array(A_1);

% find the diagonal matrix of eigenvalues of AA'
[V_1a,D_1] = eig(A_1*A_1');

% find the data in the new basis
Y_a = V_1a'*A_1;

% find the covariance matrix of the data in the new basis
C_1a = (1/(length(A_1)-1)).*D_1;

%% Singular Value Decomposition

% get the SVD of A
[U_1,S_1,V_1b] = svd(A_1);

% find the data in the new basis
Y_b = U_1'*A_1;

% find the covariance matrix of the data in the new basis
C_1b = (1/(length(A_1)-1))*(S_1.^2);

% check to see if Matlab gives same results
C_1bb = cov(Y_b);


%%
% 
% A_2 = readtable('A_2.csv');
% A_2 = table2array(A_2);
% [U_2,S_2,V_2] = svd(A_2);
% C_2 = cov(A_2);
% [V_2c,D_2] = eig(C_2);
% 
% A_3 = readtable('A_3.csv');
% A_3 = table2array(A_3);
% [U_3,S_3,V_3] = svd(A_3);
% C_3 = cov(A_3);
% [V_3c,D_3] = eig(C_3);
% 
% A_4 = readtable('A_4.csv');
% A_4 = table2array(A_4);
% [U_4,S_4,V_4] = svd(A_4);
% C_4 = cov(A_4);
% [V_4c,D_4] = eig(C_4);


