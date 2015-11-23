% Problem 3_18
clear all;
close all;
fs = 1000;
N = 256;
f = (0: N-1) * fs / N;
X = sig_noise(300,-12,256);

figure;
% Approach 1, fft(x) .^2
Y1 = abs((fft(X).^2));
plot(f,Y1);




% plot(X);
% plot(abs(fft(X)));