% Problem 3.17
clear all;
close all;


load short.mat;

fs = 1000;
N1 = 32;
f1 = ( 0 : N1 -1) * fs / N1;
X = fft(x);
X_mag = abs(X);
% Phase = unwrap(angle(X));
% Phase = Phase * 360 / (2 * pi);
subplot(2,1,1);
plot(f1(1:N1/2),X_mag(1:N1/2));

N2 = 256;
f2 = ( 0 : N2 -1 ) * fs / N2;
X2 = fft(x,N2);
X2_mag = abs(X2);
subplot(2,1,2);
plot( f2(1:N2/2), X2_mag(1:N2/2));
