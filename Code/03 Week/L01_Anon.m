clear;
x = 1:10;
m = 2;
c   = 0;

y = @(x,m,c)m.*x+c;

q = @(x,a,b,c)a*x.^2+b*x+c;

y_vals = y(x,m,c);
