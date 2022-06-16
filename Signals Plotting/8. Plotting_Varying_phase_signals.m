clc;
clear all;
close all;
t = -2:0.01:2;
%Amplitude in case 4
A = 1;
%frequency in case 4
f = 0.5;
%Asking user to enter a value of n 
n = input('How many Sinusoids: ');
%To print n sine waves we have to use the loop from 1 to n
for i = 1:n
    p = input('Enter pahse: ');
    %Using Subplot to plot n graphs on same window
    subplot(n,1,i)
    s = A*sin(2*pi*f*t+p);
    plot(t,s);
    %Labelling Graph
    xlabel('Sample t');
    ylabel('Varying A');
end
