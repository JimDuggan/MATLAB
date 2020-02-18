% Euler's Method to integrate dy/dt=2t
% from t=0 to t = 10
% assume DT = 1 for starters
clear;
DT        = 0.01;
START   = 0;
END      = 10;

Time = START;
y  = 0; % initial value of the integral
dy_dt = 2 * Time;
disp(['Time = ' num2str(Time) ' y = ' num2str(y)...
        ' dy/dt = ' num2str(dy_dt)]); 
Time = Time + DT;

while Time <= END
    y = y + dy_dt * DT;
    dy_dt = 2 * Time;
    disp(['Time = ' num2str(Time) ' y = ' num2str(y)...
        ' dy/dy = ' num2str(dy_dt)]); 
    Time = Time + DT;
end





