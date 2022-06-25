clc; 
clear all;
close all;
%Defining Time sample (xaxis)
t = -3.5:0.005:3.5; 
%Time Period
T = 1;
%Fundamental Frequency Formula
w0 = 2*pi/T;
%Number of Coefficents
M = 50;
x = zeros(1,length(t));
%Applying loop
for k = -M:M
    if abs(k)<3
x = x + j*k*exp(j*k*w0*t);
    else
x = x + 0*exp(j*k*w0*t);
    end
end
%Plotting Continuous Signal
%real(x) means we are plotting real part of signal only
plot(t,real(x));
xlabel('Sample t');
ylabel('Signal x(t)') ;
title('For M=50');
