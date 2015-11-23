% Problem5_24
clear all; close all;
load spectral_analysis7 ;

fs = 1000;
p_AR_long = 26;
p_music_long = 15;

p_AR_short = 52;
p_music_short = 36;

N_long = 1024;
N_short = 126;

[PS_long_AR,f_long_AR] = pyulear(x,p_AR_long,N_long,fs);
subplot(2,2,1);
plot(f_long_AR,PS_long_AR);
title(['Long signal AR , p = ', num2str(p_AR_long)]);
xlabel('Frequency');
ylabel('PS');
[PS_long_music,f_long_music] = pmusic(x,p_music_long,N_long,fs);
subplot(2,2,2);
plot(f_long_music,PS_long_music);
title(['Long signal music , p = ', num2str(p_music_long)]);
xlabel('Frequency');
ylabel('PS');

[PS_short_AR,f_short_AR] = pyulear(x1,p_AR_short,N_short,fs);
subplot(2,2,3);
plot(f_short_AR,PS_short_AR);

title(['Short signal AR , p = ', num2str(p_AR_short)]);
xlabel('Frequency');
ylabel('PS');
[PS_short_music,f_short_music] = pyulear(x1,p_music_short,N_short,fs);
subplot(2,2,4);
plot(f_short_music,PS_short_music);

title(['short signal music , p = ', num2str(p_music_short)]);
xlabel('Frequency');
ylabel('PS');
