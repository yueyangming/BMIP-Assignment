% Problem 4_2
clear all; close all;
load ver_problem;

N = 500;
t = (1:N) * 0.01;
temp = [25,100,1000];
temp2 = randperm(1000,2);
for k = 1: 2
    std_unaveraged(k) = std( ver(temp2(k),:) );
    disp(['Std of unaveraged ',num2str(k), num2str(std_unaveraged(k))  ]);

end 
Noise_std_unaveraged = std(ver(1,:) - actual_ver);
disp([ 'Std of unveraged noise ', num2str(Noise_std_unaveraged) ]);

for i = 1 :3
    average{i} = mean(ver(1: temp(i), :));
    subplot(2,3,i);
    plot(t,average{i});
    noise{i} = average{i} - actual_ver;
    std_noise(i) = std(noise{i});
    disp(['Noise std of averaged of ', num2str(temp(i)),'   ', num2str( std_noise(i) ) ]);
    disp(['Theoretical Noise std of averaged of ', num2str(temp(i)),'   ', num2str( Noise_std_unaveraged / sqrt(temp(i) ) ) ]);
    subplot(2,3,3+i);
    plot(t,noise{i});
    
end 

