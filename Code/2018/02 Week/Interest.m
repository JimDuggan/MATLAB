clear;
format bank;

A = [750 1000 3000 5000 11999];
r = 0.09;
n = 10;

B = A * (1+r) ^n;
disp([A' B']);
