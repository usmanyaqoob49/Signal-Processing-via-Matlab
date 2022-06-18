clc;
close all;
clear all;
%position vector
n = -10:10;
s = cos(n);
causal = sig_causal(s,n);
%plotting s w.r.t n
subplot(2,1,1);
stem(n,s);
xlabel('n');
ylabel('cos(n)');
title('Orignal signal');
%now plotting causal
subplot(2,1,2);
stem(n,causal);
xlabel('n');
ylabel('cos(n)');
title('causal signal');