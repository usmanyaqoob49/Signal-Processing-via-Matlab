clc;
clear all;
close all;
%Given Sample in Example
n=0:0.002:4;
%Given function in Example
x=sin(2*pi*1*n);
subplot(2,1,1);
%Plotting Orignal Signal
plot(n,x);
title('Original Signal');
xlabel('Time');
ylabel('Signal Amplitude');
grid on;
subplot(2,1,2);
%Plotting Scaled Signal
plot(n,2*x);
title('Scaled signal');
xlabel('Time');
ylabel('Signal Amplitude');
grid on;