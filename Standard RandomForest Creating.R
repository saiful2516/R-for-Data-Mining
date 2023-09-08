#Chapter 9: 1. Create a standard decision tree for the iris data set. Create a 
#standard random forest for the same dataset. Compare the confusion matrices.

library(randomForest)
library(rpart)
n = nrow(iris)
set.seed(42)
train.id = sample(n, size = 2/3*n)
test.id = setdiff(1:n, train.id)
trainingdata = iris[train.id, ]
validationdata =iris[test.id, ]

tree1 = rpart(Species ~ .,data = iris, method = "class", subset = train.id)
tree1

pred = predict(tree1, iris[-train.id,], type = "class")
table(pred, iris[-train.id, "Species"])

rf =randomForest(Species ~ ., data = iris, subset = train.id)

pred2 = predict(rf, iris[-train.id,], type ="class")
table(pred2, iris[-train.id, "Species"])

#2. Create a standard decision tree for the churn data set. Create a standard
#random forest for the same dataset. Compare the confusion matrices.

churn = read.csv(file = "F:/HIS/Data Mining/DM Code/churn.txt")
attach(churn)


n = nrow(churn)
set.seed(42)
train.id =sample(n, size = .7*n)
test.id = setdiff(1:n, train.id)
trainingdata = churn[train.id, ]
validationdata = churn[test.id, ]


train = trainingdata[, -4]
test = validationdata[, -4]
tree2 = rpart( Churn. ~ .,data=train, method="class")


pred = predict(tree2, churn[-train.id,], type = "class")
table(pred, churn[-train.id, "Churn."])



churnfactor= factor(train$Churn.)
churnfactor2 =factor(test$Churn.)
test2 = data.frame(test, churnfactor2)
rf2 = randomForest(churnfactor ~ ., data = train, methods ="class")
pred3 = predict(rf2, test2, type = "class")
table(pred3, test2[,"churnfactor2"])








