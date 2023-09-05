#chapter 7: 2(a) Read the data set churn into R, for example with the commands
#read.csv and make sure that the packages rpart and rpart.plot are
#loaded.


library(rpart)

library(rpart.plot)
churn = read.csv(file = "F:/HIS/Data Mining/DM Code/churn.txt")


#(b) Partition the data into two datasets: One should be used for training
#and one should be used for validation of the model. The training data
#set should contain 70% of the original observations.

n = nrow(churn)
set.seed(42)

train.id = sample(n, size = .7*n)
test.id = setdiff(1:n, train.id)
trainingdata = churn[train.id, ]
validationdata = churn[test.id, ]

#(c) Create a decision tree based on the training data. Look at the tree.
#What can you discover?

#tree1 = rpart(churn. ~., data = trainingdata, method = "class" )

tree1 = rpart( Churn. ~ .,data=trainingdata, method="class")
tree1

#(d) Remove the variable Phone.
train = trainingdata[, -4]
test = validationdata[, -4]
names(churn)
names(train)