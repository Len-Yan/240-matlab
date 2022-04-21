%Man H. Vu
%Date: Jan. 13
%Find ymin and ymax values of the function f(x) given x vector, and f inline 
%function

function [ymin, ymax] = findMinMax(x,f)

y = 0; ymin = 0; ymax = 0;      %variable declaration

for i=1:length(x)
    y(i) = f(x(i));             %solving for all y values given f
end

ymax = max(y);                  %max(vector) returns the max value in
ymin = min(y);                  %vector
