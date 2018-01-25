% using an anonymous function for the SIR model
clear;

sir = @(t,x)[-x(1)*x(2)*4/10000;...
                    x(1)*x(2)*4/10000 - x(2)/2; ...
                    x(2)/2];
                
[t, states] = ode23(sir,[0 20],[9999 1 0]);

test = @(t,x)t;

x = 1:10;

[t, ans] = ode23(test,[0 10],0);

pop = @(t,x,r)r*t;

options=odeset();

[t, ans] = ode23(pop,[0 100],1000,options,0.00);



