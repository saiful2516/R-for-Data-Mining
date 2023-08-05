#explore the relationship between patient age
#and the presence (disease=1) or absence (disease=0) of a particular disease. 
#Data are collected for 20 patients and stored in the data set disease.

ff =read.csv(file = "F:/HIS/Data Mining/DM Code/disease.txt", head=TRUE, sep=",") 

View(ff)
#Decision tree making
library(rpart)


diseasetree = rpart(Disease ~ .,data=ff, method="class")
pred=predict(diseasetree, ff, type="class")

#prediction value print

pred

#Construct the confusion matrix.
table(pred, ff[,"Disease"])
pred 0 1
