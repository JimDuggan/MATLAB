clear;
% (1) Assign the data (g, u and t) to MATLAB variables
g     =  9.81;               % acceleration due to gravity
u     =  60;                 % initial velocity m/s
t_end =  12.30;              % final time in seconds
t_int =  0.1 ;               % interval
t     =  0 : t_int : t_end;  % time vector

% (2) Calculate the value of s according to the formula
s     = u*t - g / 2 * t .^ 2

% (3) Plot the graph of s against t
plot(t,s,'k','Linewidth',3)
title('Vertical motion under gravity')
xlabel('time'), ylabel('vertical displacement')
grid

% (4) Stop