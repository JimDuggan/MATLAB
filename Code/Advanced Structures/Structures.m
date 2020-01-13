clear;

student.name   = 'J. Wilson';
student.id         = '12345678';
student.marks   = [67 86 59];

student(2).name      = 'K. Armstrong';
student(2).id           = '22345678';
student(2) .marks    = [47 76 69 61];

clear;

field1 = 'name';  value1 = 'J. Wilson';
field2 = 'id';       value2 = '12345678';
field3 = 'f3';      value3 = [67 86 59];

student = struct(field1, value1, field2, value2, field3, value3);



