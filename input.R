# install packages
install.packages("ggplot2")

# load package
library(ggplot2)

# import dataset
Individual_project_Dataset_Employee_Job_Satisfaction <- read_excel("Desktop/junior consultant/Individual project Dataset Employee Job Satisfaction.xls")
View(Individual_project_Dataset_Employee_Job_Satisfaction)    

# recreate datatset
dput(Individual_project_Dataset_Employee_Job_Satisfaction)

# check observations and vairable
dim(Individual_project_Dataset_Employee_Job_Satisfaction)
str(Individual_project_Dataset_Employee_Job_Satisfaction)

# select variable
JobSatisfaction <- Individual_project_Dataset_Employee_Job_Satisfaction$JobSatisfaction
DistanceFromHome <- Individual_project_Dataset_Employee_Job_Satisfaction$DistanceFromHome
MonthlyIncome <- Individual_project_Dataset_Employee_Job_Satisfaction$MonthlyIncome
OverTime <- Individual_project_Dataset_Employee_Job_Satisfaction$MonthlyIncome
RelationshipSatisfaction <- Individual_project_Dataset_Employee_Job_Satisfaction$RelationshipSatisfaction
WorkLifeBalance <- Individual_project_Dataset_Employee_Job_Satisfaction$WorkLifeBalance
Age <- Individual_project_Dataset_Employee_Job_Satisfaction$Age

# histogram
h <- hist(JobSatisfaction, breaks = c(0.5,1.5,2.5,3.5,4.5), freq = FALSE, ylim = c(0,0.5), xlim = c(0,5), border = "black", col = "light blue")
print(h)

# bar plot
ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction) + 
  geom_bar(mapping = aes(x = WorkLifeBalance))

ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction) + 
  geom_bar(mapping = aes(x = WorkLifeBalance), color = "black", fill= "light green")+
  ggtitle("Bar Plot of Work Life Balance")+
  theme_linedraw()

# stacked chart
ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction) +
  geom_bar(mapping = aes(x = WorkLifeBalance , fill = OverTime))

ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction)+
  geom_bar( mapping = aes(x = WorkLifeBalance , fill = OverTime), position = "fill")

# box plot
ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction) + 
  geom_boxplot(mapping = aes(x=Age, y=MonthlyIncome))

# scatter plot
ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction)+
  geom_point(mapping = aes(x=Age, y=MonthlyIncome))
  
ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction)+
  geom_smooth(mapping = aes(x=Age, y=MonthlyIncome))
  
ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction,mapping = aes(x=Age, y=MonthlyIncome))+
  geom_point()+
  geom_smooth()
  
ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction)+
  geom_point(mapping = aes(x=Age, y=MonthlyIncome, color = JobRole))
  
ggplot(data = Individual_project_Dataset_Employee_Job_Satisfaction)+
  geom_point(mapping = aes(x=Age, y=MonthlyIncome), color = "darkblue")+
  ggtitle("Scatter Plot of Age and MonthlyIncome")+
  xlim(18,65)+
  ylim(2500,21000)+
  theme_linedraw()  


