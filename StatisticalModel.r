data(iris)
head(iris)
iris
#creating a scatter plot
 plot(
   x=iris$Petal.Length,
   y=iris$Petal.Width,
   main = "Iris Petal length vs width",
   xlab="Petal Length (cm)",
   ylab = "Petal Width (cm)"
 )
 
 # creating Linear Regression model
 model <-lm( formula = Petal.Width ~ Petal.Length,
             data = iris)
 summary(model)
 
 # Draw regresssion line
 lines( x = iris$Petal.Length, y=model$fitted, col="red", lwd=3)
 
 # get the correlation co-efficient
 cor( x= iris$Petal.Length, y = iris$Petal.Width)
 
 #predict the new value from the model
 predict(object = model,newdata = data.frame(Petal.Length = c(2,3,4)))
 
 
 summary(iris)
 
 