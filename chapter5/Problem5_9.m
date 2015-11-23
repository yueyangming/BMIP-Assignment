% Problem 5_9

clear all;
close all;

load prob5_9_data

fs = 1000;
N = length(x);
p = 30;

[PS{1},f{1}] = pyulear(x,p,N,fs);
[PS{2},f{2}] = pburg(x,p,N,fs);
[PS{3},f{3}] = pcov(x,p,N,fs);
[PS{4},f{4}] = pmcov(x,p,N,fs);

string = {'pyulear', 'pburg', 'pcov', 'pmcov'};

for i = 1 :4
    
    subplot(4,1,i);
    plot( f{i}, PS{i});
    xlabel('Frequency');
    ylabel('PS');
    title(string{i});
    
end % for i 