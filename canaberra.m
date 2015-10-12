function [class,C] = canaberra(subWeight,allW,subjects)




C = [];

for i = 1:size(allW,2)
    u = subWeight;
    v= allW(:,i);

    normu = sqrt(sumsq(u));
    normv = sqrt(sumsq(v));

    uu = sqrt(normu);
    vv = sqrt(normv);

    r = sum( (uu-vv)^2 );
    can= sqrt(r);

    C = [C,can];
end

class = indexOfMin(C);

end