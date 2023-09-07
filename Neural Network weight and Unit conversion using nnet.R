#Chatpter 8: 1(a)(a) Read the data set churn into R, for example with the commands
#read.csv and make sure that the package nnet is loaded.

library(nnet)
churn <- read.csv("F:/HIS/Data Mining/DM Code/churn.txt")

#(b) Partition the data into two datasets: One should be used for training
#and one should be used for validation of the model. The training data
#set should contain 70% of the original observations.

n = nrow(churn)
set.seed(42)
train.id = sample(n, size = .7*n)
test.id = setdiff(1:n, train.id)
train = churn[train.id, ]
test = churn[test.id, ]


#(c) Use the training data to construct a neural network with the function
#nnet in the package nnet. You should use Churn. as target variable
#and all other variables in the training dataset as input variables.
#Use a maximum of 200 iterations and use 2 units in the hidden layer.

churnfactor =factor(train$Churn.)
mynn = nnet(churnfactor~ ., data = train, size=2,maxit=200)


#(d) Which problem did you encounter in c)?
#Too many (4807) weights.


#(e) Use the training data to construct a neural network with the function
#nnet. You should use Churn. as target variable and the variables
#Day.Mins and VMail.Plan as input variables. Use 2 units in the
#hidden layer.


Day.Mins=train$Day.Mins
VMail.Plan=train$VMail.Plan
use_data=data.frame(Day.Mins, VMail.Plan, churnfactor)
mynn= nnet(churnfactor~ .,data = use_data, size=2)

#(f) Did the algorithm converge in e)? If yes, how many iterations were
#required? How many weights are used in your neural network? Is this the
#number of weights that you also expect from theory (with one layer
#and two hidden units)?

mynn





#(g) Use the function summary to see the final values of the weights. Draw
#(hand-written if you want) the structure of the neural network and
#include the estimated final weights at your network connections.

summary(mynn)



#(h) Increase the number of hidden units to 20 and train your network
#once more. Did the algorithm converge? How many units do you
#have now?
  

mynn=nnet(churnfactor~ ., data = use_data, size=20, maxit = 200)












