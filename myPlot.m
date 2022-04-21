%Man H. Vu
%Date: Jan. 9
%Lecture 3 function: this function takes a vector of x values and find the
%corresponding function output, y. f is an inline function.

%[] is where all your output will go, you can have multiple outputs just
%separate them by commas. function name, myPlot, must be saved as a .m
%file with SAME exact name as the function name and in the SAME directory
%as the file that calls it.
function [y] = myPlot(x,f)

for i = 1:length(x)             %evaluating function values at each x
    y(i) = f(x(i));
end