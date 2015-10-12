function [var] = retainedVar(S)
%given a matrix from [U,S,V]=pca(x) with k components returns what percentage of teh variance is retained

var = (1-sum(S))/sum(S);




end