

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
## Install the library
install.packages('Rcmdr')

## Call the library
library('Rcmdr')

## QQ plot for GDP

with(economic_dataset, qqPlot(GDP, dist="norm", id=list(method="y", n=2, 
            labels=rownames(economic_dataset)), xlab="category", ylab="GDP", 
            main="GDP Quantile Graph"))

## summary statistics
summary(GDP)


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
## QQ plot for Unemployment_Rate
with(economic_dataset, qqPlot(Unemployment_Rate, dist="norm", 
                              id=list(method="y", n=2, labels=rownames(economic_dataset)), 
                              xlab="category", ylab="Unemployment_Rate", 
                              main="Unemployment_Rate Quantile Graph"))

## summary statistics
summary(Unemployment_Rate)

##andersondarling test

ad.test(Interest_Rate)

## lillifor testing

lillie.test(Interest_Rate)

## Shapiro-wiki test

shapiro.test(Interest_Rate)

## Montercarlo graph
hist(Interest_Rate, main = "Interst_Rate Distribution",
     xlab = "Category", ylab="Interst_Rate",
     probability = TRUE)

## bell curve
curve(dnorm(x,mean=mean(Interest_Rate, na.rm=TRUE),
            sd=sd(Interest_Rate, na.rm=TRUE)), add=TRUE)

## QQ plot

with(economic_dataset, qqPlot(Interest_Rate, dist="norm", 
                              id=list(method="y", n=2, labels=rownames(economic_dataset)), 
                              xlab="Category", ylab="Interest_Rate", 
                              main="Interest_Rate Quantile Graph"))
## summary statistics

summary(Interest_Rate)

## Normality testing

ad.test(Inflation_Rate)

## Lillifor testing

lillie.test(Inflation_Rate)

## Shapiro-wiki test

shapiro.test(Inflation_Rate)

## Montercarlo graph
hist(Inflation_Rate, main="Inflation_Rate Distribution",
     xlab= "Category", ylab = "Inflation_Rate", prob=TRUE)

## curve
curve(dnorm(x, mean=mean(Inflation_Rate, na.rm=TRUE), sd=sd(Inflation_Rate, na.rm = TRUE)),
      add=TRUE)

## QQ plot
with(economic_dataset, qqPlot(Inflation_Rate, dist="norm", id=list(method="y", 
                                                                n=2, labels=rownames(economic_dataset)), xlab="Category", 
                              ylab="Inflation_Rate", main="Inflation_Rate Quantile Comparison"))

## summary statistics
summary(Inflation_Rate)

## Andersondarling test

ad.test(Consumption)

## Lillifor test

lillie.test(Consumption)

## shapiro-wiki test

shapiro.test(Consumption)

## Montercarlo graph

hist(Consumption, main="Consumption Distribution",
     xlab = "Category", ylab="Consumption", probability = TRUE)

## Bell curve
curve(dnorm(x, mean=mean(Consumption, na.rm=TRUE), sd=sd(Consumption, na.rm = TRUE)), add=TRUE)

## QQ plot
with(economic_dataset, qqPlot(Consumption, dist="norm", id=list(method="y", 
   n=2, labels=rownames(economic_dataset)), xlab="Category", 
   ylab="Consumption", main="Consumption Quantile Comparison"))


## Summary statistics
summary(Consumption)


## Correlational analysis

cor.test(Consumption,GDP, method = "pearson", alternative = "two.sided")

## Scatterplot Diagram

scatterplot(Consumption~GDP, regLine=TRUE, smooth=FALSE, boxplots=FALSE, 
            xlab="GDP", ylab="Consumption", main="Cosumption vs GDP correlation", 
            data=economic_dataset)

cor.test(Consumption,Unemployment_Rate, method = "pearson", alternative = "two.sided")

## Scatterplot Diagram

scatterplot(Consumption~Unemployment_Rate, regLine=TRUE, smooth=FALSE, boxplots=FALSE, 
            xlab="Unemployment_Rate", ylab="Consumption", main="Cosumption vs Unemployment_Rate", 
            data=economic_dataset)




