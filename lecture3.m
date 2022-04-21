%Man H. Vu
%Date: Jan. 9
%Lecture 3: "inline" functions, writing custom functions, passing
%arguments, returning values

clear all;
x = [-10:.01:10];           %make sure to use a finely spaced grid, .1 or less
f = @(x) 2*x-3;             %define "inline" function
y = myPlot(x,f);            %function call to myPlot will return a vector
                            %store this in y1
figure(1)
plot(x,y)

f = @(x) (exp(x))*sin(4*x); %save memory by redefining f instead of declaring new variable
y = myPlot(x,f);            %save memory by redefining y vector

figure(2)
plot(x,y)

f = @(x) 3*x^3 + 2*x^2 - 4*x + 3;
y = myPlot(x,f);

figure(3)
plot(x,y)