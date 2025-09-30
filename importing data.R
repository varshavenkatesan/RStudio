?read.csv()

#method1: select the file manually
manual <- read.csv(file.choose())
manual

#method2: set WD and read data
#get the current WD
getwd()

#set the WD
setwd("C:\\Users\\ece-lab\\Documents\\E0223018\\r programming")
getwd()
rm(manual)
manual <- read.csv("Copy of 50_Startups.csv")
manual
