% Problem 1.5

TT = 1;
Ts = [0.05, 0.01, 0.001];
% Ts(1) = 0.05;
% Ts(2) = 0.01;
% Ts(3) = 0.001;
Frequency = 2;
figure;

s{1} = '*k';
s{2} = '-k';
s{3} = '.k';

for i = 1 : 3
    
    t = 0 : Ts(i) : 1 - Ts(i);
    x = sin(2 * pi * Frequency * t);
    subplot(3,1,i);
    plot(t,x,s{i})
    
end 