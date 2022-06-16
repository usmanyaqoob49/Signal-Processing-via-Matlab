clc;
clear all;
close all;
%Given in Examples
fs = 1000;
t = -3:1/fs:3;
A = 2;
%Phase Shift for sin wave
phase = pi/2;
f = 1;
%Sine Wave with the Phase Shift
x1 = A* sin(2*pi*f*t + phase);
%Phase shift for cosine Wave
phase = 0;
%Cosine Wave with the phase sfit =0
x2 = A* cos(2*pi*f*t + phase);
%Using Subplot
subplot(2,1,1);
%Plotting sin wave
plot(t,x1, 'linewidth',2);
title('Sine Wave  with Phase = pi/2');
xlabel('Time');
ylabel('Amplitude');
grid on;
subplot(2,1,2);
%Plotting Cosine Wave
plot(t,x2, 'linewidth',2);
title('Consine Wave  with Phase = 0');
xlabel('Time');
ylabel('Amplitude');
grid on;
%Cosine Wave starts from positive max or with phase difference of pi/2 and
%sin wave starts from origin. Here We draw sin wave with phase shift of
%+pi/2 so Sin and Cosine Wave will be Equal as they already had Amplitude,
%frequency, time interval same