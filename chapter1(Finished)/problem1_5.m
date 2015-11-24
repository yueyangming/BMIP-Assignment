% Problem 1.5
clear all; close all;

TT = 1;  % Total Time
Ts = [0.05, 0.01, 0.001];

Frequency = 2;
figure;

s{1} = '*k';   % Different ways to do this, you also can do it without for loop.
s{2} = '-k';
s{3} = '.k';

for i = 1 : 3
    
    t = 0 : Ts(i) : 1 - Ts(i);
    x = sin(2 * pi * Frequency * t);
    subplot(3,1,i);
    plot(t,x,s{i})
    
end 