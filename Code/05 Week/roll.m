function state = roll()

r = rand();

if r < 0.5
    state = -1;
else
    state = 1;

end