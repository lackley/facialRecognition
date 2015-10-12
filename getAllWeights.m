function [allW] = getAllWeights(pixels,y,subjects,U,avgFace)
%U and avgFace are needed for getWeights
    %U has to be normalized using noralizeU and avgFace should be col vector
%make a matrix allW with the averageWeights for all subjects in subjects

% ============================================================

allW = [];

for i = 1:length(subjects);
    avgW = getAvgWeights(pixels,y,i,U,avgFace);
    allW = [allW,avgW];
end






end
