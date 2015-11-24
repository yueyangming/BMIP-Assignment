% Problem 1.2
clear all; close all;

F = [ 2,10,20,60,100,125,150,200,300,400];
Vout = [ 0.15 * 10^-7, 0.1 * 10^-3, 0.002 , 0.2 , 1.5 , 3.28 , 4.47 , 4.97 , 4.99 , 5.0 ];

figure;         % Generate a new figure
grid on;        % put on grid
plot(F,Vout,'k-');   % Draw line with black lines
title('Frequency--Vout');   % Add title
xlabel('Frequency');        % Add label on x axis
ylabel('Vout');             % Add label on y axis

dB = Vout .* 20;
figure;
grid on;
semilogx(F,dB);             % Same usage as plot
title('Frequency--Vout(dB)');
xlabel('Frequency');
ylabel('Vout(dB)');
