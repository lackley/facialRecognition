function [weights,norm_weights] = getWeights(U,face,avgFace)



[a,numEx]=size(U);

weights = [];


face = double(face);
avgFace = double(avgFace);

face = featureNormalize(face);
avgFace = featureNormalize(avgFace);

for i = 1:numEx
    eigenface = U(:,i);
    w = eigenface'*(face-avgFace);
    weights = [weights; w];
end


weightsT = weights';
S = sum(weightsT);
w_norm = weightsT./S;
norm_weights = w_norm';

end
