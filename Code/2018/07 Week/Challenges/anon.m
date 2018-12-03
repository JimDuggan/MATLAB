f1 = @(v) sum(v);

f2 = @(v) [sum(v);mean(v);min(v);max(v)];


v = 1:10;

x1 = f1(v);

x2 = f2(v);




