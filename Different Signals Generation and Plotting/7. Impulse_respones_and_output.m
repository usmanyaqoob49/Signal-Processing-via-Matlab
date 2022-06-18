clc;
clear all
close all;
%given signal h
h = [2 1 2 4 3];
%given signal x
x = [1 4 3 2];
%convolving to get output
con = conv(h,x);
%plotting input signal h
subplot(3,1,1);
stem(h);
xlabel('sample');
ylabel('h');
title('input Signal h');
%plotting input signal x
subplot(3,1,2);
stem(x);
xlabel('sample');
ylabel('x');
title('input Signal x');
%plotting ouput signal 
subplot(3,1,3);
stem(con);
xlabel('sample');
ylabel('con');
title('output Signal con');