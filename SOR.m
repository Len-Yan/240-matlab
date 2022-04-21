%Lengfan Yan
%2/14/14
% slove matrix by SOR
%Inputs:
    % A -- The matrix in Ax = b
    % b -- the column vector in Ax = b
    % x0 -- initial approximation
    % TOL -- Tolerance to quit loop
    % omega -- constant given in the problem statement
%Ouputs:
    %x -- the final approximation
    %i -- the number of iterations used to reach the final approximation


function [x, i] = SOR(A, b, x0, TOL, omega)
[m, n] = size(A);x = [0 0 0 ]'; i = 1; w = omega;

while(true)              
    for i = 1:m                              %loop matrix
        sum = 0; sum2 = 0;
        for j = i+1:n
            sum = sum + A(i,j) * x0(j);        %get sum for upper & lower
        end
        for j = 1:i-1
            sum2 = sum2 + A(i,j) * x0(j);
        end
    x(i) = (1-w) * x0(i) + w * (-sum -sum2 + b(i))/A(i,i);  %get x(i) with omega
    
    end
    
    %error
%     T = abs(x - x0);
    if abs(x - x0) < TOL        %check
        break;
    end
    x0 = x;           %update
end

plot(abs(x - x0),'ro')