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
