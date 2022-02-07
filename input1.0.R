# load package
library(dplyr)

# load data
library(readxl)
myData <- read_excel("Documents/Accunique/Rstudio/20-ggplot2_Junior Consultant_Human Resources : Job Satisfaction/Individual project Dataset Employee Job Satisfaction.xls")
View(myData)                                                                  

# select variable
Gender <- myData$Gender
Distance <- myData$DistanceFromHome
Enviro <- myData$EnvironmentSatisfaction
Balance <- myData$WorkLifeBalance
Income <- myData$MonthlyIncome

# histogram based on job satisfaction level
summary(Distance)

myData_1 <- myData %>% filter(JobSatisfaction==1)
Distance_1 <- myData_1$DistanceFromHome
Distance_1
h1 <- hist(Distance_1,
           main="Histogram for Distance from home",xlab="Distance from home based on job satisfaction 1",
           ylab="Count",)

myData_2 <- myData %>% filter(JobSatisfaction==2)
Distance_2 <- myData_2$DistanceFromHome
Distance_2
h2 <- hist(Distance_2,
           main="Histogram for Distance from home",xlab="Distance from home based on job satisfaction 2",
           ylab="Count",)

myData_3 <- myData %>% filter(JobSatisfaction==3)
Distance_3 <- myData_3$DistanceFromHome
Distance_3
h3 <- hist(Distance_3,
           main="Histogram for Distance from home",xlab="Distance from home based on job satisfaction 3",
           ylab="Count",)

myData_4 <- myData %>% filter(JobSatisfaction==4)
Distance_4 <- myData_1$DistanceFromHome
Distance_4
h4 <- hist(Distance_4,
           main="Histogram for Distance from home",xlab="Distance from home based on job satisfaction 4",
           ylab="Count",)


# Stacked bar plot for Environment Satisfaction and Job Satisfaction
table_JS_ES <- table(myData$JobSatisfaction, myData$EnvironmentSatisfaction)
barplot(table_JS_ES,
        xlab = "Job Satisfaction", ylab = "Frequency",
        col = c("#FF99CC","#CCCCFF","#FFFFCC","#99FF99"),
        main = "Grouped barchart",
        ylim = c(0,750),
        legend.text = c("Environment Satisfaction 1","Environment Satisfaction 2","Environment Satisfaction 3","Environment Satisfaction 4"),
        beside = FALSE)

# Bar plot for Work Life Balance and Job Satisfaction
table_JS_WLB <- table(myData$JobSatisfaction, myData$WorkLifeBalance)
barplot(table_JS_WLB,
        xlab = "Job Satisfaction", ylab = "Frequency",
        col = c("red","blue","yellow","green"),
        main = "Grouped barchart",
        ylim = c(0,450),
        legend.text = c("Environment Satisfaction 1","Environment Satisfaction 2","Environment Satisfaction 3","Environment Satisfaction 4"),
        beside = TRUE)

# scatter plot between Monthly Income and Age
plot(myData$Age,myData$MonthlyIncome,
     xlim = c(15,65),
     ylm = c(0, 25000),
     main = "Scatterplot between Age and Monthly Income",
     xlab = "Age",
     ylab = "Monthly Income",
     cex = 0.5,
     pch = 20,
     )

# Five Boxplot
boxplot(myData$JobSatisfaction)
boxplot(Distance)
boxplot(Enviro)
boxplot(Balance)
boxplot(Income)
