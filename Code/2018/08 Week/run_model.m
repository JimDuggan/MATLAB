[t,y] = ode45(@room_model, [0 23], 20);

plot(t, y,'-o');