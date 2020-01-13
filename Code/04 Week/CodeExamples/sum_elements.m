function [v] = sum_elements(m, byrow)

if byrow
    m = m';
end

v = sum(m);

if byrow
    v = v';
end

end