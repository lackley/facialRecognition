function [subs,mins,accuracy] = recognizeAll(subjects,types)

dir = "";

[pixels,y,rows,cols]= images_to_data(subjects,types,dir);

[a,b]=size(pixels);

subs = [];
mins = [];

for i = 1:b
    face = pixels(:,i);
    [class,E]=recognize(face,subjects);
    sub = indexOfMin(E);
    subs = [subs,sub];
    mins = [mins, min(E)];
end

correct = 0;
for i = 1:10
if subs(i)==i
correct++;
end
end

[k,l]=size(subjects);


accuracy = correct/ (l*length(types));

end