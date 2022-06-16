clc;
clear all;
close all;
%frequency of case 1
f = 0.5;
t = -2:0.01:2;
%Phase given in case 1
phase = 0;
%Amplitude given in case 1
A = 2; 
n = input('Enter Number of Sinusides: ');
%To print n sine waves we have to use the loop from 1 to n
for i = 1:n
    %Defining sine wave
    s = A*sin(2*pi*f*t+phase);
    %Using Subplot to plot n graphs on same window
    subplot(n,1,i);
    %Plotting
    plot(t,s);
    %Labeling The Graphs 
    xlabel('Interval t');
    ylabel('Amplitude of signal');
    title('sine Wave');
end