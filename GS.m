%Lengfan Yan
%2/14/14
% slove matrix by Gauss-Seidel
%Inputs:
    % A -- The matrix in Ax = b
    % b -- the column vector in Ax = b
    % x0 -- initial approximation
    % TOL -- Tolerance to quit loop
%Ouputs:
    %x -- the final approximation
    %i -- the number of iterations used to reach the final approximation

function [x, i] = GS(A, b, x0, TOL)
[m, n] = size(A);x = [0 0 0 ]'; i = 1; T = 0;

while(true)
    for i = 1:m                          %loop row
        sum = 0; sum2 = 0;               %for upper and lower
        for j = i+1:n
            sum = sum + A(i,j) * x0(j);
        end
        for j = 1:i-1
            sum2 = sum2 + A(i,j) * x0(j);
        end     
    x(i) = (-sum -sum2 + b(i))/A(i,i);       %get answer for a new x(i)
    
    end
    
    %error
%     T = abs(x - x0);
    if abs(x - x0) < TOL                    %check if end
        break;
    end
    
    x0 = x;                      %update x0
end

plot(abs(x - x0),'g')
hold on