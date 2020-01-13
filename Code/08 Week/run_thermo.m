[t,y] = ode45(@thermostat_model, [0 23], 10);

plot(t, y,'-o');