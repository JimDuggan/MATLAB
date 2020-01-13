function [minv, maxv] = q2_function_ans(a)

[r,c]   = size(a);
minv  = [];
maxv = [];

for i = 1:r
    minv = [minv; get_min_row(a(i,:))];
    maxv = [maxv; get_max_row(a(i,:))];
end

end

function [m] = get_min_row(r)
min = r(1);
for i = 2:length(r)
    if r(i) < min 
        min = r(i);
    end
end
m = min;
end

function [m] = get_max_row(r)
max = r(1);
for i = 2:length(r)
    if r(i) > max 
        max = r(i);
    end
end
m = max;
end


    