% Problem 2.25

% First, x = cos ( 2 * pi * 1 * t) y is a square function
clear all; close all;

TT = 2;
Ts = 0.01;
t = 0 : Ts : TT - Ts;

x = cos(2 * pi * 1 * t);
y = ones(1,TT / Ts);
y(51:100) = -1;
y(151 : 200) = -1;

Corr = sum(x.*y);
disp(['Corr = ',num2str(Corr)]);