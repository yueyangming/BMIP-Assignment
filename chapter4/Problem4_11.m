% Problem 4_11
clear all;
close all;

%% Signal Generate
N = 512;
fs = 1000;

Signal = sig_noise(200,-20,N);

%% Generate Fliter;
fl = 180 / ( fs /2);
fh = 220 / ( fs /2);
L = 25;

f_filter = [0,fl,fl,fh,fh, 1 ];
G_filter = [0,0, 1, 1, 0, 0];
subplot(6,1,1);
plot(f_filter,G_filter);

b = fir2(L , f_filter,G_filter);
[H,f] = freqz(b,1,N,fs);
subplot(6,1,2);
plot(f,abs(H));

y = filter(b,1,Signal);

F_before = abs( fft(Signal,N) );
F_after = abs( fft(y,N) );

f = (0:N-1) * fs / N;

subplot(6,1,3);
PS_before = F_before.^2;
plot(f(1:N/2),PS_before(1:N/2));
title('PS before filter FFT');

subplot(6,1,4);
[PS_before_welch,fp] = pwelch(Signal,128,64,128,fs);
plot(fp,PS_before_welch);
title('PS before filter Welch');

subplot(6,1,5);
PS_after = F_after .^2;
plot(f(1:N/2),PS_after(1:N/2));
title('PS after filter FFT');

subplot(6,1,6);
[PS_after_welch,fp] = pwelch(y,128,64,128,fs);
plot(fp,PS_after_welch);
title('PS after filter Welch');


% subplot(6,1,3);
% plot(f(1:N/2),F_before(1:N/2));
% subplot(6,1,4);
% plot(f(1:N/2),F_after(1:N/2));
% 
% PS_before_1 = F_before .^2;
% [PS_before_Welch,f1] = pwelch(Signal,128,64,128,fs);
% subplot(6,1,5);
% plot(f1,PS_before_Welch);
