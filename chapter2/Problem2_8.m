% Problem 2.8
clear all; close all;

load data_c1.mat

for i = 1 : 4

	m = 250 * ( i - 1) + 1;
	segment = x(m : m + 249);
	avg(i) = mean(segment);
	variance = var(segment);

end 

disp(['Original mean : ', num2str(avg)]);
disp(['Original variance : ', num2str(variance)]);

x = detrend(x);

for i = 1 : 4

	m = 250 * ( i - 1) + 1;
	segment = x(m : m + 249);
	avg(i) = mean(segment);
	variance(i) = var(segment);

end 

disp(['New mean : ', num2str(avg)]);
disp(['New variance : ', num2str(variance)]);