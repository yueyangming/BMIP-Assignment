% Problem 4.27

clear all;
close all;

fs = 300;
fh = 80;
fc = fh / fs;
N = 256;
f = (0 : N-1)*fs/N;
%% Generate filter;

L_FIR = 65;
L_IIR = 12;

% FIR

k = -floor(L_FIR/2) : -1;
b = -sin(2*pi * k * fc) ./ (pi * k);

b = [b (1-2*fc), fliplr(b)];
b = b.*blackman(L_FIR)';

subplot(3,1,2);
H1 = fft(b,N);
H1 = abs(H1);
plot(f(1:N/2), H1(1:N/2));
title('Spectra of FIR');

% y = conv(x,b,'same');  % Not useful in this assignment.

X = fft(b,N);
X = abs(X);
subplot(3,1,1);
plot(f(1:N/2),X(1:N/2),'r');
hold on;

% IIR
fc_IIR = fh / (fs/2);
[b,a] = butter(L_IIR,fc_IIR,'high');
[H,f] = freqz(b,a,N,fs);
plot(f,abs(H),'b');
hold off;

subplot(3,1,3);
H2 = fft(b,N) ./ fft(a,N);
H2 = abs(H2);
f = (0 : N-1)*fs/N;
plot(f(1:N/2), H2(1:N/2));

