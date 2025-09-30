#simple linear regression
#importing the dataset
dataset = read.csv('Salary_Data.csv')
#dataset = dataset [, 2:3]

#splitting the dataset into the training set and test set
install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#fitting simple linear regression into the training set
regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)

#predicting the test set results
y_pred = predict(regressor,newdata = test_set)

#visualizing the training set results
install.packages('ggplot2')
ggplot() +
  geom_point(aes(x = training_set$YearsExperience, y = training_set$Salary),
             colour = 'pink') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor,newdata = training_set)),
            colour = 'green') +
  ggtitle('SALARY VS EXPERIENCE(training  set)') +
  xlab('years of experience') +
  ylab('salary')

#visualizing the test set results
ggplot() +
  geom_point(aes(x = test_set$YearsExperience, y = test_set$Salary),
             colour = 'pink') +
  geom_line(aes(x = test_set$YearsExperience, y = predict(regressor,newdata = test_set)),
            colour = 'green') +
  ggtitle('SALARY VS EXPERIENCE(test set)') +
  xlab('years of experience') +
  ylab('salary')