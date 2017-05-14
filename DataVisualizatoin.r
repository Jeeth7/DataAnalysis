install.packages("ggplot2")

library(ggplot2)

# Frequency Bar chart

ggplot(data = r, aes(x=Transmission))+
  geom_bar()+
  ggtitle("Count of cars by transmission type")+
  xlab("Transmission type")+
  ylab("Count of cars")

ggplot(data = r, aes(x= Fuel.Economy))+
  geom_histogram(bins = 10)+
  ggtitle("Fuel economy histogram")+
  xlab("Fuel economy")+
  ylab("Count of cars")

ggplot(data = r, aes(x= Fuel.Economy))+
  geom_density()+
  ggtitle("Fuel economy histogram")+
  xlab("Fuel economy")+
  ylab("Density")

ggplot(data = r, aes(x= Fuel.Economy, y=Cylinders))+
  geom_point()+
  ggtitle("Fuel economy histogram")+
  xlab("Cylinder count")+
  ylab("Fuel Economy")

 