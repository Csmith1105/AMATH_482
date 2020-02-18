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
