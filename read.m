function [imAvg] = read(name,ex)

nums = getNumArray();
cd lfw_funneled;
cd name;



allIms = [];
n= name;


for i = 1:ex
    n= name;
    n = [n, nums(i,:)];

    colorIm = imread(n);
    im = colorIm(:,:,1);
    im = double(reshape(im,length(im)^2,1));
    allIms = [allIms,im];

end

imAvg = mean(allIms');
imAvg = imAvg';



cd ..;
cd ..;



end