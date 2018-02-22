clear;

% must use column vector for multiple outputs
f = @(t,x,a,b,c) [a*t; b*t; c*t]; 

[t, y] = ode23(f, [0:30], [0,0,0], odeset(), 2,4,8);  

plot(t, y,'-o');