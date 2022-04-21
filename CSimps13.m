%Lengfan Yan
%3/20/14
%give function and boundary and step size, find numerical integrals by 
% Simpson's 1/3 rule
%Output: value -- value of the final integration
% Input: f -- "inline" function
    % a -- left boundary 
    % b -- right boundary
    % h -- step size

function [value] = CSimps13(f,a,b,h)
sumx = 0; n = (b-a)/h;                      %ini
% 
% for i = 2:(n-1)
%     % 4 * EVEN when start at x1
%     if (i/2 == 0) 
%         sumx = sumx + 4*f((i*h)+a);
%     end
%     % 2 * ODD when start at x1
%     if (i/2 ~= 0) && (i < (n-1))
%         sumx = sumx + 2*f((i*h)+a);
%     end
% end
for i = 1:(n-1)
    % 2* even
    if (i/2) == 1 && (i < (n-1))
        sumx = sumx + 2*f((i*h)+a);
        %f((i*h)+a)
        %sumx2 = sumx

    % 4 * odd
    elseif (i/2 ~= 1) 
        sumx = sumx + 4*f((i*h)+a);
       % sumx1 = sumx
    end
end
%add end point and times h/3
    sumx = sumx + f(a) + f(b);
    sumx = h/3 * sumx;
    value = sumx;
end