

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

## andersondarling test 

ad.test(Unemployment_Rate)

## Lillifor test

lillie.test(Unemployment_Rate)

## Shapiro-wiki test

shapiro.test(Unemployment_Rate)

## Monta carlo graph
hist(Unemployment_Rate,
     main="Unemployment_Rate Distribution",
     xlab = "Category",
     ylab = "Unemployment_Rate", prob = TRUE)

curve(dnorm(x,mean=mean(Unemployment_Rate, na.rm =TRUE),
            sd=sd(Unemployment_Rate, na.rm = TRUE)), add=TRUE)


