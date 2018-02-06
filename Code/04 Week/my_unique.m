function [uvec] = my_unique(v)
% This is our MATLAB unique function

uvec = [];

for i = v
    if isempty(find(uvec ==i))
        uvec = [uvec i];
    end
end

uvec = sort(uvec);

% uvec = unique(v);

end