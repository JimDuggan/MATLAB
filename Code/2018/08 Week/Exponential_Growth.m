% Solving dP/dt = rP

f = @(t,x,r) r*x;

START = 1960; END = 2010;

rates = [0.00 0.01 0.02 0.03 0.04 0.05];

count = 1;
for r = rates
    [t,y] = ode23(f, [START END], 3e9,odeset,r);
    plot(t, y,'-o');
    hold on;
end


