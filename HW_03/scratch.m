
%% ginput() Part 1 - Camera 1

clear all; close all; clc

load('cam1_1.mat')
% implay(vidFrames1_1)
vidFrames1_1_grey = zeros(480,640,1,226);
numFrames = size(vidFrames1_1,4);
clippedGrey = zeros(380,80,1,226); % to hold the clipped data\
cam1_1_coords = zeros(numFrames,2);

for j = 100:110
    X = vidFrames1_1(:,:,:,j);
    X_gray = rgb2gray(X);
    vidFrames1_1_grey(:,:,:,j) = im2double(X_gray);
    newFrame = im2double(X_gray(50:429, 310:389));
    clippedGrey(:,:,:,j) = newFrame;
    imshow(clippedGrey(:,:,:,j)); drawnow
    title(num2str(j))
    [x,y] = ginput(1);
    cam1_1_coords(j,1) = x;
    cam1_1_coords(j,2) = y;
    pause(1)
end

%% Part 1 - Camera 1

clear all; close all; clc

load('cam1_1.mat')
% implay(vidFrames1_1)
vidFrames1_1_grey = zeros(480,640,1,226);
numFrames = size(vidFrames1_1,4);
clippedGrey = zeros(380,80,1,226); % to hold the clipped data
cam1Coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames1_1(:,:,:,j);
    X_gray = rgb2gray(X);
    vidFrames1_1_grey(:,:,:,j) = im2double(X_gray);
    newFrame = im2double(X_gray(50:429, 310:389));
    clippedGrey(:,:,:,j) = newFrame;
    imshow(clippedGrey(:,:,:,j)); drawnow
    % imshow(X_gray); drawnow
    % imshow(X); drawnow
    % [maxValue, maxIdx] = max(newFrame(:));
    % [max_x, max_y] = ind2sub(size(newFrame), maxIdx);
    % cam1Coords(j,:) = [max_x, max_y];  
end

%% Part 1 - Camera 2

clear all; close all; clc

load('cam2_1.mat')
% implay(vidFrames1_1)
vidFrames2_1_grey = zeros(480,640,1,226);
numFrames = size(vidFrames2_1,4);
clippedGrey = zeros(380,100,1,226); % to hold the clipped data
cam2Coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames2_1(:,:,:,j);
    X_gray = rgb2gray(X);
    vidFrames2_1_grey(:,:,:,j) = im2double(X_gray);
    newFrame = im2double(X_gray(50:429, 250:349));
    clippedGrey(:,:,:,j) = newFrame;
    imshow(clippedGrey(:,:,:,j)); drawnow
    % imshow(X_gray); drawnow
    % imshow(X); drawnow
    [maxValue, maxIdx] = max(newFrame(:));
    [max_x, max_y] = ind2sub(size(newFrame), maxIdx);
    cam2Coords(j,:) = [max_x, max_y];  
end

%% Part 1 - Camera 3

clear all; close all; clc

load('cam3_1.mat')
% implay(vidFrames1_1)
vidFrames3_1_grey = zeros(480,640,1,226);
numFrames = size(vidFrames3_1,4);
clippedGrey = zeros(100,640,1,226); % to hold the clipped data
cam3Coords = zeros(numFrames,2);

for j = 1:numFrames
    X = vidFrames3_1(:,:,:,j);
    X_gray = rgb2gray(X);
    vidFrames3_1_grey(:,:,:,j) = im2double(X_gray);
    newFrame = im2double(X_gray(240:339, 1:640));
    clippedGrey(:,:,:,j) = newFrame;
    imshow(clippedGrey(:,:,:,j)); drawnow
    % imshow(X_gray); drawnow
    % imshow(X); drawnow
    [maxValue, maxIdx] = max(newFrame(:));
    [max_x, max_y] = ind2sub(size(newFrame), maxIdx);
    cam3Coords(j,:) = [max_x, max_y];  
end


%% vision.pointTracker

clear all; close all; clc

load('cam1_1.mat')
implay(vidFrames1_1)
vidFrames1_1_grey = zeros(480,640,1,226);
numFrames = size(vidFrames1_1,4);

for j = 1:numFrames
    X = vidFrames1_1(:,:,:,j);
    X_gray = rgb2gray(X);
    vidFrames1_1_grey(:,:,:,j) = im2double(X_gray);
    % imshow(X_gray); drawnow
    % imshow(X); drawnow
end


pointTracker = vision.PointTracker;
% pointTracker = vision.PointTracker(Name,Value);
% initialize(pointTracker)

for j = 1:numFrames
    frame = vidFrames1_1(:,:,:,j);
    [points, validity] = step(tracker,frame);
end

objectRegion = [310 210 80 110];
% x and y start points, width and height

frame001 = vidFrames1_1_grey(:,:,:,1);
imshow(frame001)
%objectImage = insertShape(objectFrame,'Rectangle',objectRegion,'Color','red');
objectImage = insertShape(frame001,'Rectangle',...
    objectRegion,'Color','red');
figure(2);
imshow(objectImage);
title('Red box around paint can');

points = detectMinEigenFeatures(frame001,'ROI',objectRegion);

pointImage = insertMarker(frame001,points.Location,'+','Color','white');
figure(3);
imshow(pointImage);
title('Detected interest points');

tracker = vision.PointTracker('MaxBidirectionalError',1);
initialize(tracker,points.Location,objectFrame);

while ~isDone(videoFileReader)
      frame = videoFileReader();
      [points,validity] = tracker(frame);
      out = insertMarker(frame,points(validity, :),'+');
      videoPlayer(out);
end

P = cell([],1) ; V = P ; 
count = 0 ; 

[x,y] = ginput(226);

% vision.pointtracker()
% computer vision toolbox

% imageSegmenter

% returns the linear index corresponding to the max value in mean_fft
% [f20_max, max_idx] = max(f20(:));

% [max_x, max_y, max_z] = ind2sub(size(f20), max_idx);

%% Part 1 - Camera 2

load('cam2_1.mat')
implay(vidFrames2_1)

numFrames = size(vidFrames2_1,4);
for j = 1:numFrames
    X = vidFrames2_1(:,:,:,j);
    imshow(X); drawnow
end

load('cam3_1.mat')
implay(vidFrames3_1)

numFrames = size(vidFrames3_1,4);
for j = 1:numFrames
    X = vidFrames3_1(:,:,:,j);
    imshow(X); drawnow
end

%% HW 03

clear all; close all; clc

% x(t) = A*cos(2*pi*f*t)


%% Noisy
load('cam1_2.mat')
% implay(vidFrames1_1)

numFrames = size(vidFrames1_2,4);
for j = 1:numFrames
    X = vidFrames1_2(:,:,:,j);
    imshow(X); drawnow
end

load('cam2_2.mat')
implay(vidFrames2_2)

numFrames = size(vidFrames2_2,4);
for j = 1:numFrames
    X = vidFrames2_2(:,:,:,j);
    imshow(X); drawnow
end

load('cam3_2.mat')
implay(vidFrames3_2)

numFrames = size(vidFrames3_2,4);
for j = 1:numFrames
    X = vidFrames3_2(:,:,:,j);
    imshow(X); drawnow
end

%% Horizontal Displacement

load('cam1_3.mat')
% implay(vidFrames1_3)

numFrames = size(vidFrames1_3,4);
for j = 1:numFrames
    X = vidFrames1_3(:,:,:,j);
    imshow(X); drawnow
end

load('cam2_3.mat')
implay(vidFrames2_3)

numFrames = size(vidFrames2_3,4);
for j = 1:numFrames
    X = vidFrames2_3(:,:,:,j);
    imshow(X); drawnow
end

load('cam3_3.mat')
implay(vidFrames3_3)

numFrames = size(vidFrames3_3,4);
for j = 1:numFrames
    X = vidFrames3_3(:,:,:,j);
    imshow(X); drawnow
end


%% Horizontal displacement and rotation
load('cam1_4.mat')
% implay(vidFrames1_4)

numFrames = size(vidFrames1_4,4);
for j = 1:numFrames
    X = vidFrames1_4(:,:,:,j);
    imshow(X); drawnow
end

load('cam2_4.mat')
implay(vidFrames2_4)

numFrames = size(vidFrames2_4,4);
for j = 1:numFrames
    X = vidFrames2_4(:,:,:,j);
    imshow(X); drawnow
end

load('cam3_4.mat')
implay(vidFrames3_4)

numFrames = size(vidFrames3_4,4);
for j = 1:numFrames
    X = vidFrames3_4(:,:,:,j);
    imshow(X); drawnow
end
