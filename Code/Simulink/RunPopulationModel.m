clear;
% useful call: get_param('Population/GF','DialogParameters')
GF = 0.002;
InitPopulation = 3000000000;
START=1960;
END=2010;

set_param('Population/GF','Value',num2str(GF));
set_param('Population/GF','Value',num2str(GF));
set_param('Population/Population','InitialCondition',num2str(InitPopulation));

[Time,States] = sim('Population',[START END]);

plot(Time, States);




