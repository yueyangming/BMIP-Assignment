% Problem 2.22

clear all; 
close all;

load correl1;

sp = sum(x.*y);
mag_x = sqrt(sum(x.^2));
mag_y = sqrt(sum(x.^2));
cos_theta = sp / (mag_x * mag_y);
angle = acos(cos_theta);
angle = angle * 360 / (2*pi);

disp(['Angle',num2str(angle)]);

% [rxy,lags] = axcor(x,y);
% plot(lags,rxy);
