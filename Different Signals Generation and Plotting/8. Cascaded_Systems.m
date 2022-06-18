clc;
clear all
close all;
%given signal h1
h1 = [1 3 2 1];
%given signal h2
h2 = [1 1 2];
%given signal x[n]
x = [1 4 3 2];
%convolving x with h1 
con1 = conv(x,h1);
%convolving con1 with h2 to get output 
y = conv(con1,h2);
%plotting input signal h1
subplot(4,1,1);
stem(h1);
xlabel('sample');
ylabel('h1');
title('input Signal h1');
%plotting input signal h2
subplot(4,1,2);
stem(h2);
xlabel('sample');
ylabel('h2');
title('input Signal h2');
%plotting input signal x
subplot(4,1,3);
stem(x);
xlabel('sample');
ylabel('x');
title('input Signal x');
%plotting ouput signal 
subplot(4,1,3);
stem(y);
xlabel('sample');
ylabel('y');
title('output Signal y');