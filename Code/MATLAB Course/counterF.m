function [c] = counterF(init)

cvalue = init;


function [n] = get_counter()
    cvalue = cvalue+1;
    n = cvalue;
end

c = @get_counter;

end
