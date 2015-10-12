function [h, display_array] = displayData(X)
%displays the ith column vector of X as picture
%X must be square matrix

p=X(:,1);
[m,n]=size(X);
b = sqrt(m);
image = reshape(p,b,b);
imagesc(image);


end
