function rungekutta
h = 0.5;
t = 0;
w = 15;

for i=1:4
k1 = h*f(t,w);
k2 = h*f(t+h/2, w+k1/2);
k3 = h*f(t+h/2, w+k2/2);
k4 = h*f(t+h, w+k3);
w = w + (k1+2*k2+2*k3+k4)/6;
t = t + h;
w
end

