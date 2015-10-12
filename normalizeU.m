function [U_norm] = normalizeU(U)



[a,numEx]=size(U);

weights = [];
U_norm = [];

for i = 1:numEx
    Urow = U(:,i)';
    mag = sqrt(sumsq(Urow));
    Urow_norm = Urow ./mag;
    Ucol_norm = Urow_norm';
    U_norm = [U_norm, Ucol_norm];

end

end
