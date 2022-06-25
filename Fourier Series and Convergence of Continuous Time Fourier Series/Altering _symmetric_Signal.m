clc;
clear all;
close all;
%declaring time period for the wave
t = -3:0.01:3;
x0= 1;
%k=-1 and k=1
x1 = (1/4)*exp(1j*(-1)*2*pi*t)+(2/4)*exp(1j*(1)*2*pi*t);
%Adding x1 with x0 and storing it in y1
y1 = x1+x0;
%k = -2 and k=2
x2 = (3/2)*exp(1j*(-2)*2*pi*t)+(1/2)*exp(1j*(2)*2*pi*t);
%Now Adding x2 with x1 and x0 means y1
y2 = y1+x2;
%k=-3 and k=3
x3 = (5/3)*exp(1j*(-3)*2*pi*t)+(2/3)*exp(1j*(3)*2*pi*t);
%Now adding x0, x1, x2 and x3
x = x0+x1+x2+x3;


figure;
%Subplot for plotting different graphs on same window
%Here 3 rows, 2 columns and this first figure plot
subplot(3,2,1);
%Using plot command to plot
plot(t,x1);
xlabel('t');
ylabel('x1(t)');
title('First Signal');

%Here 3 rows, 2 columns and this second figure plot
subplot(3,2,2);
plot(t,y1);
xlabel('t');
ylabel('y1(t)');
title('Second Signal: x0+x1');

%Here 3 rows, 2 columns and this third figure plot
subplot(3,2,3);
plot(t,x2);
xlabel('t');
ylabel('x2(t)');
title('3rd Signal');

%Here 3 rows, 2 columns and this fourth figure plot
subplot(3,2,4);
plot(t,y2);
xlabel('t');
ylabel('y2(t)');
title('4th Signal: x0+x1+x2')

%Here 3 rows, 2 columns and this fifth figure plot
subplot(3,2,5);
plot(t,x3);
xlabel('t');
ylabel('x3(t)');
title('5th Signal');

%Here 3 rows, 2 columns and this sixth figure plot
subplot(3,2,6);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Sixth Signal: x0+x1+x2+x3');

