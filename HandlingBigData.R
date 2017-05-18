install.packages("ff")
install.packages("biglm")
library("ff")

setwd("D:/Git/jeeth7/DataAnalysis/Excercise/7-r-data-science-m7-exercise-files")

irisff<-read.table.ffdf(file = "Iris.csv", FUN = "read.csv")

class(irisff)

irisff[1:4,]

library("biglm")
model <- biglm(formula = Petal.Width ~ Petal.Length, data = irisff)
summary(model)

# create a scatter plot
plot(x=irisff$Petal.Length[], y=irisff$Petal.Width[], main = "petal legth vs width", 
     xlab = "Petal lenth", ylab = "Petal width")

#draw a line y = mx+b since this is a ff data fram we cannot draw line direclty like the other 
#mat is the matrix of the summary
b<-summary(model)$mat[1,1]
m<-summary(model)$mat[2,1]

lines( x = irisff$Petal.Length[], y=m*irisff$Petal.Length[]+b, col="red", lwd=3)

#Predict with Big LM
predict(object = model,
        newdata = data.frame(Petal.Length = c(2,3,4), 
                             Petal.Width=c(0,0,0)))
