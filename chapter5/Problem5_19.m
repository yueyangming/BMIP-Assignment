%Problem 5_19
clear all; close all;
load narrowband_signals

fs = 1000;
p = 5;
M = 10;
N = length(x);

[cor,Rxx] = corrmtx(x,M);
[U,D,V] = svd(Rxx,0);
eigen = diag(D);

for k = p+1 : length(eigen)
    
    Sxx(k-p,:) = abs(fft(V(:,k),256)) .^2 / eigen(k);
    
end % for k 

PS = 1./sum(Sxx);
PS = PS( 1: round( length(PS) /2 ) );
f = (0:length(PS) - 1) * fs / ( 2 * length(PS));

subplot(1,2,1);
plot(f,PS);
title('Origin way');
xlabel('Frequency');
ylabel('PS');

[PS2,f2] = pmusic(x,p,N,fs);
subplot(1,2,2);
plot(f2,PS2);
title('Pmusic way');
xlabel('Frequency');
ylabel('PS');

% figure;
% H = abs(fft(x));
% plot( [1: N/2] , H(1:N/2) );