% Problem 2.28

clear all;
close all;

load sines

[rxy, legs] = xcorr(x,y);

figure;
plot(legs,rxy);

[max_corr,max_shift] = max(rxy);
