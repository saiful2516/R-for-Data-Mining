# chapter 5
#1.(a)(a) Read the data set cereals into R, for example with the command
#read.csv.


cereals = read.csv(file = "F:/HIS/Data Mining/DM Code/cereals.dat", sep = "")


#(b) Use the function plot3d in the package rgl to produce a 3D-scatter
#plot. The variable rating (= response variable) should be on the
#vertical axis, and the variables sugars and fiber should be on the
#other axes.
#Interpret the scatter plot. Describe the relationship between the
#response variable and the other variables (e.g.: what happens with
#rating as the level of sugar is rising?)


install.packages("rgl")
library(rgl)
attach(cereals)
plot3d(SUGARS,FIBER,RATING)

#(c) Perform a simple linear regression analysis with RATING as dependent variable and 
#SUGARS as independent (explanatory) variable.
#Interpret the results! What is the estimated regression line? 
#Significance of SUGARS as explanatory variable? Coefficient of determination? Adjusted coefficient of determination?

yy = lm(RATING ~ SUGARS)
summary(yy)

#RATING = 59.3 - 2.4 * SUGARS



#(d) Perform a simple linear regression analysis with RATING as dependent variable
#and FIBER as independent (explanatory) variable. 
#Interpret the results! What is the estimated regression line? 
#Significance of FIBER as explanatory variable? Coefficient of determination? 
#Adjusted coefficient of determination?

yyy = lm(RATING ~ FIBER)
summary(yyy)

#RATING = 35.2 - 3.4 * FIBER


#(e) Perform a multiple linear regression analysis with rating as dependent variable 
#and sugar and fiber as independent (explanatory) variables.
#Interpret the results! What is the estimated regression equation (plane)? 
#How can you, just using one value of the output, get
#an idea if at least one of the two explanatory variables is significant
#in the model?

yyyy = lm(RATING ~ SUGARS + FIBER)

summary(yyyy)

#RATTING = 51.6 -2.2*SUGARS + 2.9*FIBER