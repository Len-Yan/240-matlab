%Lengfan Yan
%28/2/14
%Assignment #5 Interpolation polynomial

%datas
x = [-1.0000   -0.6000   -0.2000    0.2000    0.6000    1.0000];
y = [0.0385    0.1000    0.5000    0.5000    0.1000    0.0385];

f =@(x) 1./(1+ 25*x.^2);
xi = [-1:.01:1];


%call newton's interpolation polynomial
[coeffs] = dDiffCoeffs(x,y);
%function for newton's
fs = @(q) coeffs(1)+ coeffs(2).*(q-x(1)) + coeffs(3).*(q-x(1)).*(q-x(2)) ...
    + coeffs(4).*(q-x(1)).*(q-x(2)).*(q- x(3)) + coeffs(5).*(q-x(1)).*(q-x(2)).*(q- x(3)).*(q- x(4)) ...
    + coeffs(6).*(q-x(1)).*(q-x(2)).*(q- x(3)).*(q- x(4)).*(q-x(5));



%Vandermonde Matrix method
%Martix of data
A = zeros(6,6);
A(:,1:1) = x.^5';
A(:,2:2) = x.^4';
A(:,3:3) = x.^3';
A(:,4:4) = x.^2';
A(:,5:5) = x';
A(:,6:6) = x.^0';

b = y';
%solve
q = A\b;
%function for Vand Method
fv =@(h) q(1)*h.^5 + q(2)*h.^4 +q(3)*h.^3 +q(4)*h.^2 + q(5)*h + q(6);



%Plots
xi = [-1:0.01:1];
plot(x,y,'ro');                             %original point
yi = interp1(x,y,xi,'cubic');               %build in function
plot(x,y,'o',xi, yi,'-r');                  
hold on
xs = [-1:0.1:1];                            %vand #2 for better visual
plot(xs,fv(xs),'m*')
% plot(xi,fv(xi),'*');                        %vand
plot(xi,f(xi),'g');                         %original function
plot(xi,fs(xi));                            %newton's

legend('Original Data','Cubic Spline','Vandermone','Actual Curve','newtons')