clc;
clear all;
close all;
t = -2:0.01:2;
%frequency in case 2
f = 0.5;
%phase in case 2
p = 0;
%Asking user to enter a value of n 
n = input('How many Sinusoids: ');
%To print n sine waves we have to use the loop from 1 to n
for i = 1:n
    A = input('Enter Amplitude: ');
    %Using Subplot to plot n graphs on same window
    subplot(n,1,i)
    s = A*sin(2*pi*f*t+p);
    plot(t,s);
    %Labeling The Graphs 
    xlabel('Sample t');
    ylabel('Varying A');
end
