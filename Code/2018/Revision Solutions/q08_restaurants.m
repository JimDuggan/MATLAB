% Leslie matrix for customers in A, B and C

L = [0.70 0.10 0.00;
       0.25 0.80 0.00;
       0.05 0.10 1.00];
   
check = sum(L); % should equal one for each column

N = 100;

% adding in a matrix for the results

results = zeros(N+1,5);
X = [40000 40000 20000]';

TotalPop = sum(X);

results(1,:) = [0 X' sum(X)];
disp([0 X' sum(X)]);


for i = 1:N
    X = L*X;
    results(i+1,:) = [i X' sum(X)];
    disp([i X' sum(X)]);
end


prop_res = results(:,1:4);
prop_res(:,2:4) = prop_res(:,2:4)/TotalPop;


plot(prop_res(:,1),prop_res(:,2:4));
legend('A','B','C');

      