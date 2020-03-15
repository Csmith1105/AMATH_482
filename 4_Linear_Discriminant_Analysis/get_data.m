% %% Test 3 c
% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% dat_3c = zeros(s,70); % 40 samples total (10/song)
% 
% count = 0;
% for i=1:7  
%     % go through each song
%     filename = strcat('test_03/rock/all_songs/0',num2str(i),'.mp3');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_3c(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/rock/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_3c(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/rock/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_3c(:,count+1),Fs/2);
%         end
%         count = count+1;
%     end
% end
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/test_03c.mat dat_3c

% %% Test 3 b
% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% dat_3b = zeros(s,70); % 70 samples total (10/song)
% 
% count = 0;
% for i=1:7  
%     % go through each song
%     filename = strcat('test_03/country/all_songs/0',num2str(i),'.mp3');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_3b(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/country/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_3b(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/country/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_3b(:,count+1),Fs/2);
%         end
%         count = count+1;
%     end
% end
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/test_03b.mat dat_3b
% % 
% %% Test 3 a
% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% dat_3a = zeros(s,40); % 40 samples total (10/song)
% 
% count = 0;
% for i=1:7  
%     % go through each song
%     filename = strcat('test_03/chill_beats/all_songs/0',num2str(i),'.mp3');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_3a(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/chill_beats/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_3a(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/chill_beats/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_3a(:,count+1),Fs/2);
%         end
%         count = count+1;
%     end
% end
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/test_03a.mat dat_3a
% 
% 
% %% Test 2 c

% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% dat_2c = zeros(s,70); % 70 samples total (10/song)
% 
% count = 0;
% for i=1:7  
%     % go through each song
%     filename = strcat('test_02/sam_cooke/all_songs/0',num2str(i),'.wav');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_2c(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/sam_cooke/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_2c(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/sam_cooke/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_2c(:,count+1),Fs/2);
%         end
%         count = count+1;
%     end
% end
% 
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/test_02c.mat dat_2c
% 
%% Test 2 b

% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% dat_2b = zeros(s,70); % 70 samples total (10/song)
% 
% count = 0;
% for i=1:7  
%     % go through each song
%     filename = strcat('test_02/otis_redding/all_songs/0',num2str(i),'.wav');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_2b(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/otis_redding/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_2b(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/otis_redding/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_2b(:,count+1),Fs/2);
%         end
%         count = count+1;
%     end
% end
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/test_02b.mat dat_2b


% %% Test 2 a
% 
% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% dat_2a = zeros(s,40); % 40 samples total (10/song)
% 
% count = 0;
% for i=1:7  
%     % go through each song
%     filename = strcat('test_02/al_green/all_songs/0',num2str(i),'.wav');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_2a(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/al_green/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_2a(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/al_green/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_2a(:,count+1),Fs/2);
%         end
%         count = count+1;
%     end
% end
% 
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/test_02a.mat dat_2a
% 
% 
% %% Test 1 c
% 
% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% dat_1c = zeros(s,40); % 40 samples total (10/song)
% 
% count = 0;
% for i=1:4  
%     % go through each song
%     filename = strcat('test_01/air/all_songs/0',num2str(i),'.wav');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_1c(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/air/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_1c(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/air/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_1c(:,count+1),Fs/2);
%         end
%         count = count+1;
%     end
% end
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/test_01c.mat dat_1c
% 
% %% Test 1 b
% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% dat_1b = zeros(s,40); % 40 samples total (10/song)
% 
% count = 0;
% for i=1:4  
%     % go through each song
%     filename = strcat('test_01/nina/all_songs/0',num2str(i),'.wav');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_1b(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/nina/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_1b(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/nina/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_1b(:,count+1),Fs/2);
%         end
%         count = count+1;
%         
%     end
% end
% 
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/test_01b.mat dat_1b
% 
% %% Test 1 a
% 
% 
% close all; clear all; clc;
% 
% s = (50000)*2;
% 
% 
% dat_1a = zeros(s,40); % 40 samples total (10/song)
% 
% count = 0;
% for i=1:3  
%     % Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/air/all_songs/01.wav
%     % go through each song
%     filename = strcat('test_01/rubblebucket/all_songs/0',num2str(i),'.wav');
%     [y,Fs] = audioread(filename);
%     y_mono = y(:,1);  % mono
%     b = 1:2:length(y_mono); % resampling vector
%     y_resampled = y_mono(b)';  % transpose the y vector
%      
%     % get 10 samples of each song
%     for j=1:10 
%         dat_1a(:,count+1) = y_resampled(1:s);   % new 5 second clip
%         last = size(y_resampled);
%         y_resampled = y_resampled(s+1:last(2));
%         if count > 9
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/rubblebucket/all_clips/0',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_1a(:,count+1),Fs/2);
%         else
%             wavname =... 
%                 strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/rubblebucket/all_clips/00',...
%             num2str(count),'.wav');
%             audiowrite(wavname,dat_1a(:,count+1),Fs/2);
%         end
%         count = count+1;
%     end
% end
% 
%  
% filename = strcat('test_01/rubblebucket/all_songs/la.wav');
% [y,Fs] = audioread(filename);
% y_mono = y(:,1);  % mono
% b = 1:2:length(y_mono); % resampling vector
% y_resampled = y_mono(b)';  % transpose the y vector
% 
% for j=1:9 
%     dat_1a(:,count+1) = y_resampled(1:s);   % new 5 second clip
%     last = size(y_resampled);
%     y_resampled = y_resampled(s+1:last(2));
%     if count > 9
%         wavname =... 
%             strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/rubblebucket/all_clips/0',...
%         num2str(count),'.wav');
%         audiowrite(wavname,dat_1a(:,count+1),Fs/2);
%     else
%         wavname =... 
%             strcat('/Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/rubblebucket/all_clips/00',...
%         num2str(count),'.wav');
%         audiowrite(wavname,dat_1a(:,count+1),Fs/2);
%     end
%     count = count+1;
% end
% 
% 
% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/test_01a.mat dat_1a  

