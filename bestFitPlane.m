%Lengfan Yan
%21/2/14
%find the plane base on the 3-d data
%Input: x: input data of array of x
%       y; input data of array of y
%       z: input data of array of z
%Output: coeffs: slope of the plane?


function [coeffs] = bestFitPlane(x,y,z)
%ini

coeffs = 0;
w =0;

% [X,Y] = meshgrid();

N = [length(x) sum(x); sum(x) sum(x.^2)];
B = [sum(y); sum(x.*y)];
a = N\B;

%function
%L = @(t,s) a(1) + a(2).*t;


% Q = [x;y;];
% e = Q\z';



%plot
plot3(x3,y3,z3, 'o');
grid on
hold on
%mesh(x, y, L(x,y));
end

