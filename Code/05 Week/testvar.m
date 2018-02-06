function [varargout] = testvar(varargin)

% varagin is a 1 x nargin cell array
varargin

disp('Displaying the elements of varargin...');
for i = 1:nargin
    disp(varargin{1,i});
end

for i = 1:nargout
    varargout{i} = 2*varargin{1,i};
end

end

