%Problem 5.5

%This problem directly explores the effect of signal length on spectral
%resolution using AR methods. Use sig_noise to generate two closely spaced,
%and one more distant, sinusoid(f = 240,260,350) with an SNR = -8dB. use
%the modified covariance method(pmcov) to determine the power spectrum of
%this signal. Use a model order of 35 since this is a fairly complicated
%spectrum. Repeat using a loop for signal lengths of 64, 128, 256, and 512.
%What is the minimum signal length necessary to guarantee identification of
%the three signals ? Rerun the program several times to ensure theat
%identification is always possible at this SNR

N = [64,128,256,512];
fs = 1000;
p = 35;
for i = 1:4
    
    x = sig_noise([240,260,350],-8,N(i));
    [PS,f] = pmcov(x,p,N(i),fs);
    subplot(4,1,i);
    plot(f,PS);
    xlabel('Frequency');
    ylabel('PS');
    title([ 'AR ', num2str(N(i)) ]);
    
end % for i 