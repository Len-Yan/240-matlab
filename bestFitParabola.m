%Lengfan Yan
%21/2/14
%find the best fit parabola base on the data
%Input: x: input data of array of x
%       y;input data of array of y
%Output: coeffs: slope of the line


function [coeffs] = bestFitParabola(x,y)
%ini
a0 = 0; a1 = 0; a2 = 0;
coeffs = 0; n = length(x); sumx = sum(x); sumy = sum(y);
sumx2 = sum(x.^2); sumx3 = sum(x.^3); sumx4 = sum(x.^4); 
sumxy = sum(x.* y); sumx2y = sum(x.^2 .* y);
xmean = mean(x); ymean = mean(y);

% %find coeffs
A = [n sumx sumx2; sumx sumx2 sumx3; sumx2 sumx3 sumx4];
B = [sumy sumxy sumx2y]';
c = A\B;
coeffs = c(3);

% %find coeffs
% a1 = (n * sumxy - sumx * sumy) / (n * sumx2 - sumx^2);
% a0 = ymean - a1 * xmean;


%function of parabola
L = @(t) c(1) + c(2) .* t + c(3) .* t.^2;

%plot
plot(x, y, 'o');
hold on
plot(x, L(x));
end
