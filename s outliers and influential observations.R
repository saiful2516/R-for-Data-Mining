#F We’re now going to discuss outliers and influential observations.
#Suppose that there was a new observation, a real hard-core orienteering competitor, 
#who hiked for 16 h and traveled 39 km. Update your
#original data with this observation and produce a scatter plot again.


xx =c(2,2,3,4,4,5,6,7,8,9,16)
yy = c(10,11,12,13,14,15,20,18,22,25,39)
plot(xx,yy) #There is a outlier for the value(16,39) which influential factor into model.

#(g) Estimate the regression line obtained with this hard-core competitor
#included

myvalues = lm(yy~xx)
summary(myvalues)

#(h) Is this hard-core competitor an influential observation? Use Cook’s
influence.measures(myvalues)
myinfluence = influence.measures(myvalues)
which(apply(myinfluence$is.inf,1,any))
summary(myinfluence)