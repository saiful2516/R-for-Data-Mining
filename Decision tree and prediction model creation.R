#Data set(Iris) loading


data("iris")
#View(iris)
#names(iris)

#Load the packages rpart and rpart.plot.
#Target variable is species


library(rpart)
library(rpart.plot)
iristree = rpart(Species ~ .,data=iris, method ="class")

#Divide the sample into a training data set with 2/3 of the observations
#and the rest in a test data set.

n = nrow(iris)
set.seed(42)
train.id = sample(n, size = 2/3*n)
test.id = setdiff(1:n, train.id)

#Create a standard decision tree for the training data set.

traintree = rpart(Species ~ .,data=iris, method="class",
                  subset=train.id)


#Make predictions with the decision tree model for the test data set.
pred = predict(traintree, iris[-train.id,], type="class")

#Take a look at the predicted values.

head(pred)

#Construct the confusion matrix. 
table(pred, iris[-train.id, "Species"])






