function rv = conv(m)
% get array dimesions
    [nr, nc] = size(m);
% allocate space for row vector (more efficient)
    rv = zeros(1,nr*nc);
    
    start = 1;
    for i = 1:nc
        rv(start:(start+nr-1)) = m(:,i);
        start=start+nr;
    end
    
    
% now move through array column by column
%   - row by row would be ok too (row order)
% copy column to successive elements of row vector

end

