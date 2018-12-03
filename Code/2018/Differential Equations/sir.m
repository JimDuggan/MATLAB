function dx = sir(t,x)
    dx   = [0;0;0];
    N    = 10000;
    CE   = 2;
    beta = CE/N;
    D    = 2;
    lambda = beta * x(2);
    
    % Susceptible
    dx(1) = -lambda * x(1);
        
    % Infected
    dx(2) = lambda * x(1) - x(2) / D;
        
    % recovered
    dx(3) = x(2) / D;
end






   
    
    
    
    
   
    
    
    
    
    