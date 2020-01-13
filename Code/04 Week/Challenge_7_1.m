% Challenge 7.1
% For a vector of 100 random numbers, filter out all those that are less than the mean
% Build on this to create a function called partition, which takes a vector and splits it 
% into two vectors, one containing all numbers less than the mean, 
% the other containing all numbers greater than or equal to the mean.
%

v = randi([1 42],100,1);

v1 = v(v<mean(v));

v2 =  v(~(v<mean(v)));

f1= @(v) v(v<mean(v));

f2= @(v) v(~(v<mean(v)));





    










