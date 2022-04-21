%Lengfan Yan
%1/31/14
%Assignment 2    

clear all;
                                   %ini variables
f1 = @(x) x^2 - 6;
fp = @(x) 2 * x;
TOL1 = 10^-15;
p0_1 = 3;
p1 = 1;
error_1a = 0;
error_1b = 0;
i1a = 0;
i1b = 0;

f2a = @(x) 3^-x;
f2b = @(x) -x + 3^-x;
a = 0;
b = 1;
p0_2a = 0.8;
p0_2b = -0.1;
error_2a = 0;
error_2b = 0;
TOL2 = 10^-5;
i2a = 0;
i2b = 0;


  % function call for fixed point method 
 [p,error_2a, i2a] = fixed_point(f2a,p0_2a,TOL2);
  % function call for bisection
 [p,error_2b,i2b] = bisection(f2b,a,b,p0_2b,TOL2);
  % function call for newton's method
 [p, error_1a, i1a] = newton(f1,fp,p0_1,TOL1);
  % function call for secant method
 [p, error_1b, i1b] = secant(f1,p0_1,p1,TOL1);
    
  

%plot
 subplot(1,2,1)
 plot(error_1a, '-b') 
 hold on
 plot(error_1b, '-r') 
 xlabel('Number of Iterations')
 ylabel('Relative Error')
 title('Newton vs. Secant Method with TOL = 10^-15')  
 legend('Newtons Method','Secant Method')
  

subplot(1,2,2)
plot(error_2a,'-b') 
hold on
plot(error_2b, '-r') 
xlabel('Number of Iterations')
ylabel('Relative Error')
title('Fixed Point Iteration vs. Bisection with TOl = 10^-5')
legend('Fixed Point Method','Bisection')