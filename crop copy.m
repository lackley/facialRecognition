
function [X]=crop(pixels, eye0, eye1, size)
%given a pixel array of an image, function crops image and returns new imread of cropped image
%size is how big you want the picture i.e 200 is 200 pixels
%sugested size of 160
%eye location i.e [100,120]

%================================================================================

cent = round(((eye0+eye1)/2));

x = size/2;
startX = cent(1)-x;
endX = cent(1)+x;

startY = cent(2) - .7*x;
endY = cent(2) + 1.3*x;


X = pixels(startY:endY, startX:endX);





end
