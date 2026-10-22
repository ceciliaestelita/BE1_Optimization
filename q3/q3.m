timespan =[0 100] ;
initial_predator = 3;
initial_prey = 6;
br = 1;
df = 1;
a = 1;
b = 1 ;
initial_states = [initial_prey, initial_predator];
F = @(t,z)[br*z(1) - a*z(1)*z(2); b*z(1)*z(2) - df*z(2)];
[time, population] = ode45(F, timespan, initial_states);

x1 = population ( :,1);
x2 = population( :,2);
figure (3)
plot(x1,x2);
title("Phase portrait of Lotka-Volterra model for predator-prey system");
