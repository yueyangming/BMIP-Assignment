% Problem 5.4

%This problem emphasizes the effect of signal length on the ability to
%detect narrowband signals. Repeat Problem 5.1. us a shorter data segment
%(N = 64), but a higher SNR. Now , lower the SNR to -5 dB and again note
%the severe degreadation in performance and the difficulty of resolving the
%two narrowband peaks atthe higher noise level.

%% Initiation

clear all;
close all;

N = 64;
SNR = -5;
fs = 1000;
f2 = (0:N-1) * fs / N;  % f .
p = 40;

%% Generate Signal 
Signal = sig_noise([100 240 280 400],SNR,N); % Generate data %

%%

[rxx,legs] = xcorr(Signal,p);
rxx = rxx(p+1:end)';
Rxx = toeplitz(rxx(1:end-1));
a = -(Rxx\rxx(2:end));
a = [1; a];
H = var(Signal)./fft(a,1024);

[PS,f] = pyulear(Signal,p,N,fs); % AR power spectrum

subplot(3,1,1);
plot(f2(1:N/2), abs(H(1:N/2)) );
xlabel('Frequency');
ylabel('Mag');
title('W');
subplot(3,1,2);
plot(f,PS);
xlabel('Frequecny');
ylabel('Mag');
title('Y');

H_origin = fft(Signal);

subplot(3,1,3);
plot(f2(1:N/2), abs(H_origin(1: N/2)) );
title('Fouriour transform');
xlabel('Frequecny');
ylabel('Mag');


