function [uvec] = uniqueV2(v)
% A function to return the unique values in a vector

uvec = [];

for i = v
    if isempty(find(uvec == i)) 
        uvec = [uvec i];
    end
end

uvec = sort(uvec);

end