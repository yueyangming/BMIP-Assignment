% Problem 3.34
% By Peach

close all; 
clear all;
load broadband3.mat;
fs=1000;
N=length(x);
nfft1=N/4;
nfft2=N/16;
rectangular=ones(1,N);
PS =abs((fft(x)).^2)/N; %Un-averaged PS
half_length = fix(length(PS)/2); % Valid points
f = (0:half_length-1)* fs/(2*half_length); % Frequency vector
f = (0:N-1)* fs/N; % Frequency vector
[PS_avg_1,f1] = pwelch(x,rectangular,[],nfft1,fs); % Periodogram
[PS_avg_2,f2] = pwelch(x,rectangular, [],nfft2,fs); % Periodogram
[PS_avg_3,f3] = pwelch(x,blackmanharris(N), [],nfft1,fs); % Periodogram
[PS_avg_4,f4] = pwelch(x,blackmanharris(N), [],nfft2,fs); % Periodogram
subplot(2,2,1)
plot(f1,PS_avg_1,'k'); 
xlabel('frequency(Hz)'); ylabel('Power Spectrum'); title('Rectangular 1')
subplot(2,2,2)
plot(f2,PS_avg_2,'k'); 
xlabel('frequency(Hz)'); ylabel('Power Spectrum'); title('Rectangular 2')
subplot(2,2,3)
plot(f3,PS_avg_3,'k');
xlabel('frequency(Hz)'); ylabel('Power Spectrum'); title('Blackmanharris 1')
subplot(2,2,4)
plot(f4,PS_avg_4,'k'); 
xlabel('frequency(Hz)'); ylabel('Power Spectrum'); title('Blackmanharris 2')


