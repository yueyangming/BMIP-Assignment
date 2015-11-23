%
clear all;
close all;
N = 1024; 
SNR = -12; 
fs = 1000; 
f2 = (0 : N-1) * fs / N;
p = 17;
%
x = sig_noise([100 240 280 400],SNR,N); % Generate data %
[rxx, lags] = xcorr(x,p);
rxx = rxx(p+1:end)';
Rxx = toeplitz(rxx(1:end-1));
a = -(Rxx\rxx(2:end));
a = [1; a];
H = var(x)./fft(a,1024);
% Compare with pyulear and plot
[PS,f] = pyulear(x,17,N,fs); % AR power spectrum

plot(f,PS);

% plot(var(x));
% plot(f2(1:N/2),abs( H(1: N/2) ) );