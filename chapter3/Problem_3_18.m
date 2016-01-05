% Problem 3_18
clear all;
close all;

fs = 1000;
N = 256;
f = (0: N-1) * fs / N;
x = sig_noise(300,-12,256);

% Approach 1, fft(x) .^2
X = fft(x);
X_mag = abs(X);
PS_1 = X_mag.^2;

plot(f(1:N/2),PS_1(1:N/2));

% Approach 2, xcorr


