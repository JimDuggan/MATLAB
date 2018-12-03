function [y] = verhulst_model(t,x,r,K)

y = r*x*(1-x/K);



end
