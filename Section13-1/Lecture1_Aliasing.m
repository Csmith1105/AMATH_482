% Demonstrate Aliasing for the DFT

%% Set up parameters and plot sin(7x)
clear; close all; clc

N = 8;
x = linspace(-pi,pi,N+1);
x = x(1:N);
xplot = linspace(-pi,pi,1001);

y1 = sin((N-1)*x);
y1plot = sin((N-1)*xplot);
plot(xplot,y1plot,'b','Linewidth',2)

%% Add in discrete points
hold on
plot(x,y1,'ok','Markersize',10)

%% Add in sin(-x)
y2plot = sin(-xplot);
plot(xplot,y2plot,'r','Linewidth',2)

%% Just the points
clf
plot(x,y1,'ok','Markersize',10)

%% Add back in sin(-x)
hold on
plot(xplot,y2plot,'r','Linewidth',2)

%% sin(7x)
plot(xplot,y1plot,'b','Linewidth',2)

%% sin(15x)
y1plot = sin((2*N-1)*xplot);
plot(xplot,y1plot,'g','Linewidth',2)
