
%% Continuous
clear; close all; clc

x = linspace(-pi, pi, 1001);
y = x.^2;

plot(x, y, 'b', 'Linewidth', 2)

%%
N = 1;
clf
plot(x, y, 'b', 'Linewidth', 2)
hold on

%%
% Calculate the fit of a Gaussian
clear; close all; clc
L = 20;
N = 128;
x2 = linspace(-L/2, L/2, N+1);
x = x2(1:N);

u = exp(-x.^2); % function
figure(1), plot(x, u, 'Linewidth', 2) % real part


ut = fft(u); % Fourier Transform
figure(2), plot(ut) % imaginary part
figure(3), plot(abs(ut)) % imaginary part
K = [-N/2:N/2-1];
figure(4), plot(abs(ut)) % imaginary part

utshift = fft










