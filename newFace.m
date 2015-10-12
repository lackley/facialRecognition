function [class] = newFace(U)

cd crop2;
newFace = imread("subject01centerlightgif.gif");
[r,c]=size(newFace);
newFaceVec = double(reshape(newFace,r^2,1));

cd ..;

[a,numEx]=size(U);

smallest = norm(newFaceVec-U(:,1));
class =1;
for i = 1:numEx
    weight = U(:,i);
    dist = norm(newFaceVec-weight);
    if dist<smallest
        smallest = dist;
        class=i;
    end
end