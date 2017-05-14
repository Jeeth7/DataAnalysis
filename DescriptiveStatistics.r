# descriptive statistics

setwd("D:/Git/jeeth7/DataAnalysis/Excercise/4-r-data-science-m4-exercise-files")
r=read.csv("Cars.csv")
head(r)

#create a frequency table
table(r$Cylinders)
max(r$Fuel.Economy)
min(r$Fuel.Economy)
median(r$Fuel.Economy)
sd(r$Fuel.Economy)
quantile(r$Fuel.Economy)

# Corelation funciton   
cor( x=r$Cylinders, y=r$Fuel.Economy)
summary(r)
