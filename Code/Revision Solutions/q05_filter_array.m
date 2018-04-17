function [outa] = q05_filter_array(A,num)

outa = A .* (A<num);

end