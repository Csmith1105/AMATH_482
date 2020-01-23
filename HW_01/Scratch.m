%% how to apply multiple functions on a 3D array
close all; clear all; clc;
A = [1,2; 3,4];
A(:,:,2) = [5,6; 7,8];

kx = [1,1; 1,1];
kx(:,:,2) = [3,3; 3,3];

ky = [7,5; 7,5];
ky(:,:,2) = [7,5; 7,5];

kz = [11,11; 9,9];
kz(:,:,2) = [11,11; 9,9];

Akx_1 = A.*kx;
Akx_2 = A(:,:,:).*kx(:,:,:);

% for every point in A, take the sum of the multiples of A at 
% that point and the corresponding points in the kx, ky, kz matrices
A_f = A(:,:,:).*kx(:,:,:)+A(:,:,:).*ky(:,:,:)+ A(:,:,:).*kz(:,:,:);


% create an array of matrices??
B = zeros(3, 1, 1, 1);
B(:, :, :, 1) = A;

B = zeros(1,4);
B(1) = A;



%% how to apply a formula to a 3D array
close all; clear all; clc;

A = [1:3 ; 4:6]; % 2D array
A(:,:,2) = [7:9, 10:12];  % add another 'page' so 3D array

% each individual value in the 3D array is
% represented by A(:,:,:)
A_gf = 2*(A(:,:,:)-0.5);