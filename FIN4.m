%Lengfan Yan
%3/26/14
%Final Exam:  4 Comparing convergence and using matlab documentation

clear all;

%create the martix
B = zeros(2000,3);
B(:,1)=1;
B(:,2)=4;
B(:,3)=1;
A = full(spdiags(B, [-1 0 1], 2000, 2000));
%ini
b = ones(2000,1);
x0 = zeros(2000,1);
TOL = 0.00001;
omega = 1.25;

%function call
    [xa1, ia1] = Jacobi(A, b, x0, TOL);
    [xa2, ia2] = GS(A, b, x0, TOL);
    [xa3, ia3] = SOR(A, b, x0, TOL, omega);

%graphs inside the function