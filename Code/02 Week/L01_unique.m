clear;
% Find the unique values of a vector


v = [1 2 3 4 5 6 6 8 8 8 1 0];

% define an output array - initialise to first element

a = [v(1)];

for i = 2:length(v)
    check = v(i) == a;
    if(sum(check) == 0)
        a = [a v(i)];
    end
end
