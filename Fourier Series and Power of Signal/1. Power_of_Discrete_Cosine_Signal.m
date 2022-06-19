clc;
clear all;
close all;
%Given Interval
n = 0:19;
%Given N
N = 20;
%Signal
x = cos(2*pi*n);
%Plotting the discrete Signal Using Stem
stem(n,x);
xlabel('valuse of n');
ylabel('Amplitude');
title('Power Discrete Time Signal with 20 Intervals');
%Finding Absoulte of siganl and taking square
abs = abs(x).^2;
%Finding Power
power = sum(abs)/20;
%Displaying the value of Power
disp('Power is: ');
disp(power);