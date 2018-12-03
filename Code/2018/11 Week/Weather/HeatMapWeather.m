clear;

W = readtable("data/IrishRecords.xlsx");

W.Month = categorical(W.Month);

W1 = W(W.Year >= 1970,:);

x = min(W1.Year):max(W1.Year);
y = min(W1.MonthNumber):max(W1.MonthNumber);
z = W1.PrecipMM;
z = reshape(z,12,height(W1)/12);

colormap('hot')
pcolor(x,y,z) ;
colorbar

