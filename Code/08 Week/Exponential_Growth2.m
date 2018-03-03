% Solving dP/dt = rP

clear;

f = @(r)@(t,x) r*x;

START = 1960; END = 2010;

f1 = f(0.015);
f2 = f(0.030);

[t,y] = ode23(f1, [START END], 3e9);
plot(t, y,'-o');
hold on;


[t,y] = ode23(f2, [START END], 3e9);
plot(t, y,'-o');
hold on;



