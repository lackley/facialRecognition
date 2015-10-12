%% Runs facial recognition
%  
%

%% Initialization
clear ; close all; clc



%% =============== Part 1: Loading Face Data =============
%  We start by first loading and visualizing the dataset.
%  The following code will load the dataset into the enviorment
%
dir = ''; %setting directory in images_to_data instead so this is unnecessary
subjects = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19];
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


colormap(gray);

pixels = double(pixels);


%% =========== Part 2.0: Average Face and Normalized face ===================


mu = mean(pixels');
[sizeX, sizeY] = size(mu);

          
         
          

oneFace = pixels(:,1);
norm= oneFace-mu';

          
        
          

%% =========== Part 2: PCA on Face Data: Eigenfaces  ===================
%  Run PCA and visualize the eigenvectors which are in this case eigenfaces
%  We display the first 36 eigenfaces.
%



[U,S,W,D, index]= pca(pixels,y,40);

                
%%=========== Part 3: weights  ===================
                

U_norm = normalizeU(U);

allW= getAllWeights(pixels,y,subjects,U_norm, mu');
                    
                         
%============= Part 6: accuracy =========
                         

[classes,accuracy,mins,cMins]=classifyM(U_norm,mu',allW,subjects,types);
                                                                               
accuracy
                                       
                                       
fprintf(['Recognition loading done.     ']);
                                        
%============= Part 7: demo =========
p = imread("subject19.anonymous.gif");
imagesc(double(p));
fprintf(['Who does this face belong to?     ']);
fprintf('Program paused. Press enter to continue.\n');
pause;
fprintf(['Running facial recognition.     ']);
[name,class,E]=recog(p,U_norm,mu', allW, subjects);
 fprintf(['Facial recognition completed.        ']);
name
pause;
Reveal= imread("reveal.gif");
imagesc(double(Reveal));
                                        
fprintf('Program paused. Press enter to continue.\n');
pause;
                                        
brit = imread("subject18.anonymous.gif");
imagesc(double(brit));
fprintf(['Who does this face belong to?     ']);
fprintf('Program paused. Press enter to continue.\n');
pause;
fprintf(['Running facial recognition.     ']);
[name,class,E]=recog(brit,U_norm,mu', allW, subjects);
 fprintf(['Facial recognition completed.        ']);
name
pause;
britReveal= imread("reveal1.gif");
imagesc(double(britReveal));
                                        
