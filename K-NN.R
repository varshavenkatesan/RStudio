#multiple linear regression
#importing the dataset
dataset = read.csv('50_Startups.csv')
dataset = dataset [, 2:3]

#encoding categorical data
dataset$State = factor(dataset$State,
                       levels = c('new york', 'california', 'florida'),
                       labels = c(1,2,3))
#splitting the dataset into the training set and test set
install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#feature Scaling 
training_set[,2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[,2:3])

#fitting mulitple linear regression to the training set
regressor = lm(formula = Profit ~ .,
               data=training_set)


#predicting the test set results
y_pred=predict(regressor, newdata=test_set)

#making the confusion matrix
cm = table(test_set[, 3], y_pred)

#visualising the training results
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1 , max(set[, 1]) + 1, by = 0.01)
X1 = seq(min(set[, 2]) - 1 , max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1,X2)
colnames(grid_set) = c('age', 'estimated salary')
y_grid = predict (classifier, new data = grid_set)
plot(set[, 3],
     main = 'K-NN (training set)',
     xlab = 'age', ylab = 'estimatedsalary'
     xlim = range (X1, X2))
colnames(X1,X2,matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[ ,3] == 1,, 'green4', 'red5' ))
