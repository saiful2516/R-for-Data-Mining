
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

#chapter11:(g) Use inspect to interpret the 20th rule generated (from the top) 
#in the created rules dataset. What does the lift value of this rule mean?
#Interpret!


inspect(myrules[20])


#(h) Sort the generated rules w.r.t. lift (highest lift at the top). List the
#ten rules with the highest lift values.
cc = sort(myrules, by="lift")
inspect(cc[1:10])


#(i) Subset the generated rules in such a way that you only keep rules
#with at least ”pork” in the left-hand-side of the rule and a lift value
#higher than 1.2. How many rules are now kept? Which are the rules?

  
hh=subset(myrules, subset =lhs%pin% "pork" & lift >1.2 )
inspect(hh)




#%pin%
#signature(x = "itemMatrix", table = "character"); matches the strings in
#table against the item labels in x (using partial matching)
#and returns a logical vector indicating if a row (itemset)
#in x contains any of the items specified in table
















