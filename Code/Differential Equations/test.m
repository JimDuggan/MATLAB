x = 1:10;
n = length(x);
avg = mymean(x,n);


function a = mymean(v,n)
% MYMEAN Example of a local function.

    a = sum(v)/n;
end
