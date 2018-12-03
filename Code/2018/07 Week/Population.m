% Solving dP/dt = rP

f = @(t,x) 0.015*x;

[t,y] = ode23(f, [1960 2010], 3e9);

plot(t, y,'-o');

