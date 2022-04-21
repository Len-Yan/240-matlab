%Man H. Vu
%Lecture 1: Introduction to MATLAB
%Date: Monday Jan. 6th
%Basic control structure, syntax, and scripting

clear all;  %clears all stored variables on workspace before starting script
bar = 2;    %MATLAB is case sensitive

if(bar == 1)
    disp('Hello class');
else
    disp('Hello world');
end

%Use ctrl + R or ctrl + T to comment and uncomment multiple lines of code

if(bar==1)
    disp('Hello ENGR240');
elseif(bar==2)
    disp('Math is cool!');
elseif(bar==3)
    disp('Today is Monday');
else
    disp('MATLAB is fun!');
end
                           %
x = [-10:.01:10];       %vector of x values from -10 to 10 with .01 spacing
y = 0;                  %declaring y to hold function output

for i = 1:length(x)     %length(x) returns the number of values held in x
    y(i) = 2*x(i).^2 + sin(x(i));
end

plot(x,y,'--')
grid on
