function [vtemp,dtemp] = getAscend(v,D,index)

ind=zeros(size(index));
dtemp=zeros(size(index));
vtemp=zeros(size(v));
len=length(index);

for i=1:len
    dtemp(i)=D(len+1-i);
    ind(i)=len+1-index(i);
    vtemp(:,ind(i))=v(:,i);
end



end