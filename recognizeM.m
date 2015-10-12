function [class,E] = recognize(face,subjects)
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
         %'rightlight';
         'wink';
         'leftlight';
         'sad'
         ];

[pics]=images_to_data(subjects,types,dir);
[a,b]=size(pics);
mu = mean(pics');
avgFace = mu';

y=[];
for i = 1:size(subjects,2)
    for j = 1:size(types)
        y = [y,i];
    end
end


[U,S,W,D, index]= pca(pics,y,b);
U_norm = normalizeU(U);
allW= getAllWeights(pics,y,subjects,U_norm, mu');

sub1 = double(reshape(face,6400,1));
[sub1weights]=getWeights(U_norm,sub1,mu');

[class,E]=euclidian(sub1weights,allW,subjects);
                         class= indexOfMin(E);
                    
                    
                    
                    
                    
                    
                    
                    
correct = 0;
classes = [];
mins = [];
cMins = [];

for i = 1:size(pics,2)
    pic = pics(:,i);
    %pic = pics(:,i)-avgFace;
    weights = getWeights(U,pic,avgFace);
    [class,e]=euclidian(weights,allW,subjects);
    mins = [mins,e(class)];
    classes = [classes,class];
    if class == y(i)
        correct++;
        cMins = [cMins,e(class)];
    end
end

accuracy = correct/size(pics,2);





end