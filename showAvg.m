function [avgs] = showAvg(pixels)



avgs = [];

av1 = mean(pixels(:,1:4)');
avgs = [avgs,av1'];

av2 = mean(pixels(:,5:8)');
avgs = [avgs,av2'];

av3 = mean(pixels(:,9:12)');
avgs = [avgs,av3'];

av4 = mean(pixels(:,13:16)');
avgs = [avgs,av4'];
 
av5 = mean(pixels(:,17:20)');
avgs = [avgs,av5'];
 
av6 = mean(pixels(:,21:24)');
avgs = [avgs,av6'];

av7 = mean(pixels(:,25:28)');
avgs = [avgs,av7'];
        
av8 = mean(pixels(:,29:32)');
avgs = [avgs,av8'];
        
av9 = mean(pixels(:,33:36)');
avgs = [avgs,av9'];

av10 = mean(pixels(:,37:40)');
avgs = [avgs,av10'];

displayDataMult(avgs');
        
end