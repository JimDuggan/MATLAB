% Phones example - three vendor marketplace.
clear;

C = [0 100 0]';

A = [0.6 0.4 0.8;
       0.3  0.5 0.15;
       0.1  0.1 0.05];
   

N = 10;
out = zeros(N+1,4);
out(:,1) = 0:N;
out(1,2:4) = C;


for i = 2:N+1
    C = A * C;
    out(i,2:4) = C';
end

plot(out(:,1),out(:,2),out(:,1),out(:,3),out(:,1),out(:,4));
legend('Apple','Google','Windows')



