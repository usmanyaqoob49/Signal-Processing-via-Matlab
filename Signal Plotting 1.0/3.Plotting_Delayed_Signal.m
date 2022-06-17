clc;
close all;
clear all;
%Given
n = 0:0.002:4;
%Signal Given
x = sin(2*pi*1*n);
subplot(2,1,1);
%Plotting Orignal Signal
plot(n,x,'linewidth',2);
title('Original Signal');
xlabel('Time');
ylabel('Signal Amplitude');
subplot(2,1,2);
%Plotting Shifted Signal to Right/ Delayed Signal
plot(n+1,x);
title('Delay signal');
xlabel('Time');
ylabel('Signal Amplitude');