function [y] = house_model(t, x, k, l, Te, Tg, onFlags)
% House model based on Newton's Law of Cooling
%           dT/dt = k(Te - T), where Te = Constant
% t            - Time vector 
% x           - Current values of integrals (room temperature)
%                 x(1) is the current temperature of the attic (Ta)
%                 x(2) is the current temperature of the room (Tr)
% k          - Vector of cooling constants
%                k(1) is room to environment
%                k(2) is room to attic
%                k(3) is attic to environment
% l           - Heating constant for the heater
% Te        - Outside temperature
% Tg        - Themostat goal
% onFlags - switches for whether the heater is on or off


y = [0;0];  % initialise output column vector

k1 = k(1); k2 = k(2); k3 = k(3); % Cooling constants

index = int32(floor(t)) + 1;

heatOn = onFlags(index);

Th = heatOn * l * (Tg - x(2));

% Temperature change of Attic (dTa/dt)
y(1) = k3 * (Te - x(1)) + k2 * (x(2) - x(1));

% Temperature change of Room (dTr/dt)
y(2) = k1 * (Te - x(2)) + k2 * (x(1) - x(2)) + Th;

end
