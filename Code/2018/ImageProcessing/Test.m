clear;

% see https://www.colorspire.com/rgb-color-wheel/



f = imread('test.jpg');
f1 = f;
f2 = f;
f3 = f;

 
 f1(:,:,1) =0;
 f2(:,:,2) =0;
 f3(:,:,3) =0;
  
 %imshow(f);
 
 R = f(:,:,1); 
G = f(:,:,2); 
B = f(:,:,3); 

T = randi([0 1], 10000,10000);

T1 = rand(1000,1000);


 
 
