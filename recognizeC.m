function [name,class,E] = recognize(file,U,avgFace,allW,subjects)
%given the name of a file return the

cd rec;
im = imread(file);
cd ..;
im = double(reshape(im,6400,1));
w = getWeights(U,im,avgFace);
[class,E,name]=euclidianM(w,allW,subjects);
                    
                    
                    
                    
                    



end