function [y] = thermostat_model(t,x)


y = [0]; % we have one derivative as the output

k      = 0.05;   % insulation constant
Te    = -2.0;   % Outside temperature
Tg    = 20.0;
l       = 0.60;

HeatOn = 1;

if(t > 6 && t < 18) 
    HeatOn=0;
end


y = (Te - x)*k + (Tg - x) * l *HeatOn;

end