% looking at functions...

% function quizzes...

fh = @sin;

fh(pi/4);




b = 0;
a = 10;

fh = @(x) a*x + b;
fh(1:5)

b = 10;
fh = @(x) a*x + b;
fh(1:5)

% functions() function can be used to explore a closure.





fh(1:5);
