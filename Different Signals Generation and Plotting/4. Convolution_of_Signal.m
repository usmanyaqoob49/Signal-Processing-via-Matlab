clc;
clear all;
close all;
%given signal 1
x = [2 4 6 4 2];
%given signal 2
h = [3 -1 2 1];
%using convolove function
c = conv(x,h);
%now plotting input signal x
subplot(3,1,1)
stem(x);
xlabel('sample');
ylabel('Amplitude');
title('x');
%now plotting input signal h
subplot(3,1,2)
stem(h);
xlabel('sample');
ylabel('Amplitude');
title('h');
%now plotting output signal c
subplot(3,1,3)
stem(c);
xlabel('sample');
ylabel('Amplitude');
title('convolution');