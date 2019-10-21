# Custom F1 score evaluation metric for LightGBM
# Using the 'get.max_f1' function from the Laurae package

library(Laurae)

F1_metric = function(preds,dtrain){
  
  labels = getinfo(dtrain,"label")
  F1 = get.max_f1(preds,labels)[1]
  return(list(name="F1",value=F1,higher_better=TRUE))
  
}

# # Fit the model
# lgb.model = lgb.cv(
#   params=params,
#   data=dtrain,
#   nfold=5,
#   stratified=T,
#   nrounds=2500,
#   num_threads=8,
#   early_stopping_rounds=100,
#   eval=F1_metric,
#   verbose=1
# )
