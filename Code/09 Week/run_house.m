Te       = -2;      % temperature of the environment
TaINIT  = 12;     % Initial temperature of the attic
TrINIT  = 20;      % Initial temperature of the room
l           = 0.75;  % heating constant
Tg        = 22;     % Desired temperature

k  = [0.05    ... % cooling from room to outside
        0.07    ... % cooling from room to attic
        0.80];      % cooling frm attic to outside

% sample heating pattern for 24 hours
heater_on = [0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0];
%heater_on = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

[t,y] = ode45(@house_model,   ... % Differential equations function
                     [0 23],               ... % Time horizon
                     [TaINIT TrINIT],  ... % Initial room temperatures
                     odeset,              ... % MATLAB constant
                     k,                      ... % Vector of cooling constants
                     l,                       ... % Room heating constant
                     Te,                    ... % Outside temperature
                     Tg,                    ... % Thermostat goal
                     heater_on           ... % Hourly heater switch flags
                     );

plot(t, y,'-o');
hold on;
scatter(0:23,heater_on);