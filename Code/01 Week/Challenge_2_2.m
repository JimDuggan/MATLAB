clear;
rng(100);

N = 10;

D = randi([1 6],N,2);

sum_d = D(:,1) + D(:,2);

is_seven = sum_d == 7;

tot_seven = sum(is_seven);
prop_seven = tot_seven / length(is_seven);


disp(['Total # of sevens = ' num2str(tot_seven)]);
disp(['Prop of sevens = ' num2str(prop_seven)]);






