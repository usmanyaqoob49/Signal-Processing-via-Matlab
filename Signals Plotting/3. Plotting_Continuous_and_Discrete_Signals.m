clc;
clear all;
close all;
%Given Interval
x = 0:2*pi;
%Given Signal
s = exp(-x).*sin(8*x);
%Using subplot command for plotting continuous and discrete time
subplot(2,1,1);
%discret time signal
stem(x,s);
xlabel('Interval');
ylabel('Amplitude');
title('Discrete Time Representation: ');
grid on;
subplot(2,1,2);
%discret time signal
plot(x,s);
xlabel('Interval');
ylabel('Amplitude');
title('Continuous Time Representation: ');
grid on;