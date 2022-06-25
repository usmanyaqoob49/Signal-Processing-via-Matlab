clc;
clear all;
close all;
%Setting square wave duration
t = -1.5:0.005:1.5; 
%time period 
T = 1; 
%duty cycle
T1 = 1/4; 
%fundamental frequency 
w0 = 2*pi/T;
%Representing number of coefficients
A = 100; 
k = -A:A; 
ak = sin(k*2*pi*(T1/T))./(k*pi);
% Manual correction for a0 ?> ak(M+1)
ak(A+1) = 2*T1/T; 
x = zeros(1,length(t));
for k = -A:A
x = x + ak(k+A+1)*exp(j*k*w0*t);
end
plot(t,x,'lineWidth',2);
grid;
xlabel('t');
ylabel('Signal x(t)');

