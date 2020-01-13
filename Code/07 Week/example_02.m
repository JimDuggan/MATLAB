clear;

% must use column vector for multiple outputs
f = @(t,x) [2*t; 3*t]; 

[t,y] = ode23(f, [0 10], [0 0]);

plot(t, y,'-o');