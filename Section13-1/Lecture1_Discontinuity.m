%Show Fourier series approximation for continuous vs discontinuous

%% Continuous function
clear; close all; clc

x = linspace(-pi,pi,1001);
y = x.^2;

plot(x,y,'b','Linewidth',2)

%% Plot Nth partial sum of Fourier Series
N = 10;
clf
plot(x,y,'b','Linewidth',2)
hold on

yN = pi^2/3*ones(size(x));
for k = 1:N
    yN = yN + (-1)^k*4/(k^2)*cos(k*x);
end
plot(x,yN,'r','Linewidth',2)

%% Discontinuous function
clear; close all; clc

x = linspace(-pi,pi,1001);
y = (x > 0);

plot(x(1:501),y(1:501),'b','Linewidth',2)
hold on
plot([0 0],[0 1],'--b','Linewidth',2)
plot(x(502:1000),y(502:1000),'b','Linewidth',2)
axis([-4 4 -.2 1.2])

%% Plot Nth partial sum of Fourier Series
N = 100;
clf
plot(x(1:501),y(1:501),'b','Linewidth',2)
hold on
plot([0 0],[0 1],'--b','Linewidth',2)
plot(x(502:1000),y(502:1000),'b','Linewidth',2)

yN = 1/2*ones(size(x));
for k = 1:N
    yN = yN + 2/((2*k-1)*pi)*sin((2*k-1)*x);
end
plot(x,yN,'r','Linewidth',2)