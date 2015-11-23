% Problem 4_11

%% Signal Generate
N = 512;
fs = 1000;

Signal = sig_noise(200,-20,N);

%% Generate Fliter;
fl = 180 / ( fs / 2);
fh = 220 / ( fs / 2);
L = 25;

f_filter = [ 0,fl,fl,fh,fh, 1 ];
G_filter = [0,0,  1, 1, 0, 0];
subplot(4,1,1);
plot(f_filter,G_filter);

b = fir2(L,f_filter,G_filter);
[H,f] = freqz(b,1,512,fs);
subplot(4,1,2);
plot(f,abs(H));

y = filter(b,1,Signal);

F_before = abs( fft(Signal) );
F_after = abs( fft(y) );

subplot(4,1,3);
plot(f,F_before);
subplot(4,1,4);
plot(f,F_after);



