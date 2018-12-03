clear;

load patients;

T = table(Gender, Smoker, Height, Weight);


T(1:5,:)

T.Gender = categorical(T.Gender);

summary(T.Gender);

T.ID = randi(1e4,100,1);
T(1:5,:)

T.BMI = (T.Weight*0.453592)./(T.Height*0.0254).^2;
T(1:5,:)

tf = (T.Smoker == false);
h1 = histogram(T.BMI(tf),'BinMethod','integers');
hold on
tf = (T.Smoker == true);
h2 = histogram(T.BMI(tf),'BinMethod','integers');
xlabel('BMI (kg/m^2)');
ylabel('Number of Patients');
legend('Nonsmokers','Smokers');
title('BMI Distributions for Smokers and Nonsmokers');
hold off


writetable(T,'allPatientsBMI.txt');

T.Properties.RowNames = LastName;

Tnew = T({'Smith','Johnson'},:)

Tnew = T('Johnson',{'Height','Weight'})

T = sortrows(T,'RowNames');
T(1:5,:)


