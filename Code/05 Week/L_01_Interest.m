clear;
N=30;
X = zeros(N,1);
X(1) = 1000;
r = 0.05;
for i = 2:N
    X(i) = X(i-1) + X(i-1) * r;
end