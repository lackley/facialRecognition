function [index] = indexOfMax(E)


max=-99999999;
index =0;
for i = 1:length(E)
    if E(i) > max
        index = i;
        max = E(i);
    end
end

end