d = floor(10*rand);

switch d
    case {2,4,6,8}
        disp([num2str(d) ' is Even']);
    case {1,3,5,7,9}
        disp([num2str(d) ' is Odd']);
    otherwise
        disp([num2str(d) ' is Zero']);
end

