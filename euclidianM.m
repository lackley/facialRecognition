function [class,E,name] = euclidianM(subWeight,allW,subjects)

E = [];

for i = 1:size(allW,2)
    m = allW(:,i)/std(allW(:,i));
    n = subWeight/std(subWeight);
    euc = norm(n-m);
    E = [E,euc];
end

class = indexOfMin(E);

names = ['sub1'; 'sub2'; 'sub3'; 'sub4'; 'sub5'; 'sub6'; 'sub7'; 'sub8'; 'sub9'; 'sub10'; 'sub11'; 'sub12'; 'sub13'; 'sub14'; 'sub15'; 'Colin Kaepernick'; 'Arnold Schwarzenegger'; 'Britney Spears'; 'Pierce Brosnan'];

name = names(class,:);

end