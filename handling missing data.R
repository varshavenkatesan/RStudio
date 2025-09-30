fin <- read.csv(file.choose())
fin

head(fin,5)

complete.cases(fin)

fin[!complete.cases(fin),]

#filtering using $
fin$salary == NA

#filtering using is.nac() for missing data
is.na(fin$salary)
fin[is.na(fin$salary),]

#removing records with missing data
fin_backup <- fin
fin[is.na(fin),]

fin[is.na(fin$salary),]

fin <- fin[!is.na(fin$salary),]
fin

fin[!is.na(fin$salary),]

fin[!complete.cases(fin),]

fin$Age = ifelse(is.na(fin$Age), ave(fin$Age, FUN = funtion(X), mean(x, na.rm = TRUE)), fin$Age)
fin