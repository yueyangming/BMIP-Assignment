% problem 5_21

clear all; close all;

load signal_analysis5 ;
N = length(x);
p = [7,11];
fs = 1000;

for i =  1:2
    
    [PS,f] = peig(x,p(i),N,fs);
    subplot(2,2,2 * i -1);
    plot(f,PS);
    xlabel('Frequency');
    ylabel('PS');
    title(['peig way , p = ', num2str(p(i)) ]);
    
    [PS,f] = pmusic(x,p(i),N,fs);
    subplot(2,2,2*i);
    plot(f,PS);
    xlabel('Frequency');
    ylabel('PS');
    title(['pmusic way , p = ', num2str( p(i) )] );
    
end % for i 

