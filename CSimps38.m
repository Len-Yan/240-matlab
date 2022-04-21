%Lengfan Yan
%3/20/14
%give function and boundary and step size, find numerical integrals by 
% Simpson's 3/8 rule
%Output: value -- value of the final integration
% Input: f -- "inline" function
    % a -- left boundary 
    % b -- right boundary
    % n -- number of points

function [value] = CSimps38(f,a,b,n)
sumx = 0; c = 1; h = (b-a)/n;               %ini
x = linspace(2,5,n);
for i = 1:(n-1);
    %test condition for2*f(x) when i = 3,6,9,12...   n-3
    if (((i)/3) == c) && (i < (n-2))
        sumx = sumx + 2*f((i*h)+a);
        %update c so test condition will continue to work
        c = c +1;
        
    % for 3*f(i) when i = 1,2,4,5,7,8..   n-1    
    else
        sumx = sumx + 3*f((i*h)+a);
    end
end
    %add end point and times 3h/8
    sumx = sumx + f(a) + f(b);
    sumx = h*3/8 * sumx;
    value = sumx;
end