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

%% HW 01 WITHOUT SHIFTING ANYTHING


clear; close all; clc;

load Testdata;

L = 15; % spatial domain
n = 64; % Fourier modes, i.e. # of points in spatial range (2^6)

x2 = linspace(-L,L,n+1); 

x = x2(1:n); % x-coord of each point in the discretized spatial range [-15,15)
y = x;  % y-coord of each point in the discretized spatial range [-15,15)
z = x;  % z-coord of each point in the discretized spatial range [-15,15)

k= (2*pi/(2*L))*[0:(n/2-1) -n/2:-1];

[X,Y,Z] = meshgrid(x,y,z);

[Kx,Ky,Kz] = meshgrid(k,k,k);

Un = zeros(n,n,n,20);
Un_fft = zeros(n,n,n,20);
mean_fft = zeros(n,n,n); 

for j=1:20  
    
    Un(:,:,:,j) = reshape(Undata(j,:),n,n,n);
  
    Un_fft(:,:,:,j) = fftn(Un(:,:,:,j));

    mean_fft = mean_fft + Un_fft(:,:,:,j);
    
end

mean_fft = abs(mean_fft)/20;  

max_signal = max(mean_fft(:));  % 271.8673

[max_val, max_idx] = max(mean_fft(:))

[max_x, max_y, max_z] = ind2sub(size(mean_fft), max_idx);

% kx_center = Kx(max_x, max_y, max_z); 
% ky_center = Ky(max_x, max_y, max_z); 
% kz_center = Kz(max_x, max_y, max_z); 

kx_center = -4.817108735504349;
ky_center = -6.702064327658225; 
kz_center = 5.654866776461628;

filter = exp(-0.2*((Kx(:,:,:) - kx_center).^2 ... 
    + (Ky(:,:,:) - ky_center).^2 ... 
    + (Kz(:,:,:) - kz_center).^2)); 

Un_fft_filtered = zeros(n,n,n,20);
Un_filtered = zeros(n,n,n,20);

% filter data in frequency domain and convert 
% back to spatial domain, then plot position
% plot3(X,Y,Z)

for j=1:1 
    % filter the data in the frequency domain
    Un_fft_filtered(:,:,:,j) = Un_fft(:,:,:,j).*filter; 
    
    % inverse FFT to get the data back in the spatial domain
    Un_filtered(:,:,:,j) = ifftn(Un_fft_filtered(:,:,:,j));
   
    % plot the signal data in the spatial domain
    close all, isosurface(X,Y,Z,abs(Un_filtered(:,:,:,j)),0.02)
   
    title("Signal in Spatial Domain", 'Fontsize',18)
   
    axis([-20 20 -20 20 -20 20]), grid on, drawnow
   
    pause(5)
end

Un_filt_01 = abs(Un_filtered(:,:,:,1));
mean_filt = mean(Un_filt_01(:));









