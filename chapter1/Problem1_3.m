% Problem 1.3
clear all; close all;

N = 1000;
Ts = 0.001;
t = (0:999) * Ts;

f = [ 2, 10, 15, 20, 30, 40, 50, 60, 80, 90, 100, 150, 200, 300, 400 ];

k = 10;

input = sin(2 * pi * f(k) * t);
output = analog_filter1(input);
figure;
plot(t, input,'r');     % plot origin line with red color

hold on;
plot(t, output, 'b');   % plot output line with blue color
    