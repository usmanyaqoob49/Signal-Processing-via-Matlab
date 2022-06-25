clc;
clear all;
close all;
t = -3:0.01:3;
x0= 1;
%k=-1 and k=1
x1 = (1/4)*exp(1j*(-1)*2*pi*t)+(1/4)*exp(1j*(1)*2*pi*t);
y1 = x1+x0;
%k = -2 and k=2
x2 = (1/2)*exp(1j*(-2)*2*pi*t)+(1/2)*exp(1j*(2)*2*pi*t);
y2 = y1+x2;
%k=-3 and k=3
x3 = (1/3)*exp(1j*(-2)*2*pi*t)+(1/3)*exp(1j*(2)*2*pi*t);
x = x0+x1+x2+x3;

figure;
subplot(3,2,1);
plot(t,x1);
title('x1(t)');

subplot(3,2,2);
plot(t,y1);
title('x0+x1');

subplot(3,2,3);
plot(t,x2);
title('x2');

subplot(3,2,4);
plot(t,y2);
title('x0+x1+x2')

subplot(3,2,5);
plot(t,x3);
title('x3');

subplot(3,2,6);
plot(t,x);
title('x0+x1+x2+x3');

