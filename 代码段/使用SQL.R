library(sqldf)
newdf <- sqldf("select * from mtcars where carb=1 order by mpg,row.names=TRUE")
print(newdf)