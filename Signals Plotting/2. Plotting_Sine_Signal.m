clc;
clear all;
close all;
%Given
x = -1:0.1:1;
for n= 1:8
    %Given Equation
    s = sin(n*pi*x);
    %For 8 Graphs
    subplot(4,2,n);
    %Plotting
    plot(x,s);
    grid on;
end


