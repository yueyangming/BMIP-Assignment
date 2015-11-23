%Problem 5.1

%Use the basic Yule-Walker equations gien in Example 5.1 to find the
%spectrum of the signal used in that example, but use a higher-order model
%to better resolve the four frequencies. Since this is a fairly complicated
%spectrum, you may need to use a very high order of high spectral
%resolution. Compare the AR power spectrum with the obtained using
%classical Fourier transform methods As shown in Example 5.2, an easy way
%to calculate the Fourier transfer function is to us pwelch with a window
%that is the same length as the siganl. The routine useds the "direct
%method" to determine the power spectrum but also provides the frequency
%vector and eliminates the redundant points.

%% Initation 
clear all;
close all;
SNR = -12;
fs = 1000;
N = 1024;
f2 = (0:N-1) * fs / N;  % f .
p = 40;

%% Generate signal 
Signal = sig_noise([100 240 280 400],SNR,N); % Generate data %

%%
[rxx,legs] = xcorr(Signal,p);
rxx = rxx(p+1:end)';
Rxx = toeplitz(rxx(1:end-1));
a = -(Rxx\rxx(2:end));
a = [1; a];
H = var(Signal)./fft(a,1024);

[PS,f] = pyulear(Signal,p,N,fs); % AR power spectrum

subplot(3,1,1);
plot(f2(1:N/2), abs(H(1:N/2)) );
subplot(3,1,2);
plot(f,PS);

H_origin = fft(Signal);
subplot(3,1,3);
plot(f2(1:N/2), abs(H_origin(1: N/2)) )

