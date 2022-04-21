%Lengfan Yan
%28/2/14
% Create a 5th degree Newton's Interpolating Polynomial
%INPUT: x: data of x for the function
%       y: data for y for the function
%OUTPUT: coeffs: coefficients for function

function [coeffs] = dDiffCoeffs(x,y)
n = length(x);

% for c = 1:5
%     for i= 1:n
%        a1(i) = (y(i+1) - y(i)) / (x(i+1) - x(i));
% 
%     end
   %find b2 and number for b3
a(1) = (y(2) - y(1)) / (x(2) - x(1));
a(2) = (y(3) - y(2)) / (x(3) - x(2));
a(3) = (y(4) - y(3)) / (x(4) - x(3));
a(4) = (y(5) - y(4)) / (x(5) - x(4));
a(5) = (y(6) - y(5)) / (x(6) - x(5));
    %find b3 and number for b4
b(1) = (a(2) - a(1)) / (x(3) - x(1));
b(2) = (a(3) - a(2)) / (x(4) - x(2));
b(3) = (a(4) - a(3)) / (x(5) - x(3));
b(4) = (a(5) - a(4)) / (x(6) - x(4));
    %find b4 and number for b5
c(1) = (b(2) - b(1)) / (x(4) - x(1));
c(2) = (b(3) - b(2)) / (x(5) - x(2));
c(3) = (b(4) - b(3)) / (x(6) - x(3));
    %find b5 and number for b6
d(1) = (c(2) - c(1)) / (x(5) - x(1));
d(2) = (c(3) - c(2)) / (x(6) - x(2));
    %find b6
e(1) = (d(2) - d(1)) / (x(6) - x(1));

%put ans into coeffs
coe = [y(1),a(1), b(1), c(1), d(1), e(1)];
coeffs = coe;
    
 
%function               don't know why if I plot the function here will get
%                       a werid graph
% fs = @(q) y(1)+ a(1).*(q-x(1)) + b(1).*(q-x(1)).*(q-x(2)) ...
%     + c(1).*(q-x(1)).*(q-x(2)).*(q- x(3)) + d(1).*(q-x(1)).*(q-x(2)).*(q- x(3)).*(q- x(4)) ...
%     + e(1).*(q-x(1)).*(q-x(2)).*(q- x(3)).*(q- x(4)).*(q-x(5));

% xi = [-1:0.01:1];
% plot(xi,fs(xi));
end