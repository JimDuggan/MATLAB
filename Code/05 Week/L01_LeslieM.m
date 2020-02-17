clear;

L = [ 0 9 12; 1/3 0 0; 0 1/2 0];

X = [0 0 1]';

res = zeros(24, 5);

res(1,1) = 1;
res(1,2:4) = X';

for t = 2:24
    Prev_X = res(t-1,2:4)';
    New_X = L * Prev_X;
    res(t,:) = [t New_X' sum(New_X)];
end




