

### import the dataset

economic_dataset <- read.csv("economic_status.csv")

### Print the first six records

head(economic_dataset)

### View the full dataset

View(economic_dataset)

### check the data types
str(economic_dataset)


### check the null values
economic_dataset[!complete.cases(economic_dataset)]

### summary statistics
summary(economic_dataset)

### attach the dataset
attach(economic_dataset)

### view the dataset
View(economic_dataset)

## Normality testing
install.packages('nortest')

## call the library
library(nortest)

## andersondarling test

ad.test(GDP)

## Lillifor testing

lillie.test(GDP)

## Shapiro-Wiki testing

shapiro.test(GDP)

## Montacarlo graph
hist(GDP, 
     xlab="category",
     ylab = "GDP",
     main = "GDP Data Distribution", prob=TRUE)


curve(dnorm(x, mean=mean(GDP, na.rm=TRUE), 
            sd=sd(GDP, na.rm =TRUE)), add=TRUE)




