N = input('Enter the number of numbers:');

Sum = 0.0;
for i = 1:N
    Num = input('\tEnter number:');
    Sum = Sum + Num
end

Avr = Sum/N

fprintf("The average is %f\n",Avr)