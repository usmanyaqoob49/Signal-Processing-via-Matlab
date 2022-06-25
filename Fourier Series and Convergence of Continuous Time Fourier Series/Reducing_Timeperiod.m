clc;
clear all;
close all;
%Setting sample value of k for discrete signal
k = -15:1:15;
T = 1;
%Time period of square Wave
T1 = 1/4;
ak1 = sin(k*2*pi*(T1/T))./(k*pi);
ak1(16) = 2*T1*T;
%Subplot for plotting different graphs on same window
%Here 3 rows, 1 columns and this first figure plot
subplot(3,1,1);
%Stem is used to plot dicrete signal
stem(k,ak1);
xlabel('k');
ylabel('ak');
title('FS Coeffiecients: Square Wave... (T=1, T1= 1/4)');
T1 = 1/8;
ak2 = sin(k*2*pi*(T1/T))./(k*pi);
ak2(16) = 2*T1/T;
%Here 3 rows, 1 columns and this is second figure plot
subplot(3,1,2);
%To plot discrete signal
stem(k,ak2,'filled');
xlabel('k')'
ylabel('ak2');
title('FS Coefficients for Periodic Square Wave... (T=1, T1=1/8)');
T1 = 1/16;
ak3 = sin(k*2*pi*(T1/T))./(k*pi);
ak3(16) = 2*T1/T;
%Here 3 rows, 1 columns and this is 3rd figure plot
subplot(3,1,3);
stem(k,ak3,'filled');
xlabel('k');
ylabel('ak3');
title('FS Coefficients for Periodic Square Wave (T=1, T1=1/16)');
