%Lengfan Yan
%1/31/14
%Implements fixed point root finding method      graph it with line connect
%each coordinate in functions
%Output:  p  -- approximate root
%         error: vector holding values of relative error are each iteration
%         i: number of iterations used
%input:   f -- inline function
%         p_0 -- initial approximation
%         TOL -- tolerance


function [p,error, i] = fixed_point(f,p_0,TOL)

p = 0; error = 0; i = 1; p_old = p_0;    %ini

x = [-1: 0.1 :2];                        %graph of 2 functions
  ff = @(x) x;
  f1 = @(x) 3.^-x;
  plot(x, f1(x))
  hold on
  plot(x, ff(x))
  title('Fixed Point Iteration of g(x) = 3^-x') 

while (true)
   p(i) = f(p_old);                      %main process for this function
   
   %horizontal line
   plot([p_old,f(p_old)],[ff(p(i)),ff(p(i))],'-r')     
   %vertical line in graph
   plot([ff(p(i)),ff(p(i))], [ff(p(i)), f(ff(p(i)))],'-r')
   
   error(i) = abs((p(i)-p_old)/p(i));
   if(error(i)<TOL)                      %determine when exit
        break;
   end
   
   p_old = p(i);                         %update
   i = i + 1;
end
  

 
  