function [nlm, ngm, enlm, engm] = q03_partition(v)

md = median(v);

nlm = v(v < md);
ngm = v(v > md);

nlm = nlm(mod(nlm,2) ~= 0);
ngm = ngm(mod(ngm,2) ~= 0);
enlm = nlm(mod(nlm,2) == 0);
engm = ngm(mod(ngm,2) == 0);


end

