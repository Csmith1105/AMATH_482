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

test_import = readtable('test_1_4.csv');

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

test_import = readtable('test_2_4.csv');

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

test_import = readtable('cam3_4_coords.csv');

t_a = cam3_4_coords(:,1)';
t_b = table2array(test_import(:,1))';

sum(t_a-t_b)
