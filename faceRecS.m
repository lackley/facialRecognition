function [accuracy,types,subjects]=faceRecS(ty,su)
%returns accuracy of facial recognition given vector of indicies types



%% =============== Part 1: Loading Face Data =============
%  We start by first loading and visualizing the dataset.
%  The following code will load the dataset into the enviorment
%
dir = ''; %setting directory in images_to_data instead so this is unnecessary
subjects = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
%only chose 10 of subjects for test set 
% Train on 4x10 (glasses, normal, surprised, happy)
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


[pixels,y,rows,cols] = images_to_data(subjects, types, dir);



                

%% =========== Part 2.0: Average Face and Normalized face ===================


pixels = double(pixels);
mu = mean(pixels');
[sizeX, sizeY] = size(mu);

          

%% =========== Part 2: PCA on Face Data: Eigenfaces  ===================
%  Run PCA and visualize the eigenvectors which are in this case eigenfaces
%  We display the first 36 eigenfaces.
%



[U,S,W,D, index]= pca(pixels,y,length(types)*length(subjects));



                
%%=========== Part 3: weights  ===================
          
U_norm = normalizeU(U);

allW= getAllWeights(pixels,y,subjects,U_norm, mu');
                    

                    
                         
%============= Part 6: accuracy =========
                         
typ =[];
for i = ty
    t = types(i,:);
    typ = [typ;t];
end

types = typ;
                    
subjects = su;
                    
[classes,accuracy,mins,cMins]=classifyM(U_norm,mu',allW,subjects,types);


end
                                       
                                       


