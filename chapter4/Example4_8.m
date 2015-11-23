% Example 4.8
clear all;
close all;


Ts = 0.001;
N = 1000;
fs = 1000;
f = (0:N-1) * fs /N;
Ln = [10,3];
for i = 1:2
    
    L = Ln(i);
    b = [1 zeros(1, 2* L + 1) -1] / ( 2 * L * Ts);
    H = abs( fft( b,N ) );
    subplot(2,1,i);
    plot(f(1: N/2), abs(H(1:N/2)) );
    
end % for i 