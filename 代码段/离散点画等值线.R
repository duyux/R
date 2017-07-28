library(MASS)
x<-rnorm(20);y<-rnorm(20)
contour(kde2d(x,y), col = 'red', drawlabel=F)
points(x,y)

