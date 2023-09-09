#Chapter10:1. Use the k-means algorithm to find three clusters for the 
#following observations (just one variable!) per hand:
#1 1.1 5 5.1 1.5 5.2 7.9 1.2 8.1 9


#2. Use the same data set with 10 observations as in the theoretical 
#exercise above.Now, use the function kmeans in the package amap to 
#perform a k-means clustering.

#a: (a) Use the function plot to plot the data (without clusters).

x=c(1,1.1,5,5.1,1.5,5.2,7.9,1.2,8.1,9)
plot(x)

#(b) Use the function kmeans to cluster the data.
library(amap)
mycluster=Kmeans(x,3)


#(c) As a result of the cluster analysis with the function kmeans you
#get (among others) the components cluster, centers, withinss and size. 
#Explain the theoretical meaning (with your own words) of these components.


mycluster$size
mycluster$cluster
mycluster$centers
mycluster$withinss

#(d) Use the function plot to plot the clusters (with different colors 
#for different clusters)

plot(x, col = mycluster$cluster)


#(e) Use the function points to plot the cluster centers 
#as well in the plot in d).

points(mycluster$centers, col = 1:3, pch =8, cex =2)

#(f)

set.seed(42)
set.seed(4333)








