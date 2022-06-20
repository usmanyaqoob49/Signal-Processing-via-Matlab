clc
clear all
close all
%Sample Time for signal
t = -5:0.1:5;
%Signal 
x = cos(2*pi*t);
x1 = x>0;
%k will be in range
k = -50:50;
%Time period for the signal given in manual
T = 1;
%Given in manual
T1 = 0.25;
a1 = sin(k*2*pi*(T1/T))./(k*pi);
a1(51) = 2*T1/T;
a2 = 2;
%ff
w1 = 2*pi/T;
w2 = a2*w1;
x2 = zeros(1,length(t));
%using loop
for k = -50:50
x2 = x2 +a1(k+51)*exp(1j*k*w2*t); 
end
%using subplot to plot different graphs on same window
subplot(2,1,1);
%plotting signal x1 w.r.t to sample t
plot(t,x1);
ylabel('x1');
title('Square Wave (Periodic)'); 
subplot(2,1,2);
%plotting real part of signal
plot(t,real(x2));
xlabel('sample t');
ylabel('x2');
 

 
 

