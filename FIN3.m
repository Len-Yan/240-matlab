%Lengfan Yan
%3/26/14
%Final Exam:  3 Heun's Method: Predictor - Corrector

clear all;
%ini
fp = @(t) sin(t)-exp(-t);
%slope at ti (x)
%y' = f(x,y)    ? confused for y parameter
f = @(t) exp(-t) - cos(t);
a = 0; b = 2;
y0 = 0; w = y0; t = 0;
h = 0.01;
n = (b-a)/h;


%loop
for i = 1:n-1
    %predictor
    w(i+1) = w(i) + h*f(t(i),(w(i)));
    %corrector      
    w(i+1) = w(i) + ((f(t(i),w(i)) + f(t(i+1),w(i+1)))/2) * h;
    
end

% plot(t,w);
