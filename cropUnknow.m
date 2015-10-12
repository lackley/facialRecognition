function [im] = cropUnknown()


imagesc(imread("images-1.jpeg"));
pause;
cd crop2;
im = imread("subject16leftlightgif.gif");
imagesc(im);
cd ..;





end