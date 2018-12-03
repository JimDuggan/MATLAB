version

ver matlab

% when does MATLAB do calculations "in-place"

% use shortcuts... 

% Different array types

d = [1 2];
dcell = {d};

dstruct.d = d

whos

% structure takes up more space (64 bytes)
namelengthmax


% mlx code (live editor)

% how does MATLAB store structures

n = 10000;

s.A = rand(n,n);
s.B = rand(n,n)

sNew = s;

s.A(100,100) = 10;

% note the change in memory allocation.

% image processing...
% overhead of storing some arrays...

X = imread('onion.png');

% tables (2013)
% can read directly from Excel file
% n x n arrays, each column can be different

load('patients');

tP = table(Gender, Age, Height,SelfAssessedHealthStatus);
tP1 = table(Gender, Age, Height,categorical(SelfAssessedHealthStatus));

% summary can be used to aggregate data.

% use of strings in MATLAB (double quotes)


 
 















