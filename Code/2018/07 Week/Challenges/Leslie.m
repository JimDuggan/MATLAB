% Two elements: survivability & fertility
L = [0    0    12 9;
       1/3 0     0  0;
       0    1/2  0  0;
       0     0    1/2 0];
   
 X = [0; 0; 10; 0]; % initial conditions
 
 for t = 1:10
     X = L * X;
     disp([t X']);
 end
 
 % things to add
 % (1) create a results matrix (including a column for the total
 % population)
 % (2) Calculate the growth rate (steady state)
 
 
 
   
   