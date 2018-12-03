clear;
NUM_RUNS = 10;
UPR__GF = 0.01;
LWR_GF   = 0.0;

GF = LWR_GF  + (UPR__GF-LWR_GF ).*rand(NUM_RUNS,1);

InitPopulation = 3000000000;
START=1960;
END=2010;

% useful call: get_param('Population/GF','DialogParameters')

for i = 1:length(GF)
set_param('Population/GF','Value',num2str(GF(i)));
set_param('Population/GF','Value',num2str(GF(i)));
set_param('Population/Population','InitialCondition',num2str(InitPopulation));

[Time,States] = sim('Population',[START END]);

plot(Time, States);
hold on
end




