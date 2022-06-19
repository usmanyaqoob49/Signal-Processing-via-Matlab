clc;
clear all;
close all;
%First lets add effects 1st to 17th
%time given in example
t = 0:0.0001:8;
%fundamental frequency given in example
ff = 0.5;
%Finding Ist 
y = (4/pi)*sin(2*pi*ff*t);
%lets apply loop from 3 to 7 with step gap 2
for k = 3:2:17
    fh = ff*k;
    x = (4/(k*pi))*sin(2*pi*fh*t);
    %Ist will be added here
    y = y+x;
end
%For Different window graphs
figure
%Plotting the ist to 17th harmonic
plot(t,y);
title('A square wave with harmonics 1st to 17th'); 
xlabel('Time');
ylabel('Amplitude');
figure
%for ist to 27th
ff = 0.5;
%Again declaring ist here
y = (4/pi)*sin(2*pi*ff*t);
%Applyng  loop from 3 to 27
for k = 3:2:27
    fh = ff*k;
    x = (4/(k*pi))*sin(2*pi*fh*t);
    y = y+x;
end
plot(t,y);
title('A square wave with harmonics 1st to27th'); 
xlabel('Time');
ylabel('Amplitude');
