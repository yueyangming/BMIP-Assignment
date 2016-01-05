% Problem 4_18;
clear all;
close all;

%% Generate Signal

N = 512;
fs = 1000;

Signal = sig_noise([150,350],-14, N);

%% Generate Filter;

L = 65;
fl1 = 130 / ( fs /2 );
fh1 = 170 / ( fs /2 );
fl2 = 330 / ( fs /2 );
fh2 = 370 / ( fs /2 );

f_filter = [0, fl1,fl1, fh1,fh1, fl2,fl2, fh2,fh2, 1];
g_filter = [0, 0, 1, 1,0, 0,1, 1, 0, 0];
subplot(4,1,1);
plot(f_filter, g_filter);

b = fir2(L, f_filter, g_filter);
[H,f] = freqz(b,1 ,512, fs);
subplot(4,1,2);
plot(f_filter * ( fs / 2) , g_filter, 'r');
hold on;
plot(f,abs(H) , 'g');

Signal_after = filter(b,1,Signal);

Mag_after = abs( fft(Signal_after) );
Mag_before = abs( fft( Signal ));

subplot(4,1,3);
plot(f(1:N/2) ,Mag_before(1: N/2) );
subplot(4,1,4);
plot(f(1:N/2) ,Mag_after(1: N/2) );
