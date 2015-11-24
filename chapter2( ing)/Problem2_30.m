% Problem 2.30

clear all; close all;

Noise_g_2048 = randn(1,2048);
Noise_g_256 = randn(1,256);

Noise_n_2048 = rand(1,2048);
Noise_n_256 = rand(1,256);

[rxx_g_2048,lags_g_2048] = axcor(Noise_g_2048);
[rxx_n_2048,lags_n_2048] = axcor(Noise_n_2048);
[rxx_g_256,lags_g_256] = axcor(Noise_g_256);
[rxx_n_256,lags_n_256] = axcor(Noise_n_256);

figure;
subplot(4,1,1), plot(lags_g_2048,rxx_g_2048);
subplot(4,1,2), plot(lags_g_256,rxx_g_256);
subplot(4,1,3), plot(lags_n_2048,rxx_n_2048);
subplot(4,1,4), plot(lags_n_256,rxx_n_256);
