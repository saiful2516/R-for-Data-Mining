#ch 10: 3. In this exercise the data set USArrests in the library amap shall 
#be clustered.Hierarchical clustering shall be used.
#(a) Set the seed in R to be 43.

set.seed(43)
library(amap)
data(USArrests)

#(b) Use the function hcluster in the package amap to cluster the data USArrests
#with the agglomoration method ”average”. (What does this method mean?)

hc_ave <- hcluster(USArrests, link = "ave")

#(c) Use the function plot to create a dendrogram illustrating the clusters obtained.
plot(hc_ave)

#(d) Instead of the agglomoration method ”average”, now use the methods
#”single” and ”complete”, respectively. Explain these methods and compare
#the resulting dendrograms.

hc_sin <- hcluster(USArrests, link = "single")
hc_com <- hcluster(USArrests, link = "complete")
plot(hc_sin)
plot(hc_com)