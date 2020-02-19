%% HW 03

close all; clear all; clc;

% get full coordinates from csv file

test1_1_coords = table2array(readtable('coordinates/cam1_1_coords.csv'));
test1_2_coords = table2array(readtable('coordinates/cam2_1_coords.csv'));
test1_3_coords = table2array(readtable('coordinates/cam3_1_coords.csv'));


% % Camera 1 first max: 208 at index 10
% first_max_1_1 = test1_1_coords(:,2);
% first_max_1_1 = first_max_1_1(1:20);
% [min_val, min_idx] = min(first_max_1_1);
% plot(test1_1_coords(:,2)) % vertical motion
% axis([0 20 200 220])
% title("Camera 1, vertical", 'Fontsize', 16)
% 
% % Camera 1 last max: 221 at index 209
% last_max_1_1 = test1_1_coords(:,2);
% last_max_1_1 = last_max_1_1(200:226);
% [min_val, min_idx] = min(last_max_1_1);
% plot(test1_1_coords(:,2)) % vertical motion
% axis([200 226 0 300])
% title("Camera 1, vertical", 'Fontsize', 16)
% 
% % Camera 2 first max: 112 at index 19
% first_max_1_2 = test1_2_coords(:,2);
% first_max_1_2 = first_max_1_2(1:50);
% [min_val, min_idx] = min(first_max_1_2);
% plot(test1_2_coords(:,2)) % vertical motion
% axis([0 50 100 250])
% title("Camera 2, vertical", 'Fontsize', 16)
% 
% % Camera 2 last max: 119 at index 220
% last_max_1_2 = test1_2_coords(:,2);
% last_max_1_2 = last_max_1_2(200:226);
% [min_val, min_idx] = min(last_max_1_2);
% plot(test1_2_coords(:,2)) % vertical motion
% axis([200 226 100 250])
% title("Camera 2, vertical", 'Fontsize', 16)
% 
% 
% % Camera 3 first max: 278 at index 8
% first_max_1_3 = test1_3_coords(:,1);
% first_max_1_3 = first_max_1_3(1:25);
% [min_val, min_idx] = min(first_max_1_3);
% plot(test1_3_coords(:,1)) % vertical motion
% axis([0 25 250 350])
% title("Camera 2, vertical", 'Fontsize', 16)
% 
% % Camera 3 last max: 285 at index 209
% last_max_1_3 = test1_3_coords(:,1);
% last_max_1_3 = last_max_1_3(200:226);
% [min_val, min_idx] = min(last_max_1_3);
% plot(test1_3_coords(:,1)) % vertical motion
% axis([200 225 275 325])
% title("Camera 2, vertical", 'Fontsize', 16)


% adjusted coordinates
subset_1_1 = test1_1_coords(10:209, 1:2);
subset_1_2 = test1_2_coords(19:218, 1:2);
subset_1_3 = test1_3_coords(08:207, 1:2);


figure(1)
subplot(3,2,1);
plot(subset_1_1(:,1)) % vertical motion
title("Cam 1: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,2);
plot(subset_1_1(:,2)) % horizontal motion
title("Cam 1: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,3);
plot(subset_1_2(:,1)) % vertical motion
title("Cam 2: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,4);
plot(subset_1_2(:,2)) % horizontal motion
title("Cam 2: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,5);
plot(subset_1_3(:,1)) % vertical motion
title("Cam 3: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,6);
plot(subset_1_3(:,2)) % horizontal motion
title("Cam 3: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Test 1 - Ideal Harmonic Motion', ...
    'Fontsize', 15,...
    'Fontweight', 'bold',...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')



% create the matrix for SVD

A_1 = zeros(6,length(subset_1_1));
for j=1:200
    A_1(1,j) = subset_1_1(j,1);
    A_1(2,j) = subset_1_1(j,2);
    A_1(3,j) = subset_1_2(j,1);
    A_1(4,j) = subset_1_2(j,2);
    A_1(5,j) = subset_1_3(j,1);
    A_1(6,j) = subset_1_3(j,2);
end

csvwrite('A_1.csv',A_1)


%% Test 2 - Noise/Camera Shake

close all; clear all; clc;

% get full coordinates from csv file

test2_1_coords = table2array(readtable('coordinates/cam1_2_coords.csv'));
test2_2_coords = table2array(readtable('coordinates/cam2_2_coords.csv'));
test2_3_coords = table2array(readtable('coordinates/cam3_2_coords.csv'));
% 
% % Camera 1 first max: 232 at index 35
% first_max_2_1 = test2_1_coords(:,2);
% first_max_2_1 = first_max_2_1(1:50);
% [min_val, min_idx] = min(first_max_2_1);
% plot(test2_1_coords(:,2)) % vertical motion
% axis([10 40 210 260])
% title("Camera 1 first max", 'Fontsize', 16)
% 
% % Camera 1 last max: 216 at index 273
% last_max_2_1 = test2_1_coords(:,2);
% last_max_2_1 = last_max_2_1(260:280);
% [min_val, min_idx] = min(last_max_2_1);
% plot(test2_1_coords(:,2)) % vertical motion
% axis([260 280 210 260])
% title("Camera 1 last max", 'Fontsize', 16)
% 
% % Camera 2 first max: 125 at index 18
% first_max_2_2 = test2_2_coords(:,2);
% first_max_2_2 = first_max_2_2(1:50);
% [min_val, min_idx] = min(first_max_2_2);
% plot(test2_2_coords(:,2)) % vertical motion
% axis([0 25 100 200])
% title("Camera 2 first max", 'Fontsize', 16)
% 
% % Camera 2 last max: 139 at index 260
% last_max_2_2 = test2_2_coords(:,2);
% last_max_2_2 = last_max_2_2(250:270);
% [min_val, min_idx] = min(last_max_2_2);
% plot(test2_2_coords(:,2)) % vertical motion
% axis([250 270 100 200])
% title("Camera 2 last max", 'Fontsize', 16)
% 
% 
% % Camera 3 first max:  308 at index 37
% first_max_2_3 = test2_3_coords(:,1);
% first_max_2_3 = first_max_2_3(1:50);
% [min_val, min_idx] = min(first_max_2_3);
% plot(test2_3_coords(:,1)) % vertical motion
% axis([0 40 200 400])
% title("Camera 3 first max", 'Fontsize', 16)
% 
% 
% % Camera 3 last max: 312 at index 280
% last_max_2_3 = test2_3_coords(:,1);
% last_max_2_3 = last_max_2_3(250:300);
% [min_val, min_idx] = min(last_max_2_3);
% plot(test2_3_coords(:,1)) % vertical motion
% axis([250 300 300 320])
% title("Camera 3 last max", 'Fontsize', 16)

% adjusted coordinates
subset_2_1 = test2_1_coords(35:274, 1:2);
subset_2_2 = test2_2_coords(18:258, 1:2);
subset_2_3 = test2_3_coords(40:279, 1:2);

figure(1)
subplot(3,2,1);
plot(subset_2_1(:,1)) % vertical motion
title("Cam 1: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,2);
plot(subset_2_1(:,2)) % horizontal motion
title("Cam 1: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,3);
plot(subset_2_2(:,1)) % vertical motion
title("Cam 2: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,4);
plot(subset_2_2(:,2)) % horizontal motion
title("Cam 2: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,5);
plot(subset_2_3(:,1)) % vertical motion
title("Cam 3: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
subplot(3,2,6);
plot(subset_2_3(:,2)) % horizontal motion
title("Cam 3: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Test 2 - Noisy (camera shake)', ...
    'Fontsize', 15,...
    'Fontweight', 'bold',...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')


% create the matrix for SVD

A_2 = zeros(6,length(subset_2_1));
for j=1:200
    A_2(1,j) = subset_2_1(j,1);
    A_2(2,j) = subset_2_1(j,2);
    A_2(3,j) = subset_2_2(j,1);
    A_2(4,j) = subset_2_2(j,2);
    A_2(5,j) = subset_2_3(j,1);
    A_2(6,j) = subset_2_3(j,2);
end


csvwrite('A_2.csv',A_2)

%% Test 3 - Horizontal Displacement

close all; clear all; clc;

% get full coordinates from csv file

test3_1_coords = table2array(readtable('coordinates/cam1_3_coords.csv'));
test3_2_coords = table2array(readtable('coordinates/cam2_3_coords.csv'));
test3_3_coords = table2array(readtable('coordinates/cam3_3_coords.csv'));

% subplot(3,1,1);
% plot(test3_1_coords(:,2)) % vertical motion
% title("Camera 1, vertical", 'Fontsize', 16)
% subplot(3,1,2);
% plot(test3_2_coords(:,2)) % vertical motion
% title("Camera 2, vertical", 'Fontsize', 16)
% subplot(3,1,3);
% plot(test3_3_coords(:,1)) % horizontal motion
% title("Camera 3, horizontal", 'Fontsize', 16)
% 
% 
% % Camera 1 first max: 236 at index 35
% first_max_3_1 = test3_1_coords(:,2);
% first_max_3_1 = first_max_3_1(1:50);
% [min_val, min_idx] = min(first_max_3_1);
% plot(test3_1_coords(:,2)) % vertical motion
% axis([30 40 200 250])
% title("Camera 1 first max", 'Fontsize', 16)
% 
% % Camera 1 last max: 247 at index 199
% last_max_3_1 = test3_1_coords(:,2);
% last_max_3_1 = last_max_3_1(180:220);
% [min_val, min_idx] = min(last_max_3_1);
% plot(test3_1_coords(:,2)) % vertical motion
% axis([180 220 245 255])
% title("Camera 1 last max", 'Fontsize', 16)
% 
% % Camera 2 first max: 192 at index 25
% first_max_3_2 = test3_2_coords(:,2);
% first_max_3_2 = first_max_3_2(1:50);
% [min_val, min_idx] = min(first_max_3_2);
% plot(test3_2_coords(:,2)) % vertical motion
% axis([10 30 150 250])
% title("Camera 2 first max", 'Fontsize', 16)
% 
% % Camera 2 last max: 194 at 186
% last_max_3_2 = test3_2_coords(:,2);
% last_max_3_2 = last_max_3_2(160:200);
% [min_val, min_idx] = min(last_max_3_2);
% plot(test3_2_coords(:,2)) % vertical motion
% axis([160 200 190 200])
% title("Camera 2 last max", 'Fontsize', 16)
% 
% 
% % Camera 3 first max: 289 at index 28
% first_max_3_3 = test3_3_coords(:,1);
% first_max_3_3 = first_max_3_3(1:50);
% [min_val, min_idx] = min(first_max_3_3);
% plot(test3_3_coords(:,1)) % vertical motion
% axis([0 40 200 400])
% title("Camera 3 first max", 'Fontsize', 16)
% 
% 
% % Camera 3 last max: 286 at index 191
% last_max_3_3 = test3_3_coords(:,1);
% last_max_3_3 = last_max_3_3(180:200);
% [min_val, min_idx] = min(last_max_3_3);
% plot(test3_3_coords(:,1)) % vertical motion
% axis([180 200 260 320])
% title("Camera 3 last max", 'Fontsize', 16)

% adjusted coordinates
subset_3_1 = test3_1_coords(35:199, 1:2);
subset_3_2 = test3_2_coords(25:189, 1:2);
subset_3_3 = test3_3_coords(28:192, 1:2);

figure(1)
subplot(3,2,1);
plot(subset_3_1(:,1)) % horizontal motion
title("Cam 1: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_3_1)])
subplot(3,2,2);
plot(subset_3_1(:,2)) % vertical motion
title("Cam 1: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_3_1)])
subplot(3,2,3);
plot(subset_3_2(:,1)) % vertical motion
title("Cam 2: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_3_1)])
subplot(3,2,4);
plot(subset_3_2(:,2)) % horizontal motion
title("Cam 2: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_3_1)])
subplot(3,2,5);
plot(subset_3_3(:,1)) % vertical motion
title("Cam 3: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_3_1)])
subplot(3,2,6);
plot(subset_3_3(:,2)) % horizontal motion
title("Cam 3: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_3_1)])
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Test 3 - Horizontal Displacement of Can', ...
    'Fontsize', 15,...
    'Fontweight', 'bold',...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')


% create the matrix for SVD

A_3 = zeros(6,length(subset_3_1));
for j=1:length(subset_3_1)
    A_3(1,j) = subset_3_1(j,1);
    A_3(2,j) = subset_3_1(j,2);
    A_3(3,j) = subset_3_2(j,1);
    A_3(4,j) = subset_3_2(j,2);
    A_3(5,j) = subset_3_3(j,1);
    A_3(6,j) = subset_3_3(j,2);
end

csvwrite('A_3.csv',A_3)

%% Test 4 - Horizontal Displacement and Rotation

close all; clear all; clc;

% get full coordinates from csv file

test4_1_coords = table2array(readtable('coordinates/cam1_4_coords.csv'));
test4_2_coords = table2array(readtable('coordinates/cam2_4_coords.csv'));
test4_3_coords = table2array(readtable('coordinates/cam3_4_coords.csv'));

% % Camera 1 first max: 248 at index 12
% first_max_4_1 = test4_1_coords(:,2);
% first_max_4_1 = first_max_4_1(1:40);
% [min_val, min_idx] = min(first_max_4_1);
% plot(test4_1_coords(:,2)) % vertical motion
% axis([0 25 240 260])
% title("Camera 1 first max", 'Fontsize', 16)
% 
% % Camera 1 last max: 235 at index 375
% last_max_4_1 = test4_1_coords(:,2);
% last_max_4_1 = last_max_4_1(350:392);
% [min_val, min_idx] = min(last_max_4_1);
% plot(test4_1_coords(:,2)) % vertical motion
% axis([350 400 225 250])
% title("Camera 1 last max", 'Fontsize', 16)
% 
% % Camera 2 first max: 143 at index 18
% first_max_4_2 = test4_2_coords(:,2);
% first_max_4_2 = first_max_4_2(1:50);
% [min_val, min_idx] = min(first_max_4_2);
% plot(test4_2_coords(:,2)) % vertical motion
% axis([10 30 100 200])
% title("Camera 2 first max", 'Fontsize', 16)
% 
% % Camera 2 last max: 102 at index 381
% last_max_4_2 = test4_2_coords(:,2);
% last_max_4_2 = last_max_4_2(360:405);
% [min_val, min_idx] = min(last_max_4_2);
% plot(test4_2_coords(:,2)) % vertical motion
% axis([360 390 80 150])
% title("Camera 2 last max", 'Fontsize', 16)
% 
% 
% % Camera 3 first max: 312 at index 11
% first_max_4_3 = test4_3_coords(:,1);
% first_max_4_3 = first_max_4_3(1:40);
% [min_val, min_idx] = min(first_max_4_3);
% plot(test4_3_coords(:,1)) % vertical motion
% axis([0 40 300 325])
% title("Camera 3 first max", 'Fontsize', 12)
% 
% 
% % Camera 3 last max: 313 at index 376
% last_max_4_3 = test4_3_coords(:,1);
% last_max_4_3 = last_max_4_3(350:394);
% [min_val, min_idx] = min(last_max_4_3);
% plot(test4_3_coords(:,1)) % vertical motion
% axis([350 394 300 325])
% title("Camera 3 last max", 'Fontsize', 16)

% adjusted coordinates
subset_4_1 = test4_1_coords(12:375, 1:2);
subset_4_2 = test4_2_coords(18:381, 1:2);
subset_4_3 = test4_3_coords(11:374, 1:2);

figure(1)
subplot(3,2,1);
plot(subset_4_1(:,1)) % horizontal motion
title("Cam 1: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_4_1)])
subplot(3,2,2);
plot(subset_4_1(:,2)) % vertical motion
title("Cam 1: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_4_1)])
subplot(3,2,3);
plot(subset_4_2(:,1)) % vertical motion
title("Cam 2: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_4_1)])
subplot(3,2,4);
plot(subset_4_2(:,2)) % horizontal motion
title("Cam 2: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_4_1)])
subplot(3,2,5);
plot(subset_4_3(:,1)) % vertical motion
title("Cam 3: x-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_4_1)])
subplot(3,2,6);
plot(subset_4_3(:,2)) % horizontal motion
title("Cam 3: y-coords", 'Fontsize', 10)
xlabel('time(s)', 'Fontsize', 10)
xlim([0 length(subset_4_1)])
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Test 4 - Horizontal Displacement & Rotation of Can', ...
    'Fontsize', 15,...
    'Fontweight', 'bold',...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

% create the matrix for SVD

A_4 = zeros(6,length(subset_4_1));
for j=1:length(subset_4_1)
    A_4(1,j) = subset_4_1(j,1);
    A_4(2,j) = subset_4_1(j,2);
    A_4(3,j) = subset_4_2(j,1);
    A_4(4,j) = subset_4_2(j,2);
    A_4(5,j) = subset_4_3(j,1);
    A_4(6,j) = subset_4_3(j,2);
end

csvwrite('A_4.csv',A_4)
