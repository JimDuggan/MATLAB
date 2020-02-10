function state = roll_2(p)

r = rand();

if r < p
    state = -1;
else
    state = 1;

end