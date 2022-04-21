%Lengfan Yan
%1/31/14
%Implements newton root finding method
%Output:  p  -- approximate root
%         error: vector holding values of relative error are each iteration
%         i: number of iterations used
%input:   f -- inline function
%         f_p -- inline function representing f '(x)
%         p_0: are initial approximations
%         TOL -- tolerance


function [p, error, i] = newton(f,fp,p_0,TOL) 
p = 0; error = 0; i = 1; p_old = p_0;        %ini

while (true)
   p(i) = p_old - (f(p_old) / fp(p_old))     %main process for this function
   error(i) = abs((p(i)-p_old)/p(i));
   if(error(i)<TOL)                          %determine when exit
        break;
   end
   
   p_old = p(i);                             %update
   i = i + 1;

end

% subplot(1,2,1)
% plot(error) 
% xlabel('Number of Iterations')
% ylabel('Relative Error')
% title('Newton vs. Secant Method with TOL = 10^-15')