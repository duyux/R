# 使用sqldf包，你可以使用sqldf()函数在数据框上使用SQL中的SELECT语句
library(sqldf)
newdf<- sqldf("select * from mtcars where carb=1 order by mpg",
              row.names=TRUE)

newdf              
