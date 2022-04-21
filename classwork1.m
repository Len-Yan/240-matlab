%Man H. Vu
%Date: Jan. 8
%Classwork #1: manipulating arrays, practicing for loops, outputting to
%command window.

clear all;
%Problem 1-----------------------------------------------------------------
x = [2 4 2 1 8 6 3 9];
for i=1: length(x)
    if (mod(i,2)==1);   %output to command window all odd indexes
        x(i)            %odd indexes when mod 2 will have a remainder of 1
    end
end

%Problem 2-----------------------------------------------------------------
a = 3; b = 12; c =-9;
f = sin(a*pi/4)*log(b/c)
g = sqrt(a^2 + b^2 + c^2)
h = exp(3*a^(-2.5))

%Problem 3-----------------------------------------------------------------
%You can either write 3 different scripts for the three graphs below or you
%can put them all in one script. If you have them all in the same script
%you will need the "figure" command which is explained below. You can plot
%a graph in 3 simple MATLAB statements but in the spirit understanding the
%basic for loops I opted for the longer route.

t = [0:.01:5];          %make sure to use a finely spaced grid, .1 or less
s = [0:.01:2];
z = [-5:01:5];
w = 0; x = 0; y = 0;

for i = 1:length(t)     %evaluating function values at each t
    w(i) = 2*t(i)-3;
end
for i = 1:length(s)
    x(i) = exp(-s(i))*sin(4*s(i));
end
for i = 1:length(z)
    y(i) = 3*z(i)^3 + 2*z(i)^2 - 4*z(i) + 3;
end

figure(1)               %if you want to plot multiple plots on different 
plot(t,w)               %grids, assign figure (number) for each plot
hold on
plot(s,x)
figure(3)
plot(z,y)
