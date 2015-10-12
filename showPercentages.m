function [c] = showPercentages()

im = imread("percentages.gif");
imagesc(im);
colormap(gray);

end