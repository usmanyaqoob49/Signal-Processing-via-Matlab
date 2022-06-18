clc;
clear all;
close all;
%given signals
x = [1 3 2 1];
h = [1 1 2] ;
%Show that x[n] * h[n] = h[n] * x[n]. 
%Taking x[n] * h[n] 
con1 = conv(x,h);
%Taking h[n] * x[n] 
con2 = conv(h,x);
%plotting
subplot(2,1,1);
stem(con1,'linewidth',2);
xlabel('sample');
ylabel('Conv1');
title('x[n] * h[n] ')
subplot(2,1,2);
stem(con2,'linewidth',2);
xlabel('sample');
ylabel('Conv2');
title('h[n] * x[n]');