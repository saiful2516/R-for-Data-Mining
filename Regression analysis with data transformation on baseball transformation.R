#(h) Now, use the natural logarithm to transform the variable home run.
#Produce a scatter plot and perform the regression analysis again with
#this transformed variable as response variable. What is the estimated
#regression line? Significance?

In_home_runs = log(baseball_new$homeruns)
bat_ave = baseball_new$bat_ave
plot(bat_ave,In_home_runs)

total = data.frame(In_home_runs, bat_ave)
total_new = total[total$In_home_runs>=-10,]

myr=lm(total_new$In_home_runs~total_new$bat_ave)
summary(myr)


#(i) Perform a residual analysis for this new regression model. Comments?

myres = residuals(myr)
plot(total_new$bat_ave, myres)
qqnorm(myres)
qqline(myres)



