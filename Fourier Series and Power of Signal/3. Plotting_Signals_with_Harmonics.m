clc;
clear all;
close all;
%lets define t
t = 0:0.0001:8;
%using loop from 1 to 9
y = 0;
for n = 1:2:9
    %Signal
    s = 1/(n)*(sin(2*n*pi*t));
    y = s+y;
end
%plotting signal declared in the loop
plot(t,y);
title('Signal with n = 1,3,5,7,9'); 
xlabel('Time');
ylabel('Amplitude');