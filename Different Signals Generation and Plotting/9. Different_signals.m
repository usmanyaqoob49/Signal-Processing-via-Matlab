clc;
clear all;
close all;
%given signal x1 
x1 = [2 -3 3 4 -2];
%given signal x2
x2 = [4 2 3 1 -2];
%given signal x3
x3 = [3 5 -3 4];
%verify: x1[n] * (x2[n] * x3[n]) = (x1[n] * x2[n]) * x3[n]  
%taking left hand side 
%convolving x2 and x3
c1= conv(x2,x3);
%convolving x1 and c1
left = conv(x1,c1);
%taking right hand side
%convloving x1 with x2
c2 = conv(x1,x2);
%now convoving c2 with x3
right = conv(c2,x3);

%Lets plot to prove all this
%Plotting LHS
subplot(2,1,1)
stem(left);
xlabel('sample');
ylabel('left hand side');
title('x1[n] * (x2[n] * x3[n])');

%Plotting RHS
subplot(2,1,2)
stem(right);
xlabel('sample');
ylabel('right hand side');
title('(x1[n] * x2[n]) * x3[n]');


%Now let us verify x1[n] * x2[n]= x2[n] * x1[n] 
%convolving x1 and x2
lhand = conv(x1,x2);
%now right hanf side
rhand = conv(x2,x1);

%Let us Plot left hand side
figure
subplot(2,1,1)
stem(lhand);
xlabel('sample');
ylabel('left hand side');
title('x1[n] * x2[n]');

%Let us Plot right hand side
subplot(2,1,2)
stem(rhand);
xlabel('sample');
ylabel('right hand side');
title('x2[n] * x1[n]');
