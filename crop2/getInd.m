function [ind] = getInd()

%returns indicies of pics used

ind = [];
count = 1;
for i = 1:10
    for j = 1:4
    ind = [ind,count];
    count++;
    end
count = count+6;
end

end