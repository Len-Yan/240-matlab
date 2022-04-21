%Man H. Vu
%Lecture 2: Introduction to MATLAB
%Date: Monday Jan. 7th
%Vectors, Plotting, writing math functions similar to "inlines"

clear all;
x = [-10:.01:10];           %vector of x values from -10 to 10 with .01 spacing
y = 0;                      %declaring y to hold function output
f = @(x) 2*(x.^2) + sin(x); %Declares a variable f to store the math function
for i = 1:length(x)         %length(x) returns the number of values held in x
    y(i) = 2*x(i).^2 + sin(x(i));
    t(i) = f(x(i));
end

figure(1)
plot(x,y)
grid on
figure(2)
plot(x,t)
grid on
