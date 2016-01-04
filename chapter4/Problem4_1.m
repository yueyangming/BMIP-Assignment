% Problem 4_1
clear all; 
close all;

load ensemble_x
temp = randperm(100,2);
x = x';
[row,col] = size(x);
t = (1 : col) * 0.05;
subplot(3,1,1);
plot(t, x(temp(1), :));
subplot(3,1,2);
plot(t, x(temp(2), :));
subplot(3,1,3);
plot(t,mean(x));
