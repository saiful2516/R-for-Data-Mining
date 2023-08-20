# chapter 5 && 2(a) Create a scatter plot with shelf on the vertical axis and 
#rating on the horizontal axis. Interpret the scatter plot. 

cereals = read.csv(file = "F:/HIS/Data Mining/DM Code/cereals.dat", sep = "")
install.packages("rgl")
library(rgl)
attach(cereals)

plot(RATING, SHELF)

#(b) Create two dummy variables called shelf1 and shelf2 as follows:
#3). Then shelf 3 is the reference category. This means that the
#regression model will measure the effect of a location of a given cereal
#on nutritional rating with respect to shelf 3.

dim(cereals)

shelf1=seq(0,0,length.out=77)
shelf2=seq(0,0,length.out=77)

shelf1[SHELF==1]=1
Shelf1[SHELF==2]=0
Shelf1[SHELF==3]=0
shelf2[SHELF==1]=0
shelf2[SHELF==2]=1
shelf2[SHELF==3]=0

#(c) Now use rating as response variable and sugar, fiber, shelf1 and shelf2
#as independent variables in a multiple linear regression model. What
#is the estimated regression model for cereals located on the first shelf?

#What is the estimated regression model for cereals located on the
#second shelf? What is the estimated regression model for cereals
#located on the third shelf?

yy =lm(RATING ~ SUGARS + FIBER + shelf1 + shelf2)
summary(yy)


#For cereals located on the first shelf:
#yhat=b0 +b1*sugars + b2*fiber+b3*shelf1+b4*shelf2=
#b0+b3+b1*sugars+b2*fiber=50.2388 + 1.5309 -2.2612 sugars + 3.1037*fiber
#For cereals located on the second shelf:
# b0+b4+b1*sugars+b2*fiber=50.2388 + 3.6769-2.2612 sugars + 3.1037*fiber
#  For cereals located on the third shelf:
# b0+b1*sugars+b2*fiber=50.2388 -2.2612 sugars + 3.1037*fiber







