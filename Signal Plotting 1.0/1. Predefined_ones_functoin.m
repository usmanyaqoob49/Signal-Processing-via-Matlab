clc;
clear all;
close all;
%Assumed Sample
n= -10:10;
%Signal Required
sig = [-ones(1,10) 0 ones(1,10)];
%Plotting Signal
stem(n,sig);
xlabel('Sample');
ylabel('Amplitude');
title('sign(n)');