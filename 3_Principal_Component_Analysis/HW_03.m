%% HW 03 Principal Component Analysis

clear all; close all; clc

%% ginput() Camera 1 - Test 1

% first vertical min at 30 frames 

clear all; close all; clc

load('cam1_1.mat')
implay(vidFrames1_1)
numFrames = size(vidFrames1_1,4);
cam1_1_coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames1_1(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
%     [x,y] = ginput(1);
%     cam2_2_coords(j,1) = x;
%     cam2_2_coords(j,2) = y;

end

csvwrite('cam1_1_coords.csv',cam1_1_coords)


%% ginput() Camera 2 - Test 1

clear all; close all; clc

load('cam2_1.mat')
implay(vidFrames2_1)
numFrames = size(vidFrames2_1,4);
cam2_1_coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames2_1(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
%     [x,y] = ginput(1);
%     cam2_2_coords(j,1) = x;
%     cam2_2_coords(j,2) = y;

end

csvwrite('cam2_1_coords.csv',cam2_1_coords)

%% ginput() Camera 3 - Test 1

clear all; close all; clc

load('cam3_1.mat')
implay(vidFrames3_1)
numFrames = size(vidFrames3_1,4);
cam3_1_coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames3_1(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
%     [x,y] = ginput(1);
%     cam2_2_coords(j,1) = x;
%     cam2_2_coords(j,2) = y;
    pause(1)
end

csvwrite('cam3_1_coords.csv',cam3_1_coords)

%% ginput() Camera 1 - Test 2

clear all; close all; clc

load('cam1_2.mat');
implay(vidFrames1_2)
numFrames = size(vidFrames1_2,4);
cam1_2_coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames1_2(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
%     [x,y] = ginput(1);
%     cam1_2_coords(j,1) = x;
%     cam1_2_coords(j,2) = y;
end

csvwrite('cam1_2_coords.csv',cam1_2_coords)

%% ginput() Camera 2 - Test 2

clear all; close all; clc

load('cam2_2.mat');
implay(vidFrames2_2)
numFrames = size(vidFrames2_2,4);
cam2_2_coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames2_2(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
%     [x,y] = ginput(1);
%     cam2_2_coords(j,1) = x;
%     cam2_2_coords(j,2) = y;
end

% csvwrite('cam2_2_coords.csv',cam2_2_coords)

%% ginput() Camera 3 - Test 2

clear all; close all; clc

load('cam3_2.mat')
implay(vidFrames3_2)
numFrames = size(vidFrames3_2,4);
cam3_2_coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames3_2(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
%     [x,y] = ginput(1);
%     cam2_2_coords(j,1) = x;
%     cam2_2_coords(j,2) = y;

end

csvwrite('cam3_2_coords.csv',cam3_2_coords)

%% ginput() Camera 1 - Test 3

clear all; close all; clc

load('cam1_3.mat');
numFrames = size(vidFrames1_3,4);
cam1_3_coords = zeros(numFrames,2);

for j = 1:239
    X = vidFrames1_3(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
    [x,y] = ginput(1);
    cam1_3_coords(j,1) = x;
    cam1_3_coords(j,2) = y;
    % pause(0.75)
end

csvwrite('cam1_3_coords.csv',cam1_3_coords)

%% ginput() Camera 2 - Test 3

clear all; close all; clc

load('cam2_3.mat');
numFrames = size(vidFrames2_3,4);
cam2_3_coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames2_3(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
    [x,y] = ginput(1);
    cam2_3_coords(j,1) = x;
    cam2_3_coords(j,2) = y;
    % pause(0.75)
end

csvwrite('cam2_3_coords.csv',cam2_3_coords)

%% ginput() Camera 3 - Test 3

clear all; close all; clc

load('cam3_3.mat');
numFrames = size(vidFrames3_3,4);
cam3_3_coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames3_3(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
    [x,y] = ginput(1);
    cam3_3_coords(j,1) = x;
    cam3_3_coords(j,2) = y;
    % pause(0.75)
end

csvwrite('cam3_3_coords.csv',cam3_3_coords)

%% ginput() Camera 1 - Test 4

clear all; close all; clc

load('cam1_4.mat')
% implay(vidFrames1_4)
numFrames = size(vidFrames1_4,4);
% clippedGrey = zeros(380,80,1,226); % to hold the clipped data\
cam1_4_coords = zeros(numFrames,2);

for j = 1:392
    X = vidFrames1_4(:,:,:,j);
    imshow(X); drawnow
    %newFrame = im2double(X(50:429, 310:389));
    %clippedGrey(:,:,:,j) = newFrame;
    %imshow(clippedGrey(:,:,:,j)); drawnow
    title(num2str(j))
    [x,y] = ginput(1);
    cam1_4_coords(j,1) = x;
    cam1_4_coords(j,2) = y;
    pause(1)
end

csvwrite('cam1_4_coords.csv',cam1_4_coords)

%% ginput() Camera 2 - Test 4

clear all; close all; clc

load('cam2_4.mat')
% implay(vidFrames2_4)
numFrames = size(vidFrames2_4,4);
cam2_4_coords = zeros(numFrames,2);

for j = 1:405
    X = vidFrames2_4(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
    
    objectRegion = [150 150 300 250];
    if (mod(j,2) ==0)
        objectImage = insertShape(X,'Rectangle',objectRegion,...
            'Color','blue', 'Linewidth', 2);
    figure(2);
    imshow(objectImage);
    else
    objectImage = insertShape(X,'Rectangle',objectRegion,...
        'Color','red','Linewidth', 2);
    figure(2);
    imshow(objectImage);
    end
    
    [x,y] = ginput(1);
    cam2_4_coords(j,1) = x;
    cam2_4_coords(j,2) = y;
    pause(0.75)
end

csvwrite('cam2_4_coords.csv',cam2_4_coords)


%% ginput() Camera 3 - Test 4

clear all; close all; clc

load('cam3_4.mat')
% implay(vidFrames3_4)
numFrames = size(vidFrames3_4,4);
cam3_4_coords = zeros(numFrames,2);

for j = 1:394
    X = vidFrames3_4(:,:,:,j);
    imshow(X); drawnow
    title(num2str(j), 'Fontsize', 20)
    
    objectRegion = [150 150 300 250];
    if (mod(j,2) ==0)
        objectImage = insertShape(X,'Rectangle',objectRegion,...
            'Color','blue', 'Linewidth', 2);
    figure(2);
    imshow(objectImage);
    else
    objectImage = insertShape(X,'Rectangle',objectRegion,...
        'Color','red','Linewidth', 2);
    figure(2);
    imshow(objectImage);
    end
    
    [x,y] = ginput(1);
    cam3_4_coords(j,1) = x;
    cam3_4_coords(j,2) = y;
    % pause(0.75)
end

csvwrite('cam3_4_coords.csv',cam3_4_coords)

%% Build the Matrices

% build matrix A1

% get full coordinates from csv file
test1_1_coords = table2array(readtable('coordinates/cam1_1_coords.csv'));
test1_2_coords = table2array(readtable('coordinates/cam2_1_coords.csv'));
test1_3_coords = table2array(readtable('coordinates/cam3_1_coords.csv'));

% adjusted coordinates
subset_1_1 = test1_1_coords(10:209, 1:2);
subset_1_2 = test1_2_coords(19:218, 1:2);
subset_1_3 = test1_3_coords(08:207, 1:2);

% create the matrix the raw data
A_1 = zeros(6,length(subset_1_1));
n = length(A_1(1,:));

for j=1:n
    A_1(1,j) = subset_1_1(j,1);
    A_1(2,j) = subset_1_1(j,2);
    A_1(3,j) = subset_1_2(j,1);
    A_1(4,j) = subset_1_2(j,2);
    A_1(5,j) = subset_1_3(j,1);
    A_1(6,j) = subset_1_3(j,2);
end

csvwrite('A_1.csv',A_1)

% build matrix A2

% get full coordinates from csv file
test2_1_coords = table2array(readtable('coordinates/cam1_2_coords.csv'));
test2_2_coords = table2array(readtable('coordinates/cam2_2_coords.csv'));
test2_3_coords = table2array(readtable('coordinates/cam3_2_coords.csv'));

% adjusted coordinates
subset_2_1 = test2_1_coords(35:274, 1:2);
subset_2_2 = test2_2_coords(18:257, 1:2);
subset_2_3 = test2_3_coords(40:279, 1:2);

% create the matrix for the raw data
A_2 = zeros(6,length(subset_2_1));
n = length(A_2(1,:));
for j=1:n
    A_2(1,j) = subset_2_1(j,1);
    A_2(2,j) = subset_2_1(j,2);
    A_2(3,j) = subset_2_2(j,1);
    A_2(4,j) = subset_2_2(j,2);
    A_2(5,j) = subset_2_3(j,1);
    A_2(6,j) = subset_2_3(j,2);
end

csvwrite('A_2.csv',A_2)

% build matrix A3

% get full coordinates from csv file
test3_1_coords = table2array(readtable('coordinates/cam1_3_coords.csv'));
test3_2_coords = table2array(readtable('coordinates/cam2_3_coords.csv'));
test3_3_coords = table2array(readtable('coordinates/cam3_3_coords.csv'));

% adjusted coordinates
subset_3_1 = test3_1_coords(35:199, 1:2);
subset_3_2 = test3_2_coords(25:189, 1:2);
subset_3_3 = test3_3_coords(28:192, 1:2);

% create the matrix for the raw data
A_3 = zeros(6,length(subset_3_1));
n = length(A_3(1,:));

for j=1:length(subset_3_1)
    A_3(1,j) = subset_3_1(j,1);
    A_3(2,j) = subset_3_1(j,2);
    A_3(3,j) = subset_3_2(j,1);
    A_3(4,j) = subset_3_2(j,2);
    A_3(5,j) = subset_3_3(j,1);
    A_3(6,j) = subset_3_3(j,2);
end

csvwrite('A_3.csv',A_3)

% build matrix A4

% get full coordinates from csv file
test4_1_coords = table2array(readtable('coordinates/cam1_4_coords.csv'));
test4_2_coords = table2array(readtable('coordinates/cam2_4_coords.csv'));
test4_3_coords = table2array(readtable('coordinates/cam3_4_coords.csv'));

% adjusted coordinates
subset_4_1 = test4_1_coords(12:375, 1:2);
subset_4_2 = test4_2_coords(18:381, 1:2);
subset_4_3 = test4_3_coords(11:374, 1:2);

% create the matrix for the raw data
A_4 = zeros(6,length(subset_4_1));
n = length(A_4(1,:));

for j=1:length(subset_4_1)
    A_4(1,j) = subset_4_1(j,1);
    A_4(2,j) = subset_4_1(j,2);
    A_4(3,j) = subset_4_2(j,1);
    A_4(4,j) = subset_4_2(j,2);
    A_4(5,j) = subset_4_3(j,1);
    A_4(6,j) = subset_4_3(j,2);
end

csvwrite('A_4.csv',A_4)

%% Test #1

% Singular Value Decomposition

clear all; close all; clc;

% original data matrix
A1 = readtable('A_1.csv');
A1 = table2array(A1);

% number of time samples
n = length(A1(1,:));

% plot the A coordinates in each of the 6 dimension over time
figure(1)
subplot(3,4,1);
plot(A1(1,:)) 
title("Cam 1: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,2);
plot(A1(2,:))
title("Cam 1: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,5);
plot(A1(3,:))
title("Cam 2: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,6);
plot(A1(4,:))
title("Cam 2: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,9);
plot(A1(5,:))
title("Cam 3: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,10);
plot(A1(6,:))
title("Cam 3: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)


% normalize the rows by subtracting the mean
for j=1:length(A1(:,1))
    A1(j,:) = A1(j,:)-mean(A1(j,:));
end


% get the SVD of A
[U1,S1,~] = svd(A1);

% find the data in the new basis
Y1 = U1'*A1;

% plot the Y coordinates in each of the 6 dimension over time

subplot(3,4,3);
plot(Y1(1,:)) 
title("Matrix Y: Mode 1", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,4);
plot(Y1(2,:))
title("Matrix Y: Mode 2", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,7);
plot(Y1(3,:))
title("Matrix Y: Mode 3", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,8);
plot(Y1(4,:))
title("Matrix Y: Mode 4", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,11);
plot(Y1(5,:))
title("Matrix Y: Mode 5", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,12);
plot(Y1(6,:))
title("Matrix Y: Mode 6", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)


% get the diagonalized covariance matrix 
C1 = (1/(n-1))*S1.^2;

% calculate energy in each mode
energy = S1./sum(sum(S1));
energy_squared = S1.^2./sum(sum(S1.^2));
sum(sum(energy))
sum(sum(energy_squared))

% Plot singular values and energy
figure(3)
subplot(2,2,1)
plot(S1,'ko','Linewidth',2)
% axis([0 25 0 50])
ylabel('\sigma')
set(gca,'Fontsize',12,'Xtick',0:6)

subplot(2,2,2)
semilogy(S1,'ko','Linewidth',2)
% axis([0 25 10^-(18) 10^5])
ylabel('\Sigma (log scale)')
set(gca,'Fontsize',12,'Xtick',0:6,'Ytick',logspace(-15,5,5))

subplot(2,2,3)
plot(S1.^2/sum(S1.^2),'ko','Linewidth',2)
% axis([0 25 0 1])
ylabel('Energy')
set(gca,'Fontsize',12,'Xtick',0:6)

subplot(2,2,4)
semilogy(S1.^2/sum(S1.^2),'ko','Linewidth',2)
% axis([0 25 10^-(18) 10^5])
ylabel('Energy (log scale)')
set(gca,'Fontsize',12,'Xtick',0:6,'Ytick',logspace(-15,0,4))
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Test 1 - Ideal Harmonic Motion, Singular Values and Energy', ...
    'Fontsize', 15,...
    'Fontweight', 'bold',...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

%% Test #2

% Singular Value Decomposition

clear all; close all; clc;

% original data matrix
A2 = readtable('A_2.csv');
A2 = table2array(A2);

% number of time samples
n = length(A2(1,:));

% plot the A coordinates in each of the 6 dimension over time
figure(1)
subplot(3,4,1);
plot(A2(1,:)) 
title("Cam 1: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,2);
plot(A2(2,:))
title("Cam 1: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,5);
plot(A2(3,:))
title("Cam 2: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,6);
plot(A2(4,:))
title("Cam 2: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,9);
plot(A2(5,:))
title("Cam 3: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,10);
plot(A2(6,:))
title("Cam 3: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)

% normalize the rows by subtracting the mean
for j=1:length(A2(:,1))
    A2(j,:) = A2(j,:)-mean(A2(j,:));
end


% get the SVD of A
[U2,S2,~] = svd(A2);

% find the data in the new basis
Y2 = U2'*A2;

% plot the Y coordinates in each of the 6 dimension over time

subplot(3,4,3);
plot(Y2(1,:)) 
title("Matrix Y: Mode 1", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,4);
plot(Y2(2,:))
title("Matrix Y: Mode 2", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,7);
plot(Y2(3,:))
title("Matrix Y: Mode 3", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,8);
plot(Y2(4,:))
title("Matrix Y: Mode 4", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,11);
plot(Y2(5,:))
title("Matrix Y: Mode 5", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,12);
plot(Y2(6,:))
title("Matrix Y: Mode 6", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)

% get the diagonalized covariance matrix 
C2 = (1/(n-1))*S2.^2;

% calculate energy in each mode
energy = S2./sum(sum(S2));
energy_squared = S2.^2./sum(sum(S2.^2));
sum(sum(energy))
sum(sum(energy_squared))

% Plot singular values and energy
figure(3)
subplot(2,2,1)
plot(S2,'ko','Linewidth',2)
% axis([0 25 0 50])
ylabel('\sigma')
set(gca,'Fontsize',12,'Xtick',0:6)

subplot(2,2,2)
semilogy(S2,'ko','Linewidth',2)
% axis([0 25 10^-(18) 10^5])
ylabel('\Sigma (log scale)')
set(gca,'Fontsize',12,'Xtick',0:6,'Ytick',logspace(-15,5,5))

subplot(2,2,3)
plot(S2.^2/sum(S2.^2),'ko','Linewidth',2)
% axis([0 25 0 1])
ylabel('Energy')
set(gca,'Fontsize',12,'Xtick',0:6)

subplot(2,2,4)
semilogy(S2.^2/sum(S2.^2),'ko','Linewidth',2)
% axis([0 25 10^-(18) 10^5])
ylabel('Energy (log scale)')
set(gca,'Fontsize',12,'Xtick',0:6,'Ytick',logspace(-15,0,4))
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Test 2 - Camera Shake, Singular Values and Energy', ...
    'Fontsize', 13,...
    'Fontweight', 'bold',...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

%% Test #3 HORIZONTAL DISPLACEMENT

% Singular Value Decomposition

clear all; close all; clc;

% original data matrix
A3 = readtable('A_3.csv');
A3 = table2array(A3);

% number of time samples
n = length(A3(1,:));

% plot the A coordinates in each of the 6 dimension over time
figure(1)
subplot(3,4,1);
plot(A3(1,:)) 
title("Cam 1: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,2);
plot(A3(2,:))
title("Cam 1: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,5);
plot(A3(3,:))
title("Cam 2: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,6);
plot(A3(4,:))
title("Cam 2: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,9);
plot(A3(5,:))
title("Cam 3: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,10);
plot(A3(6,:))
title("Cam 3: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)

% normalize the rows by subtracting the mean
for j=1:length(A3(:,1))
    A3(j,:) = A3(j,:)-mean(A3(j,:));
end


% get the SVD of A
[U3,S3,~] = svd(A3);

% find the data in the new basis
Y3 = U3'*A3;

% plot the Y coordinates in each of the 6 dimension over time
subplot(3,4,3);
plot(Y3(1,:)) 
title("Matrix Y: Mode 1", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,4);
plot(Y3(2,:))
title("Matrix Y: Mode 2", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,7);
plot(Y3(3,:))
title("Matrix Y: Mode 3", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,8);
plot(Y3(4,:))
title("Matrix Y: Mode 4", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,11);
plot(Y3(5,:))
title("Matrix Y: Mode 5", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,12);
plot(Y3(6,:))
title("Matrix Y: Mode 6", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)

% get the diagonalized covariance matrix 
C3 = (1/(n-1))*S3.^2;

% calculate energy in each mode
energy = S3./sum(sum(S3));
energy_squared = S3.^2./sum(sum(S3.^2));
sum(sum(energy))
sum(sum(energy_squared))

% Plot singular values and energy
figure(3)
subplot(2,2,1)
plot(S3,'ko','Linewidth',2)
% axis([0 25 0 50])
ylabel('\sigma')
set(gca,'Fontsize',12,'Xtick',0:6)

subplot(2,2,2)
semilogy(S3,'ko','Linewidth',2)
% axis([0 25 10^-(18) 10^5])
ylabel('\Sigma (log scale)')
set(gca,'Fontsize',12,'Xtick',0:6,'Ytick',logspace(-15,5,5))

subplot(2,2,3)
plot(S3.^2/sum(S3.^2),'ko','Linewidth',2)
% axis([0 25 0 1])
ylabel('Energy')
set(gca,'Fontsize',12,'Xtick',0:6)

subplot(2,2,4)
semilogy(S3.^2/sum(S3.^2),'ko','Linewidth',2)
% axis([0 25 10^-(18) 10^5])
ylabel('Energy (log scale)')
set(gca,'Fontsize',12,'Xtick',0:6,'Ytick',logspace(-15,0,4))
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Test 3 - Horizontal Displacement, Singular Values and Energy', ...
    'Fontsize', 13,...
    'Fontweight', 'bold',...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

%% Test #4

close all; clear all; clc;

% Singular Value Decomposition

clear all; close all; clc;

% original data matrix
A4 = readtable('A_4.csv');
A4 = table2array(A4);

% number of time samples
n = length(A4(1,:));

% plot the A coordinates in each of the 6 dimension over time
figure(1)
subplot(3,4,1);
plot(A4(1,:)) 
title("Cam 1: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,2);
plot(A4(2,:))
title("Cam 1: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,5);
plot(A4(3,:))
title("Cam 2: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,6);
plot(A4(4,:))
title("Cam 2: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,9);
plot(A4(5,:))
title("Cam 3: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,10);
plot(A4(6,:))
title("Cam 3: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)


% get the SVD of A
[U4,S4,V4_a] = svd(A4, 'econ');

% find the data in the new basis
Y4 = U4'*A4;

% plot the Y coordinates in each of the 6 dimension over time
subplot(3,4,3);
plot(Y4(1,:)) 
title("Matrix Y: Mode 1", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,4);
plot(Y4(2,:))
title("Matrix Y: Mode 2", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,7);
plot(Y4(3,:))
title("Matrix Y: Mode 3", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,8);
plot(Y4(4,:))
title("Matrix Y: Mode 4", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,11);
plot(Y4(5,:))
title("Matrix Y: Mode 5", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)
subplot(3,4,12);
plot(Y4(6,:))
title("Matrix Y: Mode 6", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
ylabel('coordinates', 'Fontsize', 10)

% find the covariance matrix of the data in the new basis
C4 = (1/(n-1)).*Y4*Y4';

% diagonalize the covariance matrix with the SVD
[U4_C,S4_C,V4_C] = svd(C4, 'econ');

% calculate energy in each mode

energy1b=S4_C(1)/sum(S4_C)
energy2b = S4_C(1)^2/sum(S4_C.^2)

energy_1 = S4_C./sum(sum(S4_C));
energy_2 = S4_C.^2/sum(S4_C.^2);
energy_3 = S4_C.^2./sum(sum(S4_C.^2));

% Plot singular values and energy
figure(4)
subplot(2,2,1)
plot(S4_C,'ko','Linewidth',2)
% axis([0 25 0 50])
ylabel('\sigma')
set(gca,'Fontsize',12,'Xtick',0:6)

subplot(2,2,2)
semilogy(S4_C,'ko','Linewidth',2)
% axis([0 25 10^-(18) 10^5])
ylabel('\Sigma (log scale)')
set(gca,'Fontsize',12,'Xtick',0:6,'Ytick',logspace(-15,5,5))

subplot(2,2,3)
plot(S4_C.^2/sum(S4_C.^2),'ko','Linewidth',2)
% axis([0 25 0 1])
ylabel('Energy')
set(gca,'Fontsize',12,'Xtick',0:6)

subplot(2,2,4)
semilogy(S4_C.^2/sum(S4_C.^2),'ko','Linewidth',2)
% axis([0 25 10^-(18) 10^5])
ylabel('Energy (log scale)')
set(gca,'Fontsize',12,'Xtick',0:6,'Ytick',logspace(-15,0,4))
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Test 4 - Horizontal Displacement & Rotation', ...
    'Fontsize', 15,...
    'Fontweight', 'bold',...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

