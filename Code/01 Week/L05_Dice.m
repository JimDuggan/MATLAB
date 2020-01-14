clear;
rng(100);
N=10;
A = randi([1 6],N,2);
d_sum = A(:,1) + A(:,2);

freq = zeros(1,11);

for i = 1:N
    freq(d_sum(i)-1) = freq(d_sum(i)-1)+1;
end

disp(num2str(2:12))
disp(freq)

% check different values
sum(d_sum==7)

