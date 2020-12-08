load Test_1_mECS;
%in_X = zscore(in_X);
tstart = tic;
X = in_X';

% X = normalize(X);
X = zscore(X);
n = size(X,2);
lambda = 0.1;
[C, B, Q] = RGGC(X, lambda);
score = Cal_NMI(C, true_labs)
%cytoscape(B, num2str(true_labs))
tendt = toc(tstart); % computational time
imagesc(B, [0, 0.01] )
 colormap_range=10; % default colormap_range is 64, but change it to your needs
 [n,xout] =hist(B(:),colormap_range);   % hist intensities according to the colormap range
 [val ind]=sort(abs(xout)); % sort according to values closest to zero
 j = cool;
 j(ind(1),:) = [ 0.1 0.1 0.1 ]; % also see comment below
 % you can also use instead something like j(ind(1:whatever),:)=ones(whatever,3); 
 colormap(j);

Y = SIMLR_embedding_tsne(B, 1, 2);

SIMLR_DisplayVisualization(Y, true_labs, 100)
