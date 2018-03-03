f = @(t,x,Tenv,k) (Tenv - x) * k;

[t,y] = ode45(f, [0 30], 80,odeset,20,0.1);

plot(t, y,'-o');

