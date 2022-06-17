clc;
clear all;
close all;
%Given Sample
n= -2:1/1000:2;
%Orignal Signal Given
x1=sin(2*pi*2*n);
%Upsampled Signal
x2=interp(x1,2);
subplot(2,1,1);
%Plotting Orignal Signal
plot(x1); 
title('Original signal');
xlabel('Sample');
ylabel('Signal Amplitude');
grid on;
subplot(2,1,2);
%Plotting Upsampled Signal
plot(x2); 
title('Interpolated Signal'); 
xlabel('Sample Number');
ylabel('Signal Amplitude');
grid on;