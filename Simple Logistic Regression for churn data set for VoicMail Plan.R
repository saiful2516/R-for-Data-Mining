#6(2): (a) Read the data set churn into R, for example with the command read.csv.

ff = read.csv(file = "F:/HIS/Data Mining/DM Code/churn.txt")


#(b) Perform a simple logistic regression estimation with Churn. 
#as response variable and VoiceMail Plan as predictor. What is the 
#estimated logit for your model?
  
names(ff)


attach(ff)


churnfactor = factor(Churn.)

mymodel = glm(churnfactor ~ VMail.Plan, family = binomial())

summary(mymodel)


sum( Churn. == "True.")
sum(Churn. == "False.")
sum(VMail.Plan == "no")
sum(VMail.Plan == "yes")
length(VMail.Plan)
