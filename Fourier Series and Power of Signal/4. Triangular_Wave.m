clc;
clear all;
close all;
%Defineing the time intetval
t = 0:0.001:5;
%complex amplitude * signal
x = (-8/(pi*pi))*exp(1i*(2*pi*0.5*t));
%Applying Loop from 1 to 11 with gap = 2
for k = 1:2:11
    y= (-8/(k*pi*pi))*exp(1i*(2*pi*0.5*k*t));
    %Adding x that outside loop with y
    s = x+y;
end
%At the end of day plotting :)
plot(t,real(s));
%Labeling Axis
xlabel('t');
ylabel('Amplitude');
