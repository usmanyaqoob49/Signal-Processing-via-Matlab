clc; 
clear all;
close all;
%Time sample for the signal
t = -3.5:0.01:3.5; 
%Time period
T = 1;
%Fundamental frequency will be
w0 = 2*pi/T;
%Coefficients
M = 10;
x1 = zeros(1,length(t)); 
k = -M:M;
%Using for loop
for k = -M:M
       %if absolute of coefficent is less than 3
    if abs(k)<3
        %Execute following statement
        x1 = x1 + 1j*k*exp(1j*k*w0*t);
    else
        x1 = x1 + 0*exp(1j*k*w0*t);
    end
end
%Plotting continuous signal
subplot(3,1,1);
p=plot(-t,real(x1));
%-t is actually time reversal property
%real(x) will plot real part of the signal
xlabel('sample t'); 
ylabel('Signal') ;
title('Time Reversal Signal');
x1=-M:-2;
y1=0.*x1;
x2=-2:2;
y2=1j.*x2;
x3=2:M;
y3=0.*x3;
k2 = [ x1 x2 x3 ];
ak = [ y1 y2 y3 ];
subplot(3,1,2);
plot( -k2 , imag(ak));
xlabel(' Sample t');
title('F.S Time Reversal Coefficents'); 
x2 = zeros(1,length(t));
%Applying loop to check the condition
for k = -M:M
    %if absolute of coefficent is less than 3
    if abs(k)<3
        %Execute following statement
x2 = x2 + 1j*-k*exp(1j*k*w0*t);
    else
        %if condition is false execute following statemetns
x2 = x2 + 0*exp(1j*k*w0*t);
    end
end
subplot(3,1,3);
plot(t , real(x2));
grid;
xlabel('sample t'); 
ylabel('Required Signal') ;
title('a(-k)');
