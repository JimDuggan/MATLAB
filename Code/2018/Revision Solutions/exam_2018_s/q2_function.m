function [minv, maxv] = q2_function(a)

at = a';

minv = min(at);
maxv  = max(at);

minv = minv';
maxv = maxv';
end

