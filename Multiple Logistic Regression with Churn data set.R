# ex-6:3(a)(a) Perform a multiple logistic regression analysis with Churn.
#as response variable and Day Minutes, Evening Minutes, Night Minutes,
#International Minutes, International Plan, VMail.Plan and CustServ.
#Calls as predictors. CustServ.Calls is a variable indicating whether
#or not a customer had a high level of service calls (=no of service
#calls). International Plan and VMail.Plan are flag variables telling
#if the customer belongs to these plans or not.

ff = read.csv(file = "F:/HIS/Data Mining/DM Code/churn.txt")
attach(ff)

mymodel = glm(churnfactor ~ Day.Mins+Eve.Mins+Night.Mins+Intl.Mins+Int.l.Plan+VMail.Plan+
                VMail.Plan+CustServ.Calls, family =binomial() )
summary(mymodel)

#(b) What is the estimated logit for this model?
#g(x) = −8.357721 + 0.012866 ∗ Day.M ins + 0.007123 ∗ Eve.M ins+
# +0.003628 ∗ N ight.M ins + 0.084166 ∗ Int.M ins+
#+2.021888 ∗ (Int.l.P lan = yes) − 0.943221 ∗ (V Mail.P lan = yes)+
#+0.511056 ∗ CustServ.Calls

#(c) What is the probability of churning for a customer with 100 minutes for
#each of day, evening and night minutes, no international minutes, belonging
#to no plans and with no customer service calls?
  
exp(-5.996)/(1+exp(-5.996))