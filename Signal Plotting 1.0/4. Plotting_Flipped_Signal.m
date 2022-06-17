clc;
clear all;
close all;
%Assuemed Sample
n = -10:10;
%As pi/4 given in function so i stored it in a variable
y1 = pi/4;
%Given Function
y = 5*exp(1i*n*y1);
subplot(2,1,1);
%Plotting Orignal Function
plot(n,y);
xlabel('Sample');
ylabel('Signal Amplitude');
title('Orignal Signal');
subplot(2,1,2);
%Plotting Flipped Signal
plot(-n,y); %Not Flipping because function is even
xlabel('Sample');
ylabel('Signal Amplitude');
title('Flipped Signal but not flipped because of even signal');

