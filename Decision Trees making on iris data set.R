#Chapter 7.Decision Trees
#1. We are going to build a decision tree model for prediction of the variable
#Species for the dataset iris.

library(rpart)
library(rpart.plot)
data(iris)


#(b) Separate the data set into a training data set with 2/3 
#of the observations and a validation data set with 1/3 of the observations.

n = nrow(iris)
set.seed(42)
train.id = sample(n, size = 2/3*n)
test.id = setdiff(1:n, train.id)
trainingdata = iris[train.id,]
validationdata = iris[test.id,]

#(c) Create a standard decision tree based on the training data set and
#create predictions for the validation data set.

tree1 = rpart(Species ~. , data = iris, method = "class", subset = train.id)
tree1

pred = predict(tree1, iris[-train.id,], type = "class")
head(pred)

#(d) Give a summary of the training and the validation data.

list( train = summary(trainingdata), test = summary(validationdata) )

#(e) Construct the confusion matrix. Interpretation?




table(pred, iris[-train.id, "Species"])


#(f) What are the current values for the hyperparameters?

rpart.control()

#(g) Draw the decision tree.

prp(tree1, box.col = c("pink", "palegreen3", "blue") [tree1$frame$yval])




