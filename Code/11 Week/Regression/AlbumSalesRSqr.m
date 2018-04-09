
C = readtable("data/AlbumSales.xlsx");

scatter(C.adverts, C.sales);

b = polyfit(C.adverts, C.sales, 1);

pred = b(2) + b(1).*C.adverts;

y = C.sales;

%pred=polyval(b,C.adverts);

hold on;

plot(C.adverts, pred);

rsq = 1 - sum((y-pred).^2)/sum((y-mean(y)).^2);


