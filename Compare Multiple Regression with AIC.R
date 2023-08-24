# Excercise 5(3)3. The price of the cars, Price, in the data set Cars93 in the library MASS
#is going to be the dependent variable in this multiple regression analysis.
#One way to compare different multiple regression models is to use the socalled information criteria: 
#AIC (Akaike’s Information Criterion) or SBC
#(Schwarz’-Bayes Information Criterion). Answer: A lower value is better.



#(b) Use AIC to compare, let say, three different multiple regression 
#models for the modeling of the car prices.
package(ROCR)
library(MASS)
attach(Cars93)

sss = lm(Price ~ RPM + Horsepower+ Weight+ Passengers+ MPG.city + MPG.highway)
extractAIC(sss)

#(c) Use BIC to compare the same three different multiple regression 
#models for the modeling of the car prices as in

n = length(Cars93)
n
extractAIC(sss, k=log(n))


#d Compare the results in B and c

#(e) In the lecture, we mentioned the Mallow’s Cp criterion to choose 
#between different multiple regression models. Use Mallow’s Cp criterion
#to compare the same three different multiple regression models for
#the modeling of the car prices as in b) and c). Compare the results
#with the results in b) and c).

Summa = summary(lm(Price ~ RPM))
Summa


#4. The price of the cars, Price, in the data set Cars93 is still going to be
#the dependent variable in this multiple regression analysis. Use the three
#variable selection methods (backward elimination, forward and stepwise
#selection) to find explanatory variables for the regression model. Compare
#the results of the three different methods. What happens in each step of
#the three variable selection methods?

#Backward

myback = step(lm(Price ~ RPM + EngineSize+MPG.city+MPG.highway+Cylinders+Horsepower+Weight+Passengers))

#Forward:

mymatrix = data.frame(RPM, EngineSize,MPG.city, MPG.highway, Cylinders, Horsepower, Weight, Passengers)
nullmodel = lm(Price ~ 1, data =  mymatrix)
myforward = step(nullmodel, scope = formula(mymatrix), direction = "both")

#Stepwise:

myback = step(lm(Price ~ RPM + EngineSize+MPG.city+MPG.highway+Cylinders+Horsepower+ Weight+Passengers), direction = "both")









  