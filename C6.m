%Lengfan Yan
%18/2/14
%class work #6

[X Y] = meshgrid([-20:.5:20],[-20:.5:20]);
f = @(x, y) sqrt(x.^2 + y.^2) + 3 .* cos(sqrt(x.^2 + y.^2)) +5;
Z = f(X, Y);

[m n] = size(X);

for i = 1:m
    for j = 1:n
        Z(i,j) = f(X(i,j),Y(i,j));
    end
end

grid on
mesh(X,Y,Z)