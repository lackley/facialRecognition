function [class,E] = euclidian(subWeight,allW,subjects)

E = [];

for i = 1:size(allW,2)
    euc = norm(subWeight-allW(:,i));
    E = [E,euc];
end

class = indexOfMin(E);

end