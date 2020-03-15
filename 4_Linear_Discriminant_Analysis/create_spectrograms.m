%% Test 3 c

close all; clear all; clc;

load test_03/test_03c.mat


% set the time and frequency domains

size = size(dat_3c);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_3c = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n); 

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_3c(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_3c(:,j) = reshape(spect,[8001*length(tstep),1]);
end

figure(1)
subplot(1,1,1)
pcolor(tstep,ks_Hz,spect_array(:,:,20)), 
shading interp 
title('Home-made a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/test_03c_sp.mat sp_3c

%% Test 3 b

close all; clear all; clc;

load test_03/test_03b.mat


% set the time and frequency domains

size = size(dat_3b);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_3b = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n); 

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_3b(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_3b(:,j) = reshape(spect,[8001*length(tstep),1]);
end


figure(1)
pcolor(tstep,ks_Hz,spect_array(:,:,20)), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)


% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/test_03b_sp.mat sp_3b


%% Test 3 a

close all; clear all; clc;

load test_03/test_03a.mat


% set the time and frequency domains

size = size(dat_3a);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_3a = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n);  

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_3a(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_3a(:,j) = reshape(spect,[8001*length(tstep),1]);
end


figure(1)
pcolor(tstep,ks_Hz,spect_array(:,:,60)), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_03/test_03a_sp.mat sp_3a


%% Test 2 c

close all; clear all; clc;

load test_02/test_02c.mat


% set the time and frequency domains

size = size(dat_2c);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_2c = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n); 

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_2c(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_2c(:,j) = reshape(spect,[8001*length(tstep),1]);
end


figure(1)
pcolor(tstep,ks_Hz,spect_array(:,:,20)), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/test_02c_sp.mat sp_2c
%% Test 2 b

close all; clear all; clc;

load test_02/test_02b.mat


% set the time and frequency domains

size = size(dat_2b);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_2b = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n); 

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_2b(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_2b(:,j) = reshape(spect,[8001*length(tstep),1]);
end


figure(1)
pcolor(tstep,ks_Hz,spect_array(:,:,20)), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/test_02b_sp.mat sp_2b

%% Test 2 a

close all; clear all; clc;

load test_02/test_02a.mat


% set the time and frequency domains

size = size(dat_2a);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_2a = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n); 

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_2a(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_2a(:,j) = reshape(spect,[8001*length(tstep),1]);
end


figure(1)
pcolor(tstep,ks_Hz,spect_array(:,:,20)), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_02/test_02a_sp.mat sp_2a


%% Test 1 c

close all; clear all; clc;

load test_01/test_01c.mat


% set the time and frequency domains

size = size(dat_1c);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_1c = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n); 

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_1c(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_1c(:,j) = reshape(spect,[8001*length(tstep),1]);
end


figure(1)
pcolor(tstep,ks_Hz,spect_array(:,:,20)), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/test_01c_sp.mat sp_1c

%% Test 1 b

close all; clear all; clc;
load test_01/test_01b.mat


% set the time and frequency domains

size = size(dat_1b);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_1b = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n); 

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_1b(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_1b(:,j) = reshape(spect,[8001*length(tstep),1]);
end


figure(1)
pcolor(tstep,ks_Hz,spect_array(:,:,20)), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/test_01b_sp.mat sp_1b

%% Test 1 a

close all; clear all; clc;

load test_01/test_01a.mat

% set the time and frequency domains

size = size(dat_1a);
n=size(2);   % number of samples
s = size(1); % length of samples
L=s/(44100/2);  % time domain
t2=linspace(0,L,s+1); 
t=t2(1:s); 
k_Hz= (1/(2*L))*[0:(s/2-1) -s/2:-1];
ks_Hz=fftshift(k_Hz);
ks_Hz = ks_Hz((s/2-4000):(s/2+4000));

a = 2e4;
tstep=0:0.3:L;


% array of spectrogram data
sp_1a = zeros(8001*length(tstep),n);
spect_array = zeros(8001,length(tstep),n);  

for j=1:n
    % spectrogram of clip
    spect = zeros(s,length(tstep));  
    for k=1:length(tstep) 
        g=exp(-a*(t-tstep(k)).^2); 
        Sg=g'.*dat_1a(:,j); % apply new filter to the current 5sec clip
        Sgt=fft(Sg); % transform to frequency domain
        spect(:,k) = fftshift(abs(Sgt));
    end
    spect = spect((s/2-4000):(s/2+4000),:);
    spect_array(:,:,j) = spect;
    sp_1a(:,j) = reshape(spect,[8001*length(tstep),1]);
end

%spect = reshape(sp_1a(:,1),[length(ks_Hz),length(tstep)]);

figure(1)
pcolor(tstep,ks_Hz,spect_array(:,:,20)), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

% save /Users/christinasmith/Desktop/AMATH_482.nosync/Homework/HW_04/test_01/test_01a_sp.mat sp_1a 