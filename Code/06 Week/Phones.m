% based on http://www.math.harvard.edu/~knill/teaching/math19b_2011/handouts/lecture27.pdf
clear;

C = [0 100]';

A = [2/3 1/2; 1/3 1/2];

N = 10;
out = zeros(N+1,3);
out(:,1) = 0:N;
out(1,2:3) = C;


for i = 2:N+1
    C = A * C;
    out(i,2:3) = C';
end

plot(out(:,1),out(:,2),out(:,1),out(:,3));
legend('Apple','Google')



