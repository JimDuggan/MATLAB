clear;

D = readtable("data/ExamData.xlsx");

D.StudentID = categorical(D.StudentID);
D.Subject = categorical(D.Subject);

s1 = summary(D);

func = @mean;

D1 = D(:,2:3);

B = varfun(func,D1,'GroupingVariables','Subject');

C1 = D(:,{'StudentID','Grade'});

C = varfun(func,C1,'GroupingVariables','StudentID');









