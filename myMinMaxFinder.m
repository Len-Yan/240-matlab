%Man H. Vu
%Date: Jan. 15 2014
%Outputs a vector fmin and fmax containing the min and max values at each
%n value. Here n is a vector with the number of that represent the number 
%of subintervals that [a,b] will be split into

%NOTE: you cannot run this function like it is a script. Use #2 on 
%classwork#2 to get this to run

function [fmin fmax] = myMinMaxFinder(n,f,a,b)

fmin = 0; fmax = 0; y = 0; x = 0;

for i = 1:length(n)
    x = linspace(a,b,n(i)+1);   %discretizing x review linspace command  
                                %if you are confused about the +1
    for j = 1: length(x)        % solve for y
        y(j)=f(x(j));
    end
    fmax(i) = max(y);           %store max and min at each iteration
    fmin(i) = min(y);
end

subplot(2,1,1)                  %creates a 2 x 1 grid and plot fmax in 
plot(fmax)                      %first cell
xlabel('n')
ylabel('max')
title('Max at each n')
subplot(2,1,2)                  %plots fmin in second cell.           
plot(fmin)
xlabel('n')
ylabel('min')
title('Min at each n')

