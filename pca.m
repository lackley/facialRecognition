function [U, S, W, D, index] = pca(X,y,k)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.
U = zeros(n);
S = zeros(n);

% ====================== YOUR CODE HERE ======================
% Instructions: You should first compute the covariance matrix. Then, you
%               should use the "svd" function to compute the eigenvectors
%               and eigenvalues of the covariance matrix. 
%
% Note: When computing the covariance matrix, remember to divide by m (the
%       number of examples).
%
%X has to be doubles
X = double(X); 

%compute the average face vector mu
%im kinda confused her because the average face in pic form is mean(X') not mean(X) but pca seems to work
mu = mean(X);

%compute the normalized face vectors z
A = X-mu;

%compute the covariance matrix C
 %C=A*A';

%compute the eigen vectors U of C
    % C is N squared by N squared which is way too big
    %so compute on z'*z instead which is M by M

    c=A'*A;
[v,S,V] = svd(c/m);

U=A*v;

D=S;

[D,i]=sort(diag(D),'descend');

W=U;
                                                                    index = i;
%W=W(:,i);
%W=W(:,1:k);
%index =i;
 % =========================================================================

end
