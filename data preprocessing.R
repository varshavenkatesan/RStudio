#importing the dataset
dataset = read.csv('Data.csv')
#dataset = dataset [, 2:3]

#splitting the dataset into the training set and test set
install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)