% see https://www.cs.ubc.ca/~murphyk/Software/matlabTutorial/html/objectOriented.html

% We must take care to return the object when we modify any properties. 

% Objects in Matlab are by default, passed by value not by reference, 
% which means that a full copy of the object is passed to methods and 
% it is this copy that is modified. 

% if we do not pass back this copy, effectively overwriting the original, 
% we will not observe any change in the state. 

% also check handle classes...


clear;

a1 = Account(200);

a1 = a1.credit(2000);

b1 = Account(1200);

b1 = b1.debit(20);
