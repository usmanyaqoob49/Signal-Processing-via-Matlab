clc;
clear all;
close all;
%Seting n
n = -10:1:10;
%declaring x0 equal to 1
x0= 1;
x1 = exp(-j*pi/4)*exp(j*(-1)*((2*pi)/5)*n)+exp(j*pi/4)*exp(j*(1)*((2*pi)/5)*n);
%Now combining/adding x0 and x1
y1 = x0+x1;
x2 = exp(-j*pi/3)*exp(j*(-2)*((2*pi)/5)*n)+exp(j*pi/4)*exp(j*(2)*((2*pi)/5)*n);
%Now adding/combining x2 with x0 and x1
y2= y1+x2;
%Now starting plotting
%Subplot for plotting different graphs on same window
%Here 2 rows, 2 columns and this first figure plot
subplot(2,2,1);
%Stem is used to plot dicrete signal
stem(n,x1);
title('x1[n]');
xlabel('n');
ylabel('Signal 1');

%Here 2 rows, 2 columns and this second figure plot
subplot(2,2,2);
%Stem is used to plot dicrete signal
stem(n,y1);
title('x0[n]+x2[n]');
xlabel('n');
ylabel('y1(n)');

%Here 2 rows, 2 columns and this third figure plot
subplot(2,2,3);
%Stem is used to plot dicrete signal
stem(n,x2);
title('x2[n]');
xlabel('n');
ylabel('Signal 3');

%Here 2 rows, 2 columns and this fourth figure plot
subplot(2,2,4);
%Stem is used to plot dicrete signal
stem(n,y2);
title('x0[n]+x1[n]+x2[n]+x3[n]+x4[n]');
xlabel('n');
ylabel('y2[n]');
