[t,y] = ode45(@test, [0 100], 100);
 
plot(t, y,'-o');

