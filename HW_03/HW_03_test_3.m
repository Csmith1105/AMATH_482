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
