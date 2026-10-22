p_b = 20.605;
p_n = 22.95;
p_e = 8.705;

t_b = 2.5;
t_n = 4;
t_e = 1.5;

s_0 = [2,2,2];
profit =[ p_b p_n p_e];

A = [t_b t_n t_e];
lb = [2 2 2];
ub = [];
intcon = 1:3 ;
b=23;

[s, value ]  = intlinprog( -profit, intcon, A, b, [], [], lb, ub);
profit_max = - value;
