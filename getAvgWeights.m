function [avgW] = getAvgWeights(pixels,y,k,U,avgFace)
%U and avgFace are needed for getWeights
    %U has to be normalized using noralizeU and avgFace should be col vector
%given matrix of all photos pixels, vector of classes y, and int k that represents the class you are looking for, it will return a vector of avgWeights for all photos in class k


picsK = [];

for i= 1:size(pixels,2)
    if y(i)==k
        picsK = [picsK, pixels(:,i)];
    end
end

[a,b]=size(pixels);

sum =zeros(b,1);

for i = 1:size(picsK,2)
    sum = sum + getWeights(U,picsK(:,i),avgFace);
end

avgW = sum./size(picsK,2);

% ============================================================

end
