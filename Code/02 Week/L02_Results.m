clear;
N = 1000000;
ids = (1:N)';
 
mean1 = 55;  sd1 = 5;
mean2 = 79;  sd2 = 8;
mean3 = 46;  sd3 = 15;
mean4 = 85;  sd4 = 20;
mean5 = 67;  sd5 = 2;
mean6 = 54;  sd6  = 40;
 
rng(100);
sub1 =  sd1 .* randn(N,1 ) + mean1;
sub2 =  sd2 .* randn(N,1 ) + mean2;
sub3 =  sd3 .* randn(N,1 ) + mean3;
sub4 =  sd4 .* randn(N,1 ) + mean4;
sub5 =  sd5 .* randn(N,1 ) + mean5;
sub6 =  sd6 .* randn(N,1 ) + mean6;

% (1) create results matrix
res = [sub1 sub2 sub3 sub4 sub5 sub6];
disp(['Initial simulated data...']);
disp(res);


% (2) Convert elements > 100 to 100

els_g100 = res > 100;
res(els_g100) = 100;

% (3) Convert elements < 0 to 0
els_l0 = res < 0;
res(els_l0) = 0;


% (4) add students ID column
res = [ids res];

% (5) add new colmns for average and grade
[nr, nc] = size(res);
new_col = zeros(nr,1);

res = [res new_col new_col];

% (6) Add the mean mark in column 8
for i = 1:nr
    res(i,8) = mean(res(i,2:7));
end


% (7) Add the overall grade
for i = 1:nr
    
    if res(i,8) >= 70
       grade = 1;
    elseif res(i,8)  >= 60
             grade=2;
    elseif res(i,8)  >= 50
             grade=3;
    elseif res(i,8)  >= 40
              grade=4;
     else
             grade=5;
    end
     
    res(i,9) = grade;
       
end

% (8) Perform a frequency count
freq = zeros(1,5);

for i = 1: nr
    freq(res(i,9)) = freq(res(i,9)) + 1;
end


