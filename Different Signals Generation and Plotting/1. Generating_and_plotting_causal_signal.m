clc
clear all
close all
t=-2:1/10:2;
x1 = sin(2*pi*2*t);
subplot(3,1,1);
stem(t,x1,'LineWidth',2);
xlabel('time');
ylabel('signal amplitude');
title('sin(2*\pi*f*t)');
u = (t>=0);
x2 = x1.*u;
subplot(3,1,2);
stem(t,u, 'r');
xlabel('time');
ylabel('Signal Amplitude');
title('Unit Step');
subplot(3,1,3);
stem(t,x2, 'k','LineWidth',2);
xlabel('time'); ylabel('signal amplitude');
title('causal version of sin(2*\pi*f*t)');
