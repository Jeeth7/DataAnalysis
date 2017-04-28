x<-"Hello World"
print(x)

# Creating a Vector
c <- c(4,2,4,6,23,23,2)

#Creating a sequence 
c<- 23:78
c

# Creating a factor
j<- c("Cow","Lion","Cow","Cow","Tiger")
ex <- factor(j)
ex
unclass(ex)

#Creating data frame 
ta <- data.frame(name = c("Inderjit","Sandhya","Sandeep"),
                 gender = c("Male","Female","Male"),
                 Id=c(7,4,5))

#querying the data frame
ta[1,1]
ta[2,2]
ta[c(TRUE,FALSE,TRUE),   ]
ta[c(TRUE,FALSE,TRUE),c(TRUE,FALSE,TRUE)   ]
ta[ta$gender=="Female",]
ta[ta$gender,]
ta[,3]

install.packages("dplyr")
