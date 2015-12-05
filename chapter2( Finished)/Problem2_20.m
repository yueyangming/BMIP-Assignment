% Problem2_20

clear all; close all;

f = 1.5;
TT = 3;
Ts = 0.01;
t = 0 : Ts : TT - Ts;

x = sin( 2 * pi * f * t);
y = cos( 2 * pi * f * t);
Corr = sum(x .*y);

disp(['Corr = ', num2str(Corr)]); % Corr = 3.4167e-14 , very small ,equal to zero.

% Another thing is you can see my proof, sinx * cosx will be zero.