#set working directory

setwd("D:/Git/jeeth7/DataAnalysis")

cars<-read.table(file = "Cars.txt", 
                 header = TRUE, 
                 sep = "\t",
                 quote = "\"")

head(cars, n=2)


#load the dplyr library
library(dplyr)

#sample split string-------------
v <- "honda civic"
j<- strsplit(v," ")
unlist(j)[1]
---------------

temp <-select(.data=cars,Name,3,4)
head(temp)

temp<-filter(.data = temp, Fuel.Economy >20 )
temp<-mutate(.data = temp, Brand = unlist(strsplit(Name," "))[1] )
