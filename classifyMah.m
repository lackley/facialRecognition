function [classes,accuracy] = classifyMah(U,avgFace,allW,subjects)
%given a matrix of pictures (1 pic as a col in pics) and the actual classes these pictures are in, return a vector of classifications and error

dir = ''; %set in images_to_data for now
types = [
         'centerlight';
         'noglasses';
         'sleepy';
         %'glasses';
         %'normal';
         %'surprised'
         %'happy';
         'rightlight';
         'wink';
         'leftlight';
         'sad'
         ];

[pics]=images_to_data(subjects,types,dir);
pics = double(pics);

y=[];
for i = 1:size(subjects,2)
    for j = 1:size(types)
        y = [y,i];
    end
end


correct = 0;
classes = [];


for i = 1:size(pics,2)
    pic = pics(:,i);
    weights = getWeights(U,pic,avgFace);
    [ss,S,sss,ssss]= pca(pic,y,size(subjects,2)*length(types));
    minD =mahaldist(weights',allW(:,1)',S);
    mIndex= 1;
    for j = 1:size(allW,2)
        d = mahaldist(weights',allW(:,j)',S);
        if d<minD
            minD =d;
            mIndex = j;
        end
    end

    class = mIndex;
    classes = [classes,class];

    if class == y(i)
        correct++;
    end
end

accuracy = correct/size(pics,2);





end