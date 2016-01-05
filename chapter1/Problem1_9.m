% Problem 1.9
clear all;  close all;

TT = 1;
N = 1000;
Ts = 1/1000;
t = 0: Ts : 1-Ts;
Frequency = 5;
x = sin(2 * pi * Frequency * t);
figure;
plot(t,x,'.k');

hold on;
Ts = 1/9;
Frequency2 = 5;
t2 = 0 : Ts : 1 - Ts;
x2 = sin(2 * pi * Frequency2 * t2);
plot(t2,x2,'*r');

Frequency3 = 4;
x3 = sin(2 * pi * Frequency3 * t + pi);
plot(t,x3,'.b');