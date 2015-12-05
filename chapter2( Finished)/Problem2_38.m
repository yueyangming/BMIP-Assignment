% Problem 2.38
clear all;
close all;

fs = 500;
TT = 5;
N = TT * fs;
t = (0 : N -1) / fs;
tau = 1;
h = exp(-t ./tau);
x = rand(1,2500);
y = conv(x,h);

subplot(1,2,1);
plot(t,h);
title('Impulse response');
ylabel('h(t)');
xlabel('Times(s)');

subplot(1,2,2);
plot(t,y(1:N));
title('Step response');
xlabel('Time(s)');
ylabel('y(t)');
