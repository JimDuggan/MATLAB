f = @(r,K)@(t,x)r*x*(1-x/K);

f1 = f(0.05,1000);

START = 0; END = 100;

[t,y] = ode45(f1, ...
                     [START END], 1);

 plot(t, y,'-o');

