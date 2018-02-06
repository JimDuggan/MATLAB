function [eqs] = lotto_equals(v1, v2)

% assuming both vectors are sorted
eqs = all(v1 == v2);

end