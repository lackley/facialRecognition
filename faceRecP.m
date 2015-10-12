function [accuracy,types,U_norm,classes]=faceRecP(pixels,y,subjects)
%returns accuracy of facial recognition given vector of indicies types



%% =============== Part 1: Loading Face Data =============
%  We start by first loading and visualizing the dataset.
%  The following code will load the dataset into the enviorment
%
dir = ''; %setting directory in images_to_data instead so this is unnecessary



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
                    
[classes,accuracy,mins,cMins]=classifyM(U_norm,mu',allW,subjects,types);


end
                                       
                                       


