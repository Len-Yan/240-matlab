%Lengfan Yan
%2/14/14
% slove matrix by Jacobi
%Inputs:
    % A -- The matrix in Ax = b
    % b -- the column vector in Ax = b
    % x0 -- initial approximation
    % TOL -- Tolerance to quit loop
%Ouputs:
    %x -- the final approximation
    %i -- the number of iterations used to reach the final approximation

function [x, i] = Jacobi(A, b, x0, TOL)
[m, n] = size(A);x = [0 0 0]'; i = 1; T = [0 0 0]';
%loop till meet TOL
while(true)
    %loop row
    for i = 1:m
        sum = 0;
        for j = 1:n                  %loop column
            if i ~= j                %ignor the x whitch solving
                sum = sum + A(i,j) * x0(j);     %sum of all #with verible
            end
        end
    x(i) = (-sum + b(i))/A(i,i);      %get apmox for x whitch solving
    
    
%      T(i) = abs(x - x0);
    end
    if abs(x - x0) < TOL             % if error < TOL, out
        break;
    end
    x0 = x;                          %update x0
end

plot(abs(x - x0),'o')
hold on