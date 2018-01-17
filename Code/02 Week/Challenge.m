clear;
rng(100);

D = randi([1 6],10,2);

sum_d = D(:,1) + D(:,2);

is_seven = sum_d == 7;

tot_seven = sum(is_seven);

disp(['Total # of sevens = ' num2str(tot_seven)]);






