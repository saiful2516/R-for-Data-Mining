#explore the relationship between patient age
#and the presence (disease=1) or absence (disease=0) of a particular disease. 
#Data are collected for 20 patients and stored in the data set disease.

ff =read.csv(file = "F:/HIS/Data Mining/DM Code/disease.txt", head=TRUE, sep=",") 

View(ff)
#Decision tree making
library(rpart)

library(rpart.plot)
library(ROCR)
library(name)


#Construct a decision tree again, but this time predict the probability
#of the target levels instead of the class. Take a look at the predicted
#values.


diseasetree = rpart(Disease ~ ., data = ff, method = "class")
p2= predict(diseasetree, ff, type = "prob")
p2


#Construct a ROC curve.

pr3=p2[,2]
pr = prediction(pr3, ff$Disease)
perf = performance(pr,"tpr", "fpr")
plot(perf)


#Calculate the area under the ROC curve and interpret the result.

performance(pr,"auc")

Slot "x.name":
  


