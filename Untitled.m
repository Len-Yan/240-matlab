%Lengfan Yan
%21/2/14
%Assignment #4 find best fit line


x1 = [1 2 3 4 5 6 7 8 9 10];
y1 = [1.4271 2.9554 3.7242 4.5809 5.5403 6.7054 7.0050 8.7825 9.9269 10.0083];

figure(1)
[coeffs] = bestFitLine(x1,y1);



x2 = [10 30 30 40 50 60 70 80];
y2 = [25 70 380 550 610 1220 1130 1850];
figure(2)
[coeffs] = bestFitParabola(x2,y2);
 
%
% x3 = [0 2 2.5 1 4 7];
% y3 = [0 1 2 3 6 2];
% z3 = [5 10 9 0 3 27];
% figure(3)
% [coeffs] = bestFitPlane(x3,y3,z3);

