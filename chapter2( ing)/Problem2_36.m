% Problem 2.36

clear all; close all;

x = randn(1,500);
h = [1/3 1/3 1/3];
y = conv(h,x);
figure;
subplot(2,1,1);
plot(axcor(y));
subplot(2,1,2);
plot(axcor(x));
