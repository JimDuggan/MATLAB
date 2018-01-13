clear;

a = 2, n = 6;
x = a/2;

for i = 1:n
    x = (x + a/x)/2;
    disp(['Iteration = ' num2str(i) ' Value = ' num2str(x)]);
end

disp('MATLAB Value');
disp(sqrt(a));


