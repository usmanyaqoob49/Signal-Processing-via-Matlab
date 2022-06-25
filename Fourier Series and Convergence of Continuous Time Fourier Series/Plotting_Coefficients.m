clc 
clear all
close all
%Setting Sample Time for signal
t = -2.5:0.005:2.5; 
%Time
T = 1;
%Duty Cycle
T1 = 1/4;
%Fundamental Frequency
w0 = 2*pi/T;
%Representing Number of Coefficients
M = 10;
k = -M:M;
x = zeros(1,length(t)); 
for k = -M:M
x = x + ((mod(k,2)~=0)+1)*exp(j*k*w0*t);
end
figure;
plot(t,real(x),'lineWidth',2);
grid;
xlabel('t'); 
ylabel('Signal x(t)') ;
title('For M =10');
 
%Plotting For M = 20

%Setting Sample Time for signal
t = -2.5:0.005:2.5;
%Time
T = 1;
T1 = 1/4;
w0 = 2*pi/T;
M = 20;
k = -M:M;
x = zeros(1,length(t)); 
for k = -M:M
x = x + ((mod(k,2)~=0)+1)*exp(j*k*w0*t);
end
figure;
plot(t,real(x),'lineWidth',2);
grid;
xlabel('t'); ylabel('x(t)') ;
title('For M=20');
 
%plotting for M = 50
 

t = -2.5:0.005:2.5;
T = 1;
T1 = 1/4;
w0 = 2*pi/T;
M = 50;
k = -M:M;
x = zeros(1,length(t)); 
for k = -M:M
x = x + ((mod(k,2)~=0)+1)*exp(j*k*w0*t);
end
figure;
plot(t,real(x),'lineWidth',2);
grid;
xlabel('t'); ylabel('x(t)') ;
title('For M=50');

