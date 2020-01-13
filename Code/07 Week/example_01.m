% solving dy/dt = 2t

clear;

f = @(t,x) 2*t;

[t,y] = ode23(f, [0 10], 0);

plot(t, y,'-o');