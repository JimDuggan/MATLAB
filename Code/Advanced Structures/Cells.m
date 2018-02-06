clear;


student.name   = 'J. Wilson';
student.id         = '12345678';
student.marks   = [67 86 59];

c(1,1) = {1:5};
c(1,2) = {char('One','Two','Three')};
c(2,1) = {'This is a test'};
c(2,2) = {student};


% example 2
d{1,1}  = 1:5;
d{1,2} = char('One','Two','Three');
d{2,1} = 'This is a test';
d{2,2} = student;


disp(c)

% preallocate
a = cell(3,2);

disp('Here is the new cell structure (empty cells');
disp(a)



