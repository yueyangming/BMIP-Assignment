% Problem 4_10
clear all; close all;
%% Generate signal

N = 512;
fs = 1000;
f = (0 : N-1) * fs / N;

signal = sig_noise([200,230], [-8,-12], N);

X = ifft(signal);
subplot(2,1,1);
plot( f(1:N/2), abs( X(1:N/2) ) );


%% Generate filter

fl = 180 / fs;
fh = 250 / fs;
L = 25;
k = - floor( L / 2 ) : -1;
b = sin( 2 * pi * k * fh) ./ (pi * k) - sin(2 * pi * k * fl)./(pi * k);
b = [b, 2* (fh - fl), fliplr(b)];
b = b .* blackman(L)'; % apply blackman filter to b ;
signal_after = conv(signal,b,'same');
X_after = ifft(signal_after);

subplot(2,1,2);
plot ( f(1:N/2), abs( X_after(1: N/2)) );


