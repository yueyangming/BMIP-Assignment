%Problem 5_20
clear all; close all;

load signal_analysis5 ;
N = length(x);
p_AR = 75;
p_music = 13;
fs = 1000;
f2 = (0:N-1) * fs / N;  % f .

%% Fourier Transform

H_Fourier = abs ( fft(x) .^2 );

%% AR part
[rxx,legs] = xcorr(x,p_AR);
rxx = rxx(p_AR+1:end)';
Rxx = toeplitz(rxx(1:end-1));
a = -(Rxx\rxx(2:end));
a = [1; a];
H_AR = var(x)./fft(a,1024);

%% Music part

[PS_music, f_music] = pmusic(x,p_music,N,fs);

%% Plot part

subplot(3,1,1);
plot(f2(1:N/2), H_Fourier(1: N/2) );
xlabel('Frequency');
ylabel('PS');
title('Fourier way');

subplot(3,1,2);
plot(f2(1:N/2), abs(H_AR(1:N/2)) );
xlabel('Frequency');
ylabel('PS');
title('AR way');

subplot(3,1,3);
plot(f_music, PS_music);
xlabel('Frequency');
ylabel('PS');
title('music way');

