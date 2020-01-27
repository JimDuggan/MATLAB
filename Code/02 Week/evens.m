function [a, a2] = evens(x)
    lv = mod(x,2) == 0;
    a= x(lv);
    a2 = x(mod(x,2)==1);
end

