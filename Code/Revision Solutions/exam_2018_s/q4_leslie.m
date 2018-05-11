% Leslie matrix for customers in A, B and C

L = [0.65 0.30 0.15;
       0.20 0.60 0.30;
       0.15 0.10 0.55];
   
check = sum(L); % should equal one for each column

N = 2030 - 2018;

% adding in a matrix for the results

results = zeros(N+1,7);
X0 = [30000 30000 30000]';


results(1,:) = [2018 X0' (100*X0/sum(X0))'];

X = X0;


for i = 2019:2030
    X = L*X;
    results(i-2017,:) = [i X' (100*X/sum(X))'];
end
