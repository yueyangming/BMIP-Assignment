% Problem 2.28

clear all; close all;

load sines;
f = 10;      % Frequency of singal x and y
T = 1 / 10;  % Period of signal x and y
fs = 2000;   % Sample freqeuency

[rxy, lags] = xcorr(x,y);

figure;
plot(lags / fs,rxy);

[max_corr,max_shift] = max(rxy);
max_time_shift = lags(max_shift) / fs;  %First divide sample frequency and get time delay;
[min_corr,min_shift] = min(rxy);
min_time_shift = lags(min_shift) / fs; 

%% Convert time shift to phase shift
% Phase shift is time delay / period and times 460.
max_phase_shift = max_time_shift / T * 360;
min_phase_shift = min_time_shift / T * 360;

disp(max_phase_shift);
disp(min_phase_shift);
