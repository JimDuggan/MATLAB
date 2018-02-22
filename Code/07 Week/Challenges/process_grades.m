function [ids, avrg, overall] = process_grades(g)

ids = g(:,1);

g1 = g(:,2:7); % change this to make more flexible

avrg = mean(g1');
avrg = avrg';


overall='To be done';

end