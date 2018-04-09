clear;

C = readtable("data/CarData.xlsx");

scatter(C.displ,C.cty);

hold on;
scatter(C.displ,C.hwy);

% filter rows
tf = C(C.year == 1999,:);

tf1 = C(C.displ >  6,:);




