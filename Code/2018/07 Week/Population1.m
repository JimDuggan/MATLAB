clear;

growth = @(t,x,g) g*x;
                
[t, s] = ode23(growth,      ... % Function containing net flows
                     [0:30],       ... % Time vector (start & finish)
                     [10],          ... % Initial conditions
                     odeset(),    ... % default values for MATLAB 
                     0.1);          ...  % growth rate (extra parameter    
               
plot(t, s), legend('Population');
               