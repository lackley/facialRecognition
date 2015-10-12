function [accuracies] = acc(types)


accuracies =[];
for i = 1:size(types,2)
    accuracy = faceRecT(i);
    accuracies = [accuracies,accuracy];
end





end