clc;
clear all;
close all;
%Assumed Sample
n = -10:10;
%S[n]
S1 = [zeros(1,10) 1 zeros(1,10)];
%S[n-1]
S2 = [zeros(1,11) 1 zeros(1,9)];
%S[n-2]
S3 = [zeros(1,12) 1 zeros(1,8)];
%S[n-3]
S4 = [zeros(1,13) 1 zeros(1,7)];
%S[n-4]
S5 = [zeros(1,14) 1 zeros(1,6)];

%Now 2S[n]
a = 2*S1;
%5S[n-1]
b = 5*S2;
%8S[n-2]
c = 8*S3;
%4S[n-3]
d = 4*S4;
%3S[n-4]
e = 3*S5;

%Now x[n]
x = a+b+c+d+e;

%Plotting Orignal Signal
subplot(2,1,1);
stem(n,x);
xlabel('Sample');
ylabel('Signal Amplitude');
title('Orignal Signal');

%Plotting Flipped Signal
subplot(2,1,2);
stem(-n,x);
xlabel('Sample');
ylabel('Signal Amplitude');
title('Flipped Signal');








