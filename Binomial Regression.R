# chapter 6/4(1). Medical researchers want to explore the relationship between patient age
#and the presence (disease=1) or absence (disease=0) of a particular disease. 
#Data are collected for 20 patients and stored in the data set disease.
#(a) Read the data set disease into R, for example with the command
#read.csv.


ff = read.csv( file = "F:/HIS/Data Mining/DM Code/disease.tex", head = TRUE, sep = ",")

#(b) Construct a scatter plot of the data. Is a linear relationship obvious?
  
attach(ff)
plot(Age, Disease)

#(c) Use the function glm() with argument family = binomial to fit a
#logistic regression model to the data.
mymodel = glm(Disease ~ Age, data = ff, family = binomial())


#(d) Take a look at the results. Is the input variable significant in this
#regression?

summary(mymodel)
  