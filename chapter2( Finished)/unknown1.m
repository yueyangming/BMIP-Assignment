function output = unknown1(input)
% output = unknown(input)
% Function to simulate a linear or nonlinear process
%
a = [ 1.0000   -3.5897    4.8513   -2.9241    0.6630];
b =  [0.0312    0.1250    0.1874    0.1250    0.0312] * 0.001;
output = filter(b,a,input);
