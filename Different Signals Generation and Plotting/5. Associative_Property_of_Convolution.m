clc;
close all;
clear all;
%given signal x1[n]
x1 = [3 1 1];
%given signal x2[n]
x2 = [4 2 1];
%given signal x3[n]
x3 = [3 2 1 2 3];
%Show that (x1[n] * x2[n]) * x3[n] = x1[n] * (x2[n] * x3[n])
%Taking Left hand side
%firstly convolving x1[n] and x2[n]
c1 = conv(x1,x2);
%now convolving x1[n] and x2[n] with x3[n]
c2 = conv(c1,x3);
%Taking Right hand side
%firstly convolving x2[n] and x3[n]
c3 = conv(x2,x3);
%now convolving  x1[n] with x2[n] and x3[n]
c4 = conv(x1,c3);
%now lets plot
%firslty plotting c2 = (x1[n] * x2[n]) * x3[n]
subplot(2,1,1);
stem(c2,'linewidth',2);
xlabel('sample');
ylabel('Conv1');
title('c2 = (x1[n] * x2[n]) * x3[n]')
%now plotting c4 = x1[n] * (x2[n] * x3[n])
subplot(2,1,2);
stem(c4,'linewidth',2);
xlabel('sample');
ylabel('Conv1');
title('c4 = x1[n] * (x2[n] * x3[n])');