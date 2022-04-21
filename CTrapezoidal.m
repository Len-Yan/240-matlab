%Lengfan Yan
%3/20/14
%give function and boundary and step size, find numerical integrals by 
% Trapezoidal
%Output: value -- value of the final integration
% Input: f -- "inline" function
    % a -- left boundary 
    % b -- right boundary
    % h -- step size

function [value] = CTrapezoidal(f,a,b,h)
sumx = 0; n = (b-a)/h;                      %ini

for i = 1:n-1;
    %from x2 -- x(n-1)  * 2
    sumx = sumx + 2*f((i*h)+a);
end
%add end point and times h/2
sumx = sumx + f(a) + f(b);
    sumx = (h/2) * sumx;
    value = sumx;
end