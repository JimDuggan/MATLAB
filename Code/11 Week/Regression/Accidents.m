load accidents

x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state

scatter(x,y);

b = polyfit(x, y , 1);

pred = b(2) + b(1).*x;

hold on;

plot(x, pred);

rsq = 1 - sum((y-pred).^2)/sum((y-mean(y)).^2);



