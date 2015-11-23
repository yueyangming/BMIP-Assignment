% Problem 5.25
clear all; close all;

load spectral_analysis8;

fs = 1000;
p_AR_no_noise = 26;
p_music_no_noise = 15;

p_AR_noise = 52;
p_music_noise = 36;

N_no_noise = 256;
N_noise = 256;

[PS_no_noise_AR,f_no_noise_AR] = pyulear(x,p_AR_no_noise,N_no_noise,fs);
subplot(2,2,1);
plot(f_no_noise_AR,PS_no_noise_AR);
title(['No noise signal AR , p = ', num2str(p_AR_no_noise)]);
xlabel('Frequency');
ylabel('PS');
[PS_no_noise_music,f_no_noise_music] = pmusic(x,p_music_no_noise,N_no_noise,fs);
subplot(2,2,2);
plot(f_no_noise_music,PS_no_noise_music);
title(['No noise signal music , p = ', num2str(p_music_no_noise)]);
xlabel('Frequency');
ylabel('PS');

[PS_noise_AR,f_noise_AR] = pyulear(x1,p_AR_noise,N_noise,fs);
subplot(2,2,3);
plot(f_noise_AR,PS_noise_AR);

title(['Noisy signal AR , p = ', num2str(p_AR_noise)]);
xlabel('Frequency');
ylabel('PS');
[PS_noise_music,f_noise_music] = pyulear(x1,p_music_noise,N_noise,fs);
subplot(2,2,4);
plot(f_noise_music,PS_noise_music);

title(['Noisy signal music , p = ', num2str(p_music_noise)]);
xlabel('Frequency');
ylabel('PS');