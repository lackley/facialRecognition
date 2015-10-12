function [im] = cropUnknown()


imagesc(imread("Unknown.jpeg"));
pause;
cd crop2;
im = imread("subject16centerlightgif.gif");
imagesc(im);
cd ..;





end