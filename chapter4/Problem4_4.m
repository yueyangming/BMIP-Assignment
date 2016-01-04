% Problem 4_4
clear all;
close all;

fs = 500;
N = 256;
t = (1 : N) * fs / N;
a = [1,-1.18,1.61,-0.93,0.78];
b = [0.06,-0.24,0.37,-0.24,0.06];

H = fft(b,N) ./ fft(a,N);
Hm = 20 * log10(abs(H));
Phase = (angle(H)) * 360 / (2 * pi);

subplot(3,1,1);
plot(t,Hm);
title('Meg');
xlabel('Frequency(Hz)');
ylabel('Mag(dB)');

subplot(3,1,2);
plot(t,Phase);
title('Phase');
xlabel('Frequency(Hz)');
ylabel('Degree');

temp(1:N) = 0;
x_input = [1,zeros(1,fs*0.5 -1)];
y = filter(b,a,x_input);
subplot(3,1,3);
plot(y);
title('Step response');