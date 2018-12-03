function [y] = room_model (t,x)

y = [0]; % we have one derivative as the output

HeatOn =1;
Heater  = 1.5;     % The heat (in C) produced by the heater per hour
k          = 0.05;   % insulation constant
Te        = -2.0;   % Outside temperature

if(t > 8) 
    HeatOn=0;
end

y = (Te - x)*k + Heater*HeatOn;

end