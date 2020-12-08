load Test_4_Usoskin;
%in_X = zscore(in_X);
tstart = tic;
X = in_X';

%X = normalize(X);
X = zscore(X);

n = size(X,1);
lambda = 2;
[C, B, Q] = RGGC(X, lambda);
score = Cal_NMI(C, true_labs)
%cytoscape(B, num2str(true_labs))

imagesc(B, [0, 0.008] )
 colormap(parula);

Y = SIMLR_embedding_tsne(B, 1, 2);

SIMLR_DisplayVisualization(Y, true_labs, 50)
