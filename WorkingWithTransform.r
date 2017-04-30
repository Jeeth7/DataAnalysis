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
v <- "honda"
j<- strsplit(v," ")
unlist(j)[1]
#---------------

temp <- select(.data=cars,Name,3,4)
head(temp)

temp<-filter(.data = temp, Fuel.Economy >20 )

#trying to add a new column with brand name of the car 
##### TODO LATER FIX
#temp<-mutate(.data = temp, Brand = as.character(unlist(strsplit(Name," "))[1])) 


temp<-mutate(.data = temp, Mileage = Fuel.Economy * 2.111) 
class(temp)

temp<-group_by(.data = temp,Cylinders)

temp<-summarise(.data = temp, averageconsumption = mean(Mileage))
head(temp)
class(temp)
final <- as.data.frame(temp)


#Chain method or piping piper operator %>%

chainFinal<-cars %>% 
  select(3,4) %>% 
  filter(Fuel.Economy >20) %>%
  mutate(Mileage = Fuel.Economy * 2.111) %>%
  group_by(Cylinders) %>%
  summarise(averageconsumption = mean(Mileage)) %>%
  as.data.frame()
chainFinal


write.csv(x = chainFinal, file = "averagecomsumption.csv", row.names = FALSE)
