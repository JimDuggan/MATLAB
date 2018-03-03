f = @(t,x,r,K) r*x*(1-x/K);

START = 0; END = 100;

r = 0.15;
K = 1000;

 [t,y] = ode45(f, [START END], 1,odeset,r,K);

 plot(t, y,'-o');


