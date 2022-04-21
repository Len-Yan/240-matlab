%Lengfan Yan
%1/31/14
%Implements secant root finding method
%Output:  p  -- approximate root
%         error: vector holding values of relative error are each iteration
%         i: number of iterations used
%input:   f -- inline function
%         p_0, p_1: are initial approximations
%         TOL -- tolerance



% function [p, error, i] = secant(f,p_0,p_1,TOL) 
% i = 1; p(i+1) = 0; error = 0; p(i) = p_1; p_old = p_0;
% 
% while (true)
%    p(i+1) = p_1 - ((f(p_1) * (p_1 - p_old)) / (f(p_1) - f(p_old)))
%    error(i) = abs((p(i+1)-p_1)/p(i+1));
%    if(error(i)<TOL)
%         break;
%    end
% 
%    p(i) = p_old;
%    p_old = p_1;
%    i = i + 1;
%    if i > 15
%        break;
%    end
% 
% end



function [p, error, i] = secant(f,p_0,p_1,TOL) 
p = 0; error = 0; i = 1; p_old = p_0;          %ini

while (true)
   %main process for this function
   p(i) = p_1 - ((f(p_1) * (p_1 - p_old)) / (f(p_1) - f(p_old))) 
   
   error(i) = abs((p(i)-p_1)/p(i));
   if(error(i)<TOL)
        break;                                 %determine when exit
   end

   p_old = p_1;                                %update
   p_1 = p(i);
   i = i + 1;
  
   end

end

% subplot(1,2,1)
% plot(error) 
% xlabel('Number of Iterations')
% ylabel('Relative Error')
% title('Newton vs. Secant Method with TOL = 10^-15')