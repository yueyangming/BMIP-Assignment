% Problem 3.20
% By Peach

close all; 
clear all;
N=64;
x= sig_noise([200 300],-3,N);
fs=1000;
f=(0:N-1)*fs/N;
X_mag1 = abs(fft(x));
x2 = x .* blackmanharris(N)'; 
X_mag2 = abs(fft(x2));
subplot(3,1,1);
plot(f(1:N/2),X_mag1(1:N/2),'k'); % Plot magnitude
xlabel('frequency(Hz)'); ylabel('X(f)'); title('rectangular');
subplot(3,1,2);
plot(f(1:N/2),X_mag2(1:N/2),'k'); % Plot magnitude
xlabel('frequency(Hz)'); ylabel('X(f)'); title('blackmanharris');
a=sum(X_mag1)./sum(X_mag2);
X_mag3=a*X_mag2;
subplot(3,1,3);
plot(f(1:N/2),X_mag3(1:N/2),'k'); % Plot magnitude
xlabel('frequency(Hz)'); ylabel('X(f)'); title('rescaled');


