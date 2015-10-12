function [name,class,E] = recog(im,U,avgFace,allW,subjects)
%given the name of a file return the


im = double(reshape(im,6400,1));
w = getWeights(U,im,avgFace);
[class,E,name]=euclidianM(w,allW,subjects);
                    
                    
                    
                    
                    



end