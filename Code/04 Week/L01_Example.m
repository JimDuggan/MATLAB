clear;
N = 10;

mean1 = 55;  sd1 = 5;
mean2 = 79;  sd2 = 13;
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

% (2) write validator functions
v1_high = @(m) m > 100;
v2_low = @(m) m < 0;

% (3) call checks to finding invalid data
invalid_high = clean(res, v1_high);
invalid_low = clean(res, v2_low);

invalid_all = invalid_high | invalid_low;

%(4) impute the data 
new_res = impute(res,invalid_all);


