#Chapter 4.
#Create a scatter plot for Distance and Time. Does the relationship
#seem to be linear?

y = c(10,11,12,13,14,15,20,18,22,25)
x = c(2,2,3,4,4,5,6,7,8,9)
plot(x,y)  #Yes linear if we draw a line then it will tightly cluster with this line.

#Use Distance as dependent variable and Time as independent (explanatory) variable 
#and perform a simple linear regression anaysis.

myvalues = lm(y~x)
myvalues

#Produce a scatter plot including the regression line.
#What is the estimated regression line? 

plot(y~x)
abline(myvalues)
y=6+2*x

#(c) Is the independent (explanatory) variable significant in the regression? 
#How high is the coefficient of determination?
summary(myvalues)
#prediction for3 and 30 hours


#Perform a residual analysis. Interpret the results.
myres = residuals(myvalues)
myfit = fitted(myvalues)
plot(x,myres)
plot(x,myfit)

#plot(myfit, myres)