manual

#to find the number of rows
nrow(manual)

#to find the number of columns
ncol(manual)

#to find the top six rows
head(manual)

#to find a certain number of rows
head(manual,n=10)

#to find the bottom six rows
tail(manual)

#to find a certain number of columns
tail(manual,n=10)

#a quick debrief of the data frame
str(manual)

#breakdown of every single column
summary(manual)

#to get a specific row and column
manual[3,3]

manual[3,"Marketing.Spend"]
