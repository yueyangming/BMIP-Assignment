% Problem 2.36

clear all; 
close all;

x = randn(1,500);
h = [1/3 1/3 1/3];
y = conv(h,x);

figure;
subplot(2,1,1);
% plot(axcor(y));
[rxx,lags] = axcor(y);
plot(lags,rxx);
axis([-20 20 -0.2 1]); % Limit x axis to +-20 lags
title ('Autocorrelation of filtered one')

subplot(2,1,2);
[rxx,lags] = axcor(x);
% plot(axcor(x));
plot(lags,rxx);
axis([-20 20 -0.2 1]); % Limit x axis to +-20 lags
title('Origin autocorrelation');
