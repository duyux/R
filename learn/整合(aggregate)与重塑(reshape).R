# 整合(aggregate)与重塑(reshape)

# 1、转置--函数t()
cars <- mtcars[1:5,1:4]
cars
t(cars)


# 2、整合数据  aggregate(x,by,FUN)
option(digits=3)
attach(mtcars)
maggdata <- aggregate(mtcars,by=list(cyl,gear),FUN=mean,na.rm=TRUE)
maggdata


