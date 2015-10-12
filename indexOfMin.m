function [index] = indexOfMin(E)


min = 99999999;
index =0;
for i = 1:length(E)
    if E(i) < min
        index = i;
        min = E(i);
    end
end

end