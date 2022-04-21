%Lengfan Yan
%01/28/14
%fuction take a matrix  as a parameter and add 20% salt and pepper noise 
%then pad the margins with zeroes.
%[B]; the ouput, the A after process. (A): the matrix user inputed

% missed today's lab, not really sure how this fuction should fuction

function [B] = addNoise(A)

[m,n] = size(A); r = 0;salt = 255; pepper = 0;   %ini
B = zeros(m,n);

for i = 1:m                               %loop through rows
    
    for j = 1:n                           %loop through columns
        
        if A(i,j) == %(something 20%)      %if a 20% range is encountered
            r = rand;                     %get a random number
            
        % or if r <= 0.2      
             
            if r >= 0.5                   %50% chance to change value
                A(i,j) = salt;            % to 2550 or 0
            elseif r < 0.5
                A(i,j) = pepper;
           
            end
            
        end
        
    end
    
end


 B = A(1:m:,1:n);
 B
end





 
 