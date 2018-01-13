C = [3 12 10; 17 18 35; 7 10 24];

X = [4 0 0; 6 6 0; 0 3 5];

disp(C);
disp(X);

total = C .* X;

disp(total);

costs = sum(sum(total));

disp(['Total costs = ' num2str(costs)])
