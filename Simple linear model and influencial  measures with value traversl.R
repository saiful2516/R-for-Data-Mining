#Chapter 4: i
#Return to the original data set with the the first ten observations.
#Add an eleventh observation with time 5 hours and distance traveled
#20 kilometers. Is this an influential observation?
#(Also produce a scatter plot, regression line ...)

yy = c(10,11,12,13,14,15,20,18,22,25,20)
xx = c(2,2,3,4,4,5,6,7,8,9,5)
plot(xx,yy)
myvalues = lm(yy~xx)
summary(myvalues)

myinfluence = influence.measures(myvalues)
summary(myinfluence)


#(j) Return to the original data set with the the first ten observations.
#Add an eleventh observation with time 10 hours and distance traveled
#23 kilometers. Is this an influential observation?
# (Also produce a scatter plot, regression line ...)

yy = c(10,11,12,13,14,15,20,18,22,25,23)
xx = c(2,2,3,4,4,5,6,7,8,9,10)
plot(xx,yy)
myvlaues = lm(yy~xx)
summary(myvalues)

myinfluence = influence.measures(myvalues)
summary(myinfluence)

