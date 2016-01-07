% Problem 2.25

% First, x = cos ( 2 * pi * 1 * t) y is a square function
clear all; close all;

N = 200;

TT = 2;
Ts = TT / N;
t = 0 : Ts : TT - Ts;

x = cos(2 * pi * 1 * t);
y = ones(1,TT / Ts);
y(51:100) = -1;
y(151 : 200) = -1;

plot(t,y,'b');
hold on;
plot(t,x,'r');

Corr = sum(x.*y)/N;
disp(['Corr = ',num2str(Corr)]);