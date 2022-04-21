%Man H. Vu
%Date: Jan. 13
%Find the maximum/minimum of a function by discretizing a given x interval.
%This x interval is refined after each iteration to more accurately
%calculate the min/max

clear all;
n = [100:5:1000];           %number of subintervals to divide x interval
f = @(x) x^2;
ymin = 0;                   %initializing variables
ymax = 0;
x = 0;

for i = 1: length(n)        %run through length of n finding max at each n
    x = linspace(-10,10,n(i));  %see "Useful MATLAB Commands"
                                %via Moodle for linspace explanation       
    
    %puts the min/max for each x grid into corresponding ymin(i) ymax(i)
    [ymin(i) ymax(i)] = findMinMax(x,f);
end

figure(1)
plot(ymin)                  %Plotting with 1 vector plots the vector value
figure(2)                   %as the y-coord and the index of the value as x
plot(ymax)