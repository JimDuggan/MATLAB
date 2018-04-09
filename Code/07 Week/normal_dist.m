clear;

% pdf  for the standard normal distribution
f = @(z,x) (1/sqrt(2*pi))*exp(-z^2/2);

% find out the area between z scores
[t,y] = ode45(f, [0 10], 0);

plot(t, y,'-o');