clc;
clear all;
close all;
%Assumed Smaple
n = -10:10;
%U[n]
u1 = [zeros(1,10) ones(1,11)];
%U[n-1]
u2 = [zeros(1,11) ones(1,10)];
s1 = u1-u2;
subplot(3,1,1);
%Plotting U[n]
stem(n,u1);
xlabel('Sample');
ylabel('Amplitude of Signal');
title('u(n)');
subplot(3,1,2);
%Plotting U[n-1]
stem(n,u2);
xlabel('Sample');
ylabel('Amplitude of Signal');
title('u(n-1)');
subplot(3,1,3);
%Plotting S[n] = U[n]-U[n-1]
stem(n,s1);
xlabel('Sample');
ylabel('Amplitude of Signal');
title('s1 = un - u(n-1)');