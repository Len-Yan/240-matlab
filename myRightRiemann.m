%Lengfan Yan
%1/17/14
% find the area of fuction by add all rectangle together, and find the
% error to the intergal of fuction

%num_rects: number of rectangles used in the Riemann Sum given by the values in your n vector.
%actual_sln:  analytical solution to this integral
% a, b: starting and ending bounds on your integra
%[area, error]; a approximate of the total area of fuction have, and
%the difference of approximate area with actual area

function [area, error] = myRightRiemann(num_rects, f, actual_sln, a, b) 

area = 0; error =0;y= 0; x=0;           % ini variables


for j = 1: length(num_rects)        % solve for y for each rects
    y(j)=f(num_rects(j));
    
    % add all area of rects  /  area calcuation
    area = area + y(j) * ((b-a) / (length(num_rects)-1));  
    
    error = abs(area - actual_sln);      %error calcuation
        
end

    


% subplot(1,2,1)
% plot(error) 
% xlabel('n')
% ylabel('Actual Error')
% title('Error at each n of sin(x) in [0,6]')          %
% subplot(1,2,2)                                       %
% plot(area)
% xlabel('n')
% ylabel('Area')
% title('Area at each n of sin(x) in [0,6]') 