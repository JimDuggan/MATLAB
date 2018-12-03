function [uvec] = uniqueV(v)
% A function to return the unique values in a vector
% make use of isempty() and find() functions
% will this also work with a matrix?


uvec = [];

for i = v
    if isempty(find(uvec == i)) 
        uvec = [uvec i];
    end
end

uvec = sort(uvec);

end


