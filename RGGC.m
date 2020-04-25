function [C, B, Q] = RGGC(X, lambda)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%X: scRNA-seq gene expression matric
% lambda:   Regularized parameter setted to log(n) or 2
% C: clustering index
% B: high-order similarity matrix
% Q is the Q score with Louvain algorithm
% Written by Zhenqiu  Liu
% Penn State College of Medicine
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if nargin <2 
    lambda = 2; %AIC
end
B = lsr_relaxed(X, lambda, 1);

B = (B'+ B)/2;
B = B - diag(diag(B));

[C, Q] = modularity_louvain_und(B, 0);
C = C(:);

end

