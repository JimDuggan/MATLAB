clear;

W = readtable("data/IrishRecords.xlsx");

W2 = W(:,{'PrecipMM','MonthNumber'});
means = varfun(@mean,W2,'GroupingVariables','MonthNumber');

plot(means.MonthNumber, means.mean_PrecipMM);
hold on;
scatter(means.MonthNumber, means.mean_PrecipMM);



