function [class,C] = covariance(subWeight,allW,subjects)
%not currently working



C = [];

for i = 1:size(allW,2)
    u = subWeight;
    v= allW(:,i);
    covT = sum(u'*v);
    covB = sqrt(sum(u*u')*sum(v*v')');
    cov = covT/covB;
    C = [C,cov];
end

class = indexOfMax(C);

end