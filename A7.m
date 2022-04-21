%Lengfan Yan
%3/20/14
%Assignment 7

 f = @(x) exp(x^2);
 %f = @(x) 2*x;
 a = 2;
 b = 5;
 n = 20;
 %x = linspace(2,5,3);
 h = (b-a)/n;
 
 
%for Composite Trapezoidal 
[value1] = CTrapezoidal(f,a,b,h);
value1

%for Composite Simpon's 1/3   need n to be odd number to work
[value2] = CSimps13(f,a,b,h);
value2

%for Composite Simpon's 3/8    need n/4 = whole number to work
[value3] = CSimps38(f,a,b,n);
value3

