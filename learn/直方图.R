par(mfrow=c(2,2))
#简单直方图
hist(mtcars$mpg) 

#制定数组和颜色
hist(mtcars$mpg,breaks=12,col="red",
     xlab="Miles Per Gallon",main="Colored histogram with 12 bins")

# 添加轴须图
hist(mtcars$mpg,frep=FALSE,breaks = 12,col="red",
     xlab="Miles Per Gallon",
     main="Histogram,rug plot,density curve")
rug(jitter(mtcars$mpg))
lines(density(mtcars$mpg,col="blue",lwd=2))

# 添加正态密度曲线和外框
x<- mtcars$mpg
h<- hist(x,breaks = 12,col="red",
     xlab="Miles Per Gallon",
     main="Histogram with normal curve and box")

xfit<- seq(min(x),max(x),length=40)
yfit <-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit<-yfit *diff(h$mids[1:2])*length(x)
lines(xfit,yfit,col="blue",lwd=2)
box()