% Problem 5.7

%Expand Example 5.3 to compare the AR method with the classical Fourier
%transform method. For the latter, you can use pwelch with a window the
%same length as the signal. Use the signals in Example 5.3, but make the
%SNRs equal to -5,-12,-16, and -20dB. Plot the AR and Fourier transfrom
%spectra one above (using subplot) the other for easy comparison , and use
%subplot to put all the plots on the same page. To determine the AR power
%spectrum, use the modified covariance method(pmcov) with a model order of
%25, Are there any SNR levels for which AR shows the two sinusoids better
%than the Fourier transform and vice versa? You may want to rerun thi
%problem sereral times to confirm your evaluaion.

clear all; close all;

N = 1024;
fs = 1000;
f2 = (0: N-1) * fs / N;
p = 25;
SNR = [-5, -12, -16, -20];
window = N;
for i = 1: 4
    
    x = sig_noise([240, 280] , SNR(i), N );
    [PS,f] = pmcov(x,p,N,fs);
    
    subplot(4,2,2 * i -1);
    plot(f,PS);
    xlabel('Frequency');
    ylabel('PS');
    title(['AR_', num2str(i) ]);
    
    H = fft(x);
    subplot(4,2,2*i);
    plot(f2(1:N/2), abs(H(1:N/2)) );
    xlabel('Frequency');
    ylabel('PS');
    title(['Fourier_', num2str(i) ]);
end % for i 
