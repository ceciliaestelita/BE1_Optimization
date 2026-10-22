syms x y;
f =(1/2)*(x - 1)^2 + (1/2)*(10*(y-x^2))^2 + (1/2)*y^2 ;
grad_f= gradient(f, [x,y]);
H_f= hessian(f, [x,y]);

