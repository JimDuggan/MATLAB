a = [1 2; 3 4];
x = [5 6];

a = [a; x]


a1 = a(3,2);
a2 = a(5);

disp(['a(3,2) = ' num2str(a1)]);
disp(['a(5) = ' num2str(a2)]);


a = [1:3;4:6]
b = a'
