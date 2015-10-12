function [class,M] = mahal(subWeight,allW,subjects)

M = [];
m = subWeight/std(subWeight);
normm = sqrt(sumsq(m));

for i = 1:size(allW,2)
    n = allW(:,i)/std(allW(:,i));
    normn = sqrt(sumsq(n));
    d=dot(m,n)/normm*normn;
    M = [M,d];
end

min=M(1);
class=1;

for i = 1:subjects
    if(M(i)<min)
        min = M(i);
        class =i;
    endf
end

end
