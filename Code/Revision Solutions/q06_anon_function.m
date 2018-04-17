f = @(v) [mean(v); std(v)];

v = 1:100;

stats = f(v);

disp(['Mean = ' num2str(stats(1))]);
disp(['SD = ' num2str(stats(2))]);

