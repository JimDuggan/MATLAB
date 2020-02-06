clear;
rng(1);


N = 100000000;
walk = zeros(N,1);

walk(1) = 100;

for i = 2:N
    walk(i) = walk(i-1) + roll();
    
end

plot(walk);
