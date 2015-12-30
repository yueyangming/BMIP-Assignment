%Example 4_4

N = 256;
fs = 1000;
f = (1 : N ) * fs / N;
fc = 300 / fs;
L = [19,66];
figure;
for m = 1 : 2
    k = -floor(L(m) / 2) : -1;
    b = sin(2 * pi * fc * k) ./ (pi * k);
    b = [b 2*fc, fliplr(b)];
    H = ifft(b,N);
    subplot(1,2,m);
    plot( f(1:N/2), abs(H(1 : N/2)), 'k' );
    
    
end % fo m