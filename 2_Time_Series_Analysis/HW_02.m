
%% HW 02 Part 1

% Construct signal and plot signal and FFT

close all; clear all; clc;

load handel
% y = audio signal
S = y'; % transpose y vector
n=length(S);   % number of samples
L=n/Fs;  % time domain
t2=linspace(0,L,n+1); 
t=t2(1:n); 
k=(2*pi/2*L)*[0:(n-1)/2 -(n-1)/2:-1]; % frequency vector
ks=fftshift(k);

% figure(1)
plot((1:length(y))/Fs,S)
xlabel('Time [sec]')
ylabel('Amplitude')
title('Signal as a function of time')
% p8 = audioplayer(S,Fs);
% playblocking(p8);

St=fft(S);  

% figure(2)
subplot(2,1,1) 
% plot the function against time
plot(t,S,'k','Linewidth',2) 
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

subplot(2,1,2)
% plot FFT against (normalized) frequency
plot(ks,abs(fftshift(St))/max(abs(St)),'r','Linewidth',2);
title("Signal v Frequency",'Fontsize',12)
set(gca,'Fontsize',11)
xlabel('frequency (\omega)'), ylabel('FFT(S)')

% Construct Gabor window and add to time domain plot
tau = 4; 
a = 100; % width of filter
g = exp(-a*(t-tau).^2);  % the filter
subplot(2,1,1)
plot(t,S,'k',t,g,'m','Linewidth',2)
title("Signal v Time & Gabor Window: a = 100, tau = 4",'Fontsize',12)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

%% Apply filter and take fft

a = 100; % width of filter
g = exp(-a*(t-tau).^2);  % the filter
Sg = g.*S;
Sgt = fft(Sg);

% figure(3)
subplot(3,1,1) 
% subplot(3,2,2) 
plot(t,S,'k','Linewidth',2) 
axis([2 6 -1 1])
title("Signal v Time & Gabor Window: a = 100",'Fontsize',12)
hold on 
plot(t,g,'m','Linewidth',2)  % shows the filter on the S(t) plot
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

subplot(3,1,2)
% subplot(3,2,4)
plot(t,Sg,'k','Linewidth',2)
axis([2 6 -1 1])
title("Gabor Filtered Signal v Time",'Fontsize',12)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('Sg(t)')


subplot(3,1,3) 
% subplot(3,2,6) 
plot(ks,abs(fftshift(Sgt))/max(abs(Sgt)),'r','Linewidth',2)
title("FFT of Gabor Filtered Signal v Frequency",'Fontsize',12)
set(gca,'Fontsize',11)
xlabel('frequency (\omega)'), ylabel('FFT(Sg)')


a = 1; % width of filter
g = exp(-a*(t-tau).^2); % Gaussian, but can try Shannon or Mexican hat
Sg = g.*S;
Sgt = fft(Sg);

figure(4)
subplot(3,1,1) 
% subplot(3,2,1) 
plot(t,S,'k','Linewidth',2)
axis([2 6 -1 1])
title("Signal v Time & Gabor Window: a = 1",'Fontsize',12)
hold on 
plot(t,g,'m','Linewidth',2)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

% less accuracy in the time domain
subplot(3,1,2) 
% subplot(3,2,3)  
plot(t,Sg,'k','Linewidth',2)
axis([2 6 -1 1])
title("Gabor Filtered Signal v Time",'Fontsize',12)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('Sg(t)')

% more detail in the frequency domain
subplot(3,1,3)
% subplot(3,2,5) 
plot(ks,abs(fftshift(Sgt))/max(abs(Sgt)),'r','Linewidth',2);
title("FFT of Gabor Filtered Signal v Frequency",'Fontsize',12)
set(gca,'Fontsize',11)
xlabel('frequency (\omega)'), ylabel('FFT(Sg)')


%% Change window size - narrower window
% larger a, less accuracy in frequency, more accuracy in time
a = 1000;
g = exp(-a*(t-tau).^2);
Sg = g.*S;
Sgt = fft(Sg);

figure(5)
subplot(3,1,1) 
plot(t,S,'k','Linewidth',2)
axis([2 6 -1 1])
title("Signal v Time & Gabor Window: a = 1,000",'Fontsize',12)
hold on 
plot(t,g,'m','Linewidth',2)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

% less accuracy in the time domain
subplot(3,1,2) 
plot(t,Sg,'k','Linewidth',2)
axis([2 6 -1 1])
title("Gabor Filtered Signal v Time",'Fontsize',12)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('Sg(t)')

% more detail in the frequency domain
subplot(3,1,3) 
plot(ks,abs(fftshift(Sgt))/max(abs(Sgt)),'r','Linewidth',2);
title("FFT of Gabor Filtered Signal v Frequency",'Fontsize',12)
set(gca,'Fontsize',11)
xlabel('frequency (\omega)'), ylabel('FFT(Sg)')

%% Animation of shifting window

a = 1;
tstep=0:0.1:100;

% figure(5)
for j=1:length(tstep) % [1:1001]
    g=exp(-a*(t-tstep(j)).^2);  
    Sg=g.*S; 
    Sgt=fft(Sg); 
    
    subplot(3,1,1) 
    plot(t,S,'k','Linewidth',2) 
    hold on 
    plot(t,g,'m','Linewidth',2)
    title("Signal v Time & Gabor Window: a = 1",'Fontsize',12)
    hold off
    set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

    subplot(3,1,2) 
    plot(t,Sg,'k','Linewidth',2)
    title("Gabor Filtered Signal v Time",'Fontsize',12)
    set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('Sg(t)')

    subplot(3,1,3) 
    plot(ks,abs(fftshift(Sgt))/max(abs(Sgt)),'r','Linewidth',2);
    title("FFT of Gabor Filtered Signal v Frequency",'Fontsize',12)
    set(gca,'Fontsize',11)
    xlabel('frequency (\omega)'), ylabel('FFT(Sg)')
    drawnow
    pause(0.1)
end

%% Calculate Gabor transform and plot spectrogram
a = 1e03;
tstep = 0:0.04:L;  

Sgt_spec = zeros(length(tstep),n);

for j=1:length(tstep) % [1:101] 
    g=exp(-a*(t-tstep(j)).^2); 
    Sg=g.*S; % apply new filter
    Sgt=fft(Sg); % transform to frequency domain
    Sgt_spec(j,:) = fftshift(abs(Sgt)); % We don't want to scale it
end

figure(6)
pcolor(tstep,ks,Sgt_spec.'), 
shading interp 
title('Unfiltered: a = 1e03, inc = 0.0446','Fontsize',16)
set(gca,'Fontsize',11) 
axis([0 L 3e03 8e03])
colormap(hot)

%% Oversampling and Undersampling

a = 1e04;
tstep = 0:0.05:L;  

Sgt_spec = zeros(length(tstep),n);

for j=1:length(tstep) % [1:101] 
    g=exp(-a*(t-tstep(j)).^2); 
    Sg=g.*S; % apply new filter
    Sgt=fft(Sg); % transform to frequency domain
    Sgt_spec(j,:) = fftshift(abs(Sgt)); % We don't want to scale it
end

figure(7)
subplot(1,2,1) 
pcolor(tstep,ks,Sgt_spec.'), 
shading interp 
title('Oversampling: a = 1e04, translation 0.05','Fontsize',16)
set(gca,'Fontsize',11) 
axis([0 L 0 1.5e04])
colormap(hot)


a = 1e05;
tstep = 0:.5:L;  

Sgt_spec = zeros(length(tstep),n);

for j=1:length(tstep) % [1:101] 
    g=exp(-a*(t-tstep(j)).^2); 
    Sg=g.*S; % apply new filter
    Sgt=fft(Sg); % transform to frequency domain
    Sgt_spec(j,:) = fftshift(abs(Sgt)); % We don't want to scale it
end

% figure(6)
subplot(1,2,2) 
pcolor(tstep,ks,Sgt_spec.'), 
shading interp 
title('Undersampling: a = 1e05, translation 0.5','Fontsize',16)
set(gca,'Fontsize',11) 
axis([0 L 0 1.5e04])
colormap(hot)

%% Filter the signal data in the frequency domain using a Gaussian filter
% 
Sgt_spec_filtered = zeros(length(tstep),n);
tau = .5e-05;
it = length(tstep);

for j=1:it % [1:201] 
    test = Sgt_spec(j,:);
    % get the max signal and index
    [test_M,test_I] = max(test);
    % get frequency associated with max signal
    % use ks because we built Sgt_spect with fftshift
    test_center_freq = abs(ks(test_I));
    test_filter = exp(-tau*(ks-test_center_freq).^2); 
    test_f = test_filter.*test; % Apply the filter to the signal in frequency space
    Sgt_spec_filtered(j,:) = fftshift(test_f); % We don't want to scale it
    

    figure(7)
    subplot(2,1,1) 
    plot(abs(ks),test,'r','Linewidth',2);
    title("Unfiltered Signal v Frequency at timestep = " + num2str(j),'Fontsize',12)
    set(gca,'Fontsize',11), xlabel('Frequency'), ylabel('Signal')
    drawnow
    
    subplot(2,1,2)
    plot(abs(ks),test_f,'r','Linewidth',2);
    title("Filtered Signal v Frequency at timestep = " + num2str(j),'Fontsize',12)
    set(gca,'Fontsize',11), xlabel('Frequency'), ylabel('Signal')
    drawnow
    pause(2)
end

figure(8)
pcolor(tstep,ks,Sgt_spec_filtered.'), 
shading interp 
title('Unfiltered: a = 1e06, translation = 8.9249e-02','Fontsize',16)
set(gca,'Fontsize',11) 
colormap(hot)

%% Spectrograms for varying translation sizes
figure(9)

a = 1e5;
tstep_vec = [1 0.5 0.1 0.05];
for jj = 1:length(tstep_vec)
    
    tstep = 0:tstep_vec(jj):10;
    Sgt_spec = zeros(length(tstep),n);
    
    for j=1:length(tstep)
        g=exp(-a*(t-tstep(j)).^2);
        Sg=g.*S; 
        Sgt=fft(Sg); 
        Sgt_spec(j,:) = fftshift(abs(Sgt)); 
    end
    
    subplot(2,2,jj)
    pcolor(tstep,ks,Sgt_spec.'), 
    shading interp 
    title(['a = 1e5, tstep = ',num2str(tstep_vec(jj))],'Fontsize',12)
    set(gca,'Fontsize',11) 
    colormap(hot) 
end

% plot of the FFT, we know it has no time info
figure(10)
Sgt_spec = repmat(fftshift(abs(St)),length(tstep),1);
pcolor(tstep,ks,Sgt_spec.'), 
shading interp 
title('fft','Fontsize',11)
set(gca,'Fontsize',11) 
colormap(hot) 

%% Spectrograms for varying window sizes
figure(11)

a_vec = [1e5 1e6 1e7];
for jj = 1:length(a_vec)
    a = a_vec(jj);
    tstep=0:0.1:10;
    Sgt_spec = zeros(length(tstep),n);
    for j=1:length(tstep)
        g=exp(-a*(t-tstep(j)).^2); 
        Sg=g.*S; 
        Sgt=fft(Sg); 
        Sgt_spec(j,:) = fftshift(abs(Sgt)); 
    end
    
    subplot(2,2,jj)
    pcolor(tstep,ks,Sgt_spec.'), 
    shading interp 
    title(['a = ',num2str(a)],'Fontsize',12)
    set(gca,'Fontsize',11) 
    colormap(hot) 
end

Sgt_spec = repmat(fftshift(abs(St)),length(tstep),1);
subplot(2,2,4)
pcolor(tstep,ks,Sgt_spec.'), 
shading interp 
title('fft','Fontsize',12)
set(gca,'Fontsize',11) 
colormap(hot) 

%% Rescale our Gabor transform spectrograms to have the same units for frequency
figure(19)

% k is in terms of 2pi/sec
% Hz is in terms of period/sec
% both are frequencies, so change the 2pi in k, to 1
k=(1*pi/L)*[0:(n-1)/2 -(n-1)/2:-1]; % frequency vector
ks=fftshift(k);
tstep=0:L/100:L;

% Spectrograms for varying a
a_vec = [5 1 0.2];
for jj = 1:length(a_vec)
    a = a_vec(jj);
    tstep=0:0.1:10;
    Sgt_spec = zeros(length(tstep),n);
    for j=1:length(tstep)
        g=exp(-a*(t-tstep(j)).^2); 
        Sg=g.*S; 
        Sgt=fft(Sg); 
        Sgt_spec(j,:) = fftshift(abs(Sgt)); 
    end

    subplot(2,2,jj)
    pcolor(tstep,ks,Sgt_spec.'), 
    shading interp 
    title(['a = ',num2str(a)],'Fontsize',12)
    set(gca,'Ylim',[-10 10],'Fontsize',11) 
    colormap(hot) 
end


Sgt_spec = repmat(fftshift(abs(St)),length(tstep),1);
subplot(2,2,4)
pcolor(tstep,ks,Sgt_spec.'), 
shading interp 
title('fft','Fontsize',12)
set(gca,'Ylim',[-10 10],'Fontsize',11) 
colormap(hot) 

%% HW 02 Part 2 Recorder
 
 close all; clear all; clc;
 

 [y,Fs] = audioread('music2.wav');
 S = y'; % transpose the vector
 T = 1/Fs; % period (second per sample)
 L =length(S)/Fs;  % record time in seconds
 
 
figure(1)
 plot((1:length(S))/Fs,S);
 xlabel('Time [sec]'); ylabel('Amplitude');
 title('Mary had a little lamb (recorder)');
 % p8 = audioplayer(y,Fs); playblocking(p8);

n=length(S); % data points
t2=linspace(0,L,n+1); %
t=t2(1:n); % our time vector matching the number of signal data points

k= (2*pi/(2*L))*[0:(n/2-1) -n/2:-1];
ks=fftshift(k);

%% Fourier transform of the function
% Signal in frequency domain
S_fft=fft(S);

% figure(2)
% plot the function against time
subplot(2,1,1) 
plot(t,S,'k','Linewidth',2) 
axis([0 L 0 1.1])
set(gca,'Fontsize',11'), xlabel('Time (t)'), ylabel('S(t)')


subplot(2,1,2)
% plot (percentage of?)function against frequency
plot(ks,abs(fftshift(S_fft))/max(abs(S_fft)),'r','Linewidth',2);
title("Signal v Frequency")
axis([-5e3 5e3 0 1.1])
set(gca,'Fontsize',11'), xlabel('frequency (\omega)'), ylabel('FFT(S)')

% % Construct Gabor window and add to time domain plot

tau = 4;
a = 10;
g = exp(-a*(t-tau).^2);

% subplot(2,1,1)
plot(t,S,'k',t,g,'m','Linewidth',2)
title("Recorder: Signal v Time")
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

%% Apply filter and take fft

Sg = g.*S;
Sg_fft = fft(Sg);

% figure(3)
subplot(3,1,1) 
plot(t,S,'k','Linewidth',2)
title("Signal v Time & Gabor Window: a = 10, tau = 4",'Fontsize',12)
hold on 
plot(t,g,'m','Linewidth',2)  % shows the filter on the S(t) plot
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

% filtered signal as a function of time
% signal data ~[3, 6],, otherwise flat
subplot(3,1,2) 
plot(t,Sg,'k','Linewidth',2)
title("Filtered Signal v Time",'Fontsize',12)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('Sg(t)')

% FFT(S) % as a function of frequency
% way less peaks and dips!
subplot(3,1,3) 
plot(ks,abs(fftshift(Sg_fft))/max(abs(Sg_fft)),'r','Linewidth',2);
title("FFT of Filtered Signal v Frequency",'Fontsize',12)
axis([-5e3 5e3 0 1.1])
set(gca,'Fontsize',11)
xlabel('frequency (\omega)'), ylabel('FFT(Sg)')

%% Change window size (filter width) - wider window

tau = 4;
a = 1;
g = exp(-a*(t-tau).^2);
Sg = g.*S;
Sgt = fft(Sg);

% shows how filter widens on the S(t) plot
% figure(4)
subplot(3,1,1) 
plot(t,S,'k','Linewidth',2)
title("Signal v Time & Gabor Window: a = 1, tau = 4",'Fontsize',12)
hold on 
plot(t,g,'m','Linewidth',2)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

% less accuracy in the time domain
subplot(3,1,2) 
plot(t,Sg,'k','Linewidth',2)
title("Filtered Signal v Time",'Fontsize',12)
set(gca,'Fontsize',12), xlabel('Time (t)'), ylabel('Sg(t)')

% more detail in the frequency domain
subplot(3,1,3) 
plot(ks,abs(fftshift(Sgt))/max(abs(Sgt)),'r','Linewidth',2);
title("FFT of Filtered Signal v Frequency",'Fontsize',12)
axis([-5e3 5e3 0 1.1])
set(gca,'Fontsize',11)
xlabel('frequency (\omega)'), ylabel('FFT(Sg)')

%% Change window size - narrower window

tau = 4;
a = 100;
g = exp(-a*(t-tau).^2);
Sg = g.*S;
Sgt = fft(Sg);

% % shows how filter widens on the S(t) plot
% figure(5)
subplot(3,1,1) 
plot(t,S,'k','Linewidth',2)
title("Signal v Time & Gabor Window: a = 100, tau = 4",'Fontsize',12)
hold on 
plot(t,g,'m','Linewidth',2)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

% less accuracy in the time domain
subplot(3,1,2) 
plot(t,Sg,'k','Linewidth',2)
title("Filtered Signal v Time",'Fontsize',12)
set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('Sg(t)')

% more detail in the frequency domain
subplot(3,1,3) 
plot(ks,abs(fftshift(Sgt))/max(abs(Sgt)),'r','Linewidth',2);
title("FFT of Filtered Signal v Frequency",'Fontsize',12)
axis([-5e3 5e3 0 1.1])
set(gca,'Fontsize',11)
xlabel('frequency (\omega)'), ylabel('FFT(Sg)')

%% Animation of shifting window

% figure(6)
a = 1;
tstep=0:0.1:L;

for j=1:length(tstep)
    g=exp(-a*(t-tstep(j)).^2);  
    Sg=g.*S; 
    Sgt=fft(Sg); 
    
    subplot(3,1,1) 
    plot(t,S,'k','Linewidth',2)
    title("Signal v Time & Gabor Window: a = 1, tau = 1",'Fontsize',12)
    hold on 
    plot(t,g,'m','Linewidth',2)
    hold off
    set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('S(t)')

    subplot(3,1,2) 
    plot(t,Sg,'k','Linewidth',2)
    title("Signal v Time & Gabor Window: a = 1, tau = 1",'Fontsize',12)
    set(gca,'Fontsize',11), xlabel('Time (t)'), ylabel('Sg(t)')

    subplot(3,1,3) 
    plot(ks,abs(fftshift(Sgt))/max(abs(Sgt)),'r','Linewidth',2);
    title("FFT of Gabor Filtered Signal v Frequency",'Fontsize',12)
    axis([-5e3 5e3 0 1.1])
    set(gca,'Fontsize',11)
    xlabel('frequency (\omega)'), ylabel('FFT(Sg)')
    drawnow
    pause(0.1)
end

%% Calculate Gabor transform and plot spectrogram

k_Hz= (1/(2*L))*[0:(n/2-1) -n/2:-1];
ks_Hz=fftshift(k_Hz);

a = 50;
tstep=0:0.3:L;
inc = tstep(2)-tstep(1);

Sgt_spec = zeros(length(tstep),n);

for j=1:length(tstep)  
    g=exp(-a*(t-tstep(j)).^2); 
    Sg=g.*S; % apply new filter
    Sgt=fft(Sg); % transform to frequency domain
    Sgt_spec(j,:) = fftshift(abs(Sgt)); % We don't want to scale it
end

% figure(7)
pcolor(tstep,ks_Hz,Sgt_spec.'), 
shading interp 
title('Mary Had A Little Lamb:  a = 50, time step = 0.5 sec , ','Fontsize',12)
set(gca,'Fontsize',11)
axis([0 L 390 525])
xlabel('Time Steps'), ylabel('Frequency(Hz)')
colormap(hot)

%% View one note and overtones

% max signal in the time domain
[max_S, idx] = max(S);
max_time = t(idx);

% find tstep(j) closest to max signal
above = find(tstep > max_time);
nearest_above = above(1);
below = find(tstep < max_time);
nearest_below = below(length(below));

% get sample with max signal data
max_sample = Sgt_spec(nearest_below,:);

% full frequency plot
figure(8)
plot(ks_Hz, max_sample);
xlabel('Freqency'); ylabel('Amplitude');
title('Highest Recorder Signal');
axis([0 5e3 0 250])

% zoom in on overtones
figure(9)
plot(ks_Hz, max_sample);
xlabel('Freqency'); ylabel('Amplitude');
title('Recorder Overtones');
axis([0 5e3 0 50])