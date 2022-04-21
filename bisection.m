%Lengfan Yan
%1/31/14
%Implements bisection root finding method
%Output:  p  -- approximate root
%         error: vector holding values of relative error are each iteration
%         i: number of iterations used
%input:   f -- inline function
%         a -- left bound of interval
%         b -- right bound of interval
%         p_0 -- initial approximation
%         TOL -- tolerance

function [p,error,i] = bisection(f,a,b,p_0,TOL)
p = 0; error = 0; i = 1; p_old = p_0;               %ini

while (true)                          %while loop till get expected answer
   p(i) = a + ((b-a)/2);              %main process for this function
   error(i) = abs((p(i)-p_old)/p(i));     % error calcluation
   if(error(i)<TOL)                   %determine when exit
        break;
   end
   if(f(a)*f(p(i))<0)                 %new range
       b = p(i);
   else
       a = p(i);
   end
   
   p_old = p(i);                      %update
   i = i + 1;
end

    

% subplot(1,2,2)
% plot(error)  
% xlabel('Number of Iterations')
% ylabel('Relative Error')
% title('Fixed Point Iteration vs. Bisection with TOl = 10^-5') 