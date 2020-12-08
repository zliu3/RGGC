# RGGC
Regularized Gaussian Graphical Clustering (RGGC) Matlab Toolbox for scRNA-seq clustering
Main function: RGGC.m . It takes the normalized scRNA-seq matrix and lambda as an input, and outputs cluster labels, Q value, and the similarity (partial correlation) matirx.

lsr_relaxed.m: Gaussian graphical model for similarity matrix computation. 

modularity_louvain_und.m: Louvain algorithm for clustering detection

SIMLR_DisplayVisualization.m: Visualization function adapted from SIMLR package

Cal_NMI.m: NMI measure for clustering evaluation

SIMLR_embedding_tsne.m: tSNE for cluster visualization

example1.m - example4.m are the scripts to reproduce tables1-2, and Figure 1.

gbmexample.m is the script to reproduce Figure 2

To run the code, download the software, then unzip into a directory, and type 
> example4
or 
> gbmexample
to reproduce the results

Please contact zliu3@phs.psu.edu, if you have any questions.
