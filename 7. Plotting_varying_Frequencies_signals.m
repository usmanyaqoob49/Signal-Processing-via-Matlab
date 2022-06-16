clc;
clear all;
close all;
t = -2:0.01:2;
%Amplitude in case 3
A = 1;
%phase in case 3
p = 0;
%Asking user to enter a value of n 
n = input('How many Sinusoids: ');
%To print n sine waves we have to use the loop from 1 to n
for i = 1:n
    %Asking user to enter frequency
    f = input('Enter frequency: ');
    %Using Subplot to plot n graphs on same window
    subplot(n,1,i)
    s = A*sin(2*pi*f*t+p);
    %Plotting
    plot(t,s);
    %Labelling Graph
    xlabel('Sample t');
    ylabel('Varying A');
end
