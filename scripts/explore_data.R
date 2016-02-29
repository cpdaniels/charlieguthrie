dpath <- "../data/fullData.csv"
df <- read.csv(dpath,sep=',', header=TRUE)

get_summary <- function(df){
  uniqueList = c()
  typeList = c()
  valueList = c()

  for (col in colnames(df)){
    uniques = dim(unique(df[col]))[1]
    uniqueList = append(uniqueList,uniques)
  }
  return(uniqueList)
}

ul=get_summary(df)
