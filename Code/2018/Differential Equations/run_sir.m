
options = odeset('RelTol',1e-04,'NonNegative',[1 2 3]);

[t,x] = ode23('sir',[0 20],[9999 1 0],options)

plot(t,x)
legend('S','I','R')


