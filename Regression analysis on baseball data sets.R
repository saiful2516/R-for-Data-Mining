

#Chapter 4, problem 2. We are now going to investigate the use of transformations in regression
#analysis. The data set baseball.txt contains a collection of batting statistics
#for 331 baseball players in the American League. We’re going to inves
#tigate whether there is a relationship between batting average and the
#number of home runs that a player hits.
#(a) First read the data set baseball.txt into R.


baseball = read.csv(file = "F:/HIS/Data Mining/DM Code/baseball.txt", sep = "",)

#(b) Baseball batting averages tend to be highly variable for low numbers
#of at bats, we restrict our data set in the following tasks to those
#players who had at least 100 at bats for this season.

baseball_new = baseball[baseball$at_bats>=100,]
baseball_new$at_bats


#c) How many observations are there now in this restricted data set (with
#only those players with at least 100 at bats)?

dim(baseball_new)

#(d) Produce a scatter plot of home runs versus batting average (=bat ave)
plot(baseball_new$bat_ave,baseball_new$homeruns)


#(f) First, try to perform a regression analysis without any transformation.
#Use batting average as explanatory variable and home runs as
#response variable. What is the estimated regression line? Significance?

myreg = lm(baseball_new$homeruns~baseball_new$bat_ave)
summary(myreg)

#Perform a residual analysis (also including a normal probability plot)
#for your regression model. Comments?
  
myres=residuals(myreg)
plot(baseball_new$bat_ave,myres)
qqnorm(myres)
qqline(myres)
  
  
  
  
  

