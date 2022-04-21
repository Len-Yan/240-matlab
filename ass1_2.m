%Lengfan Yan
%1/18/14
%Assignment 1  for integral e^x|3-0

clear all;
n = [100:5:2000];                   %ini variable
f = @(x) exp(x);
a = 0;
b = 3;
area = 0;
error = 0;
actual_sln = 19.0855369232;         % e^x|3-0
x = 0;

for i = 1: length(n)
    % find all points of x when cut the graph into "n" pieces
    x = linspace(a,b,n(i)+1);
    
    %store all value of area and error in two variable by array
    [area(i), error(i)] = myRightRiemann(x, f, actual_sln, a, b); 

end

%graphs
subplot(1,2,1)
plot(error) 
xlabel('n')
ylabel('Actual Error')
title('Error at each n of e^x in [0,3]')          
subplot(1,2,2)                                       
plot(area)
xlabel('n')
ylabel('Area')
title('Area at each n of e^x in [0,3]') 