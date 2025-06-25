install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
transaction_list<-list(
  c("Hot Dogs", "Buns", "Ketchup"),
  c("Hot Dogs", "Buns"),
  c("Hot Dogs", "Coke", "Chips"),
  c("Chips", "Coke"),
  c("Chips", "Ketchup"),
  c("Hot Dogs", "Coke", "Chips")
  
)
trans<-as(transaction_list,"transactions")
inspect(trans)
rules<-apriori(trans,parameter=list(supp=0.5,conf=0.8,target="rules"))
rules_def<-as(rules,"data.frame")
plot(rules)
plot(rules,method="graph")
