#multiple linear regression
#importing the dataset
dataset = read.csv('50_Startups.csv')
#dataset = dataset [, 2:3]

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
