%Lengfan Yan
%2/14/14
%Assignment 3 slove matrix

a = [2, -1, -1 ; -3, 6, -1 ; -1, -1, 2];                   %inis
b = [10, -1 ,-2,5;-5, 8, -1 , 1; 3 -1, 10,3; 1,-1,2, 6];
ax = [10,0,0]';
bx = [9,1,0,-3]';
TOL = 10^-7;
omega = 1.2;       %(don;t know wht the answer of SOR get werid if chose it over 1.3)
oa = [0 0 0]';
ob = [0 0 0 0]';

  xa1 = 0; ia1 = 0;
  xa2 = 0; ia2 = 0;
  xa3 = 0; ia3 = 0;
  xb1 = 0; ib1 = 0;
  xb2 = 0; ib2 = 0;
  xb3 = 0; ib3 = 0;
% 
%function call
  [xa1, ia1] = Jacobi(a, ax, oa, TOL);
  [xa2, ia2] = GS(a, ax, oa, TOL);
  [xa3, ia3] = SOR(a, ax, oa, TOL, omega);
%  
%  
   [xb1, ib1] = Jacobi(b, bx, ob, TOL);
   [xb2, ib2] = GS(b, bx, ob, TOL);
   [xb3, ib3] = SOR(b, bx, ob, TOL, omega);

%output
xa1, ia1
  xa2, ia2
  xa3, ia3
  xb1, ib1
  xb2, ib2
  xb3, ib3
  