function [classes,accuracy,mins,cMins,y] = learn()
%given a matrix of pictures (1 pic as a col in pics) and the actual classes these pictures are in, return a vector of classifications and error

dir = ''; %set in images_to_data for now
types = [
         'centerlight';
         'noglasses';
         'sleepy';
         'glasses';
         'normal';
         'surprised'
         'happy';
         'rightlight';
         'wink';
         'leftlight';
         'sad'
         ];

subjects = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
[pics]=images_to_data(subjects,types,dir);


y=[];
for i = 1:size(subjects,2)
    for j = 1:size(types)
        y = [y,i];
    end
end

wSizes = 4*ones(10);
wSizes = wSizes(1,:);

correct = 0;
classes = [];
mins = [];
cMins = [];

[U,S,W,D,index]=pca(pics,y,length(pics));
U = normalizeU(U);
mu = mean(pics');
avgFace = mu';
allW = getAllWeights(pics,subjects,subjects,U,avgFace);
          
          
for i = 1:size(pics,2)

    pic = pics(:,i);
    weights = getWeights(U,pic,avgFace);
    [class,e]=euclidianM(weights,allW,subjects);
    mins = [mins,e(class)];
    classes = [classes,class];

    if class == y(i)
        correct++;
        cMins = [cMins,e(class)];

    end
end

accuracy = correct/size(pics,2);





end