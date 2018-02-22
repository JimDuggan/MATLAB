function [v1, v2] = partition(v)

% All the values < mean
v1 = v(v < mean(v));

% All the values >= mean
v2 = v(v >= mean(v));


end