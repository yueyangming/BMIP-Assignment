% Problem2_15
clear all;  close all;

N = 1000;    % Number of data points

nu_bins = 40;   % Number of bins
y = randn(1,N);   % Generate random Gaussian noise
figure;
[ht,xout] = hist(y,nu_bins);  %Calculate histogram
% hist(y,nu_bins);
ht = ht / max(ht);      % Normalize histogram to 1.0
bar(xout,ht);       % Plot as bar graph
