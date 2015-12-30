%Problem 3_9

%% Generate signal
fs = 1000;
SNR = -16;
N = 512;
f = ( 0 : N-1 ) * fs / N;
signal = sig_noise([200,400], SNR , N );

X = ifft(signal);
X_mag = abs(X);
X_phase = angle(X);
subplot(2,1,1);
plot( f(1:N/2), X_mag( 1: N/2) );
subplot(2,1,2);
plot( X_phase / (2 * pi ) * 360);