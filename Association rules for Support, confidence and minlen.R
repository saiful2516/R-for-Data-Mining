# chapter 11:(a) Make sure that the package arules is loaded and load the dataset
#Groceries .


library(arules)
data("Groceries")

Groceries

#(b) Use the functions apriori to create and interpret association rules.
#How many rules did you get?

myrules = apriori(Groceries)
inspect(myrules)
myrules=apriori(Groceries)

#(c) Decrease the minimum support and the minimum confidence to 0.05
#and use apriori and inspect once more. What happens to the number
#of rules?



myrules=apriori(Groceries,parameter=list(supp=0.05,conf=0.05))

#(d) Use inspect to look at the first five rules in the created rules dataset
#(= the output from apriori). Did you get any rules with ”lhs= { }”?
#What does this mean? Interpretation of such a rule?

inspect(myrules)

#(e) Investigate how you can get rid of rules with ”lhs= { }” using the
#parameter minlen.

#(f) Decrease the minimum support and the minimum confidence to 0.05
#and use apriori and inspect once more. What happens to the number
#of rules? Use minlen=3. What does this mean?


myrules=apriori(Groceries,parameter = list(supp=0.01, conf=0.01, minlen=3))
