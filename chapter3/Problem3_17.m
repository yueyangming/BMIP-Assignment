load short.mat
without_zero_pad = fft(x);

fs = 30;
N1 = 32;
f1 = ( 0 : N1 -1) * fs / N1;
X = fft(x);
X_mag = abs(X);
Phase = unwrap(angle(X));
Phase = Phase * 360 / (2* pi);

plot(f1(1:N1),X_mag(1:N1))

N2 = 256;
f2 = ( 0 : N2 -1 ) * fs / N2;
X2 = fft(x,N2);
X2_mag = abs(X2);
figure;
plot( f2(1:N2), X2_mag(1:N2));


% 
% t1 = 1:32;
% plot(t1,without_zero_pad);
% figure;
% t2 = 1:256;
% plot(t2,fft(x,256));