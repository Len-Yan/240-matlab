%Lengfan Yan
%1/17/14
%Assignment 1    for integral of sin(x)|6-0  and  e^x|3-0

clear all;
n = [100:5:2000];                   %ini variables
f1 = @(x) sin(x);
f2 = @(x) exp(x);

a1 = 0;
b1 = 6;
a2 = 0;
b2 = 3;
area1 = 0;
error1 = 0;
area2 = 0;
error2 = 0;

actual_sln1 = 0.03982971334;         % -cos(x)|6-0
actual_sln2 = 19.0855369232;         % e^x|3-0
x1 = 0;
x2 = 0;

for i = 1: length(n)
    % find all points of x when cut the graph into "n" pieces
    x1 = linspace(a1,b1,n(i)+1);       
    
    %store all value of area and error in two variable by array
    % for f1
    [area1(i), error1(i)] = myRightRiemann(x1, f1, actual_sln1, a1, b1);
    
    % same for 2nd fuction
    x2 = linspace(a2,b2,n(i)+1);  
    % for f2
    [area2(i), error2(i)] = myRightRiemann(x2, f2, actual_sln2, a2, b2);
    
end





%graphs
subplot(2,2,1)
plot(error1) 
xlabel('n')                            %don't know how to change the x-axis
ylabel('Actual Error')                     %to range 0-2000 instead of now
title('Error at each n of sin(x) in [0,6]')%showing the range of 'i' in loop
subplot(2,2,2)                                       
plot(area1)
xlabel('n')
ylabel('Area')
title('Area at each n of sin(x) in [0,6]') 

subplot(2,2,3)
plot(error2) 
xlabel('n')
ylabel('Actual Error')
title('Error at each n of e^x in [0,3]')          
subplot(2,2,4)                                       
plot(area2)
xlabel('n')
ylabel('Area')
title('Area at each n of e^x in [0,3]') 