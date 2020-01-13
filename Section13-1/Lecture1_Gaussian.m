% Calculate fft of a Gaussian

%% Plot Gaussian
clear; close all; clc % clear all variables, figures, and the command window

L = 20; % define the computational domain [-L/2,L/2]
N = 128; % define the number of Fourier modes 2^n

x2 = linspace(-L/2,L/2,N+1); % define the domain discretization
x = x2(1:N); % consider only the first N points (periodicity)

u = exp(-x.^2); % function to take fft of
figure(1), plot(x,u,'Linewidth',2) % plot initial Gaussian

%% Take the FFt and plot
ut = fft(u); % FFT the function
figure(2) % open new figure
plot(ut,'r','Linewidth',2) % naively plot ut - see that it is complex-valued

%% Plot the absolute value (complex magnitude) of ut
figure(2), plot(abs(ut),'r','Linewidth',2)

%% Add in the k axis
k = -N/2:N/2-1; % frequencies
figure(2), plot(k,abs(ut),'r','Linewidth',2) 
xlim([-64,63])
% the frequencies and ut don't match up because ut has frequencies in the
% order k = 0,1,...,N/2-1,-N/2,...,-1

%% Shift the ut vector so the frequencies match up
utshift = fftshift(ut);
figure(2), plot(k,abs(utshift),'r','Linewidth',2) 
xlim([-64,63])