%%
% u(x) = sech(x)  [hyperbolic secant *don't need to remember]
% u'(x) = sech(x) + tanh(x)
% u''(x) = sech(x)
% finite difference - (forward difference)
% what are central differences

L = 20; %[-L/2, L/2] the domain
n = 128; 

x2 = linspace(-L/2, L/2, n + 1);
x = x2(1:n);  % (vector from 0 to 20 broken into 128 points)
dx = x(2)- x(1) % finite differences
u = sech(x);  % our function
ut = fft(u)  % Fast Fourier Transform of the function u

% k = -n/2:n/2-1 . % only use fft shift unless you're plotting
k = (2*pi/L)*[0:n/2-1 (-n/2:-1)];
% fft assumes your doing 2pi
% here we're going from -10 to 10 so multiply by 2*pi/L in order to scale

% FFT calculation of derivatives

ut1 = 1i*k.*ut;  % first derivative
ut2 = -k.^2.*ut; % second derivative
u1 = ifft(ut1) % will get both real and imaginary parts because of rounding errors
u1 = real(ifft(ut1));  % gets rid of imaginary parts
u2 = real(ifft(ut2));  % gets rid of imaginary parts

% Finite difference calculation of first derivative


% Figure 1
% red is the actual function, green is 1st deriv, blue is 2nd deriv



%% 
clear all; close all; clc

L = 30; % length of time signal
n = 512; % how many times we check the signal

t2 = linspace (-L, L, n+1);
t = t2(1:n);
k















