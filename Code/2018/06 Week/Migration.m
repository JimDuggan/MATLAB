clear;

C = [179048 1345402]';

A = [0.85 0.05; 0.15 0.95];

N = 20;
out = zeros(N+1,3);
out(:,1) = 0:N;
out(1,2:3) = C;


for i = 2:N+1
    C = A * C;
    out(i,2:3) = C';
end

plot(out(:,1),out(:,2),out(:,1),out(:,3));
legend('Galway','Dublin')



