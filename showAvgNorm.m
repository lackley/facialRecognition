function [avgs] = showAvgNorm(pixels,mu)



avgs = [];

av1 = mean(pixels(:,1:4)')-mu;
avgs = [avgs,av1'];

av2 = mean(pixels(:,5:8)')-mu;
avgs = [avgs,av2'];

av3 = mean(pixels(:,9:12)')-mu;
avgs = [avgs,av3'];

av4 = mean(pixels(:,13:16)')-mu;
avgs = [avgs,av4'];
 
av5 = mean(pixels(:,17:20)')-mu;
avgs = [avgs,av5'];
 
av6 = mean(pixels(:,21:24)')-mu;
avgs = [avgs,av6'];

av7 = mean(pixels(:,25:28)')-mu;
avgs = [avgs,av7'];
        
av8 = mean(pixels(:,29:32)')-mu;
avgs = [avgs,av8'];
        
av9 = mean(pixels(:,33:36)')-mu;
avgs = [avgs,av9'];

av10 = mean(pixels(:,37:40)')-mu;
avgs = [avgs,av10'];

displayDataMult(avgs');
        
end