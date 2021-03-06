#models.R
#Models and testing on restructured dataset.
require(party)

#logistic regression for correct
mylogit <- glm(label ~ hyperlink_clicks + magnify_clicks + expert_clicks + handling_time, data = train, family = "binomial")
summary(mylogit)

## Classification Tree
# using party
mydat_tree <- ctree(label ~ hyperlink_clicks + magnify_clicks + expert_clicks + handling_time, data = train)

#Make training predictions
confusion_matrix = function(model,df){
  pred_prob <- predict(model, subset(df, select=-label))
  
  prob2label = function(x,threshold=0.55){
    if(x>=threshold){
      return(1)
    } else {
      return(0)
    }
  }
  
  pred_label = sapply(pred_prob,prob2label)
  
  tab = table(pred_label,df$label, dnn=list('predicted','actual'))
  return(tab)
}

#Get accuracy score
get_accuracy <- function(crosstab) {
  (crosstab[1,1]+crosstab[2,2])/sum(sum((crosstab)))
}


#Make test predictions
#tab = confusion_matrix(mylogit,train)
