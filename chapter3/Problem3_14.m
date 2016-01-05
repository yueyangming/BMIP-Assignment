% Problem 3.14
clear all;
close all;

N = 512;
fs = 1000;
f = ( 0 : N-1 ) * fs / N; % Important.
t = (0 : N-1) / fs;

%% Generate Signal

f1 = 200;
f2 = 400;
f3 = 200;
f4 = 900;

x1 = sin(2 * pi * f1 * t) + sin(2 * pi * f2 * t);
x2 = sin(2 * pi * f3 * t) + sin(2 * pi * f4 * t);

%% FT and plot


X1 = fft(x1);
X1_mag = abs(X1);
plot(f(1:N/2) , X1_mag(1: N/2));

hold on;

X2 = fft(x2);
X2_mag = abs(X2);
plot(f(1:N/2), X2_mag(1: N/2),'r--');
title('Fourier Transform');
xlabel('Frequency');
ylabel('Magnitude');