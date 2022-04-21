%Lengfan Yan
%3/26/14
%Final Exam:  1 System of ODE

clear all;
%ini
x0 = 10; y0 = 15; z = 100; 
%x = 10; y = 15; z = 100; 
s = 10; r = 28; b = 8/3;
h = 0.01;       %t = [0, 100];  
n = (100-0)/h;  %t0 = 0;
t = linspace(0,100, n);  %cut t from 0 to 100 into n parts

%functions
f =@(x,y) r * x - y - x * z;

% xp = -s * x + s * y;
% yp = r * x - y - x * z;
% zp = -b * z + x * y; 

% f1 = f(t0, wp);
% f2 = f(t0+h/2, wp+.5*f1*h);
% f3 = f(t0+h/2, wp+.5*f2*h);
% f4 = f(t0+h, wp+f3*h);
% 
% wp1 = wp + ((f1 + 2*f2 + 2*f3 + f4)/6) * h; 

w =15;
%loop (100-0)/h -1 times
for i = 1:n-1
    %4th order
    k1 = f(t(i), w(i));
    k2 = f(t(i)+h/2, w(i)+.5*k1*h);
    k3 = f(t(i)+h/2, w(i)+.5*k2*h);
    k4 = f(t(i)+h, w(i)+k3*h);
    %get w
    w(i+1) = w(i) + ((k1 + 2*k2 + 2*k3 + k4)/6) * h; 
    w(i+1)
    %update t
%     t0 = t0 + h;
end

%graph
plot3(t,w,f(t,w));
grid on


% tspan=[0,100];
% x=[10,15,100];
% [t,x]=ode45(@lorenz,tspan,x)