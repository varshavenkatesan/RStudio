#K-Means Clustering

#importing the mall dataset
dataset <- read.csv("mall.csv")
X <- dataset[4:5]

#using the elbow method to find the optimal number of clusters
set.seed(6)
wcss <- vector()
for (i in 1:10) wcss[i] <- sum(kmeans(X, i)$withinss)
plot(1:10, wcss, type = "b", main = paste('clusters of clients', xlab = 'number of clusters', ylab = 'WCSS'))

#applying k-means to the mall dataset
set.seed(29)
kmeans <- kmeans(X, 5, iter.max = 300, nstart = 10)

#visualising the clusters
library(cluster)
clusplot(X,
         kmeans$cluster,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('clusters of clients'),
         xlab = "annual income",
         ylab = "spending score")