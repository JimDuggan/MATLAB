% Leslie matrix for population Young - Adult - Elderly
clear;

L = [0.0  4.0  0.0;
       0.7  0.0  0.0;
       0.0  0.7  0.0];
   
N = 10;   
results = zeros(N+1,5);


X0 = [0 100 0]';
disp([0 X0' sum(X0)]);
results(1,:) = [0 X0' sum(X0)];

X = X0;

for i = 1:N
    X = L*X;
    disp([i  X' sum(X)]);
    results(i,:) = [i X' sum(X)];
end


X10 = L^10* X0;
X100 = L^100 * X0;

disp('After 10');
disp([i  X10' sum(X10)]);

      