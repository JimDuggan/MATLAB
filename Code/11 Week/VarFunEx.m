clear;

A = table([1;2;3;4;5],[6;7;8;9;10]);

func = @(x) x.^2;

B = varfun(func,A);


C = table([1;2;3;4;5],[6;7;8;9;10]);


D = varfun(@mean,C);

E = table(['Test1';'Test2';'Test1';'Test2';'Test2'], [1;2;3;4;5],[6;7;8;9;10]);

F = varfun(@mean,E,'GroupingVariables','Var1')


