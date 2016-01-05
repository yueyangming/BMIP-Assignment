% Problem 4.29

clear all;
close all;

load nb2_noise_data.mat;

fs = 1000;
N = 256;
fl1 = 170;
fh1 = 230;
fl2 = 370;
fh2 = 430;

f = [0, fl1, fl1, fh1, fh1, fl2, fl2, fh2, fh2, fs/2] /(fs/2);
G = [0, 0 ,1 , 1 , 0, 0, 1, 1, 0 , 0 ];

figure;
plot(f*(fs/2),G);

[b,a] = yulewalk(12,f,G);

X = filtfilt(b,a,x);
f = (0:N-1) * fs / N;
H_before = abs(fft(x,N));
H_after = abs(fft(X,N));

figure;
subplot(2,1,1);
plot(f(1:N/2), H_before(1:N/2));

subplot(2,1,2);
plot(f(1:N/2), H_after(1:N/2));