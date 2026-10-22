a = 1;
b = 4;
x1 = -2:0.01:2;
x2 = -1:0.01:3;
[X1, X2] = meshgrid(x1, x2);
f = b*(X2 - X1.^2)^2 + (a + X1)^2;
contour (X1, X2, f);
title("Contour lines of the Rosenbrock function");

syms x1 x2; 
f =b*(x2 - x1^2)^2 + (a + x1)^2 ;
grad_f= gradient(f, [x1,x2]);
grad_f_point = subs(grad_f ,[x1,x2] , [1 2] );
