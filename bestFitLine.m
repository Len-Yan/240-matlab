%Lengfan Yan
%21/2/14
%find the best fit line witg a linear function
%Input: x: input data of array of x
%       y; input data of array of y
%Output: coeffs: slope of the line

function [coeffs] = bestFitLine(x,y)
%ini all the data number in variables
a0 = 0; a1 = 0;
coeffs = 0; n = length(x); sumx = sum(x); sumy = sum(y);
sumx2 = sum(x.^2); sumxy = sum(x.*y);
xmean = mean(x); ymean = mean(y);

%find coeffs
a1 = (n * sumxy - sumx * sumy) / (n * sumx2 - sumx^2);
a0 = ymean - a1 * xmean;
coeffs = a1;

%function of line
L = @(t) a0 + a1 * t;

%plot
plot(x, y, 'o');
hold on
plot(x, L(x));
end